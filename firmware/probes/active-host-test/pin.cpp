#include "pin.h"

namespace Drivers {

Pin::Pin() {}

Pin::Pin(GPIO_TypeDef* port, uint32_t pin, uint32_t mode, uint32_t pull)
         : _port(port), _pin(pin) {
    GPIO_InitTypeDef gpio;
    gpio.Pin = pin;
    gpio.Mode = mode;
    gpio.Pull = pull;
    gpio.Speed = GPIO_SPEED_FREQ_LOW;
    HAL_GPIO_Init(port, &gpio);
}

Pin::Pin(GPIO_TypeDef* port, uint32_t pin, uint32_t mode, uint32_t pull, GPIO_PinState init_value)
         : _port(port), _pin(pin) {
    HAL_GPIO_WritePin(_port, _pin, init_value);
    
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

void Pin::write(bool value) {
    HAL_GPIO_WritePin(_port, _pin, value ? GPIO_PIN_SET : GPIO_PIN_RESET);
}

} // namespace Drivers
