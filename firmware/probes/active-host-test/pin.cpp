#include "pin.h"

namespace Drivers {

Pin::Pin(GPIO_TypeDef* port, uint32_t pin, uint32_t mode, uint32_t pull)
         : _port(port), _pin(pin) {
    GPIO_InitTypeDef gpio;
    gpio.Pin = pin;
    gpio.Mode = mode;
    gpio.Pull = pull;
    gpio.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(port, &gpio);
}

void Pin::set() {
    HAL_GPIO_WritePin(_port, _pin, GPIO_PIN_SET);
}

void Pin::clear() {
    HAL_GPIO_WritePin(_port, _pin, GPIO_PIN_RESET);
}

void Pin::toggle() {
    HAL_GPIO_TogglePin(_port, _pin);
}

} // namespace Drivers
