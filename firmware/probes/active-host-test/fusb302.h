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

// TODO remove
enum power_zones : uint8_t {
    PWR_BANDGAP_WAKE    = 0b0001,
    PWR_RX_CURRENT      = 0b0010,
    PWR_MEASURE         = 0b0100,
    PWR_OSC             = 0b1000,
};

enum vconn_pwr {
    VCONN_PWR_NONE,
    VCONN_PWR_CC1,
    VCONN_PWR_CC2,
};

enum measure_pins {
    MEASURE_VBUS,
    MEASURE_CC1,
    MEASURE_CC2,
};

enum host_current_levels {
    HOST_CURRENT_NONE = 0b00,
    HOST_CURRENT_DEFAULT_500mA,
    HOST_CURRENT_MEDIUM_1A5,
    HOST_CURRENT_HIGH_3A,
};

enum toggle_states {
    TOGGLE_RUNNING          = 0b000,
    TOGGLE_SRC_CC1          = 0b001,
    TOGGLE_SRC_CC2          = 0b010,
    TOGGLE_SNK_CC1          = 0b101,
    TOGGLE_SNK_CC2          = 0b110,
    TOGGLE_AUDIO_ACCESSORY  = 0b111,
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
        void power_enable(uint8_t zones);
        /// @brief Disables the specified power zones.
        void power_disable(uint8_t zones);

        /// @brief Writes the given values to the mask registers to enable/disable certain interrupts.
        ///
        /// @note Names of parameters correspond to the equivalent register.
        void write_masks(uint8_t mask, uint8_t mask_a, uint8_t mask_b);

        // ---- Type C Control Functionality ---- //

        /// @brief Sets datasheet-recommended values, call just prior to set_toggle().
        void recommended_toggle_init();

        /// @brief Enable/disable automatic DRP, SNK, SRC functionality
        void set_toggle(toggle_modes mode, bool en);

        /// @brief Applies the host-side pullup current to the given CCx pins
        void set_pullup(bool cc1, bool cc2);
        void set_pulldown(bool cc1, bool cc2);

        void set_host_current(host_current_levels level);

        /// @brief Applies VCONN to the specified CCx pin
        void set_vconn_pwr(vconn_pwr en);

        /// @brief Measures the values on the given pin
        float measure_pin(measure_pins pin);

        /// @brief Obtains the current toggle state from status registers.
        toggle_states get_toggle_state();

        // ---- USB PD Transciever Control ---- //

    private:
        i2c_rd_fn_t _read_reg;
        i2c_wr_fn_t _write_reg;

};

} // namespace FUSB302

#endif // FUSB302_H
