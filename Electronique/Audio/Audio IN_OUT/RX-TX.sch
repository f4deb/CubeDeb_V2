EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L Transistor_BJT:BC807W Q302
U 1 1 61CD961E
P 5050 3100
F 0 "Q302" V 5378 3100 50  0000 C CNN
F 1 "BC807W" V 5287 3100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 5250 3025 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC808-D.pdf" H 5050 3100 50  0001 L CNN
	1    5050 3100
	0    1    -1   0   
$EndComp
Text HLabel 5575 3000 2    50   Input ~ 0
CMD-TX
Wire Wire Line
	4850 3000 4725 3000
Wire Wire Line
	4725 3000 4725 2950
$Comp
L Device:R R303
U 1 1 61D05B85
P 5050 3525
F 0 "R303" H 4980 3479 50  0000 R CNN
F 1 "1k" H 4980 3570 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 4980 3525 50  0001 C CNN
F 3 "~" H 5050 3525 50  0001 C CNN
	1    5050 3525
	-1   0    0    1   
$EndComp
$Comp
L power:+5VA #PWR0158
U 1 1 61D0AE19
P 4725 2950
F 0 "#PWR0158" H 4725 2800 50  0001 C CNN
F 1 "+5VA" H 4740 3123 50  0000 C CNN
F 2 "" H 4725 2950 50  0001 C CNN
F 3 "" H 4725 2950 50  0001 C CNN
	1    4725 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R304
U 1 1 61D0F2BC
P 5475 3200
F 0 "R304" H 5545 3246 50  0000 L CNN
F 1 "100k" H 5545 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 5405 3200 50  0001 C CNN
F 3 "~" H 5475 3200 50  0001 C CNN
	1    5475 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3675 5050 3725
Text HLabel 7150 3000 2    50   Input ~ 0
CMD-RX
Wire Wire Line
	5050 3725 5575 3725
Wire Wire Line
	5250 3000 5475 3000
$Comp
L Transistor_BJT:BC847 Q303
U 1 1 61D14FED
P 5775 3725
F 0 "Q303" H 5966 3771 50  0000 L CNN
F 1 "BC847" H 5966 3680 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-323_SC-70" H 5975 3650 50  0001 L CIN
F 3 "http://www.infineon.com/dgdl/Infineon-BC847SERIES_BC848SERIES_BC849SERIES_BC850SERIES-DS-v01_01-en.pdf?fileId=db3a304314dca389011541d4630a1657" H 5775 3725 50  0001 L CNN
	1    5775 3725
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR0159
U 1 1 61CF5F1E
P 3900 3300
F 0 "#PWR0159" H 3900 3150 50  0001 C CNN
F 1 "+5VA" H 3915 3473 50  0000 C CNN
F 2 "" H 3900 3300 50  0001 C CNN
F 3 "" H 3900 3300 50  0001 C CNN
	1    3900 3300
	1    0    0    -1  
$EndComp
$Comp
L power:+5VA #PWR0160
U 1 1 61CF5879
P 3500 3500
F 0 "#PWR0160" H 3500 3350 50  0001 C CNN
F 1 "+5VA" H 3515 3673 50  0000 C CNN
F 2 "" H 3500 3500 50  0001 C CNN
F 3 "" H 3500 3500 50  0001 C CNN
	1    3500 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0161
U 1 1 61CF4FB6
P 3900 4250
F 0 "#PWR0161" H 3900 4000 50  0001 C CNN
F 1 "GND" H 3905 4077 50  0000 C CNN
F 2 "" H 3900 4250 50  0001 C CNN
F 3 "" H 3900 4250 50  0001 C CNN
	1    3900 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 4175 3900 4250
Wire Wire Line
	3500 3575 3500 3500
Wire Wire Line
	3900 3375 3900 3300
Wire Wire Line
	3500 3875 3500 3975
Wire Wire Line
	3350 3975 3500 3975
$Comp
L Device:R R301
U 1 1 61CDDBF5
P 3500 3725
F 0 "R301" H 3430 3679 50  0000 R CNN
F 1 "100k" H 3430 3770 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3430 3725 50  0001 C CNN
F 3 "~" H 3500 3725 50  0001 C CNN
	1    3500 3725
	-1   0    0    1   
$EndComp
Text HLabel 3350 3975 0    50   Input ~ 0
PTT
Connection ~ 3500 3975
Wire Wire Line
	3500 3975 3600 3975
$Comp
L Device:R R302
U 1 1 61CDD4D3
P 3900 3525
F 0 "R302" H 3970 3571 50  0000 L CNN
F 1 "10k" H 3970 3480 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 3830 3525 50  0001 C CNN
F 3 "~" H 3900 3525 50  0001 C CNN
	1    3900 3525
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 3725 3900 3775
Wire Wire Line
	3900 3675 3900 3725
Connection ~ 3900 3725
Wire Wire Line
	3900 3725 5050 3725
$Comp
L Transistor_FET:BSS123 Q301
U 1 1 61CDE82F
P 3800 3975
F 0 "Q301" H 4004 4021 50  0000 L CNN
F 1 "BSS123" H 4004 3930 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4000 3900 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30366.pdf" H 3800 3975 50  0001 L CNN
	1    3800 3975
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:BC807W Q304
U 1 1 61D4B2E7
P 6625 3100
F 0 "Q304" V 6953 3100 50  0000 C CNN
F 1 "BC807W" V 6862 3100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6825 3025 50  0001 L CIN
F 3 "https://www.onsemi.com/pub/Collateral/BC808-D.pdf" H 6625 3100 50  0001 L CNN
	1    6625 3100
	0    1    -1   0   
$EndComp
Wire Wire Line
	6425 3000 6300 3000
Wire Wire Line
	6300 3000 6300 2950
$Comp
L Device:R R305
U 1 1 61D4B48C
P 6300 3425
F 0 "R305" V 6507 3425 50  0000 C CNN
F 1 "1k" V 6416 3425 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6230 3425 50  0001 C CNN
F 3 "~" H 6300 3425 50  0001 C CNN
	1    6300 3425
	0    -1   -1   0   
$EndComp
$Comp
L power:+5VA #PWR0162
U 1 1 61D4B496
P 6300 2950
F 0 "#PWR0162" H 6300 2800 50  0001 C CNN
F 1 "+5VA" H 6315 3123 50  0000 C CNN
F 2 "" H 6300 2950 50  0001 C CNN
F 3 "" H 6300 2950 50  0001 C CNN
	1    6300 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R306
U 1 1 61D4B4A0
P 7050 3200
F 0 "R306" H 7120 3246 50  0000 L CNN
F 1 "100k" H 7120 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 6980 3200 50  0001 C CNN
F 3 "~" H 7050 3200 50  0001 C CNN
	1    7050 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6825 3000 7050 3000
Wire Wire Line
	6450 3425 6625 3425
Wire Wire Line
	6625 3300 6625 3425
Wire Wire Line
	6150 3425 5875 3425
Wire Wire Line
	5875 3425 5875 3525
Wire Wire Line
	5875 3925 5875 4000
$Comp
L power:GND #PWR0163
U 1 1 61D59CAC
P 5875 4000
F 0 "#PWR0163" H 5875 3750 50  0001 C CNN
F 1 "GND" H 5880 3827 50  0000 C CNN
F 2 "" H 5875 4000 50  0001 C CNN
F 3 "" H 5875 4000 50  0001 C CNN
	1    5875 4000
	1    0    0    -1  
$EndComp
Connection ~ 5050 3725
Wire Wire Line
	7050 3000 7050 3050
Connection ~ 7050 3000
Wire Wire Line
	7050 3000 7150 3000
Wire Wire Line
	5475 3000 5475 3050
Connection ~ 5475 3000
Wire Wire Line
	5475 3000 5575 3000
Wire Wire Line
	5050 3300 5050 3375
$Comp
L Device:LED_Dual_CCA D401
U 1 1 61D7E5D6
P 9175 2575
F 0 "D401" V 9129 2863 50  0000 L CNN
F 1 "LED_Dual_CCA" V 9220 2863 50  0000 L CNN
F 2 "LED_SMD:LED_LiteOn_LTST-S326" H 9225 2575 50  0001 C CNN
F 3 "~" H 9225 2575 50  0001 C CNN
	1    9175 2575
	0    1    1    0   
$EndComp
$Comp
L Transistor_FET:BSS123 Q401
U 1 1 61DA15DF
P 8975 3600
F 0 "Q401" H 8700 3550 50  0000 L CNN
F 1 "BSS123" H 8650 3475 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9175 3525 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30366.pdf" H 8975 3600 50  0001 L CNN
	1    8975 3600
	1    0    0    -1  
$EndComp
$Comp
L Transistor_FET:BSS123 Q402
U 1 1 61DA3243
P 9175 4250
F 0 "Q402" H 8900 4200 50  0000 L CNN
F 1 "BSS123" H 8850 4125 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9375 4175 50  0001 L CIN
F 3 "http://www.diodes.com/assets/Datasheets/ds30366.pdf" H 9175 4250 50  0001 L CNN
	1    9175 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R401
U 1 1 61DA7E00
P 9075 3125
F 0 "R401" V 9000 3025 50  0000 L CNN
F 1 "1k" V 9075 3075 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9005 3125 50  0001 C CNN
F 3 "~" H 9075 3125 50  0001 C CNN
	1    9075 3125
	1    0    0    -1  
$EndComp
$Comp
L Device:R R402
U 1 1 61DA8731
P 9275 3125
F 0 "R402" V 9200 3025 50  0000 L CNN
F 1 "1k" V 9275 3075 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 9205 3125 50  0001 C CNN
F 3 "~" H 9275 3125 50  0001 C CNN
	1    9275 3125
	1    0    0    -1  
$EndComp
Wire Wire Line
	9075 2875 9075 2975
Wire Wire Line
	9075 3275 9075 3400
Wire Wire Line
	9275 3275 9275 4050
Wire Wire Line
	8775 3600 8525 3600
Wire Wire Line
	8975 4250 8675 4250
Text Label 5300 3000 0    50   ~ 0
ROUGE
Text Label 8675 4250 0    50   ~ 0
ROUGE
Text Label 8525 3600 0    50   ~ 0
VERT
Text Label 6875 3000 0    50   ~ 0
VERT
Wire Wire Line
	9275 2875 9275 2975
Wire Wire Line
	9075 3800 9075 3850
Wire Wire Line
	9275 4450 9275 4500
$Comp
L power:GND #PWR0165
U 1 1 61DC093C
P 9275 4500
F 0 "#PWR0165" H 9275 4250 50  0001 C CNN
F 1 "GND" H 9280 4327 50  0000 C CNN
F 2 "" H 9275 4500 50  0001 C CNN
F 3 "" H 9275 4500 50  0001 C CNN
	1    9275 4500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0166
U 1 1 61DC7463
P 9075 3850
F 0 "#PWR0166" H 9075 3600 50  0001 C CNN
F 1 "GND" H 9080 3677 50  0000 C CNN
F 2 "" H 9075 3850 50  0001 C CNN
F 3 "" H 9075 3850 50  0001 C CNN
	1    9075 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9175 2275 9175 2175
$Comp
L power:+5VA #PWR0179
U 1 1 61DD29A0
P 9175 2175
F 0 "#PWR0179" H 9175 2025 50  0001 C CNN
F 1 "+5VA" H 9190 2348 50  0000 C CNN
F 2 "" H 9175 2175 50  0001 C CNN
F 3 "" H 9175 2175 50  0001 C CNN
	1    9175 2175
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0180
U 1 1 61DDA175
P 7050 3425
F 0 "#PWR0180" H 7050 3175 50  0001 C CNN
F 1 "GND" H 7055 3252 50  0000 C CNN
F 2 "" H 7050 3425 50  0001 C CNN
F 3 "" H 7050 3425 50  0001 C CNN
	1    7050 3425
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0181
U 1 1 61DDC352
P 5475 3425
F 0 "#PWR0181" H 5475 3175 50  0001 C CNN
F 1 "GND" H 5480 3252 50  0000 C CNN
F 2 "" H 5475 3425 50  0001 C CNN
F 3 "" H 5475 3425 50  0001 C CNN
	1    5475 3425
	1    0    0    -1  
$EndComp
Wire Wire Line
	5475 3350 5475 3425
Wire Wire Line
	7050 3350 7050 3425
$EndSCHEMATC
