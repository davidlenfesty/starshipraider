EESchema Schematic File Version 4
LIBS:la-pod-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 6
Title "Logic Analyzer Pod"
Date "2020-06-05"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 3350 1150 850  2300
U 5E895DC2
F0 "MCU" 50
F1 "mcu.sch" 50
F2 "UART_RX" I R 4200 2250 50 
F3 "UART_TX" O R 4200 2350 50 
F4 "DAC_CS_N" O R 4200 1600 50 
F5 "3V3" I L 3350 1200 50 
F6 "GND" I L 3350 1300 50 
F7 "SPI_SCK" O R 4200 1700 50 
F8 "SPI_MOSI" O R 4200 1800 50 
F9 "SPI_MISO" I R 4200 1900 50 
F10 "PROBE_I2C_SDA" B R 4200 3000 50 
F11 "PROBE_I2C_SCL" B R 4200 3100 50 
F12 "12V_SENSE" I L 3350 2050 50 
$EndSheet
$Sheet
S 4800 1150 1050 850 
U 5E895E36
F0 "DAC" 50
F1 "dac.sch" 50
F2 "VREF0" O R 5850 1200 50 
F3 "VREF1" O R 5850 1300 50 
F4 "VREF2" O R 5850 1400 50 
F5 "VREF3" O R 5850 1500 50 
F6 "VREF4" O R 5850 1600 50 
F7 "VREF5" O R 5850 1700 50 
F8 "VREF6" O R 5850 1800 50 
F9 "VREF7" O R 5850 1900 50 
F10 "3V3" I L 4800 1300 50 
F11 "5V0" I L 4800 1200 50 
F12 "GND" I L 4800 1400 50 
F13 "DAC_CS_N" I L 4800 1600 50 
F14 "DAC_SCK" I L 4800 1700 50 
F15 "DAC_MOSI" I L 4800 1800 50 
F16 "DAC_MISO" O L 4800 1900 50 
$EndSheet
$Comp
L special-azonenberg:CONN_SFF8087 J1
U 1 1 5E89A333
P 9900 3450
F 0 "J1" H 9900 3400 50  0000 L CNN
F 1 "CONN_SFF8087" H 9900 3300 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SFF8087_MOLEX_75783-0140" H 9900 3450 50  0001 C CNN
F 3 "" H 9900 3450 50  0001 C CNN
	1    9900 3450
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:CONN_SFF8087 J1
U 2 1 5E89AD6B
P 8350 3450
F 0 "J1" H 8350 3400 50  0000 L CNN
F 1 "CONN_SFF8087" H 8350 3300 50  0000 L CNN
F 2 "azonenberg_pcb:CONN_SFF8087_MOLEX_75783-0140" H 8350 3450 50  0001 C CNN
F 3 "" H 8350 3450 50  0001 C CNN
	2    8350 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 1900 6450 1900
Wire Wire Line
	6450 1800 5850 1800
Wire Wire Line
	5850 1700 6450 1700
Wire Wire Line
	6450 1600 5850 1600
Wire Wire Line
	5850 1500 6450 1500
Wire Wire Line
	6450 1400 5850 1400
Wire Wire Line
	5850 1300 6450 1300
Wire Wire Line
	6450 1200 5850 1200
$Sheet
S 1000 1150 700  800 
U 5E895D8C
F0 "Power Supply" 50
F1 "psu.sch" 50
F2 "12V0" I L 1000 1250 50 
F3 "GND" I L 1000 1350 50 
F4 "2V5" O R 1700 1550 50 
F5 "5V0" O R 1700 1350 50 
F6 "3V3" O R 1700 1450 50 
F7 "6V0" O R 1700 1250 50 
F8 "1V5_N" O R 1700 1650 50 
F9 "12V0_FUSED" O R 1700 1850 50 
$EndSheet
Text Label 1000 1250 2    50   ~ 0
12V0
Text Label 1000 1350 2    50   ~ 0
GND
Text Label 1700 1350 0    50   ~ 0
5V0
Text Label 1700 1450 0    50   ~ 0
3V3
Text Label 1700 1550 0    50   ~ 0
2V5
Text Label 6450 2200 2    50   ~ 0
2V5
Text Label 6450 2300 2    50   ~ 0
GND
Text Label 9600 2300 2    50   ~ 0
GND
Wire Wire Line
	9600 2300 9800 2300
Wire Wire Line
	9800 2300 9800 2400
Connection ~ 9800 2300
Connection ~ 9800 2400
Wire Wire Line
	9800 2400 9800 2500
Connection ~ 9800 2500
Wire Wire Line
	9800 2500 9800 2600
Connection ~ 9800 2600
Wire Wire Line
	9800 2600 9800 2700
Connection ~ 9800 2700
Wire Wire Line
	9800 2700 9800 2800
Connection ~ 9800 2800
Wire Wire Line
	9800 2800 9800 2900
Connection ~ 9800 2900
Wire Wire Line
	9800 2900 9800 3000
Connection ~ 9800 3000
Wire Wire Line
	9800 3000 9800 3100
Connection ~ 9800 3100
Wire Wire Line
	9800 3100 9800 3200
Connection ~ 9800 3200
Wire Wire Line
	9800 3200 9800 3300
Connection ~ 9800 3300
Wire Wire Line
	9800 3300 9800 3400
Text Label 9600 1400 2    50   ~ 0
UART_TX
Wire Wire Line
	9600 1400 9800 1400
Text Label 9600 1500 2    50   ~ 0
UART_RX
Wire Wire Line
	9600 1500 9800 1500
Text Label 9600 1600 2    50   ~ 0
PRESENCE_DETECT
Wire Wire Line
	9600 1600 9800 1600
Text Label 9700 4500 2    50   ~ 0
PRESENCE_DETECT
$Comp
L device:R R65
U 1 1 5EA678B3
P 9850 4500
F 0 "R65" V 9750 4500 50  0000 C CNN
F 1 "4.7K" V 9850 4500 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 9780 4500 50  0001 C CNN
F 3 "" H 9850 4500 50  0001 C CNN
	1    9850 4500
	0    1    1    0   
$EndComp
Text Label 10000 4500 0    50   ~ 0
GND
Text Label 9600 1700 2    50   ~ 0
12V0
Wire Wire Line
	9600 1700 9800 1700
Wire Wire Line
	9800 1700 9800 1800
Connection ~ 9800 1700
Connection ~ 9800 1800
Wire Wire Line
	9800 1800 9800 1900
Connection ~ 9800 1900
Wire Wire Line
	9800 1900 9800 2000
Connection ~ 9800 2000
Wire Wire Line
	9800 2000 9800 2100
Text Label 6450 2100 2    50   ~ 0
6V0
Text Label 4800 1200 2    50   ~ 0
5V0
Text Label 4800 1300 2    50   ~ 0
3V3
Text Label 4800 1400 2    50   ~ 0
GND
Wire Wire Line
	4200 1900 4800 1900
Wire Wire Line
	4800 1800 4200 1800
Wire Wire Line
	4200 1700 4800 1700
Wire Wire Line
	4800 1600 4200 1600
Text Label 1700 1250 0    50   ~ 0
6V0
$Sheet
S 4800 2500 1050 950 
U 5EB58A52
F0 "Input Protection" 50
F1 "inputs.sch" 50
F2 "CH0" O R 5850 2600 50 
F3 "CH1" O R 5850 2700 50 
F4 "CH2" O R 5850 2800 50 
F5 "CH3" O R 5850 2900 50 
F6 "CH4" O R 5850 3000 50 
F7 "CH5" O R 5850 3100 50 
F8 "CH6" O R 5850 3200 50 
F9 "CH7" O R 5850 3300 50 
F10 "3V3" I L 4800 2700 50 
F11 "PROBE_I2C_SDA" B L 4800 3000 50 
F12 "PROBE_I2C_SCL" B L 4800 3100 50 
F13 "GND" I L 4800 2800 50 
F14 "5V0" I L 4800 2600 50 
$EndSheet
$Sheet
S 6450 1150 1250 2300
U 5E895EEA
F0 "Comparators" 50
F1 "comparators.sch" 50
F2 "CH0_P" O R 7700 1200 50 
F3 "CH0_N" O R 7700 1300 50 
F4 "CH1_P" O R 7700 1500 50 
F5 "CH1_N" O R 7700 1600 50 
F6 "CH2_P" O R 7700 1800 50 
F7 "CH2_N" O R 7700 1900 50 
F8 "CH3_P" O R 7700 2100 50 
F9 "CH3_N" O R 7700 2200 50 
F10 "CH4_P" O R 7700 2400 50 
F11 "CH4_N" O R 7700 2500 50 
F12 "CH5_P" O R 7700 2700 50 
F13 "CH5_N" O R 7700 2800 50 
F14 "CH6_P" O R 7700 3000 50 
F15 "CH6_N" O R 7700 3100 50 
F16 "CH7_P" O R 7700 3300 50 
F17 "CH7_N" O R 7700 3400 50 
F18 "VREF0" I L 6450 1200 50 
F19 "VREF1" I L 6450 1300 50 
F20 "VREF2" I L 6450 1400 50 
F21 "VREF3" I L 6450 1500 50 
F22 "VREF4" I L 6450 1600 50 
F23 "VREF5" I L 6450 1700 50 
F24 "VREF6" I L 6450 1800 50 
F25 "VREF7" I L 6450 1900 50 
F26 "GND" I L 6450 2300 50 
F27 "2V5" I L 6450 2200 50 
F28 "6V0" I L 6450 2100 50 
F29 "CH1" I L 6450 2700 50 
F30 "CH0" I L 6450 2600 50 
F31 "CH2" I L 6450 2800 50 
F32 "CH3" I L 6450 2900 50 
F33 "CH4" I L 6450 3000 50 
F34 "CH5" I L 6450 3100 50 
F35 "CH6" I L 6450 3200 50 
F36 "CH7" I L 6450 3300 50 
F37 "1V5_N" I L 6450 2400 50 
$EndSheet
Text Label 1700 1650 0    50   ~ 0
1V5_N
Text Label 3350 1200 2    50   ~ 0
3V3
Text Label 3350 1300 2    50   ~ 0
GND
Text Label 4200 2250 0    50   ~ 0
UART_RX
Text Label 4200 2350 0    50   ~ 0
UART_TX
Text Label 4800 3000 2    50   ~ 0
PROBE_I2C_SDA
Text Label 4800 3100 2    50   ~ 0
PROBE_I2C_SCL
Text Label 4800 2700 2    50   ~ 0
3V3
Text Label 4800 2800 2    50   ~ 0
GND
Wire Wire Line
	5850 2600 6450 2600
Wire Wire Line
	6450 2700 5850 2700
Wire Wire Line
	5850 2800 6450 2800
Wire Wire Line
	6450 2900 5850 2900
Wire Wire Line
	5850 3000 6450 3000
Wire Wire Line
	6450 3100 5850 3100
Wire Wire Line
	5850 3200 6450 3200
Wire Wire Line
	6450 3300 5850 3300
Text Label 9700 4700 2    50   ~ 0
PROBE_I2C_SDA
$Comp
L device:R R1
U 1 1 5ED01C0D
P 9850 4700
F 0 "R1" V 9750 4700 50  0000 C CNN
F 1 "4.7K" V 9850 4700 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 9780 4700 50  0001 C CNN
F 3 "" H 9850 4700 50  0001 C CNN
	1    9850 4700
	0    1    1    0   
$EndComp
Text Label 10000 4700 0    50   ~ 0
3V3
$Comp
L device:R R3
U 1 1 5ED0204E
P 9850 4900
F 0 "R3" V 9750 4900 50  0000 C CNN
F 1 "4.7K" V 9850 4900 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 9780 4900 50  0001 C CNN
F 3 "" H 9850 4900 50  0001 C CNN
	1    9850 4900
	0    1    1    0   
$EndComp
Text Label 9700 4900 2    50   ~ 0
PROBE_I2C_SCL
Wire Wire Line
	10000 4900 10000 4700
Text Label 6450 2400 2    50   ~ 0
1V5_N
Text Label 4800 2600 2    50   ~ 0
5V0
$Comp
L special-azonenberg:SP4010 D1
U 1 1 5EE216FF
P 1150 6550
F 0 "D1" H 1150 6500 50  0000 L CNN
F 1 "SP4010" H 1150 6400 50  0000 L CNN
F 2 "azonenberg_pcb:SOT23_6" H 1150 6550 50  0001 C CNN
F 3 "" H 1150 6550 50  0001 C CNN
	1    1150 6550
	1    0    0    -1  
$EndComp
Text Label 7700 1200 0    50   ~ 0
TX0_P
Text Label 7700 1300 0    50   ~ 0
TX0_N
Text Label 7800 1500 0    50   ~ 0
TX1_P
Text Label 7800 1600 0    50   ~ 0
TX1_N
Text Label 7700 1800 0    50   ~ 0
TX2_P
Text Label 7700 1900 0    50   ~ 0
TX2_N
Text Label 7800 2100 0    50   ~ 0
TX3_P
Text Label 7800 2200 0    50   ~ 0
TX3_N
Text Label 7700 2400 0    50   ~ 0
TX4_P
Text Label 7700 2500 0    50   ~ 0
TX4_N
Text Label 7800 2700 0    50   ~ 0
TX5_P
Text Label 7800 2800 0    50   ~ 0
TX5_N
Wire Wire Line
	7700 2700 8250 2700
Wire Wire Line
	7700 2800 8250 2800
Text Label 7700 3000 0    50   ~ 0
TX6_P
Text Label 7700 3100 0    50   ~ 0
TX6_N
Text Label 7800 3300 0    50   ~ 0
TX7_P
Text Label 7800 3400 0    50   ~ 0
TX7_N
Wire Wire Line
	7700 3300 8250 3300
Wire Wire Line
	7700 3400 8250 3400
Text Label 900  6400 2    50   ~ 0
TX0_P
Text Label 900  6500 2    50   ~ 0
TX0_N
Text Label 900  5900 2    50   ~ 0
2V5
Wire Wire Line
	900  5900 900  6000
Connection ~ 900  6000
Wire Wire Line
	900  6000 900  6100
Text Label 900  6200 2    50   ~ 0
GND
$Comp
L special-azonenberg:SP4010 D2
U 1 1 5EE38940
P 1150 7500
F 0 "D2" H 1150 7450 50  0000 L CNN
F 1 "SP4010" H 1150 7350 50  0000 L CNN
F 2 "azonenberg_pcb:SOT23_6" H 1150 7500 50  0001 C CNN
F 3 "" H 1150 7500 50  0001 C CNN
	1    1150 7500
	1    0    0    -1  
$EndComp
Text Label 900  7450 2    50   ~ 0
TX1_P
Text Label 900  7350 2    50   ~ 0
TX1_N
Text Label 900  6850 2    50   ~ 0
2V5
Wire Wire Line
	900  6850 900  6950
Connection ~ 900  6950
Wire Wire Line
	900  6950 900  7050
Text Label 900  7150 2    50   ~ 0
GND
Text Notes 1150 5800 0    50   ~ 0
Cable side ESD protection
$Comp
L special-azonenberg:SP4010 D3
U 1 1 5EE3D3D8
P 2200 6550
F 0 "D3" H 2200 6500 50  0000 L CNN
F 1 "SP4010" H 2200 6400 50  0000 L CNN
F 2 "azonenberg_pcb:SOT23_6" H 2200 6550 50  0001 C CNN
F 3 "" H 2200 6550 50  0001 C CNN
	1    2200 6550
	1    0    0    -1  
$EndComp
Text Label 1950 6400 2    50   ~ 0
TX2_P
Text Label 1950 6500 2    50   ~ 0
TX2_N
Text Label 1950 5900 2    50   ~ 0
2V5
Wire Wire Line
	1950 5900 1950 6000
Connection ~ 1950 6000
Wire Wire Line
	1950 6000 1950 6100
Text Label 1950 6200 2    50   ~ 0
GND
$Comp
L special-azonenberg:SP4010 D4
U 1 1 5EE3D3E9
P 2200 7500
F 0 "D4" H 2200 7450 50  0000 L CNN
F 1 "SP4010" H 2200 7350 50  0000 L CNN
F 2 "azonenberg_pcb:SOT23_6" H 2200 7500 50  0001 C CNN
F 3 "" H 2200 7500 50  0001 C CNN
	1    2200 7500
	1    0    0    -1  
$EndComp
Text Label 1950 7450 2    50   ~ 0
TX3_P
Text Label 1950 7350 2    50   ~ 0
TX3_N
Text Label 1950 6850 2    50   ~ 0
2V5
Wire Wire Line
	1950 6850 1950 6950
Connection ~ 1950 6950
Wire Wire Line
	1950 6950 1950 7050
Text Label 1950 7150 2    50   ~ 0
GND
$Comp
L special-azonenberg:SP4010 D5
U 1 1 5EE3F291
P 3250 6550
F 0 "D5" H 3250 6500 50  0000 L CNN
F 1 "SP4010" H 3250 6400 50  0000 L CNN
F 2 "azonenberg_pcb:SOT23_6" H 3250 6550 50  0001 C CNN
F 3 "" H 3250 6550 50  0001 C CNN
	1    3250 6550
	1    0    0    -1  
$EndComp
Text Label 3000 6400 2    50   ~ 0
TX4_P
Text Label 3000 6500 2    50   ~ 0
TX4_N
Text Label 3000 5900 2    50   ~ 0
2V5
Wire Wire Line
	3000 5900 3000 6000
Connection ~ 3000 6000
Wire Wire Line
	3000 6000 3000 6100
Text Label 3000 6200 2    50   ~ 0
GND
$Comp
L special-azonenberg:SP4010 D6
U 1 1 5EE3F2A2
P 3250 7500
F 0 "D6" H 3250 7450 50  0000 L CNN
F 1 "SP4010" H 3250 7350 50  0000 L CNN
F 2 "azonenberg_pcb:SOT23_6" H 3250 7500 50  0001 C CNN
F 3 "" H 3250 7500 50  0001 C CNN
	1    3250 7500
	1    0    0    -1  
$EndComp
Text Label 3000 7450 2    50   ~ 0
TX5_P
Text Label 3000 7350 2    50   ~ 0
TX5_N
Text Label 3000 6850 2    50   ~ 0
2V5
Wire Wire Line
	3000 6850 3000 6950
Connection ~ 3000 6950
Wire Wire Line
	3000 6950 3000 7050
Text Label 3000 7150 2    50   ~ 0
GND
$Comp
L special-azonenberg:SP4010 D7
U 1 1 5EE3F2B3
P 4300 6550
F 0 "D7" H 4300 6500 50  0000 L CNN
F 1 "SP4010" H 4300 6400 50  0000 L CNN
F 2 "azonenberg_pcb:SOT23_6" H 4300 6550 50  0001 C CNN
F 3 "" H 4300 6550 50  0001 C CNN
	1    4300 6550
	1    0    0    -1  
$EndComp
Text Label 4050 6400 2    50   ~ 0
TX6_P
Text Label 4050 6500 2    50   ~ 0
TX6_N
Text Label 4050 5900 2    50   ~ 0
2V5
Wire Wire Line
	4050 5900 4050 6000
Connection ~ 4050 6000
Wire Wire Line
	4050 6000 4050 6100
Text Label 4050 6200 2    50   ~ 0
GND
$Comp
L special-azonenberg:SP4010 D8
U 1 1 5EE3F2C4
P 4300 7500
F 0 "D8" H 4300 7450 50  0000 L CNN
F 1 "SP4010" H 4300 7350 50  0000 L CNN
F 2 "azonenberg_pcb:SOT23_6" H 4300 7500 50  0001 C CNN
F 3 "" H 4300 7500 50  0001 C CNN
	1    4300 7500
	1    0    0    -1  
$EndComp
Text Label 4050 7450 2    50   ~ 0
TX7_P
Text Label 4050 7350 2    50   ~ 0
TX7_N
Text Label 4050 6850 2    50   ~ 0
2V5
Wire Wire Line
	4050 6850 4050 6950
Connection ~ 4050 6950
Wire Wire Line
	4050 6950 4050 7050
Text Label 4050 7150 2    50   ~ 0
GND
Wire Wire Line
	4200 3000 4800 3000
Wire Wire Line
	4200 3100 4800 3100
Text Label 10700 3400 0    50   ~ 0
GND
$Comp
L special-azonenberg:SP4010 D13
U 1 1 5ED20175
P 5400 6550
F 0 "D13" H 5400 6500 50  0000 L CNN
F 1 "SP4010" H 5400 6400 50  0000 L CNN
F 2 "azonenberg_pcb:SOT23_6" H 5400 6550 50  0001 C CNN
F 3 "" H 5400 6550 50  0001 C CNN
	1    5400 6550
	1    0    0    -1  
$EndComp
Text Label 5150 5900 2    50   ~ 0
3V3
Wire Wire Line
	5150 5900 5150 6000
Connection ~ 5150 6000
Wire Wire Line
	5150 6000 5150 6100
Text Label 5150 6200 2    50   ~ 0
GND
Text Label 5150 6400 2    50   ~ 0
UART_TX
Text Label 5150 6500 2    50   ~ 0
UART_RX
$Comp
L Connector:Conn_01x01 TP12
U 1 1 5ED5A23C
P 9900 5450
F 0 "TP12" H 9980 5492 50  0000 L CNN
F 1 "TESTCLIP" H 9980 5401 50  0000 L CNN
F 2 "azonenberg_pcb:TESTPOINT_SMT_KEYSTONE_5016" H 9900 5450 50  0001 C CNN
F 3 "~" H 9900 5450 50  0001 C CNN
	1    9900 5450
	1    0    0    -1  
$EndComp
Text Label 9700 5450 2    50   ~ 0
GND
$Comp
L Connector:Conn_01x01 TP5
U 1 1 5ED5B185
P 8950 5400
F 0 "TP5" H 9030 5442 50  0000 L CNN
F 1 "TESTPAD" H 9030 5351 50  0000 L CNN
F 2 "azonenberg_pcb:TESTPOINT_SMT_0.5MM" H 8950 5400 50  0001 C CNN
F 3 "~" H 8950 5400 50  0001 C CNN
	1    8950 5400
	1    0    0    -1  
$EndComp
Text Label 8750 5400 2    50   ~ 0
6V0
$Comp
L Connector:Conn_01x01 TP6
U 1 1 5ED5B641
P 8950 5600
F 0 "TP6" H 9030 5642 50  0000 L CNN
F 1 "TESTPAD" H 9030 5551 50  0000 L CNN
F 2 "azonenberg_pcb:TESTPOINT_SMT_0.5MM" H 8950 5600 50  0001 C CNN
F 3 "~" H 8950 5600 50  0001 C CNN
	1    8950 5600
	1    0    0    -1  
$EndComp
Text Label 8750 5600 2    50   ~ 0
5V0
$Comp
L Connector:Conn_01x01 TP7
U 1 1 5ED5BCF0
P 8950 5800
F 0 "TP7" H 9030 5842 50  0000 L CNN
F 1 "TESTPAD" H 9030 5751 50  0000 L CNN
F 2 "azonenberg_pcb:TESTPOINT_SMT_0.5MM" H 8950 5800 50  0001 C CNN
F 3 "~" H 8950 5800 50  0001 C CNN
	1    8950 5800
	1    0    0    -1  
$EndComp
Text Label 8750 5800 2    50   ~ 0
3V3
$Comp
L Connector:Conn_01x01 TP8
U 1 1 5ED5C198
P 8950 6000
F 0 "TP8" H 9030 6042 50  0000 L CNN
F 1 "TESTPAD" H 9030 5951 50  0000 L CNN
F 2 "azonenberg_pcb:TESTPOINT_SMT_0.5MM" H 8950 6000 50  0001 C CNN
F 3 "~" H 8950 6000 50  0001 C CNN
	1    8950 6000
	1    0    0    -1  
$EndComp
Text Label 8750 6000 2    50   ~ 0
2V5
$Comp
L Connector:Conn_01x01 TP9
U 1 1 5ED5C910
P 8950 6200
F 0 "TP9" H 9030 6242 50  0000 L CNN
F 1 "TESTPAD" H 9030 6151 50  0000 L CNN
F 2 "azonenberg_pcb:TESTPOINT_SMT_0.5MM" H 8950 6200 50  0001 C CNN
F 3 "~" H 8950 6200 50  0001 C CNN
	1    8950 6200
	1    0    0    -1  
$EndComp
Text Label 8750 6200 2    50   ~ 0
1V5_N
Text Label 6000 1200 0    50   ~ 0
VREF0
Text Label 8750 6400 2    50   ~ 0
VREF0
$Comp
L Connector:Conn_01x01 TP10
U 1 1 5ED5D15E
P 8950 6400
F 0 "TP10" H 9030 6442 50  0000 L CNN
F 1 "TESTPAD" H 9030 6351 50  0000 L CNN
F 2 "azonenberg_pcb:TESTPOINT_SMT_0.5MM" H 8950 6400 50  0001 C CNN
F 3 "~" H 8950 6400 50  0001 C CNN
	1    8950 6400
	1    0    0    -1  
$EndComp
Text Label 8250 1300 2    50   ~ 0
TX0_P
Text Label 8250 1200 2    50   ~ 0
TX0_N
Text Notes 8350 1100 0    50   ~ 0
Invert lanes 0, 2, 4, 6 for routability
Text Label 8250 2500 2    50   ~ 0
TX4_P
Text Label 8250 2400 2    50   ~ 0
TX4_N
Wire Wire Line
	7700 1600 8250 1600
Wire Wire Line
	7700 1500 8250 1500
Text Label 8250 3100 2    50   ~ 0
TX6_P
Text Label 8250 3000 2    50   ~ 0
TX6_N
Text Label 8250 1900 2    50   ~ 0
TX2_P
Text Label 8250 1800 2    50   ~ 0
TX2_N
Wire Wire Line
	7700 2100 8250 2100
Wire Wire Line
	7700 2200 8250 2200
$Comp
L Connector:Conn_01x01 MH1
U 1 1 5F2DE5BB
P 7600 5400
F 0 "MH1" H 7680 5442 50  0000 L CNN
F 1 "SCREWHOLE_4_40" H 7680 5351 50  0000 L CNN
F 2 "azonenberg_pcb:MECHANICAL_CLEARANCEHOLE_4_40" H 7600 5400 50  0001 C CNN
F 3 "~" H 7600 5400 50  0001 C CNN
	1    7600 5400
	1    0    0    -1  
$EndComp
Text Label 7400 5400 2    50   ~ 0
GND
$Comp
L Connector:Conn_01x01 MH2
U 1 1 5F2DF305
P 7600 5600
F 0 "MH2" H 7680 5642 50  0000 L CNN
F 1 "SCREWHOLE_4_40" H 7680 5551 50  0000 L CNN
F 2 "azonenberg_pcb:MECHANICAL_CLEARANCEHOLE_4_40" H 7600 5600 50  0001 C CNN
F 3 "~" H 7600 5600 50  0001 C CNN
	1    7600 5600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01 MH3
U 1 1 5F2DF699
P 7600 5800
F 0 "MH3" H 7680 5842 50  0000 L CNN
F 1 "SCREWHOLE_4_40" H 7680 5751 50  0000 L CNN
F 2 "azonenberg_pcb:MECHANICAL_CLEARANCEHOLE_4_40" H 7600 5800 50  0001 C CNN
F 3 "~" H 7600 5800 50  0001 C CNN
	1    7600 5800
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01 MH4
U 1 1 5F2DFA38
P 7600 6000
F 0 "MH4" H 7680 6042 50  0000 L CNN
F 1 "SCREWHOLE_4_40" H 7680 5951 50  0000 L CNN
F 2 "azonenberg_pcb:MECHANICAL_CLEARANCEHOLE_4_40" H 7600 6000 50  0001 C CNN
F 3 "~" H 7600 6000 50  0001 C CNN
	1    7600 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 6000 7400 5800
Connection ~ 7400 5600
Wire Wire Line
	7400 5600 7400 5400
Connection ~ 7400 5800
Wire Wire Line
	7400 5800 7400 5600
Text Label 3350 2050 2    50   ~ 0
12V_SENSE
Text Label 6550 4500 2    50   ~ 0
12V_SENSE
$Comp
L device:R R79
U 1 1 5F38359A
P 6700 4500
F 0 "R79" V 6600 4500 50  0000 C CNN
F 1 "47K" V 6700 4500 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 6630 4500 50  0001 C CNN
F 3 "" H 6700 4500 50  0001 C CNN
	1    6700 4500
	0    1    1    0   
$EndComp
$Comp
L device:R R78
U 1 1 5F383EFD
P 5900 4500
F 0 "R78" V 5800 4500 50  0000 C CNN
F 1 "10K" V 5900 4500 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 5830 4500 50  0001 C CNN
F 3 "" H 5900 4500 50  0001 C CNN
	1    5900 4500
	0    1    1    0   
$EndComp
Text Label 5750 4500 2    50   ~ 0
GND
Wire Wire Line
	6050 4500 6550 4500
Text Label 1700 1850 0    50   ~ 0
12V0_FUSED
Text Label 6850 4500 0    50   ~ 0
12V0_FUSED
$Comp
L device:C C74
U 1 1 5F3C8CBA
P 5900 4250
F 0 "C74" V 5648 4250 50  0000 C CNN
F 1 "0.47 uF" V 5739 4250 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5938 4100 50  0001 C CNN
F 3 "" H 5900 4250 50  0001 C CNN
	1    5900 4250
	0    1    1    0   
$EndComp
Wire Wire Line
	5750 4250 5750 4500
Wire Wire Line
	6050 4250 6050 4500
Connection ~ 6050 4500
$EndSCHEMATC
