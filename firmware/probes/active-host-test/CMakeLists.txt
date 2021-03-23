cmake_minimum_required(VERSION 3.10)
set(CMAKE_TOOLCHAIN_FILE arm-gcc-toolchain.cmake)
project(active-host-test C CXX ASM)

# Not recommended but fine because we are using a static library
file(GLOB ST_HAL_SRCS ../../STM32CubeF1/Drivers/STM32F1xx_HAL_Driver/Src/*.c)
list(FILTER ST_HAL_SRCS EXCLUDE REGEX .*template.c)
file(GLOB NEWLIB_STUB_SRCS ../../stm32-cpp/src/newlib-stubs/*.cpp)

option(HOST "Compile FW for host side" ON)

if(HOST)
    add_compile_definitions(HOST)
else()
    add_compile_definitions(PROBE)
endif()

add_executable(firmware.elf
    main.cpp
    board.cpp
    channel.cpp
    pin.cpp
    tcpm_driver.cpp
    FUSB302.c
    usb_pd_driver.c
    ${ST_HAL_SRCS}
    ${NEWLIB_STUB_SRCS}
    ../../STM32CubeF1/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/system_stm32f1xx.c
    ../../STM32CubeF1/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/startup_stm32f103xb.s
)
# Link properly
set_target_properties(firmware.elf PROPERTIES LINK_DEPENDS ${PROJECT_SOURCE_DIR}/stm32f103x8.ld)
# TODO fix up our linker script and use it here, we are missing *something*, probably the entry point
set(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -T ${PROJECT_SOURCE_DIR}/../../STM32CubeF1/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/linker/STM32F103X6_FLASH.ld")
# Standard include directories
target_include_directories(firmware.elf PUBLIC
    ../../STM32CubeF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include
	../../STM32CubeF1/Drivers/CMSIS/Core/Include
	../../STM32CubeF1/Drivers/STM32F1xx_HAL_Driver/Inc
	./
)
# HAL Config Defines
target_compile_definitions(firmware.elf PUBLIC STM32F103xB)
