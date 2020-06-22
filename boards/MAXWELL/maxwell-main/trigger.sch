EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 16 18
Title "MAXWELL Main Board"
Date "2020-06-22"
Rev "0.1"
Comp "Antikernel Labs"
Comment1 "Andrew D. Zonenberg"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5F0308DF
P 1000 1350
AR Path="/5EEF3BE9/5F0308DF" Ref="J?"  Part="1" 
AR Path="/5EEF3B79/5F303230/5F0308DF" Ref="J12"  Part="1" 
F 0 "J12" H 953 1588 50  0000 C CNN
F 1 "901-10511-3" H 953 1497 50  0000 C CNN
F 2 "" H 1000 1350 50  0001 C CNN
F 3 "" H 1000 1350 50  0001 C CNN
	1    1000 1350
	-1   0    0    -1  
$EndComp
Text Label 1350 1350 0    50   ~ 0
TRIG_IN
Text HLabel 850  1550 0    50   Input ~ 0
GND
Text Label 1250 2750 0    50   ~ 0
REFCLK_IN
$Comp
L analog-azonenberg:LMH7322 U?
U 1 1 5F039E67
P 5000 1750
AR Path="/5EEF3BE9/5F039E67" Ref="U?"  Part="1" 
AR Path="/5EEF3B79/5F303230/5F039E67" Ref="U37"  Part="1" 
F 0 "U37" H 4925 2897 60  0000 C CNN
F 1 "LMH7322" H 4925 2791 60  0000 C CNN
F 2 "" H 4500 1700 60  0001 C CNN
F 3 "" H 4500 1700 60  0000 C CNN
	1    5000 1750
	1    0    0    -1  
$EndComp
$Comp
L analog-azonenberg:LMH7322 U?
U 2 1 5F03A9B1
P 5000 3150
AR Path="/5EEF3BE9/5F03A9B1" Ref="U?"  Part="2" 
AR Path="/5EEF3B79/5F303230/5F03A9B1" Ref="U37"  Part="2" 
F 0 "U37" H 4925 4297 60  0000 C CNN
F 1 "LMH7322" H 4925 4191 60  0000 C CNN
F 2 "" H 4500 3100 60  0001 C CNN
F 3 "" H 4500 3100 60  0000 C CNN
	2    5000 3150
	1    0    0    -1  
$EndComp
Text HLabel 7800 1200 2    50   Output ~ 0
TRIG_IN_1_P
Text HLabel 7800 1300 2    50   Output ~ 0
TRIG_IN_1_N
Text HLabel 5550 2750 2    50   Output ~ 0
REF_IN_P
Text HLabel 5550 2850 2    50   Output ~ 0
REF_IN_N
$Comp
L Connector:Conn_Coaxial J?
U 1 1 5F0401D6
P 1000 4150
AR Path="/5EEF3BE9/5F0401D6" Ref="J?"  Part="1" 
AR Path="/5EEF3B79/5F303230/5F0401D6" Ref="J14"  Part="1" 
F 0 "J14" H 953 4388 50  0000 C CNN
F 1 "901-10511-3" H 953 4297 50  0000 C CNN
F 2 "" H 1000 4150 50  0001 C CNN
F 3 "" H 1000 4150 50  0001 C CNN
	1    1000 4150
	-1   0    0    -1  
$EndComp
Text Label 1350 4150 0    50   ~ 0
PPS_IN
$Comp
L analog-azonenberg:LMH7322 U?
U 1 1 5F04094A
P 5000 4550
AR Path="/5EEF3BE9/5F04094A" Ref="U?"  Part="1" 
AR Path="/5EEF3B79/5F303230/5F04094A" Ref="U38"  Part="1" 
F 0 "U38" H 4925 5697 60  0000 C CNN
F 1 "LMH7322" H 4925 5591 60  0000 C CNN
F 2 "" H 4500 4500 60  0001 C CNN
F 3 "" H 4500 4500 60  0000 C CNN
	1    5000 4550
	1    0    0    -1  
$EndComp
Text HLabel 5550 4150 2    50   Output ~ 0
PPS_IN_P
Text HLabel 5550 4250 2    50   Output ~ 0
PPS_IN_N
Text HLabel 1350 6400 2    50   Input ~ 0
REF_OUT_P
Text HLabel 1350 7000 2    50   Input ~ 0
REF_OUT_N
Wire Wire Line
	4300 950  4300 1050
Wire Wire Line
	4300 3750 4300 3850
Text Label 3050 1350 0    50   ~ 0
TRIG_IN_ATTEN
Text Label 4300 2750 2    50   ~ 0
REF_IN_AC
Text Notes 9350 6850 0    50   ~ 0
PECL load resistors
Wire Wire Line
	5550 850  5550 950 
Wire Wire Line
	5550 2250 5550 2350
Wire Wire Line
	5550 3650 5550 3750
Text HLabel 1350 7550 2    50   Input ~ 0
REF_OUT
$Comp
L Connector:Conn_Coaxial J?
U 1 1 6028963A
P 1000 6400
AR Path="/5EEF3BE9/6028963A" Ref="J?"  Part="1" 
AR Path="/5EEF3B79/5F303230/6028963A" Ref="J21"  Part="1" 
F 0 "J21" H 953 6638 50  0000 C CNN
F 1 "901-10511-3" H 953 6547 50  0000 C CNN
F 2 "" H 1000 6400 50  0001 C CNN
F 3 "" H 1000 6400 50  0001 C CNN
	1    1000 6400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1350 6400 1150 6400
Text Label 850  2950 2    50   ~ 0
GND
Text Label 850  4350 2    50   ~ 0
GND
Text Label 1350 6600 0    50   ~ 0
GND
Wire Wire Line
	1350 6600 1000 6600
$Comp
L Connector:Conn_Coaxial J?
U 1 1 6028AF26
P 1000 7000
AR Path="/5EEF3BE9/6028AF26" Ref="J?"  Part="1" 
AR Path="/5EEF3B79/5F303230/6028AF26" Ref="J22"  Part="1" 
F 0 "J22" H 953 7238 50  0000 C CNN
F 1 "901-10511-3" H 953 7147 50  0000 C CNN
F 2 "" H 1000 7000 50  0001 C CNN
F 3 "" H 1000 7000 50  0001 C CNN
	1    1000 7000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1350 7000 1150 7000
Text Label 1350 7200 0    50   ~ 0
GND
Wire Wire Line
	1350 7200 1000 7200
$Comp
L Connector:Conn_Coaxial J?
U 1 1 6028FD24
P 1000 7550
AR Path="/5EEF3BE9/6028FD24" Ref="J?"  Part="1" 
AR Path="/5EEF3B79/5F303230/6028FD24" Ref="J23"  Part="1" 
F 0 "J23" H 953 7788 50  0000 C CNN
F 1 "901-10511-3" H 953 7697 50  0000 C CNN
F 2 "" H 1000 7550 50  0001 C CNN
F 3 "" H 1000 7550 50  0001 C CNN
	1    1000 7550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1350 7750 1000 7750
Wire Wire Line
	1350 7550 1150 7550
Text Label 1350 7750 0    50   ~ 0
GND
Text HLabel 7800 1500 2    50   Output ~ 0
TRIG_IN_2_P
Text HLabel 7800 1600 2    50   Output ~ 0
TRIG_IN_2_N
$Comp
L analog-azonenberg:ATTEN_RF_PI_SMALL R70
U 1 1 602CC953
P 2050 1600
F 0 "R70" H 2425 2097 60  0000 C CNN
F 1 "PAT1220-C-6DB-T5" H 2425 1991 60  0000 C CNN
F 2 "" H 2050 1600 60  0001 C CNN
F 3 "" H 2050 1600 60  0001 C CNN
	1    2050 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  1550 1000 1550
Connection ~ 1000 1550
Wire Wire Line
	1000 1550 1850 1550
Wire Wire Line
	1150 1350 1850 1350
Text Label 4300 1450 2    50   ~ 0
GND
Text HLabel 4300 850  0    50   Input ~ 0
5V0
Text HLabel 4300 950  0    50   Input ~ 0
5V0_N
Text Notes 1000 950  0    50   ~ 0
Attenuator power limit is +21.25 dBm or ~~7V p-p\nRate the input for +20 dBm max to provide some safety margin.\n\nComparator starts slowing down around +/- 20 mV overdrive.\nThis is +/- 40 mV before the attenuator or about -18 dBm.
Text HLabel 5550 850  2    50   Input ~ 0
2V5
$Comp
L device:R R73
U 1 1 602F69B4
P 3950 1750
F 0 "R73" V 3900 1950 50  0000 C CNN
F 1 "4.99K" V 3950 1750 50  0000 C CNN
F 2 "" V 3880 1750 50  0001 C CNN
F 3 "" H 3950 1750 50  0001 C CNN
	1    3950 1750
	0    1    1    0   
$EndComp
Text Notes 3850 1900 0    50   ~ 0
20 mV hysteresis
Wire Wire Line
	4100 1750 4300 1750
Wire Wire Line
	4300 1650 3800 1650
Wire Wire Line
	3800 1650 3800 1750
$Comp
L device:R R77
U 1 1 602FBFBF
P 5700 1650
F 0 "R77" V 5650 1850 50  0000 C CNN
F 1 "10K" V 5700 1650 50  0000 C CNN
F 2 "" V 5630 1650 50  0001 C CNN
F 3 "" H 5700 1650 50  0001 C CNN
	1    5700 1650
	0    1    1    0   
$EndComp
$Comp
L device:R R78
U 1 1 602FC5C1
P 5700 1750
F 0 "R78" V 5650 1950 50  0000 C CNN
F 1 "10K" V 5700 1750 50  0000 C CNN
F 2 "" V 5630 1750 50  0001 C CNN
F 3 "" H 5700 1750 50  0001 C CNN
	1    5700 1750
	0    1    1    0   
$EndComp
Text Label 6000 1650 0    50   ~ 0
5V0_N
Wire Wire Line
	6000 1650 5850 1650
Text Label 6000 1750 0    50   ~ 0
2V5
Wire Wire Line
	6000 1750 5850 1750
$Comp
L device:C C203
U 1 1 60304F96
P 3700 2750
F 0 "C203" V 3448 2750 50  0000 C CNN
F 1 "1 uF" V 3539 2750 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 3738 2600 50  0001 C CNN
F 3 "" H 3700 2750 50  0001 C CNN
	1    3700 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 1350 4300 1350
$Comp
L Connector:Conn_Coaxial J?
U 1 1 60321CDF
P 1000 2750
AR Path="/5EEF3BE9/60321CDF" Ref="J?"  Part="1" 
AR Path="/5EEF3B79/5F303230/60321CDF" Ref="J13"  Part="1" 
F 0 "J13" H 953 2988 50  0000 C CNN
F 1 "901-10511-3" H 953 2897 50  0000 C CNN
F 2 "" H 1000 2750 50  0001 C CNN
F 3 "" H 1000 2750 50  0001 C CNN
	1    1000 2750
	-1   0    0    -1  
$EndComp
Text Label 3050 2750 0    50   ~ 0
REF_IN_ATTEN
$Comp
L analog-azonenberg:ATTEN_RF_PI_SMALL R71
U 1 1 60321CEC
P 2050 3000
F 0 "R71" H 2425 3497 60  0000 C CNN
F 1 "PAT1220-C-6DB-T5" H 2425 3391 60  0000 C CNN
F 2 "" H 2050 3000 60  0001 C CNN
F 3 "" H 2050 3000 60  0001 C CNN
	1    2050 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  2950 1000 2950
Connection ~ 1000 2950
Wire Wire Line
	1000 2950 1850 2950
Wire Wire Line
	1150 2750 1850 2750
Wire Wire Line
	3000 2750 3550 2750
Wire Wire Line
	3850 2750 4300 2750
$Comp
L device:R R74
U 1 1 603295C3
P 3950 3150
F 0 "R74" V 3900 3350 50  0000 C CNN
F 1 "4.99K" V 3950 3150 50  0000 C CNN
F 2 "" V 3880 3150 50  0001 C CNN
F 3 "" H 3950 3150 50  0001 C CNN
	1    3950 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 3150 4300 3150
Wire Wire Line
	4300 3050 3800 3050
Wire Wire Line
	3800 3050 3800 3150
$Comp
L device:R R79
U 1 1 6032A45E
P 5700 3050
F 0 "R79" V 5650 3250 50  0000 C CNN
F 1 "10K" V 5700 3050 50  0000 C CNN
F 2 "" V 5630 3050 50  0001 C CNN
F 3 "" H 5700 3050 50  0001 C CNN
	1    5700 3050
	0    1    1    0   
$EndComp
$Comp
L device:R R80
U 1 1 6032A468
P 5700 3150
F 0 "R80" V 5650 3350 50  0000 C CNN
F 1 "10K" V 5700 3150 50  0000 C CNN
F 2 "" V 5630 3150 50  0001 C CNN
F 3 "" H 5700 3150 50  0001 C CNN
	1    5700 3150
	0    1    1    0   
$EndComp
Text Label 6000 3050 0    50   ~ 0
5V0_N
Wire Wire Line
	6000 3050 5850 3050
Text Label 6000 3150 0    50   ~ 0
2V5
Wire Wire Line
	6000 3150 5850 3150
Text Label 5550 2250 0    50   ~ 0
2V5
$Comp
L device:R R81
U 1 1 6033BC13
P 5700 4450
F 0 "R81" V 5650 4650 50  0000 C CNN
F 1 "10K" V 5700 4450 50  0000 C CNN
F 2 "" V 5630 4450 50  0001 C CNN
F 3 "" H 5700 4450 50  0001 C CNN
	1    5700 4450
	0    1    1    0   
$EndComp
$Comp
L device:R R82
U 1 1 6033BC1D
P 5700 4550
F 0 "R82" V 5650 4750 50  0000 C CNN
F 1 "10K" V 5700 4550 50  0000 C CNN
F 2 "" V 5630 4550 50  0001 C CNN
F 3 "" H 5700 4550 50  0001 C CNN
	1    5700 4550
	0    1    1    0   
$EndComp
Text Label 6000 4450 0    50   ~ 0
5V0_N
Wire Wire Line
	6000 4450 5850 4450
Text Label 6000 4550 0    50   ~ 0
2V5
Wire Wire Line
	6000 4550 5850 4550
Text Label 3050 4150 0    50   ~ 0
PPS_IN_ATTEN
$Comp
L analog-azonenberg:ATTEN_RF_PI_SMALL R72
U 1 1 603413C2
P 2050 4400
F 0 "R72" H 2425 4897 60  0000 C CNN
F 1 "PAT1220-C-6DB-T5" H 2425 4791 60  0000 C CNN
F 2 "" H 2050 4400 60  0001 C CNN
F 3 "" H 2050 4400 60  0001 C CNN
	1    2050 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 4150 4300 4150
Text Label 4300 2250 2    50   ~ 0
5V0
Text Label 4300 2350 2    50   ~ 0
5V0_N
Text Label 4300 3650 2    50   ~ 0
5V0
Text Label 4300 3750 2    50   ~ 0
5V0_N
Text Label 5550 3650 0    50   ~ 0
2V5
Wire Wire Line
	1150 4150 1850 4150
Wire Wire Line
	1000 4350 1850 4350
Wire Wire Line
	850  4350 1000 4350
Connection ~ 1000 4350
$Comp
L device:R R75
U 1 1 60354743
P 3950 4550
F 0 "R75" V 3900 4750 50  0000 C CNN
F 1 "4.99K" V 3950 4550 50  0000 C CNN
F 2 "" V 3880 4550 50  0001 C CNN
F 3 "" H 3950 4550 50  0001 C CNN
	1    3950 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 4550 4300 4550
Wire Wire Line
	4300 4450 3800 4450
Wire Wire Line
	3800 4450 3800 4550
$Comp
L special-azonenberg:SY89835U U40
U 1 1 60370C57
P 6900 1650
F 0 "U40" H 7250 2625 50  0000 C CNN
F 1 "SY89835U" H 7250 2534 50  0000 C CNN
F 2 "" H 6900 1650 50  0001 C CNN
F 3 "" H 6900 1650 50  0001 C CNN
	1    6900 1650
	1    0    0    -1  
$EndComp
Text Label 6700 900  2    50   ~ 0
2V5
Text Label 6700 1000 2    50   ~ 0
GND
Wire Wire Line
	6700 1000 6700 1100
Text Label 5850 1350 0    50   ~ 0
TRIG_IN_P
Text Label 5850 1450 0    50   ~ 0
TRIG_IN_N
Wire Wire Line
	6700 1350 5550 1350
Wire Wire Line
	5550 1450 6700 1450
Text HLabel 1350 8100 2    50   Input ~ 0
TRIG_OUT
$Comp
L Connector:Conn_Coaxial J?
U 1 1 604C5AEA
P 1000 8100
AR Path="/5EEF3BE9/604C5AEA" Ref="J?"  Part="1" 
AR Path="/5EEF3B79/5F303230/604C5AEA" Ref="J25"  Part="1" 
F 0 "J25" H 953 8338 50  0000 C CNN
F 1 "901-10511-3" H 953 8247 50  0000 C CNN
F 2 "" H 1000 8100 50  0001 C CNN
F 3 "" H 1000 8100 50  0001 C CNN
	1    1000 8100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1350 8300 1000 8300
Wire Wire Line
	1350 8100 1150 8100
Text Label 1350 8300 0    50   ~ 0
GND
$Comp
L device:C C205
U 1 1 604EABEC
P 4500 6400
F 0 "C205" H 4615 6446 50  0000 L CNN
F 1 "4.7 uF" H 4615 6355 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 4538 6250 50  0001 C CNN
F 3 "" H 4500 6400 50  0001 C CNN
	1    4500 6400
	1    0    0    -1  
$EndComp
Text Label 4500 6250 2    50   ~ 0
5V0
Text Label 4500 6550 2    50   ~ 0
GND
$Comp
L device:C C208
U 1 1 604EC35D
P 5000 6400
F 0 "C208" H 5115 6446 50  0000 L CNN
F 1 "4.7 uF" H 5115 6355 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 5038 6250 50  0001 C CNN
F 3 "" H 5000 6400 50  0001 C CNN
	1    5000 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6250 4500 6250
Wire Wire Line
	4500 6550 5000 6550
$Comp
L device:C C211
U 1 1 604EF6AE
P 5500 6400
F 0 "C211" H 5615 6446 50  0000 L CNN
F 1 "0.47 uF" H 5615 6355 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5538 6250 50  0001 C CNN
F 3 "" H 5500 6400 50  0001 C CNN
	1    5500 6400
	1    0    0    -1  
$EndComp
$Comp
L device:C C215
U 1 1 604EFB22
P 6050 6400
F 0 "C215" H 6165 6446 50  0000 L CNN
F 1 "0.47 uF" H 6165 6355 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6088 6250 50  0001 C CNN
F 3 "" H 6050 6400 50  0001 C CNN
	1    6050 6400
	1    0    0    -1  
$EndComp
$Comp
L device:C C219
U 1 1 604EFD26
P 6600 6400
F 0 "C219" H 6715 6446 50  0000 L CNN
F 1 "0.47 uF" H 6715 6355 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6638 6250 50  0001 C CNN
F 3 "" H 6600 6400 50  0001 C CNN
	1    6600 6400
	1    0    0    -1  
$EndComp
$Comp
L device:C C224
U 1 1 604EFE53
P 7150 6400
F 0 "C224" H 7265 6446 50  0000 L CNN
F 1 "0.47 uF" H 7265 6355 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 7188 6250 50  0001 C CNN
F 3 "" H 7150 6400 50  0001 C CNN
	1    7150 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 6250 6600 6250
Connection ~ 5000 6250
Connection ~ 5500 6250
Wire Wire Line
	5500 6250 5000 6250
Connection ~ 6050 6250
Wire Wire Line
	6050 6250 5500 6250
Connection ~ 6600 6250
Wire Wire Line
	6600 6250 6050 6250
Wire Wire Line
	7150 6550 6600 6550
Connection ~ 5000 6550
Connection ~ 5500 6550
Wire Wire Line
	5500 6550 5000 6550
Connection ~ 6050 6550
Wire Wire Line
	6050 6550 5500 6550
Connection ~ 6600 6550
Wire Wire Line
	6600 6550 6050 6550
$Comp
L device:C C206
U 1 1 604F3936
P 4500 6850
F 0 "C206" H 4615 6896 50  0000 L CNN
F 1 "4.7 uF" H 4615 6805 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 4538 6700 50  0001 C CNN
F 3 "" H 4500 6850 50  0001 C CNN
	1    4500 6850
	1    0    0    -1  
$EndComp
Text Label 4500 6700 2    50   ~ 0
5V0_N
Text Label 4500 7000 2    50   ~ 0
GND
$Comp
L device:C C209
U 1 1 604F3942
P 5000 6850
F 0 "C209" H 5115 6896 50  0000 L CNN
F 1 "4.7 uF" H 5115 6805 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 5038 6700 50  0001 C CNN
F 3 "" H 5000 6850 50  0001 C CNN
	1    5000 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 6700 4500 6700
Wire Wire Line
	4500 7000 5000 7000
$Comp
L device:C C212
U 1 1 604F394E
P 5500 6850
F 0 "C212" H 5615 6896 50  0000 L CNN
F 1 "0.47 uF" H 5615 6805 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5538 6700 50  0001 C CNN
F 3 "" H 5500 6850 50  0001 C CNN
	1    5500 6850
	1    0    0    -1  
$EndComp
$Comp
L device:C C216
U 1 1 604F3958
P 6050 6850
F 0 "C216" H 6165 6896 50  0000 L CNN
F 1 "0.47 uF" H 6165 6805 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6088 6700 50  0001 C CNN
F 3 "" H 6050 6850 50  0001 C CNN
	1    6050 6850
	1    0    0    -1  
$EndComp
$Comp
L device:C C220
U 1 1 604F3962
P 6600 6850
F 0 "C220" H 6715 6896 50  0000 L CNN
F 1 "0.47 uF" H 6715 6805 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6638 6700 50  0001 C CNN
F 3 "" H 6600 6850 50  0001 C CNN
	1    6600 6850
	1    0    0    -1  
$EndComp
$Comp
L device:C C225
U 1 1 604F396C
P 7150 6850
F 0 "C225" H 7265 6896 50  0000 L CNN
F 1 "0.47 uF" H 7265 6805 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 7188 6700 50  0001 C CNN
F 3 "" H 7150 6850 50  0001 C CNN
	1    7150 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 6700 6600 6700
Connection ~ 5000 6700
Connection ~ 5500 6700
Wire Wire Line
	5500 6700 5000 6700
Connection ~ 6050 6700
Wire Wire Line
	6050 6700 5500 6700
Connection ~ 6600 6700
Wire Wire Line
	6600 6700 6050 6700
Wire Wire Line
	7150 7000 6600 7000
Connection ~ 5000 7000
Connection ~ 5500 7000
Wire Wire Line
	5500 7000 5000 7000
Connection ~ 6050 7000
Wire Wire Line
	6050 7000 5500 7000
Connection ~ 6600 7000
Wire Wire Line
	6600 7000 6050 7000
$Comp
L device:C C207
U 1 1 604FAB4C
P 4500 7300
F 0 "C207" H 4615 7346 50  0000 L CNN
F 1 "4.7 uF" H 4615 7255 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 4538 7150 50  0001 C CNN
F 3 "" H 4500 7300 50  0001 C CNN
	1    4500 7300
	1    0    0    -1  
$EndComp
Text Label 4500 7150 2    50   ~ 0
2V5
Text Label 4500 7450 2    50   ~ 0
GND
$Comp
L device:C C210
U 1 1 604FAB58
P 5000 7300
F 0 "C210" H 5115 7346 50  0000 L CNN
F 1 "4.7 uF" H 5115 7255 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 5038 7150 50  0001 C CNN
F 3 "" H 5000 7300 50  0001 C CNN
	1    5000 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 7150 4500 7150
Wire Wire Line
	4500 7450 5000 7450
$Comp
L device:C C213
U 1 1 604FAB64
P 5500 7300
F 0 "C213" H 5615 7346 50  0000 L CNN
F 1 "0.47 uF" H 5615 7255 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5538 7150 50  0001 C CNN
F 3 "" H 5500 7300 50  0001 C CNN
	1    5500 7300
	1    0    0    -1  
$EndComp
$Comp
L device:C C217
U 1 1 604FAB6E
P 6050 7300
F 0 "C217" H 6165 7346 50  0000 L CNN
F 1 "0.47 uF" H 6165 7255 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6088 7150 50  0001 C CNN
F 3 "" H 6050 7300 50  0001 C CNN
	1    6050 7300
	1    0    0    -1  
$EndComp
$Comp
L device:C C221
U 1 1 604FAB78
P 6600 7300
F 0 "C221" H 6715 7346 50  0000 L CNN
F 1 "0.47 uF" H 6715 7255 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6638 7150 50  0001 C CNN
F 3 "" H 6600 7300 50  0001 C CNN
	1    6600 7300
	1    0    0    -1  
$EndComp
$Comp
L device:C C226
U 1 1 604FAB82
P 7150 7300
F 0 "C226" H 7265 7346 50  0000 L CNN
F 1 "0.47 uF" H 7265 7255 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 7188 7150 50  0001 C CNN
F 3 "" H 7150 7300 50  0001 C CNN
	1    7150 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 7150 6600 7150
Connection ~ 5000 7150
Connection ~ 5500 7150
Wire Wire Line
	5500 7150 5000 7150
Connection ~ 6050 7150
Wire Wire Line
	6050 7150 5500 7150
Connection ~ 6600 7150
Wire Wire Line
	6600 7150 6050 7150
Wire Wire Line
	7150 7450 6600 7450
Connection ~ 5000 7450
Connection ~ 5500 7450
Wire Wire Line
	5500 7450 5000 7450
Connection ~ 6050 7450
Wire Wire Line
	6050 7450 5500 7450
Connection ~ 6600 7450
Wire Wire Line
	6600 7450 6050 7450
Text Label 4500 7600 2    50   ~ 0
2V5
Text Label 4500 7900 2    50   ~ 0
GND
$Comp
L device:C C214
U 1 1 604FABB4
P 5500 7750
F 0 "C214" H 5615 7796 50  0000 L CNN
F 1 "0.47 uF" H 5615 7705 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 5538 7600 50  0001 C CNN
F 3 "" H 5500 7750 50  0001 C CNN
	1    5500 7750
	1    0    0    -1  
$EndComp
$Comp
L device:C C218
U 1 1 604FABBE
P 6050 7750
F 0 "C218" H 6165 7796 50  0000 L CNN
F 1 "0.47 uF" H 6165 7705 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6088 7600 50  0001 C CNN
F 3 "" H 6050 7750 50  0001 C CNN
	1    6050 7750
	1    0    0    -1  
$EndComp
$Comp
L device:C C222
U 1 1 604FABC8
P 6600 7750
F 0 "C222" H 6715 7796 50  0000 L CNN
F 1 "0.47 uF" H 6715 7705 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6638 7600 50  0001 C CNN
F 3 "" H 6600 7750 50  0001 C CNN
	1    6600 7750
	1    0    0    -1  
$EndComp
$Comp
L device:C C227
U 1 1 604FABD2
P 7150 7750
F 0 "C227" H 7265 7796 50  0000 L CNN
F 1 "0.47 uF" H 7265 7705 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 7188 7600 50  0001 C CNN
F 3 "" H 7150 7750 50  0001 C CNN
	1    7150 7750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 7600 6600 7600
Connection ~ 5500 7600
Connection ~ 6050 7600
Wire Wire Line
	6050 7600 5500 7600
Connection ~ 6600 7600
Wire Wire Line
	6600 7600 6050 7600
Wire Wire Line
	7150 7900 6600 7900
Connection ~ 5500 7900
Connection ~ 6050 7900
Wire Wire Line
	6050 7900 5500 7900
Connection ~ 6600 7900
Wire Wire Line
	6600 7900 6050 7900
Wire Wire Line
	4500 7600 5500 7600
Wire Wire Line
	4500 7900 5500 7900
Text Notes 4500 8000 0    50   ~ 0
Comparator decoupling
$Comp
L device:R R90
U 1 1 60517FD2
P 3000 1500
F 0 "R90" H 3070 1546 50  0000 L CNN
F 1 "49.9" H 3070 1455 50  0000 L CNN
F 2 "" V 2930 1500 50  0001 C CNN
F 3 "" H 3000 1500 50  0001 C CNN
	1    3000 1500
	1    0    0    -1  
$EndComp
Connection ~ 3000 1350
Text Label 3200 1650 0    50   ~ 0
GND
Wire Wire Line
	3200 1650 3000 1650
$Comp
L device:R R93
U 1 1 6051DB69
P 3400 3100
F 0 "R93" H 3470 3146 50  0000 L CNN
F 1 "49.9" H 3470 3055 50  0000 L CNN
F 2 "" V 3330 3100 50  0001 C CNN
F 3 "" H 3400 3100 50  0001 C CNN
	1    3400 3100
	1    0    0    -1  
$EndComp
$Comp
L device:R R91
U 1 1 605222CA
P 3000 4300
F 0 "R91" H 3070 4346 50  0000 L CNN
F 1 "49.9" H 3070 4255 50  0000 L CNN
F 2 "" V 2930 4300 50  0001 C CNN
F 3 "" H 3000 4300 50  0001 C CNN
	1    3000 4300
	1    0    0    -1  
$EndComp
Connection ~ 3000 4150
Text Label 3200 4450 0    50   ~ 0
GND
Wire Wire Line
	3200 4450 3000 4450
$Comp
L device:C C223
U 1 1 6052F538
P 6900 1950
F 0 "C223" H 7015 1996 50  0000 L CNN
F 1 "0.1 uF" H 7015 1905 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6938 1800 50  0001 C CNN
F 3 "" H 6900 1950 50  0001 C CNN
	1    6900 1950
	1    0    0    -1  
$EndComp
$Comp
L device:C C228
U 1 1 605304B2
P 7400 1950
F 0 "C228" H 7515 1996 50  0000 L CNN
F 1 "0.01 uF" H 7515 1905 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 7438 1800 50  0001 C CNN
F 3 "" H 7400 1950 50  0001 C CNN
	1    7400 1950
	1    0    0    -1  
$EndComp
Text Label 6900 1800 2    50   ~ 0
2V5
Text Label 6900 2100 2    50   ~ 0
GND
Wire Wire Line
	6900 2100 7400 2100
Wire Wire Line
	7400 1800 6900 1800
Text Label 4300 2850 2    50   ~ 0
GND
Text Label 4300 4250 2    50   ~ 0
GND
Text Label 3400 2950 2    50   ~ 0
REF_IN_AC
Text Label 3400 3250 2    50   ~ 0
GND
$Comp
L special-azonenberg:RCLAMP0542T U41
U 1 1 607206C7
P 9600 1550
F 0 "U41" H 10078 1958 60  0000 L CNN
F 1 "RCLAMP0542T" H 10078 1852 60  0000 L CNN
F 2 "" H 9600 1550 60  0001 C CNN
F 3 "" H 9600 1550 60  0000 C CNN
	1    9600 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 900  9300 1000
Wire Wire Line
	9300 1100 9300 1200
Text Label 9300 900  2    50   ~ 0
TRIG_IN_ATTEN
Text Label 9300 1100 2    50   ~ 0
REF_IN_ATTEN
Text Label 9300 1400 2    50   ~ 0
GND
Wire Wire Line
	9300 1400 9300 1500
$Comp
L special-azonenberg:RCLAMP0542T U42
U 1 1 6074CBB0
P 9600 2400
F 0 "U42" H 10078 2808 60  0000 L CNN
F 1 "RCLAMP0542T" H 10078 2702 60  0000 L CNN
F 2 "" H 9600 2400 60  0001 C CNN
F 3 "" H 9600 2400 60  0000 C CNN
	1    9600 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 1750 9300 1850
Text Label 9300 2250 2    50   ~ 0
GND
Wire Wire Line
	9300 2250 9300 2350
Text Label 9300 1750 2    50   ~ 0
PPS_IN_ATTEN
$Comp
L special-azonenberg:RCLAMP0542T U43
U 1 1 6075D7E1
P 9600 3300
F 0 "U43" H 10078 3708 60  0000 L CNN
F 1 "RCLAMP0542T" H 10078 3602 60  0000 L CNN
F 2 "" H 9600 3300 60  0001 C CNN
F 3 "" H 9600 3300 60  0000 C CNN
	1    9600 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 2650 9300 2750
Wire Wire Line
	9300 2850 9300 2950
Text Label 9300 3150 2    50   ~ 0
GND
Wire Wire Line
	9300 3150 9300 3250
Text Label 9300 2650 2    50   ~ 0
REF_OUT_P
Text Label 9300 2850 2    50   ~ 0
REF_OUT_N
$Comp
L special-azonenberg:RCLAMP0542T U44
U 1 1 6076AAE0
P 9600 4150
F 0 "U44" H 10078 4558 60  0000 L CNN
F 1 "RCLAMP0542T" H 10078 4452 60  0000 L CNN
F 2 "" H 9600 4150 60  0001 C CNN
F 3 "" H 9600 4150 60  0000 C CNN
	1    9600 4150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9300 3500 9300 3600
Wire Wire Line
	9300 3700 9300 3800
Text Label 9300 4000 2    50   ~ 0
GND
Wire Wire Line
	9300 4000 9300 4100
Text Label 9300 3500 2    50   ~ 0
REF_OUT
Text Label 9300 3700 2    50   ~ 0
TRIG_OUT
$Comp
L device:R R125
U 1 1 60E72EAC
P 9450 6200
F 0 "R125" V 9400 5950 50  0000 C CNN
F 1 "62" V 9450 6200 50  0000 C CNN
F 2 "" V 9380 6200 50  0001 C CNN
F 3 "" H 9450 6200 50  0001 C CNN
	1    9450 6200
	0    1    1    0   
$EndComp
Text Label 9600 6200 0    50   ~ 0
TRIG_IN_P
Text Label 9100 6200 2    50   ~ 0
GND
Wire Wire Line
	9100 6200 9300 6200
$Comp
L device:R R133
U 1 1 60E7DB81
P 10400 6200
F 0 "R133" V 10350 5900 50  0000 C CNN
F 1 "240" V 10400 6200 50  0000 C CNN
F 2 "" V 10330 6200 50  0001 C CNN
F 3 "" H 10400 6200 50  0001 C CNN
	1    10400 6200
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 6200 9600 6200
Text Label 10550 6200 0    50   ~ 0
2V5
$Comp
L device:R R126
U 1 1 60E8317F
P 9450 6300
F 0 "R126" V 9400 6050 50  0000 C CNN
F 1 "62" V 9450 6300 50  0000 C CNN
F 2 "" V 9380 6300 50  0001 C CNN
F 3 "" H 9450 6300 50  0001 C CNN
	1    9450 6300
	0    1    1    0   
$EndComp
Text Label 9600 6300 0    50   ~ 0
TRIG_IN_N
Wire Wire Line
	9100 6300 9300 6300
$Comp
L device:R R134
U 1 1 60E8318B
P 10400 6300
F 0 "R134" V 10350 6000 50  0000 C CNN
F 1 "240" V 10400 6300 50  0000 C CNN
F 2 "" V 10330 6300 50  0001 C CNN
F 3 "" H 10400 6300 50  0001 C CNN
	1    10400 6300
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 6300 9600 6300
$Comp
L device:R R127
U 1 1 60E8C7F2
P 9450 6400
F 0 "R127" V 9400 6150 50  0000 C CNN
F 1 "62" V 9450 6400 50  0000 C CNN
F 2 "" V 9380 6400 50  0001 C CNN
F 3 "" H 9450 6400 50  0001 C CNN
	1    9450 6400
	0    1    1    0   
$EndComp
Text Label 9600 6400 0    50   ~ 0
REF_IN_P
Wire Wire Line
	9100 6400 9300 6400
$Comp
L device:R R135
U 1 1 60E8C7FE
P 10400 6400
F 0 "R135" V 10350 6100 50  0000 C CNN
F 1 "240" V 10400 6400 50  0000 C CNN
F 2 "" V 10330 6400 50  0001 C CNN
F 3 "" H 10400 6400 50  0001 C CNN
	1    10400 6400
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 6400 9600 6400
$Comp
L device:R R128
U 1 1 60E8C809
P 9450 6500
F 0 "R128" V 9400 6250 50  0000 C CNN
F 1 "62" V 9450 6500 50  0000 C CNN
F 2 "" V 9380 6500 50  0001 C CNN
F 3 "" H 9450 6500 50  0001 C CNN
	1    9450 6500
	0    1    1    0   
$EndComp
Text Label 9600 6500 0    50   ~ 0
REF_IN_N
Wire Wire Line
	9100 6500 9300 6500
$Comp
L device:R R136
U 1 1 60E8C815
P 10400 6500
F 0 "R136" V 10350 6200 50  0000 C CNN
F 1 "240" V 10400 6500 50  0000 C CNN
F 2 "" V 10330 6500 50  0001 C CNN
F 3 "" H 10400 6500 50  0001 C CNN
	1    10400 6500
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 6500 9600 6500
$Comp
L device:R R129
U 1 1 60E92822
P 9450 6600
F 0 "R129" V 9400 6350 50  0000 C CNN
F 1 "62" V 9450 6600 50  0000 C CNN
F 2 "" V 9380 6600 50  0001 C CNN
F 3 "" H 9450 6600 50  0001 C CNN
	1    9450 6600
	0    1    1    0   
$EndComp
Text Label 9600 6600 0    50   ~ 0
PPS_IN_P
Wire Wire Line
	9100 6600 9300 6600
$Comp
L device:R R137
U 1 1 60E9282E
P 10400 6600
F 0 "R137" V 10350 6300 50  0000 C CNN
F 1 "240" V 10400 6600 50  0000 C CNN
F 2 "" V 10330 6600 50  0001 C CNN
F 3 "" H 10400 6600 50  0001 C CNN
	1    10400 6600
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 6600 9600 6600
$Comp
L device:R R130
U 1 1 60E92839
P 9450 6700
F 0 "R130" V 9400 6450 50  0000 C CNN
F 1 "62" V 9450 6700 50  0000 C CNN
F 2 "" V 9380 6700 50  0001 C CNN
F 3 "" H 9450 6700 50  0001 C CNN
	1    9450 6700
	0    1    1    0   
$EndComp
Text Label 9600 6700 0    50   ~ 0
PPS_IN_N
Wire Wire Line
	9100 6700 9300 6700
$Comp
L device:R R138
U 1 1 60E92845
P 10400 6700
F 0 "R138" V 10350 6400 50  0000 C CNN
F 1 "240" V 10400 6700 50  0000 C CNN
F 2 "" V 10330 6700 50  0001 C CNN
F 3 "" H 10400 6700 50  0001 C CNN
	1    10400 6700
	0    1    1    0   
$EndComp
Wire Wire Line
	10250 6700 9600 6700
Connection ~ 9100 6300
Wire Wire Line
	9100 6300 9100 6200
Connection ~ 9100 6400
Wire Wire Line
	9100 6400 9100 6300
Connection ~ 9100 6500
Wire Wire Line
	9100 6500 9100 6400
Connection ~ 9100 6600
Wire Wire Line
	9100 6600 9100 6500
Wire Wire Line
	9100 6700 9100 6600
Connection ~ 10550 6300
Wire Wire Line
	10550 6300 10550 6200
Connection ~ 10550 6400
Wire Wire Line
	10550 6400 10550 6300
Connection ~ 10550 6500
Wire Wire Line
	10550 6500 10550 6400
Connection ~ 10550 6600
Wire Wire Line
	10550 6600 10550 6500
Wire Wire Line
	10550 6700 10550 6600
NoConn ~ 9300 1950
NoConn ~ 9300 2050
$EndSCHEMATC
