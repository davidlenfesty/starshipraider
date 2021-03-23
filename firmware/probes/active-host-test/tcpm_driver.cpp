/*
 * tcpm_driver.c
 *
 * Created: 11/11/2017 18:42:26
 *  Author: jason
 */ 

#include "tcpm_driver.h"
#include <stm32f1xx_hal.h>

extern const struct tcpc_config_t tcpc_config[CONFIG_USB_PD_PORT_COUNT];

extern "C" {

/* I2C wrapper functions - get I2C port / slave addr from config struct. */
int tcpc_write(int port, int reg, int val)
{
  // Unsure what the aliasing rules would be here...
  uint8_t data = val;
  HAL_StatusTypeDef rc = HAL_I2C_Mem_Write(tcpc_config[port].i2c_periph, tcpc_config[port].i2c_slave_addr, reg, I2C_MEMADD_SIZE_8BIT, &data, 1, 100);
  if (rc != HAL_OK) {
    return -1;
  }

  return 0;
}

int tcpc_write16(int port, int reg, int val)
{
  // Unsure what the aliasing rules would be here...
  uint8_t data = val;
  HAL_StatusTypeDef rc = HAL_I2C_Mem_Write(tcpc_config[port].i2c_periph, tcpc_config[port].i2c_slave_addr, reg, I2C_MEMADD_SIZE_8BIT, &data, 2, 100);
  if (rc != HAL_OK) {
    return -1;
  }

  return 0;
}

int tcpc_read(int port, int reg, int *val)
{
  uint8_t data;
  HAL_StatusTypeDef rc = HAL_I2C_Mem_Read(tcpc_config[port].i2c_periph, tcpc_config[port].i2c_slave_addr, reg, I2C_MEMADD_SIZE_8BIT, &data, 1, 100);
  if (rc != HAL_OK) {
    return -1;
  }

  *val = data;

  return 0;
}

int tcpc_read16(int port, int reg, int *val)
{
  uint8_t data[2];
  HAL_StatusTypeDef rc = HAL_I2C_Mem_Read(tcpc_config[port].i2c_periph, tcpc_config[port].i2c_slave_addr, reg, I2C_MEMADD_SIZE_8BIT, data, 2, 100);
  if (rc != HAL_OK) {
    return -1;
  }

  // TODO is this right?
  *val = (data[0] << 8) | data[1];

  return 0;
}

// TODO this needs a once-over when I'm not tired
int tcpc_xfer(int port,
	const uint8_t *out, int out_size,
	uint8_t *in, int in_size,
	int flags)
{
  I2C_HandleTypeDef *hi2c = tcpc_config[port].i2c_periph;
  volatile uint32_t tmpreg;

  // TODO doesn't properly support segmented transfers...
  // need to re-write w/ my own driver code
  if (out_size) {
    HAL_I2C_Master_Transmit(hi2c, tcpc_config[port].i2c_slave_addr, (uint8_t *)out, out_size, 100);
  }

  if (in_size) {
    HAL_I2C_Master_Receive(hi2c, tcpc_config[port].i2c_slave_addr, in, in_size, 100);
  }

  /*
  tmpreg = hi2c->Instance->CR1;
  tmpreg = hi2c->Instance->CR2;

  // HAL can't do this, gonna have to roll up my sleeves

  // TODO actually pay attention to HAL state, for now none of this runs in interrupts so
  // we don't really have to worry about concurrency
  tmpreg = hi2c->Instance->SR2;

  if (out_size) {
    // Generate start condition
    SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
    while (!(hi2c->Instance->CR1 & I2C_SR1_SB));

    // Send slave address
    hi2c->Instance->DR = I2C_7BIT_ADD_WRITE(tcpc_config[port].i2c_slave_addr);
    // Clear addr flag
    while(!(hi2c->Instance->SR1 & I2C_SR1_ADDR));
    tmpreg = hi2c->Instance->SR2;

    // Write data out
    for (int i = 0; i < out_size; ++i) {
      while(!(hi2c->Instance->SR1, I2C_SR1_TXE));

      hi2c->Instance->DR = out[i];

      // Wait on byte transmission
      while(!(hi2c->Instance->SR1 & I2C_SR1_BTF));
    }
  }

  if (in_size) {
    // Generate restart condition
    SET_BIT(hi2c->Instance->CR1, I2C_CR1_START);
    while (!(hi2c->Instance->CR1 & I2C_SR1_SB));

    hi2c->Instance->DR = I2C_7BIT_ADD_READ(tcpc_config[port].i2c_slave_addr);
    // Clear addr flag
    while(!(hi2c->Instance->SR1 & I2C_SR1_ADDR));
    tmpreg = hi2c->Instance->SR2;

    for (int i = 0; i < in_size; ++i) {
      while(!(hi2c->Instance->SR1 & I2C_SR1_RXNE));

      in[i] = hi2c->Instance->DR;
    }

  }

  // Generate stop
  if (flags & I2C_XFER_STOP) {
    hi2c->Instance->CR1 |= I2C_CR1_STOP;
  }
  */

  return 0;
}

} // extern "C"

