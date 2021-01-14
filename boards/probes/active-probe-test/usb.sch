EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L Connector:USB_C_Receptacle J?
U 1 1 5FFE8483
P 1400 2000
F 0 "J?" H 1507 3267 50  0000 C CNN
F 1 "USB_C_Receptacle" H 1507 3176 50  0000 C CNN
F 2 "active-host-test:10137062" H 1550 2000 50  0001 C CNN
F 3 "https://www.usb.org/sites/default/files/documents/usb_type-c.zip" H 1550 2000 50  0001 C CNN
F 4 "609-6109-1-ND" H 1400 2000 50  0001 C CNN "DPN"
	1    1400 2000
	1    0    0    -1  
$EndComp
$Comp
L Interface_USB:FUSB302BMPX U?
U 1 1 5FFE848A
P 6200 2250
F 0 "U?" H 6500 1900 50  0000 C CNN
F 1 "FUSB302BMPX" H 6700 2700 50  0000 C CNN
F 2 "Package_DFN_QFN:WQFN-14-1EP_2.5x2.5mm_P0.5mm_EP1.45x1.45mm" H 6200 1750 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/FUSB302B-D.PDF" H 6300 1850 50  0001 C CNN
F 4 "FUSB302BMPXCT-ND" H 6200 2250 50  0001 C CNN "DPN"
	1    6200 2250
	1    0    0    -1  
$EndComp
Text HLabel 5500 2150 0    50   Input ~ 0
SDA
Text HLabel 5500 2250 0    50   Input ~ 0
SCL
Text HLabel 5500 2350 0    50   Input ~ 0
INT_N
Wire Wire Line
	5500 2150 5700 2150
Wire Wire Line
	5500 2250 5700 2250
Wire Wire Line
	5500 2350 5700 2350
Wire Wire Line
	6200 2650 6200 2850
$Comp
L power:GND #PWR?
U 1 1 5FFE8497
P 6200 2850
F 0 "#PWR?" H 6200 2600 50  0001 C CNN
F 1 "GND" H 6205 2677 50  0000 C CNN
F 2 "" H 6200 2850 50  0001 C CNN
F 3 "" H 6200 2850 50  0001 C CNN
	1    6200 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2000 1200 2250 1200
Wire Wire Line
	2000 1300 2250 1300
Text Label 2250 1200 0    50   ~ 0
CC1
Text Label 2250 1300 0    50   ~ 0
CC2
Text Label 3600 1000 0    50   ~ 0
VBUS
NoConn ~ 2000 1500
NoConn ~ 2000 1600
NoConn ~ 2000 1700
NoConn ~ 2000 1800
Wire Wire Line
	2000 2300 2000 2400
Wire Wire Line
	2000 2000 2000 2100
Wire Wire Line
	2000 2600 2000 2700
Wire Wire Line
	2000 2900 2000 3000
Wire Wire Line
	2000 2300 2200 2300
Connection ~ 2000 2300
Wire Wire Line
	2000 2900 2200 2900
Wire Wire Line
	2200 2900 2200 2300
Connection ~ 2000 2900
Wire Wire Line
	2000 2600 2350 2600
Wire Wire Line
	2350 2600 2350 2000
Connection ~ 2000 2600
Wire Wire Line
	2000 2000 2350 2000
Connection ~ 2000 2000
$Comp
L power:GND #PWR?
U 1 1 5FFE84B6
P 1400 3750
F 0 "#PWR?" H 1400 3500 50  0001 C CNN
F 1 "GND" H 1405 3577 50  0000 C CNN
F 2 "" H 1400 3750 50  0001 C CNN
F 3 "" H 1400 3750 50  0001 C CNN
	1    1400 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 3600 1400 3750
Wire Wire Line
	6700 2150 6900 2150
Wire Wire Line
	6700 2250 6900 2250
Wire Wire Line
	6700 2350 6900 2350
Text Label 6900 2250 0    50   ~ 0
CC1
Text Label 6900 2350 0    50   ~ 0
CC2
Text Label 6900 2150 0    50   ~ 0
VBUS
Text HLabel 5450 1400 0    50   Input ~ 0
+3V3
Wire Wire Line
	6100 1850 6100 1400
Wire Wire Line
	6100 1400 5800 1400
$Comp
L Device:R R?
U 1 1 5FFE84CE
P 6300 1550
F 0 "R?" H 6370 1596 50  0000 L CNN
F 1 "0R" H 6370 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6230 1550 50  0001 C CNN
F 3 "~" H 6300 1550 50  0001 C CNN
F 4 "311-0.0HRCT-ND" H 6300 1550 50  0001 C CNN "DPN"
	1    6300 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1400 6300 1400
Connection ~ 6100 1400
Wire Wire Line
	6200 1850 6200 1700
Wire Wire Line
	6200 1700 6300 1700
Wire Wire Line
	6300 1850 6300 1700
Connection ~ 6300 1700
$Comp
L Device:C_Small C?
U 1 1 5FFE84DC
P 5500 1650
F 0 "C?" H 5592 1696 50  0000 L CNN
F 1 "0u1" H 5592 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5500 1650 50  0001 C CNN
F 3 "~" H 5500 1650 50  0001 C CNN
F 4 "1276-1013-1-ND" H 5500 1650 50  0001 C CNN "DPN"
	1    5500 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5FFE84E3
P 5800 1650
F 0 "C?" H 5892 1696 50  0000 L CNN
F 1 "1u" H 5892 1605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5800 1650 50  0001 C CNN
F 3 "~" H 5800 1650 50  0001 C CNN
F 4 "1276-1102-1-ND" H 5800 1650 50  0001 C CNN "DPN"
	1    5800 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1400 5500 1550
Connection ~ 5500 1400
Wire Wire Line
	5500 1400 5450 1400
Wire Wire Line
	5800 1400 5800 1550
Connection ~ 5800 1400
Wire Wire Line
	5800 1400 5500 1400
Wire Wire Line
	5800 1750 5500 1750
Wire Wire Line
	5500 1750 5500 1850
Connection ~ 5500 1750
$Comp
L power:GND #PWR?
U 1 1 5FFE84F2
P 5500 1850
F 0 "#PWR?" H 5500 1600 50  0001 C CNN
F 1 "GND" H 5505 1677 50  0000 C CNN
F 2 "" H 5500 1850 50  0001 C CNN
F 3 "" H 5500 1850 50  0001 C CNN
	1    5500 1850
	1    0    0    -1  
$EndComp
Text Notes 5150 1000 0    79   ~ 0
USB C Controller
Wire Notes Line
	7550 1000 7550 3100
Wire Notes Line
	7550 3100 5150 3100
Wire Notes Line
	5150 3100 5150 1000
Wire Notes Line
	5150 1000 7550 1000
$Comp
L Device:Thermistor_PTC TH?
U 1 1 5FFE8500
P 3000 1000
F 0 "TH?" V 2710 1000 50  0000 C CNN
F 1 "Thermistor_PTC" V 2801 1000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 3050 800 50  0001 L CNN
F 3 "~" H 3000 1000 50  0001 C CNN
F 4 "507-1813-1-ND" H 3000 1000 50  0001 C CNN "DPN"
	1    3000 1000
	0    1    1    0   
$EndComp
Text Label 2150 1000 0    50   ~ 0
VBUS_FUSED
Text Label 7750 1450 1    50   ~ 0
CC1
Text Label 8050 1450 1    50   ~ 0
CC2
Text Label 8700 1500 1    50   ~ 0
VBUS_FUSED
NoConn ~ 2000 3200
NoConn ~ 2000 3300
Text Notes 7600 1000 0    79   ~ 0
ESD Protection
Wire Wire Line
	2000 1000 2850 1000
Wire Wire Line
	7750 1450 7750 1600
Wire Wire Line
	8050 1450 8050 1600
$Comp
L power:GND #PWR?
U 1 1 5FFE8525
P 7900 2200
F 0 "#PWR?" H 7900 1950 50  0001 C CNN
F 1 "GND" H 7905 2027 50  0000 C CNN
F 2 "" H 7900 2200 50  0001 C CNN
F 3 "" H 7900 2200 50  0001 C CNN
	1    7900 2200
	1    0    0    -1  
$EndComp
$Comp
L project:STS232033B102 U?
U 1 1 5FFE852C
P 7900 1700
F 0 "U?" H 8128 1596 50  0000 L CNN
F 1 "STS232033B102" H 7950 1350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7900 1700 50  0001 C CNN
F 3 "https://www.eaton.com/content/dam/eaton/products/electronic-components/resources/data-sheet/eaton-sts232xxxbxxx-tvs-diode-array-esd-suppressor-data-sheet.pdf" H 7900 1700 79  0001 C CNN
F 4 "283-STS232033B102CT-ND" H 7900 1700 50  0001 C CNN "DPN"
	1    7900 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2100 7900 2200
$Comp
L project:STS232050B751 U?
U 1 1 5FFE8534
P 8850 1700
F 0 "U?" H 9078 1596 50  0000 L CNN
F 1 "STS232050B751" H 8900 1350 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8850 1050 50  0001 C CNN
F 3 "https://www.eaton.com/content/dam/eaton/products/electronic-components/resources/data-sheet/eaton-sts232xxxbxxx-tvs-diode-array-esd-suppressor-data-sheet.pdf" H 8850 1700 79  0001 C CNN
F 4 "283-STS232050B751CT-ND" H 8850 1700 50  0001 C CNN "DPN"
	1    8850 1700
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FFE8541
P 8850 2200
F 0 "#PWR?" H 8850 1950 50  0001 C CNN
F 1 "GND" H 8855 2027 50  0000 C CNN
F 2 "" H 8850 2200 50  0001 C CNN
F 3 "" H 8850 2200 50  0001 C CNN
	1    8850 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 2100 8850 2200
Wire Wire Line
	8700 1500 8700 1600
Wire Wire Line
	9000 1600 9000 1500
Wire Wire Line
	9000 1500 9300 1500
Wire Wire Line
	9300 1500 9300 1600
$Comp
L power:GND #PWR?
U 1 1 5FFE8557
P 9300 1600
F 0 "#PWR?" H 9300 1350 50  0001 C CNN
F 1 "GND" H 9305 1427 50  0000 C CNN
F 2 "" H 9300 1600 50  0001 C CNN
F 3 "" H 9300 1600 50  0001 C CNN
	1    9300 1600
	1    0    0    -1  
$EndComp
Wire Notes Line
	7600 2450 7600 1000
Connection ~ 2350 2000
Wire Wire Line
	2200 2300 3300 2300
Connection ~ 2200 2300
Text HLabel 3300 2300 2    50   Input ~ 0
+7V
Text HLabel 3300 2000 2    50   Input ~ 0
-7V
Wire Wire Line
	2350 2000 3300 2000
Wire Wire Line
	3150 1000 4250 1000
Text HLabel 4250 1000 2    50   Input ~ 0
VBUS
NoConn ~ 1100 3600
Wire Notes Line
	7600 1000 9600 1000
Wire Notes Line
	9600 1000 9600 2450
Wire Notes Line
	9600 2450 7600 2450
$EndSCHEMATC
