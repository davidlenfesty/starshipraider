#include "pin.h"
#include "fusb302.h"
#include "board.h"
#include "fifo.hpp"
#include "registers.hpp"
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
    }
}

// TODO maybe make this not global
RegisterInterface::SpiRegisterInterface<1, 8> reg;
Fifo<std::tuple<uint8_t, uint8_t>, 8> write_fifo;
bool i2c_interrupt_flag;

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
        EXTI->PR &= ~(1 << 12);
    }
}

void SysTick_Handler(void) {
    HAL_IncTick();
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

    FUSB302::FUSB302 fusb(Board::i2c_read_register, Board::i2c_write_register);

    volatile uint8_t id = fusb.get_device_id();

    fusb.write_masks(0xFE, 0xBF, 0x00); // Enable I_TOGDONE, I_GCRCSENT, I_BC_LVL
    fusb.set_vconn_pwr(FUSB302::VCONN_PWR_NONE);
    fusb.set_host_current(FUSB302::HOST_CURRENT_DEFAULT_500mA);
    #ifdef HOST
    fusb.set_toggle(FUSB302::toggle_modes::MODE_SRC, true);
    fusb.set_auto_crc(true, FUSB302::ROLE_SRC, FUSB302::ROLE_SRC, FUSB302::REV_2);
    #endif
    #ifdef PROBE
    fusb.set_toggle(FUSB302::toggle_modes::MODE_SNK, true);
    fusb.set_auto_crc(true, FUSB302::ROLE_SNK, FUSB302::ROLE_SNK, FUSB302::REV_2);
    #endif
    fusb.power_enable(0x07);

    while (1) {
        blink_led(&led1);

        // Handle SPI writes
        // Fine to just chug through everything, should be pretty quick to deal with.
        while (!write_fifo.is_empty()) {
            std::tuple<uint8_t, uint8_t> write;
            if (write_fifo.pop(&write)) {
                // ew
                reg.handle_write(std::get<0>(write), std::get<1>(write));
            }
        }

        // TODO I think this should be split up a bit more and made more stateful to improve
        // responsiveness, leaving it as-is for now just for bring-up
        if (i2c_interrupt_flag) {
            uint8_t flags[3];
            // Make sure BC_LVL is cleared via reading
            // TODO check error messages
            FUSB302::error rc = fusb.get_interrupt(&flags[0]);
            rc = fusb.get_interrupt_a(&flags[1]);
            rc = fusb.get_interrupt_b(&flags[2]);
            // TODO Do I need to clear these flags? Not sure if R/C means it clears on read or that
            //      we are only able to read and clear.

            if (flags[1] & 0x40) {
                // I_TOGDONE, we have a new device attached

                // Send Get_Manufacturer_Info

                //  Build headers
                #ifdef HOST
                uint8_t message_id = 0; // TODO make static and apply to messages properly
                // num data objects is reserved for extended (and not chunked) messages)
                PD::MessageHeader header(true, 0, message_id, true, PD::REV_3_0, true, PD::Get_Manufacturer_Info);
                PD::ExtendedMessageHeader extended_header(false, 0, false, 2);

                // Header + Extended Header + GMIDB
                uint16_t buf[3];
                buf[0] = header.serialize();
                buf[1] = extended_header.serialize();
                buf[2] = 0x0000; // Get info for Port/cable plug, and second byte is reserved

                fusb.pd_send_message(FUSB302::SOP_1, (uint8_t*)buf, 6);

                led2.clear();
                #endif // PROBE
            } else if (flags[2] & 0x01) {
                // I_GCRCSENT, we've received a valid message
                uint8_t message_buf[30];
                FUSB302::sop_types sop_type;
                fusb.pd_read_message(message_buf, sizeof(message_buf), &sop_type);

                #ifdef HOST
                // Only care about messages meant for us.
                if (sop_type == FUSB302::SOP_1) {
                    PD::MessageHeader header(message_buf);

                    if (header.extended && header.message_type == PD::Manufacturer_Info) {
                        led2.set();
                    }
                }
                #endif // HOST

                #ifdef PROBE
                if (sop_type == FUSB302::SOP_1) {
                    PD::MessageHeader header(message_buf);

                    led2.set();

                    // Return Manufacturer_Info message
                    if (header.extended && header.message_type == PD::Get_Manufacturer_Info) {
                        PD::MessageHeader out_header(true, 0, 0, false, PD::REV_3_0, false, PD::Manufacturer_Info);
                        PD::ExtendedMessageHeader extended_header(false, 0, false, 4 + sizeof("AKL"));

                        *((uint16_t*)&message_buf[0]) = out_header.serialize();
                        *((uint16_t*)&message_buf[2]) = extended_header.serialize();
                        strcpy((char*)&message_buf[8], "AKL");

                        fusb.pd_send_message(FUSB302::SOP_1, (uint8_t*) message_buf, 8 + sizeof("AKL"));
                    }
                }

                #endif // PROBE
            }

            i2c_interrupt_flag = false;
        }
    }
}
