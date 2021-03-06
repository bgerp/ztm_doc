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
L Device:C C1
U 1 1 5DE7C345
P 4900 2250
F 0 "C1" H 5015 2296 50  0000 L CNN
F 1 "100nF" H 5015 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 4938 2100 50  0001 C CNN
F 3 "~" H 4900 2250 50  0001 C CNN
	1    4900 2250
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:LM1117-3.3 U1
U 1 1 5DE7D658
P 5300 1900
F 0 "U1" H 5300 2142 50  0000 C CNN
F 1 "LM1117-3.3" H 5300 2051 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-89-3_Handsoldering" H 5300 1900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm1117.pdf" H 5300 1900 50  0001 C CNN
	1    5300 1900
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5DE7ED8C
P 4900 2650
F 0 "#PWR01" H 4900 2400 50  0001 C CNN
F 1 "GND" H 4905 2477 50  0000 C CNN
F 2 "" H 4900 2650 50  0001 C CNN
F 3 "" H 4900 2650 50  0001 C CNN
	1    4900 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2500 5300 2200
$Comp
L Device:C C5
U 1 1 5DE80683
P 5900 2250
F 0 "C5" H 6015 2296 50  0000 L CNN
F 1 "100nF" H 6015 2205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 5938 2100 50  0001 C CNN
F 3 "~" H 5900 2250 50  0001 C CNN
	1    5900 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C6
U 1 1 5DE80F8A
P 6450 2250
F 0 "C6" H 6568 2296 50  0000 L CNN
F 1 "100uF" H 6568 2205 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_4x4.5" H 6488 2100 50  0001 C CNN
F 3 "~" H 6450 2250 50  0001 C CNN
	1    6450 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1900 5900 1900
Wire Wire Line
	5900 1900 5900 2100
Wire Wire Line
	5900 1900 6450 1900
Wire Wire Line
	6450 1900 6450 2100
Connection ~ 5900 1900
Wire Wire Line
	5300 2500 5900 2500
Wire Wire Line
	5900 2500 5900 2400
Connection ~ 5300 2500
Wire Wire Line
	5900 2500 6450 2500
Wire Wire Line
	6450 2500 6450 2400
Connection ~ 5900 2500
$Comp
L power:+3.3V #PWR05
U 1 1 5DE82058
P 6450 1800
F 0 "#PWR05" H 6450 1650 50  0001 C CNN
F 1 "+3.3V" H 6465 1973 50  0000 C CNN
F 2 "" H 6450 1800 50  0001 C CNN
F 3 "" H 6450 1800 50  0001 C CNN
	1    6450 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 1900 6450 1800
Connection ~ 6450 1900
$Comp
L Device:CP C4
U 1 1 5DE8391C
P 5300 5150
F 0 "C4" H 5418 5196 50  0000 L CNN
F 1 "220uF" H 5418 5105 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.4" H 5338 5000 50  0001 C CNN
F 3 "~" H 5300 5150 50  0001 C CNN
	1    5300 5150
	1    0    0    -1  
$EndComp
$Comp
L Diode:1N4007 D2
U 1 1 5DE83C79
P 6350 5900
F 0 "D2" H 6350 6116 50  0000 C CNN
F 1 "1N4007" H 6350 6025 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 6350 5725 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6350 5900 50  0001 C CNN
	1    6350 5900
	1    0    0    -1  
$EndComp
$Comp
L Relay:G5LE-1 K1
U 1 1 5DE7CD07
P 4350 4500
F 0 "K1" H 4780 4546 50  0000 L CNN
F 1 "G5LE-1" H 4780 4455 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron-G5LE-1" H 4800 4450 50  0001 L CNN
F 3 "http://www.omron.com/ecb/products/pdf/en-g5le.pdf" H 4350 4100 50  0001 C CNN
	1    4350 4500
	0    1    1    0   
$EndComp
$Comp
L Relay:G5LE-1 K2
U 1 1 5DE7E52A
P 6900 4200
F 0 "K2" H 7330 4246 50  0000 L CNN
F 1 "G5LE-1" H 7330 4155 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron-G5LE-1" H 7350 4150 50  0001 L CNN
F 3 "http://www.omron.com/ecb/products/pdf/en-g5le.pdf" H 6900 3800 50  0001 C CNN
	1    6900 4200
	1    0    0    -1  
$EndComp
$Comp
L Relay:G5LE-1 K3
U 1 1 5DE7F895
P 6900 5200
F 0 "K3" H 7330 5246 50  0000 L CNN
F 1 "G5LE-1" H 7330 5155 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron-G5LE-1" H 7350 5150 50  0001 L CNN
F 3 "http://www.omron.com/ecb/products/pdf/en-g5le.pdf" H 6900 4800 50  0001 C CNN
	1    6900 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7100 4500 7100 4600
Wire Wire Line
	7100 5500 7100 5600
Wire Wire Line
	7100 5600 8200 5600
Wire Wire Line
	8700 5600 8700 4700
Wire Wire Line
	8700 4700 8950 4700
Wire Wire Line
	7100 4600 8200 4600
Wire Wire Line
	7000 4900 7000 4700
Wire Wire Line
	7000 4700 7700 4700
Wire Wire Line
	7700 4700 7700 3700
Wire Wire Line
	7700 3700 7000 3700
Wire Wire Line
	7000 3700 7000 3900
Wire Wire Line
	7200 4900 7200 4800
Wire Wire Line
	7200 4800 7800 4800
Wire Wire Line
	7800 4800 7800 3800
Wire Wire Line
	7800 3800 7200 3800
Wire Wire Line
	7200 3800 7200 3900
$Comp
L power:+3.3V #PWR07
U 1 1 5DE860EF
P 7800 3600
F 0 "#PWR07" H 7800 3450 50  0001 C CNN
F 1 "+3.3V" H 7815 3773 50  0000 C CNN
F 2 "" H 7800 3600 50  0001 C CNN
F 3 "" H 7800 3600 50  0001 C CNN
	1    7800 3600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5DE86AC5
P 7700 4900
F 0 "#PWR06" H 7700 4650 50  0001 C CNN
F 1 "GND" H 7705 4727 50  0000 C CNN
F 2 "" H 7700 4900 50  0001 C CNN
F 3 "" H 7700 4900 50  0001 C CNN
	1    7700 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 4700 7700 4900
Connection ~ 7700 4700
Wire Wire Line
	7800 3800 7800 3600
Connection ~ 7800 3800
Wire Wire Line
	8200 4950 8200 4600
Connection ~ 8200 4600
Wire Wire Line
	8200 4600 8950 4600
Wire Wire Line
	8200 5250 8200 5600
Connection ~ 8200 5600
Wire Wire Line
	8200 5600 8700 5600
$Comp
L Diode:1N4007 D1
U 1 1 5DE8E6EB
P 6300 3500
F 0 "D1" H 6300 3716 50  0000 C CNN
F 1 "1N4007" H 6300 3625 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 6300 3325 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 6300 3500 50  0001 C CNN
	1    6300 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	6450 3500 6700 3500
Wire Wire Line
	6700 3500 6700 3900
Wire Wire Line
	6500 5900 6700 5900
Wire Wire Line
	6700 5900 6700 5500
Wire Wire Line
	6700 4900 6700 4700
$Comp
L Device:CP C3
U 1 1 5DE92110
P 5300 4250
F 0 "C3" H 5418 4296 50  0000 L CNN
F 1 "220uF" H 5418 4205 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_5x5.4" H 5338 4100 50  0001 C CNN
F 3 "~" H 5300 4250 50  0001 C CNN
	1    5300 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 4700 5300 4700
Wire Wire Line
	5300 4700 5300 4400
Connection ~ 6700 4700
Wire Wire Line
	6700 4700 6700 4500
Wire Wire Line
	5300 4700 5300 5000
Connection ~ 5300 4700
Wire Wire Line
	6150 3500 5900 3500
Wire Wire Line
	5900 3500 5900 5900
Wire Wire Line
	5900 5900 6200 5900
$Comp
L power:+24V #PWR03
U 1 1 5DEA5349
P 5300 3350
F 0 "#PWR03" H 5300 3200 50  0001 C CNN
F 1 "+24V" H 5315 3523 50  0000 C CNN
F 2 "" H 5300 3350 50  0001 C CNN
F 3 "" H 5300 3350 50  0001 C CNN
	1    5300 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 3350 5300 3700
$Comp
L power:GND #PWR04
U 1 1 5DEA6EA5
P 5300 5650
F 0 "#PWR04" H 5300 5400 50  0001 C CNN
F 1 "GND" H 5305 5477 50  0000 C CNN
F 2 "" H 5300 5650 50  0001 C CNN
F 3 "" H 5300 5650 50  0001 C CNN
	1    5300 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5300 5300 5550
Wire Wire Line
	4650 4600 4950 4600
Wire Wire Line
	4650 4800 4950 4800
Wire Wire Line
	4950 4800 4950 5550
Wire Wire Line
	4950 5550 5300 5550
Connection ~ 5300 5550
Wire Wire Line
	5300 5550 5300 5650
Wire Wire Line
	5900 5900 3950 5900
Wire Wire Line
	3950 5900 3950 4700
Wire Wire Line
	3950 4700 4050 4700
Connection ~ 5900 5900
$Comp
L Diode:1N4007 D3
U 1 1 5EEB4CE7
P 4350 3700
F 0 "D3" H 4350 3916 50  0000 C CNN
F 1 "1N4007" H 4350 3825 50  0000 C CNN
F 2 "Diode_SMD:D_SMA" H 4350 3525 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 4350 3700 50  0001 C CNN
	1    4350 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4200 3700 3950 3700
Wire Wire Line
	3950 4300 4050 4300
Wire Wire Line
	3950 3700 3950 4300
Wire Wire Line
	4950 3700 5300 3700
Connection ~ 4950 3700
Connection ~ 5300 3700
Wire Wire Line
	4950 3700 4950 4300
Wire Wire Line
	5300 3700 5300 4100
Wire Wire Line
	4500 3700 4950 3700
Wire Wire Line
	4650 4300 4950 4300
Connection ~ 4950 4300
Wire Wire Line
	4950 4300 4950 4600
Text HLabel 8950 4600 2    50   Input ~ 0
MotorA
Text HLabel 8950 4700 2    50   Input ~ 0
MotorB
Wire Wire Line
	4900 2650 4900 2500
Text HLabel 3800 4300 0    50   Input ~ 0
LATCH
Wire Wire Line
	3800 4300 3950 4300
Connection ~ 3950 4300
$Comp
L power:+5V #PWR0101
U 1 1 5F90FD13
P 4900 1800
F 0 "#PWR0101" H 4900 1650 50  0001 C CNN
F 1 "+5V" H 4915 1973 50  0000 C CNN
F 2 "" H 4900 1800 50  0001 C CNN
F 3 "" H 4900 1800 50  0001 C CNN
	1    4900 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1900 4900 1900
Wire Wire Line
	4900 1900 4900 1800
Wire Wire Line
	4900 1900 4900 2100
Connection ~ 4900 1900
Wire Wire Line
	4900 2400 4900 2500
Connection ~ 4900 2500
Wire Wire Line
	4900 2500 5300 2500
$Comp
L Device:C C7
U 1 1 5F94417E
P 8200 5100
F 0 "C7" H 8315 5146 50  0000 L CNN
F 1 "100nF" H 8315 5055 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 8238 4950 50  0001 C CNN
F 3 "~" H 8200 5100 50  0001 C CNN
	1    8200 5100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
