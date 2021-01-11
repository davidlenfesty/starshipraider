#include <stm32fxxx.h>

int main() {
    // Configure PA0 as blinky;

    // TODO library-ize
    GPIOA.CRL |= GPIO_CR_MODE_OUTPUT_2MHz;
    GPIOA.CRL |= GPIO_CR_CNF_OUT_PP << 2;

    while (1) {
        // Toggle LED
        if (GPIOA.ODR & 0x01) {
            GPIOA.ODR &= ~0x01;
        } else {
            GPIOA.ODR |= 0x01;
        }
    }
}