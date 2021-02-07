#ifndef FUSB302_H
#define FUSB302_H

#include <stdint.h>

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

enum tx_fifo_tokens {
    TX_TOK_TXON     = 0xA1,
    TX_TOK_SOP_1    = 0x12,
    TX_TOK_SOP_2    = 0x13,
    TX_TOK_SOP_3    = 0x1B,
    TX_TOK_RESET_1  = 0x15,
    TX_TOK_RESET_2  = 0x16,
    TX_TOK_PACKSYM  = 0x80,
    TX_TOK_JAM_CRC  = 0xFF,
    TX_TOK_EOP      = 0x14,
    TX_TOK_TXOFF    = 0xFE,
};

enum rx_fifo_tokens {
    RX_TOK_SOP      = 0xE0,
    RX_TOK_SOP1     = 0xC0,
    RX_TOK_SOP2     = 0xA0,
    RX_TOK_SOP1DB   = 0x80,
    RX_TOK_SOP2DB   = 0x60,
};

// SOP*
enum sop_types {
    SOP_1, // SOP
    SOP_2, // SOP'
    SOP_3, // SOP''
    SOP_2_DBG, // SOP' Debug
    SOP_3_DBG, // SOP'' Debug
};

enum error {
    ERR_OK = 0, // No error
    ERR_I2C, // I2C hardware error
    ERR_BUF_OVERFLOW, // Invalid buffer length
    ERR_INVALID_INPUT, // A given parameter was invalid.
    ERR_PROTOCOL, // USB-C protocol error of some sort (what a great error type)
};

// Used for power and data roles
enum role_types {
    ROLE_SRC,
    ROLE_SNK,
};

enum spec_revisions {
    REV_1 = 0b00,
    REV_2 = 0b01,
};

enum interrupt_a_flags {
    I_OCP_TEMP  = 0x80,
    I_TOGDONE   = 0x40,
    I_SOFTFAIL  = 0x20,
    I_RETRYFAIL = 0x10,
    I_HARDSENT  = 0x08,
    I_TXSENT    = 0x04,
    I_SOFTRST   = 0x02,
    I_HARDRST   = 0x01,
};

enum interrupt_b_flags {
    I_GCRCSENT  = 0x01,
};

enum interrupt_flags {
    I_VBUSOK    = 0x80,
    I_ACTIVITY  = 0x40,
    I_COMP_CHNG = 0x20,
    I_CRC_CHK   = 0x10,
    I_ALERT     = 0x08,
    I_WAKE      = 0x04,
    I_COLLISION = 0x02,
    I_BC_LVL    = 0x01,
};

// ---- Useful types ---- //
typedef uint8_t (*i2c_rd_fn_t)(uint8_t reg_id, uint8_t len, uint8_t* const rd_buf);
typedef uint8_t (*i2c_wr_fn_t)(uint8_t reg_id, uint8_t len, uint8_t* const wr_buf);

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

        /// @brief enables/disables all interrupts
        error enable_interrupts(bool en);

        /// @brief Writes the given values to the mask registers to enable/disable certain interrupts.
        ///
        /// @note Names of parameters correspond to the equivalent register.
        void write_masks(uint8_t mask, uint8_t mask_a, uint8_t mask_b);

        // TODO needs to check for NULL pointers and not write out
        /// @brief Gets values from Interrupt register.
        /// @param[out] flags   Pointer to value to write flags to.
        error get_interrupt(uint8_t* const flags);
        /// @brief Gets values from Interrupta register.
        /// @param[out] flags   Pointer to value to write flags to.
        error get_interrupt_a(uint8_t* const flags);
        /// @brief Gets values from Interruptb register.
        /// @param[out] flags   Pointer to value to write flags to.
        error get_interrupt_b(uint8_t* const flags);

        // ---- Type C Control Functionality ---- //

        /// @brief Sets datasheet-recommended values, call just prior to set_toggle().
        void recommended_toggle_init();

        /// @brief Enable/disable automatic DRP, SNK, SRC functionality
        void set_toggle(toggle_modes mode, bool en);

        /// @brief Applies the host-side pullup current to the given CCx pins
        void set_pullup(bool cc1, bool cc2);
        /// @brief Applies the device pull down functionality on the given CCx pins
        void set_pulldown(bool cc1, bool cc2);

        void set_host_current(host_current_levels level);

        /// @brief Applies VCONN to the specified CCx pin
        void set_vconn_pwr(vconn_pwr en);

        /// @brief Measures the values on the given pin
        float measure_pin(measure_pins pin);

        /// @brief Obtains the current toggle state from status registers.
        toggle_states get_toggle_state();

        // ---- USB PD Transciever Control ---- //

        // Set role types and data for building automatic CRC
        error set_auto_crc(bool en, role_types power_role, role_types data_role, spec_revisions spec);

        /// @brief flushes the specified FIFOs
        error pd_fifo_flush(bool tx, bool rx);

        /// @brief Enable SOP' and/or SOP'' packets
        error enable_sop_prime(bool sop_2, bool sop_3, bool sop_2_dbg, bool sop_3_dbg);

        /// @brief Enable the USB PD TX driver on the given pins
        error enable_tx_driver(bool cc1, bool cc2);

        /// @brief Sends a USB PD message.
        ///
        /// @note Deals with framing of the message itself, header should be included in the data,
        ///       and there is no attention paid to the data in the header.
        error pd_send_message(sop_types sop, uint8_t* data, uint8_t data_len);

        /// @brief Reads USB PD message from FIFO.
        error pd_read_message(uint8_t* read_buf, uint8_t read_buf_len, sop_types* sop);

    private:
        i2c_rd_fn_t _read_reg;
        i2c_wr_fn_t _write_reg;

};

} // namespace FUSB302

#endif // FUSB302_H
