# TODO needs to be rewritten to output to a convenient build/ directory

INCLUDES= \
	-I../../STM32CubeF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include \
	-I../../STM32CubeF1/Drivers/CMSIS/Core/Include \
	-I../../STM32CubeF1/Drivers/STM32F1xx_HAL_Driver/Inc \
	-I./

# xB translates to x8
CFLAGS=-g -mcpu=cortex-m0 -DSTM32F103xB -Os -flto $(INCLUDES)
CXXFLAGS=$(CFLAGS) --std=c++17 -fno-exceptions -fno-rtti -g --specs=nano.specs
CC=arm-none-eabi-gcc
CXX=arm-none-eabi-g++

# I'm bad at makefiles
HAL_CSRC = $(filter-out %template.c, $(wildcard ../../STM32CubeF1/Drivers/STM32F1xx_HAL_Driver/Src/*.c))

all:
	# Our code
	$(CXX) *.cpp -c $(CXXFLAGS)

	# HAL
	$(CC) $(HAL_CSRC) -c $(CFLAGS)
	$(CC) ../../STM32CubeF1/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/system_stm32f1xx.c -c $(CFLAGS)
	$(CC) ../../STM32CubeF1/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/startup_stm32f103xb.s -c $(CFLAGS)

	# Still need syscall stubs
	$(CXX) ../../stm32-cpp/src/newlib-stubs/*.cpp -c $(CXXFLAGS)

	# Link/build final binary
	$(CXX) $(CXXFLAGS) *.o -Wl,-T ./stm32f103x8.ld -o firmware.elf
	arm-none-eabi-objcopy -O binary --only-section=.text --only-section=.data firmware.elf firmware.bin
	arm-none-eabi-size firmware.elf

clean :
	rm *.o
	rm *.elf
	rm *.bin
