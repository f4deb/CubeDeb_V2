EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
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
L Connector_Generic:Conn_02x20_Odd_Even J1001
U 1 1 608A2314
P 2200 3000
F 0 "J1001" H 2250 4117 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 2250 4026 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 2200 3000 50  0001 C CNN
F 3 "~" H 2200 3000 50  0001 C CNN
	1    2200 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2725 2100 2500 2100
Wire Wire Line
	2725 2200 2500 2200
Wire Wire Line
	2725 2300 2500 2300
Wire Wire Line
	2725 2400 2500 2400
Wire Wire Line
	2725 2500 2500 2500
Wire Wire Line
	2725 2600 2500 2600
Wire Wire Line
	2725 2700 2500 2700
Wire Wire Line
	2725 2800 2500 2800
Wire Wire Line
	2725 2900 2500 2900
Wire Wire Line
	2725 3000 2500 3000
Wire Wire Line
	2725 3100 2500 3100
Wire Wire Line
	2725 3200 2500 3200
Wire Wire Line
	2725 3300 2500 3300
Wire Wire Line
	2725 3400 2500 3400
Wire Wire Line
	2725 3500 2500 3500
Wire Wire Line
	2725 3600 2500 3600
Wire Wire Line
	2725 3700 2500 3700
Wire Wire Line
	2725 3800 2500 3800
Wire Wire Line
	2725 3900 2500 3900
Wire Wire Line
	2725 4000 2500 4000
Wire Wire Line
	2000 2100 1700 2100
Wire Wire Line
	2000 2200 1700 2200
Wire Wire Line
	2000 2300 1700 2300
Wire Wire Line
	2000 2400 1700 2400
Wire Wire Line
	2000 2500 1700 2500
Wire Wire Line
	2000 2600 1700 2600
Wire Wire Line
	2000 2700 1700 2700
Wire Wire Line
	2000 2800 1700 2800
Wire Wire Line
	2000 2900 1700 2900
Wire Wire Line
	2000 3000 1700 3000
Wire Wire Line
	2000 3200 1700 3200
Wire Wire Line
	2000 3300 1700 3300
Wire Wire Line
	2000 3400 1700 3400
Wire Wire Line
	2000 3500 1700 3500
Wire Wire Line
	2000 3600 1700 3600
Wire Wire Line
	2000 3700 1700 3700
Wire Wire Line
	2000 3800 1700 3800
Wire Wire Line
	2000 3900 1700 3900
Wire Wire Line
	2000 4000 1700 4000
$Comp
L power:GND #PWR0125
U 1 1 608CCC80
P 1700 2100
F 0 "#PWR0125" H 1700 1850 50  0001 C CNN
F 1 "GND" V 1705 1972 50  0000 R CNN
F 2 "" H 1700 2100 50  0001 C CNN
F 3 "" H 1700 2100 50  0001 C CNN
	1    1700 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 608CD312
P 2725 2100
F 0 "#PWR0126" H 2725 1850 50  0001 C CNN
F 1 "GND" V 2730 1972 50  0000 R CNN
F 2 "" H 2725 2100 50  0001 C CNN
F 3 "" H 2725 2100 50  0001 C CNN
	1    2725 2100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 608CDAA3
P 2725 4000
F 0 "#PWR0127" H 2725 3750 50  0001 C CNN
F 1 "GND" V 2730 3872 50  0000 R CNN
F 2 "" H 2725 4000 50  0001 C CNN
F 3 "" H 2725 4000 50  0001 C CNN
	1    2725 4000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0128
U 1 1 608CE4A6
P 1700 4000
F 0 "#PWR0128" H 1700 3750 50  0001 C CNN
F 1 "GND" V 1705 3872 50  0000 R CNN
F 2 "" H 1700 4000 50  0001 C CNN
F 3 "" H 1700 4000 50  0001 C CNN
	1    1700 4000
	0    1    1    0   
$EndComp
Text Label 1700 2200 0    50   ~ 0
IC1
Text Label 2525 2200 0    50   ~ 0
IC2
Text Label 1700 2300 0    50   ~ 0
CAN1RX
Text Label 2525 2300 0    50   ~ 0
CAN1TX
Text Label 1700 2400 0    50   ~ 0
SCK1
Text Label 2525 2400 0    50   ~ 0
SDI1
Text Label 1700 2700 0    50   ~ 0
D1
Text Label 1700 2800 0    50   ~ 0
D3
Text Label 1700 2900 0    50   ~ 0
D5
Text Label 1700 3000 0    50   ~ 0
D7
Text Label 1850 3300 2    50   ~ 0
UART-RX1
Text Label 1850 3400 2    50   ~ 0
UART-RX2
Text Label 1850 3500 2    50   ~ 0
UART-RX3
Text Label 1875 3600 2    50   ~ 0
SDA1
Text Label 1875 3700 2    50   ~ 0
SDA2
Text Label 1875 3800 2    50   ~ 0
SDA3
Text Label 1825 3900 2    50   ~ 0
RST
Text Label 1700 3100 0    50   ~ 0
RS
Wire Wire Line
	1700 3100 2000 3100
Text Label 2525 2500 0    50   ~ 0
SDO1
Text Label 2525 2600 0    50   ~ 0
D0
Text Label 2525 2700 0    50   ~ 0
D2
Text Label 2525 2800 0    50   ~ 0
D4
Text Label 2525 2900 0    50   ~ 0
D6
Text Label 2525 3000 0    50   ~ 0
E
Text Label 2525 3100 0    50   ~ 0
RW
Text Label 2525 3600 0    50   ~ 0
SCL1
Text Label 2525 3700 0    50   ~ 0
SCL2
Text Label 2525 3800 0    50   ~ 0
SCL3
Text Label 2525 3900 0    50   ~ 0
IO9
Text Label 2525 3500 0    50   ~ 0
UART-TX3
Text Label 2525 3400 0    50   ~ 0
UART-TX2
Text Label 2525 3300 0    50   ~ 0
UART-TX1
Text Label 1700 3200 0    50   ~ 0
CS1
Text Label 2525 3200 0    50   ~ 0
CS2
Text Label 1700 2600 0    50   ~ 0
IO10
Text Label 1700 2500 0    50   ~ 0
IO11
Text Label 6350 3900 0    50   ~ 0
IO6
Text Label 6350 3800 0    50   ~ 0
IO4
Text Label 6350 3700 0    50   ~ 0
IO2
Text Label 6350 3600 0    50   ~ 0
IO0
Text Label 7150 3900 0    50   ~ 0
IO7
Text Label 7150 3800 0    50   ~ 0
IO5
Text Label 7150 3700 0    50   ~ 0
IO3
Text Label 7150 3600 0    50   ~ 0
IO1
Text Label 7150 3500 0    50   ~ 0
IO8
Text Label 7125 3400 0    50   ~ 0
INT0
Text Label 7125 3300 0    50   ~ 0
PWM3
Text Label 7125 3200 0    50   ~ 0
PWM1
Text Label 6350 3500 0    50   ~ 0
INT1
Text Label 6350 3400 0    50   ~ 0
PWM4
Text Label 6350 3300 0    50   ~ 0
PWM2
Text Label 6350 3200 0    50   ~ 0
PWM0
$Comp
L power:GND #PWR0124
U 1 1 608C28D8
P 7300 3100
F 0 "#PWR0124" H 7300 2850 50  0001 C CNN
F 1 "GND" V 7305 2972 50  0000 R CNN
F 2 "" H 7300 3100 50  0001 C CNN
F 3 "" H 7300 3100 50  0001 C CNN
	1    7300 3100
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 608C22B1
P 6350 3100
F 0 "#PWR0123" H 6350 2850 50  0001 C CNN
F 1 "GND" V 6355 2972 50  0000 R CNN
F 2 "" H 6350 3100 50  0001 C CNN
F 3 "" H 6350 3100 50  0001 C CNN
	1    6350 3100
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0122
U 1 1 608C1C2E
P 7300 3000
F 0 "#PWR0122" H 7300 2850 50  0001 C CNN
F 1 "+3.3V" V 7315 3128 50  0000 L CNN
F 2 "" H 7300 3000 50  0001 C CNN
F 3 "" H 7300 3000 50  0001 C CNN
	1    7300 3000
	0    1    1    0   
$EndComp
$Comp
L power:+3.3V #PWR0121
U 1 1 608C165A
P 6350 3000
F 0 "#PWR0121" H 6350 2850 50  0001 C CNN
F 1 "+3.3V" V 6365 3128 50  0000 L CNN
F 2 "" H 6350 3000 50  0001 C CNN
F 3 "" H 6350 3000 50  0001 C CNN
	1    6350 3000
	0    -1   -1   0   
$EndComp
$Comp
L power:+5VD #PWR0120
U 1 1 608C0E4E
P 7300 2800
F 0 "#PWR0120" H 7300 2650 50  0001 C CNN
F 1 "+5VD" V 7315 2928 50  0000 L CNN
F 2 "" H 7300 2800 50  0001 C CNN
F 3 "" H 7300 2800 50  0001 C CNN
	1    7300 2800
	0    1    1    0   
$EndComp
$Comp
L power:+5VD #PWR0119
U 1 1 608C08C7
P 6350 2800
F 0 "#PWR0119" H 6350 2650 50  0001 C CNN
F 1 "+5VD" V 6365 2928 50  0000 L CNN
F 2 "" H 6350 2800 50  0001 C CNN
F 3 "" H 6350 2800 50  0001 C CNN
	1    6350 2800
	0    -1   -1   0   
$EndComp
$Comp
L power:+5VA #PWR0118
U 1 1 608C010B
P 7300 2600
F 0 "#PWR0118" H 7300 2450 50  0001 C CNN
F 1 "+5VA" V 7315 2728 50  0000 L CNN
F 2 "" H 7300 2600 50  0001 C CNN
F 3 "" H 7300 2600 50  0001 C CNN
	1    7300 2600
	0    1    1    0   
$EndComp
$Comp
L power:+5VA #PWR0117
U 1 1 608BFBE9
P 6350 2600
F 0 "#PWR0117" H 6350 2450 50  0001 C CNN
F 1 "+5VA" V 6365 2727 50  0000 L CNN
F 2 "" H 6350 2600 50  0001 C CNN
F 3 "" H 6350 2600 50  0001 C CNN
	1    6350 2600
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0116
U 1 1 608BF0D9
P 7300 2400
F 0 "#PWR0116" H 7300 2250 50  0001 C CNN
F 1 "+12V" V 7315 2528 50  0000 L CNN
F 2 "" H 7300 2400 50  0001 C CNN
F 3 "" H 7300 2400 50  0001 C CNN
	1    7300 2400
	0    1    1    0   
$EndComp
$Comp
L power:+12V #PWR0115
U 1 1 608BE8E7
P 6350 2400
F 0 "#PWR0115" H 6350 2250 50  0001 C CNN
F 1 "+12V" V 6365 2528 50  0000 L CNN
F 2 "" H 6350 2400 50  0001 C CNN
F 3 "" H 6350 2400 50  0001 C CNN
	1    6350 2400
	0    -1   -1   0   
$EndComp
$Comp
L power:+BATT #PWR0114
U 1 1 608BE1F9
P 6350 2200
F 0 "#PWR0114" H 6350 2050 50  0001 C CNN
F 1 "+BATT" V 6365 2327 50  0000 L CNN
F 2 "" H 6350 2200 50  0001 C CNN
F 3 "" H 6350 2200 50  0001 C CNN
	1    6350 2200
	0    -1   -1   0   
$EndComp
$Comp
L power:+BATT #PWR0113
U 1 1 608BDDB5
P 7300 2200
F 0 "#PWR0113" H 7300 2050 50  0001 C CNN
F 1 "+BATT" V 7315 2328 50  0000 L CNN
F 2 "" H 7300 2200 50  0001 C CNN
F 3 "" H 7300 2200 50  0001 C CNN
	1    7300 2200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 608BD3EF
P 7300 4000
F 0 "#PWR0112" H 7300 3750 50  0001 C CNN
F 1 "GND" V 7305 3872 50  0000 R CNN
F 2 "" H 7300 4000 50  0001 C CNN
F 3 "" H 7300 4000 50  0001 C CNN
	1    7300 4000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0111
U 1 1 608BCFFF
P 6350 4000
F 0 "#PWR0111" H 6350 3750 50  0001 C CNN
F 1 "GND" V 6355 3872 50  0000 R CNN
F 2 "" H 6350 4000 50  0001 C CNN
F 3 "" H 6350 4000 50  0001 C CNN
	1    6350 4000
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 608BCC2B
P 6350 2100
F 0 "#PWR0110" H 6350 1850 50  0001 C CNN
F 1 "GND" V 6355 1972 50  0000 R CNN
F 2 "" H 6350 2100 50  0001 C CNN
F 3 "" H 6350 2100 50  0001 C CNN
	1    6350 2100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 608BC873
P 6350 2300
F 0 "#PWR0109" H 6350 2050 50  0001 C CNN
F 1 "GND" V 6355 2172 50  0000 R CNN
F 2 "" H 6350 2300 50  0001 C CNN
F 3 "" H 6350 2300 50  0001 C CNN
	1    6350 2300
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 608BC4D7
P 6350 2500
F 0 "#PWR0108" H 6350 2250 50  0001 C CNN
F 1 "GND" V 6355 2372 50  0000 R CNN
F 2 "" H 6350 2500 50  0001 C CNN
F 3 "" H 6350 2500 50  0001 C CNN
	1    6350 2500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 608BBD68
P 6350 2700
F 0 "#PWR0107" H 6350 2450 50  0001 C CNN
F 1 "GND" V 6355 2572 50  0000 R CNN
F 2 "" H 6350 2700 50  0001 C CNN
F 3 "" H 6350 2700 50  0001 C CNN
	1    6350 2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 608BB998
P 6350 2900
F 0 "#PWR0106" H 6350 2650 50  0001 C CNN
F 1 "GND" V 6355 2772 50  0000 R CNN
F 2 "" H 6350 2900 50  0001 C CNN
F 3 "" H 6350 2900 50  0001 C CNN
	1    6350 2900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0105
U 1 1 608BB04D
P 7300 2900
F 0 "#PWR0105" H 7300 2650 50  0001 C CNN
F 1 "GND" V 7305 2772 50  0000 R CNN
F 2 "" H 7300 2900 50  0001 C CNN
F 3 "" H 7300 2900 50  0001 C CNN
	1    7300 2900
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 608BAA72
P 7300 2700
F 0 "#PWR0104" H 7300 2450 50  0001 C CNN
F 1 "GND" V 7305 2572 50  0000 R CNN
F 2 "" H 7300 2700 50  0001 C CNN
F 3 "" H 7300 2700 50  0001 C CNN
	1    7300 2700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 608BA24D
P 7300 2500
F 0 "#PWR0103" H 7300 2250 50  0001 C CNN
F 1 "GND" V 7305 2372 50  0000 R CNN
F 2 "" H 7300 2500 50  0001 C CNN
F 3 "" H 7300 2500 50  0001 C CNN
	1    7300 2500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 608B9C1A
P 7300 2300
F 0 "#PWR0102" H 7300 2050 50  0001 C CNN
F 1 "GND" V 7305 2172 50  0000 R CNN
F 2 "" H 7300 2300 50  0001 C CNN
F 3 "" H 7300 2300 50  0001 C CNN
	1    7300 2300
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0101
U 1 1 608B9630
P 7300 2100
F 0 "#PWR0101" H 7300 1850 50  0001 C CNN
F 1 "GND" V 7305 1972 50  0000 R CNN
F 2 "" H 7300 2100 50  0001 C CNN
F 3 "" H 7300 2100 50  0001 C CNN
	1    7300 2100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6575 4000 6350 4000
Wire Wire Line
	6575 3900 6350 3900
Wire Wire Line
	6575 3800 6350 3800
Wire Wire Line
	6575 3700 6350 3700
Wire Wire Line
	6575 3600 6350 3600
Wire Wire Line
	6575 3500 6350 3500
Wire Wire Line
	6575 3400 6350 3400
Wire Wire Line
	6575 3300 6350 3300
Wire Wire Line
	6575 3200 6350 3200
Wire Wire Line
	6575 3100 6350 3100
Wire Wire Line
	6575 3000 6350 3000
Wire Wire Line
	6575 2900 6350 2900
Wire Wire Line
	6575 2800 6350 2800
Wire Wire Line
	6575 2700 6350 2700
Wire Wire Line
	6575 2600 6350 2600
Wire Wire Line
	6575 2500 6350 2500
Wire Wire Line
	6575 2400 6350 2400
Wire Wire Line
	6575 2300 6350 2300
Wire Wire Line
	6575 2200 6350 2200
Wire Wire Line
	6575 2100 6350 2100
Wire Wire Line
	7300 4000 7075 4000
Wire Wire Line
	7300 3900 7075 3900
Wire Wire Line
	7300 3800 7075 3800
Wire Wire Line
	7300 3700 7075 3700
Wire Wire Line
	7300 3600 7075 3600
Wire Wire Line
	7300 3500 7075 3500
Wire Wire Line
	7300 3400 7075 3400
Wire Wire Line
	7300 3300 7075 3300
Wire Wire Line
	7300 3200 7075 3200
Wire Wire Line
	7300 3100 7075 3100
Wire Wire Line
	7300 3000 7075 3000
Wire Wire Line
	7300 2900 7075 2900
Wire Wire Line
	7300 2800 7075 2800
Wire Wire Line
	7300 2700 7075 2700
Wire Wire Line
	7300 2600 7075 2600
Wire Wire Line
	7300 2500 7075 2500
Wire Wire Line
	7300 2400 7075 2400
Wire Wire Line
	7300 2300 7075 2300
Wire Wire Line
	7300 2200 7075 2200
Wire Wire Line
	7300 2100 7075 2100
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J1002
U 1 1 608ADBE6
P 6775 3000
F 0 "J1002" H 6825 4117 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 6825 4026 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 6775 3000 50  0001 C CNN
F 3 "~" H 6775 3000 50  0001 C CNN
	1    6775 3000
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_B J1005
U 1 1 60AB21AF
P 9725 2800
F 0 "J1005" H 9782 3267 50  0000 C CNN
F 1 "USB_B" H 9782 3176 50  0000 C CNN
F 2 "Connector_USB:USB_B_Amphenol_MUSB-D511_Vertical_Rugged" H 9875 2750 50  0001 C CNN
F 3 " ~" H 9875 2750 50  0001 C CNN
	1    9725 2800
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_A J1006
U 1 1 60AB3DC4
P 9725 4750
F 0 "J1006" H 9782 5217 50  0000 C CNN
F 1 "USB_A" H 9782 5126 50  0000 C CNN
F 2 "Connector_USB:USB3_A_Molex_48393-001" H 9875 4700 50  0001 C CNN
F 3 " ~" H 9875 4700 50  0001 C CNN
	1    9725 4750
	1    0    0    -1  
$EndComp
$Sheet
S 3625 3850 1275 1725
U 60AD6330
F0 "Audio to Usb" 50
F1 "AudioToRpi.sch" 50
$EndSheet
$Sheet
S 3550 1250 1300 1475
U 60B0058A
F0 "Audio-out" 50
F1 "Audio-out.sch" 50
F2 "FOSC" I L 3550 1400 50 
F3 "BFR" I L 3550 1875 50 
F4 "HP" I L 3550 1950 50 
F5 "DEMOD" I L 3550 1700 50 
F6 "CMD-TX" I L 3550 2325 50 
F7 "BFE" I R 4850 1650 50 
F8 "micro" I R 4850 1525 50 
F9 "CMD-RX" I L 3550 2425 50 
$EndSheet
$Comp
L Connector:RJ12 J1003
U 1 1 60B1A8BB
P 2025 7100
F 0 "J1003" V 2128 6770 50  0000 R CNN
F 1 "RJ12" V 2037 6770 50  0000 R CNN
F 2 "Connector_RJ:RJ12_Amphenol_54601" V 2025 7125 50  0001 C CNN
F 3 "~" V 2025 7125 50  0001 C CNN
	1    2025 7100
	0    -1   -1   0   
$EndComp
$Comp
L Connector:RJ12 J1004
U 1 1 60B1B236
P 3575 7075
F 0 "J1004" V 3678 6745 50  0000 R CNN
F 1 "RJ12" V 3587 6745 50  0000 R CNN
F 2 "Connector_RJ:RJ12_Amphenol_54601" V 3575 7100 50  0001 C CNN
F 3 "~" V 3575 7100 50  0001 C CNN
	1    3575 7075
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2225 6700 2225 6525
Text HLabel 2225 6525 1    50   Input ~ 0
HP
Text HLabel 2125 6525 1    50   Input ~ 0
MICRO
$Comp
L power:GND #PWR?
U 1 1 60F98169
P 2025 6525
F 0 "#PWR?" H 2025 6275 50  0001 C CNN
F 1 "GND" H 2030 6352 50  0000 C CNN
F 2 "" H 2025 6525 50  0001 C CNN
F 3 "" H 2025 6525 50  0001 C CNN
	1    2025 6525
	-1   0    0    1   
$EndComp
Text HLabel 1925 6525 1    50   Input ~ 0
PTT
Text HLabel 1825 6525 1    50   Input ~ 0
BP1
Text HLabel 1725 6525 1    50   Input ~ 0
BP2
Wire Wire Line
	1725 6525 1725 6700
Wire Wire Line
	1825 6525 1825 6700
Wire Wire Line
	1925 6525 1925 6700
Wire Wire Line
	2025 6525 2025 6700
Wire Wire Line
	2125 6525 2125 6700
Wire Wire Line
	3775 6675 3775 6500
Text HLabel 3775 6500 1    50   Input ~ 0
BFR
Text HLabel 3675 6500 1    50   Input ~ 0
BFE
$Comp
L power:GND #PWR?
U 1 1 60FAA332
P 3575 6500
F 0 "#PWR?" H 3575 6250 50  0001 C CNN
F 1 "GND" H 3580 6327 50  0000 C CNN
F 2 "" H 3575 6500 50  0001 C CNN
F 3 "" H 3575 6500 50  0001 C CNN
	1    3575 6500
	-1   0    0    1   
$EndComp
Text HLabel 3475 6500 1    50   Input ~ 0
PTT
Text HLabel 3375 6500 1    50   Input ~ 0
BP1
Text HLabel 3275 6500 1    50   Input ~ 0
BP2
Wire Wire Line
	3275 6500 3275 6675
Wire Wire Line
	3375 6500 3375 6675
Wire Wire Line
	3475 6500 3475 6675
Wire Wire Line
	3575 6500 3575 6675
Wire Wire Line
	3675 6500 3675 6675
$EndSCHEMATC
