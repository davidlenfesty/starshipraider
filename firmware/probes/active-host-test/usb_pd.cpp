#include "usb_pd.h"

namespace PD {

MessageHeader::MessageHeader() {
    this->extended = false;             // No extended messages by default.
    this->num_data_objects = 0;         // 0 Data objects + no extended = Control message
    this->message_id = 0;               // This field is supposed to have a reset value of 0
    this->power_role_or_cable_plug = 0; // Default to SNK
    this->data_role_or_reserved = 0;    // Default to SNK
    this->message_type.control = Ping;  // Ping is by default harmless
}

// I hate this styling....
MessageHeader::MessageHeader(bool extended, uint8_t num_data_objects, uint8_t message_id,
                             bool power_role_or_cable_plug, spec_revisions revision,
                             bool data_role_or_reserved, message_types message_type) :
    extended                    (extended                   ),
    num_data_objects            (num_data_objects           ),
    message_id                  (message_id                 ),
    power_role_or_cable_plug    (power_role_or_cable_plug),
    revision                    (revision),
    data_role_or_reserved       (data_role_or_reserved),
    message_type                (message_type) {}

MessageHeader::MessageHeader(uint16_t header) {
    // TODO unsure if this is valid
    this->extended                  = static_cast<bool>(header & 0x8000);
    this->num_data_objects          = (header >> 12) & 0x07;
    this->message_id                = (header >> 9) & 0x07;
    this->power_role_or_cable_plug  = static_cast<bool>(header & 0x0100);
    this->revision                  = static_cast<spec_revisions>((header >> 6) & 0x03);
    this->data_role_or_reserved     = static_cast<bool>(header & 0x0020);
    this->message_type              = static_cast<message_types>((uint8_t) header & 0x001F);
}

uint16_t MessageHeader::serialize() {
    uint16_t header = 0;
    header |= this->extended << 15;
    header |= (this->num_data_objects & 0x07) << 12;
    header |= (this->message_id & 0x07) << 9;
    header |= this->power_role_or_cable_plug << 8;
    header |= (static_cast<uint8_t>(this->revision) & 0x03) << 6;
    header |= this->data_role_or_reserved << 5;
    // TODO not sure how being a union interacts with this...
    // need to investigate
    header |= (static_cast<uint8_t>(this->message_type.control) & 0x1F);

    return header;
}

int MessageHeader::serialize_buf(uint8_t* buf, size_t buf_offset, size_t buf_len) {
    if (buf_len - buf_offset <= 2) {
        // Buffer would overflow.
        return -1;
    }

    // Serialize into buffer
    uint16_t header = serialize();
    buf[buf_offset++] = (header >> 8) & 0xFF;
    buf[buf_offset] = header & 0xFF;
    return 0;
}

} // namespace PD
