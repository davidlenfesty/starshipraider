#ifndef BOARD_H
#define BOARD_H

#include <stdint.h>

namespace Board {

/// @brief Sets up clocks globally.
///
/// Provides 72MHz system clock with an 8MHz HSE
void clock_init();

/// @brief Initializes all I2C peripherals
void i2c_init();

// ---- Chip-specific I2C functions ---- //
// I'm not sure if this is a great API.
// Requires another function per I2C chip.
// Although generally I would assume users of this library would only use 1.

uint8_t i2c_read_register(uint8_t reg, uint8_t len, uint8_t* const data);
uint8_t i2c_write_register(uint8_t reg, uint8_t len, const uint8_t* const data);

} // namespace Board

#endif