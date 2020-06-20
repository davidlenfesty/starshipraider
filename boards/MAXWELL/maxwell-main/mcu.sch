EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 17 18
Title "MAXWELL Main Board"
Date "2020-06-20"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L st-azonenberg:STM32F777xx-TFBGA216 U1
U 1 1 5EFA3355
P 1450 2600
F 0 "U1" H 1450 2550 50  0000 L CNN
F 1 "STM32F777NIH6" H 1450 2450 50  0000 L CNN
F 2 "" H 1450 2550 50  0001 C CNN
F 3 "" H 1450 2550 50  0001 C CNN
	1    1450 2600
	1    0    0    -1  
$EndComp
$Comp
L st-azonenberg:STM32F777xx-TFBGA216 U1
U 13 1 5EFAF0FE
P 1450 4800
F 0 "U1" H 1450 4750 50  0000 L CNN
F 1 "STM32F777NIH6" H 1450 4700 50  0000 L CNN
F 2 "" H 1450 4750 50  0001 C CNN
F 3 "" H 1450 4750 50  0001 C CNN
	13   1450 4800
	1    0    0    -1  
$EndComp
$Comp
L st-azonenberg:STM32F777xx-TFBGA216 U1
U 12 1 5EFBBFA5
P 1450 7600
F 0 "U1" H 1450 7450 50  0000 L CNN
F 1 "STM32F777NIH6" H 1450 7550 50  0000 L CNN
F 2 "" H 1450 7550 50  0001 C CNN
F 3 "" H 1450 7550 50  0001 C CNN
	12   1450 7600
	1    0    0    -1  
$EndComp
$Comp
L xilinx-azonenberg:XILINX_JTAG J1
U 1 1 5EFC91BD
P 4750 2350
F 0 "J1" H 5469 3058 60  0000 L CNN
F 1 "XILINX_JTAG" H 5469 2952 60  0000 L CNN
F 2 "" H 4750 2350 60  0000 C CNN
F 3 "" H 4750 2350 60  0000 C CNN
	1    4750 2350
	1    0    0    -1  
$EndComp
Text HLabel 1350 1450 0    50   Output ~ 0
S7_SPI_CS_N
Text HLabel 1350 1550 0    50   Output ~ 0
S7_SPI_SCK
Text HLabel 1350 1750 0    50   Output ~ 0
S7_SPI_MOSI
Text HLabel 1350 1650 0    50   Input ~ 0
S7_SPI_MISO
Text HLabel 5000 3350 0    50   Output ~ 0
K7_SPI_CS_N
Text HLabel 5000 3150 0    50   Output ~ 0
K7_SPI_SCK
Text HLabel 5000 3550 0    50   Output ~ 0
K7_SPI_MOSI
Text HLabel 5000 3450 0    50   Input ~ 0
K7_SPI_MISO
Text HLabel 3250 1750 0    50   BiDi ~ 0
PROBE_I2C_SDA
Text HLabel 3250 1650 0    50   Output ~ 0
PROBE_I2C_SCL
Text HLabel 1350 1850 0    50   Output ~ 0
S7_RST_N
Text HLabel 1350 1950 0    50   BiDi ~ 0
S7_INIT_B
Text HLabel 1350 2050 0    50   Input ~ 0
S7_DONE
$Comp
L st-azonenberg:STM32F777xx-TFBGA216 U1
U 2 1 5F7969E1
P 3350 2600
F 0 "U1" H 3350 2550 50  0000 L CNN
F 1 "STM32F777NIH6" H 3350 2450 50  0000 L CNN
F 2 "" H 3350 2550 50  0001 C CNN
F 3 "" H 3350 2550 50  0001 C CNN
	2    3350 2600
	1    0    0    -1  
$EndComp
$Comp
L st-azonenberg:STM32F777xx-TFBGA216 U1
U 3 1 5F7A0843
P 3350 4500
F 0 "U1" H 3350 4450 50  0000 L CNN
F 1 "STM32F777NIH6" H 3350 4350 50  0000 L CNN
F 2 "" H 3350 4450 50  0001 C CNN
F 3 "" H 3350 4450 50  0001 C CNN
	3    3350 4500
	1    0    0    -1  
$EndComp
$Comp
L st-azonenberg:STM32F777xx-TFBGA216 U1
U 4 1 5F7A4D38
P 7100 2600
F 0 "U1" H 7100 2550 50  0000 L CNN
F 1 "STM32F777NIH6" H 7100 2450 50  0000 L CNN
F 2 "" H 7100 2550 50  0001 C CNN
F 3 "" H 7100 2550 50  0001 C CNN
	4    7100 2600
	1    0    0    -1  
$EndComp
$Comp
L st-azonenberg:STM32F777xx-TFBGA216 U1
U 5 1 5F7A7462
P 5100 4500
F 0 "U1" H 5100 4450 50  0000 L CNN
F 1 "STM32F777NIH6" H 5100 4350 50  0000 L CNN
F 2 "" H 5100 4450 50  0001 C CNN
F 3 "" H 5100 4450 50  0001 C CNN
	5    5100 4500
	1    0    0    -1  
$EndComp
$Comp
L st-azonenberg:STM32F777xx-TFBGA216 U1
U 7 1 5F7B0F60
P 5100 6600
F 0 "U1" H 5100 6550 50  0000 L CNN
F 1 "STM32F777NIH6" H 5100 6450 50  0000 L CNN
F 2 "" H 5100 6550 50  0001 C CNN
F 3 "" H 5100 6550 50  0001 C CNN
	7    5100 6600
	1    0    0    -1  
$EndComp
$Comp
L st-azonenberg:STM32F777xx-TFBGA216 U1
U 8 1 5F7B5821
P 8400 2600
F 0 "U1" H 8400 2550 50  0000 L CNN
F 1 "STM32F777NIH6" H 8400 2450 50  0000 L CNN
F 2 "" H 8400 2550 50  0001 C CNN
F 3 "" H 8400 2550 50  0001 C CNN
	8    8400 2600
	1    0    0    -1  
$EndComp
$Comp
L st-azonenberg:STM32F777xx-TFBGA216 U1
U 9 1 5F7B9B97
P 8600 4500
F 0 "U1" H 8600 4450 50  0000 L CNN
F 1 "STM32F777NIH6" H 8600 4350 50  0000 L CNN
F 2 "" H 8600 4450 50  0001 C CNN
F 3 "" H 8600 4450 50  0001 C CNN
	9    8600 4500
	1    0    0    -1  
$EndComp
$Comp
L st-azonenberg:STM32F777xx-TFBGA216 U1
U 10 1 5F7BFCBC
P 8600 6400
F 0 "U1" H 8600 6350 50  0000 L CNN
F 1 "STM32F777NIH6" H 8600 6250 50  0000 L CNN
F 2 "" H 8600 6350 50  0001 C CNN
F 3 "" H 8600 6350 50  0001 C CNN
	10   8600 6400
	1    0    0    -1  
$EndComp
$Comp
L st-azonenberg:STM32F777xx-TFBGA216 U1
U 11 1 5F7C9274
P 8650 7500
F 0 "U1" H 8650 7450 50  0000 L CNN
F 1 "STM32F777NIH6" H 8650 7350 50  0000 L CNN
F 2 "" H 8650 7450 50  0001 C CNN
F 3 "" H 8650 7450 50  0001 C CNN
	11   8650 7500
	1    0    0    -1  
$EndComp
Text HLabel 5000 3250 0    50   BiDi ~ 0
K7_INIT_B
Text HLabel 5000 2950 0    50   Output ~ 0
K7_RST_N
Text HLabel 5000 3050 0    50   Input ~ 0
K7_DONE
Wire Wire Line
	1350 2950 1350 3050
Connection ~ 1350 3050
Wire Wire Line
	1350 3050 1350 3150
Connection ~ 1350 3150
Wire Wire Line
	1350 3150 1350 3250
Connection ~ 1350 3250
Wire Wire Line
	1350 3250 1350 3350
Connection ~ 1350 3350
Wire Wire Line
	1350 3350 1350 3450
Connection ~ 1350 3450
Wire Wire Line
	1350 3450 1350 3550
Connection ~ 1350 3550
Wire Wire Line
	1350 3550 1350 3650
Connection ~ 1350 3650
Wire Wire Line
	1350 3650 1350 3750
Connection ~ 1350 3750
Wire Wire Line
	1350 3750 1350 3850
Connection ~ 1350 3850
Wire Wire Line
	1350 3850 1350 3950
Connection ~ 1350 3950
Wire Wire Line
	1350 3950 1350 4050
Connection ~ 1350 4050
Wire Wire Line
	1350 4050 1350 4150
Connection ~ 1350 4150
Wire Wire Line
	1350 4150 1350 4250
Connection ~ 1350 4250
Wire Wire Line
	1350 4250 1350 4350
Connection ~ 1350 4350
Wire Wire Line
	1350 4350 1350 4450
Connection ~ 1350 4450
Wire Wire Line
	1350 4450 1350 4550
Connection ~ 1350 4550
Wire Wire Line
	1350 4550 1350 4650
Connection ~ 1350 4650
Wire Wire Line
	1350 4650 1350 4750
Wire Wire Line
	1350 5850 1350 5950
Connection ~ 1350 5950
Wire Wire Line
	1350 5950 1350 6050
Connection ~ 1350 6050
Wire Wire Line
	1350 6050 1350 6150
Connection ~ 1350 6150
Wire Wire Line
	1350 6150 1350 6250
Connection ~ 1350 6250
Wire Wire Line
	1350 6250 1350 6350
Connection ~ 1350 6350
Wire Wire Line
	1350 6350 1350 6450
Connection ~ 1350 6450
Wire Wire Line
	1350 6450 1350 6550
Connection ~ 1350 6550
Wire Wire Line
	1350 6550 1350 6650
Connection ~ 1350 6650
Wire Wire Line
	1350 6650 1350 6750
Connection ~ 1350 6750
Wire Wire Line
	1350 6750 1350 6850
Connection ~ 1350 6850
Wire Wire Line
	1350 6850 1350 6950
Connection ~ 1350 6950
Wire Wire Line
	1350 6950 1350 7050
Connection ~ 1350 7050
Wire Wire Line
	1350 7050 1350 7150
Connection ~ 1350 7150
Wire Wire Line
	1350 7150 1350 7250
Connection ~ 1350 7250
Wire Wire Line
	1350 7250 1350 7350
Connection ~ 1350 7350
Wire Wire Line
	1350 7350 1350 7450
Connection ~ 1350 7450
Wire Wire Line
	1350 7450 1350 7550
Text HLabel 3250 2150 0    50   BiDi ~ 0
RAM_SDA
Text HLabel 3250 2050 0    50   Output ~ 0
RAM_SCL
Text HLabel 3250 2250 0    50   Output ~ 0
PLL_SPI_LE
Text HLabel 3250 2350 0    50   Output ~ 0
PLL_SPI_SCK
Text HLabel 2950 2550 0    50   Output ~ 0
PLL_SPI_DATA
Text HLabel 3250 1850 0    50   BiDi ~ 0
PLL_STATUS_LD
Text HLabel 3250 1950 0    50   BiDi ~ 0
PLL_STATUS_CLKIN0
Text HLabel 3250 1050 0    50   BiDi ~ 0
PLL_STATUS_CLKIN1
Text HLabel 3250 1150 0    50   BiDi ~ 0
PLL_STATUS_HOLDOVER
Text Label 1350 2350 2    50   ~ 0
STM_TMS
Text Label 1350 2450 2    50   ~ 0
STM_TCK
Text Label 1350 2550 2    50   ~ 0
STM_TDI
Text Label 4750 1250 2    50   ~ 0
3V3
Text Label 2750 1350 2    50   ~ 0
STM_TDO
Text Label 3250 1450 2    50   ~ 0
3V3
Text Label 4750 1350 2    50   ~ 0
GND
Wire Wire Line
	4750 1350 4750 1450
Connection ~ 4750 1450
Wire Wire Line
	4750 1450 4750 1550
Connection ~ 4750 1550
Wire Wire Line
	4750 1550 4750 1650
Connection ~ 4750 1650
Wire Wire Line
	4750 1650 4750 1750
NoConn ~ 4750 1850
Text Label 4750 2150 2    50   ~ 0
STM_TDO
$Comp
L device:R R100
U 1 1 6062A358
P 2900 1350
F 0 "R100" V 2850 1550 50  0000 C CNN
F 1 "33" V 2900 1350 50  0000 C CNN
F 2 "" V 2830 1350 50  0001 C CNN
F 3 "" H 2900 1350 50  0001 C CNN
	1    2900 1350
	0    1    1    0   
$EndComp
Wire Wire Line
	3050 1350 3250 1350
Text Label 4750 1950 2    50   ~ 0
STM_TMS
Text Label 4750 2050 2    50   ~ 0
STM_TCK
Text Label 4750 2250 2    50   ~ 0
STM_TDI
Text Notes 850  1400 0    50   ~ 0
SPI1 AF5
Text Notes 2700 2500 0    50   ~ 0
SPI2 AF5
NoConn ~ 3250 2450
$Comp
L device:R R101
U 1 1 6064B6A3
P 3100 2550
F 0 "R101" V 3200 2450 50  0000 C CNN
F 1 "1K" V 3100 2550 50  0000 C CNN
F 2 "" V 3030 2550 50  0001 C CNN
F 3 "" H 3100 2550 50  0001 C CNN
	1    3100 2550
	0    1    1    0   
$EndComp
Text Notes 2600 1600 0    50   ~ 0
I2C1 AF4
NoConn ~ 3250 1550
Text Notes 4450 3700 0    50   ~ 0
SPI4 AF5
Text Notes 2400 2100 0    50   ~ 0
I2C2 AF4
NoConn ~ 3250 1250
NoConn ~ 1350 1350
NoConn ~ 1350 1250
NoConn ~ 1350 1150
Text Label 4750 2350 2    50   ~ 0
STM_RST_J
Text Label 1450 8050 2    50   ~ 0
STM_RST_J
$Comp
L device:R R96
U 1 1 607F7894
P 1600 8050
F 0 "R96" V 1500 8050 50  0000 C CNN
F 1 "0" V 1600 8050 50  0000 C CNN
F 2 "" V 1530 8050 50  0001 C CNN
F 3 "" H 1600 8050 50  0001 C CNN
	1    1600 8050
	0    1    1    0   
$EndComp
Text Label 1750 8050 0    50   ~ 0
STM_RST_N
Text Label 2550 5650 0    50   ~ 0
STM_RST_N
Text Label 13700 2000 2    50   ~ 0
LCD_R0
Text Label 13700 2100 2    50   ~ 0
LCD_R1
Text Label 13700 2200 2    50   ~ 0
LCD_R2
Text Label 13700 2300 2    50   ~ 0
LCD_R3
Text Label 13700 2400 2    50   ~ 0
LCD_R4
Text Label 13700 2500 2    50   ~ 0
LCD_R5
Text Label 13700 2600 2    50   ~ 0
LCD_R6
Text Label 13700 2700 2    50   ~ 0
LCD_R7
Text Label 13700 2800 2    50   ~ 0
LCD_G0
Text Label 13700 2900 2    50   ~ 0
LCD_G1
Text Label 13700 3100 2    50   ~ 0
LCD_G3
Text Label 13700 3200 2    50   ~ 0
LCD_G4
Text Label 13700 3300 2    50   ~ 0
LCD_G5
Text Label 13700 3400 2    50   ~ 0
LCD_G6
Text Label 13700 3500 2    50   ~ 0
LCD_G7
Text Label 13700 3000 2    50   ~ 0
LCD_G2
Text Label 13700 3600 2    50   ~ 0
LCD_B0
Text Label 13700 3700 2    50   ~ 0
LCD_B1
Text Label 13700 3900 2    50   ~ 0
LCD_B3
Text Label 13700 4000 2    50   ~ 0
LCD_B4
Text Label 13700 4100 2    50   ~ 0
LCD_B5
Text Label 13700 4200 2    50   ~ 0
LCD_B6
Text Label 13700 4300 2    50   ~ 0
LCD_B7
Text Label 13700 3800 2    50   ~ 0
LCD_B2
Text Label 13700 1500 2    50   ~ 0
LCD_ON
Text Label 13700 1400 2    50   ~ 0
LCD_CLK
Text Label 13700 1600 2    50   ~ 0
LCD_HSYNC
Text Label 13700 1700 2    50   ~ 0
LCD_VSYNC
Text Label 13700 1800 2    50   ~ 0
LCD_EN
Text Label 13700 4950 2    50   ~ 0
TOUCH_RST_N
Text Label 13700 5050 2    50   ~ 0
TOUCH_INT
Text Label 13700 5250 2    50   ~ 0
TOUCH_I2C_SDA
Text Label 13700 5350 2    50   ~ 0
TOUCH_I2C_SCL
Text Label 8500 4450 2    50   ~ 0
LCD_R0
Text Label 8500 4850 2    50   ~ 0
LCD_R1
Text Label 8500 4950 2    50   ~ 0
LCD_R2
Text Label 8500 5050 2    50   ~ 0
LCD_R3
Text Label 8500 5150 2    50   ~ 0
LCD_R4
Text Label 8500 5250 2    50   ~ 0
LCD_R5
Text Label 8500 5350 2    50   ~ 0
LCD_R6
Text Label 8500 5450 2    50   ~ 0
LCD_R7
Text Label 8500 5550 2    50   ~ 0
LCD_G0
Text Label 8500 5650 2    50   ~ 0
LCD_G1
Text Label 8500 5850 2    50   ~ 0
LCD_G3
Text Label 8500 5950 2    50   ~ 0
LCD_G4
Text Label 8500 2950 2    50   ~ 0
LCD_G5
Text Label 8500 3050 2    50   ~ 0
LCD_G6
Text Label 8500 3150 2    50   ~ 0
LCD_G7
Text Label 8500 5750 2    50   ~ 0
LCD_G2
Text Label 8500 6050 2    50   ~ 0
LCD_B0
Text Label 8500 6150 2    50   ~ 0
LCD_B1
Text Label 8500 6350 2    50   ~ 0
LCD_B3
Text Label 8500 3350 2    50   ~ 0
LCD_B4
Text Label 8500 3450 2    50   ~ 0
LCD_B5
Text Label 8500 3550 2    50   ~ 0
LCD_B6
Text Label 8500 3650 2    50   ~ 0
LCD_B7
Text Label 8500 6250 2    50   ~ 0
LCD_B2
Text Label 8550 6750 2    50   ~ 0
LCD_ON
Text Label 8500 4350 2    50   ~ 0
LCD_CLK
Text Label 8500 3950 2    50   ~ 0
LCD_HSYNC
Text Label 8500 3850 2    50   ~ 0
LCD_VSYNC
Text Label 8550 7450 2    50   ~ 0
LCD_EN
Text Label 7000 2450 2    50   ~ 0
TOUCH_RST_N
Text Label 7000 2550 2    50   ~ 0
TOUCH_INT
Text Label 7000 2350 2    50   ~ 0
TOUCH_I2C_SDA
Text Label 7000 2250 2    50   ~ 0
TOUCH_I2C_SCL
Text Notes 6550 2650 0    50   ~ 0
I2C4 AF4
$Comp
L special-azonenberg:MOP-TFT480116-38G-BLH-TPC_HM_DISPLAY J9
U 1 1 60866B6D
P 13900 4350
F 0 "J9" H 13900 7500 50  0000 L CNN
F 1 "MOP-TFT480116-38G-BLH-TPC_HM_DISPLAY" H 13900 7400 50  0000 L CNN
F 2 "" H 13900 4350 50  0001 C CNN
F 3 "" H 13900 4350 50  0001 C CNN
	1    13900 4350
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:MOP-TFT480116-38G-BLH-TPC_HM_TOUCHPANEL J28
U 1 1 60868E02
P 13900 5400
F 0 "J28" H 13900 5350 50  0000 L CNN
F 1 "MOP-TFT480116-38G-BLH-TPC_HM_TOUCHPANEL" H 13900 5250 50  0000 L CNN
F 2 "" H 13900 5400 50  0001 C CNN
F 3 "" H 13900 5400 50  0001 C CNN
	1    13900 5400
	1    0    0    -1  
$EndComp
Text Label 13700 4750 2    50   ~ 0
GND
Text Label 15200 1800 0    50   ~ 0
GND
Wire Wire Line
	15200 1800 15200 1900
Connection ~ 15200 1900
Wire Wire Line
	15200 1900 15200 2000
Text Label 15200 1400 0    50   ~ 0
GND
Text Label 15200 1700 0    50   ~ 0
3V3
Text Label 13700 4650 2    50   ~ 0
3V3
Text Notes 13900 6100 0    50   ~ 0
LCD decoupling
Text HLabel 15200 1500 2    50   Input ~ 0
VBACKLIGHT
Text HLabel 1350 2950 0    50   Input ~ 0
GND
Text Label 2550 5150 0    50   ~ 0
3V3
Text Label 2550 5250 0    50   ~ 0
GND
$Comp
L Connector:Conn_01x04 TP1
U 1 1 6089DD84
P 1900 8400
F 0 "TP1" H 1980 8392 50  0000 L CNN
F 1 "Conn_01x04" H 1980 8301 50  0000 L CNN
F 2 "" H 1900 8400 50  0001 C CNN
F 3 "~" H 1900 8400 50  0001 C CNN
	1    1900 8400
	1    0    0    -1  
$EndComp
Text Label 1700 8300 2    50   ~ 0
3V3
Text Label 1700 8400 2    50   ~ 0
CONSOLE_TX
Text Label 1700 8500 2    50   ~ 0
CONSOLE_RX
Text Label 1700 8600 2    50   ~ 0
GND
Text Label 1350 2250 2    50   ~ 0
CONSOLE_TX
Text Label 1350 2150 2    50   ~ 0
CONSOLE_RX
Text Notes 600  2250 0    50   ~ 0
UART4\nAF6
Text HLabel 3250 3550 0    50   Output ~ 0
SCPI_UART_TX
Text HLabel 3250 3650 0    50   Output ~ 0
SCPI_UART_RX
Text Notes 2150 3600 0    50   ~ 0
USART6 AF8
Text Label 1350 5550 2    50   ~ 0
MCU_VCAP1
Text Label 1350 5650 2    50   ~ 0
MCU_VCAP2
Text Label 950  10700 2    50   ~ 0
MCU_VCAP1
Text Label 1600 10700 2    50   ~ 0
MCU_VCAP2
$Comp
L device:C C239
U 1 1 608CDC79
P 950 10850
F 0 "C239" H 1065 10896 50  0000 L CNN
F 1 "2.2 uF" H 1065 10805 50  0000 L CNN
F 2 "" H 988 10700 50  0001 C CNN
F 3 "" H 950 10850 50  0001 C CNN
	1    950  10850
	1    0    0    -1  
$EndComp
Text Label 950  11000 2    50   ~ 0
GND
$Comp
L device:C C244
U 1 1 608D15B9
P 1600 10850
F 0 "C244" H 1715 10896 50  0000 L CNN
F 1 "2.2 uF" H 1715 10805 50  0000 L CNN
F 2 "" H 1638 10700 50  0001 C CNN
F 3 "" H 1600 10850 50  0001 C CNN
	1    1600 10850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 11000 950  11000
$Comp
L device:C C235
U 1 1 608D3B09
P 950 9000
F 0 "C235" H 1065 9046 50  0000 L CNN
F 1 "4.7 uF" H 1065 8955 50  0000 L CNN
F 2 "" H 988 8850 50  0001 C CNN
F 3 "" H 950 9000 50  0001 C CNN
	1    950  9000
	1    0    0    -1  
$EndComp
Text Label 950  8850 2    50   ~ 0
3V3
Text Label 950  9150 2    50   ~ 0
GND
$Comp
L device:C C240
U 1 1 608D57D7
P 1450 9000
F 0 "C240" H 1565 9046 50  0000 L CNN
F 1 "4.7 uF" H 1565 8955 50  0000 L CNN
F 2 "" H 1488 8850 50  0001 C CNN
F 3 "" H 1450 9000 50  0001 C CNN
	1    1450 9000
	1    0    0    -1  
$EndComp
$Comp
L device:C C245
U 1 1 608D5D13
P 1950 9000
F 0 "C245" H 2065 9046 50  0000 L CNN
F 1 "4.7 uF" H 2065 8955 50  0000 L CNN
F 2 "" H 1988 8850 50  0001 C CNN
F 3 "" H 1950 9000 50  0001 C CNN
	1    1950 9000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1950 8850 1450 8850
Connection ~ 1450 8850
Wire Wire Line
	1450 8850 950  8850
Wire Wire Line
	950  9150 1450 9150
Connection ~ 1450 9150
Wire Wire Line
	1450 9150 1950 9150
$Comp
L device:C C236
U 1 1 608DACB2
P 950 9450
F 0 "C236" H 1065 9496 50  0000 L CNN
F 1 "0.47 uF" H 1065 9405 50  0000 L CNN
F 2 "" H 988 9300 50  0001 C CNN
F 3 "" H 950 9450 50  0001 C CNN
	1    950  9450
	1    0    0    -1  
$EndComp
Text Label 950  9300 2    50   ~ 0
3V3
Text Label 950  9600 2    50   ~ 0
GND
$Comp
L device:C C241
U 1 1 608DBBE0
P 1450 9450
F 0 "C241" H 1565 9496 50  0000 L CNN
F 1 "0.47 uF" H 1565 9405 50  0000 L CNN
F 2 "" H 1488 9300 50  0001 C CNN
F 3 "" H 1450 9450 50  0001 C CNN
	1    1450 9450
	1    0    0    -1  
$EndComp
$Comp
L device:C C246
U 1 1 608DBFCC
P 1950 9450
F 0 "C246" H 2065 9496 50  0000 L CNN
F 1 "0.47 uF" H 2065 9405 50  0000 L CNN
F 2 "" H 1988 9300 50  0001 C CNN
F 3 "" H 1950 9450 50  0001 C CNN
	1    1950 9450
	1    0    0    -1  
$EndComp
$Comp
L device:C C249
U 1 1 608DC197
P 2450 9450
F 0 "C249" H 2565 9496 50  0000 L CNN
F 1 "0.47 uF" H 2565 9405 50  0000 L CNN
F 2 "" H 2488 9300 50  0001 C CNN
F 3 "" H 2450 9450 50  0001 C CNN
	1    2450 9450
	1    0    0    -1  
$EndComp
$Comp
L device:C C252
U 1 1 608DC453
P 2950 9450
F 0 "C252" H 3065 9496 50  0000 L CNN
F 1 "0.47 uF" H 3065 9405 50  0000 L CNN
F 2 "" H 2988 9300 50  0001 C CNN
F 3 "" H 2950 9450 50  0001 C CNN
	1    2950 9450
	1    0    0    -1  
$EndComp
$Comp
L device:C C255
U 1 1 608DC6E0
P 3450 9450
F 0 "C255" H 3565 9496 50  0000 L CNN
F 1 "0.47 uF" H 3565 9405 50  0000 L CNN
F 2 "" H 3488 9300 50  0001 C CNN
F 3 "" H 3450 9450 50  0001 C CNN
	1    3450 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 9300 2950 9300
Connection ~ 1450 9300
Wire Wire Line
	1450 9300 950  9300
Connection ~ 1950 9300
Wire Wire Line
	1950 9300 1450 9300
Connection ~ 2450 9300
Wire Wire Line
	2450 9300 1950 9300
Connection ~ 2950 9300
Wire Wire Line
	2950 9300 2450 9300
Wire Wire Line
	950  9600 1450 9600
Connection ~ 1450 9600
Wire Wire Line
	1450 9600 1950 9600
Connection ~ 1950 9600
Wire Wire Line
	1950 9600 2450 9600
Connection ~ 2450 9600
Wire Wire Line
	2450 9600 2950 9600
Connection ~ 2950 9600
Wire Wire Line
	2950 9600 3450 9600
$Comp
L device:C C237
U 1 1 608E12AD
P 950 9900
F 0 "C237" H 1065 9946 50  0000 L CNN
F 1 "0.47 uF" H 1065 9855 50  0000 L CNN
F 2 "" H 988 9750 50  0001 C CNN
F 3 "" H 950 9900 50  0001 C CNN
	1    950  9900
	1    0    0    -1  
$EndComp
Text Label 950  9750 2    50   ~ 0
3V3
Text Label 950  10050 2    50   ~ 0
GND
$Comp
L device:C C242
U 1 1 608E12B9
P 1450 9900
F 0 "C242" H 1565 9946 50  0000 L CNN
F 1 "0.47 uF" H 1565 9855 50  0000 L CNN
F 2 "" H 1488 9750 50  0001 C CNN
F 3 "" H 1450 9900 50  0001 C CNN
	1    1450 9900
	1    0    0    -1  
$EndComp
$Comp
L device:C C247
U 1 1 608E12C3
P 1950 9900
F 0 "C247" H 2065 9946 50  0000 L CNN
F 1 "0.47 uF" H 2065 9855 50  0000 L CNN
F 2 "" H 1988 9750 50  0001 C CNN
F 3 "" H 1950 9900 50  0001 C CNN
	1    1950 9900
	1    0    0    -1  
$EndComp
$Comp
L device:C C250
U 1 1 608E12CD
P 2450 9900
F 0 "C250" H 2565 9946 50  0000 L CNN
F 1 "0.47 uF" H 2565 9855 50  0000 L CNN
F 2 "" H 2488 9750 50  0001 C CNN
F 3 "" H 2450 9900 50  0001 C CNN
	1    2450 9900
	1    0    0    -1  
$EndComp
$Comp
L device:C C253
U 1 1 608E12D7
P 2950 9900
F 0 "C253" H 3065 9946 50  0000 L CNN
F 1 "0.47 uF" H 3065 9855 50  0000 L CNN
F 2 "" H 2988 9750 50  0001 C CNN
F 3 "" H 2950 9900 50  0001 C CNN
	1    2950 9900
	1    0    0    -1  
$EndComp
$Comp
L device:C C256
U 1 1 608E12E1
P 3450 9900
F 0 "C256" H 3565 9946 50  0000 L CNN
F 1 "0.47 uF" H 3565 9855 50  0000 L CNN
F 2 "" H 3488 9750 50  0001 C CNN
F 3 "" H 3450 9900 50  0001 C CNN
	1    3450 9900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 9750 2950 9750
Connection ~ 1450 9750
Wire Wire Line
	1450 9750 950  9750
Connection ~ 1950 9750
Wire Wire Line
	1950 9750 1450 9750
Connection ~ 2450 9750
Wire Wire Line
	2450 9750 1950 9750
Connection ~ 2950 9750
Wire Wire Line
	2950 9750 2450 9750
Wire Wire Line
	950  10050 1450 10050
Connection ~ 1450 10050
Wire Wire Line
	1450 10050 1950 10050
Connection ~ 1950 10050
Wire Wire Line
	1950 10050 2450 10050
Connection ~ 2450 10050
Wire Wire Line
	2450 10050 2950 10050
Connection ~ 2950 10050
Wire Wire Line
	2950 10050 3450 10050
$Comp
L device:C C238
U 1 1 608EF349
P 950 10350
F 0 "C238" H 1065 10396 50  0000 L CNN
F 1 "0.47 uF" H 1065 10305 50  0000 L CNN
F 2 "" H 988 10200 50  0001 C CNN
F 3 "" H 950 10350 50  0001 C CNN
	1    950  10350
	1    0    0    -1  
$EndComp
Text Label 950  10200 2    50   ~ 0
3V3
Text Label 950  10500 2    50   ~ 0
GND
$Comp
L device:C C243
U 1 1 608EF355
P 1450 10350
F 0 "C243" H 1565 10396 50  0000 L CNN
F 1 "0.47 uF" H 1565 10305 50  0000 L CNN
F 2 "" H 1488 10200 50  0001 C CNN
F 3 "" H 1450 10350 50  0001 C CNN
	1    1450 10350
	1    0    0    -1  
$EndComp
$Comp
L device:C C248
U 1 1 608EF35F
P 1950 10350
F 0 "C248" H 2065 10396 50  0000 L CNN
F 1 "0.47 uF" H 2065 10305 50  0000 L CNN
F 2 "" H 1988 10200 50  0001 C CNN
F 3 "" H 1950 10350 50  0001 C CNN
	1    1950 10350
	1    0    0    -1  
$EndComp
$Comp
L device:C C251
U 1 1 608EF369
P 2450 10350
F 0 "C251" H 2565 10396 50  0000 L CNN
F 1 "0.47 uF" H 2565 10305 50  0000 L CNN
F 2 "" H 2488 10200 50  0001 C CNN
F 3 "" H 2450 10350 50  0001 C CNN
	1    2450 10350
	1    0    0    -1  
$EndComp
$Comp
L device:C C254
U 1 1 608EF373
P 2950 10350
F 0 "C254" H 3065 10396 50  0000 L CNN
F 1 "0.47 uF" H 3065 10305 50  0000 L CNN
F 2 "" H 2988 10200 50  0001 C CNN
F 3 "" H 2950 10350 50  0001 C CNN
	1    2950 10350
	1    0    0    -1  
$EndComp
$Comp
L device:C C257
U 1 1 608EF37D
P 3450 10350
F 0 "C257" H 3565 10396 50  0000 L CNN
F 1 "0.47 uF" H 3565 10305 50  0000 L CNN
F 2 "" H 3488 10200 50  0001 C CNN
F 3 "" H 3450 10350 50  0001 C CNN
	1    3450 10350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 10200 2950 10200
Connection ~ 1450 10200
Wire Wire Line
	1450 10200 950  10200
Connection ~ 1950 10200
Wire Wire Line
	1950 10200 1450 10200
Connection ~ 2450 10200
Wire Wire Line
	2450 10200 1950 10200
Connection ~ 2950 10200
Wire Wire Line
	2950 10200 2450 10200
Wire Wire Line
	950  10500 1450 10500
Connection ~ 1450 10500
Wire Wire Line
	1450 10500 1950 10500
Connection ~ 1950 10500
Wire Wire Line
	1950 10500 2450 10500
Connection ~ 2450 10500
Wire Wire Line
	2450 10500 2950 10500
Connection ~ 2950 10500
Wire Wire Line
	2950 10500 3450 10500
$Comp
L device:R R113
U 1 1 60954F9C
P 14000 700
F 0 "R113" V 13950 900 50  0000 C CNN
F 1 "10K" V 14000 700 50  0000 C CNN
F 2 "" V 13930 700 50  0001 C CNN
F 3 "" H 14000 700 50  0001 C CNN
	1    14000 700 
	0    1    1    0   
$EndComp
Text Label 13850 700  2    50   ~ 0
TOUCH_RST_N
Text Label 13850 800  2    50   ~ 0
TOUCH_INT
Text Label 14450 700  0    50   ~ 0
3V3
Wire Wire Line
	14450 700  14150 700 
$Comp
L device:R R114
U 1 1 60963369
P 14000 800
F 0 "R114" V 13950 1000 50  0000 C CNN
F 1 "10K" V 14000 800 50  0000 C CNN
F 2 "" V 13930 800 50  0001 C CNN
F 3 "" H 14000 800 50  0001 C CNN
	1    14000 800 
	0    1    1    0   
$EndComp
Wire Wire Line
	14150 800  14450 800 
Wire Wire Line
	14450 800  14450 700 
$Comp
L device:R R115
U 1 1 6096AC8B
P 14000 900
F 0 "R115" V 13950 1100 50  0000 C CNN
F 1 "4.7K" V 14000 900 50  0000 C CNN
F 2 "" V 13930 900 50  0001 C CNN
F 3 "" H 14000 900 50  0001 C CNN
	1    14000 900 
	0    1    1    0   
$EndComp
Text Label 13850 900  2    50   ~ 0
TOUCH_I2C_SDA
Text Label 13850 1000 2    50   ~ 0
TOUCH_I2C_SCL
$Comp
L device:R R116
U 1 1 6096DF7F
P 14000 1000
F 0 "R116" V 13950 1200 50  0000 C CNN
F 1 "4.7K" V 14000 1000 50  0000 C CNN
F 2 "" V 13930 1000 50  0001 C CNN
F 3 "" H 14000 1000 50  0001 C CNN
	1    14000 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	14150 900  14450 900 
Wire Wire Line
	14450 900  14450 800 
Connection ~ 14450 800 
Wire Wire Line
	14150 1000 14450 1000
Wire Wire Line
	14450 1000 14450 900 
Connection ~ 14450 900 
$Comp
L device:C C265
U 1 1 6098605C
P 13900 5850
F 0 "C265" H 14015 5896 50  0000 L CNN
F 1 "4.7 uF" H 14015 5805 50  0000 L CNN
F 2 "" H 13938 5700 50  0001 C CNN
F 3 "" H 13900 5850 50  0001 C CNN
	1    13900 5850
	1    0    0    -1  
$EndComp
$Comp
L device:C C266
U 1 1 6098697E
P 14400 5850
F 0 "C266" H 14515 5896 50  0000 L CNN
F 1 "0.47 uF" H 14515 5805 50  0000 L CNN
F 2 "" H 14438 5700 50  0001 C CNN
F 3 "" H 14400 5850 50  0001 C CNN
	1    14400 5850
	1    0    0    -1  
$EndComp
$Comp
L device:C C267
U 1 1 6098761A
P 14950 5850
F 0 "C267" H 15065 5896 50  0000 L CNN
F 1 "0.47 uF" H 15065 5805 50  0000 L CNN
F 2 "" H 14988 5700 50  0001 C CNN
F 3 "" H 14950 5850 50  0001 C CNN
	1    14950 5850
	1    0    0    -1  
$EndComp
$Comp
L device:C C268
U 1 1 60987C12
P 15500 5850
F 0 "C268" H 15615 5896 50  0000 L CNN
F 1 "0.47 uF" H 15615 5805 50  0000 L CNN
F 2 "" H 15538 5700 50  0001 C CNN
F 3 "" H 15500 5850 50  0001 C CNN
	1    15500 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	15500 6000 14950 6000
Connection ~ 14400 6000
Wire Wire Line
	14400 6000 13900 6000
Connection ~ 14950 6000
Wire Wire Line
	14950 6000 14400 6000
Wire Wire Line
	13900 5700 14400 5700
Connection ~ 14400 5700
Wire Wire Line
	14400 5700 14950 5700
Connection ~ 14950 5700
Wire Wire Line
	14950 5700 15500 5700
Text Label 13900 5700 2    50   ~ 0
3V3
Text Label 13900 6000 2    50   ~ 0
GND
$Comp
L Switch:SW_Push SW1
U 1 1 60999074
P 2950 8050
F 0 "SW1" H 2950 8335 50  0000 C CNN
F 1 "SW_Push" H 2950 8244 50  0000 C CNN
F 2 "" H 2950 8250 50  0001 C CNN
F 3 "" H 2950 8250 50  0001 C CNN
	1    2950 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 8050 2750 8050
$Comp
L device:C C258
U 1 1 6099F2A8
P 2750 8200
F 0 "C258" H 2865 8246 50  0000 L CNN
F 1 "0.1 uF" H 2865 8155 50  0000 L CNN
F 2 "" H 2788 8050 50  0001 C CNN
F 3 "" H 2750 8200 50  0001 C CNN
	1    2750 8200
	1    0    0    -1  
$EndComp
Connection ~ 2750 8050
Text Label 3150 8350 0    50   ~ 0
GND
Wire Wire Line
	3150 8350 2750 8350
$Comp
L device:R R117
U 1 1 609A4A5D
P 2600 7900
F 0 "R117" V 2500 7900 50  0000 C CNN
F 1 "10K" V 2600 7900 50  0000 C CNN
F 2 "" V 2530 7900 50  0001 C CNN
F 3 "" H 2600 7900 50  0001 C CNN
	1    2600 7900
	0    1    1    0   
$EndComp
Text Label 2450 7900 2    50   ~ 0
3V3
Text Label 1350 5350 2    50   ~ 0
VBAT
$Comp
L device:C C260
U 1 1 609BC102
P 4000 9450
F 0 "C260" H 4115 9496 50  0000 L CNN
F 1 "0.47 uF" H 4115 9405 50  0000 L CNN
F 2 "" H 4038 9300 50  0001 C CNN
F 3 "" H 4000 9450 50  0001 C CNN
	1    4000 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 9300 3450 9300
Connection ~ 3450 9300
Wire Wire Line
	3450 9600 4000 9600
Connection ~ 3450 9600
$Comp
L device:C C261
U 1 1 609C3581
P 4000 9900
F 0 "C261" H 4115 9946 50  0000 L CNN
F 1 "0.47 uF" H 4115 9855 50  0000 L CNN
F 2 "" H 4038 9750 50  0001 C CNN
F 3 "" H 4000 9900 50  0001 C CNN
	1    4000 9900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 9750 3450 9750
Connection ~ 3450 9750
Wire Wire Line
	3450 10050 4000 10050
Connection ~ 3450 10050
$Comp
L device:C C262
U 1 1 609CA863
P 4700 8600
F 0 "C262" H 4815 8646 50  0000 L CNN
F 1 "0.47 uF" H 4815 8555 50  0000 L CNN
F 2 "" H 4738 8450 50  0001 C CNN
F 3 "" H 4700 8600 50  0001 C CNN
	1    4700 8600
	1    0    0    -1  
$EndComp
Text Label 4700 8450 2    50   ~ 0
VBAT
Text Label 4700 8750 2    50   ~ 0
GND
$Comp
L device:R R118
U 1 1 609ED767
P 2800 5550
F 0 "R118" V 2700 5550 50  0000 C CNN
F 1 "10K" V 2800 5550 50  0000 C CNN
F 2 "" V 2730 5550 50  0001 C CNN
F 3 "" H 2800 5550 50  0001 C CNN
	1    2800 5550
	0    1    1    0   
$EndComp
Wire Wire Line
	2750 7900 2750 8050
Wire Wire Line
	3150 8350 3150 8050
Wire Wire Line
	2650 5550 2550 5550
Text Label 2950 5550 0    50   ~ 0
GND
Text Label 2550 5750 0    50   ~ 0
GND
Text Label 2550 5850 0    50   ~ 0
3V3
NoConn ~ 1350 1050
Text Label 3750 7850 2    50   ~ 0
3V3
$Comp
L device:D_Schottky D1
U 1 1 60A24F97
P 3750 8000
F 0 "D1" V 3796 7921 50  0000 R CNN
F 1 "CTS520,L3F" V 3705 7921 50  0000 R CNN
F 2 "" H 3750 8000 50  0001 C CNN
F 3 "" H 3750 8000 50  0001 C CNN
	1    3750 8000
	0    -1   -1   0   
$EndComp
$Comp
L device:R R119
U 1 1 60A273BF
P 3750 8300
F 0 "R119" H 3820 8346 50  0000 L CNN
F 1 "330" H 3820 8255 50  0000 L CNN
F 2 "" V 3680 8300 50  0001 C CNN
F 3 "" H 3750 8300 50  0001 C CNN
	1    3750 8300
	1    0    0    -1  
$EndComp
$Comp
L device:CP1 C259
U 1 1 60A31C7A
P 3750 8600
F 0 "C259" H 3865 8646 50  0000 L CNN
F 1 "CPH3225A-2K" H 3865 8555 50  0000 L CNN
F 2 "" H 3750 8600 50  0001 C CNN
F 3 "" H 3750 8600 50  0001 C CNN
	1    3750 8600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 8450 4700 8450
Connection ~ 3750 8450
Wire Wire Line
	3750 8750 4700 8750
$Comp
L device:Crystal Y1
U 1 1 60A4BA3C
P 5650 9300
F 0 "Y1" H 5650 9568 50  0000 C CNN
F 1 "ECS-.327-7-16-C-TR" H 5650 9477 50  0000 C CNN
F 2 "" H 5650 9300 50  0001 C CNN
F 3 "" H 5650 9300 50  0001 C CNN
	1    5650 9300
	1    0    0    -1  
$EndComp
Text Label 3250 4350 2    50   ~ 0
OSC32_IN
Text Label 3250 4450 2    50   ~ 0
OSC32_OUT
Text Label 5500 9300 2    50   ~ 0
OSC32_IN
Text Label 5800 9300 0    50   ~ 0
OSC32_OUT
$Comp
L device:C C263
U 1 1 60A56991
P 5100 9450
F 0 "C263" H 5215 9496 50  0000 L CNN
F 1 "10 pF" H 5215 9405 50  0000 L CNN
F 2 "" H 5138 9300 50  0001 C CNN
F 3 "" H 5100 9450 50  0001 C CNN
	1    5100 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 9300 5100 9300
Text Label 5100 9600 2    50   ~ 0
GND
$Comp
L device:C C264
U 1 1 60A5CFF6
P 6100 9450
F 0 "C264" H 6215 9496 50  0000 L CNN
F 1 "10 pF" H 6215 9405 50  0000 L CNN
F 2 "" H 6138 9300 50  0001 C CNN
F 3 "" H 6100 9450 50  0001 C CNN
	1    6100 9450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 9300 6100 9300
Wire Wire Line
	6100 9600 5100 9600
NoConn ~ 8550 7350
NoConn ~ 8550 7250
NoConn ~ 8550 7150
NoConn ~ 8550 7050
NoConn ~ 8550 6950
NoConn ~ 8550 6850
NoConn ~ 5000 6550
NoConn ~ 5000 6250
NoConn ~ 5000 6150
NoConn ~ 5000 6050
NoConn ~ 5000 5950
NoConn ~ 5000 5850
NoConn ~ 5000 5750
NoConn ~ 5000 5650
NoConn ~ 5000 5550
NoConn ~ 5000 5450
NoConn ~ 5000 5350
NoConn ~ 5000 5250
NoConn ~ 5000 5150
NoConn ~ 5000 5050
NoConn ~ 3250 2950
NoConn ~ 3250 3050
NoConn ~ 3250 3150
NoConn ~ 3250 3250
NoConn ~ 3250 3350
NoConn ~ 3250 3450
NoConn ~ 3250 3750
NoConn ~ 3250 3850
NoConn ~ 3250 3950
NoConn ~ 3250 4050
NoConn ~ 3250 4150
NoConn ~ 3250 4250
NoConn ~ 5000 3650
NoConn ~ 5000 3750
NoConn ~ 5000 3850
NoConn ~ 7000 2150
NoConn ~ 7000 2050
NoConn ~ 7000 1950
NoConn ~ 7000 1850
NoConn ~ 7000 1750
NoConn ~ 7000 1650
NoConn ~ 7000 1550
NoConn ~ 7000 1450
NoConn ~ 7000 1350
NoConn ~ 7000 1250
NoConn ~ 7000 1150
NoConn ~ 7000 1050
NoConn ~ 8300 1050
NoConn ~ 8300 1150
NoConn ~ 8300 1950
NoConn ~ 8300 2050
NoConn ~ 8300 2150
NoConn ~ 8300 2250
NoConn ~ 8300 2350
NoConn ~ 8300 2450
NoConn ~ 8300 2550
NoConn ~ 7000 4450
NoConn ~ 8500 3250
NoConn ~ 8500 3750
NoConn ~ 8500 4050
NoConn ~ 8500 4150
NoConn ~ 8500 4250
Text HLabel 8300 1850 0    50   BiDi ~ 0
QSFP_SDA
Text HLabel 8300 1750 0    50   Output ~ 0
QSFP_SCL
Text HLabel 8300 1250 0    50   Input ~ 0
QSFP_INT_N
Text HLabel 8300 1350 0    50   Input ~ 0
QSFP_PRESENT_N
Text HLabel 8300 1450 0    50   Output ~ 0
QSFP_MODSEL_N
Text HLabel 8300 1550 0    50   Output ~ 0
QSFP_LP_MODE
Text HLabel 8300 1650 0    50   Output ~ 0
QSFP_RST_N
Text Label 9850 1100 2    50   ~ 0
QSFP_PRESENT_N
$Comp
L device:R R121
U 1 1 60E4C937
P 10000 1100
F 0 "R121" V 9950 1250 50  0000 C CNN
F 1 "10K" V 10000 1100 50  0000 C CNN
F 2 "" V 9930 1100 50  0001 C CNN
F 3 "" H 10000 1100 50  0001 C CNN
	1    10000 1100
	0    1    1    0   
$EndComp
Text Label 10350 1100 0    50   ~ 0
3V3
Wire Wire Line
	10350 1100 10150 1100
$Comp
L device:R R122
U 1 1 60E52F52
P 10000 1200
F 0 "R122" V 9950 1350 50  0000 C CNN
F 1 "10K" V 10000 1200 50  0000 C CNN
F 2 "" V 9930 1200 50  0001 C CNN
F 3 "" H 10000 1200 50  0001 C CNN
	1    10000 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	10150 1200 10350 1200
Wire Wire Line
	10350 1200 10350 1100
Text Label 9850 1200 2    50   ~ 0
QSFP_INT_N
Text Label 9850 1300 2    50   ~ 0
QSFP_SDA
$Comp
L device:R R123
U 1 1 60E59194
P 10000 1300
F 0 "R123" V 9950 1450 50  0000 C CNN
F 1 "4.7K" V 10000 1300 50  0000 C CNN
F 2 "" V 9930 1300 50  0001 C CNN
F 3 "" H 10000 1300 50  0001 C CNN
	1    10000 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	10150 1300 10350 1300
Wire Wire Line
	10350 1300 10350 1200
Connection ~ 10350 1200
$Comp
L device:R R124
U 1 1 60E5D921
P 10000 1400
F 0 "R124" V 9950 1550 50  0000 C CNN
F 1 "4.7K" V 10000 1400 50  0000 C CNN
F 2 "" V 9930 1400 50  0001 C CNN
F 3 "" H 10000 1400 50  0001 C CNN
	1    10000 1400
	0    1    1    0   
$EndComp
Text Label 9850 1400 2    50   ~ 0
QSFP_SCL
Wire Wire Line
	10150 1400 10350 1400
Wire Wire Line
	10350 1400 10350 1300
Connection ~ 10350 1300
Text HLabel 5000 6450 0    50   Output ~ 0
TRIG_OUT_MUX_SEL
Text HLabel 5000 6350 0    50   Output ~ 0
TRIG_OUT_MUX_EQ
Text HLabel 7000 2950 0    50   Output ~ 0
1V0_EN
Text HLabel 7000 3050 0    50   Input ~ 0
1V0_1_GOOD
Text HLabel 7000 3150 0    50   Input ~ 0
1V0_2_GOOD
Text HLabel 7000 3250 0    50   Output ~ 0
1V2_EN
Text HLabel 7000 3450 0    50   Output ~ 0
1V5_EN
Text HLabel 7000 3650 0    50   Output ~ 0
1V8_EN
Text HLabel 7000 3350 0    50   Input ~ 0
1V2_GOOD
Text HLabel 7000 3550 0    50   Input ~ 0
1V5_GOOD
Text HLabel 7000 3750 0    50   Input ~ 0
1V8_GOOD
$Comp
L st-azonenberg:STM32F777xx-TFBGA216 U1
U 6 1 5F7ACFD5
P 7100 4500
F 0 "U1" H 7100 4450 50  0000 L CNN
F 1 "STM32F777NIH6" H 7100 4350 50  0000 L CNN
F 2 "" H 7100 4450 50  0001 C CNN
F 3 "" H 7100 4450 50  0001 C CNN
	6    7100 4500
	1    0    0    -1  
$EndComp
Text Label 1350 5150 2    50   ~ 0
3V3
Text Label 1350 5250 2    50   ~ 0
3V3
Text HLabel 1350 5850 0    50   Input ~ 0
3V3
Text HLabel 7000 3850 0    50   Output ~ 0
VTT_EN
Text HLabel 7000 3950 0    50   Input ~ 0
VTT_GOOD
Text Notes 7800 2000 0    50   ~ 0
I2C3 AF4
Text Notes 5150 11000 0    50   ~ 0
I2C1 ADDRESS MAP (3V3)\nINA233s on probes\nP0 = 80\nP1 = 82\nP2 = 84\nP3 = 86\nP4 = 88 \nP5 = 8a\nP6 = 8c\nP7 = 8e\nP8 = 90\nP9 = 92\nP10 = 94\nP11 = 96
Text Notes 6450 10000 0    50   ~ 0
I2C2 ADDRESS MAP (3V3_SB)\nSPD EEPROM = A0
Text Notes 7900 10000 0    50   ~ 0
I2C3 ADDRESS MAP (3V3)\nQSFP ID = A0
Text Notes 9450 10000 0    50   ~ 0
I2C4 ADDRESS MAP (3V3)\nTouch controller = BA
Text HLabel 7000 4050 0    50   Output ~ 0
2V0_EN
Text HLabel 7000 4250 0    50   Output ~ 0
2V5_EN
Text HLabel 5000 4350 0    50   Output ~ 0
3V3_EN
Text HLabel 5000 4150 0    50   Output ~ 0
5V0_EN
Text HLabel 5000 3950 0    50   Output ~ 0
5V0_N_EN
Text HLabel 7000 4150 0    50   Input ~ 0
2V0_GOOD
Text HLabel 7000 4350 0    50   Input ~ 0
2V5_GOOD
Text HLabel 5000 4450 0    50   Input ~ 0
3V3_GOOD
Text HLabel 5000 4250 0    50   Input ~ 0
5V0_GOOD
Text HLabel 5000 4050 0    50   Input ~ 0
5V0_N_GOOD
$EndSCHEMATC
