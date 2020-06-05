EESchema Schematic File Version 4
LIBS:la-pod-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title "Logic Analyzer Pod"
Date "2020-06-05"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L st-azonenberg:STM32F031-QFN28 U5
U 1 1 5EA5F20F
P 2400 1650
F 0 "U5" H 2400 1600 50  0000 L CNN
F 1 "STM32F031-QFN28" H 2400 1500 50  0000 L CNN
F 2 "azonenberg_pcb:QFN_28_0.5MM_4x4MM_NOPAD" H 2400 1650 50  0001 C CNN
F 3 "" H 2400 1650 50  0001 C CNN
	1    2400 1650
	1    0    0    -1  
$EndComp
$Comp
L st-azonenberg:STM32F031-QFN28 U5
U 2 1 5EA5FE07
P 2600 3450
F 0 "U5" H 2600 3400 50  0000 L CNN
F 1 "STM32F031-QFN28" H 2600 3300 50  0000 L CNN
F 2 "azonenberg_pcb:QFN_28_0.5MM_4x4MM_NOPAD" H 2600 3450 50  0001 C CNN
F 3 "" H 2600 3450 50  0001 C CNN
	2    2600 3450
	1    0    0    -1  
$EndComp
$Comp
L st-azonenberg:STM32F031-QFN28 U5
U 3 1 5EA60F37
P 2600 4450
F 0 "U5" H 2600 4400 50  0000 L CNN
F 1 "STM32F031-QFN28" H 2600 4300 50  0000 L CNN
F 2 "azonenberg_pcb:QFN_28_0.5MM_4x4MM_NOPAD" H 2600 4450 50  0001 C CNN
F 3 "" H 2600 4450 50  0001 C CNN
	3    2600 4450
	1    0    0    -1  
$EndComp
Text HLabel 2050 800  0    50   Input ~ 0
3V3
Text HLabel 2050 1000 0    50   Input ~ 0
GND
Text HLabel 2500 3100 0    50   Input ~ 0
UART_RX
Text HLabel 2500 3000 0    50   Output ~ 0
UART_TX
Text HLabel 2500 3400 0    50   Output ~ 0
DAC_CS_N
Text HLabel 2500 4000 0    50   Output ~ 0
SPI_SCK
Text HLabel 2500 4200 0    50   Output ~ 0
SPI_MOSI
Text HLabel 2500 4100 0    50   Input ~ 0
SPI_MISO
Wire Wire Line
	2050 800  2300 800 
Wire Wire Line
	2300 800  2300 900 
Connection ~ 2300 800 
Wire Wire Line
	2050 1000 2300 1000
NoConn ~ 2300 1500
NoConn ~ 2300 1600
Text Label 2500 3200 2    50   ~ 0
SWDIO
Text Label 2500 3300 2    50   ~ 0
SWCLK
Text HLabel 2500 4400 0    50   BiDi ~ 0
PROBE_I2C_SDA
Text HLabel 2500 4300 0    50   BiDi ~ 0
PROBE_I2C_SCL
$Comp
L device:R R68
U 1 1 5ECF94B1
P 1850 1300
F 0 "R68" V 1800 1150 50  0000 C CNN
F 1 "10K" V 1850 1300 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 1780 1300 50  0001 C CNN
F 3 "" H 1850 1300 50  0001 C CNN
	1    1850 1300
	0    1    1    0   
$EndComp
Text Label 1600 1300 2    50   ~ 0
GND
Wire Wire Line
	1600 1300 1700 1300
Wire Wire Line
	2000 1300 2300 1300
NoConn ~ 2500 2500
NoConn ~ 2500 2600
NoConn ~ 2500 2700
NoConn ~ 2500 2900
NoConn ~ 2500 3900
NoConn ~ 2500 3800
$Comp
L device:C C52
U 1 1 5ECFB395
P 1150 1350
F 0 "C52" H 1265 1396 50  0000 L CNN
F 1 "0.1 uF" H 1265 1305 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 1188 1200 50  0001 C CNN
F 3 "" H 1150 1350 50  0001 C CNN
	1    1150 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 1200 2300 1200
Text Label 1150 1500 2    50   ~ 0
GND
Text Label 1150 1200 0    50   ~ 0
MCU_RST_N
Text Label 5350 1600 2    50   ~ 0
MCU_RST_N
$Comp
L Connector:Conn_01x05 J2
U 1 1 5ECFC921
P 5700 1400
F 0 "J2" H 5780 1442 50  0000 L CNN
F 1 "PINHEADER_1x5" H 5780 1351 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_1x5" H 5700 1400 50  0001 C CNN
F 3 "~" H 5700 1400 50  0001 C CNN
	1    5700 1400
	1    0    0    -1  
$EndComp
Text Label 5350 1200 2    50   ~ 0
3V3
Wire Wire Line
	5350 1200 5500 1200
Text Label 5350 1300 2    50   ~ 0
GND
Wire Wire Line
	5350 1300 5500 1300
Text Label 5350 1400 2    50   ~ 0
SWCLK
Wire Wire Line
	5350 1400 5500 1400
Text Label 5350 1500 2    50   ~ 0
SWDIO
Wire Wire Line
	5350 1500 5500 1500
Wire Wire Line
	5350 1600 5500 1600
$Comp
L device:C C53
U 1 1 5ECFF34F
P 4850 2050
F 0 "C53" H 4965 2096 50  0000 L CNN
F 1 "4.7 uF" H 4965 2005 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 4888 1900 50  0001 C CNN
F 3 "" H 4850 2050 50  0001 C CNN
	1    4850 2050
	1    0    0    -1  
$EndComp
Text Label 4700 1900 2    50   ~ 0
3V3
Wire Wire Line
	4700 1900 4850 1900
Text Label 4700 2200 2    50   ~ 0
GND
Wire Wire Line
	4700 2200 4850 2200
$Comp
L device:C C54
U 1 1 5ED0015E
P 5350 2050
F 0 "C54" H 5465 2096 50  0000 L CNN
F 1 "0.47 uF" H 5465 2005 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5388 1900 50  0001 C CNN
F 3 "" H 5350 2050 50  0001 C CNN
	1    5350 2050
	1    0    0    -1  
$EndComp
$Comp
L device:C C55
U 1 1 5ED00434
P 5900 2050
F 0 "C55" H 6015 2096 50  0000 L CNN
F 1 "0.47 uF" H 6015 2005 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5938 1900 50  0001 C CNN
F 3 "" H 5900 2050 50  0001 C CNN
	1    5900 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1900 5350 1900
Connection ~ 4850 1900
Connection ~ 5350 1900
Wire Wire Line
	5350 1900 4850 1900
Wire Wire Line
	4850 2200 5350 2200
Connection ~ 4850 2200
Connection ~ 5350 2200
Wire Wire Line
	5350 2200 5900 2200
$Comp
L special-azonenberg:AMG240160P-G-W6WFDW J4
U 1 1 5EE1B20A
P 7050 5250
F 0 "J4" H 7475 7125 50  0000 C CNN
F 1 "AMG240160P-G-W6WFDW" H 7475 7034 50  0000 C CNN
F 2 "azonenberg_pcb:CONN_FFC_0.5MM_1x28_MOLEX_0524352871" H 7050 5250 50  0001 C CNN
F 3 "" H 7050 5250 50  0001 C CNN
	1    7050 5250
	1    0    0    -1  
$EndComp
Text Label 6800 4500 2    50   ~ 0
GND
Text Label 5500 4400 2    50   ~ 0
3V3
NoConn ~ 8150 3600
Text Label 8150 3900 0    50   ~ 0
GND
Text Label 8150 3800 0    50   ~ 0
GND
Text Label 8150 4100 0    50   ~ 0
3V3
Text Label 8150 4000 0    50   ~ 0
GND
Text Notes 8450 3800 0    50   ~ 0
S8 mode
Text Label 2500 2100 2    50   ~ 0
LCD_CS_N
Text Label 6800 4800 2    50   ~ 0
LCD_CS_N
Text Label 2300 4950 2    50   ~ 0
LCD_CS_N
$Comp
L device:R R76
U 1 1 5EE486E6
P 2600 4950
F 0 "R76" V 2550 4800 50  0000 C CNN
F 1 "10K" V 2600 4950 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 2530 4950 50  0001 C CNN
F 3 "" H 2600 4950 50  0001 C CNN
	1    2600 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 4950 2300 4950
Text Label 2750 4950 0    50   ~ 0
3V3
Text Label 2500 2400 2    50   ~ 0
LCD_CTRL_DATA
Text Label 6800 4900 2    50   ~ 0
LCD_CTRL_DATA
Text Label 2500 2300 2    50   ~ 0
LCD_RST_N
Text Label 6800 5000 2    50   ~ 0
LCD_RST_N
Text Label 6800 5100 2    50   ~ 0
SPI_SCK
Text Label 6800 5200 2    50   ~ 0
SPI_MOSI
Text Label 8150 4300 0    50   ~ 0
GND
Text Label 8150 4400 0    50   ~ 0
GND
Text Label 8150 4600 0    50   ~ 0
GND
Wire Wire Line
	8150 5200 8150 5100
Connection ~ 8150 4700
Wire Wire Line
	8150 4700 8150 4600
Connection ~ 8150 4800
Wire Wire Line
	8150 4800 8150 4700
Connection ~ 8150 4900
Wire Wire Line
	8150 4900 8150 4800
Connection ~ 8150 5000
Wire Wire Line
	8150 5000 8150 4900
Connection ~ 8150 5100
Wire Wire Line
	8150 5100 8150 5000
$Comp
L device:C C66
U 1 1 5EE51216
P 7050 5600
F 0 "C66" H 7165 5646 50  0000 L CNN
F 1 "4.7 uF 25V" H 7165 5555 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0805_CAP_NOSILK" H 7088 5450 50  0001 C CNN
F 3 "" H 7050 5600 50  0001 C CNN
	1    7050 5600
	1    0    0    -1  
$EndComp
Text Label 7050 5750 2    50   ~ 0
GND
Text Label 7050 5450 2    50   ~ 0
VLCD
$Comp
L device:C C67
U 1 1 5EE53024
P 7050 6050
F 0 "C67" H 7165 6096 50  0000 L CNN
F 1 "0.47 uF 25V" H 7165 6005 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 7088 5900 50  0001 C CNN
F 3 "" H 7050 6050 50  0001 C CNN
	1    7050 6050
	1    0    0    -1  
$EndComp
Text Label 6800 3600 2    50   ~ 0
VLCD
Text Label 7050 5900 2    50   ~ 0
VS+
Text Label 7050 6200 2    50   ~ 0
VS-
Text Label 6800 3800 2    50   ~ 0
VS-
Text Label 6800 3700 2    50   ~ 0
VS+
$Comp
L device:C C68
U 1 1 5EE55052
P 7950 5600
F 0 "C68" H 8065 5646 50  0000 L CNN
F 1 "4.7 uF 25V" H 8065 5555 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0805_CAP_NOSILK" H 7988 5450 50  0001 C CNN
F 3 "" H 7950 5600 50  0001 C CNN
	1    7950 5600
	1    0    0    -1  
$EndComp
Text Label 6800 3900 2    50   ~ 0
VB0-
Text Label 6800 4200 2    50   ~ 0
VB0+
Text Label 7950 5450 2    50   ~ 0
VB0+
Text Label 7950 5750 2    50   ~ 0
VB0-
$Comp
L device:C C69
U 1 1 5EE55E77
P 7950 6050
F 0 "C69" H 8065 6096 50  0000 L CNN
F 1 "4.7 uF 25V" H 8065 6005 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0805_CAP_NOSILK" H 7988 5900 50  0001 C CNN
F 3 "" H 7950 6050 50  0001 C CNN
	1    7950 6050
	1    0    0    -1  
$EndComp
Text Label 6800 4000 2    50   ~ 0
VB1-
Text Label 7950 6200 2    50   ~ 0
VB1-
Text Label 7950 5900 2    50   ~ 0
VB1+
Text Label 6800 4100 2    50   ~ 0
VB1+
Text Label 7300 1200 2    50   ~ 0
SPI_SCK
Text Label 7300 1300 2    50   ~ 0
SPI_MOSI
Text Label 7300 2000 2    50   ~ 0
DAC_CS_N
Text Label 7300 2100 2    50   ~ 0
LCD_CS_N
Text Label 7300 1500 2    50   ~ 0
LCD_CTRL_DATA
Text Label 7300 1600 2    50   ~ 0
GND
Text Label 7300 1800 2    50   ~ 0
PROBE_I2C_SCL
Text Label 7300 1900 2    50   ~ 0
PROBE_I2C_SDA
$Comp
L Connector:Conn_01x05 TP3
U 1 1 5ED6AE0A
P 7500 1400
F 0 "TP3" H 7580 1442 50  0000 L CNN
F 1 "PINHEADER_1x5" H 7580 1351 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_1x5" H 7500 1400 50  0001 C CNN
F 3 "~" H 7500 1400 50  0001 C CNN
	1    7500 1400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x05 TP13
U 1 1 5ED6C28B
P 7500 2000
F 0 "TP13" H 7580 2042 50  0000 L CNN
F 1 "PINHEADER_1x5" H 7580 1951 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_1x5" H 7500 2000 50  0001 C CNN
F 3 "~" H 7500 2000 50  0001 C CNN
	1    7500 2000
	1    0    0    -1  
$EndComp
Text Label 7300 2200 2    50   ~ 0
GND
Text Label 7300 1400 2    50   ~ 0
SPI_MISO
Text Label 2000 1300 0    50   ~ 0
BOOT0
Text Label 4000 1200 2    50   ~ 0
BOOT0
$Comp
L Connector:Conn_01x02 J5
U 1 1 5F0B6374
P 4200 1200
F 0 "J5" H 4280 1192 50  0000 L CNN
F 1 "PINHEADER_1x2" H 4280 1101 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_HEADER_2.54MM_1x2" H 4200 1200 50  0001 C CNN
F 3 "~" H 4200 1200 50  0001 C CNN
	1    4200 1200
	1    0    0    -1  
$EndComp
Text Label 4000 1300 2    50   ~ 0
3V3
$Comp
L device:R R77
U 1 1 5F0BB906
P 5650 4400
F 0 "R77" V 5443 4400 50  0000 C CNN
F 1 "0" V 5534 4400 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 5580 4400 50  0001 C CNN
F 3 "" H 5650 4400 50  0001 C CNN
	1    5650 4400
	0    1    1    0   
$EndComp
$Comp
L device:C C71
U 1 1 5F0BC815
P 5900 4550
F 0 "C71" H 6015 4596 50  0000 L CNN
F 1 "0.47 uF" H 6015 4505 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5938 4400 50  0001 C CNN
F 3 "" H 5900 4550 50  0001 C CNN
	1    5900 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 4400 5900 4400
Connection ~ 5900 4400
Wire Wire Line
	5900 4400 6800 4400
Text Label 5900 4400 0    50   ~ 0
LCD_VDD
Text Label 5900 4700 2    50   ~ 0
GND
Text HLabel 2500 2800 0    50   Input ~ 0
12V_SENSE
$Comp
L special-azonenberg:AT30TS74_UDFN U10
U 1 1 5F38C16E
P 1550 6200
F 0 "U10" H 1850 6875 50  0000 C CNN
F 1 "AT30TS74_UDFN" H 1850 6784 50  0000 C CNN
F 2 "azonenberg_pcb:DFN_8_0.5MM_3x3MM" H 1550 6200 50  0001 C CNN
F 3 "" H 1550 6200 50  0001 C CNN
	1    1550 6200
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:AT30TS74_UDFN U11
U 1 1 5F38D677
P 1550 6950
F 0 "U11" H 1850 7625 50  0000 C CNN
F 1 "AT30TS74_UDFN" H 1850 7534 50  0000 C CNN
F 2 "azonenberg_pcb:DFN_8_0.5MM_3x3MM" H 1550 6950 50  0001 C CNN
F 3 "" H 1550 6950 50  0001 C CNN
	1    1550 6950
	1    0    0    -1  
$EndComp
Text Label 1450 5750 2    50   ~ 0
3V3
Text Label 1450 5850 2    50   ~ 0
GND
$Comp
L device:C C72
U 1 1 5F38DFDB
P 1550 7250
F 0 "C72" H 1665 7296 50  0000 L CNN
F 1 "0.47 uF" H 1665 7205 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 1588 7100 50  0001 C CNN
F 3 "" H 1550 7250 50  0001 C CNN
	1    1550 7250
	1    0    0    -1  
$EndComp
Text Label 1550 7100 2    50   ~ 0
3V3
Text Label 1550 7400 2    50   ~ 0
GND
$Comp
L device:C C73
U 1 1 5F38E759
P 2150 7250
F 0 "C73" H 2265 7296 50  0000 L CNN
F 1 "0.47 uF" H 2265 7205 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 2188 7100 50  0001 C CNN
F 3 "" H 2150 7250 50  0001 C CNN
	1    2150 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 7100 1550 7100
Wire Wire Line
	1550 7400 2150 7400
Text Label 1450 6050 2    50   ~ 0
PROBE_I2C_SDA
Text Label 1450 6150 2    50   ~ 0
PROBE_I2C_SCL
Text Label 1450 6500 2    50   ~ 0
3V3
Text Label 1450 6600 2    50   ~ 0
GND
Text Label 1450 6800 2    50   ~ 0
PROBE_I2C_SDA
Text Label 1450 6900 2    50   ~ 0
PROBE_I2C_SCL
NoConn ~ 2250 6150
NoConn ~ 2250 6900
Text Label 2250 5750 0    50   ~ 0
GND
Wire Wire Line
	2250 5750 2250 5850
Connection ~ 2250 5850
Wire Wire Line
	2250 5850 2250 5950
Text Label 2250 6600 0    50   ~ 0
GND
Wire Wire Line
	2250 6600 2250 6700
Text Label 2250 6500 0    50   ~ 0
3V3
Text Notes 2550 5750 0    50   ~ 0
Addr = 0x90
Text Notes 2550 6500 0    50   ~ 0
Addr = 0x92
NoConn ~ 2500 2200
$EndSCHEMATC
