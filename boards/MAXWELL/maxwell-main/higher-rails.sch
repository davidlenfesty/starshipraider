EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 5 18
Title "MAXWELL Main Board"
Date "2020-06-21"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 9500 1550 2    50   Output ~ 0
5V0
Text HLabel 13050 1250 2    50   Output ~ 0
5V0_N
Text HLabel 4450 3750 2    50   Output ~ 0
3V3
Text HLabel 4450 2550 2    50   Output ~ 0
2V0
Text HLabel 7700 1150 2    50   Output ~ 0
5V0_GOOD
Text HLabel 3100 3550 2    50   Output ~ 0
3V3_GOOD
Text HLabel 3100 1150 2    50   Output ~ 0
2V5_GOOD
Text HLabel 3100 2350 2    50   Output ~ 0
2V0_GOOD
Text HLabel 6550 1750 0    50   Input ~ 0
5V0_EN
Text HLabel 11400 1750 0    50   Input ~ 0
5V0_N_EN
Text HLabel 4350 7200 0    50   Input ~ 0
3V3_EN
Text HLabel 1150 7200 0    50   Input ~ 0
2V5_EN
Text HLabel 2750 7200 0    50   Input ~ 0
2V0_EN
Text HLabel 1200 1250 0    50   Input ~ 0
12V0
Text HLabel 1100 7400 0    50   Input ~ 0
GND
Text HLabel 4450 1350 2    50   Output ~ 0
2V5
$Comp
L power-azonenberg:OKL-T_3-W12P-C U?
U 1 1 615D7A4E
P 2150 1800
AR Path="/5EDD7150/61296AEB/615D7A4E" Ref="U?"  Part="1" 
AR Path="/5EDD7150/61580EA1/615D7A4E" Ref="U61"  Part="1" 
F 0 "U61" H 2525 2697 60  0000 C CNN
F 1 "OKL-T/3-W12P-C" H 2525 2591 60  0000 C CNN
F 2 "" H 2150 1700 60  0001 C CNN
F 3 "" H 2150 1700 60  0001 C CNN
	1    2150 1800
	1    0    0    -1  
$EndComp
Text Label 1950 1150 2    50   ~ 0
2V5_EN_SHIFT
Text Label 1950 1350 2    50   ~ 0
GND
Wire Wire Line
	1950 1350 1950 1450
$Comp
L device:R R?
U 1 1 615D7A58
P 1650 1750
AR Path="/5EDD7150/61296AEB/615D7A58" Ref="R?"  Part="1" 
AR Path="/5EDD7150/61580EA1/615D7A58" Ref="R175"  Part="1" 
F 0 "R175" V 1600 1500 50  0000 C CNN
F 1 "3.1K" V 1650 1750 50  0000 C CNN
F 2 "" V 1580 1750 50  0001 C CNN
F 3 "" H 1650 1750 50  0001 C CNN
	1    1650 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 1750 1950 1750
Text Label 1200 1750 2    50   ~ 0
GND
Wire Wire Line
	1200 1750 1500 1750
$Comp
L device:C C?
U 1 1 615D7A61
P 1200 1400
AR Path="/5EDD7150/615D7A61" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/615D7A61" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/615D7A61" Ref="C342"  Part="1" 
F 0 "C342" H 1315 1446 50  0000 L CNN
F 1 "22 uF 25V" H 1315 1355 50  0000 L CNN
F 2 "" H 1238 1250 50  0001 C CNN
F 3 "" H 1200 1400 50  0001 C CNN
	1    1200 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 1550 1200 1750
Wire Wire Line
	1950 1250 1200 1250
$Comp
L device:C C?
U 1 1 615D7A69
P 3400 1500
AR Path="/5EDD7150/615D7A69" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/615D7A69" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/615D7A69" Ref="C345"  Part="1" 
F 0 "C345" H 3515 1546 50  0000 L CNN
F 1 "22 uF" H 3515 1455 50  0000 L CNN
F 2 "" H 3438 1350 50  0001 C CNN
F 3 "" H 3400 1500 50  0001 C CNN
	1    3400 1500
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 615D7A6F
P 3850 1500
AR Path="/5EDD7150/615D7A6F" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/615D7A6F" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/615D7A6F" Ref="C348"  Part="1" 
F 0 "C348" H 3965 1546 50  0000 L CNN
F 1 "DNP" H 3965 1455 50  0000 L CNN
F 2 "" H 3888 1350 50  0001 C CNN
F 3 "" H 3850 1500 50  0001 C CNN
	1    3850 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1350 3400 1350
Connection ~ 3400 1350
Wire Wire Line
	3400 1350 3100 1350
Text Label 3200 1650 2    50   ~ 0
GND
Wire Wire Line
	3200 1650 3400 1650
Connection ~ 3400 1650
Wire Wire Line
	3400 1650 3850 1650
Text Label 1950 1650 2    50   ~ 0
12V0
$Comp
L special-azonenberg:SSM6N58NU_DUAL_NMOS Q?
U 1 1 615D9805
P 1500 7200
AR Path="/5EDD7150/61296AEB/615D9805" Ref="Q?"  Part="1" 
AR Path="/5EDD7150/61580EA1/615D9805" Ref="Q3"  Part="1" 
F 0 "Q3" H 1644 7253 60  0000 L CNN
F 1 "SSM6N58NU" H 1644 7147 60  0000 L CNN
F 2 "" H 1500 7200 60  0000 C CNN
F 3 "transistors/mos/*.*" H 1644 7094 60  0001 L CNN
	1    1500 7200
	1    0    0    -1  
$EndComp
Text HLabel 1100 6700 0    50   Input ~ 0
5V0_SB
Text Label 1900 7000 0    50   ~ 0
2V5_EN_SHIFT
$Comp
L device:R R?
U 1 1 615D980D
P 1600 6850
AR Path="/5EDD7150/61296AEB/615D980D" Ref="R?"  Part="1" 
AR Path="/5EDD7150/61580EA1/615D980D" Ref="R174"  Part="1" 
F 0 "R174" H 1670 6896 50  0000 L CNN
F 1 "10K" H 1670 6805 50  0000 L CNN
F 2 "" V 1530 6850 50  0001 C CNN
F 3 "" H 1600 6850 50  0001 C CNN
	1    1600 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 7000 1600 7000
Connection ~ 1600 7000
Wire Wire Line
	1100 6700 1150 6700
Wire Wire Line
	1100 7400 1600 7400
$Comp
L device:R R?
U 1 1 615D9818
P 1150 6850
AR Path="/5EDD7150/61296AEB/615D9818" Ref="R?"  Part="1" 
AR Path="/5EDD7150/61580EA1/615D9818" Ref="R173"  Part="1" 
F 0 "R173" H 1220 6896 50  0000 L CNN
F 1 "10K" H 1220 6805 50  0000 L CNN
F 2 "" V 1080 6850 50  0001 C CNN
F 3 "" H 1150 6850 50  0001 C CNN
	1    1150 6850
	1    0    0    -1  
$EndComp
Connection ~ 1150 6700
Wire Wire Line
	1150 6700 1600 6700
Wire Wire Line
	1150 7000 1150 7200
Wire Wire Line
	1150 7200 1300 7200
$Comp
L power-azonenberg:OKL-T_3-W12P-C U?
U 1 1 615F3319
P 2150 3000
AR Path="/5EDD7150/61296AEB/615F3319" Ref="U?"  Part="1" 
AR Path="/5EDD7150/61580EA1/615F3319" Ref="U62"  Part="1" 
F 0 "U62" H 2525 3897 60  0000 C CNN
F 1 "OKL-T/3-W12P-C" H 2525 3791 60  0000 C CNN
F 2 "" H 2150 2900 60  0001 C CNN
F 3 "" H 2150 2900 60  0001 C CNN
	1    2150 3000
	1    0    0    -1  
$EndComp
Text Label 1950 2350 2    50   ~ 0
2V0_EN_SHIFT
Text Label 1950 2550 2    50   ~ 0
GND
Wire Wire Line
	1950 2550 1950 2650
$Comp
L device:R R?
U 1 1 615F3326
P 1650 2950
AR Path="/5EDD7150/61296AEB/615F3326" Ref="R?"  Part="1" 
AR Path="/5EDD7150/61580EA1/615F3326" Ref="R176"  Part="1" 
F 0 "R176" V 1600 2700 50  0000 C CNN
F 1 "4.19K" V 1750 2950 50  0000 C CNN
F 2 "" V 1580 2950 50  0001 C CNN
F 3 "" H 1650 2950 50  0001 C CNN
	1    1650 2950
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 2950 1950 2950
Text Label 1200 2950 2    50   ~ 0
GND
Wire Wire Line
	1200 2950 1500 2950
$Comp
L device:C C?
U 1 1 615F3333
P 1200 2600
AR Path="/5EDD7150/615F3333" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/615F3333" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/615F3333" Ref="C343"  Part="1" 
F 0 "C343" H 1315 2646 50  0000 L CNN
F 1 "22 uF 25V" H 1315 2555 50  0000 L CNN
F 2 "" H 1238 2450 50  0001 C CNN
F 3 "" H 1200 2600 50  0001 C CNN
	1    1200 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2750 1200 2950
Wire Wire Line
	1950 2450 1200 2450
$Comp
L device:C C?
U 1 1 615F333F
P 3400 2700
AR Path="/5EDD7150/615F333F" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/615F333F" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/615F333F" Ref="C346"  Part="1" 
F 0 "C346" H 3515 2746 50  0000 L CNN
F 1 "22 uF" H 3515 2655 50  0000 L CNN
F 2 "" H 3438 2550 50  0001 C CNN
F 3 "" H 3400 2700 50  0001 C CNN
	1    3400 2700
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 615F3349
P 3850 2700
AR Path="/5EDD7150/615F3349" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/615F3349" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/615F3349" Ref="C349"  Part="1" 
F 0 "C349" H 3965 2746 50  0000 L CNN
F 1 "DNP" H 3965 2655 50  0000 L CNN
F 2 "" H 3888 2550 50  0001 C CNN
F 3 "" H 3850 2700 50  0001 C CNN
	1    3850 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 2550 3400 2550
Connection ~ 3400 2550
Wire Wire Line
	3400 2550 3100 2550
Text Label 3200 2850 2    50   ~ 0
GND
Wire Wire Line
	3200 2850 3400 2850
Connection ~ 3400 2850
Wire Wire Line
	3400 2850 3850 2850
Text Label 1950 2850 2    50   ~ 0
12V0
Text Label 1200 2450 2    50   ~ 0
12V0
$Comp
L special-azonenberg:SSM6N58NU_DUAL_NMOS Q?
U 2 1 615F58AB
P 3100 7200
AR Path="/5EDD7150/61296AEB/615F58AB" Ref="Q?"  Part="1" 
AR Path="/5EDD7150/61580EA1/615F58AB" Ref="Q3"  Part="2" 
F 0 "Q3" H 3244 7253 60  0000 L CNN
F 1 "SSM6N58NU" H 3244 7147 60  0000 L CNN
F 2 "" H 3100 7200 60  0000 C CNN
F 3 "transistors/mos/*.*" H 3244 7094 60  0001 L CNN
	2    3100 7200
	1    0    0    -1  
$EndComp
Text Label 3500 7000 0    50   ~ 0
2V0_EN_SHIFT
$Comp
L device:R R?
U 1 1 615F58B7
P 3200 6850
AR Path="/5EDD7150/61296AEB/615F58B7" Ref="R?"  Part="1" 
AR Path="/5EDD7150/61580EA1/615F58B7" Ref="R179"  Part="1" 
F 0 "R179" H 3270 6896 50  0000 L CNN
F 1 "10K" H 3270 6805 50  0000 L CNN
F 2 "" V 3130 6850 50  0001 C CNN
F 3 "" H 3200 6850 50  0001 C CNN
	1    3200 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 7000 3200 7000
Connection ~ 3200 7000
$Comp
L device:R R?
U 1 1 615F58C5
P 2750 6850
AR Path="/5EDD7150/61296AEB/615F58C5" Ref="R?"  Part="1" 
AR Path="/5EDD7150/61580EA1/615F58C5" Ref="R178"  Part="1" 
F 0 "R178" H 2820 6896 50  0000 L CNN
F 1 "10K" H 2820 6805 50  0000 L CNN
F 2 "" V 2680 6850 50  0001 C CNN
F 3 "" H 2750 6850 50  0001 C CNN
	1    2750 6850
	1    0    0    -1  
$EndComp
Connection ~ 2750 6700
Wire Wire Line
	2750 7000 2750 7200
Wire Wire Line
	2750 7200 2900 7200
Wire Wire Line
	1600 6700 2750 6700
Connection ~ 1600 6700
Wire Wire Line
	1600 7400 3200 7400
Connection ~ 1600 7400
$Comp
L special-azonenberg:SSM6N58NU_DUAL_NMOS Q?
U 1 1 61602892
P 4700 7200
AR Path="/5EDD7150/61296AEB/61602892" Ref="Q?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61602892" Ref="Q4"  Part="1" 
F 0 "Q4" H 4844 7253 60  0000 L CNN
F 1 "SSM6N58NU" H 4844 7147 60  0000 L CNN
F 2 "" H 4700 7200 60  0000 C CNN
F 3 "transistors/mos/*.*" H 4844 7094 60  0001 L CNN
	1    4700 7200
	1    0    0    -1  
$EndComp
Text Label 5100 7000 0    50   ~ 0
3V3_EN_SHIFT
$Comp
L device:R R?
U 1 1 6160289D
P 4800 6850
AR Path="/5EDD7150/61296AEB/6160289D" Ref="R?"  Part="1" 
AR Path="/5EDD7150/61580EA1/6160289D" Ref="R181"  Part="1" 
F 0 "R181" H 4870 6896 50  0000 L CNN
F 1 "10K" H 4870 6805 50  0000 L CNN
F 2 "" V 4730 6850 50  0001 C CNN
F 3 "" H 4800 6850 50  0001 C CNN
	1    4800 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 7000 4800 7000
Connection ~ 4800 7000
$Comp
L device:R R?
U 1 1 616028A9
P 4350 6850
AR Path="/5EDD7150/61296AEB/616028A9" Ref="R?"  Part="1" 
AR Path="/5EDD7150/61580EA1/616028A9" Ref="R180"  Part="1" 
F 0 "R180" H 4420 6896 50  0000 L CNN
F 1 "10K" H 4420 6805 50  0000 L CNN
F 2 "" V 4280 6850 50  0001 C CNN
F 3 "" H 4350 6850 50  0001 C CNN
	1    4350 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 6700 4800 6700
Wire Wire Line
	4350 7000 4350 7200
Wire Wire Line
	4350 7200 4500 7200
Wire Wire Line
	2750 6700 3200 6700
Connection ~ 4350 6700
Connection ~ 3200 6700
Wire Wire Line
	3200 6700 4350 6700
Wire Wire Line
	3200 7400 4800 7400
Connection ~ 3200 7400
$Comp
L power-azonenberg:OKL-T_3-W12P-C U?
U 1 1 61606B4C
P 2150 4200
AR Path="/5EDD7150/61296AEB/61606B4C" Ref="U?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61606B4C" Ref="U63"  Part="1" 
F 0 "U63" H 2525 5097 60  0000 C CNN
F 1 "OKL-T/3-W12P-C" H 2525 4991 60  0000 C CNN
F 2 "" H 2150 4100 60  0001 C CNN
F 3 "" H 2150 4100 60  0001 C CNN
	1    2150 4200
	1    0    0    -1  
$EndComp
Text Label 1950 3550 2    50   ~ 0
3V3_EN_SHIFT
Text Label 1950 3750 2    50   ~ 0
GND
Wire Wire Line
	1950 3750 1950 3850
$Comp
L device:R R?
U 1 1 61606B59
P 1650 4150
AR Path="/5EDD7150/61296AEB/61606B59" Ref="R?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61606B59" Ref="R177"  Part="1" 
F 0 "R177" V 1600 3900 50  0000 C CNN
F 1 "2.18K" V 1750 4150 50  0000 C CNN
F 2 "" V 1580 4150 50  0001 C CNN
F 3 "" H 1650 4150 50  0001 C CNN
	1    1650 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 4150 1950 4150
Text Label 1200 4150 2    50   ~ 0
GND
Wire Wire Line
	1200 4150 1500 4150
$Comp
L device:C C?
U 1 1 61606B66
P 1200 3800
AR Path="/5EDD7150/61606B66" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/61606B66" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61606B66" Ref="C344"  Part="1" 
F 0 "C344" H 1315 3846 50  0000 L CNN
F 1 "22 uF 25V" H 1315 3755 50  0000 L CNN
F 2 "" H 1238 3650 50  0001 C CNN
F 3 "" H 1200 3800 50  0001 C CNN
	1    1200 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3950 1200 4150
Wire Wire Line
	1950 3650 1200 3650
$Comp
L device:C C?
U 1 1 61606B72
P 3400 3900
AR Path="/5EDD7150/61606B72" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/61606B72" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61606B72" Ref="C347"  Part="1" 
F 0 "C347" H 3515 3946 50  0000 L CNN
F 1 "22 uF" H 3515 3855 50  0000 L CNN
F 2 "" H 3438 3750 50  0001 C CNN
F 3 "" H 3400 3900 50  0001 C CNN
	1    3400 3900
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 61606B7C
P 3850 3900
AR Path="/5EDD7150/61606B7C" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/61606B7C" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61606B7C" Ref="C350"  Part="1" 
F 0 "C350" H 3965 3946 50  0000 L CNN
F 1 "DNP" H 3965 3855 50  0000 L CNN
F 2 "" H 3888 3750 50  0001 C CNN
F 3 "" H 3850 3900 50  0001 C CNN
	1    3850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 3750 3400 3750
Connection ~ 3400 3750
Wire Wire Line
	3400 3750 3100 3750
Text Label 3200 4050 2    50   ~ 0
GND
Wire Wire Line
	3200 4050 3400 4050
Connection ~ 3400 4050
Wire Wire Line
	3400 4050 3850 4050
Text Label 1950 4050 2    50   ~ 0
12V0
Text Label 1200 3650 2    50   ~ 0
12V0
Text HLabel 4950 5150 2    50   Output ~ 0
VBACKLIGHT_P
$Comp
L power-azonenberg:MIC2605 U65
U 1 1 617FA7F1
P 2150 5650
F 0 "U65" H 2475 6575 50  0000 C CNN
F 1 "MIC2605" H 2475 6484 50  0000 C CNN
F 2 "" H 2150 5650 50  0001 C CNN
F 3 "" H 2150 5650 50  0001 C CNN
	1    2150 5650
	1    0    0    -1  
$EndComp
Text HLabel 2000 4950 0    50   Input ~ 0
VBACKLIGHT_EN
Text Label 1000 5150 2    50   ~ 0
12V0
$Comp
L device:C C?
U 1 1 617FB390
P 1600 5400
AR Path="/5EDD7150/617FB390" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/617FB390" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/617FB390" Ref="C383"  Part="1" 
F 0 "C383" H 1700 5400 50  0000 L CNN
F 1 "0.1 uF 50V" H 1700 5500 50  0000 L CNN
F 2 "" H 1638 5250 50  0001 C CNN
F 3 "" H 1600 5400 50  0001 C CNN
	1    1600 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1600 5550 1600 5600
Wire Wire Line
	2000 5600 2000 5500
Text Label 1000 5600 2    50   ~ 0
GND
$Comp
L device:C C?
U 1 1 617FDC2D
P 3250 4800
AR Path="/5EDD7150/617FDC2D" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/617FDC2D" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/617FDC2D" Ref="C384"  Part="1" 
F 0 "C384" H 3365 4846 50  0000 L CNN
F 1 "0.1 uF 50V" H 3365 4755 50  0000 L CNN
F 2 "" H 3288 4650 50  0001 C CNN
F 3 "" H 3250 4800 50  0001 C CNN
	1    3250 4800
	1    0    0    -1  
$EndComp
Text Label 3250 4650 2    50   ~ 0
GND
Wire Wire Line
	2950 4950 3250 4950
$Comp
L device:R R?
U 1 1 617FFB09
P 3400 5250
AR Path="/5EDD7150/61296AEB/617FFB09" Ref="R?"  Part="1" 
AR Path="/5EDD7150/61580EA1/617FFB09" Ref="R188"  Part="1" 
F 0 "R188" V 3350 5000 50  0000 C CNN
F 1 "16.2K" V 3250 5250 50  0000 C CNN
F 2 "" V 3330 5250 50  0001 C CNN
F 3 "" H 3400 5250 50  0001 C CNN
	1    3400 5250
	0    1    1    0   
$EndComp
$Comp
L device:R R?
U 1 1 618000EA
P 3400 5350
AR Path="/5EDD7150/61296AEB/618000EA" Ref="R?"  Part="1" 
AR Path="/5EDD7150/61580EA1/618000EA" Ref="R189"  Part="1" 
F 0 "R189" V 3350 5100 50  0000 C CNN
F 1 "1K 1%" V 3500 5350 50  0000 C CNN
F 2 "" V 3330 5350 50  0001 C CNN
F 3 "" H 3400 5350 50  0001 C CNN
	1    3400 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	2950 5250 3250 5250
Wire Wire Line
	3250 5250 3250 5350
Connection ~ 3250 5250
Text Label 3550 5350 0    50   ~ 0
GND
$Comp
L device:C C?
U 1 1 61802C64
P 4350 5300
AR Path="/5EDD7150/61802C64" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/61802C64" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61802C64" Ref="C385"  Part="1" 
F 0 "C385" H 4465 5346 50  0000 L CNN
F 1 "2.2 uF 50V" H 4465 5255 50  0000 L CNN
F 2 "" H 4388 5150 50  0001 C CNN
F 3 "" H 4350 5300 50  0001 C CNN
	1    4350 5300
	1    0    0    -1  
$EndComp
Text Label 4350 5450 2    50   ~ 0
GND
$Comp
L device:C C?
U 1 1 61813406
P 1000 5300
AR Path="/5EDD7150/61813406" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/61813406" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61813406" Ref="C382"  Part="1" 
F 0 "C382" H 1115 5346 50  0000 L CNN
F 1 "2.2 uF 50V" H 1050 5200 50  0000 L CNN
F 2 "" H 1038 5150 50  0001 C CNN
F 3 "" H 1000 5300 50  0001 C CNN
	1    1000 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 5600 1600 5600
Connection ~ 2000 5600
Wire Wire Line
	1600 5250 2000 5250
Wire Wire Line
	1000 5450 1000 5600
Wire Wire Line
	1000 5600 1600 5600
Connection ~ 1600 5600
Wire Wire Line
	1000 5150 2000 5150
$Comp
L passive-azonenberg:INDUCTOR_PWROUT L7
U 1 1 6182EA24
P 2650 5900
F 0 "L7" V 2492 5900 40  0000 C CNN
F 1 "10 uH" V 2568 5900 40  0000 C CNN
F 2 "" H 2650 5900 60  0000 C CNN
F 3 "" H 2650 5900 60  0000 C CNN
	1    2650 5900
	0    1    1    0   
$EndComp
Text Label 2350 5900 2    50   ~ 0
12V0
Wire Wire Line
	2950 5900 2950 5450
Text Notes 3350 5850 0    50   ~ 0
Vout = 1.25V * (R1/R2 + 1)\nR2 <= 1K\nR1 = 16.2K
Text HLabel 3350 8900 2    50   Output ~ 0
VBACKLIGHT_N
$Comp
L power-azonenberg:TSCR42x U66
U 1 1 6186613D
P 2500 9250
F 0 "U66" H 2775 9825 50  0000 C CNN
F 1 "TSCR421" H 2775 9734 50  0000 C CNN
F 2 "" H 2500 9250 50  0001 C CNN
F 3 "" H 2500 9250 50  0001 C CNN
	1    2500 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 9100 3200 9000
Wire Wire Line
	3200 8900 3350 8900
Connection ~ 3200 8900
Connection ~ 3200 9000
Wire Wire Line
	3200 9000 3200 8900
Text HLabel 2350 8900 0    50   Input ~ 0
BACKLIGHT_PWM
Text Label 1600 9200 2    50   ~ 0
GND
$Comp
L device:R R?
U 1 1 61876F13
P 1950 9100
AR Path="/5EDD7150/61296AEB/61876F13" Ref="R?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61876F13" Ref="R190"  Part="1" 
F 0 "R190" V 1900 8850 50  0000 C CNN
F 1 "40" V 1950 9100 50  0000 C CNN
F 2 "" V 1880 9100 50  0001 C CNN
F 3 "" H 1950 9100 50  0001 C CNN
	1    1950 9100
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 9100 2350 9100
Wire Wire Line
	1800 9100 1600 9100
Text Notes 1500 8550 0    50   ~ 0
We want a total of ~~40 mA\nBacklight Vf is 17.4 - 19.8V @ 20 mA\n\nRext = Vdrop / (Iout - (Vdrop / Rint))\n\n40 ohms gives 33.75 mA\n\nMax 1W inst power, 150C, 225 C/W\nWorst case Vf = 17.4V, dropping 4.1V = 138 mW, 31.05C rise\nBest case 19.8V, dropping 1.7V = 58 mW, 13C rise
Wire Wire Line
	1600 9200 1600 9100
Wire Wire Line
	1600 9200 2350 9200
$Comp
L power-azonenberg:RPM-2.0 U67
U 1 1 6190ED1B
P 6700 3400
F 0 "U67" H 7125 5875 50  0000 C CNN
F 1 "RPM5.0-2.0" H 7125 5784 50  0000 C CNN
F 2 "" H 6700 3400 50  0001 C CNN
F 3 "" H 6700 3400 50  0001 C CNN
	1    6700 3400
	1    0    0    -1  
$EndComp
Text Label 5900 1450 2    50   ~ 0
12V0
Wire Wire Line
	6550 1450 6550 1550
Wire Wire Line
	7700 1450 7700 1550
$Comp
L device:R R?
U 1 1 61914A59
P 7850 900
AR Path="/5EDD7150/61296AEB/61914A59" Ref="R?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61914A59" Ref="R192"  Part="1" 
F 0 "R192" V 7800 650 50  0000 C CNN
F 1 "1K" V 7850 900 50  0000 C CNN
F 2 "" V 7780 900 50  0001 C CNN
F 3 "" H 7850 900 50  0001 C CNN
	1    7850 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	7700 900  7700 1150
Text HLabel 8000 900  2    50   Input ~ 0
3V3_SB
$Comp
L device:C C?
U 1 1 6191D244
P 8100 1700
AR Path="/5EDD7150/6191D244" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/6191D244" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/6191D244" Ref="C387"  Part="1" 
F 0 "C387" H 8215 1746 50  0000 L CNN
F 1 "22 uF" H 8215 1655 50  0000 L CNN
F 2 "" H 8138 1550 50  0001 C CNN
F 3 "" H 8100 1700 50  0001 C CNN
	1    8100 1700
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 6191DAC5
P 8750 1700
AR Path="/5EDD7150/6191DAC5" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/6191DAC5" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/6191DAC5" Ref="C388"  Part="1" 
F 0 "C388" H 8865 1746 50  0000 L CNN
F 1 "22 uF" H 8865 1655 50  0000 L CNN
F 2 "" H 8788 1550 50  0001 C CNN
F 3 "" H 8750 1700 50  0001 C CNN
	1    8750 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 1550 8750 1550
Connection ~ 8100 1550
Wire Wire Line
	8100 1550 7700 1550
Connection ~ 8750 1550
Wire Wire Line
	8750 1550 8100 1550
Text Label 7950 1850 2    50   ~ 0
GND
Wire Wire Line
	7950 1850 8100 1850
Connection ~ 8100 1850
Wire Wire Line
	8100 1850 8750 1850
$Comp
L device:C C?
U 1 1 619266F4
P 5900 1600
AR Path="/5EDD7150/619266F4" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/619266F4" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/619266F4" Ref="C386"  Part="1" 
F 0 "C386" H 6015 1646 50  0000 L CNN
F 1 "22 uF 25V" H 6015 1555 50  0000 L CNN
F 2 "" H 5938 1450 50  0001 C CNN
F 3 "" H 5900 1600 50  0001 C CNN
	1    5900 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 1450 5900 1450
Connection ~ 6550 1450
Text Label 5900 1750 2    50   ~ 0
GND
Text Label 6550 1950 2    50   ~ 0
GND
Wire Wire Line
	6550 1950 6550 2050
Connection ~ 6550 2050
Wire Wire Line
	6550 2050 6550 2150
Connection ~ 6550 2150
Wire Wire Line
	6550 2150 6550 2250
Connection ~ 6550 2250
Wire Wire Line
	6550 2250 6550 2350
Connection ~ 6550 2350
Wire Wire Line
	6550 2350 6550 2450
Connection ~ 6550 2450
Wire Wire Line
	6550 2450 6550 2550
Connection ~ 6550 2550
Wire Wire Line
	6550 2550 6550 2650
Connection ~ 6550 2650
Wire Wire Line
	6550 2650 6550 2750
Connection ~ 6550 2750
Wire Wire Line
	6550 2750 6550 2850
Connection ~ 6550 2850
Wire Wire Line
	6550 2850 6550 2950
Connection ~ 6550 2950
Wire Wire Line
	6550 2950 6550 3050
Connection ~ 6550 3050
Wire Wire Line
	6550 3050 6550 3150
Connection ~ 6550 3150
Wire Wire Line
	6550 3150 6550 3250
Connection ~ 6550 3250
Wire Wire Line
	6550 3250 6550 3350
NoConn ~ 6550 1250
NoConn ~ 6550 1150
$Comp
L power-azonenberg:LM27761 U68
U 1 1 6195A9FA
P 11600 1800
F 0 "U68" H 12000 2675 50  0000 C CNN
F 1 "LM27761" H 12000 2584 50  0000 C CNN
F 2 "" H 11600 1800 50  0001 C CNN
F 3 "" H 11600 1800 50  0001 C CNN
	1    11600 1800
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 61966C1F
P 10800 1300
AR Path="/5EDD7150/61966C1F" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/61966C1F" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61966C1F" Ref="C389"  Part="1" 
F 0 "C389" H 10915 1346 50  0000 L CNN
F 1 "4.7 uF" H 10915 1255 50  0000 L CNN
F 2 "" H 10838 1150 50  0001 C CNN
F 3 "" H 10800 1300 50  0001 C CNN
	1    10800 1300
	1    0    0    -1  
$EndComp
Text Label 10800 1150 2    50   ~ 0
5V0
Wire Wire Line
	10800 1150 11400 1150
Wire Wire Line
	10800 1450 11400 1450
Wire Wire Line
	11400 1450 11400 1350
Connection ~ 11400 1350
Wire Wire Line
	11400 1350 11400 1250
Text Label 10800 1450 2    50   ~ 0
GND
$Comp
L device:C C?
U 1 1 6196C9E2
P 13550 1300
AR Path="/5EDD7150/6196C9E2" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/6196C9E2" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/6196C9E2" Ref="C392"  Part="1" 
F 0 "C392" H 13665 1346 50  0000 L CNN
F 1 "4.7 uF" H 13665 1255 50  0000 L CNN
F 2 "" H 13588 1150 50  0001 C CNN
F 3 "" H 13550 1300 50  0001 C CNN
	1    13550 1300
	1    0    0    -1  
$EndComp
$Comp
L device:C C?
U 1 1 6196D103
P 13050 1400
AR Path="/5EDD7150/6196D103" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/6196D103" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/6196D103" Ref="C391"  Part="1" 
F 0 "C391" H 13165 1446 50  0000 L CNN
F 1 "4.7 uF" H 13165 1355 50  0000 L CNN
F 2 "" H 13088 1250 50  0001 C CNN
F 3 "" H 13050 1400 50  0001 C CNN
	1    13050 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	13550 1150 12600 1150
Wire Wire Line
	12600 1250 13050 1250
Wire Wire Line
	13050 1550 13550 1550
Wire Wire Line
	13550 1550 13550 1450
Text Label 13550 1550 0    50   ~ 0
GND
$Comp
L device:C C?
U 1 1 61979949
P 12600 1700
AR Path="/5EDD7150/61979949" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/61979949" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61979949" Ref="C390"  Part="1" 
F 0 "C390" H 12715 1746 50  0000 L CNN
F 1 "1 uF" H 12715 1655 50  0000 L CNN
F 2 "" H 12638 1550 50  0001 C CNN
F 3 "" H 12600 1700 50  0001 C CNN
	1    12600 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	12600 1450 12900 1450
Wire Wire Line
	12900 1450 12900 1850
Wire Wire Line
	12900 1850 12600 1850
$Comp
L device:R R?
U 1 1 61982161
P 11900 2050
AR Path="/5EDD7150/61296AEB/61982161" Ref="R?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61982161" Ref="R193"  Part="1" 
F 0 "R193" V 11800 2050 50  0000 C CNN
F 1 "289K" V 11900 2050 50  0000 C CNN
F 2 "" V 11830 2050 50  0001 C CNN
F 3 "" H 11900 2050 50  0001 C CNN
	1    11900 2050
	0    1    1    0   
$EndComp
Text Label 11400 1550 2    50   ~ 0
5V0_N_FB
Text Label 11750 2050 2    50   ~ 0
5V0_N_FB
$Comp
L device:R R?
U 1 1 619833B5
P 11900 2150
AR Path="/5EDD7150/61296AEB/619833B5" Ref="R?"  Part="1" 
AR Path="/5EDD7150/61580EA1/619833B5" Ref="R194"  Part="1" 
F 0 "R194" V 12000 2150 50  0000 C CNN
F 1 "100K" V 11900 2150 50  0000 C CNN
F 2 "" V 11830 2150 50  0001 C CNN
F 3 "" H 11900 2150 50  0001 C CNN
	1    11900 2150
	0    1    1    0   
$EndComp
Wire Wire Line
	11750 2050 11750 2150
Text Label 12050 2050 0    50   ~ 0
5V0_N
Text Label 12050 2150 0    50   ~ 0
GND
Text Notes 11800 2800 0    50   ~ 0
Target -4.75V to provide LDO headroom\nWe don't need exactly -5.0\n\nVout =-1.22 * (R1+R2)/R2, R2 >= 50K\nR2 = 100K\nR1 = 289K
$Comp
L passive-azonenberg:R-4TERM R200
U 1 1 61A4367F
P 4150 1300
F 0 "R200" V 3864 1300 50  0000 C CNN
F 1 "LVK12R012FER" V 3955 1300 50  0000 C CNN
F 2 "" H 4150 1300 60  0000 C CNN
F 3 "" H 4150 1300 60  0000 C CNN
	1    4150 1300
	0    1    1    0   
$EndComp
Connection ~ 3850 1350
Text Label 3100 1250 0    50   ~ 0
2V5
Text Label 3850 950  0    50   ~ 0
2V5_SENSE_HI
Wire Wire Line
	3850 950  3850 1250
Text Label 4450 1250 0    50   ~ 0
2V5_SENSE_LO
Text Label 13050 3850 0    50   ~ 0
2V5_SENSE_HI
Text Label 13050 3950 0    50   ~ 0
2V5_SENSE_LO
$Comp
L special-azonenberg:INA226 U?
U 1 1 61A68DDA
P 12300 4050
AR Path="/5EDD723A/5F0BA462/61A68DDA" Ref="U?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61A68DDA" Ref="U74"  Part="1" 
F 0 "U74" H 12200 3700 60  0000 C CNN
F 1 "INA233" H 12600 3700 60  0000 C CNN
F 2 "" H 12300 4050 60  0000 C CNN
F 3 "" H 12300 4050 60  0000 C CNN
	1    12300 4050
	1    0    0    -1  
$EndComp
Text Label 13050 4150 0    50   ~ 0
GND
Text Label 13050 4250 0    50   ~ 0
3V3_SB
Text Label 11500 3850 2    50   ~ 0
GND
Text Label 11500 3950 2    50   ~ 0
GND
Text HLabel 11500 4150 0    50   BiDi ~ 0
I2C_SDA
Text HLabel 11500 4250 0    50   Input ~ 0
I2C_SCL
Text Notes 11800 4450 0    50   ~ 0
8'h80
Text Label 13050 4050 0    50   ~ 0
2V5
$Comp
L device:C C?
U 1 1 61A7193D
P 14250 4000
AR Path="/5EDD7150/61A7193D" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/61A7193D" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61A7193D" Ref="C398"  Part="1" 
F 0 "C398" H 14365 4046 50  0000 L CNN
F 1 "0.47 uF" H 14365 3955 50  0000 L CNN
F 2 "" H 14288 3850 50  0001 C CNN
F 3 "" H 14250 4000 50  0001 C CNN
	1    14250 4000
	1    0    0    -1  
$EndComp
Text Label 14250 3850 2    50   ~ 0
3V3_SB
Text Label 14250 4150 2    50   ~ 0
GND
Text Label 3100 2450 0    50   ~ 0
2V0
$Comp
L passive-azonenberg:R-4TERM R201
U 1 1 61A7A70D
P 4150 2500
F 0 "R201" V 3864 2500 50  0000 C CNN
F 1 "LVK12R012FER" V 3955 2500 50  0000 C CNN
F 2 "" H 4150 2500 60  0000 C CNN
F 3 "" H 4150 2500 60  0000 C CNN
	1    4150 2500
	0    1    1    0   
$EndComp
Connection ~ 3850 2550
Text Label 4450 2450 0    50   ~ 0
2V0_SENSE_LO
Text Label 3850 2100 0    50   ~ 0
2V0_SENSE_HI
Wire Wire Line
	3850 2100 3850 2450
Text Label 13050 4700 0    50   ~ 0
2V0_SENSE_HI
Text Label 13050 4800 0    50   ~ 0
2V0_SENSE_LO
$Comp
L special-azonenberg:INA226 U?
U 1 1 61A80AFC
P 12300 4900
AR Path="/5EDD723A/5F0BA462/61A80AFC" Ref="U?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61A80AFC" Ref="U75"  Part="1" 
F 0 "U75" H 12200 4550 60  0000 C CNN
F 1 "INA233" H 12600 4550 60  0000 C CNN
F 2 "" H 12300 4900 60  0000 C CNN
F 3 "" H 12300 4900 60  0000 C CNN
	1    12300 4900
	1    0    0    -1  
$EndComp
Text Label 13050 5000 0    50   ~ 0
GND
Text Label 13050 5100 0    50   ~ 0
3V3_SB
Text Label 11500 4700 2    50   ~ 0
GND
Text Label 11500 4800 2    50   ~ 0
3V3_SB
Text Notes 11800 5300 0    50   ~ 0
8'h82
Text Label 13050 4900 0    50   ~ 0
2V0
$Comp
L device:C C?
U 1 1 61A80B0F
P 14250 4850
AR Path="/5EDD7150/61A80B0F" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/61A80B0F" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61A80B0F" Ref="C399"  Part="1" 
F 0 "C399" H 14365 4896 50  0000 L CNN
F 1 "0.47 uF" H 14365 4805 50  0000 L CNN
F 2 "" H 14288 4700 50  0001 C CNN
F 3 "" H 14250 4850 50  0001 C CNN
	1    14250 4850
	1    0    0    -1  
$EndComp
Text Label 14250 4700 2    50   ~ 0
3V3_SB
Text Label 14250 5000 2    50   ~ 0
GND
Text Label 11500 5000 2    50   ~ 0
I2C_SDA
Text Label 11500 5100 2    50   ~ 0
I2C_SCL
$Comp
L passive-azonenberg:R-4TERM R202
U 1 1 61A96FB2
P 4150 3700
F 0 "R202" V 3864 3700 50  0000 C CNN
F 1 "LVK12R012FER" V 3955 3700 50  0000 C CNN
F 2 "" H 4150 3700 60  0000 C CNN
F 3 "" H 4150 3700 60  0000 C CNN
	1    4150 3700
	0    1    1    0   
$EndComp
Connection ~ 3850 3750
Text Label 4450 3650 0    50   ~ 0
3V3_SENSE_LO
Text Label 3850 3300 0    50   ~ 0
3V3_SENSE_HI
Wire Wire Line
	3850 3300 3850 3650
Text Label 3100 3650 0    50   ~ 0
3V3
Text Label 13050 5550 0    50   ~ 0
3V3_SENSE_HI
Text Label 13050 5650 0    50   ~ 0
3V3_SENSE_LO
$Comp
L special-azonenberg:INA226 U?
U 1 1 61A9B18F
P 12300 5750
AR Path="/5EDD723A/5F0BA462/61A9B18F" Ref="U?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61A9B18F" Ref="U76"  Part="1" 
F 0 "U76" H 12200 5400 60  0000 C CNN
F 1 "INA233" H 12600 5400 60  0000 C CNN
F 2 "" H 12300 5750 60  0000 C CNN
F 3 "" H 12300 5750 60  0000 C CNN
	1    12300 5750
	1    0    0    -1  
$EndComp
Text Label 13050 5850 0    50   ~ 0
GND
Text Label 13050 5950 0    50   ~ 0
3V3_SB
Text Label 11500 5550 2    50   ~ 0
GND
Text Label 11500 5650 2    50   ~ 0
I2C_SDA
Text Notes 11800 6150 0    50   ~ 0
8'h84
Text Label 13050 5750 0    50   ~ 0
3V3
$Comp
L device:C C?
U 1 1 61A9B1A0
P 14250 5700
AR Path="/5EDD7150/61A9B1A0" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/61A9B1A0" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61A9B1A0" Ref="C400"  Part="1" 
F 0 "C400" H 14365 5746 50  0000 L CNN
F 1 "0.47 uF" H 14365 5655 50  0000 L CNN
F 2 "" H 14288 5550 50  0001 C CNN
F 3 "" H 14250 5700 50  0001 C CNN
	1    14250 5700
	1    0    0    -1  
$EndComp
Text Label 14250 5550 2    50   ~ 0
3V3_SB
Text Label 14250 5850 2    50   ~ 0
GND
Text Label 11500 5850 2    50   ~ 0
I2C_SDA
Text Label 11500 5950 2    50   ~ 0
I2C_SCL
$Comp
L passive-azonenberg:R-4TERM R203
U 1 1 61AA4B58
P 4650 5100
F 0 "R203" V 4364 5100 50  0000 C CNN
F 1 "LVK12R100CER" V 4455 5100 50  0000 C CNN
F 2 "" H 4650 5100 60  0000 C CNN
F 3 "" H 4650 5100 60  0000 C CNN
	1    4650 5100
	0    1    1    0   
$EndComp
Connection ~ 4350 5150
Text Label 4350 4650 0    50   ~ 0
BACKLIGHT_SENSE_HI
Wire Wire Line
	4350 4650 4350 5050
Text Label 4950 5050 0    50   ~ 0
BACKLIGHT_SENSE_LO
Wire Wire Line
	2950 5150 4350 5150
Text Label 3550 5250 0    50   ~ 0
VBACKLIGHT_P
Text Label 13050 6400 0    50   ~ 0
BACKLIGHT_SENSE_HI
Text Label 13050 6500 0    50   ~ 0
BACKLIGHT_SENSE_LO
$Comp
L special-azonenberg:INA226 U?
U 1 1 61AB3874
P 12300 6600
AR Path="/5EDD723A/5F0BA462/61AB3874" Ref="U?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61AB3874" Ref="U77"  Part="1" 
F 0 "U77" H 12200 6250 60  0000 C CNN
F 1 "INA233" H 12600 6250 60  0000 C CNN
F 2 "" H 12300 6600 60  0000 C CNN
F 3 "" H 12300 6600 60  0000 C CNN
	1    12300 6600
	1    0    0    -1  
$EndComp
Text Label 13050 6700 0    50   ~ 0
GND
Text Label 13050 6800 0    50   ~ 0
3V3_SB
Text Label 11500 6400 2    50   ~ 0
GND
Text Label 11500 6500 2    50   ~ 0
I2C_SCL
Text Notes 11800 7000 0    50   ~ 0
8'h86
Text Label 13050 6600 0    50   ~ 0
VBACKLIGHT_P
$Comp
L device:C C?
U 1 1 61AB3885
P 14250 6550
AR Path="/5EDD7150/61AB3885" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/61AB3885" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61AB3885" Ref="C401"  Part="1" 
F 0 "C401" H 14365 6596 50  0000 L CNN
F 1 "0.47 uF" H 14365 6505 50  0000 L CNN
F 2 "" H 14288 6400 50  0001 C CNN
F 3 "" H 14250 6550 50  0001 C CNN
	1    14250 6550
	1    0    0    -1  
$EndComp
Text Label 14250 6400 2    50   ~ 0
3V3_SB
Text Label 14250 6700 2    50   ~ 0
GND
Text Label 11500 6700 2    50   ~ 0
I2C_SDA
Text Label 11500 6800 2    50   ~ 0
I2C_SCL
$Comp
L passive-azonenberg:R-4TERM R204
U 1 1 61ABC39B
P 9200 1500
F 0 "R204" V 8914 1500 50  0000 C CNN
F 1 "LVK12R100CER" V 9005 1500 50  0000 C CNN
F 2 "" H 9200 1500 60  0000 C CNN
F 3 "" H 9200 1500 60  0000 C CNN
	1    9200 1500
	0    1    1    0   
$EndComp
Connection ~ 7700 1550
Text Label 7700 1350 0    50   ~ 0
5V0
Text Label 8900 1050 0    50   ~ 0
5V0_SENSE_HI
Wire Wire Line
	8900 1050 8900 1450
Text Label 9500 1450 0    50   ~ 0
5V0_SENSE_LO
Text Label 13050 7350 0    50   ~ 0
5V0_SENSE_LO
Text Label 13050 7250 0    50   ~ 0
5V0_SENSE_HI
$Comp
L special-azonenberg:INA226 U?
U 1 1 61AC7A5F
P 12300 7450
AR Path="/5EDD723A/5F0BA462/61AC7A5F" Ref="U?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61AC7A5F" Ref="U78"  Part="1" 
F 0 "U78" H 12200 7100 60  0000 C CNN
F 1 "INA233" H 12600 7100 60  0000 C CNN
F 2 "" H 12300 7450 60  0000 C CNN
F 3 "" H 12300 7450 60  0000 C CNN
	1    12300 7450
	1    0    0    -1  
$EndComp
Text Label 13050 7550 0    50   ~ 0
GND
Text Label 13050 7650 0    50   ~ 0
3V3_SB
Text Label 11500 7350 2    50   ~ 0
GND
Text Label 11500 7250 2    50   ~ 0
3V3_SB
Text Notes 11800 7850 0    50   ~ 0
8'h88
Text Label 13050 7450 0    50   ~ 0
5V0
$Comp
L device:C C?
U 1 1 61AC7A70
P 14250 7400
AR Path="/5EDD7150/61AC7A70" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61296AEB/61AC7A70" Ref="C?"  Part="1" 
AR Path="/5EDD7150/61580EA1/61AC7A70" Ref="C402"  Part="1" 
F 0 "C402" H 14365 7446 50  0000 L CNN
F 1 "0.47 uF" H 14365 7355 50  0000 L CNN
F 2 "" H 14288 7250 50  0001 C CNN
F 3 "" H 14250 7400 50  0001 C CNN
	1    14250 7400
	1    0    0    -1  
$EndComp
Text Label 14250 7250 2    50   ~ 0
3V3_SB
Text Label 14250 7550 2    50   ~ 0
GND
Text Label 11500 7550 2    50   ~ 0
I2C_SDA
Text Label 11500 7650 2    50   ~ 0
I2C_SCL
Text Notes 9950 3950 0    50   ~ 0
12 mR = 12 mV @ 1A\n208.333 uA/LSB
Text Notes 9950 4800 0    50   ~ 0
12 mR = 6 mV @ 0.5A\n208.333 uA/LSB
Text Notes 9950 5650 0    50   ~ 0
12 mR = 36 mV @ 3A\n208.333 uA/LSB
Text Notes 9950 6500 0    50   ~ 0
100 mR = 4 mV @ 40 mA\n25 uA/LSB
Text Notes 9950 7350 0    50   ~ 0
100 mR = 10 mV @ 100 mA\n25 uA/LSB
Text Notes 11800 3650 0    50   ~ 0
16 bits signed, 81.92 mV full scale\n2.5 uV/LSB
NoConn ~ 11500 4050
NoConn ~ 11500 4900
NoConn ~ 11500 5750
NoConn ~ 11500 6600
NoConn ~ 11500 7450
$EndSCHEMATC
