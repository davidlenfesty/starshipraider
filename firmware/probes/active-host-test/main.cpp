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
    Drivers::Pin fusb_i2c_scl(GPIOB, 10, GPIO_MODE_AF_OD, GPIO_NOPULL);
    Drivers::Pin fusb_i2c_sda(GPIOB, 11, GPIO_MODE_AF_OD, GPIO_NOPULL);
    Drivers::Pin fusb_i2c_int(GPIOB, 12, GPIO_MODE_INPUT, GPIO_NOPULL);

    FUSB302::FUSB302 fusb(Board::i2c_read_register, Board::i2c_write_register);

    // TODO callback for managing I2C interrupts
    // TODO FUSB302 driver/init

    while (1) {
        // Toggle LED
        if (GPIOA->ODR & 0x01) {
            GPIOA->ODR &= ~0x01;
        } else {
            GPIOA->ODR |= 0x01;
        }
    }
}