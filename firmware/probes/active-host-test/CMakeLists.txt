cmake_minimum_required(VERSION 3.10)
set(CMAKE_TOOLCHAIN_FILE arm-gcc-toolchain.cmake)
project(active-host-test)

# Not recommended but fine because we are using a static library
file(GLOB ST_HAL_SRCS ../../STM32CubeF1/Drivers/STM32F1xx_HAL_Driver/Src/*.c)
list(FILTER ST_HAL_SRCS EXCLUDE REGEX .*template.c)
file(GLOB NEWLIB_STUB_SRCS ../../stm32-cpp/src/newlib-stubs/*.cpp)

add_executable(firmware
    main.cpp
    board.cpp
    channel.cpp
    fusb302.cpp
    pin.cpp
    ${ST_HAL_SRCS}
    ${NEWLIB_STUB_SRCS}
    ../../STM32CubeF1/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/system_stm32f1xx.c
    ../../STM32CubeF1/Drivers/CMSIS/Device/ST/STM32F1xx/Source/Templates/gcc/startup_stm32f103xb.s
)
# Standard include directories
target_include_directories(firmware PUBLIC
    ../../STM32CubeF1/Drivers/CMSIS/Device/ST/STM32F1xx/Include
	../../STM32CubeF1/Drivers/CMSIS/Core/Include
	../../STM32CubeF1/Drivers/STM32F1xx_HAL_Driver/Inc
	./
)
# Link properly
set_target_properties(firmware PROPERTIES LINK_DEPENDS ${PROJECT_SOURCE_DIR}/stm32f103x8.ld)
# HAL Config Defines
target_compile_definitions(firmware PUBLIC STM32F103xB)
