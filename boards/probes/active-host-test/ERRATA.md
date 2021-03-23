# Revision A

- VBUS switch does not work. The EN line uses a comparator, which requires higher-than-input voltage to disable.
- SWO trace connected to the wrong pin, SWO is unusable as output. Pin is inaccessible under BGA w/o extensive re-work
- -7V power supply is incorrectly designed, missing output diode and requires +5V instead of +12V for powering the core.
- +7V and +5V power supplies fail after inserting USB plug. Root cause unknown.
  - -7V turns off as well, however is dependant on 5V for operation, so this is not conclusive.
- I2C pullups are weak, likely due to oversized test pads adding extra capacitance.
- 
- 
- 
