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
L Amplifier_Audio:TDA2003 U3003
U 1 1 60B00A7F
P 8600 2775
F 0 "U3003" H 8944 2821 50  0000 L CNN
F 1 "TDA2003" H 8944 2730 50  0000 L CNN
F 2 "CEN-PCB:TDA2003V" H 8600 2775 50  0001 C CIN
F 3 "http://www.onsemi.com/pub/Collateral/MC33171-D.PDF" H 8600 2775 50  0001 C CNN
	1    8600 2775
	1    0    0    -1  
$EndComp
Wire Wire Line
	6175 1275 6175 2025
Wire Wire Line
	4225 2925 5325 2925
Wire Wire Line
	4225 2925 4225 3275
Wire Wire Line
	4225 3275 3975 3275
Wire Wire Line
	3650 2875 3900 2875
Wire Wire Line
	3350 2875 3300 2875
Wire Wire Line
	3300 2875 3300 3050
$Comp
L Device:CP C3010
U 1 1 60B44FDA
P 6800 2675
F 0 "C3010" V 6545 2675 50  0000 C CNN
F 1 "CP" V 6636 2675 50  0000 C CNN
F 2 "" H 6838 2525 50  0001 C CNN
F 3 "~" H 6800 2675 50  0001 C CNN
	1    6800 2675
	0    1    1    0   
$EndComp
$Comp
L Device:C C3015
U 1 1 60B455B6
P 9125 3525
F 0 "C3015" V 8873 3525 50  0000 C CNN
F 1 "C" V 8964 3525 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 9163 3375 50  0001 C CNN
F 3 "~" H 9125 3525 50  0001 C CNN
	1    9125 3525
	0    1    1    0   
$EndComp
$Comp
L Device:R R3019
U 1 1 60B4B258
P 8675 3525
F 0 "R3019" V 8468 3525 50  0000 C CNN
F 1 "R" V 8559 3525 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8605 3525 50  0001 C CNN
F 3 "~" H 8675 3525 50  0001 C CNN
	1    8675 3525
	0    1    1    0   
$EndComp
$Comp
L Device:R R3021
U 1 1 60B4F451
P 9700 2975
F 0 "R3021" H 9770 3021 50  0000 L CNN
F 1 "R" H 9770 2930 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9630 2975 50  0001 C CNN
F 3 "~" H 9700 2975 50  0001 C CNN
	1    9700 2975
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3022
U 1 1 60B4FC2A
P 9700 4100
F 0 "R3022" H 9770 4146 50  0000 L CNN
F 1 "R" H 9770 4055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9630 4100 50  0001 C CNN
F 3 "~" H 9700 4100 50  0001 C CNN
	1    9700 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8225 3525 8525 3525
Wire Wire Line
	8225 2875 8300 2875
Wire Wire Line
	8825 3525 8975 3525
Wire Wire Line
	9275 3525 9300 3525
Wire Wire Line
	9300 3525 9300 2775
Wire Wire Line
	9300 2775 8900 2775
Wire Wire Line
	9300 2775 9700 2775
Wire Wire Line
	9700 2775 9700 2825
Connection ~ 9300 2775
Wire Wire Line
	9700 4250 9700 4325
$Comp
L power:GND #PWR0129
U 1 1 60B6503F
P 9700 4325
F 0 "#PWR0129" H 9700 4075 50  0001 C CNN
F 1 "GND" H 9705 4152 50  0000 C CNN
F 2 "" H 9700 4325 50  0001 C CNN
F 3 "" H 9700 4325 50  0001 C CNN
	1    9700 4325
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3014
U 1 1 60B6581D
P 8875 3850
F 0 "C3014" V 9130 3850 50  0000 C CNN
F 1 "CP" V 9039 3850 50  0000 C CNN
F 2 "" H 8913 3700 50  0001 C CNN
F 3 "~" H 8875 3850 50  0001 C CNN
	1    8875 3850
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C3017
U 1 1 60B6B9D3
P 10075 2775
F 0 "C3017" V 10330 2775 50  0000 C CNN
F 1 "CP" V 10239 2775 50  0000 C CNN
F 2 "" H 10113 2625 50  0001 C CNN
F 3 "~" H 10075 2775 50  0001 C CNN
	1    10075 2775
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C3019
U 1 1 60B6C992
P 10400 2975
F 0 "C3019" H 10515 3021 50  0000 L CNN
F 1 "C" H 10515 2930 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10438 2825 50  0001 C CNN
F 3 "~" H 10400 2975 50  0001 C CNN
	1    10400 2975
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3024
U 1 1 60B6D3E3
P 10400 3375
F 0 "R3024" H 10470 3421 50  0000 L CNN
F 1 "R" H 10470 3330 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10330 3375 50  0001 C CNN
F 3 "~" H 10400 3375 50  0001 C CNN
	1    10400 3375
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 2775 9925 2775
Connection ~ 9700 2775
Wire Wire Line
	10225 2775 10400 2775
Wire Wire Line
	10400 2775 10400 2825
Wire Wire Line
	10400 3125 10400 3225
Wire Wire Line
	10400 3525 10400 3600
$Comp
L power:GND #PWR0130
U 1 1 60B79674
P 10400 3600
F 0 "#PWR0130" H 10400 3350 50  0001 C CNN
F 1 "GND" H 10405 3427 50  0000 C CNN
F 2 "" H 10400 3600 50  0001 C CNN
F 3 "" H 10400 3600 50  0001 C CNN
	1    10400 3600
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MC33172 U3001
U 1 1 60B8ED82
P 8825 1725
F 0 "U3001" H 8825 2092 50  0000 C CNN
F 1 "MC33172" H 8825 2001 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 8825 1725 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/MC33171-D.PDF" H 8825 1725 50  0001 C CNN
	1    8825 1725
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:MC33172 U3001
U 3 1 60B92424
P 1250 3075
F 0 "U3001" H 1208 3121 50  0000 L CNN
F 1 "MC33172" H 1208 3030 50  0000 L CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 1250 3075 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/MC33171-D.PDF" H 1250 3075 50  0001 C CNN
	3    1250 3075
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3020
U 1 1 60BA7934
P 8825 2125
F 0 "R3020" V 8618 2125 50  0000 C CNN
F 1 "100k" V 8825 2125 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8755 2125 50  0001 C CNN
F 3 "~" H 8825 2125 50  0001 C CNN
	1    8825 2125
	0    1    1    0   
$EndComp
$Comp
L Device:R R3017
U 1 1 60BA89A5
P 8225 2125
F 0 "R3017" V 8018 2125 50  0000 C CNN
F 1 "100k" V 8225 2125 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8155 2125 50  0001 C CNN
F 3 "~" H 8225 2125 50  0001 C CNN
	1    8225 2125
	0    1    1    0   
$EndComp
Wire Wire Line
	8525 1825 8525 2125
Wire Wire Line
	8525 2125 8375 2125
Wire Wire Line
	8525 2125 8675 2125
Connection ~ 8525 2125
$Comp
L Device:C C3009
U 1 1 60BB767E
P 6800 2125
F 0 "C3009" V 6548 2125 50  0000 C CNN
F 1 "C" V 6639 2125 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 6838 1975 50  0001 C CNN
F 3 "~" H 6800 2125 50  0001 C CNN
	1    6800 2125
	0    1    1    0   
$EndComp
Wire Wire Line
	6950 2125 8075 2125
$Comp
L Device:CP C3016
U 1 1 60BBD1F4
P 9525 1725
F 0 "C3016" V 9780 1725 50  0000 C CNN
F 1 "10µ" V 9689 1725 50  0000 C CNN
F 2 "" H 9563 1575 50  0001 C CNN
F 3 "~" H 9525 1725 50  0001 C CNN
	1    9525 1725
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3023
U 1 1 60BBE1E6
P 10025 1725
F 0 "R3023" V 9818 1725 50  0000 C CNN
F 1 "220" V 9909 1725 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9955 1725 50  0001 C CNN
F 3 "~" H 10025 1725 50  0001 C CNN
	1    10025 1725
	0    1    1    0   
$EndComp
$Comp
L Device:R R3025
U 1 1 60BBF2A8
P 10500 1725
F 0 "R3025" V 10293 1725 50  0000 C CNN
F 1 "470" V 10384 1725 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 10430 1725 50  0001 C CNN
F 3 "~" H 10500 1725 50  0001 C CNN
	1    10500 1725
	0    1    1    0   
$EndComp
$Comp
L Device:C C3018
U 1 1 60BC0210
P 10275 2000
F 0 "C3018" H 10390 2046 50  0000 L CNN
F 1 "1n" H 10390 1955 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 10313 1850 50  0001 C CNN
F 3 "~" H 10275 2000 50  0001 C CNN
	1    10275 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9125 1725 9250 1725
Wire Wire Line
	9675 1725 9875 1725
Wire Wire Line
	10350 1725 10275 1725
Wire Wire Line
	10275 1850 10275 1725
Connection ~ 10275 1725
Wire Wire Line
	10275 1725 10175 1725
Wire Wire Line
	10275 2150 10275 2225
Wire Wire Line
	8975 2125 9250 2125
Wire Wire Line
	9250 2125 9250 1725
Connection ~ 9250 1725
Wire Wire Line
	9250 1725 9375 1725
$Comp
L Device:R R3018
U 1 1 60BD7CCA
P 8350 1150
F 0 "R3018" H 8420 1196 50  0000 L CNN
F 1 "100k" V 8350 1050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8280 1150 50  0001 C CNN
F 3 "~" H 8350 1150 50  0001 C CNN
	1    8350 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3016
U 1 1 60BD888C
P 8075 1625
F 0 "R3016" V 8175 1575 50  0000 C CNN
F 1 "100k" V 8075 1625 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8005 1625 50  0001 C CNN
F 3 "~" H 8075 1625 50  0001 C CNN
	1    8075 1625
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0131
U 1 1 60BDA47B
P 7825 1625
F 0 "#PWR0131" H 7825 1375 50  0001 C CNN
F 1 "GND" V 7830 1497 50  0000 R CNN
F 2 "" H 7825 1625 50  0001 C CNN
F 3 "" H 7825 1625 50  0001 C CNN
	1    7825 1625
	0    1    1    0   
$EndComp
$Comp
L Device:C C3013
U 1 1 60BDAF79
P 8075 1425
F 0 "C3013" V 7925 1400 50  0000 C CNN
F 1 "1µ" V 8025 1550 50  0000 C CNN
F 2 "" H 8113 1275 50  0001 C CNN
F 3 "~" H 8075 1425 50  0001 C CNN
	1    8075 1425
	0    1    1    0   
$EndComp
Wire Wire Line
	7825 1625 7875 1625
Wire Wire Line
	7875 1625 7875 1425
Wire Wire Line
	7875 1425 7925 1425
Connection ~ 7875 1625
Wire Wire Line
	7875 1625 7925 1625
Wire Wire Line
	8350 1300 8350 1625
Wire Wire Line
	8225 1625 8275 1625
Connection ~ 8350 1625
Wire Wire Line
	8350 1625 8525 1625
Wire Wire Line
	8225 1425 8275 1425
Wire Wire Line
	8275 1425 8275 1625
Connection ~ 8275 1625
Wire Wire Line
	8275 1625 8350 1625
Wire Wire Line
	8350 1000 8350 925 
$Comp
L power:GND #PWR0132
U 1 1 60C19FC8
P 10275 2225
F 0 "#PWR0132" H 10275 1975 50  0001 C CNN
F 1 "GND" H 10280 2052 50  0000 C CNN
F 2 "" H 10275 2225 50  0001 C CNN
F 3 "" H 10275 2225 50  0001 C CNN
	1    10275 2225
	1    0    0    -1  
$EndComp
Connection ~ 3300 2875
Connection ~ 4225 2925
Connection ~ 4175 3050
Wire Wire Line
	3300 3050 4175 3050
Wire Wire Line
	5875 3050 4175 3050
Wire Wire Line
	6175 2025 6100 2025
Connection ~ 5300 1475
Wire Wire Line
	5300 1100 6625 1100
Wire Wire Line
	5300 1475 5300 1100
Wire Wire Line
	3900 2875 3900 2700
$Comp
L Device:C C3004
U 1 1 60B34121
P 3500 2875
F 0 "C3004" V 3450 2975 50  0000 C CNN
F 1 "100n" V 3550 3025 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3538 2725 50  0001 C CNN
F 3 "~" H 3500 2875 50  0001 C CNN
	1    3500 2875
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 2700 3250 2700
Connection ~ 3300 2700
Wire Wire Line
	3300 2700 3300 2875
Wire Wire Line
	3900 2375 4225 2375
Connection ~ 3900 2375
Wire Wire Line
	3900 2400 3900 2375
Connection ~ 3250 2375
Wire Wire Line
	3250 2375 3125 2375
Wire Wire Line
	3250 2375 3900 2375
Wire Wire Line
	3250 2400 3250 2375
Wire Wire Line
	3350 2700 3300 2700
Wire Wire Line
	3900 2700 4225 2700
Connection ~ 3900 2700
Wire Wire Line
	4225 2625 4300 2625
Wire Wire Line
	4225 2700 4225 2625
Wire Wire Line
	3650 2700 3900 2700
$Comp
L Device:R R3006
U 1 1 60B248BE
P 3500 2700
F 0 "R3006" V 3400 2650 50  0000 C CNN
F 1 "10k" V 3500 2700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" V 3430 2700 50  0001 C CNN
F 3 "~" H 3500 2700 50  0001 C CNN
	1    3500 2700
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0133
U 1 1 60B24377
P 4075 2275
F 0 "#PWR0133" H 4075 2025 50  0001 C CNN
F 1 "GND" V 4080 2147 50  0000 R CNN
F 2 "" H 4075 2275 50  0001 C CNN
F 3 "" H 4075 2275 50  0001 C CNN
	1    4075 2275
	0    1    1    0   
$EndComp
Wire Wire Line
	4300 2275 4075 2275
$Comp
L Device:C C3005
U 1 1 60B20F9F
P 3900 2550
F 0 "C3005" H 4015 2596 50  0000 L CNN
F 1 "100n" H 4015 2505 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 3938 2400 50  0001 C CNN
F 3 "~" H 3900 2550 50  0001 C CNN
	1    3900 2550
	1    0    0    -1  
$EndComp
Connection ~ 4225 2375
Wire Wire Line
	4225 2475 4300 2475
Wire Wire Line
	4225 2375 4225 2475
$Comp
L Device:R R3005
U 1 1 60B1F0A0
P 3250 2550
F 0 "R3005" V 3325 2650 50  0000 R CNN
F 1 "10k" V 3250 2625 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" V 3180 2550 50  0001 C CNN
F 3 "~" H 3250 2550 50  0001 C CNN
	1    3250 2550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 2375 4225 2375
Connection ~ 5875 2625
Wire Wire Line
	4175 3050 4175 2175
Wire Wire Line
	5875 2625 5875 3050
Connection ~ 5625 2175
Wire Wire Line
	5875 2175 5625 2175
Wire Wire Line
	5875 2625 5875 2175
Wire Wire Line
	5250 2625 5875 2625
Wire Wire Line
	5425 2175 5625 2175
Connection ~ 5425 2175
Wire Wire Line
	5425 2275 5425 2175
Wire Wire Line
	5275 2275 5425 2275
Wire Wire Line
	5250 2175 5425 2175
Connection ~ 5425 2475
Wire Wire Line
	5425 2475 5625 2475
$Comp
L Device:C C3008
U 1 1 60B1746F
P 5625 2325
F 0 "C3008" H 5510 2279 50  0000 R CNN
F 1 "100n" H 5510 2370 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5663 2175 50  0001 C CNN
F 3 "~" H 5625 2325 50  0001 C CNN
	1    5625 2325
	-1   0    0    1   
$EndComp
Wire Wire Line
	5425 2475 5250 2475
Wire Wire Line
	5425 2375 5425 2475
Wire Wire Line
	5250 2375 5425 2375
Wire Wire Line
	5325 2775 5250 2775
Wire Wire Line
	5325 2925 5325 2775
Wire Wire Line
	4225 2775 4225 2925
Wire Wire Line
	4300 2775 4225 2775
Wire Wire Line
	4300 2175 4175 2175
Wire Wire Line
	3850 1675 3900 1675
Wire Wire Line
	5300 1675 5350 1675
Connection ~ 5300 1675
Wire Wire Line
	5300 1475 5300 1675
Wire Wire Line
	5350 1475 5300 1475
Connection ~ 5700 1675
Wire Wire Line
	5700 1475 5700 1675
Wire Wire Line
	5650 1475 5700 1475
Connection ~ 3850 1675
Wire Wire Line
	3850 1475 3900 1475
Wire Wire Line
	3850 1675 3850 1475
Wire Wire Line
	4250 1475 4250 1275
Connection ~ 4250 1475
Wire Wire Line
	4200 1475 4250 1475
$Comp
L Device:C C3007
U 1 1 60B09332
P 5500 1475
F 0 "C3007" V 5248 1475 50  0000 C CNN
F 1 "C" V 5339 1475 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 5538 1325 50  0001 C CNN
F 3 "~" H 5500 1475 50  0001 C CNN
	1    5500 1475
	0    1    1    0   
$EndComp
$Comp
L Device:C C3006
U 1 1 60B08D4C
P 4050 1475
F 0 "C3006" V 3798 1475 50  0000 C CNN
F 1 "C" V 3889 1475 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 4088 1325 50  0001 C CNN
F 3 "~" H 4050 1475 50  0001 C CNN
	1    4050 1475
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 1675 4300 1675
Connection ~ 4250 1675
Wire Wire Line
	4250 1275 6175 1275
Wire Wire Line
	4250 1675 4250 1475
Wire Wire Line
	5700 1775 5700 1875
Connection ~ 5700 1775
Wire Wire Line
	5650 1775 5700 1775
Wire Wire Line
	5700 1875 5700 2025
Connection ~ 5700 1875
Wire Wire Line
	5650 1875 5700 1875
Connection ~ 5700 2025
Wire Wire Line
	5700 2025 5250 2025
Wire Wire Line
	5700 2025 5800 2025
Wire Wire Line
	5700 1675 5700 1775
Wire Wire Line
	5650 1675 5700 1675
Wire Wire Line
	5250 1875 5350 1875
Wire Wire Line
	5250 1775 5350 1775
Wire Wire Line
	5250 1675 5300 1675
Wire Wire Line
	3850 1875 3850 1775
Connection ~ 3850 1875
Wire Wire Line
	3900 1875 3850 1875
Wire Wire Line
	3850 1775 3850 1675
Connection ~ 3850 1775
Wire Wire Line
	3900 1775 3850 1775
Wire Wire Line
	3850 2025 3775 2025
Connection ~ 3850 2025
Wire Wire Line
	3850 2025 3850 1875
Wire Wire Line
	4300 2025 3850 2025
Wire Wire Line
	4200 1875 4300 1875
Wire Wire Line
	4300 1775 4200 1775
Wire Wire Line
	4200 1675 4250 1675
$Comp
L Device:R R3014
U 1 1 60B04E4A
P 5950 2025
F 0 "R3014" V 5743 2025 50  0000 C CNN
F 1 "R" V 5834 2025 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5880 2025 50  0001 C CNN
F 3 "~" H 5950 2025 50  0001 C CNN
	1    5950 2025
	0    1    1    0   
$EndComp
$Comp
L Device:R R3007
U 1 1 60B0454E
P 3625 2025
F 0 "R3007" V 3525 2000 50  0000 C CNN
F 1 "R" V 3625 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3555 2025 50  0001 C CNN
F 3 "~" H 3625 2025 50  0001 C CNN
	1    3625 2025
	0    1    1    0   
$EndComp
$Comp
L Device:R R3013
U 1 1 60B04312
P 5500 1875
F 0 "R3013" V 5575 1825 50  0000 C CNN
F 1 "R" V 5500 1825 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5430 1875 50  0001 C CNN
F 3 "~" H 5500 1875 50  0001 C CNN
	1    5500 1875
	0    1    1    0   
$EndComp
$Comp
L Device:R R3012
U 1 1 60B0430C
P 5500 1775
F 0 "R3012" V 5450 1925 50  0000 C CNN
F 1 "R" V 5500 1725 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5430 1775 50  0001 C CNN
F 3 "~" H 5500 1775 50  0001 C CNN
	1    5500 1775
	0    1    1    0   
$EndComp
$Comp
L Device:R R3011
U 1 1 60B04306
P 5500 1675
F 0 "R3011" V 5425 1625 50  0000 C CNN
F 1 "R" V 5500 1625 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5430 1675 50  0001 C CNN
F 3 "~" H 5500 1675 50  0001 C CNN
	1    5500 1675
	0    1    1    0   
$EndComp
$Comp
L Device:R R3010
U 1 1 60B031FE
P 4050 1875
F 0 "R3010" V 4125 1850 50  0000 C CNN
F 1 "R" V 4050 1850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3980 1875 50  0001 C CNN
F 3 "~" H 4050 1875 50  0001 C CNN
	1    4050 1875
	0    1    1    0   
$EndComp
$Comp
L Device:R R3009
U 1 1 60B02B79
P 4050 1775
F 0 "R3009" V 4000 1925 50  0000 C CNN
F 1 "R" V 4050 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3980 1775 50  0001 C CNN
F 3 "~" H 4050 1775 50  0001 C CNN
	1    4050 1775
	0    1    1    0   
$EndComp
$Comp
L Device:R R3008
U 1 1 60B0253E
P 4050 1675
F 0 "R3008" V 3975 1600 50  0000 C CNN
F 1 "R" V 4050 1625 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3980 1675 50  0001 C CNN
F 3 "~" H 4050 1675 50  0001 C CNN
	1    4050 1675
	0    1    1    0   
$EndComp
$Comp
L CEN-SCHEMA:MF10 U3002
U 1 1 60B01318
P 4450 1475
F 0 "U3002" H 4775 1562 60  0000 C CNN
F 1 "MF10" H 4775 1456 60  0000 C CNN
F 2 "Package_SO:SOIC-20W_7.5x12.8mm_P1.27mm" H 4450 1475 60  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/MC33171-D.PDF" H 4450 1475 60  0000 C CNN
	1    4450 1475
	1    0    0    -1  
$EndComp
Wire Wire Line
	6625 1100 6625 2125
Wire Wire Line
	10650 1725 11000 1725
Wire Wire Line
	10400 2775 11000 2775
Connection ~ 10400 2775
Text HLabel 3975 3275 0    50   Input ~ 0
FOSC
Text HLabel 11000 1725 2    50   Input ~ 0
BFR
Text HLabel 11000 2775 2    50   Input ~ 0
HP
$Comp
L Device:C C3001
U 1 1 60CA5052
P 925 3075
F 0 "C3001" H 700 3175 50  0000 L CNN
F 1 "100n" H 725 2975 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 963 2925 50  0001 C CNN
F 3 "~" H 925 3075 50  0001 C CNN
	1    925  3075
	1    0    0    -1  
$EndComp
Wire Wire Line
	925  2925 925  2775
Wire Wire Line
	925  2775 1150 2775
Wire Wire Line
	925  3225 925  3375
Wire Wire Line
	925  3375 1150 3375
Wire Wire Line
	6625 2125 6650 2125
$Comp
L Device:CP C3012
U 1 1 60CE0A4F
P 7925 2950
F 0 "C3012" H 8043 2996 50  0000 L CNN
F 1 "CP" H 8043 2905 50  0000 L CNN
F 2 "" H 7963 2800 50  0001 C CNN
F 3 "~" H 7925 2950 50  0001 C CNN
	1    7925 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3011
U 1 1 60CE1505
P 7600 2950
F 0 "C3011" H 7715 2996 50  0000 L CNN
F 1 "C" H 7715 2905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 7638 2800 50  0001 C CNN
F 3 "~" H 7600 2950 50  0001 C CNN
	1    7600 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 2475 8500 2425
Wire Wire Line
	8500 2425 7925 2425
Wire Wire Line
	7600 2425 7600 2800
Wire Wire Line
	7925 2800 7925 2425
Connection ~ 7925 2425
Wire Wire Line
	7925 2425 7600 2425
Wire Wire Line
	7925 3100 7925 3200
Wire Wire Line
	7600 3100 7600 3200
$Comp
L power:GND #PWR0134
U 1 1 60D08398
P 7600 3200
F 0 "#PWR0134" H 7600 2950 50  0001 C CNN
F 1 "GND" H 7605 3027 50  0000 C CNN
F 2 "" H 7600 3200 50  0001 C CNN
F 3 "" H 7600 3200 50  0001 C CNN
	1    7600 3200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0135
U 1 1 60D09129
P 7925 3200
F 0 "#PWR0135" H 7925 2950 50  0001 C CNN
F 1 "GND" H 7930 3027 50  0000 C CNN
F 2 "" H 7925 3200 50  0001 C CNN
F 3 "" H 7925 3200 50  0001 C CNN
	1    7925 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6625 2125 6625 2675
Wire Wire Line
	6625 2675 6650 2675
Connection ~ 6625 2125
$Comp
L power:+BATT #PWR0136
U 1 1 60D11EF9
P 8625 2425
F 0 "#PWR0136" H 8625 2275 50  0001 C CNN
F 1 "+BATT" V 8640 2553 50  0000 L CNN
F 2 "" H 8625 2425 50  0001 C CNN
F 3 "" H 8625 2425 50  0001 C CNN
	1    8625 2425
	0    1    1    0   
$EndComp
Wire Wire Line
	8625 2425 8500 2425
Connection ~ 8500 2425
Text HLabel 950  2125 0    50   Input ~ 0
DEMOD
$Comp
L Amplifier_Operational:MC33172 U3001
U 2 1 60D1D998
P 2375 2025
F 0 "U3001" H 2375 2392 50  0000 C CNN
F 1 "MC33172" H 2375 2301 50  0000 C CNN
F 2 "Package_SO:SO-8_3.9x4.9mm_P1.27mm" H 2375 2025 50  0001 C CNN
F 3 "http://www.onsemi.com/pub/Collateral/MC33171-D.PDF" H 2375 2025 50  0001 C CNN
	2    2375 2025
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C3003
U 1 1 60D2A8D6
P 3050 2025
F 0 "C3003" V 3305 2025 50  0000 C CNN
F 1 "CP" V 3214 2025 50  0000 C CNN
F 2 "" H 3088 1875 50  0001 C CNN
F 3 "~" H 3050 2025 50  0001 C CNN
	1    3050 2025
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C3002
U 1 1 60D2BD62
P 1250 2125
F 0 "C3002" V 1100 2125 50  0000 C CNN
F 1 "C" V 1300 2200 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1288 1975 50  0001 C CNN
F 3 "~" H 1250 2125 50  0001 C CNN
	1    1250 2125
	0    1    1    0   
$EndComp
$Comp
L Device:R R3004
U 1 1 60D30E1D
P 2375 2400
F 0 "R3004" V 2475 2450 50  0000 C CNN
F 1 "100k" V 2375 2400 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" V 2305 2400 50  0001 C CNN
F 3 "~" H 2375 2400 50  0001 C CNN
	1    2375 2400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R3002
U 1 1 60D3191F
P 1750 2125
F 0 "R3002" V 1650 2075 50  0000 C CNN
F 1 "100k" V 1750 2125 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" V 1680 2125 50  0001 C CNN
F 3 "~" H 1750 2125 50  0001 C CNN
	1    1750 2125
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 2125 1600 2125
Wire Wire Line
	1900 2125 2000 2125
Wire Wire Line
	2000 2125 2000 2400
Wire Wire Line
	2000 2400 2225 2400
Connection ~ 2000 2125
Wire Wire Line
	2000 2125 2075 2125
Wire Wire Line
	2525 2400 2800 2400
Wire Wire Line
	2800 2400 2800 2025
Wire Wire Line
	2800 2025 2675 2025
Wire Wire Line
	2800 2025 2900 2025
Connection ~ 2800 2025
Wire Wire Line
	3200 2025 3475 2025
$Comp
L Device:R R3003
U 1 1 60D6789E
P 2225 1600
F 0 "R3003" V 2125 1525 50  0000 C CNN
F 1 "100k" V 2225 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" V 2155 1600 50  0001 C CNN
F 3 "~" H 2225 1600 50  0001 C CNN
	1    2225 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R R3001
U 1 1 60D681BE
P 1700 1600
F 0 "R3001" V 1600 1550 50  0000 C CNN
F 1 "100k" V 1700 1600 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" V 1630 1600 50  0001 C CNN
F 3 "~" H 1700 1600 50  0001 C CNN
	1    1700 1600
	0    1    1    0   
$EndComp
Wire Wire Line
	2075 1925 2000 1925
Wire Wire Line
	2000 1925 2000 1600
Wire Wire Line
	2000 1600 2075 1600
Wire Wire Line
	1850 1600 2000 1600
Connection ~ 2000 1600
Wire Wire Line
	1550 1600 1475 1600
Wire Wire Line
	2375 1600 2475 1600
$Comp
L power:GND #PWR0137
U 1 1 60D96E76
P 1475 1600
F 0 "#PWR0137" H 1475 1350 50  0001 C CNN
F 1 "GND" V 1480 1472 50  0000 R CNN
F 2 "" H 1475 1600 50  0001 C CNN
F 3 "" H 1475 1600 50  0001 C CNN
	1    1475 1600
	0    1    1    0   
$EndComp
$Comp
L power:+5VA #PWR0138
U 1 1 60D98FFB
P 2475 1600
F 0 "#PWR0138" H 2475 1450 50  0001 C CNN
F 1 "+5VA" V 2490 1728 50  0000 L CNN
F 2 "" H 2475 1600 50  0001 C CNN
F 3 "" H 2475 1600 50  0001 C CNN
	1    2475 1600
	0    1    1    0   
$EndComp
$Comp
L power:+5VA #PWR0139
U 1 1 60D99ED3
P 3125 2375
F 0 "#PWR0139" H 3125 2225 50  0001 C CNN
F 1 "+5VA" H 3140 2548 50  0000 C CNN
F 2 "" H 3125 2375 50  0001 C CNN
F 3 "" H 3125 2375 50  0001 C CNN
	1    3125 2375
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR0140
U 1 1 60DA4083
P 8350 925
F 0 "#PWR0140" H 8350 775 50  0001 C CNN
F 1 "+5VA" H 8365 1098 50  0000 C CNN
F 2 "" H 8350 925 50  0001 C CNN
F 3 "" H 8350 925 50  0001 C CNN
	1    8350 925 
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR0141
U 1 1 60DA6F16
P 925 2775
F 0 "#PWR0141" H 925 2625 50  0001 C CNN
F 1 "+5VA" H 940 2948 50  0000 C CNN
F 2 "" H 925 2775 50  0001 C CNN
F 3 "" H 925 2775 50  0001 C CNN
	1    925  2775
	1    0    0    -1  
$EndComp
Connection ~ 925  2775
$Comp
L power:GND #PWR0142
U 1 1 60DA9C7A
P 925 3375
F 0 "#PWR0142" H 925 3125 50  0001 C CNN
F 1 "GND" H 930 3202 50  0000 C CNN
F 2 "" H 925 3375 50  0001 C CNN
F 3 "" H 925 3375 50  0001 C CNN
	1    925  3375
	1    0    0    -1  
$EndComp
Connection ~ 925  3375
$Comp
L power:GND #PWR0143
U 1 1 60DAA80C
P 8500 3200
F 0 "#PWR0143" H 8500 2950 50  0001 C CNN
F 1 "GND" H 8505 3027 50  0000 C CNN
F 2 "" H 8500 3200 50  0001 C CNN
F 3 "" H 8500 3200 50  0001 C CNN
	1    8500 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8225 2875 8225 3525
Wire Wire Line
	8225 3525 8225 3850
Wire Wire Line
	8225 3850 8725 3850
Connection ~ 8225 3525
Wire Wire Line
	9025 3850 9700 3850
Wire Wire Line
	9700 3850 9700 3950
Wire Wire Line
	9700 3850 9700 3125
Connection ~ 9700 3850
Wire Wire Line
	8500 3075 8500 3200
$Comp
L Device:R R3015
U 1 1 60E354FE
P 7200 2675
F 0 "R3015" V 6993 2675 50  0000 C CNN
F 1 "R" V 7084 2675 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 7130 2675 50  0001 C CNN
F 3 "~" H 7200 2675 50  0001 C CNN
	1    7200 2675
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:BSS123 Q3001
U 1 1 60E36582
P 6925 3325
F 0 "Q3001" H 7129 3371 50  0000 L CNN
F 1 "BSS123" H 7129 3280 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7125 3250 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30366.pdf" H 6925 3325 50  0001 L CNN
	1    6925 3325
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2675 7425 2675
Wire Wire Line
	6950 2675 7050 2675
Wire Wire Line
	7425 2675 7425 3050
Wire Wire Line
	7425 3050 7025 3050
Wire Wire Line
	7025 3050 7025 3125
Connection ~ 7425 2675
Wire Wire Line
	7425 2675 8300 2675
Wire Wire Line
	7025 3525 7025 3600
Wire Wire Line
	6725 3325 6650 3325
$Comp
L power:GND #PWR0144
U 1 1 60E73548
P 7025 3600
F 0 "#PWR0144" H 7025 3350 50  0001 C CNN
F 1 "GND" H 7030 3427 50  0000 C CNN
F 2 "" H 7025 3600 50  0001 C CNN
F 3 "" H 7025 3600 50  0001 C CNN
	1    7025 3600
	1    0    0    -1  
$EndComp
Text HLabel 6650 3325 0    50   Input ~ 0
CMD-TX
Wire Wire Line
	1100 2125 950  2125
$EndSCHEMATC
