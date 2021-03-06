EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 12
Title "Connector Cube V2"
Date "2021-12-21"
Rev "V2.00A"
Comp "CubeDeb-F4DEB"
Comment1 "Input Capture"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 4150 2375 0    50   Input ~ 0
IC1
$Comp
L CEN-SCHEMA:CONN_3 K701
U 1 1 61C48253
P 4850 2475
F 0 "K701" H 4717 2154 50  0000 C CNN
F 1 "CONN_3" H 4717 2238 40  0000 C CNN
F 2 "Connector_JST:JST_GH_BM03B-GHS-TBT_1x03-1MP_P1.25mm_Vertical" H 4850 2475 60  0001 C CNN
F 3 "" H 4850 2475 60  0000 C CNN
	1    4850 2475
	1    0    0    1   
$EndComp
Wire Wire Line
	4500 2575 4400 2575
Wire Wire Line
	4400 2575 4400 2650
Wire Wire Line
	4500 2475 4325 2475
Wire Wire Line
	4500 2375 4150 2375
$Comp
L power:GND #PWR0221
U 1 1 61C48919
P 4400 2650
F 0 "#PWR0221" H 4400 2400 50  0001 C CNN
F 1 "GND" H 4405 2477 50  0000 C CNN
F 2 "" H 4400 2650 50  0001 C CNN
F 3 "" H 4400 2650 50  0001 C CNN
	1    4400 2650
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0222
U 1 1 61C48C8B
P 4325 2475
F 0 "#PWR0222" H 4325 2325 50  0001 C CNN
F 1 "+5VD" V 4340 2603 50  0000 L CNN
F 2 "" H 4325 2475 50  0001 C CNN
F 3 "" H 4325 2475 50  0001 C CNN
	1    4325 2475
	0    -1   -1   0   
$EndComp
Text HLabel 4150 3450 0    50   Input ~ 0
IC2
$Comp
L CEN-SCHEMA:CONN_3 K702
U 1 1 61C49A1E
P 4850 3550
F 0 "K702" H 4717 3229 50  0000 C CNN
F 1 "CONN_3" H 4717 3313 40  0000 C CNN
F 2 "Connector_JST:JST_GH_BM03B-GHS-TBT_1x03-1MP_P1.25mm_Vertical" H 4850 3550 60  0001 C CNN
F 3 "" H 4850 3550 60  0000 C CNN
	1    4850 3550
	1    0    0    1   
$EndComp
Wire Wire Line
	4500 3650 4400 3650
Wire Wire Line
	4400 3650 4400 3725
Wire Wire Line
	4500 3550 4325 3550
Wire Wire Line
	4500 3450 4150 3450
$Comp
L power:GND #PWR0223
U 1 1 61C49A2C
P 4400 3725
F 0 "#PWR0223" H 4400 3475 50  0001 C CNN
F 1 "GND" H 4405 3552 50  0000 C CNN
F 2 "" H 4400 3725 50  0001 C CNN
F 3 "" H 4400 3725 50  0001 C CNN
	1    4400 3725
	1    0    0    -1  
$EndComp
$Comp
L power:+5VD #PWR0224
U 1 1 61C49A36
P 4325 3550
F 0 "#PWR0224" H 4325 3400 50  0001 C CNN
F 1 "+5VD" V 4340 3678 50  0000 L CNN
F 2 "" H 4325 3550 50  0001 C CNN
F 3 "" H 4325 3550 50  0001 C CNN
	1    4325 3550
	0    -1   -1   0   
$EndComp
$EndSCHEMATC
