EESchema Schematic File Version 4
LIBS:entry-afe-characterization-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 8
Title "Entry-Level Oscilloscope AFE Characterization Platform"
Date "2020-03-24"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Top Level"
Comment2 "Andrew D. Zonenberg"
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 1150 3550 1000 1750
U 5E704852
F0 "Power Supply" 50
F1 "psu.sch" 50
F2 "0V5_REF" O R 2150 4750 50 
F3 "N0V5_REF" O R 2150 4850 50 
$EndSheet
Text Notes 6300 4350 0    50   ~ 0
SYSTEM GAIN CALCULATIONS\n\nHMCAD1520 wants 2V full scale\nIn 12-bit mode: 488 µV/LSB @ 0 dB gain\nIn 8-bit mode: 7.8 mV/LSB @ 0 dB gain\n\nMIN GAIN:\n10V input range, -13 dB system gain (0.2V/V)\n-9 dB gain on VGA\n12 bit mode: 2.4 mV/LSB\n8 bit mode: 39 mV/LSB\n\nMAX GAIN:\n159 mV input range, +22 dB system gain (12.59V/V)\n+26 dB gain on VGA\n12 bit mode: 38.7 µV/LSB\n8 bit mode: 619.5 µV/LSB
$Sheet
S 4150 5600 1600 1800
U 5E72E351
F0 "MCU" 50
F1 "mcu.sch" 50
F2 "3V3" I L 4150 5650 50 
F3 "GND" I L 4150 5750 50 
F4 "GAIN_PWRUP" O L 4150 5950 50 
F5 "GAIN2_PWRUP" O L 4150 6050 50 
F6 "VGA_PERF_MODE" O L 4150 6150 50 
F7 "SPI_CS_A_N" O L 4150 6250 50 
F8 "SPI_CS_B_N" O L 4150 6350 50 
F9 "SPI_SCK" O L 4150 6450 50 
F10 "SPI_SDIO" B L 4150 6550 50 
F11 "DAC_CS_N" O L 4150 6750 50 
F12 "DAC_LDAC" O L 4150 6850 50 
F13 "DAC_RST_N" O L 4150 6950 50 
F14 "RELAY_EN" O R 5750 5950 50 
F15 "OVERVOLTAGE_N" I R 5750 6050 50 
F16 "INPUT_RST" O R 5750 6150 50 
$EndSheet
$Sheet
S 1150 650  1100 1600
U 5E7383DD
F0 "Input" 50
F1 "input.sch" 50
F2 "GND" I L 1150 1050 50 
F3 "VIN_FILTERED" O R 2250 750 50 
F4 "5V0_P" I L 1150 850 50 
F5 "5V0_N" I L 1150 1250 50 
F6 "12V0" I L 1150 750 50 
F7 "0V5_REF" I L 1150 950 50 
F8 "N0V5_REF" I L 1150 1150 50 
F9 "RELAY_EN" O L 1150 1550 50 
F10 "OVERVOLTAGE_N" O L 1150 1650 50 
F11 "INPUT_RST" I L 1150 1450 50 
$EndSheet
Text Label 1150 1050 2    50   ~ 0
GND
$Sheet
S 2850 650  1200 1600
U 5E73DF00
F0 "Offset Stage" 50
F1 "offset.sch" 50
F2 "VIN_FILTERED" I L 2850 750 50 
F3 "VIN_OFFSET" I L 2850 850 50 
F4 "VSHIFTED_P" O R 4050 750 50 
F5 "VSHIFTED_N" O R 4050 850 50 
F6 "GND" I L 2850 1350 50 
F7 "2V5_REF" I L 2850 1250 50 
F8 "6V0_P" I L 2850 1050 50 
F9 "6V0_N" I L 2850 1150 50 
$EndSheet
Text Label 2850 850  2    50   ~ 0
VIN_OFFSET
Wire Wire Line
	2250 750  2850 750 
Text Label 2850 1350 2    50   ~ 0
GND
Text Label 2850 1250 2    50   ~ 0
2V5_REF
Wire Wire Line
	4750 750  4050 750 
Wire Wire Line
	4050 850  4750 850 
Text Label 4750 1450 2    50   ~ 0
GAIN_PWRUP
Text Label 4150 5950 2    50   ~ 0
GAIN_PWRUP
Text Label 2150 6750 0    50   ~ 0
VIN_OFFSET
Text Label 2500 3600 2    50   ~ 0
5V0_P
Text Label 2500 3700 2    50   ~ 0
5V0_N
Text Label 2500 3900 2    50   ~ 0
GND
Text Label 2500 3800 2    50   ~ 0
2V5_REF
Text Notes 1150 2700 0    50   ~ 0
VIN_FILTERED\n± 2.5V range\nCumulative gain = 0.5 V/V (-6 dB)
Text Notes 2800 2700 0    50   ~ 0
VSHIFTED\n0-5V range, 2.5V CM\nCumulative gain = 0.5V/V (-6 dB)\nVIN_OFFSET is ± 2.5V range
Text Notes 4750 2700 0    50   ~ 0
VGAIN\n2.5V CM\nCumulative gain = 0.177 - 10 V/V\n-15 to +20 dB
Text Label 4750 1150 2    50   ~ 0
2V5_REF
$Sheet
S 6600 650  950  1600
U 5E75B917
F0 "Common mode shift" 50
F1 "cm_shift.sch" 50
F2 "VGAIN_P" I L 6600 750 50 
F3 "VGAIN_N" I L 6600 850 50 
F4 "GND" I L 6600 1350 50 
F7 "0V9_REF" I L 6600 1250 50 
F8 "5V0_P" I L 6600 1050 50 
F9 "5V0_N" I L 6600 1450 50 
F10 "1V8" I L 6600 1150 50 
$EndSheet
Wire Wire Line
	6600 750  5900 750 
Wire Wire Line
	5900 850  6600 850 
Text Label 6600 1350 2    50   ~ 0
GND
Text Notes 6600 2700 0    50   ~ 0
VOUT\n900 mV CM\nCumulative gain = 0.223 - 12.59 V/V\n-13 to +22 dB
Text Label 6600 1250 2    50   ~ 0
0V9_REF
Text Label 2850 1050 2    50   ~ 0
6V0_P
Text Label 2850 1150 2    50   ~ 0
6V0_N
Text Label 2500 4000 2    50   ~ 0
6V0_P
Text Label 2500 4100 2    50   ~ 0
6V0_N
Text Label 2500 4300 2    50   ~ 0
0V9_REF
Text Label 1150 850  2    50   ~ 0
5V0_P
Text Label 1150 1250 2    50   ~ 0
5V0_N
Text Label 1150 750  2    50   ~ 0
12V0
Text Label 2500 4400 2    50   ~ 0
12V0
Text Label 2500 4500 2    50   ~ 0
0V5_REF
Text Label 1150 1150 2    50   ~ 0
N0V5_REF
Text Label 1150 950  2    50   ~ 0
0V5_REF
Text Label 4750 1550 2    50   ~ 0
GAIN2_PWRUP
Text Label 4150 6050 2    50   ~ 0
GAIN2_PWRUP
Text Label 4750 1050 2    50   ~ 0
5V0_P
Text Label 4750 1250 2    50   ~ 0
GND
$Sheet
S 4750 650  1150 1600
U 5E743C43
F0 "Gain Stage" 50
F1 "gainstage.sch" 50
F2 "GAIN_PWRUP" I L 4750 1450 50 
F3 "VSHIFTED_P" I L 4750 750 50 
F4 "VSHIFTED_N" I L 4750 850 50 
F5 "VGAIN_P" O R 5900 750 50 
F6 "VGAIN_N" O R 5900 850 50 
F7 "2V5_REF" I L 4750 1150 50 
F8 "GAIN2_PWRUP" I L 4750 1550 50 
F9 "5V0_P" I L 4750 1050 50 
F10 "GND" I L 4750 1250 50 
F11 "SPI_CS_A_N" I L 4750 1850 50 
F12 "SPI_CS_B_N" I L 4750 1950 50 
F13 "SPI_SDIO" B L 4750 2050 50 
F14 "SPI_SCLK" I L 4750 2150 50 
F15 "VGA_PERF_MODE" I L 4750 1650 50 
$EndSheet
Text Label 4750 1650 2    50   ~ 0
VGA_PERF_MODE
Text Label 4150 6150 2    50   ~ 0
VGA_PERF_MODE
Text Label 4750 1850 2    50   ~ 0
SPI_CS_A_N
Text Label 4750 1950 2    50   ~ 0
SPI_CS_B_N
Text Label 4150 6250 2    50   ~ 0
SPI_CS_A_N
Text Label 4150 6350 2    50   ~ 0
SPI_CS_B_N
Text Label 4750 2050 2    50   ~ 0
SPI_SDIO
Text Label 4750 2150 2    50   ~ 0
SPI_SCLK
Text Label 4150 6550 2    50   ~ 0
SPI_SDIO
Text Label 4150 6450 2    50   ~ 0
SPI_SCLK
Text Label 6600 1050 2    50   ~ 0
5V0_P
Text Label 6600 1150 2    50   ~ 0
1V8
Text Label 6600 1450 2    50   ~ 0
5V0_N
Text Label 2500 4200 2    50   ~ 0
1V8
Text Notes 2600 4200 0    50   ~ 0
Note, 1V8 is a clipping rail so needs to be capable of sinking
$Sheet
S 1150 5600 1000 1750
U 5E704937
F0 "DAC" 50
F1 "dac.sch" 50
F2 "DAC_CS_N" I R 2150 6150 50 
F3 "DAC_LDAC" I R 2150 6250 50 
F4 "DAC_SCK" I R 2150 6350 50 
F5 "DAC_MOSI" I R 2150 6450 50 
F6 "DAC_RST_N" I R 2150 6550 50 
F7 "5V0_P" I R 2150 5650 50 
F8 "3V3" I R 2150 5750 50 
F9 "5V0_N" I R 2150 5950 50 
F10 "VIN_OFFSET" O R 2150 6750 50 
F11 "GND" I R 2150 5850 50 
$EndSheet
Text Label 2150 5650 0    50   ~ 0
5V0_P
Text Label 2150 5950 0    50   ~ 0
5V0_N
Text Label 2150 5850 0    50   ~ 0
GND
Text Label 2150 5750 0    50   ~ 0
3V3
Text Label 4150 5650 2    50   ~ 0
3V3
Text Label 4150 5750 2    50   ~ 0
GND
Text Label 2150 6350 0    50   ~ 0
SPI_SCLK
Text Label 2150 6450 0    50   ~ 0
SPI_SDIO
Text Label 4150 6950 2    50   ~ 0
DAC_RST_N
Text Label 4150 6850 2    50   ~ 0
DAC_LDAC
Text Label 4150 6750 2    50   ~ 0
DAC_CS_N
Text Label 2150 6150 0    50   ~ 0
DAC_CS_N
Text Label 2150 6250 0    50   ~ 0
DAC_LDAC
Text Label 2150 6550 0    50   ~ 0
DAC_RST_N
Text Label 1150 1650 2    50   ~ 0
OVERVOLTAGE_N
Text Label 1150 1550 2    50   ~ 0
RELAY_EN
Text Label 5750 6050 0    50   ~ 0
OVERVOLTAGE_N
Text Label 5750 5950 0    50   ~ 0
RELAY_EN
Text Label 1150 1450 2    50   ~ 0
INPUT_RST
Text Label 5750 6150 0    50   ~ 0
INPUT_RST
$EndSCHEMATC
