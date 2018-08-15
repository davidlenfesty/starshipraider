EESchema Schematic File Version 4
LIBS:iob-characterization-v02-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 6
Title "STARSHIPRAIDER I/O Characterization"
Date "2018-08-15"
Rev "0.2"
Comp "Andrew D. Zonenberg"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 7200 5400 0    60   Input ~ 0
5V0
Text HLabel 7200 5600 0    60   Input ~ 0
GND
Text HLabel 9900 850  2    60   Output ~ 0
VCCO_HI
Text HLabel 10250 3350 2    60   Output ~ 0
2V5
Text HLabel 9900 1900 2    60   Output ~ 0
VCCO_LO
$Comp
L iob-characterization-v02-rescue:SIP32408 U11
U 1 1 591F646E
P 8850 1400
F 0 "U11" H 9150 2197 60  0000 C CNN
F 1 "SIP32409" H 9150 2091 60  0000 C CNN
F 2 "azonenberg_pcb:DFN_4_0.5MM_1.6x1.2MM" H 8850 1400 60  0001 C CNN
F 3 "" H 8850 1400 60  0000 C CNN
	1    8850 1400
	1    0    0    -1  
$EndComp
$Comp
L iob-characterization-v02-rescue:SIP32408 U12
U 1 1 591F64B0
P 8850 2450
F 0 "U12" H 9150 3247 60  0000 C CNN
F 1 "SIP32409" H 9150 3141 60  0000 C CNN
F 2 "azonenberg_pcb:DFN_4_0.5MM_1.6x1.2MM" H 8850 2450 60  0001 C CNN
F 3 "" H 8850 2450 60  0000 C CNN
	1    8850 2450
	1    0    0    -1  
$EndComp
Text HLabel 7200 5800 0    50   Input ~ 0
VCCO_REF
Text Label 8550 850  2    60   ~ 0
VCCO
Wire Wire Line
	9900 850  9800 850 
Wire Wire Line
	9900 1900 9800 1900
Text Label 8550 1900 2    60   ~ 0
VCCO
Text Label 8550 1050 2    60   ~ 0
GND
Text Label 8550 2100 2    60   ~ 0
GND
Wire Wire Line
	8650 2200 8550 2200
Wire Wire Line
	8550 2200 8550 2100
Wire Wire Line
	8650 2100 8550 2100
Wire Wire Line
	8650 1150 8550 1150
Wire Wire Line
	8550 1150 8550 1050
Wire Wire Line
	8650 1050 8550 1050
Wire Wire Line
	8650 850  8550 850 
Wire Wire Line
	8550 1350 8650 1350
Wire Wire Line
	8550 2400 8650 2400
Text Notes 8850 2550 0    60   ~ 0
Load switches for output power rails
Wire Wire Line
	8650 1900 8550 1900
$Comp
L analog-azonenberg:ISL24021IRT065Z-T7A‎ U1
U 1 1 5B8022FF
P 7450 6000
F 0 "U1" H 7500 6800 50  0000 C CNN
F 1 "ISL24021IRT065Z-T7A‎" H 7800 6700 50  0000 C CNN
F 2 "azonenberg_pcb:DFN_8_0.65MM_3x3MM" H 7450 6000 50  0001 C CNN
F 3 "" H 7450 6000 50  0001 C CNN
	1    7450 6000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 5600 7250 5600
Wire Wire Line
	7350 5400 7200 5400
Text Label 9450 5800 0    50   ~ 0
VCCO
Wire Wire Line
	7350 5900 7200 5900
Wire Wire Line
	7200 5900 7200 6100
Wire Wire Line
	7200 6100 8400 6100
Wire Wire Line
	8400 6100 8400 5800
Connection ~ 8400 5800
Wire Wire Line
	8400 5800 8250 5800
Wire Wire Line
	7200 5800 7350 5800
Text Notes 7450 6200 0    50   ~ 0
Buffer DAC output to generate VCCO
Text HLabel 2100 850  0    60   Output ~ 0
VCCO_IS_HI
Text Label 8550 1350 2    60   ~ 0
VCCO_IS_HI
Text Label 8550 2400 2    60   ~ 0
VCCO_IS_LO
Text Label 2100 950  2    60   ~ 0
VCCO_IS_LO
$Comp
L power-azonenberg:LDO1117-XX U18
U 1 1 5B9E2326
P 9200 3250
F 0 "U18" H 9275 3487 60  0000 C CNN
F 1 "LDO1117-25" H 9275 3381 60  0000 C CNN
F 2 "azonenberg_pcb:SOT223-4" H 9200 3250 60  0001 C CNN
F 3 "" H 9200 3250 60  0000 C CNN
	1    9200 3250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 3350 10100 3350
Text Label 8200 3900 2    60   ~ 0
GND
Wire Wire Line
	8200 3900 9250 3900
Text Label 8200 3350 2    60   ~ 0
5V0
Wire Wire Line
	8200 3350 8450 3350
$Comp
L device:C C19
U 1 1 5B9E3C30
P 9800 2050
F 0 "C19" H 9915 2096 50  0000 L CNN
F 1 "4.7 uF" H 9915 2005 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 9838 1900 50  0001 C CNN
F 3 "" H 9800 2050 50  0001 C CNN
	1    9800 2050
	1    0    0    -1  
$EndComp
Connection ~ 9800 1900
Wire Wire Line
	9800 1900 9650 1900
Text Label 9700 2200 2    60   ~ 0
GND
Wire Wire Line
	9700 2200 9800 2200
$Comp
L device:C C18
U 1 1 5B9E44FC
P 9800 1000
F 0 "C18" H 9915 1046 50  0000 L CNN
F 1 "4.7 uF" H 9915 955 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 9838 850 50  0001 C CNN
F 3 "" H 9800 1000 50  0001 C CNN
	1    9800 1000
	1    0    0    -1  
$EndComp
Connection ~ 9800 850 
Wire Wire Line
	9800 850  9650 850 
Text Label 9700 1150 2    60   ~ 0
GND
Wire Wire Line
	9700 1150 9800 1150
$Comp
L device:C C17
U 1 1 5B9E5069
P 8400 5650
F 0 "C17" H 8515 5696 50  0000 L CNN
F 1 "4.7 uF" H 8515 5605 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 8438 5500 50  0001 C CNN
F 3 "" H 8400 5650 50  0001 C CNN
	1    8400 5650
	1    0    0    -1  
$EndComp
Text Label 8400 5500 2    60   ~ 0
GND
$Comp
L special-azonenberg:TCA6424A U19
U 1 1 5B9E887F
P 2300 3400
F 0 "U19" H 2700 6197 60  0000 C CNN
F 1 "TCA6424A" H 2700 6091 60  0000 C CNN
F 2 "azonenberg_pcb:QFN_32_0.5MM_5x5MM" H 2300 3400 60  0001 C CNN
F 3 "" H 2300 3400 60  0000 C CNN
	1    2300 3400
	1    0    0    -1  
$EndComp
Text HLabel 3300 1350 2    60   BiDi ~ 0
I2C_SDA
Text HLabel 3300 1250 2    60   Input ~ 0
I2C_SCL
Text HLabel 3300 850  2    60   Input ~ 0
3V3
Text Label 3300 1050 0    60   ~ 0
GND
Text Label 3300 950  0    60   ~ 0
5V0
$Comp
L device:R R1
U 1 1 5B9EA0AD
P 3450 1550
F 0 "R1" V 3400 1700 50  0000 C CNN
F 1 "10K" V 3450 1550 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" V 3380 1550 50  0001 C CNN
F 3 "" H 3450 1550 50  0001 C CNN
	1    3450 1550
	0    1    1    0   
$EndComp
Text Label 3750 1550 0    60   ~ 0
3V3
Wire Wire Line
	3750 1550 3600 1550
Text Label 3750 1650 0    60   ~ 0
GND
Wire Wire Line
	3750 1650 3300 1650
$Comp
L device:R R2
U 1 1 5B9EB293
P 3450 1750
F 0 "R2" V 3400 1900 50  0000 C CNN
F 1 "10K" V 3450 1750 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" V 3380 1750 50  0001 C CNN
F 3 "" H 3450 1750 50  0001 C CNN
	1    3450 1750
	0    1    1    0   
$EndComp
Text Label 3750 1750 0    60   ~ 0
3V3
Wire Wire Line
	3600 1750 3750 1750
Text Notes 2300 3500 0    60   ~ 0
Address = 8'h44
Text Label 2100 1050 2    60   ~ 0
VCCO_REF_TOOHIGH
Text Label 5750 1050 2    60   ~ 0
VCCO_REF_TOOHIGH
$Comp
L device:R R17
U 1 1 5B9EC0B6
P 5900 1050
F 0 "R17" V 5850 1200 50  0000 C CNN
F 1 "470" V 5900 1050 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 5830 1050 50  0001 C CNN
F 3 "" H 5900 1050 50  0001 C CNN
	1    5900 1050
	0    -1   -1   0   
$EndComp
$Comp
L device:LED D4
U 1 1 5B9EC1D9
P 6200 1050
F 0 "D4" H 6192 795 50  0000 C CNN
F 1 "RED" H 6192 886 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0603_LED" H 6200 1050 50  0001 C CNN
F 3 "" H 6200 1050 50  0001 C CNN
	1    6200 1050
	-1   0    0    1   
$EndComp
Text Label 6500 1050 0    60   ~ 0
GND
Wire Wire Line
	6500 1050 6350 1050
NoConn ~ 2100 3350
NoConn ~ 2100 3250
NoConn ~ 2100 3150
NoConn ~ 2100 3050
NoConn ~ 2100 2950
NoConn ~ 2100 2850
NoConn ~ 2100 2750
NoConn ~ 2100 2650
NoConn ~ 2100 2450
NoConn ~ 2100 2350
NoConn ~ 2100 2250
NoConn ~ 2100 2150
NoConn ~ 2100 2050
NoConn ~ 2100 1950
NoConn ~ 2100 1850
NoConn ~ 2100 1750
$Comp
L special-azonenberg:INA226 U20
U 1 1 5B9FC420
P 2800 4800
F 0 "U20" H 2775 5287 60  0000 C CNN
F 1 "INA226" H 2775 5181 60  0000 C CNN
F 2 "azonenberg_pcb:SOP_10_0.5MM_3MM" H 2800 4800 60  0001 C CNN
F 3 "" H 2800 4800 60  0000 C CNN
	1    2800 4800
	1    0    0    -1  
$EndComp
NoConn ~ 2000 4800
Text Label 2100 1150 2    60   ~ 0
VCCO_OVERCURRENT
Text Label 2100 1250 2    60   ~ 0
VCCO_UNDERVOLT
Text Label 2100 1350 2    60   ~ 0
VCCO_OVERVOLT
Text Label 5750 1400 2    60   ~ 0
VCCO_OVERCURRENT
$Comp
L device:R R18
U 1 1 5B9FCE72
P 5900 1400
F 0 "R18" V 5850 1550 50  0000 C CNN
F 1 "470" V 5900 1400 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 5830 1400 50  0001 C CNN
F 3 "" H 5900 1400 50  0001 C CNN
	1    5900 1400
	0    -1   -1   0   
$EndComp
$Comp
L device:LED D5
U 1 1 5B9FCE78
P 6200 1400
F 0 "D5" H 6192 1145 50  0000 C CNN
F 1 "RED" H 6192 1236 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0603_LED" H 6200 1400 50  0001 C CNN
F 3 "" H 6200 1400 50  0001 C CNN
	1    6200 1400
	-1   0    0    1   
$EndComp
Text Label 6500 1400 0    60   ~ 0
GND
Wire Wire Line
	6500 1400 6350 1400
Text Label 5750 1800 2    60   ~ 0
VCCO_OVERVOLT
$Comp
L device:R R19
U 1 1 5B9FDEA6
P 5900 1800
F 0 "R19" V 5850 1950 50  0000 C CNN
F 1 "470" V 5900 1800 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 5830 1800 50  0001 C CNN
F 3 "" H 5900 1800 50  0001 C CNN
	1    5900 1800
	0    -1   -1   0   
$EndComp
$Comp
L device:LED D6
U 1 1 5B9FDEAC
P 6200 1800
F 0 "D6" H 6192 1545 50  0000 C CNN
F 1 "RED" H 6192 1636 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0603_LED" H 6200 1800 50  0001 C CNN
F 3 "" H 6200 1800 50  0001 C CNN
	1    6200 1800
	-1   0    0    1   
$EndComp
Text Label 6500 1800 0    60   ~ 0
GND
Wire Wire Line
	6500 1800 6350 1800
Text Label 5750 2200 2    60   ~ 0
VCCO_UNDERVOLT
$Comp
L device:R R20
U 1 1 5B9FE7B0
P 5900 2200
F 0 "R20" V 5850 2350 50  0000 C CNN
F 1 "470" V 5900 2200 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_RES_NOSILK" V 5830 2200 50  0001 C CNN
F 3 "" H 5900 2200 50  0001 C CNN
	1    5900 2200
	0    -1   -1   0   
$EndComp
$Comp
L device:LED D7
U 1 1 5B9FE7B6
P 6200 2200
F 0 "D7" H 6192 1945 50  0000 C CNN
F 1 "RED" H 6192 2036 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0603_LED" H 6200 2200 50  0001 C CNN
F 3 "" H 6200 2200 50  0001 C CNN
	1    6200 2200
	-1   0    0    1   
$EndComp
Text Label 6500 2200 0    60   ~ 0
GND
Wire Wire Line
	6500 2200 6350 2200
Text Label 2000 4900 2    60   ~ 0
I2C_SDA
Text Label 2000 5000 2    60   ~ 0
I2C_SCL
Text Label 3550 4900 0    60   ~ 0
GND
$Comp
L passive-azonenberg:R-4TERM R21
U 1 1 5BA03026
P 9150 5750
F 0 "R21" V 8864 5750 50  0000 C CNN
F 1 "50 mR" V 8955 5750 50  0000 C CNN
F 2 "azonenberg_pcb:OHMITE_LVK12" H 9150 5750 60  0001 C CNN
F 3 "" H 9150 5750 60  0000 C CNN
	1    9150 5750
	0    1    1    0   
$EndComp
Text Notes 1700 7100 0    60   ~ 0
IO buffers have 24 mA drive, with 8 active that's 192 mA.\nTarget 250 mA full scale, 50 mR is 12.5 mV (13.3 bit resolution)
Wire Wire Line
	8400 5800 8850 5800
Text Label 8850 5350 0    60   ~ 0
VSHUNT_HI
Wire Wire Line
	8850 5350 8850 5700
Text Label 9450 5500 0    60   ~ 0
VSHUNT_LO
Wire Wire Line
	9450 5500 9450 5700
Text Label 3550 4700 0    60   ~ 0
VSHUNT_LO
Text Label 3550 4600 0    60   ~ 0
VSHUNT_HI
Text Label 3550 4800 0    50   ~ 0
VCCO
Text Label 3550 5000 0    60   ~ 0
3V3
Text Label 2000 4600 2    60   ~ 0
GND
Text Label 2000 4700 2    60   ~ 0
GND
Text Notes 2300 5200 0    60   ~ 0
Address = 8'h80
Wire Wire Line
	7350 5500 7250 5500
Wire Wire Line
	7250 5500 7250 5600
Connection ~ 7250 5600
Wire Wire Line
	7250 5600 7350 5600
Text HLabel 2100 1450 0    60   Output ~ 0
CH0_TERM_EN
Text HLabel 2100 1550 0    60   Output ~ 0
CH1_TERM_EN
$EndSCHEMATC
