#include "fusb302.h"

#include <string.h>

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

error FUSB302::enable_interrupts(bool en) {
    uint8_t reg;
    _read_reg(REG_CONTROL_0, 1, &reg);
    reg &= ~(1 << 5);
    reg |= (en << 5);
    _write_reg(REG_CONTROL_0, 1, &reg);

    return ERR_OK;
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

error FUSB302::get_interrupt(uint8_t* const flags) {
    _read_reg(REG_INTERRUPT, 1, flags);
    return ERR_OK;
}

error FUSB302::get_interrupt_a(uint8_t* const flags) {
    _read_reg(REG_INTERRUPT_A, 1, flags);
    return ERR_OK;
}

error FUSB302::get_interrupt_b(uint8_t* const flags) {
    _read_reg(REG_INTERRUPT_B, 1, flags);
    return ERR_OK;
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
    uint8_t switches_0;
    _read_reg(REG_SWITCHES_0, 1, &switches_0);
    // Clear pullup bits
    switches_0 &= 0x3F;

    // Set pullup bit and clear corresponding pulldown bit
    if (cc1) {
        switches_0 &= ~(1 << 0);
        switches_0 |= 1 << 6;
    }
    if (cc2) {
        switches_0 &= ~(1 << 1);
        switches_0 |= 1 << 7;
    }

    _write_reg(REG_SWITCHES_0, 1, &switches_0);
}

void FUSB302::set_pulldown(bool cc1, bool cc2) {
    uint8_t switches_0;
    _read_reg(REG_SWITCHES_0, 1, &switches_0);
    // Clear pulldown bits
    switches_0 &= 0xFC;

    // Set pulldown bit and clear corresponding pullup bit
    if (cc1) {
        switches_0 &= ~(1 << 6);
        switches_0 |= 1 << 0;
    }
    if (cc2) {
        switches_0 &= ~(1 << 7);
        switches_0 |= 1 << 1;
    }

    _write_reg(REG_SWITCHES_0, 1, &switches_0);
}

void FUSB302::set_host_current(host_current_levels level) {
    uint8_t control;
    _read_reg(REG_CONTROL_0, 1, &control);
    control &= 0xF3;
    control |= level << 2;
    _write_reg(REG_CONTROL_0, 1, &control);
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

error FUSB302::set_auto_crc(bool en, role_types power_role, role_types data_role, spec_revisions spec) {
    uint8_t reg;
    _read_reg(REG_SWITCHES_1, 1, &reg);
    reg &= ~0xF4; // Clear relevant bits

    reg |= en << 2; // Set AUTO_CRC
    reg |= (power_role == ROLE_SRC ? 1 : 0) << 7; // POWERROLE
    reg |= (data_role == ROLE_SRC ? 1 : 0) << 4; // DATAROLE
    reg |= spec << 5;

    _write_reg(REG_SWITCHES_1, 1, &reg);

    return ERR_OK;
}

error FUSB302::pd_fifo_flush(bool tx, bool rx) {
    uint8_t buf[2];
    _read_reg(REG_CONTROL_0, 2, buf);
    // TX FIFO Flush
    buf[0] &= ~(1 << 6);
    buf[0] |= tx << 6;
    // RX FIFO Flush
    buf[1] &= ~(1 << 2);
    buf[1] |= rx << 2;

    _write_reg(REG_CONTROL_0, 2, buf);

    return ERR_OK;
}

error FUSB302::enable_sop_prime(bool sop_2, bool sop_3, bool sop_2_dbg, bool sop_3_dbg) {
    uint8_t reg;
    _read_reg(REG_CONTROL_1, 1, &reg);
    reg &= ~(0x63);
    reg |= (sop_2 << 0) | (sop_3 << 1) | (sop_2_dbg << 5) | (sop_3_dbg << 6);
    _write_reg(REG_CONTROL_1, 1, &reg);

    return ERR_OK;
}

error FUSB302::enable_tx_driver(bool cc1, bool cc2) {
    uint8_t reg;
    _read_reg(REG_SWITCHES_1, 1, &reg);
    reg &= ~(0xFC);
    reg |= (cc1 << 0) | (cc2 << 1);
    _write_reg(REG_CONTROL_1, 1, &reg);

    return ERR_OK;
}

error FUSB302::pd_send_message(sop_types sop, uint8_t* data, uint8_t data_len) {

    uint8_t fifo_buf[30 + 9]; // Max message size is 30 bytes + FIFO tokens
    uint8_t pos = 0;

    if (data_len > 30) {
        return ERR_BUF_OVERFLOW;
    }

    // Send SOP set, depending on type selected.
    switch(sop) {
        case (SOP_1):
            fifo_buf[pos++] = TX_TOK_SOP_1;
            fifo_buf[pos++] = TX_TOK_SOP_1;
            fifo_buf[pos++] = TX_TOK_SOP_1;
            fifo_buf[pos++] = TX_TOK_SOP_2;
            break;

        case (SOP_2):
            fifo_buf[pos++] = TX_TOK_SOP_1;
            fifo_buf[pos++] = TX_TOK_SOP_1;
            fifo_buf[pos++] = TX_TOK_SOP_3;
            fifo_buf[pos++] = TX_TOK_SOP_3;
            break;

        case (SOP_3):
            fifo_buf[pos++] = TX_TOK_SOP_1;
            fifo_buf[pos++] = TX_TOK_SOP_3;
            fifo_buf[pos++] = TX_TOK_SOP_1;
            fifo_buf[pos++] = TX_TOK_SOP_3;
            break;

        default:
            return ERR_INVALID_INPUT;
    }

    // Read in bulk of data
    fifo_buf[pos++] = TX_TOK_PACKSYM | data_len;
    memcpy(static_cast<void*>(&fifo_buf[pos]), static_cast<void*>(data), data_len);
    pos += data_len;

    // End framing
    fifo_buf[pos++] = TX_TOK_JAM_CRC;   // Add CRC
    fifo_buf[pos++] = TX_TOK_EOP;       // Send EOP
    fifo_buf[pos++] = TX_TOK_TXOFF;     // Turn off transmitter.
    fifo_buf[pos++] = TX_TOK_TXON;      // Start transmission now (not technically a token, more of a command.)

    // Write to FIFO register
    _write_reg(REG_FIFO, pos, fifo_buf);

    return ERR_OK;
}

// Do I discard the message if it fails???
error FUSB302::pd_read_message(uint8_t* read_buf, uint8_t read_buf_len, sop_types* sop) {
    uint8_t fifo_buf[30 + 1]; // 30-bytes max size + 1 byte of packet type
    uint8_t pos = 0;
    uint8_t data_len;

    _read_reg(REG_FIFO, 3, fifo_buf); // Read in Token + message header

    // Assign the correct type. Might be better to combine these into a more general enum
    // so I don't need this dumb switch case.
    switch (fifo_buf[0]) {
        case (RX_TOK_SOP):
            *sop = SOP_1;
            break;
        case (RX_TOK_SOP1):
            *sop = SOP_2;
            break;
        case (RX_TOK_SOP2):
            *sop = SOP_3;
            break;
        case (RX_TOK_SOP1DB):
            *sop = SOP_2_DBG;
            break;
        case (RX_TOK_SOP2DB):
            *sop = SOP_3_DBG;
            break;
        default:
            // TODO some dbg assert here
            // wait this is the wrong error message
            return ERR_PROTOCOL;
    }

    // Get length of data to read.
    // Check for extended packet
    if (fifo_buf[0] & 0x80) {
        // Extended packet, no. of data objects is undefined here, use extended header

        // TODO

        // Read in 2 bytes of extended header
    } else {
        // Regular packet use number of data objects to determine size.

        // Extract number of data objects, each of these are 16-bits + 3 bytes we've read
        data_len = (fifo_buf[0] & 0x7 >> 4) * 2;
    }

    // TODO add some way to finish receiving rest of the packet.
    if (pos + data_len > read_buf_len) {
        return ERR_BUF_OVERFLOW;
    }

    // Read out message data
    _read_reg(REG_FIFO, data_len, &fifo_buf[pos]);
    pos += data_len;

    return ERR_OK;
}

} // namespace FUSB302
