#include "pin.h"
#include "fusb302.h"
#include "board.h"
#include "fifo.hpp"

#include <stm32f1xx.h>
#include <stm32f1xx_hal.h>

// TODO libraries and such should be built as fallible!
// currently they assume everything is perfect which is not always the case.

/// @brief Call this whenever you can to make a heartbeat LED blink.
void blink_led(Drivers::Pin* led) {
    static uint32_t ticks = 0;

    // I'm assuming the compiler won't get funky with me and screw up my wrapping unsigned subtraction.
    if (HAL_GetTick() - ticks > 500) {
        led->toggle();
    }
}

// IRQ Handlers
extern "C" {

bool transfer_start = false;
bool write = false;
Fifo<uint8_t, 8> write_fifo;
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
            }

        } else {
            // Pre-load zeroes if we're not reading writing the first byte
            SPI1->DR = 0;

            if (write) {
                // This is the data byte to write into the register
                // ignoring the error code because there isn't anything I can do,
                // and I'm assuming I won't get 8 bytes behind.
                write_fifo.push(data);
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

    // Clear pending interrupts
    EXTI->PR = 0;
}

}

int main() {
    HAL_Init();
    Board::clock_init();
    Board::i2c_init();
    Board::spi_init();

    // LEDs
    Drivers::Pin led1(GPIOB, GPIO_PIN_7, GPIO_MODE_OUTPUT_PP, GPIO_NOPULL);
    Drivers::Pin led2(GPIOB, GPIO_PIN_8, GPIO_MODE_OUTPUT_PP, GPIO_NOPULL);

    // Do any setup for SPI register interface

    // TODO many channels of this
    // Configure 4 channels of FUSB302 as host-only devices with manual intervention
    // I need a "probe" class w/ all the GPIO interfaces
    Drivers::Pin probe_pwr_en(GPIOB, GPIO_PIN_5, GPIO_MODE_OUTPUT_PP, GPIO_NOPULL);
    Drivers::Pin probe_vbus_nen(GPIOB, GPIO_PIN_6, GPIO_MODE_OUTPUT_PP, GPIO_NOPULL);
    // TODO safe initialization
    probe_pwr_en.clear();
    probe_vbus_nen.set();

    // Hardware pullups on I2C
    Drivers::Pin fusb_i2c_int(GPIOB, GPIO_PIN_12, GPIO_MODE_INPUT, GPIO_NOPULL);

    FUSB302::FUSB302 fusb(Board::i2c_read_register, Board::i2c_write_register);
    fusb.recommended_toggle_init();
    fusb.set_toggle(FUSB302::toggle_modes::MODE_SRC, true);
    fusb.set_auto_crc(true, FUSB302::ROLE_SRC, FUSB302::ROLE_SRC, FUSB302::REV_2);

    // TODO callback for managing I2C interrupts
    // TODO FUSB302 driver/init

    while (1) {
        blink_led(&led1);

        // Let's say this was checking an interrupt-set flag, say we finished the TOGGLE stuff
        if (1) {
            uint8_t imaginary_msg_buffer[8];
            FUSB302::sop_types sop_type;
            // Find correct pin
            FUSB302::toggle_states state = fusb.get_toggle_state();
            fusb.reset_pd();

            if (state == FUSB302::TOGGLE_SRC_CC1) {
                fusb.enable_tx_driver(true, false);
            } else {
                fusb.enable_tx_driver(false, true);
            }

            // "Check for VDM"
            fusb.pd_send_message(FUSB302::SOP_2, imaginary_msg_buffer, 4);
            // VDM response!
            fusb.pd_read_message(imaginary_msg_buffer, 8, &sop_type);
        }
    }
}