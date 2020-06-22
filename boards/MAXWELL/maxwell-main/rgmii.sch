EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 14 18
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
L special-azonenberg:KSZ9031RN U35
U 1 1 5F02EB8B
P 5150 4100
F 0 "U35" H 5975 7437 60  0000 C CNN
F 1 "KSZ9031RN" H 5975 7331 60  0000 C CNN
F 2 "" H 5150 4100 60  0001 C CNN
F 3 "" H 5150 4100 60  0000 C CNN
	1    5150 4100
	1    0    0    -1  
$EndComp
$Comp
L special-azonenberg:BEL_FUSE_0826-1G1T-23-F J11
U 1 1 5F03017D
P 9750 3950
F 0 "J11" H 9750 3650 60  0000 L CNN
F 1 "BEL_FUSE_0826-1G1T-23-F" H 9750 3750 60  0000 L CNN
F 2 "" H 9750 3950 60  0001 C CNN
F 3 "" H 9750 3950 60  0000 C CNN
	1    9750 3950
	1    0    0    -1  
$EndComp
$Comp
L xilinx-azonenberg:XC7KxT-FFG676 U?
U 6 1 5F47F363
P 2250 5950
AR Path="/5EDD71F2/5F47F363" Ref="U?"  Part="9" 
AR Path="/5EF1FA37/5F47F363" Ref="U?"  Part="7" 
AR Path="/5EE2921B/5F47F363" Ref="U2"  Part="6" 
F 0 "U2" H 2250 5900 50  0000 L CNN
F 1 "XC7K160T-2FFG676C" H 2250 5800 50  0000 L CNN
F 2 "" H 2250 5950 50  0001 C CNN
F 3 "" H 2250 5950 50  0001 C CNN
	6    2250 5950
	1    0    0    -1  
$EndComp
Text HLabel 2050 1100 0    50   BiDi ~ 0
K7_QSPI_DQ0
Text HLabel 2050 1200 0    50   BiDi ~ 0
K7_QSPI_DQ1
Text HLabel 2050 1300 0    50   BiDi ~ 0
K7_QSPI_DQ2
Text HLabel 2050 1400 0    50   BiDi ~ 0
K7_QSPI_DQ3
Text HLabel 2050 2100 0    50   BiDi ~ 0
K7_QSPI_CS_N
Text HLabel 2050 5500 0    50   Input ~ 0
EXT_TRIG_2_P
Text HLabel 2050 5600 0    50   Input ~ 0
EXT_TRIG_2_N
Text HLabel 2050 5700 0    50   Input ~ 0
SYNC_CLK_2_P
Text HLabel 2050 5800 0    50   Input ~ 0
SYNC_CLK_2_N
$Comp
L device:R R?
U 1 1 5F6E3E94
P 9400 700
AR Path="/5EDD723A/5F6E3E94" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5F6E3E94" Ref="R33"  Part="1" 
F 0 "R33" V 9300 700 50  0000 C CNN
F 1 "100" V 9400 700 50  0000 C CNN
F 2 "" V 9330 700 50  0001 C CNN
F 3 "" H 9400 700 50  0001 C CNN
	1    9400 700 
	0    1    1    0   
$EndComp
Text Label 9250 700  2    50   ~ 0
EXT_TRIG_2_P
Text Label 9550 700  0    50   ~ 0
EXT_TRIG_2_N
$Comp
L device:R R?
U 1 1 5F6E3E9C
P 9400 900
AR Path="/5EDD723A/5F6E3E9C" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5F6E3E9C" Ref="R34"  Part="1" 
F 0 "R34" V 9300 900 50  0000 C CNN
F 1 "100" V 9400 900 50  0000 C CNN
F 2 "" V 9330 900 50  0001 C CNN
F 3 "" H 9400 900 50  0001 C CNN
	1    9400 900 
	0    1    1    0   
$EndComp
Text Label 9250 900  2    50   ~ 0
SYNC_CLK_2_P
Text Label 9550 900  0    50   ~ 0
SYNC_CLK_2_N
Text Notes 9300 1500 0    50   ~ 0
Need external terminators\nsince these go to a VCCO=3.3V bank
Text HLabel 7100 3550 2    50   Input ~ 0
ETH_REFCLK
Text HLabel 4850 1350 0    50   Input ~ 0
3V3
Text HLabel 4850 1850 0    50   Input ~ 0
1V2
Text HLabel 4850 3000 0    50   Input ~ 0
GND
Text HLabel 2050 1000 0    50   Input ~ 0
K7_SPI_CS_N
Text HLabel 2050 1600 0    50   Input ~ 0
K7_SPI_MOSI
Text HLabel 2050 1700 0    50   Output ~ 0
K7_SPI_MISO
Text HLabel 2050 3300 0    50   Input ~ 0
K7_SPI_SCK
Text Label 4850 1050 2    50   ~ 0
A3V3
Wire Wire Line
	4850 1050 4850 1150
Wire Wire Line
	4850 1350 4850 1450
Connection ~ 4850 1450
Wire Wire Line
	4850 1450 4850 1550
Text Label 4850 1650 2    50   ~ 0
A1V2
Wire Wire Line
	4850 1750 4850 1650
Wire Wire Line
	4850 1850 4850 1950
Connection ~ 4850 1950
Wire Wire Line
	4850 1950 4850 2050
Connection ~ 4850 2050
Wire Wire Line
	4850 2050 4850 2150
Connection ~ 4850 2150
Wire Wire Line
	4850 2150 4850 2250
Connection ~ 4850 2250
Wire Wire Line
	4850 2250 4850 2350
Text Label 4850 2450 2    50   ~ 0
A1V2_PLL
NoConn ~ 4850 2700
NoConn ~ 4850 2900
NoConn ~ 4850 1250
Wire Wire Line
	4850 3000 4850 3100
Text Label 4850 3300 2    50   ~ 0
ETH_A_P
Text Label 4850 3400 2    50   ~ 0
ETH_A_N
Text Label 4850 3500 2    50   ~ 0
ETH_B_P
Text Label 4850 3600 2    50   ~ 0
ETH_B_N
Text Label 4850 3700 2    50   ~ 0
ETH_C_P
Text Label 4850 3800 2    50   ~ 0
ETH_C_N
Text Label 4850 4000 2    50   ~ 0
ETH_D_N
Text Label 4850 3900 2    50   ~ 0
ETH_D_P
Text Label 9450 2450 2    50   ~ 0
ETH_A_P
Text Label 9450 2650 2    50   ~ 0
ETH_A_N
Text Label 9450 2850 2    50   ~ 0
ETH_B_P
Text Label 9450 3050 2    50   ~ 0
ETH_B_N
Text Label 9450 3250 2    50   ~ 0
ETH_C_P
Text Label 9450 3450 2    50   ~ 0
ETH_C_N
Text Label 9450 3850 2    50   ~ 0
ETH_D_N
Text Label 9450 3650 2    50   ~ 0
ETH_D_P
Text Label 9450 4050 2    50   ~ 0
GND
$Comp
L device:R R41
U 1 1 5F9FCC19
P 7100 1000
F 0 "R41" H 7170 1046 50  0000 L CNN
F 1 "1K" H 7170 955 50  0000 L CNN
F 2 "" V 7030 1000 50  0001 C CNN
F 3 "" H 7100 1000 50  0001 C CNN
	1    7100 1000
	1    0    0    -1  
$EndComp
Text Label 7250 1150 0    50   ~ 0
ETH_LED2_N
Wire Wire Line
	7250 1150 7100 1150
Connection ~ 7100 1150
Text Label 9450 2250 2    50   ~ 0
ETH_LED2_N
Text Label 7100 850  0    50   ~ 0
GND
$Comp
L device:R R50
U 1 1 5F9FFD74
P 7800 1100
F 0 "R50" H 7870 1146 50  0000 L CNN
F 1 "1K" H 7870 1055 50  0000 L CNN
F 2 "" V 7730 1100 50  0001 C CNN
F 3 "" H 7800 1100 50  0001 C CNN
	1    7800 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 1250 7800 1250
Text Label 8000 1250 0    50   ~ 0
ETH_LED1_N
Wire Wire Line
	8000 1250 7800 1250
Connection ~ 7800 1250
Wire Wire Line
	7100 850  7800 850 
Wire Wire Line
	7800 850  7800 950 
Text Label 9450 2050 2    50   ~ 0
ETH_LED1_N
Text Label 9450 1950 2    50   ~ 0
3V3
Text Label 9450 2150 2    50   ~ 0
3V3
Text Label 7100 1550 0    50   ~ 0
RGMII_TXD0
Text Label 7100 1650 0    50   ~ 0
RGMII_TXD1
Text Label 7100 1750 0    50   ~ 0
RGMII_TXD2
Text Label 7100 1850 0    50   ~ 0
RGMII_TXD3
Text Label 7100 1950 0    50   ~ 0
RGMII_TXD_CLK
Text Label 7100 2050 0    50   ~ 0
RGMII_TX_EN
$Comp
L device:R R?
U 1 1 5FA10443
P 7250 2200
AR Path="/5EDD723A/5FA10443" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5FA10443" Ref="R42"  Part="1" 
F 0 "R42" V 7200 2350 50  0000 C CNN
F 1 "33" V 7250 2200 50  0000 C CNN
F 2 "" V 7180 2200 50  0001 C CNN
F 3 "" H 7250 2200 50  0001 C CNN
	1    7250 2200
	0    1    1    0   
$EndComp
Text Label 7600 2200 0    50   ~ 0
RGMII_RXD3
Wire Wire Line
	7600 2200 7400 2200
Text Notes 7050 1350 0    50   ~ 0
strap: PHYADDR[1:0] = 0
$Comp
L device:R R?
U 1 1 5FA1D793
P 7250 2300
AR Path="/5EDD723A/5FA1D793" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5FA1D793" Ref="R43"  Part="1" 
F 0 "R43" V 7200 2450 50  0000 C CNN
F 1 "33" V 7250 2300 50  0000 C CNN
F 2 "" V 7180 2300 50  0001 C CNN
F 3 "" H 7250 2300 50  0001 C CNN
	1    7250 2300
	0    1    1    0   
$EndComp
Text Label 7600 2300 0    50   ~ 0
RGMII_RXD2
Wire Wire Line
	7600 2300 7400 2300
$Comp
L device:R R?
U 1 1 5FA1E195
P 7250 2400
AR Path="/5EDD723A/5FA1E195" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5FA1E195" Ref="R44"  Part="1" 
F 0 "R44" V 7200 2550 50  0000 C CNN
F 1 "33" V 7250 2400 50  0000 C CNN
F 2 "" V 7180 2400 50  0001 C CNN
F 3 "" H 7250 2400 50  0001 C CNN
	1    7250 2400
	0    1    1    0   
$EndComp
Text Label 7600 2400 0    50   ~ 0
RGMII_RXD1
Wire Wire Line
	7600 2400 7400 2400
$Comp
L device:R R?
U 1 1 5FA1EC4B
P 7250 2500
AR Path="/5EDD723A/5FA1EC4B" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5FA1EC4B" Ref="R45"  Part="1" 
F 0 "R45" V 7200 2650 50  0000 C CNN
F 1 "33" V 7250 2500 50  0000 C CNN
F 2 "" V 7180 2500 50  0001 C CNN
F 3 "" H 7250 2500 50  0001 C CNN
	1    7250 2500
	0    1    1    0   
$EndComp
Text Label 7600 2500 0    50   ~ 0
RGMII_RXD0
Wire Wire Line
	7600 2500 7400 2500
$Comp
L device:R R?
U 1 1 5FA1F684
P 7250 2600
AR Path="/5EDD723A/5FA1F684" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5FA1F684" Ref="R46"  Part="1" 
F 0 "R46" V 7200 2750 50  0000 C CNN
F 1 "33" V 7250 2600 50  0000 C CNN
F 2 "" V 7180 2600 50  0001 C CNN
F 3 "" H 7250 2600 50  0001 C CNN
	1    7250 2600
	0    1    1    0   
$EndComp
Text Label 7600 2600 0    50   ~ 0
RGMII_RX_DV
Wire Wire Line
	7600 2600 7400 2600
$Comp
L device:R R?
U 1 1 5FA20099
P 7250 2700
AR Path="/5EDD723A/5FA20099" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5FA20099" Ref="R47"  Part="1" 
F 0 "R47" V 7200 2850 50  0000 C CNN
F 1 "33" V 7250 2700 50  0000 C CNN
F 2 "" V 7180 2700 50  0001 C CNN
F 3 "" H 7250 2700 50  0001 C CNN
	1    7250 2700
	0    1    1    0   
$EndComp
Text Label 7600 2700 0    50   ~ 0
RGMII_RX_CLK
Wire Wire Line
	7600 2700 7400 2700
Text Label 7600 2800 0    50   ~ 0
RGMII_MDC
Wire Wire Line
	7600 2800 7100 2800
Text Label 7600 2900 0    50   ~ 0
RGMII_MDIO
$Comp
L device:R R?
U 1 1 5FA224C2
P 8200 2900
AR Path="/5EDD723A/5FA224C2" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5FA224C2" Ref="R51"  Part="1" 
F 0 "R51" V 8150 3050 50  0000 C CNN
F 1 "1K" V 8200 2900 50  0000 C CNN
F 2 "" V 8130 2900 50  0001 C CNN
F 3 "" H 8200 2900 50  0001 C CNN
	1    8200 2900
	0    1    1    0   
$EndComp
Text Label 8450 2900 0    50   ~ 0
3V3
Wire Wire Line
	8450 2900 8350 2900
Wire Wire Line
	7100 2900 8050 2900
NoConn ~ 7100 3000
$Comp
L device:R R?
U 1 1 5FA24B21
P 7250 3100
AR Path="/5EDD723A/5FA24B21" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5FA24B21" Ref="R48"  Part="1" 
F 0 "R48" V 7200 3250 50  0000 C CNN
F 1 "10K" V 7250 3100 50  0000 C CNN
F 2 "" V 7180 3100 50  0001 C CNN
F 3 "" H 7250 3100 50  0001 C CNN
	1    7250 3100
	0    1    1    0   
$EndComp
Text Label 7550 3100 0    50   ~ 0
3V3
Wire Wire Line
	7550 3100 7400 3100
Text Notes 7750 3100 0    50   ~ 0
strap: dual LEDs
Text Label 7600 3200 0    50   ~ 0
RGMII_RST_N
Wire Wire Line
	7600 3200 7100 3200
NoConn ~ 7100 3450
$Comp
L device:R R?
U 1 1 5FA2806F
P 7250 3750
AR Path="/5EDD723A/5FA2806F" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5FA2806F" Ref="R49"  Part="1" 
F 0 "R49" V 7200 3900 50  0000 C CNN
F 1 "12.1K 1%" V 7350 3750 50  0000 C CNN
F 2 "" V 7180 3750 50  0001 C CNN
F 3 "" H 7250 3750 50  0001 C CNN
	1    7250 3750
	0    1    1    0   
$EndComp
Text Label 7600 3750 0    50   ~ 0
GND
Wire Wire Line
	7600 3750 7400 3750
Text Label 2050 4100 2    50   ~ 0
RGMII_TXD0
Text Label 2050 4200 2    50   ~ 0
RGMII_TXD1
Text Label 2050 4300 2    50   ~ 0
RGMII_TXD2
Text Label 2050 4400 2    50   ~ 0
RGMII_TXD3
Text Label 2050 4500 2    50   ~ 0
RGMII_TXD_CLK
Text Label 2050 4600 2    50   ~ 0
RGMII_TX_EN
Text Label 2050 3700 2    50   ~ 0
RGMII_RXD3
Text Label 2050 3800 2    50   ~ 0
RGMII_RXD2
Text Label 2050 3900 2    50   ~ 0
RGMII_RXD1
Text Label 2050 4000 2    50   ~ 0
RGMII_RXD0
Text Label 2050 3600 2    50   ~ 0
RGMII_RX_DV
Text Label 2050 3500 2    50   ~ 0
RGMII_RX_CLK
Text Label 2050 4700 2    50   ~ 0
RGMII_MDC
Text Label 2050 4800 2    50   ~ 0
RGMII_MDIO
Text Label 2050 4900 2    50   ~ 0
RGMII_RST_N
Text Label 1250 6400 2    50   ~ 0
RGMII_RXD3
$Comp
L device:R R?
U 1 1 5FA3635C
P 1400 6400
AR Path="/5EDD723A/5FA3635C" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5FA3635C" Ref="R35"  Part="1" 
F 0 "R35" V 1350 6550 50  0000 C CNN
F 1 "10K" V 1400 6400 50  0000 C CNN
F 2 "" V 1330 6400 50  0001 C CNN
F 3 "" H 1400 6400 50  0001 C CNN
	1    1400 6400
	0    1    1    0   
$EndComp
Text Label 1650 6400 0    50   ~ 0
3V3
Wire Wire Line
	1650 6400 1550 6400
$Comp
L device:R R?
U 1 1 5FA37AA3
P 1400 6500
AR Path="/5EDD723A/5FA37AA3" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5FA37AA3" Ref="R36"  Part="1" 
F 0 "R36" V 1350 6650 50  0000 C CNN
F 1 "10K" V 1400 6500 50  0000 C CNN
F 2 "" V 1330 6500 50  0001 C CNN
F 3 "" H 1400 6500 50  0001 C CNN
	1    1400 6500
	0    1    1    0   
$EndComp
Text Label 1250 6500 2    50   ~ 0
RGMII_RXD2
Text Label 1250 6600 2    50   ~ 0
RGMII_RXD1
$Comp
L device:R R?
U 1 1 5FA37DDD
P 1400 6600
AR Path="/5EDD723A/5FA37DDD" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5FA37DDD" Ref="R37"  Part="1" 
F 0 "R37" V 1350 6750 50  0000 C CNN
F 1 "10K" V 1400 6600 50  0000 C CNN
F 2 "" V 1330 6600 50  0001 C CNN
F 3 "" H 1400 6600 50  0001 C CNN
	1    1400 6600
	0    1    1    0   
$EndComp
Wire Wire Line
	1550 6600 1650 6600
Wire Wire Line
	1650 6600 1650 6500
Wire Wire Line
	1550 6500 1650 6500
Connection ~ 1650 6500
Wire Wire Line
	1650 6500 1650 6400
$Comp
L device:R R?
U 1 1 5FA3963F
P 1400 6700
AR Path="/5EDD723A/5FA3963F" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5FA3963F" Ref="R38"  Part="1" 
F 0 "R38" V 1350 6850 50  0000 C CNN
F 1 "10K" V 1400 6700 50  0000 C CNN
F 2 "" V 1330 6700 50  0001 C CNN
F 3 "" H 1400 6700 50  0001 C CNN
	1    1400 6700
	0    1    1    0   
$EndComp
Text Label 1250 6700 2    50   ~ 0
RGMII_RXD0
Text Label 1650 6700 0    50   ~ 0
GND
Wire Wire Line
	1650 6700 1550 6700
Text Notes 1300 6850 0    50   ~ 0
strap: advertise everything but gig/half
Text Label 1250 7000 2    50   ~ 0
RGMII_RX_DV
$Comp
L device:R R?
U 1 1 5FA41BF4
P 1400 7000
AR Path="/5EDD723A/5FA41BF4" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5FA41BF4" Ref="R39"  Part="1" 
F 0 "R39" V 1350 7150 50  0000 C CNN
F 1 "10K" V 1400 7000 50  0000 C CNN
F 2 "" V 1330 7000 50  0001 C CNN
F 3 "" H 1400 7000 50  0001 C CNN
	1    1400 7000
	0    1    1    0   
$EndComp
Text Label 1650 7000 0    50   ~ 0
GND
Wire Wire Line
	1650 7000 1550 7000
Text Notes 1300 7150 0    50   ~ 0
strap: no 125 MHz refclk out
Text Label 1250 7300 2    50   ~ 0
RGMII_RX_CLK
$Comp
L device:R R?
U 1 1 5FA42D01
P 1400 7300
AR Path="/5EDD723A/5FA42D01" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5FA42D01" Ref="R40"  Part="1" 
F 0 "R40" V 1350 7450 50  0000 C CNN
F 1 "10K" V 1400 7300 50  0000 C CNN
F 2 "" V 1330 7300 50  0001 C CNN
F 3 "" H 1400 7300 50  0001 C CNN
	1    1400 7300
	0    1    1    0   
$EndComp
Text Label 1650 7300 0    50   ~ 0
GND
Wire Wire Line
	1650 7300 1550 7300
Text Notes 1300 7450 0    50   ~ 0
strap: PHYADDR[2] = 0
$Comp
L device:C C113
U 1 1 5FA48C06
P 5150 4550
F 0 "C113" H 5265 4596 50  0000 L CNN
F 1 "4.7 uF" H 5265 4505 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 5188 4400 50  0001 C CNN
F 3 "" H 5150 4550 50  0001 C CNN
	1    5150 4550
	1    0    0    -1  
$EndComp
Text Label 5150 4400 2    50   ~ 0
3V3
$Comp
L passive-azonenberg:INDUCTOR_PWROUT FB1
U 1 1 5FA49FE3
P 5650 4400
F 0 "FB1" V 5492 4400 40  0000 C CNN
F 1 "600R @ 100 MHz" V 5568 4400 40  0000 C CNN
F 2 "" H 5650 4400 60  0001 C CNN
F 3 "" H 5650 4400 60  0000 C CNN
	1    5650 4400
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 4400 5150 4400
$Comp
L device:C C120
U 1 1 5FA4B899
P 6050 4550
F 0 "C120" H 6165 4596 50  0000 L CNN
F 1 "4.7 uF" H 6165 4505 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 6088 4400 50  0001 C CNN
F 3 "" H 6050 4550 50  0001 C CNN
	1    6050 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4400 6050 4400
$Comp
L device:C C126
U 1 1 5FA4CAD4
P 6550 4550
F 0 "C126" H 6665 4596 50  0000 L CNN
F 1 "0.47 uF" H 6665 4505 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6588 4400 50  0001 C CNN
F 3 "" H 6550 4550 50  0001 C CNN
	1    6550 4550
	1    0    0    -1  
$EndComp
$Comp
L device:C C130
U 1 1 5FA4D154
P 7100 4550
F 0 "C130" H 7215 4596 50  0000 L CNN
F 1 "0.47 uF" H 7215 4505 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 7138 4400 50  0001 C CNN
F 3 "" H 7100 4550 50  0001 C CNN
	1    7100 4550
	1    0    0    -1  
$EndComp
Text Label 7250 4400 0    50   ~ 0
A3V3
Wire Wire Line
	7250 4400 7100 4400
Connection ~ 6050 4400
Connection ~ 6550 4400
Wire Wire Line
	6550 4400 6050 4400
Connection ~ 7100 4400
Wire Wire Line
	7100 4400 6550 4400
Wire Wire Line
	7100 4700 6550 4700
Connection ~ 6050 4700
Wire Wire Line
	6050 4700 5150 4700
Connection ~ 6550 4700
Wire Wire Line
	6550 4700 6050 4700
$Comp
L device:C C114
U 1 1 5FA4FD84
P 5150 5000
F 0 "C114" H 5265 5046 50  0000 L CNN
F 1 "4.7 uF" H 5265 4955 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 5188 4850 50  0001 C CNN
F 3 "" H 5150 5000 50  0001 C CNN
	1    5150 5000
	1    0    0    -1  
$EndComp
$Comp
L device:C C121
U 1 1 5FA504ED
P 6050 5000
F 0 "C121" H 6165 5046 50  0000 L CNN
F 1 "4.7 uF" H 6165 4955 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 6088 4850 50  0001 C CNN
F 3 "" H 6050 5000 50  0001 C CNN
	1    6050 5000
	1    0    0    -1  
$EndComp
$Comp
L device:C C127
U 1 1 5FA50B56
P 6550 5000
F 0 "C127" H 6665 5046 50  0000 L CNN
F 1 "0.47 uF" H 6665 4955 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6588 4850 50  0001 C CNN
F 3 "" H 6550 5000 50  0001 C CNN
	1    6550 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 4850 6050 4850
Connection ~ 6050 4850
Wire Wire Line
	6050 4850 5150 4850
Text Label 5150 4850 2    50   ~ 0
3V3
Wire Wire Line
	5150 5150 6050 5150
Connection ~ 6050 5150
Wire Wire Line
	6050 5150 6550 5150
Text Label 5150 4700 2    50   ~ 0
GND
Text Label 5150 5150 2    50   ~ 0
GND
$Comp
L device:C C115
U 1 1 5FA5F92E
P 5150 5550
F 0 "C115" H 5265 5596 50  0000 L CNN
F 1 "4.7 uF" H 5265 5505 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 5188 5400 50  0001 C CNN
F 3 "" H 5150 5550 50  0001 C CNN
	1    5150 5550
	1    0    0    -1  
$EndComp
Text Label 5150 5400 2    50   ~ 0
1V2
$Comp
L passive-azonenberg:INDUCTOR_PWROUT FB2
U 1 1 5FA5F939
P 5650 5400
F 0 "FB2" V 5492 5400 40  0000 C CNN
F 1 "600R @ 100 MHz" V 5568 5400 40  0000 C CNN
F 2 "" H 5650 5400 60  0001 C CNN
F 3 "" H 5650 5400 60  0000 C CNN
	1    5650 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 5400 5150 5400
$Comp
L device:C C122
U 1 1 5FA5F944
P 6050 5550
F 0 "C122" H 6165 5596 50  0000 L CNN
F 1 "4.7 uF" H 6165 5505 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 6088 5400 50  0001 C CNN
F 3 "" H 6050 5550 50  0001 C CNN
	1    6050 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5400 6050 5400
$Comp
L device:C C128
U 1 1 5FA5F94F
P 6550 5550
F 0 "C128" H 6665 5596 50  0000 L CNN
F 1 "0.47 uF" H 6665 5505 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6588 5400 50  0001 C CNN
F 3 "" H 6550 5550 50  0001 C CNN
	1    6550 5550
	1    0    0    -1  
$EndComp
$Comp
L device:C C131
U 1 1 5FA5F959
P 7100 5550
F 0 "C131" H 7215 5596 50  0000 L CNN
F 1 "0.47 uF" H 7215 5505 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 7138 5400 50  0001 C CNN
F 3 "" H 7100 5550 50  0001 C CNN
	1    7100 5550
	1    0    0    -1  
$EndComp
Text Label 7250 5400 0    50   ~ 0
A1V2
Wire Wire Line
	7250 5400 7100 5400
Connection ~ 6050 5400
Connection ~ 6550 5400
Wire Wire Line
	6550 5400 6050 5400
Connection ~ 7100 5400
Wire Wire Line
	7100 5400 6550 5400
Wire Wire Line
	7100 5700 6550 5700
Connection ~ 6050 5700
Wire Wire Line
	6050 5700 5150 5700
Connection ~ 6550 5700
Wire Wire Line
	6550 5700 6050 5700
Text Label 5150 5700 2    50   ~ 0
GND
Text Label 5150 5900 2    50   ~ 0
1V2
$Comp
L passive-azonenberg:INDUCTOR_PWROUT FB3
U 1 1 5FA63BAB
P 5650 5900
F 0 "FB3" V 5492 5900 40  0000 C CNN
F 1 "600R @ 100 MHz" V 5568 5900 40  0000 C CNN
F 2 "" H 5650 5900 60  0001 C CNN
F 3 "" H 5650 5900 60  0000 C CNN
	1    5650 5900
	0    1    1    0   
$EndComp
Wire Wire Line
	5350 5900 5150 5900
$Comp
L device:C C123
U 1 1 5FA63BB6
P 6050 6050
F 0 "C123" H 6165 6096 50  0000 L CNN
F 1 "4.7 uF" H 6165 6005 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0603_CAP_NOSILK" H 6088 5900 50  0001 C CNN
F 3 "" H 6050 6050 50  0001 C CNN
	1    6050 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 5900 6050 5900
$Comp
L device:C C129
U 1 1 5FA63BC1
P 6550 6050
F 0 "C129" H 6665 6096 50  0000 L CNN
F 1 "0.47 uF" H 6665 6005 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 6588 5900 50  0001 C CNN
F 3 "" H 6550 6050 50  0001 C CNN
	1    6550 6050
	1    0    0    -1  
$EndComp
Text Label 7250 5900 0    50   ~ 0
A1V2_PLL
Connection ~ 6050 5900
Connection ~ 6550 5900
Wire Wire Line
	6550 5900 6050 5900
Connection ~ 6050 6200
Wire Wire Line
	6050 6200 5150 6200
Wire Wire Line
	6550 6200 6050 6200
Text Label 5150 6200 2    50   ~ 0
GND
Wire Wire Line
	6550 5900 7250 5900
Text Label 7750 4400 2    50   ~ 0
1V2
$Comp
L device:C C116
U 1 1 5FA675B7
P 7750 4550
F 0 "C116" H 7865 4596 50  0000 L CNN
F 1 "0.47 uF" H 7865 4505 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 7788 4400 50  0001 C CNN
F 3 "" H 7750 4550 50  0001 C CNN
	1    7750 4550
	1    0    0    -1  
$EndComp
$Comp
L device:C C118
U 1 1 5FA6799E
P 8300 4550
F 0 "C118" H 8415 4596 50  0000 L CNN
F 1 "0.47 uF" H 8415 4505 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8338 4400 50  0001 C CNN
F 3 "" H 8300 4550 50  0001 C CNN
	1    8300 4550
	1    0    0    -1  
$EndComp
$Comp
L device:C C124
U 1 1 5FA67C56
P 8850 4550
F 0 "C124" H 8965 4596 50  0000 L CNN
F 1 "0.47 uF" H 8965 4505 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8888 4400 50  0001 C CNN
F 3 "" H 8850 4550 50  0001 C CNN
	1    8850 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4400 8300 4400
Connection ~ 8300 4400
Wire Wire Line
	8300 4400 7750 4400
Text Label 7750 4700 2    50   ~ 0
GND
Wire Wire Line
	7750 4700 8300 4700
Connection ~ 8300 4700
Wire Wire Line
	8300 4700 8850 4700
Text Label 7750 4900 2    50   ~ 0
1V2
$Comp
L device:C C117
U 1 1 5FA6C22A
P 7750 5050
F 0 "C117" H 7865 5096 50  0000 L CNN
F 1 "0.47 uF" H 7865 5005 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 7788 4900 50  0001 C CNN
F 3 "" H 7750 5050 50  0001 C CNN
	1    7750 5050
	1    0    0    -1  
$EndComp
$Comp
L device:C C119
U 1 1 5FA6C234
P 8300 5050
F 0 "C119" H 8415 5096 50  0000 L CNN
F 1 "0.47 uF" H 8415 5005 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8338 4900 50  0001 C CNN
F 3 "" H 8300 5050 50  0001 C CNN
	1    8300 5050
	1    0    0    -1  
$EndComp
$Comp
L device:C C125
U 1 1 5FA6C23E
P 8850 5050
F 0 "C125" H 8965 5096 50  0000 L CNN
F 1 "0.47 uF" H 8965 5005 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 8888 4900 50  0001 C CNN
F 3 "" H 8850 5050 50  0001 C CNN
	1    8850 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4900 8300 4900
Connection ~ 8300 4900
Wire Wire Line
	8300 4900 7750 4900
Text Label 7750 5200 2    50   ~ 0
GND
Wire Wire Line
	7750 5200 8300 5200
Connection ~ 8300 5200
Wire Wire Line
	8300 5200 8850 5200
Text Label 9450 2550 2    50   ~ 0
ETH_A_TAP
Text Label 9450 2950 2    50   ~ 0
ETH_B_TAP
Text Label 9450 3350 2    50   ~ 0
ETH_C_TAP
Text Label 9450 3750 2    50   ~ 0
ETH_D_TAP
Text Label 10100 5900 2    50   ~ 0
ETH_D_TAP
Text Label 10100 5500 2    50   ~ 0
ETH_C_TAP
Text Label 10400 5100 0    50   ~ 0
GND
$Comp
L device:C C134
U 1 1 5FA8016F
P 10250 5100
F 0 "C134" V 9998 5100 50  0000 C CNN
F 1 "0.1 uF" V 10089 5100 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 10288 4950 50  0001 C CNN
F 3 "" H 10250 5100 50  0001 C CNN
	1    10250 5100
	0    1    1    0   
$EndComp
Text Label 10400 4650 0    50   ~ 0
GND
$Comp
L device:C C133
U 1 1 5FA7D1B9
P 10250 4650
F 0 "C133" V 9998 4650 50  0000 C CNN
F 1 "0.1 uF" V 10089 4650 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 10288 4500 50  0001 C CNN
F 3 "" H 10250 4650 50  0001 C CNN
	1    10250 4650
	0    1    1    0   
$EndComp
Text Label 10100 4650 2    50   ~ 0
ETH_A_TAP
Text Label 10100 5100 2    50   ~ 0
ETH_B_TAP
$Comp
L device:C C135
U 1 1 5FA88287
P 10250 5500
F 0 "C135" V 9998 5500 50  0000 C CNN
F 1 "0.1 uF" V 10089 5500 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 10288 5350 50  0001 C CNN
F 3 "" H 10250 5500 50  0001 C CNN
	1    10250 5500
	0    1    1    0   
$EndComp
Text Label 10400 5500 0    50   ~ 0
GND
$Comp
L device:C C136
U 1 1 5FA88858
P 10250 5900
F 0 "C136" V 9998 5900 50  0000 C CNN
F 1 "0.1 uF" V 10089 5900 50  0000 C CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 10288 5750 50  0001 C CNN
F 3 "" H 10250 5900 50  0001 C CNN
	1    10250 5900
	0    1    1    0   
$EndComp
Text Label 10400 5900 0    50   ~ 0
GND
$Comp
L memory-azonenberg:24Cxx-DFN8 U39
U 1 1 5FA9CC4D
P 4100 7250
F 0 "U39" H 4500 8047 60  0000 C CNN
F 1 "AT24MAC402-UDFN" H 4500 7941 60  0000 C CNN
F 2 "" H 4500 7550 60  0001 C CNN
F 3 "" H 4500 7550 60  0000 C CNN
	1    4100 7250
	1    0    0    -1  
$EndComp
$Comp
L device:C C132
U 1 1 5FA9D71B
P 3300 6850
F 0 "C132" H 3415 6896 50  0000 L CNN
F 1 "0.47 uF" H 3415 6805 50  0000 L CNN
F 2 "azonenberg_pcb:EIA_0402_CAP_NOSILK" H 3338 6700 50  0001 C CNN
F 3 "" H 3300 6850 50  0001 C CNN
	1    3300 6850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 6700 3900 6700
Wire Wire Line
	3900 6800 3750 6800
Wire Wire Line
	3750 6800 3750 7000
Wire Wire Line
	3750 7000 3300 7000
Text Label 3300 7000 2    50   ~ 0
GND
Text Label 3300 6700 2    50   ~ 0
3V3
Text Label 5100 7000 0    50   ~ 0
3V3
Text Label 5100 6800 0    50   ~ 0
MAC_I2C_SDA
Text Label 5100 6700 0    50   ~ 0
MAC_I2C_SCL
Wire Wire Line
	3750 7000 3900 7000
Wire Wire Line
	3900 7000 3900 7100
Connection ~ 3750 7000
Connection ~ 3900 7000
Connection ~ 3900 7100
Wire Wire Line
	3900 7100 3900 7200
Text Notes 4100 7350 0    50   ~ 0
Addr = 8'ha0
$Comp
L device:R R?
U 1 1 5FAB3568
P 5800 6700
AR Path="/5EDD723A/5FAB3568" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5FAB3568" Ref="R52"  Part="1" 
F 0 "R52" V 5750 6900 50  0000 C CNN
F 1 "4.7K" V 5800 6700 50  0000 C CNN
F 2 "" V 5730 6700 50  0001 C CNN
F 3 "" H 5800 6700 50  0001 C CNN
	1    5800 6700
	0    1    1    0   
$EndComp
Text Label 6200 6700 0    50   ~ 0
3V3
Wire Wire Line
	6200 6700 5950 6700
Wire Wire Line
	5650 6700 5100 6700
$Comp
L device:R R?
U 1 1 5FAB9BD7
P 5800 6800
AR Path="/5EDD723A/5FAB9BD7" Ref="R?"  Part="1" 
AR Path="/5EE2921B/5FAB9BD7" Ref="R53"  Part="1" 
F 0 "R53" V 5750 7000 50  0000 C CNN
F 1 "4.7K" V 5800 6800 50  0000 C CNN
F 2 "" V 5730 6800 50  0001 C CNN
F 3 "" H 5800 6800 50  0001 C CNN
	1    5800 6800
	0    1    1    0   
$EndComp
Wire Wire Line
	5650 6800 5100 6800
Wire Wire Line
	5950 6800 6200 6800
Wire Wire Line
	6200 6800 6200 6700
Text Label 2050 5100 2    50   ~ 0
MAC_I2C_SCL
Text Label 2050 5000 2    50   ~ 0
MAC_I2C_SDA
NoConn ~ 2050 2000
NoConn ~ 2050 2200
NoConn ~ 2050 2300
NoConn ~ 2050 5300
NoConn ~ 2050 5200
NoConn ~ 2050 3400
NoConn ~ 2050 3200
NoConn ~ 2050 3100
NoConn ~ 2050 3000
NoConn ~ 2050 2900
NoConn ~ 2050 2400
Text HLabel 2050 5900 0    50   Output ~ 0
PLL_SYNC
NoConn ~ 2050 5400
Text HLabel 2050 2500 0    50   Input ~ 0
PPS_IN_P
Text HLabel 2050 2600 0    50   Input ~ 0
PPS_IN_N
$Comp
L device:R R?
U 1 1 605F8A40
P 9400 1100
AR Path="/5EDD723A/605F8A40" Ref="R?"  Part="1" 
AR Path="/5EE2921B/605F8A40" Ref="R98"  Part="1" 
F 0 "R98" V 9300 1100 50  0000 C CNN
F 1 "100" V 9400 1100 50  0000 C CNN
F 2 "" V 9330 1100 50  0001 C CNN
F 3 "" H 9400 1100 50  0001 C CNN
	1    9400 1100
	0    1    1    0   
$EndComp
Text Label 9250 1100 2    50   ~ 0
GPIO_IN_P
Text Label 9550 1100 0    50   ~ 0
GPIO_IN_P
$Comp
L device:R R?
U 1 1 605F8A4C
P 9400 1300
AR Path="/5EDD723A/605F8A4C" Ref="R?"  Part="1" 
AR Path="/5EE2921B/605F8A4C" Ref="R99"  Part="1" 
F 0 "R99" V 9300 1300 50  0000 C CNN
F 1 "100" V 9400 1300 50  0000 C CNN
F 2 "" V 9330 1300 50  0001 C CNN
F 3 "" H 9400 1300 50  0001 C CNN
	1    9400 1300
	0    1    1    0   
$EndComp
Text Label 9250 1300 2    50   ~ 0
PPS_IN_P
Text Label 9550 1300 0    50   ~ 0
PPS_IN_P
Text HLabel 2050 1800 0    50   Input ~ 0
SCPI_UART_TX
Text HLabel 2050 1900 0    50   Output ~ 0
SCPI_UART_RX
NoConn ~ 2050 2700
NoConn ~ 2050 2800
$Comp
L device:R R213
U 1 1 61DFD9AC
P 1300 1500
F 0 "R213" V 1200 1500 50  0000 C CNN
F 1 "1K" V 1300 1500 50  0000 C CNN
F 2 "" V 1230 1500 50  0001 C CNN
F 3 "" H 1300 1500 50  0001 C CNN
	1    1300 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 1500 2050 1500
Text Label 1150 1500 2    50   ~ 0
3V3
$EndSCHEMATC
