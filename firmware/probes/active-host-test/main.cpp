#include "pin.h"
#include "FUSB302.h"
#include "board.h"
#include "fifo.hpp"
#include "registers.hpp"
#include "tcpm_driver.h"
#include "usb_pd.h"

#include <stm32f1xx.h>
#include <stm32f1xx_hal.h>

#include <tuple>
#include <string.h>

#if !defined(HOST) && !defined(PROBE)
#define HOST
#endif

// TODO libraries and such should be built as fallible!
// currently they assume everything is perfect which is not always the case.

/// @brief Call this whenever you can to make a heartbeat LED blink.
void blink_led(Drivers::Pin* led) {
    static uint32_t ticks = 0;

    // I'm assuming the compiler won't get funky with me and screw up my wrapping unsigned subtraction.
    if (HAL_GetTick() - ticks > 500) {
        led->toggle();
        ticks = HAL_GetTick();
    }
}

// TODO maybe make this not global
RegisterInterface::SpiRegisterInterface<1, 8> reg;
Fifo<std::tuple<uint8_t, uint8_t>, 8> write_fifo;
volatile bool i2c_interrupt_flag;

// IRQ Handlers
extern "C" {

bool transfer_start = false;
bool write = false;
uint8_t address;

void SPI1_IRQHandler(void) {
    // We have recieved a byte
    if (SPI1->SR & SPI_SR_RXNE) {
        // We always read data in so it clears the interrupt flag
        uint8_t data = SPI1->DR;

        // We have to do the parsing and everything in the interrupt
        // simply because we have to respond before the next clock.
        if (transfer_start) {
            // Command byte
            if (!(data & 0x80)) {
                // Write to address
                write = true;
                address = data & 0x7F;
            } else {
                // Read from address
                // TODO do I want a read FIFO as well?
                SPI1->DR = reg.handle_read(address);
            }

        } else {
            // Pre-load zeroes if we're not reading writing the first byte
            SPI1->DR = 0;

            if (write) {
                // This is the data byte to write into the register
                // ignoring the error code because there isn't anything I can do,
                // and I'm assuming I won't get 8 bytes behind.
                write_fifo.push(std::tuple<uint8_t, uint8_t>(address, data));
            }

            // Clear write flag
            write = false;
        }
    }

    // Make sure variable is reset
    transfer_start = false;

    // TODO not sure if I need to clear a flag here
}

void EXTI4_IRQHandler(void) {
    // This interrupt should only be called on the falling edge
    // of CS, i.e. when the transfer starts.
    transfer_start = true;

    // Clear pending interrupt
    EXTI->PR &= ~(1 << 4);
}

// Handler for I2C interrupts
void EXTI15_10_IRQHandler(void) {
    // TODO maybe make this more abstracted
    if (!(GPIOB->IDR & (1 << 12))) {
        i2c_interrupt_flag = true;

        // Clear EXTI channel 12 *specifically*
        EXTI->PR |= 1 << 12;
        i2c_interrupt_flag = true;
        i2c_interrupt_flag = false;
        i2c_interrupt_flag = true;
    }
}

void SysTick_Handler(void) {
    HAL_IncTick();
}

const struct tcpc_config_t tcpc_config[1] = {
    {&i2c_fusb, 0x44,}// &fusb302_tcpm_drv},
};

}

void handle_fusb_irq() {
    if (i2c_interrupt_flag) {
        i2c_interrupt_flag = false;

        // Read and clear interrupts
        int irq, irqa, irqb;
        fusb302_get_irq(0, &irq, &irqa, &irqb);
    }
}

enum pd_state {
    STATE_DISCONNECTED = 0,
    STATE_CONNECTED,
} st;

void evt_connect() {
    // TODO temp delay just for testing
    HAL_Delay(200);
    int cc1, cc2;
    fusb302_tcpm_get_cc(0, &cc1, &cc2);
    
    if (cc1 < 2 && cc2 < 2) {
        // false alarm
        return;
    }

    fusb302_pd_reset(0);
    fusb302_tcpm_set_msg_header(0, 1, 1);
    if (cc1 > cc2) {
        fusb302_tcpm_set_polarity(0, 0);
    } else {
        fusb302_tcpm_set_polarity(0, 1);
    }
    fusb302_tcpm_set_rx_enable(0, 1);
    Board::pwr_enable(true);

    // May need VBUS_OK to transmit any messages...
    HAL_Delay(20);

    st = STATE_CONNECTED;

    uint16_t header = PD_HEADER(PD_CTRL_PING, 1, 1, 0, 0, PD_REV20, 0);
    fusb302_tcpm_transmit(0, TCPC_TX_SOP, header, NULL);
}

void pd_state_machine() {
    switch (st) {
        case (STATE_DISCONNECTED):
            // do something
            int cc1, cc2;
            fusb302_tcpm_get_cc(0, &cc1, &cc2);

            if (cc1 >= 2 || cc2 >= 2) {
                evt_connect();
            }
            break;
        case (STATE_CONNECTED):
            // we'll deal with this later

            break;
    }
}

int main(void) {
    HAL_Init();
    Board::clock_init();
    Board::pwr_init();

    // I need a delay here apparently for I2C to not get stuck in BUSY
    // TODO what's the minimum I can get away with?
    HAL_Delay(100);
    Board::i2c_init();
    Board::spi_init();

    Board::pwr_enable(true);

    // LEDs
    Drivers::Pin led1(GPIOB, GPIO_PIN_7, GPIO_MODE_OUTPUT_PP, GPIO_NOPULL);
    Drivers::Pin led2(GPIOB, GPIO_PIN_8, GPIO_MODE_OUTPUT_PP, GPIO_NOPULL);

    // Do any setup for SPI register interface

    // Hardware pullups on I2C
    Drivers::Pin fusb_i2c_int(GPIOB, GPIO_PIN_12, GPIO_MODE_INPUT, GPIO_NOPULL);
    // TODO pull into Pin object
    // Configure as interrupt source, falling edge
    EXTI->IMR |= EXTI_IMR_IM12;
    EXTI->FTSR |= EXTI_FTSR_FT12;
    EXTI->RTSR &= ~EXTI_RTSR_RT12;
    AFIO->EXTICR[3] |= 0b0001 << 0;
    NVIC_SetPriority(EXTI15_10_IRQn, 0);
    NVIC_EnableIRQ(EXTI15_10_IRQn);

    volatile int id = 0;
    tcpc_read(0, 1, (int *)&id);
    fusb302_tcpm_init(0);
    fusb302_pd_reset(0);
    fusb302_tcpm_set_rx_enable(0, 0);
    fusb302_tcpm_set_cc(0, TYPEC_CC_RP);

    // clear and deal with interrupts to start
    i2c_interrupt_flag = true;
    handle_fusb_irq();

    while (1) {
        blink_led(&led1);
        handle_fusb_irq();
        pd_state_machine();

    }
}
