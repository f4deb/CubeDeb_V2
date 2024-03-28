EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
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
L CEN-SCHEMA:PIC32MX795F512H U2001
U 1 1 6089E60E
P 4850 2150
F 0 "U2001" H 6025 2237 60  0000 C CNN
F 1 "PIC32MX795F512H" H 6025 2131 60  0000 C CNN
F 2 "Package_QFP:TQFP-64_14x14mm_P0.8mm" H 4850 2150 60  0000 C CNN
F 3 "" H 4850 2150 60  0000 C CNN
	1    4850 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 4850 4300 4850
Wire Wire Line
	4300 4950 4750 4950
Wire Wire Line
	4750 5050 4300 5050
Wire Wire Line
	4300 5150 4750 5150
Wire Wire Line
	4750 5250 4300 5250
Wire Wire Line
	4300 5350 4750 5350
Wire Wire Line
	4750 5450 4300 5450
Wire Wire Line
	4300 5550 4750 5550
Wire Wire Line
	4300 5650 4750 5650
Wire Wire Line
	4750 5750 4300 5750
Wire Wire Line
	4300 5850 4750 5850
Wire Wire Line
	7750 3750 7300 3750
Wire Wire Line
	7300 3850 7750 3850
Wire Wire Line
	7750 3950 7300 3950
Wire Wire Line
	7300 4050 7750 4050
Wire Wire Line
	7750 4150 7300 4150
Wire Wire Line
	7300 4250 7750 4250
Wire Wire Line
	7750 4350 7300 4350
Wire Wire Line
	7300 4500 7750 4500
Wire Wire Line
	7300 4600 7750 4600
Wire Wire Line
	7750 4700 7300 4700
Wire Wire Line
	7300 4800 7750 4800
Wire Wire Line
	7750 4900 7300 4900
Wire Wire Line
	7300 5050 7750 5050
Wire Wire Line
	7750 5150 7300 5150
Wire Wire Line
	7300 5250 7750 5250
Wire Wire Line
	7750 5350 7300 5350
Wire Wire Line
	7300 5550 7750 5550
Wire Wire Line
	7750 5650 7300 5650
Wire Wire Line
	7300 5750 7750 5750
Wire Wire Line
	7300 5850 7750 5850
Wire Wire Line
	8350 3250 8300 3250
Wire Wire Line
	4750 2850 4300 2850
Wire Wire Line
	4300 2950 4750 2950
Wire Wire Line
	4750 3050 4300 3050
Wire Wire Line
	4300 3150 4750 3150
Wire Wire Line
	4750 3250 4300 3250
Wire Wire Line
	4300 3350 4750 3350
Wire Wire Line
	4750 3450 4300 3450
Wire Wire Line
	4300 3550 4750 3550
Wire Wire Line
	4300 3650 4750 3650
Wire Wire Line
	4750 3750 4300 3750
Wire Wire Line
	4300 3850 4750 3850
Wire Wire Line
	4750 2350 4300 2350
Wire Wire Line
	4300 2450 4750 2450
Wire Wire Line
	4300 2550 4750 2550
Wire Wire Line
	4750 2650 4300 2650
Wire Wire Line
	4300 2750 4750 2750
Wire Wire Line
	4300 4750 4750 4750
Text HLabel 4300 5850 0    50   Input ~ 0
INT0
Text HLabel 4300 5550 0    50   Input ~ 0
INT1
Text HLabel 4300 4750 0    50   Input ~ 0
PWM0
Text HLabel 4300 4850 0    50   Input ~ 0
PWM1
Text HLabel 4300 5150 0    50   Input ~ 0
PWM2
$Comp
L CEN-SCHEMA:R R2004
U 1 1 60977C74
P 8475 2000
F 0 "R2004" H 8528 1946 50  0000 L CNN
F 1 "R" H 8528 1855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 8475 2000 60  0001 C CNN
F 3 "" H 8475 2000 60  0000 C CNN
	1    8475 2000
	1    0    0    -1  
$EndComp
$Comp
L CEN-SCHEMA:R R2002
U 1 1 6097814A
P 7750 2350
F 0 "R2002" V 7560 2250 50  0000 C CNN
F 1 "R" V 7651 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 7750 2350 60  0001 C CNN
F 3 "" H 7750 2350 60  0000 C CNN
	1    7750 2350
	0    1    1    0   
$EndComp
$Comp
L Device:C C2003
U 1 1 60978786
P 8475 2525
F 0 "C2003" H 8590 2571 50  0000 L CNN
F 1 "C" H 8590 2480 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 8513 2375 50  0001 C CNN
F 3 "~" H 8475 2525 50  0001 C CNN
	1    8475 2525
	1    0    0    -1  
$EndComp
Wire Wire Line
	8475 2250 8475 2350
Wire Wire Line
	8475 1950 8475 1875
Wire Wire Line
	7800 2350 8475 2350
Wire Wire Line
	8475 2350 8475 2375
Wire Wire Line
	8475 2675 8475 2725
$Comp
L power:GND #PWR0135
U 1 1 60989252
P 8475 2725
F 0 "#PWR0135" H 8475 2475 50  0001 C CNN
F 1 "GND" H 8480 2552 50  0000 C CNN
F 2 "" H 8475 2725 50  0001 C CNN
F 3 "" H 8475 2725 50  0001 C CNN
	1    8475 2725
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0136
U 1 1 6098AEC4
P 8475 1875
F 0 "#PWR0136" H 8475 1725 50  0001 C CNN
F 1 "+3.3V" H 8490 2048 50  0000 C CNN
F 2 "" H 8475 1875 50  0001 C CNN
F 3 "" H 8475 1875 50  0001 C CNN
	1    8475 1875
	1    0    0    -1  
$EndComp
Connection ~ 8475 2350
Wire Wire Line
	7300 2350 7500 2350
Text HLabel 8575 2350 2    50   Input ~ 0
RST
Wire Wire Line
	8475 2350 8575 2350
Text HLabel 7750 5650 2    50   Input ~ 0
SDA4
Text HLabel 7750 5750 2    50   Input ~ 0
SCL4
Text HLabel 4300 5750 0    50   Input ~ 0
SCL1
Text HLabel 4300 5650 0    50   Input ~ 0
SDA1
Text HLabel 7750 4900 2    50   Input ~ 0
UART2-TX
Text HLabel 7750 4800 2    50   Input ~ 0
UART2-RX
Text HLabel 7750 5550 2    50   Input ~ 0
UART6-TX
Text HLabel 7750 5850 2    50   Input ~ 0
UART6-RX
Text HLabel 4300 3150 0    50   Input ~ 0
UART5-RX
Text HLabel 4300 3750 0    50   Input ~ 0
UART5-TX
Text HLabel 4300 2350 0    50   Input ~ 0
PGED1
Text HLabel 4300 2450 0    50   Input ~ 0
PGEC1
Wire Wire Line
	7300 2500 7750 2500
Wire Wire Line
	7300 2700 7750 2700
Wire Wire Line
	7300 2900 7750 2900
Wire Wire Line
	7750 3100 7300 3100
Wire Wire Line
	7800 2600 7800 2800
Wire Wire Line
	7800 3350 7900 3350
Wire Wire Line
	7300 2600 7800 2600
Wire Wire Line
	7300 3350 7800 3350
Connection ~ 7800 3350
Wire Wire Line
	7300 3000 7800 3000
Connection ~ 7800 3000
Wire Wire Line
	7800 3000 7800 3350
Wire Wire Line
	7300 2800 7800 2800
Connection ~ 7800 2800
Wire Wire Line
	7800 2800 7800 3000
Wire Wire Line
	7750 2500 7750 2700
Wire Wire Line
	7750 2700 7750 2900
Connection ~ 7750 2700
Wire Wire Line
	7750 2900 7750 3100
Connection ~ 7750 2900
Wire Wire Line
	7750 2500 7900 2500
Connection ~ 7750 2500
$Comp
L power:+3.3V #PWR0137
U 1 1 60940F59
P 7900 2500
F 0 "#PWR0137" H 7900 2350 50  0001 C CNN
F 1 "+3.3V" V 7915 2628 50  0000 L CNN
F 2 "" H 7900 2500 50  0001 C CNN
F 3 "" H 7900 2500 50  0001 C CNN
	1    7900 2500
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0138
U 1 1 609417B8
P 7900 3350
F 0 "#PWR0138" H 7900 3100 50  0001 C CNN
F 1 "GND" V 7905 3222 50  0000 R CNN
F 2 "" H 7900 3350 50  0001 C CNN
F 3 "" H 7900 3350 50  0001 C CNN
	1    7900 3350
	0    -1   -1   0   
$EndComp
$Comp
L CEN-SCHEMA:MCP1501 U2002
U 1 1 6095C40B
P 8750 3350
F 0 "U2002" H 8725 3675 50  0000 C CNN
F 1 "MCP1501" H 8725 3584 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-8_Handsoldering" H 8500 3600 50  0001 C CNN
F 3 "" H 8500 3600 50  0001 C CNN
	1    8750 3350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9300 3350 9200 3350
Wire Wire Line
	9200 3250 9300 3250
Connection ~ 9300 3250
Wire Wire Line
	9300 3250 9300 3350
Wire Wire Line
	9200 3450 9400 3450
Wire Wire Line
	8300 3250 8300 3450
Wire Wire Line
	8300 3450 8350 3450
Connection ~ 8300 3250
$Comp
L Device:R R2003
U 1 1 60978A4E
P 8300 3100
F 0 "R2003" H 8230 3054 50  0000 R CNN
F 1 "NC" H 8230 3145 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" V 8230 3100 50  0001 C CNN
F 3 "~" H 8300 3100 50  0001 C CNN
	1    8300 3100
	-1   0    0    1   
$EndComp
$Comp
L Reference_Voltage:REF3020 U2003
U 1 1 6097DAD8
P 9200 3875
F 0 "U2003" H 8970 3921 50  0000 R CNN
F 1 "REF3020" H 8970 3830 50  0000 R CIN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9200 3425 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/ref3033.pdf" H 9300 3525 50  0001 C CIN
	1    9200 3875
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8300 3250 7300 3250
Wire Wire Line
	7750 2900 8300 2900
Wire Wire Line
	9300 2900 9300 3250
Wire Wire Line
	8300 2950 8300 2900
Connection ~ 8300 2900
Wire Wire Line
	8300 2900 9300 2900
$Comp
L power:GND #PWR0139
U 1 1 60974691
P 9400 3450
F 0 "#PWR0139" H 9400 3200 50  0001 C CNN
F 1 "GND" V 9405 3322 50  0000 R CNN
F 2 "" H 9400 3450 50  0001 C CNN
F 3 "" H 9400 3450 50  0001 C CNN
	1    9400 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9300 3350 9300 3575
Connection ~ 9300 3350
Wire Wire Line
	8900 3875 8300 3875
Wire Wire Line
	8300 3875 8300 3450
Connection ~ 8300 3450
Wire Wire Line
	9300 4175 9300 4250
$Comp
L power:GND #PWR0140
U 1 1 609B7377
P 9300 4250
F 0 "#PWR0140" H 9300 4000 50  0001 C CNN
F 1 "GND" H 9305 4077 50  0000 C CNN
F 2 "" H 9300 4250 50  0001 C CNN
F 3 "" H 9300 4250 50  0001 C CNN
	1    9300 4250
	1    0    0    -1  
$EndComp
Text HLabel 7750 5350 2    50   Input ~ 0
USBP
Text HLabel 7750 5250 2    50   Input ~ 0
USBN
Text HLabel 7750 5150 2    50   Input ~ 0
VBUS
Wire Wire Line
	7300 3650 7750 3650
Text HLabel 7750 3650 2    50   Input ~ 0
D0
Text HLabel 7750 3750 2    50   Input ~ 0
D1
Text HLabel 7750 3850 2    50   Input ~ 0
D2
Text HLabel 7750 3950 2    50   Input ~ 0
D3
Text HLabel 7750 4050 2    50   Input ~ 0
D4
Text HLabel 7750 4150 2    50   Input ~ 0
D5
Text HLabel 7750 4250 2    50   Input ~ 0
D6
Text HLabel 7750 4350 2    50   Input ~ 0
D7
Text HLabel 4300 5250 0    50   Input ~ 0
E
Text HLabel 4300 5350 0    50   Input ~ 0
RS
Text HLabel 7750 4700 2    50   Input ~ 0
RW
$Comp
L power:GND #PWR0141
U 1 1 608FED34
P 2050 4550
F 0 "#PWR0141" H 2050 4300 50  0001 C CNN
F 1 "GND" V 2055 4422 50  0000 R CNN
F 2 "" H 2050 4550 50  0001 C CNN
F 3 "" H 2050 4550 50  0001 C CNN
	1    2050 4550
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0142
U 1 1 608FE884
P 2050 4175
F 0 "#PWR0142" H 2050 3925 50  0001 C CNN
F 1 "GND" V 2055 4047 50  0000 R CNN
F 2 "" H 2050 4175 50  0001 C CNN
F 3 "" H 2050 4175 50  0001 C CNN
	1    2050 4175
	0    1    1    0   
$EndComp
Wire Wire Line
	2100 4550 2050 4550
Wire Wire Line
	2100 4175 2050 4175
Wire Wire Line
	3200 4550 4750 4550
Connection ~ 3200 4550
Wire Wire Line
	3200 4525 3200 4550
Wire Wire Line
	2950 4550 3200 4550
Connection ~ 2950 4550
Wire Wire Line
	2950 4475 2950 4550
Wire Wire Line
	3200 4175 2950 4175
Connection ~ 3200 4175
Wire Wire Line
	3200 4225 3200 4175
Connection ~ 2950 4175
Wire Wire Line
	2950 4275 2950 4175
Wire Wire Line
	3675 4400 4750 4400
Wire Wire Line
	3675 4175 3200 4175
Wire Wire Line
	3675 4400 3675 4175
$Comp
L Device:C C2002
U 1 1 608ECEE6
P 2250 4550
F 0 "C2002" V 1998 4550 50  0000 C CNN
F 1 "C" V 2089 4550 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2288 4400 50  0001 C CNN
F 3 "~" H 2250 4550 50  0001 C CNN
	1    2250 4550
	0    1    1    0   
$EndComp
$Comp
L Device:C C2001
U 1 1 608EC8FC
P 2250 4175
F 0 "C2001" V 1998 4175 50  0000 C CNN
F 1 "C" V 2089 4175 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2288 4025 50  0001 C CNN
F 3 "~" H 2250 4175 50  0001 C CNN
	1    2250 4175
	0    1    1    0   
$EndComp
$Comp
L CEN-SCHEMA:R R2001
U 1 1 608E74F7
P 3200 4475
F 0 "R2001" H 3147 4329 50  0000 R CNN
F 1 "R" H 3147 4420 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 3200 4475 60  0001 C CNN
F 3 "" H 3200 4475 60  0000 C CNN
	1    3200 4475
	-1   0    0    1   
$EndComp
$Comp
L Device:Crystal_Small Y2001
U 1 1 608E6D08
P 2950 4375
F 0 "Y2001" V 2904 4463 50  0000 L CNN
F 1 "Crystal_Small" V 2995 4463 50  0000 L CNN
F 2 "Crystal:Crystal_SMD_HC49-SD" H 2950 4375 50  0001 C CNN
F 3 "~" H 2950 4375 50  0001 C CNN
	1    2950 4375
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 4150 4300 4150
Wire Wire Line
	4750 4000 4300 4000
Text HLabel 4300 4150 0    50   Input ~ 0
T1CK
Text HLabel 4300 2550 0    50   Input ~ 0
IO0
Text HLabel 4300 2650 0    50   Input ~ 0
IO1
Text HLabel 4300 2750 0    50   Input ~ 0
IO2
Text HLabel 4300 2850 0    50   Input ~ 0
IO3
Text HLabel 4300 2950 0    50   Input ~ 0
IO4
Text HLabel 4300 3050 0    50   Input ~ 0
IO5
Text HLabel 4300 3250 0    50   Input ~ 0
IO6
Text HLabel 4300 3350 0    50   Input ~ 0
IO7
Text HLabel 4300 3450 0    50   Input ~ 0
IO8
Text HLabel 4300 3550 0    50   Input ~ 0
IO9
Text HLabel 7750 4500 2    50   Input ~ 0
CAN1RX
Text HLabel 7750 4600 2    50   Input ~ 0
CAN1TX
$Comp
L Device:Crystal Y2002
U 1 1 609000C5
P 2625 4375
F 0 "Y2002" V 2579 4506 50  0000 L CNN
F 1 "Crystal" V 2670 4506 50  0000 L CNN
F 2 "F4DEB-LIBRARY-KICAD5:QTZ" H 2625 4375 50  0001 C CNN
F 3 "~" H 2625 4375 50  0001 C CNN
	1    2625 4375
	0    1    1    0   
$EndComp
Wire Wire Line
	2400 4175 2625 4175
Wire Wire Line
	2400 4550 2625 4550
Wire Wire Line
	2625 4525 2625 4550
Connection ~ 2625 4550
Wire Wire Line
	2625 4550 2950 4550
Wire Wire Line
	2625 4225 2625 4175
Connection ~ 2625 4175
Wire Wire Line
	2625 4175 2950 4175
Text HLabel 4300 4950 0    50   Input ~ 0
UART1-RX
Text HLabel 4300 5050 0    50   Input ~ 0
UART1-TX
$EndSCHEMATC