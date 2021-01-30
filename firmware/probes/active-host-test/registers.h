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


namespace RegisterInterface {

typedef void (*cb_t)(uint8_t channel, uint8_t* data);

// TODO is to finish everything here
template<int C, int R>
class SpiRegisterInterface {
    public:
        uint8_t data[C][R];
        cb_t rd_callbacks[C][R];
        cb_t wr_callbacks[C][C];

};

} // namespace RegisterInterface

#endif // REGISTERS_H
