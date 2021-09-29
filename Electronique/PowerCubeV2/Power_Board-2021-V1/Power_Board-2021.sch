EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "Cube Power Board "
Date "2021-04-21"
Rev "V1-00"
Comp "CUBEDEB"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 5425 1950 1050 1400
U 607959CA
F0 "Regulation" 50
F1 "Regulation.sch" 50
$EndSheet
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J1002
U 1 1 60793F07
P 8050 2725
F 0 "J1002" H 8100 3842 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 8100 3751 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 8050 2725 50  0001 C CNN
F 3 "~" H 8050 2725 50  0001 C CNN
	1    8050 2725
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x20_Odd_Even J1001
U 1 1 60792EB9
P 3675 2675
F 0 "J1001" H 3725 3792 50  0000 C CNN
F 1 "Conn_02x20_Odd_Even" H 3725 3701 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x20_P2.54mm_Vertical" H 3675 2675 50  0001 C CNN
F 3 "~" H 3675 2675 50  0001 C CNN
	1    3675 2675
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 1825 8600 1825
Wire Wire Line
	8350 1925 8600 1925
Wire Wire Line
	8350 2025 8600 2025
Wire Wire Line
	8350 2125 8600 2125
Wire Wire Line
	8350 2225 8600 2225
Wire Wire Line
	8350 2325 8600 2325
Wire Wire Line
	8350 2425 8600 2425
Wire Wire Line
	8350 2525 8600 2525
Wire Wire Line
	8350 2625 8600 2625
Wire Wire Line
	8350 2725 8600 2725
Wire Wire Line
	8350 2825 8600 2825
Wire Wire Line
	8350 2925 8600 2925
Wire Wire Line
	8350 3025 8600 3025
Wire Wire Line
	8350 3125 8600 3125
Wire Wire Line
	8350 3225 8600 3225
Wire Wire Line
	8350 3325 8600 3325
Wire Wire Line
	8350 3425 8600 3425
Wire Wire Line
	8350 3525 8600 3525
Wire Wire Line
	8350 3625 8600 3625
Wire Wire Line
	8350 3725 8600 3725
Wire Wire Line
	7600 1825 7850 1825
Wire Wire Line
	7600 1925 7850 1925
Wire Wire Line
	7600 2025 7850 2025
Wire Wire Line
	7600 2125 7850 2125
Wire Wire Line
	7600 2225 7850 2225
Wire Wire Line
	7600 2325 7850 2325
Wire Wire Line
	7600 2425 7850 2425
Wire Wire Line
	7600 2525 7850 2525
Wire Wire Line
	7600 2625 7850 2625
Wire Wire Line
	7600 2725 7850 2725
Wire Wire Line
	7600 2825 7850 2825
Wire Wire Line
	7600 2925 7850 2925
Wire Wire Line
	7600 3025 7850 3025
Wire Wire Line
	7600 3125 7850 3125
Wire Wire Line
	7600 3225 7850 3225
Wire Wire Line
	7600 3325 7850 3325
Wire Wire Line
	7600 3425 7850 3425
Wire Wire Line
	7600 3525 7850 3525
Wire Wire Line
	7600 3625 7850 3625
Wire Wire Line
	7600 3725 7850 3725
$Comp
L power:GND #PWR0161
U 1 1 6086038C
P 8600 1825
F 0 "#PWR0161" H 8600 1575 50  0001 C CNN
F 1 "GND" V 8605 1697 50  0000 R CNN
F 2 "" H 8600 1825 50  0001 C CNN
F 3 "" H 8600 1825 50  0001 C CNN
	1    8600 1825
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0162
U 1 1 6086093E
P 7600 1825
F 0 "#PWR0162" H 7600 1575 50  0001 C CNN
F 1 "GND" V 7605 1697 50  0000 R CNN
F 2 "" H 7600 1825 50  0001 C CNN
F 3 "" H 7600 1825 50  0001 C CNN
	1    7600 1825
	0    1    1    0   
$EndComp
$Comp
L power:+BATT #PWR0163
U 1 1 608610DA
P 7600 1925
F 0 "#PWR0163" H 7600 1775 50  0001 C CNN
F 1 "+BATT" V 7615 2052 50  0000 L CNN
F 2 "" H 7600 1925 50  0001 C CNN
F 3 "" H 7600 1925 50  0001 C CNN
	1    7600 1925
	0    -1   -1   0   
$EndComp
$Comp
L power:+BATT #PWR0164
U 1 1 6086163C
P 8600 1925
F 0 "#PWR0164" H 8600 1775 50  0001 C CNN
F 1 "+BATT" V 8615 2053 50  0000 L CNN
F 2 "" H 8600 1925 50  0001 C CNN
F 3 "" H 8600 1925 50  0001 C CNN
	1    8600 1925
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0165
U 1 1 60861C34
P 7600 2025
F 0 "#PWR0165" H 7600 1775 50  0001 C CNN
F 1 "GND" V 7605 1897 50  0000 R CNN
F 2 "" H 7600 2025 50  0001 C CNN
F 3 "" H 7600 2025 50  0001 C CNN
	1    7600 2025
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0166
U 1 1 6086218C
P 8600 2025
F 0 "#PWR0166" H 8600 1775 50  0001 C CNN
F 1 "GND" V 8605 1897 50  0000 R CNN
F 2 "" H 8600 2025 50  0001 C CNN
F 3 "" H 8600 2025 50  0001 C CNN
	1    8600 2025
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0167
U 1 1 60862D1C
P 7600 2125
F 0 "#PWR0167" H 7600 1975 50  0001 C CNN
F 1 "+12V" V 7615 2253 50  0000 L CNN
F 2 "" H 7600 2125 50  0001 C CNN
F 3 "" H 7600 2125 50  0001 C CNN
	1    7600 2125
	0    -1   -1   0   
$EndComp
$Comp
L power:+12V #PWR0168
U 1 1 60863306
P 8600 2125
F 0 "#PWR0168" H 8600 1975 50  0001 C CNN
F 1 "+12V" V 8615 2253 50  0000 L CNN
F 2 "" H 8600 2125 50  0001 C CNN
F 3 "" H 8600 2125 50  0001 C CNN
	1    8600 2125
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0169
U 1 1 60863905
P 7600 2225
F 0 "#PWR0169" H 7600 1975 50  0001 C CNN
F 1 "GND" V 7605 2097 50  0000 R CNN
F 2 "" H 7600 2225 50  0001 C CNN
F 3 "" H 7600 2225 50  0001 C CNN
	1    7600 2225
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0170
U 1 1 60863F51
P 8600 2225
F 0 "#PWR0170" H 8600 1975 50  0001 C CNN
F 1 "GND" V 8605 2097 50  0000 R CNN
F 2 "" H 8600 2225 50  0001 C CNN
F 3 "" H 8600 2225 50  0001 C CNN
	1    8600 2225
	0    -1   -1   0   
$EndComp
$Comp
L power:+5VA #PWR0171
U 1 1 60864833
P 7600 2325
F 0 "#PWR0171" H 7600 2175 50  0001 C CNN
F 1 "+5VA" V 7615 2452 50  0000 L CNN
F 2 "" H 7600 2325 50  0001 C CNN
F 3 "" H 7600 2325 50  0001 C CNN
	1    7600 2325
	0    -1   -1   0   
$EndComp
$Comp
L power:+5VA #PWR0172
U 1 1 608650DF
P 8600 2325
F 0 "#PWR0172" H 8600 2175 50  0001 C CNN
F 1 "+5VA" V 8615 2453 50  0000 L CNN
F 2 "" H 8600 2325 50  0001 C CNN
F 3 "" H 8600 2325 50  0001 C CNN
	1    8600 2325
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0173
U 1 1 608657E7
P 7600 2425
F 0 "#PWR0173" H 7600 2175 50  0001 C CNN
F 1 "GND" V 7605 2297 50  0000 R CNN
F 2 "" H 7600 2425 50  0001 C CNN
F 3 "" H 7600 2425 50  0001 C CNN
	1    7600 2425
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0174
U 1 1 60865E4F
P 8600 2425
F 0 "#PWR0174" H 8600 2175 50  0001 C CNN
F 1 "GND" V 8605 2297 50  0000 R CNN
F 2 "" H 8600 2425 50  0001 C CNN
F 3 "" H 8600 2425 50  0001 C CNN
	1    8600 2425
	0    -1   -1   0   
$EndComp
$Comp
L power:+5VD #PWR0175
U 1 1 6086683A
P 7600 2525
F 0 "#PWR0175" H 7600 2375 50  0001 C CNN
F 1 "+5VD" V 7615 2653 50  0000 L CNN
F 2 "" H 7600 2525 50  0001 C CNN
F 3 "" H 7600 2525 50  0001 C CNN
	1    7600 2525
	0    -1   -1   0   
$EndComp
$Comp
L power:+5VD #PWR0176
U 1 1 60866F4E
P 8600 2525
F 0 "#PWR0176" H 8600 2375 50  0001 C CNN
F 1 "+5VD" V 8615 2653 50  0000 L CNN
F 2 "" H 8600 2525 50  0001 C CNN
F 3 "" H 8600 2525 50  0001 C CNN
	1    8600 2525
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0177
U 1 1 608676DE
P 7600 2625
F 0 "#PWR0177" H 7600 2375 50  0001 C CNN
F 1 "GND" V 7605 2497 50  0000 R CNN
F 2 "" H 7600 2625 50  0001 C CNN
F 3 "" H 7600 2625 50  0001 C CNN
	1    7600 2625
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0178
U 1 1 60867DCE
P 8600 2625
F 0 "#PWR0178" H 8600 2375 50  0001 C CNN
F 1 "GND" V 8605 2497 50  0000 R CNN
F 2 "" H 8600 2625 50  0001 C CNN
F 3 "" H 8600 2625 50  0001 C CNN
	1    8600 2625
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0179
U 1 1 60868668
P 7600 2725
F 0 "#PWR0179" H 7600 2575 50  0001 C CNN
F 1 "+3.3V" V 7615 2853 50  0000 L CNN
F 2 "" H 7600 2725 50  0001 C CNN
F 3 "" H 7600 2725 50  0001 C CNN
	1    7600 2725
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR0180
U 1 1 60868DFC
P 8600 2725
F 0 "#PWR0180" H 8600 2575 50  0001 C CNN
F 1 "+3.3V" V 8615 2853 50  0000 L CNN
F 2 "" H 8600 2725 50  0001 C CNN
F 3 "" H 8600 2725 50  0001 C CNN
	1    8600 2725
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0181
U 1 1 6086D5DA
P 7600 2825
F 0 "#PWR0181" H 7600 2575 50  0001 C CNN
F 1 "GND" V 7605 2697 50  0000 R CNN
F 2 "" H 7600 2825 50  0001 C CNN
F 3 "" H 7600 2825 50  0001 C CNN
	1    7600 2825
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0182
U 1 1 6086EC60
P 8600 2825
F 0 "#PWR0182" H 8600 2575 50  0001 C CNN
F 1 "GND" V 8605 2697 50  0000 R CNN
F 2 "" H 8600 2825 50  0001 C CNN
F 3 "" H 8600 2825 50  0001 C CNN
	1    8600 2825
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3225 1775 3475 1775
$Comp
L power:GND #PWR0183
U 1 1 6087C538
P 3225 1775
F 0 "#PWR0183" H 3225 1525 50  0001 C CNN
F 1 "GND" V 3230 1647 50  0000 R CNN
F 2 "" H 3225 1775 50  0001 C CNN
F 3 "" H 3225 1775 50  0001 C CNN
	1    3225 1775
	0    1    1    0   
$EndComp
Wire Wire Line
	3225 3675 3475 3675
$Comp
L power:GND #PWR0184
U 1 1 60887171
P 3225 3675
F 0 "#PWR0184" H 3225 3425 50  0001 C CNN
F 1 "GND" V 3230 3547 50  0000 R CNN
F 2 "" H 3225 3675 50  0001 C CNN
F 3 "" H 3225 3675 50  0001 C CNN
	1    3225 3675
	0    1    1    0   
$EndComp
Wire Wire Line
	3975 1775 4225 1775
$Comp
L power:GND #PWR0185
U 1 1 60891A4F
P 4225 1775
F 0 "#PWR0185" H 4225 1525 50  0001 C CNN
F 1 "GND" V 4230 1647 50  0000 R CNN
F 2 "" H 4225 1775 50  0001 C CNN
F 3 "" H 4225 1775 50  0001 C CNN
	1    4225 1775
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3975 3675 4225 3675
$Comp
L power:GND #PWR0186
U 1 1 6089D592
P 4225 3675
F 0 "#PWR0186" H 4225 3425 50  0001 C CNN
F 1 "GND" V 4230 3547 50  0000 R CNN
F 2 "" H 4225 3675 50  0001 C CNN
F 3 "" H 4225 3675 50  0001 C CNN
	1    4225 3675
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0187
U 1 1 608A3C0B
P 8600 3725
F 0 "#PWR0187" H 8600 3475 50  0001 C CNN
F 1 "GND" V 8605 3597 50  0000 R CNN
F 2 "" H 8600 3725 50  0001 C CNN
F 3 "" H 8600 3725 50  0001 C CNN
	1    8600 3725
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0188
U 1 1 608A612B
P 7600 3725
F 0 "#PWR0188" H 7600 3475 50  0001 C CNN
F 1 "GND" V 7605 3597 50  0000 R CNN
F 2 "" H 7600 3725 50  0001 C CNN
F 3 "" H 7600 3725 50  0001 C CNN
	1    7600 3725
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 60923DC5
P 1950 5250
F 0 "J1" H 2058 5431 50  0000 C CNN
F 1 "Conn_01x02_Male" H 2058 5340 50  0000 C CNN
F 2 "Connector_Phoenix_MSTB:PhoenixContact_MSTBA_2,5_2-G-5,08_1x02_P5.08mm_Horizontal" H 1950 5250 50  0001 C CNN
F 3 "~" H 1950 5250 50  0001 C CNN
	1    1950 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5250 2400 5250
Wire Wire Line
	2150 5350 2400 5350
$Comp
L power:GND #PWR0189
U 1 1 60929204
P 2400 5250
F 0 "#PWR0189" H 2400 5000 50  0001 C CNN
F 1 "GND" V 2405 5122 50  0000 R CNN
F 2 "" H 2400 5250 50  0001 C CNN
F 3 "" H 2400 5250 50  0001 C CNN
	1    2400 5250
	0    -1   -1   0   
$EndComp
$Comp
L power:+VSW #PWR0190
U 1 1 60815A20
P 2400 5350
F 0 "#PWR0190" H 2400 5200 50  0001 C CNN
F 1 "+VSW" V 2415 5478 50  0000 L CNN
F 2 "" H 2400 5350 50  0001 C CNN
F 3 "" H 2400 5350 50  0001 C CNN
	1    2400 5350
	0    1    1    0   
$EndComp
$Sheet
S 5400 4075 1075 1475
U 6086D099
F0 "Control" 50
F1 "Control.sch" 50
F2 "SDA0" I L 5400 4250 50 
F3 "SCL0" I L 5400 4350 50 
$EndSheet
Wire Wire Line
	3475 3275 3225 3275
Wire Wire Line
	3975 3275 4225 3275
Text HLabel 3225 3275 0    50   Input ~ 0
SDA0
Text HLabel 4225 3275 2    50   Input ~ 0
SCL0
Wire Wire Line
	5175 4250 5400 4250
Wire Wire Line
	5175 4350 5400 4350
Text Label 5200 4250 0    50   ~ 0
SDA0
Text Label 5200 4350 0    50   ~ 0
SCL0
Text Label 4050 3275 0    50   ~ 0
SCL0
Text Label 3275 3275 0    50   ~ 0
SDA0
$EndSCHEMATC