#ifndef USB_PD_H
#define USB_PD_H

#include <stdint.h>
#include <stddef.h>

namespace PD {

enum spec_revisions : uint8_t {
    REV_1_0 = 0,
    REV_2_0,
    REV_3_0,
};

enum control_message_types : uint8_t {
    GoodCRC = 1,
    GotoMin,
    Accept,
    Reject,
    Ping,
    PS_RDY,
    Get_Source_Cap,
    Get_Sink_Cap,
    DR_Swap,
    PR_Swap,
    VCONN_Swap,
    Wait,
    Soft_Reset,
    Data_Reset,
    Data_Reset_Complete,
    Get_Source_Cap_Extended,
    Get_Status,
    FR_Swap,
    Get_PPS_Codes,
    Get_Sink_Cap_Extended,
};

enum data_message_types : uint8_t {
    Source_Capabilities = 1,
    Request,
    BIST,
    Sink_Capabilities,
    Battery_Status,
    Alert,
    Get_Country_Info,
    Enter_USB,
    Vencor_defined = 15,
};

enum extended_message_types : uint8_t {
    Source_Capabilities_Extended = 1,
    Status,
    Get_Battery_Cap,
    Get_Battery_Status,
    Battery_Capabilities,
    Get_Manufacturer_Info,
    Manufacturer_Info,
    Security_Request,
    Security_Response,
    Firmware_Update_Request,
    Firmware_Update_Response,
    PPS_Status,
    Country_Info,
    Country_Codes,
    Sink_Capabilities_Extended,
};

union message_types {
    control_message_types   control;
    data_message_types      data;
    extended_message_types  extended;
};

struct MessageHeader {
    public:
        bool extended;
        uint8_t num_data_objects;
        uint8_t message_id;
        bool power_role_or_cable_plug;
        spec_revisions revision;
        bool data_role_or_reserved;
        message_types message_type;

        /// @brief Creates a message header with sane defaults.
        MessageHeader();
        /// @brief Creates a fully-constrained message header.
        MessageHeader(bool extended, uint8_t num_data_objects, uint8_t message_id,
                      bool power_role_or_cable_plug, spec_revisions revision,
                      bool data_role_or_reserved, message_types message_type);
        /// @brief Creates a message header straight from two bytes.
        MessageHeader(uint16_t header);
        /// @brief Creates a message header straight from bytes in the message.
        MessageHeader(uint8_t* buf);

        /// @brief Serializes header into bit-packed format.
        ///
        /// @note You will need to ensure correct endianness is achieved.
        uint16_t serialize();

        /// @brief Directly serializes header into a buffer.
        ///
        /// @returns 0 if no errors, -1 if buffer would be overflowed.
        int serialize_buf(uint8_t* buf, size_t buf_offset, size_t buf_len);
};

} // namespace PD

#endif // USB_PD_H
