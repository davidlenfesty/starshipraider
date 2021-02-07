#ifndef PIN_H
#define PIN_H

#include <stm32f1xx_hal.h>

namespace Drivers {

class Pin {
    public:
        /// @brief leaves object uninit
        // TODO I think this may be a C++ crime
        Pin();
        // This constructor will need to be changed to port to different HAL
        Pin(GPIO_TypeDef* port, uint32_t pin, uint32_t mode, uint32_t pull);
        // Same as above but allows for default value for "safe" init.
        Pin(GPIO_TypeDef* port, uint32_t pin, uint32_t mode, uint32_t pull, GPIO_PinState init_value);

        void set();
        void clear();
        void toggle();
        void write(bool value);

        // Temporary to avoid HAL for changing mode
        GPIO_TypeDef* _port;
        uint32_t _pin;
};

} // namespace Drivers

#endif // PIN_H
