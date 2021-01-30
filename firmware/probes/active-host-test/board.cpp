#include "board.h"
#include "pin.h"

#include <stm32f1xx.h>
#include <stm32f1xx_hal.h>
#include <string.h>

I2C_HandleTypeDef i2c_fusb;

namespace Board {

/// Set up clocks for HSE, providing 72MHz sys clock
void clock_init() {
    RCC_PLLInitTypeDef pll_cfg;
    pll_cfg.PLLMUL = RCC_PLL_MUL9;
    pll_cfg.PLLSource = RCC_PLLSOURCE_HSE;
    pll_cfg.PLLState = RCC_PLL_ON;

    RCC_OscInitTypeDef osc_cfg;
    osc_cfg.HSEState = RCC_HSE_ON;
    osc_cfg.HSEPredivValue = RCC_HSE_PREDIV_DIV1;
    osc_cfg.PLL = pll_cfg;

    // Turn HSE on along with PLL
    osc_cfg.OscillatorType = RCC_OSCILLATORTYPE_HSE;
    HAL_RCC_OscConfig(&osc_cfg);

    // Select PLL as clock source for the system clock
    RCC_ClkInitTypeDef clk_cfg;
    clk_cfg.ClockType = RCC_CLOCKTYPE_SYSCLK | RCC_CLOCKTYPE_HCLK | RCC_CLOCKTYPE_PCLK1 | RCC_CLOCKTYPE_PCLK2;
    clk_cfg.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK; // Get SYSCLK from 72MHz PLL
    clk_cfg.AHBCLKDivider = RCC_SYSCLK_DIV1;        // 72MHz HCLK
    clk_cfg.APB1CLKDivider = RCC_HCLK_DIV2;         // 36MHz PCLK1
    clk_cfg.APB2CLKDivider = RCC_HCLK_DIV2;         // 36MHz PCLK2
    HAL_RCC_ClockConfig(&clk_cfg, 2); // Unsure about flash latency


    // Enable peripheral clocks
    __HAL_RCC_USART1_CLK_ENABLE();
    __HAL_RCC_I2C1_CLK_ENABLE();
    __HAL_RCC_I2C2_CLK_ENABLE();
    __HAL_RCC_SPI1_CLK_ENABLE();
    __HAL_RCC_SPI2_CLK_ENABLE();
    __HAL_RCC_GPIOA_CLK_ENABLE();
    __HAL_RCC_GPIOB_CLK_ENABLE();
}

void i2c_init() {
    i2c_fusb.Init.ClockSpeed         = 100000; // 100kHz
    i2c_fusb.Init.DutyCycle          = I2C_DUTYCYCLE_2; // TODO do I care about this?
    i2c_fusb.Init.OwnAddress1        = 0;
    i2c_fusb.Init.AddressingMode     = I2C_ADDRESSINGMODE_7BIT;
    i2c_fusb.Init.DualAddressMode    = I2C_DUALADDRESS_DISABLED;
    i2c_fusb.Init.OwnAddress2        = 0;
    i2c_fusb.Init.GeneralCallMode    = I2C_GENERALCALL_DISABLED;
    i2c_fusb.Init.NoStretchMode      = I2C_NOSTRETCH_DISABLED;

    HAL_I2C_Init(&i2c_fusb);
}

void spi_init() {
    __HAL_RCC_SPI1_CLK_ENABLE();
    __HAL_RCC_SPI1_FORCE_RESET();
    __HAL_RCC_SPI1_RELEASE_RESET();

    // Initialize pins. These objects get destroyed but I don't care.
    Drivers::Pin spi_nss(GPIOA, GPIO_PIN_4, GPIO_MODE_AF_INPUT, GPIO_PULLUP);
    Drivers::Pin spi_clk(GPIOA, GPIO_PIN_5, GPIO_MODE_AF_INPUT, GPIO_NOPULL);
    Drivers::Pin spi_cipo(GPIOA, GPIO_PIN_6, GPIO_MODE_AF_PP, GPIO_NOPULL);
    Drivers::Pin spi_copi(GPIOA, GPIO_PIN_7, GPIO_MODE_AF_INPUT, GPIO_NOPULL);

    // Configure EXTI to detect CS flips on GPIOA4
    EXTI->IMR = EXTI_IMR_IM4;       // Enable interrupts
    EXTI->FTSR = EXTI_FTSR_FT4;     // Set falling trigger

    // 8-bit mode, 0 polarity/0 phase, slave, no CRC and disabled.
    SPI1->CR1 = 0;
    // Only enable RX interrupt
    SPI1->CR2 = SPI_CR2_RXNEIE;
    // Start SPI
    SPI1->CR1 |= SPI_CR1_SPE;

    // Preload data registers with 0's.
    // Must be set before receiving.
    SPI1->DR = 0x00;

    // Enable interrupts
    NVIC_SetPriority(SPI1_IRQn, 0);
    NVIC_SetPriority(EXTI0_IRQn, 0);
    NVIC_EnableIRQ(SPI1_IRQn);
    NVIC_EnableIRQ(EXTI4_IRQn);
}

constexpr uint8_t fusb_addr = 0x44;

// TODO I don't think this works...
// Need to do repeated START, etc
uint8_t i2c_read_register(uint8_t reg, uint8_t len, uint8_t* const data) {
    HAL_I2C_Mem_Read(&i2c_fusb, fusb_addr, reg, I2C_MEMADD_SIZE_8BIT, data, len, 1000);
    return len;
}

uint8_t i2c_write_register(uint8_t reg, uint8_t len, uint8_t* const data) {
    HAL_I2C_Mem_Write(&i2c_fusb, fusb_addr, reg, I2C_MEMADD_SIZE_8BIT, data, len, 1000);
    return len;
}

} // namespace Board

// ---- Pin Initialization MSP functions ---- //
// Required by ST HAL
extern "C" {

void HAL_I2C_MspInit(I2C_HandleTypeDef *hi2c) {
    // This will be filled in with all channels info once we write final fw.
    // Or not, and the stm32-cpp will be written first.
    if (hi2c == &i2c_fusb) {
        GPIO_InitTypeDef gpio;
        gpio.Mode = GPIO_MODE_AF_OD;
        gpio.Pull = GPIO_NOPULL;
        gpio.Speed = GPIO_SPEED_FREQ_LOW;
        gpio.Pin = GPIO_PIN_10 | GPIO_PIN_11;
        HAL_GPIO_Init(GPIOB, &gpio);
    } else {
        // TODO assert
    }
}

}
