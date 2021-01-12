#ifndef PIN_H
#define PIN_H

#include <stm32f1xx_hal.h>

namespace Drivers {

class Pin {
    public:
        // This constructor will need to be changed to port to different HAL
        Pin(GPIO_TypeDef* port, uint32_t pin, uint32_t mode, uint32_t pull);

        void set();
        void clear();

        // Temporary to avoid HAL for changing mode
        GPIO_TypeDef* _port;
        uint32_t _pin;
};

} // namespace Drivers

#endif // PIN_H
