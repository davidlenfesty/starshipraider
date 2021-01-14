#include "pin.h"
#include "fusb302.h"
#include "board.h"

#include <stm32f1xx.h>
#include <stm32f1xx_hal.h>

// TODO libraries and such should be built as fallible!
// currently they assume everything is perfect which is not always the case.

int main() {
    HAL_Init();
    Board::clock_init();
    Board::i2c_init();

    // Configure SPI as slave + set up register interface

    // TODO many channels of this
    // Configure 4 channels of FUSB302 as host-only devices with manual intervention
    // I need a "probe" class w/ all the GPIO interfaces
    Drivers::Pin probe_pwr_en(GPIOB, 5, GPIO_MODE_OUTPUT_PP, GPIO_NOPULL);
    Drivers::Pin probe_vbus_nen(GPIOB, 6, GPIO_MODE_OUTPUT_PP, GPIO_NOPULL);
    // TODO safe initialization
    probe_pwr_en.clear();
    probe_vbus_nen.set();

    // Hardware pullups on I2C
    Drivers::Pin fusb_i2c_int(GPIOB, 12, GPIO_MODE_INPUT, GPIO_NOPULL);

    FUSB302::FUSB302 fusb(Board::i2c_read_register, Board::i2c_write_register);
    fusb.recommended_toggle_init();
    fusb.set_toggle(FUSB302::toggle_modes::MODE_SRC, true);
    fusb.set_auto_crc(true, FUSB302::ROLE_SRC, FUSB302::ROLE_SRC, FUSB302::REV_2);

    // TODO callback for managing I2C interrupts
    // TODO FUSB302 driver/init

    while (1) {
        // Toggle LED
        if (GPIOA->ODR & 0x01) {
            GPIOA->ODR &= ~0x01;
        } else {
            GPIOA->ODR |= 0x01;
        }

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