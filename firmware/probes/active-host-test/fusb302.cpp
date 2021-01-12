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

void FUSB302::power_enable(power_zones zones) {
    // Mask off reserved bits.
    uint8_t data = static_cast<uint8_t>(zones) & 0x0F;

    // Read in existing power states
    uint8_t current;
    _read_reg(REG_POWER, 1, &current);

    // Write out new state
    current |= data;
    _write_reg(REG_POWER, 1, &current);

}

void FUSB302::power_disable(power_zones zones) {
    uint8_t data = static_cast<uint8_t>(zones) & 0x0F;

    uint8_t current;
    _read_reg(REG_POWER, 1, &current);

    current &= ~(data);
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

} // namespace FUSB302
