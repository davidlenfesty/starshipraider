#include "fusb302.h"

namespace FUSB302 {

FUSB302::FUSB302(i2c_rd_fn_t read_reg_fn, i2c_wr_fn_t write_reg_fn) :
                 _read_reg(read_reg_fn), _write_reg(write_reg_fn) {
    reset();

}

uint8_t FUSB302::get_device_id() {
    uint8_t id;
    _read_reg(REG_DEVICE_ID, 1, &id);
    return id;
}

void FUSB302::reset() {
    uint8_t rst = 0x01;
    _write_reg(REG_RESET, 1, &rst);
}

void FUSB302::reset_pd() {
    uint8_t rst = 0x02;
    _write_reg(REG_RESET, 1, &rst);
}

void FUSB302::power_enable(uint8_t zones) {
    // Mask off reserved bits.
    zones &= 0x0F;

    // Read in existing power states
    uint8_t current;
    _read_reg(REG_POWER, 1, &current);

    // Write out new state
    current |= zones;
    _write_reg(REG_POWER, 1, &current);
}

void FUSB302::power_disable(uint8_t zones) {
    zones &= 0x0F;

    uint8_t current;
    _read_reg(REG_POWER, 1, &current);

    current &= ~(zones);
    _write_reg(REG_POWER, 1, &current);
}

void FUSB302::write_masks(uint8_t mask, uint8_t mask_a, uint8_t mask_b) {
    // Only the last bit here is valid.
    mask_b &= 0xFE;

    // Write first mask register
    _write_reg(REG_MASK, 1, &mask);

    // Write next two, these are consecutive so can be bundled in one write.
    uint8_t _mask[] = { mask_a, mask_b };
    _write_reg(REG_MASK_A, 2, _mask);
}

void FUSB302::recommended_toggle_init() {
    write_masks(0xFE, 0xBF, 0x01); // Disables all but I_TOGDONE and I_BC_LVL
    // Datasheet is conflicting here, the table specs 0x07, but the text specs 0x01.
    // Setting 0x07 because 0x01 turns off the measure block, which doesn't seem useful.
    power_enable(0x07);
    set_vconn_pwr(VCONN_PWR_NONE); // Turns off any VCONN power going to CCx
    set_host_current(HOST_CURRENT_DEFAULT_500mA);
}

void FUSB302::set_toggle(toggle_modes mode, bool en) {
    // Set MODE bits appropriately and enable TOGGLE if specified.
    uint8_t control_2;
    _read_reg(REG_CONTROL_2, 1, &control_2);
    control_2 &= 0xF8;
    control_2 |= (mode << 1) | (en ? 1 : 0);
    _write_reg(REG_CONTROL_2, 1, &control_2);
}

void FUSB302::set_pullup(bool cc1, bool cc2) {
    // TODO disable device pull down as well
    uint8_t switches_0;
    _read_reg(REG_SWITCHES_0, 1, &switches_0);
    // Clear pullup bits
    switches_0 &= 0x3F;

    if (cc1) {
        switches_0 |= 1 << 6;
    }
    if (cc2) {
        switches_0 |= 1 << 7;
    }

    _write_reg(REG_SWITCHES_0, 1, &switches_0);
}

void FUSB302::set_vconn_pwr(vconn_pwr en) {
    uint8_t switches_0;
    _read_reg(REG_SWITCHES_0, 1, &switches_0);
    // Clear switch bits
    switches_0 &= 0xCF;

    switch (en) {
        case (VCONN_PWR_CC1):
            switches_0 |= 1 << 4;
            break;
        case (VCONN_PWR_CC2):
            switches_0 |= 1 << 5;
            break;
        default:
            // Do nothing, everything is cleared;
            break;
    }

    _write_reg(REG_SWITCHES_0, 1, &switches_0);
}

float FUSB302::measure_pin(measure_pins pin) {
    uint8_t switches_0, measure;

    if (pin == MEASURE_VBUS) {
        // MEAS_CCx pins must be 0
        _read_reg(REG_SWITCHES_0, 1, &switches_0);
        switches_0 &= 0xF3;
        _write_reg(REG_SWITCHES_0, 1, &switches_0);

        // Set to measure VBUS
        measure = 1 << 6;
        _write_reg(REG_MEASURE, 1, &measure);

        // Read measurement value and transform to usable value
        _read_reg(REG_MEASURE, 1, &measure);
        measure &= 0x3F; // Mask off MEAS_VBUS and reserved bit
        // TODO is this valid casting? Idk the rules in C++
        return 26.88 * static_cast<float>(measure / 63.0);
    } else {
        // Set correct MEAS_CCx pin
        _read_reg(REG_SWITCHES_0, 1, &switches_0);
        switches_0 &= 0xF3;
        if (pin == MEASURE_CC1) {
            switches_0 |= 1 << 2;
        } else {
            switches_0 |= 1 << 3;
        }
        _write_reg(REG_SWITCHES_0, 1, &switches_0);

        // Read measurement value
        _read_reg(REG_MEASURE, 1, &measure);
        measure &= 0x3F;
        return 2.688 * static_cast<float>(measure / 63.0);
    }
}

toggle_states FUSB302::get_toggle_state() {
    uint8_t status;
    _read_reg(REG_STATUS_1_A, 1, &status);

    status = (status >> 3) & 0x07;

    return static_cast<toggle_states>(status);
}

} // namespace FUSB302
