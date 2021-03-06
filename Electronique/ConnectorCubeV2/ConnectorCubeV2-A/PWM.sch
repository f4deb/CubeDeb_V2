EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 12
Title "Connector Cube V2"
Date "2021-12-21"
Rev "V2.00A"
Comp "CubeDeb-F4DEB"
Comment1 "PWM"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Transistor_FET:BSS123 Q401
U 1 1 61CCB81F
P 2275 2500
F 0 "Q401" H 2479 2546 50  0000 L CNN
F 1 "BSS123" H 2479 2455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 2475 2425 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30366.pdf" H 2275 2500 50  0001 L CNN
	1    2275 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2375 2200 2375 2250
Wire Wire Line
	2375 2250 2650 2250
Connection ~ 2375 2250
Wire Wire Line
	2375 2250 2375 2300
Wire Wire Line
	2075 2500 2000 2500
$Comp
L Device:R R401
U 1 1 61CCE1CB
P 2375 1550
F 0 "R401" V 2582 1550 50  0000 C CNN
F 1 "0" V 2375 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2305 1550 50  0001 C CNN
F 3 "~" H 2375 1550 50  0001 C CNN
	1    2375 1550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2375 1900 2375 1825
Wire Wire Line
	2375 2700 2375 2750
$Comp
L power:GND #PWR0181
U 1 1 61CCF78B
P 2375 2750
F 0 "#PWR0181" H 2375 2500 50  0001 C CNN
F 1 "GND" H 2380 2577 50  0000 C CNN
F 2 "" H 2375 2750 50  0001 C CNN
F 3 "" H 2375 2750 50  0001 C CNN
	1    2375 2750
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0182
U 1 1 61CCFDF1
P 2375 1825
F 0 "#PWR0182" H 2375 1675 50  0001 C CNN
F 1 "+5VD" H 2390 1998 50  0000 C CNN
F 2 "" H 2375 1825 50  0001 C CNN
F 3 "" H 2375 1825 50  0001 C CNN
	1    2375 1825
	1    0    0    -1  
$EndComp
Connection ~ 2000 2500
Wire Wire Line
	2000 2500 1775 2500
Wire Wire Line
	2650 1550 2650 2250
Connection ~ 2650 2250
Wire Wire Line
	2650 2250 2950 2250
Wire Wire Line
	2525 1550 2650 1550
Wire Wire Line
	2000 1550 2225 1550
Wire Wire Line
	2000 1550 2000 2500
Text HLabel 1775 2500 0    50   Input ~ 0
PWM0
$Comp
L Transistor_FET:BSS123 Q402
U 1 1 61CDA1BA
P 3950 2525
F 0 "Q402" H 4154 2571 50  0000 L CNN
F 1 "BSS123" H 4154 2480 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4150 2450 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30366.pdf" H 3950 2525 50  0001 L CNN
	1    3950 2525
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 2225 4050 2275
Wire Wire Line
	4050 2275 4325 2275
Connection ~ 4050 2275
Wire Wire Line
	4050 2275 4050 2325
Wire Wire Line
	3750 2525 3675 2525
$Comp
L Device:R R402
U 1 1 61CDA1CB
P 4050 1575
F 0 "R402" V 4257 1575 50  0000 C CNN
F 1 "0" V 4050 1575 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3980 1575 50  0001 C CNN
F 3 "~" H 4050 1575 50  0001 C CNN
	1    4050 1575
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4050 1925 4050 1850
Wire Wire Line
	4050 2725 4050 2775
$Comp
L power:GND #PWR0183
U 1 1 61CDA1D3
P 4050 2775
F 0 "#PWR0183" H 4050 2525 50  0001 C CNN
F 1 "GND" H 4055 2602 50  0000 C CNN
F 2 "" H 4050 2775 50  0001 C CNN
F 3 "" H 4050 2775 50  0001 C CNN
	1    4050 2775
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0184
U 1 1 61CDA1D9
P 4050 1850
F 0 "#PWR0184" H 4050 1700 50  0001 C CNN
F 1 "+5VD" H 4065 2023 50  0000 C CNN
F 2 "" H 4050 1850 50  0001 C CNN
F 3 "" H 4050 1850 50  0001 C CNN
	1    4050 1850
	1    0    0    -1  
$EndComp
Connection ~ 3675 2525
Wire Wire Line
	3675 2525 3450 2525
Wire Wire Line
	4325 1575 4325 2275
Connection ~ 4325 2275
Wire Wire Line
	4325 2275 4625 2275
Wire Wire Line
	4200 1575 4325 1575
Wire Wire Line
	3675 1575 3900 1575
Wire Wire Line
	3675 1575 3675 2525
Text HLabel 3450 2525 0    50   Input ~ 0
PWM1
$Comp
L Transistor_FET:BSS123 Q403
U 1 1 61CDCC54
P 5700 2550
F 0 "Q403" H 5904 2596 50  0000 L CNN
F 1 "BSS123" H 5904 2505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5900 2475 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30366.pdf" H 5700 2550 50  0001 L CNN
	1    5700 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 2250 5800 2300
Wire Wire Line
	5800 2300 6075 2300
Connection ~ 5800 2300
Wire Wire Line
	5800 2300 5800 2350
Wire Wire Line
	5500 2550 5425 2550
$Comp
L Device:R R403
U 1 1 61CDCC65
P 5800 1600
F 0 "R403" V 6007 1600 50  0000 C CNN
F 1 "0" V 5800 1600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5730 1600 50  0001 C CNN
F 3 "~" H 5800 1600 50  0001 C CNN
	1    5800 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 1950 5800 1875
Wire Wire Line
	5800 2750 5800 2800
$Comp
L power:GND #PWR0185
U 1 1 61CDCC6D
P 5800 2800
F 0 "#PWR0185" H 5800 2550 50  0001 C CNN
F 1 "GND" H 5805 2627 50  0000 C CNN
F 2 "" H 5800 2800 50  0001 C CNN
F 3 "" H 5800 2800 50  0001 C CNN
	1    5800 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0186
U 1 1 61CDCC73
P 5800 1875
F 0 "#PWR0186" H 5800 1725 50  0001 C CNN
F 1 "+5VD" H 5815 2048 50  0000 C CNN
F 2 "" H 5800 1875 50  0001 C CNN
F 3 "" H 5800 1875 50  0001 C CNN
	1    5800 1875
	1    0    0    -1  
$EndComp
Connection ~ 5425 2550
Wire Wire Line
	5425 2550 5200 2550
Wire Wire Line
	6075 1600 6075 2300
Connection ~ 6075 2300
Wire Wire Line
	6075 2300 6375 2300
Wire Wire Line
	5950 1600 6075 1600
Wire Wire Line
	5425 1600 5650 1600
Wire Wire Line
	5425 1600 5425 2550
Text HLabel 5200 2550 0    50   Input ~ 0
PWM2
$Comp
L Transistor_FET:BSS123 Q404
U 1 1 61CDF6AD
P 7425 2575
F 0 "Q404" H 7629 2621 50  0000 L CNN
F 1 "BSS123" H 7629 2530 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7625 2500 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30366.pdf" H 7425 2575 50  0001 L CNN
	1    7425 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	7525 2275 7525 2325
Wire Wire Line
	7525 2325 7800 2325
Connection ~ 7525 2325
Wire Wire Line
	7525 2325 7525 2375
Wire Wire Line
	7225 2575 7150 2575
$Comp
L Device:R R404
U 1 1 61CDF6BE
P 7525 1625
F 0 "R404" V 7732 1625 50  0000 C CNN
F 1 "0" V 7525 1625 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7455 1625 50  0001 C CNN
F 3 "~" H 7525 1625 50  0001 C CNN
	1    7525 1625
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7525 1975 7525 1900
Wire Wire Line
	7525 2775 7525 2825
$Comp
L power:GND #PWR0187
U 1 1 61CDF6C6
P 7525 2825
F 0 "#PWR0187" H 7525 2575 50  0001 C CNN
F 1 "GND" H 7530 2652 50  0000 C CNN
F 2 "" H 7525 2825 50  0001 C CNN
F 3 "" H 7525 2825 50  0001 C CNN
	1    7525 2825
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0188
U 1 1 61CDF6CC
P 7525 1900
F 0 "#PWR0188" H 7525 1750 50  0001 C CNN
F 1 "+5VD" H 7540 2073 50  0000 C CNN
F 2 "" H 7525 1900 50  0001 C CNN
F 3 "" H 7525 1900 50  0001 C CNN
	1    7525 1900
	1    0    0    -1  
$EndComp
Connection ~ 7150 2575
Wire Wire Line
	7150 2575 6925 2575
Wire Wire Line
	7800 1625 7800 2325
Connection ~ 7800 2325
Wire Wire Line
	7800 2325 8100 2325
Wire Wire Line
	7675 1625 7800 1625
Wire Wire Line
	7150 1625 7375 1625
Wire Wire Line
	7150 1625 7150 2575
Text HLabel 6925 2575 0    50   Input ~ 0
PWM3
$Comp
L Transistor_FET:BSS123 Q405
U 1 1 61CE6103
P 9150 2575
F 0 "Q405" H 9354 2621 50  0000 L CNN
F 1 "BSS123" H 9354 2530 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9350 2500 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30366.pdf" H 9150 2575 50  0001 L CNN
	1    9150 2575
	1    0    0    -1  
$EndComp
Wire Wire Line
	9250 2275 9250 2325
Wire Wire Line
	9250 2325 9525 2325
Connection ~ 9250 2325
Wire Wire Line
	9250 2325 9250 2375
Wire Wire Line
	8950 2575 8875 2575
$Comp
L Device:R R405
U 1 1 61CE6114
P 9250 1625
F 0 "R405" V 9457 1625 50  0000 C CNN
F 1 "0" V 9250 1625 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9180 1625 50  0001 C CNN
F 3 "~" H 9250 1625 50  0001 C CNN
	1    9250 1625
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9250 1975 9250 1900
Wire Wire Line
	9250 2775 9250 2825
$Comp
L power:GND #PWR0189
U 1 1 61CE611C
P 9250 2825
F 0 "#PWR0189" H 9250 2575 50  0001 C CNN
F 1 "GND" H 9255 2652 50  0000 C CNN
F 2 "" H 9250 2825 50  0001 C CNN
F 3 "" H 9250 2825 50  0001 C CNN
	1    9250 2825
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0190
U 1 1 61CE6122
P 9250 1900
F 0 "#PWR0190" H 9250 1750 50  0001 C CNN
F 1 "+5VD" H 9265 2073 50  0000 C CNN
F 2 "" H 9250 1900 50  0001 C CNN
F 3 "" H 9250 1900 50  0001 C CNN
	1    9250 1900
	1    0    0    -1  
$EndComp
Connection ~ 8875 2575
Wire Wire Line
	8875 2575 8650 2575
Wire Wire Line
	9525 1625 9525 2325
Connection ~ 9525 2325
Wire Wire Line
	9525 2325 9825 2325
Wire Wire Line
	9400 1625 9525 1625
Wire Wire Line
	8875 1625 9100 1625
Wire Wire Line
	8875 1625 8875 2575
Text HLabel 8650 2575 0    50   Input ~ 0
PWM4
$Comp
L Connector_Generic:Conn_01x03 J402
U 1 1 61CF4375
P 5150 4725
F 0 "J402" H 5068 4400 50  0000 C CNN
F 1 "Conn_01x03" H 5068 4491 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM03B-GHS-TBT_1x03-1MP_P1.25mm_Vertical" H 5150 4725 50  0001 C CNN
F 3 "~" H 5150 4725 50  0001 C CNN
	1    5150 4725
	1    0    0    1   
$EndComp
Text Label 2800 2250 0    50   ~ 0
PWM0-5
Text Label 4500 2275 0    50   ~ 0
PWM1-5
Text Label 6250 2300 0    50   ~ 0
PWM2-5
Text Label 7975 2325 0    50   ~ 0
PWM3-5
Text Label 9700 2325 0    50   ~ 0
PWM4-5
Wire Wire Line
	4950 4825 4875 4825
Wire Wire Line
	4875 4825 4875 4900
Wire Wire Line
	4625 4625 4950 4625
$Comp
L power:GND #PWR0191
U 1 1 61D03C98
P 4875 4900
F 0 "#PWR0191" H 4875 4650 50  0001 C CNN
F 1 "GND" H 4880 4727 50  0000 C CNN
F 2 "" H 4875 4900 50  0001 C CNN
F 3 "" H 4875 4900 50  0001 C CNN
	1    4875 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0192
U 1 1 61D0452F
P 4625 4825
F 0 "#PWR0192" H 4625 4675 50  0001 C CNN
F 1 "+5VD" H 4640 4998 50  0000 C CNN
F 2 "" H 4625 4825 50  0001 C CNN
F 3 "" H 4625 4825 50  0001 C CNN
	1    4625 4825
	-1   0    0    1   
$EndComp
Wire Wire Line
	4625 4725 4625 4825
Wire Wire Line
	4625 4725 4950 4725
Text Label 4625 4625 0    50   ~ 0
PWM1-5
$Comp
L Connector_Generic:Conn_01x03 J403
U 1 1 61D0CF1B
P 5950 4725
F 0 "J403" H 5868 4400 50  0000 C CNN
F 1 "Conn_01x03" H 5868 4491 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM03B-GHS-TBT_1x03-1MP_P1.25mm_Vertical" H 5950 4725 50  0001 C CNN
F 3 "~" H 5950 4725 50  0001 C CNN
	1    5950 4725
	1    0    0    1   
$EndComp
Wire Wire Line
	5750 4825 5675 4825
Wire Wire Line
	5675 4825 5675 4900
Wire Wire Line
	5425 4625 5750 4625
$Comp
L power:GND #PWR0193
U 1 1 61D0D12C
P 5675 4900
F 0 "#PWR0193" H 5675 4650 50  0001 C CNN
F 1 "GND" H 5680 4727 50  0000 C CNN
F 2 "" H 5675 4900 50  0001 C CNN
F 3 "" H 5675 4900 50  0001 C CNN
	1    5675 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0194
U 1 1 61D0D136
P 5425 4825
F 0 "#PWR0194" H 5425 4675 50  0001 C CNN
F 1 "+5VD" H 5440 4998 50  0000 C CNN
F 2 "" H 5425 4825 50  0001 C CNN
F 3 "" H 5425 4825 50  0001 C CNN
	1    5425 4825
	-1   0    0    1   
$EndComp
Wire Wire Line
	5425 4725 5425 4825
Wire Wire Line
	5425 4725 5750 4725
Text Label 5425 4625 0    50   ~ 0
PWM2-5
$Comp
L Connector_Generic:Conn_01x03 J404
U 1 1 61D11636
P 6750 4725
F 0 "J404" H 6668 4400 50  0000 C CNN
F 1 "Conn_01x03" H 6668 4491 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM03B-GHS-TBT_1x03-1MP_P1.25mm_Vertical" H 6750 4725 50  0001 C CNN
F 3 "~" H 6750 4725 50  0001 C CNN
	1    6750 4725
	1    0    0    1   
$EndComp
Wire Wire Line
	6550 4825 6475 4825
Wire Wire Line
	6475 4825 6475 4900
Wire Wire Line
	6225 4625 6550 4625
$Comp
L power:GND #PWR0195
U 1 1 61D1187B
P 6475 4900
F 0 "#PWR0195" H 6475 4650 50  0001 C CNN
F 1 "GND" H 6480 4727 50  0000 C CNN
F 2 "" H 6475 4900 50  0001 C CNN
F 3 "" H 6475 4900 50  0001 C CNN
	1    6475 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0196
U 1 1 61D11885
P 6225 4825
F 0 "#PWR0196" H 6225 4675 50  0001 C CNN
F 1 "+5VD" H 6240 4998 50  0000 C CNN
F 2 "" H 6225 4825 50  0001 C CNN
F 3 "" H 6225 4825 50  0001 C CNN
	1    6225 4825
	-1   0    0    1   
$EndComp
Wire Wire Line
	6225 4725 6225 4825
Wire Wire Line
	6225 4725 6550 4725
Text Label 6225 4625 0    50   ~ 0
PWM3-5
$Comp
L Connector_Generic:Conn_01x03 J405
U 1 1 61D11892
P 7550 4725
F 0 "J405" H 7468 4400 50  0000 C CNN
F 1 "Conn_01x03" H 7468 4491 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM03B-GHS-TBT_1x03-1MP_P1.25mm_Vertical" H 7550 4725 50  0001 C CNN
F 3 "~" H 7550 4725 50  0001 C CNN
	1    7550 4725
	1    0    0    1   
$EndComp
Wire Wire Line
	7350 4825 7275 4825
Wire Wire Line
	7275 4825 7275 4900
Wire Wire Line
	7025 4625 7350 4625
$Comp
L power:GND #PWR0197
U 1 1 61D1189F
P 7275 4900
F 0 "#PWR0197" H 7275 4650 50  0001 C CNN
F 1 "GND" H 7280 4727 50  0000 C CNN
F 2 "" H 7275 4900 50  0001 C CNN
F 3 "" H 7275 4900 50  0001 C CNN
	1    7275 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0198
U 1 1 61D118A9
P 7025 4825
F 0 "#PWR0198" H 7025 4675 50  0001 C CNN
F 1 "+5VD" H 7040 4998 50  0000 C CNN
F 2 "" H 7025 4825 50  0001 C CNN
F 3 "" H 7025 4825 50  0001 C CNN
	1    7025 4825
	-1   0    0    1   
$EndComp
Wire Wire Line
	7025 4725 7025 4825
Wire Wire Line
	7025 4725 7350 4725
$Comp
L Connector_Generic:Conn_01x03 J401
U 1 1 61D1A035
P 4325 4725
F 0 "J401" H 4243 4400 50  0000 C CNN
F 1 "Conn_01x03" H 4243 4491 50  0000 C CNN
F 2 "Connector_JST:JST_GH_BM03B-GHS-TBT_1x03-1MP_P1.25mm_Vertical" H 4325 4725 50  0001 C CNN
F 3 "~" H 4325 4725 50  0001 C CNN
	1    4325 4725
	1    0    0    1   
$EndComp
Wire Wire Line
	4125 4825 4050 4825
Wire Wire Line
	4050 4825 4050 4900
Wire Wire Line
	3800 4625 4125 4625
$Comp
L power:GND #PWR0199
U 1 1 61D1A2E2
P 4050 4900
F 0 "#PWR0199" H 4050 4650 50  0001 C CNN
F 1 "GND" H 4055 4727 50  0000 C CNN
F 2 "" H 4050 4900 50  0001 C CNN
F 3 "" H 4050 4900 50  0001 C CNN
	1    4050 4900
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0200
U 1 1 61D1A2EC
P 3800 4825
F 0 "#PWR0200" H 3800 4675 50  0001 C CNN
F 1 "+5VD" H 3815 4998 50  0000 C CNN
F 2 "" H 3800 4825 50  0001 C CNN
F 3 "" H 3800 4825 50  0001 C CNN
	1    3800 4825
	-1   0    0    1   
$EndComp
Wire Wire Line
	3800 4725 3800 4825
Wire Wire Line
	3800 4725 4125 4725
Text Label 3800 4625 0    50   ~ 0
PWM0-5
$Comp
L Device:R R406
U 1 1 61CBB27B
P 2375 2050
F 0 "R406" H 2445 2096 50  0000 L CNN
F 1 "10k" V 2375 1975 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 2305 2050 50  0001 C CNN
F 3 "~" H 2375 2050 50  0001 C CNN
	1    2375 2050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R407
U 1 1 61CC4572
P 4050 2075
F 0 "R407" H 4120 2121 50  0000 L CNN
F 1 "10k" V 4050 2000 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3980 2075 50  0001 C CNN
F 3 "~" H 4050 2075 50  0001 C CNN
	1    4050 2075
	1    0    0    -1  
$EndComp
$Comp
L Device:R R408
U 1 1 61CCD3AF
P 5800 2100
F 0 "R408" H 5870 2146 50  0000 L CNN
F 1 "10k" V 5800 2025 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5730 2100 50  0001 C CNN
F 3 "~" H 5800 2100 50  0001 C CNN
	1    5800 2100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R409
U 1 1 61CD6F73
P 7525 2125
F 0 "R409" H 7595 2171 50  0000 L CNN
F 1 "10k" V 7525 2050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7455 2125 50  0001 C CNN
F 3 "~" H 7525 2125 50  0001 C CNN
	1    7525 2125
	1    0    0    -1  
$EndComp
$Comp
L Device:R R410
U 1 1 61CE2EF5
P 9250 2125
F 0 "R410" H 9320 2171 50  0000 L CNN
F 1 "10k" V 9250 2050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9180 2125 50  0001 C CNN
F 3 "~" H 9250 2125 50  0001 C CNN
	1    9250 2125
	1    0    0    -1  
$EndComp
Text Label 7025 4625 0    50   ~ 0
PWM4-5
$EndSCHEMATC
