#ifndef REGISTERS_H
#define REGISTERS_H

#include <stdint.h>

/*

Register interface: (specific addresses aren't important)

## Local config
0x00: Power - gates power access for probes
0x01: gain settings
0x02: bandwidth settings 

## Probe comms
I need some nebulous way to communicate with the probes. I'm hoping to keep
as much of the logic off of this firmware, so that it can be "released" sooner.

I don't think I need to care here


Honestly anything I implement will work...

Limitations I'm putting in for now:
- single byte reads ONLY, everything after that will return a 0.
- < 1MHz bus speeds? If we *need* to go faster I think we'll have to
  move to an FPGA w/ a softcore or something, this speed depends on how much
  I can optimize the interrupt handler.
- Written bytes aren't garaunteed to happen immediately.

# Protocol

Command Byte -> Data byte -> DNC...

MSB first

## Command Byte:

| Bit | Description         |
|-----|---------------------|
| 7   | R/W (0 = R, 1 = W ) |
| 6:4 | Channel Number      |
| 3:0 | Register address    |

The plan is to have underlying storage, as well as a set of callbacks.
If the callbacks are NULL, reads and writes operate directly on the data;
If the callbacks are supplied, then they get passed the channel number and a pointer to the data.

*/


// TODO need to deal with data races. Or not?
namespace RegisterInterface {

typedef void (*cb_t)(uint8_t channel, uint8_t* data);

template<int C, int R>
class SpiRegisterInterface {
    public:
        SpiRegisterInterface() :
            data(), rd_callbacks(), wr_callbacks() { }

        void register_rd_callback(unsigned int reg, cb_t callback) {
            // TODO bounds checking
            rd_callbacks[reg] = callback;
        };
        void register_wr_callback(unsigned int reg, cb_t callback) {
            // TODO bounds checking
            wr_callbacks[reg] = callback;
        }

        uint8_t handle_read(uint8_t addr) {
            // TODO decode channel + bounds checking
            uint8_t channel = (addr & 0x70) >> 4;
            addr = addr & 0x0F;

            
            if (rd_callbacks[addr] != nullptr) {
                rd_callbacks[addr](channel, &data[channel][addr]);
            }

            return data[channel][addr];
        }

        void handle_write(uint8_t addr, uint8_t data) {
            uint8_t channel = (addr & 0x70) >> 4;
            addr = addr & 0x0F;

            // TODO maybe rethink ordering of things?
            this->data[channel][addr] = data;

            if (wr_callbacks[addr] != nullptr) {
                wr_callbacks[addr](channel, &this->data[channel][addr]);
            }
        }

    private:
        uint8_t data[C][R];
        cb_t rd_callbacks[R];
        cb_t wr_callbacks[R];

};

} // namespace RegisterInterface

#endif // REGISTERS_H
