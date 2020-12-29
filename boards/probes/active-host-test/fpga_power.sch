EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L xilinx7:xc7s6cpga196 U?
U 4 1 5FFDD5F1
P 3500 1500
AR Path="/5FFDD5F1" Ref="U?"  Part="4" 
AR Path="/5FFD8F4C/5FFDD5F1" Ref="U?"  Part="4" 
F 0 "U?" H 4331 1053 60  0000 L CNN
F 1 "xc7s6cpga196" H 4331 947 60  0000 L CNN
F 2 "" H 3700 1550 60  0001 L CNN
F 3 "" H 3700 1350 60  0001 L CNN
F 4 "xc7s6cpga196" H 3700 1250 60  0001 L CNN "desc"
	4    3500 1500
	1    0    0    -1  
$EndComp
Text Notes 900  800  0    98   ~ 0
FPGA-Specific Power Supplies and Decoupling
Wire Wire Line
	3500 1500 2800 1500
Wire Wire Line
	2800 1500 2800 1800
$Comp
L power:GND #PWR?
U 1 1 6000A09D
P 2800 1800
F 0 "#PWR?" H 2800 1550 50  0001 C CNN
F 1 "GND" H 2805 1627 50  0000 C CNN
F 2 "" H 2800 1800 50  0001 C CNN
F 3 "" H 2800 1800 50  0001 C CNN
	1    2800 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 2300 3300 2300
Wire Wire Line
	3500 2400 3300 2400
Wire Wire Line
	3500 2500 3300 2500
Text Label 3300 2300 2    50   ~ 0
VCCAUX
Text Label 3300 2400 2    50   ~ 0
VCCBRAM
Text Label 3300 2500 2    50   ~ 0
VCCINT
Text Notes 8450 1500 0    50   ~ 0
Power Supply Voltage Levels (All +- 50mV)\nVCCAUX - 1.8V\nVCCBRAM - 1V\nVCCINT - 1V\n\nSee DS189 for all power supply specs
Text Notes 1250 3500 0    50   ~ 0
VCCINT Bypass Caps
$Comp
L Device:C_Small C?
U 1 1 6001B157
P 1200 3650
F 0 "C?" H 1292 3696 50  0000 L CNN
F 1 "100u" H 1292 3605 50  0000 L CNN
F 2 "" H 1200 3650 50  0001 C CNN
F 3 "~" H 1200 3650 50  0001 C CNN
	1    1200 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6001B7EB
P 1550 3650
F 0 "C?" H 1642 3696 50  0000 L CNN
F 1 "4u7" H 1642 3605 50  0000 L CNN
F 2 "" H 1550 3650 50  0001 C CNN
F 3 "~" H 1550 3650 50  0001 C CNN
	1    1550 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6001BD35
P 1900 3650
F 0 "C?" H 1992 3696 50  0000 L CNN
F 1 "0u47" H 1992 3605 50  0000 L CNN
F 2 "" H 1900 3650 50  0001 C CNN
F 3 "~" H 1900 3650 50  0001 C CNN
	1    1900 3650
	1    0    0    -1  
$EndComp
Text Notes 1250 4200 0    50   ~ 0
VCCBRAM Bypass Caps\n
$Comp
L Device:C_Small C?
U 1 1 60023EC4
P 1550 4350
F 0 "C?" H 1642 4396 50  0000 L CNN
F 1 "4u7" H 1642 4305 50  0000 L CNN
F 2 "" H 1550 4350 50  0001 C CNN
F 3 "~" H 1550 4350 50  0001 C CNN
	1    1550 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60023ECA
P 1900 4350
F 0 "C?" H 1992 4396 50  0000 L CNN
F 1 "0u47" H 1992 4305 50  0000 L CNN
F 2 "" H 1900 4350 50  0001 C CNN
F 3 "~" H 1900 4350 50  0001 C CNN
	1    1900 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60024CFE
P 1200 4350
F 0 "C?" H 1292 4396 50  0000 L CNN
F 1 "47u" H 1292 4305 50  0000 L CNN
F 2 "" H 1200 4350 50  0001 C CNN
F 3 "~" H 1200 4350 50  0001 C CNN
	1    1200 4350
	1    0    0    -1  
$EndComp
Text Notes 1250 4900 0    50   ~ 0
VCCAUX Bypass Caps\n
$Comp
L Device:C_Small C?
U 1 1 60026E1E
P 1550 5050
F 0 "C?" H 1642 5096 50  0000 L CNN
F 1 "4u7" H 1642 5005 50  0000 L CNN
F 2 "" H 1550 5050 50  0001 C CNN
F 3 "~" H 1550 5050 50  0001 C CNN
	1    1550 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60026E24
P 1900 5050
F 0 "C?" H 1992 5096 50  0000 L CNN
F 1 "0u47" H 1992 5005 50  0000 L CNN
F 2 "" H 1900 5050 50  0001 C CNN
F 3 "~" H 1900 5050 50  0001 C CNN
	1    1900 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60026E2A
P 1200 5050
F 0 "C?" H 1292 5096 50  0000 L CNN
F 1 "47u" H 1292 5005 50  0000 L CNN
F 2 "" H 1200 5050 50  0001 C CNN
F 3 "~" H 1200 5050 50  0001 C CNN
	1    1200 5050
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 60026F94
P 2250 5050
F 0 "C?" H 2342 5096 50  0000 L CNN
F 1 "0u47" H 2342 5005 50  0000 L CNN
F 2 "" H 2250 5050 50  0001 C CNN
F 3 "~" H 2250 5050 50  0001 C CNN
	1    2250 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 3550 1550 3550
Wire Wire Line
	1550 3550 1200 3550
Connection ~ 1550 3550
Wire Wire Line
	1200 3750 1550 3750
Wire Wire Line
	1550 3750 1900 3750
Connection ~ 1550 3750
Wire Wire Line
	1900 3750 1900 3850
Connection ~ 1900 3750
Wire Wire Line
	1200 3550 1200 3450
Connection ~ 1200 3550
Text Label 1200 3450 2    50   ~ 0
VCCINT
Wire Wire Line
	1200 4150 1200 4250
Wire Wire Line
	1200 4250 1550 4250
Connection ~ 1200 4250
Wire Wire Line
	1550 4250 1900 4250
Connection ~ 1550 4250
Wire Wire Line
	1200 4450 1550 4450
Wire Wire Line
	1550 4450 1900 4450
Connection ~ 1550 4450
Wire Wire Line
	1900 4450 1900 4550
Connection ~ 1900 4450
Text Label 1200 4150 2    50   ~ 0
VCCBRAM
Text Label 1200 4850 2    50   ~ 0
VCCAUX
Wire Wire Line
	1200 4850 1200 4950
Wire Wire Line
	1200 4950 1550 4950
Connection ~ 1200 4950
Wire Wire Line
	1550 4950 1900 4950
Connection ~ 1550 4950
Wire Wire Line
	1900 4950 2250 4950
Connection ~ 1900 4950
Wire Wire Line
	1200 5150 1550 5150
Wire Wire Line
	1550 5150 1900 5150
Connection ~ 1550 5150
Wire Wire Line
	1900 5150 2250 5150
Connection ~ 1900 5150
Wire Wire Line
	2250 5150 2250 5250
Connection ~ 2250 5150
$Comp
L power:GND #PWR?
U 1 1 6003712A
P 1900 4550
F 0 "#PWR?" H 1900 4300 50  0001 C CNN
F 1 "GND" H 1905 4377 50  0000 C CNN
F 2 "" H 1900 4550 50  0001 C CNN
F 3 "" H 1900 4550 50  0001 C CNN
	1    1900 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60037656
P 2250 5250
F 0 "#PWR?" H 2250 5000 50  0001 C CNN
F 1 "GND" H 2255 5077 50  0000 C CNN
F 2 "" H 2250 5250 50  0001 C CNN
F 3 "" H 2250 5250 50  0001 C CNN
	1    2250 5250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60039C35
P 1900 3850
F 0 "#PWR?" H 1900 3600 50  0001 C CNN
F 1 "GND" H 1905 3677 50  0000 C CNN
F 2 "" H 1900 3850 50  0001 C CNN
F 3 "" H 1900 3850 50  0001 C CNN
	1    1900 3850
	1    0    0    -1  
$EndComp
Text Notes 800  3300 0    79   ~ 0
Core Bypassing
Wire Notes Line
	2600 3300 2600 5500
Wire Notes Line
	2600 5500 800  5500
Wire Notes Line
	800  5500 800  3300
Wire Notes Line
	800  3300 2600 3300
Text Notes 2650 3300 0    79   ~ 0
IO Bypassing
Text Notes 800  5500 0    50   ~ 0
Values from UG483\n
$Comp
L Device:C_Small C?
U 1 1 60045FC0
P 2800 3750
F 0 "C?" H 2892 3796 50  0000 L CNN
F 1 "47u" H 2892 3705 50  0000 L CNN
F 2 "" H 2800 3750 50  0001 C CNN
F 3 "~" H 2800 3750 50  0001 C CNN
	1    2800 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6004854F
P 3150 3750
F 0 "C?" H 3242 3796 50  0000 L CNN
F 1 "4u7" H 3242 3705 50  0000 L CNN
F 2 "" H 3150 3750 50  0001 C CNN
F 3 "~" H 3150 3750 50  0001 C CNN
	1    3150 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6004988F
P 3850 3750
F 0 "C?" H 3942 3796 50  0000 L CNN
F 1 "0u47" H 3942 3705 50  0000 L CNN
F 2 "" H 3850 3750 50  0001 C CNN
F 3 "~" H 3850 3750 50  0001 C CNN
	1    3850 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6004AFB7
P 3500 3750
F 0 "C?" H 3592 3796 50  0000 L CNN
F 1 "4u7" H 3592 3705 50  0000 L CNN
F 2 "" H 3500 3750 50  0001 C CNN
F 3 "~" H 3500 3750 50  0001 C CNN
	1    3500 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6004B730
P 4200 3750
F 0 "C?" H 4292 3796 50  0000 L CNN
F 1 "0u47" H 4292 3705 50  0000 L CNN
F 2 "" H 4200 3750 50  0001 C CNN
F 3 "~" H 4200 3750 50  0001 C CNN
	1    4200 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6004C205
P 4550 3750
F 0 "C?" H 4642 3796 50  0000 L CNN
F 1 "0u47" H 4642 3705 50  0000 L CNN
F 2 "" H 4550 3750 50  0001 C CNN
F 3 "~" H 4550 3750 50  0001 C CNN
	1    4550 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 6004C20B
P 4900 3750
F 0 "C?" H 4992 3796 50  0000 L CNN
F 1 "0u47" H 4992 3705 50  0000 L CNN
F 2 "" H 4900 3750 50  0001 C CNN
F 3 "~" H 4900 3750 50  0001 C CNN
	1    4900 3750
	1    0    0    -1  
$EndComp
Text Notes 2750 4100 0    50   ~ 0
One set per IO bank\n
Wire Wire Line
	2800 3650 3150 3650
Connection ~ 3150 3650
Wire Wire Line
	3150 3650 3500 3650
Connection ~ 3500 3650
Wire Wire Line
	3500 3650 3850 3650
Connection ~ 3850 3650
Wire Wire Line
	3850 3650 4200 3650
Connection ~ 4200 3650
Wire Wire Line
	4200 3650 4550 3650
Connection ~ 4550 3650
Wire Wire Line
	4550 3650 4900 3650
Wire Wire Line
	2800 3650 2800 3550
Connection ~ 2800 3650
Wire Wire Line
	2800 3850 3150 3850
Connection ~ 3150 3850
Wire Wire Line
	3150 3850 3500 3850
Connection ~ 3500 3850
Wire Wire Line
	3500 3850 3850 3850
Connection ~ 3850 3850
Wire Wire Line
	3850 3850 4200 3850
Connection ~ 4200 3850
Wire Wire Line
	4200 3850 4550 3850
Connection ~ 4550 3850
Wire Wire Line
	4550 3850 4900 3850
Wire Wire Line
	4900 3850 4900 3950
Connection ~ 4900 3850
$Comp
L power:GND #PWR?
U 1 1 60051C19
P 4900 3950
F 0 "#PWR?" H 4900 3700 50  0001 C CNN
F 1 "GND" H 4905 3777 50  0000 C CNN
F 2 "" H 4900 3950 50  0001 C CNN
F 3 "" H 4900 3950 50  0001 C CNN
	1    4900 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 60054D54
P 2800 3550
F 0 "#PWR?" H 2800 3400 50  0001 C CNN
F 1 "+3V3" H 2815 3723 50  0000 C CNN
F 2 "" H 2800 3550 50  0001 C CNN
F 3 "" H 2800 3550 50  0001 C CNN
	1    2800 3550
	1    0    0    -1  
$EndComp
Wire Notes Line
	2650 3300 5200 3300
Wire Notes Line
	5200 3300 5200 4200
Wire Notes Line
	5200 4200 2650 4200
Wire Notes Line
	2650 4200 2650 3300
$Comp
L project:AP3428A U?
U 1 1 6007B2DE
P 7900 3050
F 0 "U?" H 7900 3325 50  0000 C CNN
F 1 "AP3428A" H 7900 3234 50  0000 C CNN
F 2 "" H 7650 3050 50  0001 C CNN
F 3 "" H 7650 3050 50  0001 C CNN
	1    7900 3050
	1    0    0    -1  
$EndComp
$Comp
L project:AP3428A U?
U 1 1 6007CB18
P 7900 4300
F 0 "U?" H 7900 4575 50  0000 C CNN
F 1 "AP3428A" H 7900 4484 50  0000 C CNN
F 2 "" H 7650 4300 50  0001 C CNN
F 3 "" H 7650 4300 50  0001 C CNN
	1    7900 4300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60082C34
P 7900 3500
F 0 "#PWR?" H 7900 3250 50  0001 C CNN
F 1 "GND" H 7905 3327 50  0000 C CNN
F 2 "" H 7900 3500 50  0001 C CNN
F 3 "" H 7900 3500 50  0001 C CNN
	1    7900 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 3350 7900 3500
Wire Wire Line
	7900 4600 7900 4750
$Comp
L power:GND #PWR?
U 1 1 60084D4B
P 7900 4750
F 0 "#PWR?" H 7900 4500 50  0001 C CNN
F 1 "GND" H 7905 4577 50  0000 C CNN
F 2 "" H 7900 4750 50  0001 C CNN
F 3 "" H 7900 4750 50  0001 C CNN
	1    7900 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 60085F53
P 8600 3000
F 0 "L?" V 8790 3000 50  0000 C CNN
F 1 "2u2" V 8699 3000 50  0000 C CNN
F 2 "" H 8600 3000 50  0001 C CNN
F 3 "~" H 8600 3000 50  0001 C CNN
	1    8600 3000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 3000 8450 3000
$Comp
L Device:C_Small C?
U 1 1 60088063
P 8900 3150
F 0 "C?" H 8992 3196 50  0000 L CNN
F 1 "22p" H 8992 3105 50  0000 L CNN
F 2 "" H 8900 3150 50  0001 C CNN
F 3 "~" H 8900 3150 50  0001 C CNN
	1    8900 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60088FE5
P 9450 3150
F 0 "R?" H 9520 3196 50  0000 L CNN
F 1 "91k" H 9520 3105 50  0000 L CNN
F 2 "" V 9380 3150 50  0001 C CNN
F 3 "~" H 9450 3150 50  0001 C CNN
	1    9450 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6008935F
P 9450 3600
F 0 "R?" H 9520 3646 50  0000 L CNN
F 1 "120k" H 9520 3555 50  0000 L CNN
F 2 "" V 9380 3600 50  0001 C CNN
F 3 "~" H 9450 3600 50  0001 C CNN
	1    9450 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:L L?
U 1 1 6008B973
P 8600 4250
F 0 "L?" V 8790 4250 50  0000 C CNN
F 1 "2u2" V 8699 4250 50  0000 C CNN
F 2 "" H 8600 4250 50  0001 C CNN
F 3 "~" H 8600 4250 50  0001 C CNN
	1    8600 4250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 4250 8450 4250
$Comp
L Device:C_Small C?
U 1 1 6008B97B
P 8900 4400
F 0 "C?" H 8992 4446 50  0000 L CNN
F 1 "22p" H 8992 4355 50  0000 L CNN
F 2 "" H 8900 4400 50  0001 C CNN
F 3 "~" H 8900 4400 50  0001 C CNN
	1    8900 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6008B982
P 9450 4400
F 0 "R?" H 9520 4446 50  0000 L CNN
F 1 "300k" H 9520 4355 50  0000 L CNN
F 2 "" V 9380 4400 50  0001 C CNN
F 3 "~" H 9450 4400 50  0001 C CNN
	1    9450 4400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 6008B988
P 9450 4850
F 0 "R?" H 9520 4896 50  0000 L CNN
F 1 "150k" H 9520 4805 50  0000 L CNN
F 2 "" V 9380 4850 50  0001 C CNN
F 3 "~" H 9450 4850 50  0001 C CNN
	1    9450 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4350 8400 4350
Wire Wire Line
	8400 4350 8400 4550
Wire Wire Line
	9450 4550 9450 4700
Connection ~ 9450 4550
$Comp
L power:GND #PWR?
U 1 1 6008F157
P 9450 5100
F 0 "#PWR?" H 9450 4850 50  0001 C CNN
F 1 "GND" H 9455 4927 50  0000 C CNN
F 2 "" H 9450 5100 50  0001 C CNN
F 3 "" H 9450 5100 50  0001 C CNN
	1    9450 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 5000 9450 5100
$Comp
L power:GND #PWR?
U 1 1 60092421
P 9450 3850
F 0 "#PWR?" H 9450 3600 50  0001 C CNN
F 1 "GND" H 9455 3677 50  0000 C CNN
F 2 "" H 9450 3850 50  0001 C CNN
F 3 "" H 9450 3850 50  0001 C CNN
	1    9450 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 3750 9450 3850
Wire Wire Line
	8350 3100 8350 3300
Wire Wire Line
	9450 3300 9450 3450
Connection ~ 9450 3300
Wire Wire Line
	8750 3000 8900 3000
Wire Wire Line
	8900 3000 8900 3050
Wire Wire Line
	8350 3300 8900 3300
Connection ~ 8900 3000
Wire Wire Line
	8900 3000 9450 3000
Wire Wire Line
	8900 3250 8900 3300
Connection ~ 8900 3300
Wire Wire Line
	8900 3300 9450 3300
Wire Wire Line
	8750 4250 8900 4250
Wire Wire Line
	8900 4250 8900 4300
Wire Wire Line
	8400 4550 8900 4550
Connection ~ 8900 4250
Wire Wire Line
	8900 4250 9450 4250
Wire Wire Line
	8900 4500 8900 4550
Connection ~ 8900 4550
Wire Wire Line
	8900 4550 9450 4550
Wire Wire Line
	9450 3000 9750 3000
Connection ~ 9450 3000
Wire Wire Line
	9750 3000 9750 3150
Connection ~ 9750 3000
Wire Wire Line
	9750 3000 10050 3000
Wire Wire Line
	9750 3150 10050 3150
Text Label 10050 3000 0    50   ~ 0
VCCINT
Text Label 10050 3150 0    50   ~ 0
VCCBRAM
Wire Wire Line
	9450 4250 9900 4250
Connection ~ 9450 4250
Text Label 9900 4250 0    50   ~ 0
VCCAUX
Wire Wire Line
	7450 3000 7300 3000
Wire Wire Line
	7450 3100 7300 3100
Wire Wire Line
	7300 3100 7300 3000
Connection ~ 7300 3000
Wire Wire Line
	7300 3000 6950 3000
Wire Wire Line
	7450 4250 7250 4250
$Comp
L power:+5V #PWR?
U 1 1 600B2AED
P 6950 4250
F 0 "#PWR?" H 6950 4100 50  0001 C CNN
F 1 "+5V" H 6965 4423 50  0000 C CNN
F 2 "" H 6950 4250 50  0001 C CNN
F 3 "" H 6950 4250 50  0001 C CNN
	1    6950 4250
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 600B2DDE
P 6950 3000
F 0 "#PWR?" H 6950 2850 50  0001 C CNN
F 1 "+5V" H 6965 3173 50  0000 C CNN
F 2 "" H 6950 3000 50  0001 C CNN
F 3 "" H 6950 3000 50  0001 C CNN
	1    6950 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 4350 7250 4350
Wire Wire Line
	7250 4350 7250 4250
Connection ~ 7250 4250
Wire Wire Line
	7250 4250 6950 4250
Text Notes 6450 3950 0    50   ~ 0
Not sure if we need sequencing here.\nNot sure how to simply add it, VCCINT is < 1.4V that EN needs.
Text Notes 7850 2600 0    50   ~ 0
VCCINT and VCCBRAM can be turned on at the same time\nif they are the same voltage - and they are.
Text Notes 2900 1200 0    50   ~ 0
Symbol stolen from https://github.com/xesscorp/KiCad-Schematic-Symbol-Libraries
$EndSCHEMATC
