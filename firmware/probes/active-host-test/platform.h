// TODO Remove! this should be put elsewhere, it's a bit ugly

#include <stm32f1xx_hal.h>

void platform_usleep(uint64_t us) {
    // Only delays for 250us, so I don't really care right now
    // Rounds up
    HAL_Delay((us + 500) / 1000);
}