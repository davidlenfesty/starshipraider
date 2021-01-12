#ifndef FUSB302_H
#define FUSB302_H

#include <functional>

namespace FUSB302 {

// ---- Register address definitions ---- //
enum registers : uint8_t {
    REG_DEVICE_ID = 0x01,
    REG_SWITCHES_0,
    REG_SWITCHES_1,
    REG_MEASURE,
    REG_SLICE,
    REG_CONTROL_0,
    REG_CONTROL_1,
    REG_CONTROL_2,
    REG_CONTROL_3,
    REG_MASK,
    REG_POWER,
    REG_RESET,
    REG_OCPREG,
    REG_MASK_A,
    REG_MASK_B,
    REG_CONTROL_4,
    REG_STATUS_0_A = 0x3C,
    REG_STATUS_1_A,
    REG_INTERRUPT_A,
    REG_INTERRUPT_B,
    REG_STATUS_0,
    REG_STATUS_1,
    REG_INTERRUPT,
    REG_FIFO,
};

enum toggle_modes : uint8_t {
    MODE_NONE = 0b00,
    MODE_DRP,
    MODE_SNK,
    MODE_SRC,
};

enum power_zones : uint8_t {
    PWR_BANDGAP_WAKE    = 0b0001,
    PWR_RX_CURRENT      = 0b0010,
    PWR_MEASURE         = 0b0100,
    PWR_OSC             = 0b1000,
};

// ---- Useful types ---- //
typedef uint8_t (*i2c_rd_fn_t)(uint8_t reg_id, uint8_t len, uint8_t* const rd_buf);
typedef uint8_t (*i2c_wr_fn_t)(uint8_t reg_id, uint8_t len, const uint8_t* const wr_buf);

// TODO expose as external library, this is useful standalone, and should be a seperate repo
/// @brief Simple driver for an FUSB302 USB Type-C driver IC.
class FUSB302 {
    public:
        FUSB302(i2c_rd_fn_t read_reg_fn, i2c_wr_fn_t write_reg_fn);

        // ---- General Device Functionality ---- //

        // To be called when INT pin is pulled low.
        // Tweaks internal state machine and manages interrupt and state
        void handle_interrupt();

        /// @brief Reads device ID register. Nibble 1 is Version ID, Nibble 2 is Revision ID.
        uint8_t get_device_id();

        /// @brief Reset the entire FUSB302
        void reset();
        /// @brief Reset the USB PD transciever
        void reset_pd();

        /// @brief Enables the specified power zones.
        void power_enable(power_zones zones);
        /// @brief Disables the specified power zones.
        void power_disable(power_zones zones);

        /// @brief Writes the given values to the mask registers to enable/disable certain interrupts.
        ///
        /// @note Names of parameters correspond to the equivalent register.
        void write_masks(uint8_t mask, uint8_t mask_a, uint8_t mask_b);

        // ---- Type C Control Functionality ---- //

        /// @brief Enable/disable automatic DRP, SNK, SRC functionality
        void enable_toggle(bool en);

        // ---- USB PD Transciever Control ---- //

    private:
        i2c_rd_fn_t _read_reg;
        i2c_wr_fn_t _write_reg;



};

} // namespace FUSB302

#endif // FUSB302_H
