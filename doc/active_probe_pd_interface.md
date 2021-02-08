# Active Probe USB PD Configuration Protocol

TODO:
- Flesh out USB compatibility
- Assign USB VID/PID
- VDM message description should be cleaned up. It's a little confusing at the moment.
- maybe define more protocol error codes
- potentially should add mechanism to specify data types
- potentially error codes should be split into two 16-bit values, one for general errors and another for
  specificity

## Enumeration

On detecting a data/power SNK device being plugged in over USB, the host device shall query
the connected device with a `Get_Manufacturer_Info` extended message (see 6.5.6 of the PD spec).

The GMID block of this message shall use this configuration.

| Field                    | Value | Notes                       |
|--------------------------|-------|-----------------------------|
| Manufacturer Info Target | 0     | Sets target to port partner |
| Manufacturer Info Ref    | 0     | Reserved                    |

The probe must respond with an appropriate `Manufacturer_Info` extended message (section 6.5.7).
This must have the appropriate VID/PID set (VID/PID to be determined), and contain a null-terminated string
representing the product name in ASCII.

| Field               | Value  | Notes                       |
|---------------------|--------|-----------------------------|
| VID                 | TBD    |                             |
| PID                 | TBD    |                             |
| Manufacturer String | string | e.g. "AKL-PD1"              |

The host shall not provide power over the superspeed lines until it has confirmed the following
conditions:
1. The connected sink is a valid probe, as defined by its VID/PID pair.
2. The connected sink requires the voltage being provided (if the host has an adjustable
   power supply, it may modify it's output to match this voltage at this point)
3. The attached cable is a passive cable, as confirmed via SOP' and SOP'' tag queries.

Once the above conditions are met, the probe may provide the configured voltages across
the SSTX and SSRX lines.

## VDM messages

To communicate configuration values and identification, the probe and host shall communicate via
Vendor Defined Messages (VDM, section 6.4.4). These messages shall only use unstructured VDM headers,
where bits 14:0 of the VDM header shall be used as a common message ID. The vendor data objects (VDO)
hold the data being transferred.

There are two types of messages, Requests and Responses. A request is always a Read or Write request to
a provided register, while a Response can return an OK response, error code, or the data from the register.

A single Request or Response is called a transfer, and a transfer may take more than a single message.
(This is only allowed when sending string data). For this reason there are start and end bits in the
message ID which allows for uniform framing. Transfers that fit in a single message must have both
start and end bits set, and multi-message transfers must set the start bit for the first message,
and set the end bit in the last. All messages except for the last must use the maximum amount of data
possible.

*Note: In the future it may be a requirement to validate the message request/response agains the
USB PD packet's port data/power role (i.e. only a source can send a request and vice versa) however
it's being left out for simplicity for now.*

### Data Types

#### String

Strings consist of a 32-bit length prefix, followed by the bytes constituting
the string data. These are not NULL-terminated.

#### Integer

Integers are single 32-bit values. The packing of this value can be arbitrarily defined,
based on the register being accessed.

### Request Details

A request can be read or write. A read request simply indicates the address being read from,
no data besides the VDM header is sent in the VDM. A read request expects either an OK response with
data attached or an error response with an error code attached.

A write request attaches the data to be written into the register, and once all the data is sent (i.e.
a message with the end of transfer bit is sent), it expects eiter an OK response with no data, or an error
response with an error code attached.

#### ID Bit Mask

| Bit   | Description
|-------|------------
| 14    | Request/Response (0 for request, 1 for response)
| 13    | Read/Write (0 for read, 1 for write)
| 12-10 | Reserved
| 9     | Start of transfer
| 8     | End of transfer
| 7-0   | Register Address

### Response Details

A response can only be sent after a complete request transfer.
There are two main  types, OK or error. An OK message can either contain
data or no data, depending on if it's responding to a read or write request,
respectively. Error messages can be sent in response to any request, and always include
a 32-bit error value as "data".

#### ID Bit Mask

| Bit   | Description
|-------|------------
| 14    | Request/Response (0 for request, 1 for response)
| 13    | OK
| 12-10 | Reserved
| 9     | Start of transfer
| 8     | End of transfer
| 7-0   | Register Address

#### Error codes

| Value      | Name             | Description
|------------|------------------|------------
| 0x00000000 | RESERVED         | Reserved to avoid potential conflict with 0-length string
| 0xZZ000001 | ERR_PROTOCOL     | Generic protocol bits, upper "do not care" bits reserved for specificity in the future
| 0x00000002 | ERR_UNSUPPORTED  | Register is not implemented by the probe.
| 0xZZZZ0003 | ERR_WRITE_FAILED | Register write failed for internal reason. Upper bits reserved for probe error codes.

## Registers

Registers may be one of two data types, a 32-bit integer value, or a string.

The integer values can be arbitrarily packed, varying between different registers.

Strings are defined as byte arrays with 32-bit lengths.

There are up to 256 registers available, with registers 0-15 being common to all
probes and registers 16-255 being probe-specific.

### Common Registers

| Index | Data Type | Description
|-------|-----------|------------
| 0x00  | String    | Probe Model ID
| 0x01  | String    | Probe Serial Number
| 0x02  | Int       | Requested voltage. { u16 positive (mV), u16 negative (mV) }

## USB C Compatibility

While this protocol is explicitly outside the bounds of the USB C specification (+- 7V down
the superspeed lines), it is still useful to maintain major compatibility with the specification to avoid damaging misplugged devices.

- Basic idea for host is reject anything that sends a category of messages, and only respond with base usb
  capabilities.
- for the probe we can actually use it to be USB 2.0 compliant as a FW update mechanism, so less important
  to reject "real" USB C traffic.


## Sources

1. [USB PD Specification](https://www.usb.org/document-library/usb-power-delivery)