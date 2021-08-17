EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "FADE LIGHT CONTROLLER"
Date "2021-08-17"
Rev "1.0.0"
Comp "POLYGON Team Ltd."
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R1
U 1 1 6076A3E1
P 3550 1750
F 0 "R1" H 3620 1796 50  0000 L CNN
F 1 "10k" H 3620 1705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3480 1750 50  0001 C CNN
F 3 "~" H 3550 1750 50  0001 C CNN
	1    3550 1750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 6076A9B0
P 3550 6350
F 0 "R2" H 3620 6396 50  0000 L CNN
F 1 "10k" H 3620 6305 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 3480 6350 50  0001 C CNN
F 3 "~" H 3550 6350 50  0001 C CNN
	1    3550 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 6076AC08
P 4550 1000
F 0 "R3" H 4620 1046 50  0000 L CNN
F 1 "20k" H 4620 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4480 1000 50  0001 C CNN
F 3 "~" H 4550 1000 50  0001 C CNN
	1    4550 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 6076B04D
P 4550 5550
F 0 "R4" H 4620 5596 50  0000 L CNN
F 1 "20k" H 4620 5505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 4480 5550 50  0001 C CNN
F 3 "~" H 4550 5550 50  0001 C CNN
	1    4550 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM RV1
U 1 1 6076B9D7
P 5150 1800
F 0 "RV1" H 5080 1891 50  0000 R CNN
F 1 "20k" H 5080 1800 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 5080 1709 50  0000 R CNN
F 3 "~" H 5150 1800 50  0001 C CNN
	1    5150 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM RV3
U 1 1 6076C473
P 5150 3300
F 0 "RV3" H 5080 3346 50  0000 R CNN
F 1 "20k" H 5080 3255 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 5150 3300 50  0001 C CNN
F 3 "~" H 5150 3300 50  0001 C CNN
	1    5150 3300
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 1 1 6076DCAA
P 4100 1400
F 0 "U1" H 4100 1767 50  0000 C CNN
F 1 "LM358" H 4100 1676 50  0000 C CNN
F 2 "Package_SO:SO-8_5.3x6.2mm_P1.27mm" H 4100 1400 50  0001 C CNN
F 3 "" H 4100 1400 50  0001 C CNN
	1    4100 1400
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 2 1 6076F737
P 4100 6000
F 0 "U1" H 4100 6367 50  0000 C CNN
F 1 "LM358" H 4100 6276 50  0000 C CNN
F 2 "Package_SO:SO-8_5.3x6.2mm_P1.27mm" H 4100 6000 50  0001 C CNN
F 3 "" H 4100 6000 50  0001 C CNN
	2    4100 6000
	1    0    0    -1  
$EndComp
$Comp
L Amplifier_Operational:LM358 U1
U 3 1 60770E38
P 1550 5800
F 0 "U1" H 1508 5846 50  0000 L CNN
F 1 "LM358" H 1508 5755 50  0000 L CNN
F 2 "Package_SO:SO-8_5.3x6.2mm_P1.27mm" H 1550 5800 50  0001 C CNN
F 3 "" H 1550 5800 50  0001 C CNN
	3    1550 5800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM RV2
U 1 1 60773970
P 5150 2550
F 0 "RV2" H 5080 2596 50  0000 R CNN
F 1 "20k" H 5080 2505 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 5150 2550 50  0001 C CNN
F 3 "~" H 5150 2550 50  0001 C CNN
	1    5150 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM RV4
U 1 1 607751AD
P 5150 4050
F 0 "RV4" H 5080 4096 50  0000 R CNN
F 1 "20k" H 5080 4005 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 5150 4050 50  0001 C CNN
F 3 "~" H 5150 4050 50  0001 C CNN
	1    5150 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 2550 5950 2550
Wire Wire Line
	5950 3300 5300 3300
Wire Wire Line
	5300 4050 5950 4050
Wire Wire Line
	5450 4350 5450 3600
Wire Wire Line
	5450 4350 5600 4350
Wire Wire Line
	5600 2850 5450 2850
Connection ~ 5450 2850
Wire Wire Line
	5600 3600 5450 3600
Connection ~ 5450 3600
Wire Wire Line
	5450 3600 5450 2850
Wire Wire Line
	5900 3600 6250 3600
Wire Wire Line
	6250 3600 6250 3500
Wire Wire Line
	5900 4350 6250 4350
Wire Wire Line
	6250 4350 6250 4250
Wire Wire Line
	5900 2850 6250 2850
Wire Wire Line
	6250 2850 6250 2750
Wire Wire Line
	5450 2850 5450 2100
Wire Wire Line
	5450 2100 5600 2100
$Comp
L Device:R R5
U 1 1 6076CC85
P 5750 2100
F 0 "R5" V 5543 2100 50  0000 C CNN
F 1 "680" V 5634 2100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5680 2100 50  0001 C CNN
F 3 "~" H 5750 2100 50  0001 C CNN
	1    5750 2100
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 60780478
P 7300 2100
F 0 "J6" H 7272 1982 50  0000 R CNN
F 1 "LAMP1" H 7272 2073 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 7300 2100 50  0001 C CNN
F 3 "~" H 7300 2100 50  0001 C CNN
	1    7300 2100
	-1   0    0    1   
$EndComp
Wire Wire Line
	5900 2100 6250 2100
Wire Wire Line
	5300 1800 5950 1800
Wire Wire Line
	6250 2100 6250 2000
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 60786EEE
P 7250 2850
F 0 "J3" H 7222 2732 50  0000 R CNN
F 1 "LAMP2" H 7222 2823 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 7250 2850 50  0001 C CNN
F 3 "~" H 7250 2850 50  0001 C CNN
	1    7250 2850
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J4
U 1 1 6078736D
P 7250 3600
F 0 "J4" H 7222 3482 50  0000 R CNN
F 1 "LAMP3" H 7222 3573 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 7250 3600 50  0001 C CNN
F 3 "~" H 7250 3600 50  0001 C CNN
	1    7250 3600
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J5
U 1 1 60787CA0
P 7250 4350
F 0 "J5" H 7222 4232 50  0000 R CNN
F 1 "LAMP4" H 7222 4323 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 7250 4350 50  0001 C CNN
F 3 "~" H 7250 4350 50  0001 C CNN
	1    7250 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 2100 7100 2100
Connection ~ 6250 2100
Wire Wire Line
	6250 2850 7050 2850
Connection ~ 6250 2850
Wire Wire Line
	6250 3600 7050 3600
Connection ~ 6250 3600
Wire Wire Line
	6250 4350 7050 4350
Connection ~ 6250 4350
Wire Wire Line
	7050 4250 6900 4250
Wire Wire Line
	6900 4250 6900 3500
Wire Wire Line
	6900 2000 7100 2000
Wire Wire Line
	7050 3500 6900 3500
Connection ~ 6900 3500
Wire Wire Line
	6900 3500 6900 2750
Wire Wire Line
	7050 2750 6900 2750
Connection ~ 6900 2750
Wire Wire Line
	6900 2750 6900 2000
Wire Wire Line
	6250 3850 6250 3750
Wire Wire Line
	6250 3750 6750 3750
Wire Wire Line
	6750 3750 6750 3000
Wire Wire Line
	6750 3000 6250 3000
Wire Wire Line
	6250 3000 6250 3100
Wire Wire Line
	6250 2350 6250 2250
Wire Wire Line
	6250 2250 6750 2250
Wire Wire Line
	6750 2250 6750 3000
Connection ~ 6750 3000
Wire Wire Line
	6250 1600 6250 1450
Wire Wire Line
	6250 1450 6750 1450
Wire Wire Line
	6750 1450 6750 2250
Connection ~ 6750 2250
Wire Wire Line
	5150 3900 5150 3450
Wire Wire Line
	5150 3150 5150 2700
Wire Wire Line
	5150 2400 5150 1950
Connection ~ 6900 4250
Connection ~ 5450 4350
Wire Wire Line
	4400 1400 4550 1400
Wire Wire Line
	5150 1400 5150 1650
Wire Wire Line
	4400 6000 4550 6000
Wire Wire Line
	4550 6000 4550 5700
Connection ~ 4550 6000
Wire Wire Line
	4550 6000 5150 6000
Wire Wire Line
	4550 1400 4550 1150
Connection ~ 4550 1400
Wire Wire Line
	4550 1400 5150 1400
Wire Wire Line
	3800 1500 3550 1500
Wire Wire Line
	3550 1500 3550 750 
Wire Wire Line
	3550 750  4550 750 
Wire Wire Line
	4550 750  4550 850 
Wire Wire Line
	4550 5400 4550 5300
Wire Wire Line
	4550 5300 3550 5300
Wire Wire Line
	3550 5300 3550 6100
Wire Wire Line
	3550 6100 3800 6100
Wire Wire Line
	3550 1600 3550 1500
Connection ~ 3550 1500
Wire Wire Line
	3550 6200 3550 6100
Connection ~ 3550 6100
$Comp
L power:GND #PWR05
U 1 1 607AF6A7
P 3550 6600
F 0 "#PWR05" H 3550 6350 50  0001 C CNN
F 1 "GND" H 3555 6427 50  0000 C CNN
F 2 "" H 3550 6600 50  0001 C CNN
F 3 "" H 3550 6600 50  0001 C CNN
	1    3550 6600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 607B15FC
P 3550 2000
F 0 "#PWR04" H 3550 1750 50  0001 C CNN
F 1 "GND" H 3555 1827 50  0000 C CNN
F 2 "" H 3550 2000 50  0001 C CNN
F 3 "" H 3550 2000 50  0001 C CNN
	1    3550 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 2000 3550 1900
$Comp
L power:GND #PWR06
U 1 1 60791981
P 5450 6600
F 0 "#PWR06" H 5450 6350 50  0001 C CNN
F 1 "GND" H 5455 6427 50  0000 C CNN
F 2 "" H 5450 6600 50  0001 C CNN
F 3 "" H 5450 6600 50  0001 C CNN
	1    5450 6600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 6500 3550 6600
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 607B93FD
P 2450 3000
F 0 "J1" H 2558 3281 50  0000 C CNN
F 1 "IN" H 2558 3190 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-3_1x03_P5.00mm_Horizontal" H 2450 3000 50  0001 C CNN
F 3 "~" H 2450 3000 50  0001 C CNN
	1    2450 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 2900 3300 2900
Wire Wire Line
	3300 2900 3300 1300
Wire Wire Line
	3300 1300 3800 1300
Wire Wire Line
	2650 3000 3300 3000
Wire Wire Line
	3300 5900 3800 5900
$Comp
L power:GND #PWR03
U 1 1 607BE63D
P 2850 3300
F 0 "#PWR03" H 2850 3050 50  0001 C CNN
F 1 "GND" H 2855 3127 50  0000 C CNN
F 2 "" H 2850 3300 50  0001 C CNN
F 3 "" H 2850 3300 50  0001 C CNN
	1    2850 3300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 3100 2850 3100
Wire Wire Line
	2850 3100 2850 3300
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 607C53AD
P 750 5750
F 0 "J2" H 858 5931 50  0000 C CNN
F 1 "POWER" H 858 5840 50  0000 C CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 750 5750 50  0001 C CNN
F 3 "~" H 750 5750 50  0001 C CNN
	1    750  5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  5750 1100 5750
Wire Wire Line
	1100 5750 1100 5400
Wire Wire Line
	1450 5400 1450 5500
Wire Wire Line
	950  5850 1100 5850
Wire Wire Line
	1100 5850 1100 6200
Wire Wire Line
	1450 6200 1450 6100
$Comp
L power:+12V #PWR01
U 1 1 6081339B
P 1100 5300
F 0 "#PWR01" H 1100 5150 50  0001 C CNN
F 1 "+12V" H 1115 5473 50  0000 C CNN
F 2 "" H 1100 5300 50  0001 C CNN
F 3 "" H 1100 5300 50  0001 C CNN
	1    1100 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 608141C4
P 1100 6300
F 0 "#PWR02" H 1100 6050 50  0001 C CNN
F 1 "GND" H 1105 6127 50  0000 C CNN
F 2 "" H 1100 6300 50  0001 C CNN
F 3 "" H 1100 6300 50  0001 C CNN
	1    1100 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 6300 1100 6200
Connection ~ 1100 6200
Wire Wire Line
	1100 5400 1100 5300
Connection ~ 1100 5400
$Comp
L power:+12V #PWR07
U 1 1 6081D770
P 6750 1350
F 0 "#PWR07" H 6750 1200 50  0001 C CNN
F 1 "+12V" H 6765 1523 50  0000 C CNN
F 2 "" H 6750 1350 50  0001 C CNN
F 3 "" H 6750 1350 50  0001 C CNN
	1    6750 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6750 1450 6750 1350
Connection ~ 6750 1450
Wire Wire Line
	1100 5400 1450 5400
Wire Wire Line
	1100 6200 1450 6200
$Comp
L Device:R_POT_TRIM RV5
U 1 1 611D9F28
P 5150 4800
F 0 "RV5" H 5080 4846 50  0000 R CNN
F 1 "20k" H 5080 4755 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 5150 4800 50  0001 C CNN
F 3 "~" H 5150 4800 50  0001 C CNN
	1    5150 4800
	1    0    0    -1  
$EndComp
$Comp
L Device:R_POT_TRIM RV6
U 1 1 611D9F46
P 5150 5550
F 0 "RV6" H 5080 5596 50  0000 R CNN
F 1 "20k" H 5080 5505 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_ACP_CA9-V10_Vertical" H 5150 5550 50  0001 C CNN
F 3 "~" H 5150 5550 50  0001 C CNN
	1    5150 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5950 4800 5300 4800
Wire Wire Line
	5300 5550 5950 5550
Wire Wire Line
	5450 5850 5450 5100
Wire Wire Line
	5450 5850 5600 5850
Wire Wire Line
	5600 5100 5450 5100
Connection ~ 5450 5100
Wire Wire Line
	5900 5100 6250 5100
Wire Wire Line
	6250 5100 6250 5000
Wire Wire Line
	5900 5850 6250 5850
Wire Wire Line
	6250 5850 6250 5750
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 611D9F57
P 7250 5100
F 0 "J7" H 7222 4982 50  0000 R CNN
F 1 "LAMP5" H 7222 5073 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 7250 5100 50  0001 C CNN
F 3 "~" H 7250 5100 50  0001 C CNN
	1    7250 5100
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x02_Male J8
U 1 1 611D9F5D
P 7250 5850
F 0 "J8" H 7222 5732 50  0000 R CNN
F 1 "LAMP6" H 7222 5823 50  0000 R CNN
F 2 "TerminalBlock_Phoenix:TerminalBlock_Phoenix_MKDS-1,5-2_1x02_P5.00mm_Horizontal" H 7250 5850 50  0001 C CNN
F 3 "~" H 7250 5850 50  0001 C CNN
	1    7250 5850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 5100 7050 5100
Connection ~ 6250 5100
Wire Wire Line
	6250 5850 7050 5850
Connection ~ 6250 5850
Wire Wire Line
	7050 5750 6900 5750
Wire Wire Line
	6900 5750 6900 5000
Wire Wire Line
	7050 5000 6900 5000
Connection ~ 6900 5000
Wire Wire Line
	6900 5000 6900 4250
Wire Wire Line
	6250 5350 6250 5250
Wire Wire Line
	6250 5250 6750 5250
Wire Wire Line
	6750 5250 6750 4500
Wire Wire Line
	6750 4500 6250 4500
Wire Wire Line
	6250 4500 6250 4600
Wire Wire Line
	6750 3750 6750 4500
Connection ~ 6750 4500
Wire Wire Line
	5150 5400 5150 4950
Wire Wire Line
	6900 5750 6900 6150
Wire Wire Line
	6900 6150 5450 6150
Wire Wire Line
	5450 6150 5450 5850
Connection ~ 6900 5750
Connection ~ 5450 5850
Connection ~ 5450 6150
Wire Wire Line
	5150 6000 5150 5700
Wire Wire Line
	5450 6150 5450 6600
Wire Wire Line
	5150 4200 5150 4650
Wire Wire Line
	5450 4350 5450 5100
Connection ~ 6750 3750
Wire Wire Line
	3300 3000 3300 5900
$Comp
L Device:R R6
U 1 1 611FC50B
P 5750 2850
F 0 "R6" V 5543 2850 50  0000 C CNN
F 1 "680" V 5634 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5680 2850 50  0001 C CNN
F 3 "~" H 5750 2850 50  0001 C CNN
	1    5750 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 611FC7B6
P 5750 3600
F 0 "R7" V 5543 3600 50  0000 C CNN
F 1 "680" V 5634 3600 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5680 3600 50  0001 C CNN
F 3 "~" H 5750 3600 50  0001 C CNN
	1    5750 3600
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 611FCA8D
P 5750 4350
F 0 "R8" V 5543 4350 50  0000 C CNN
F 1 "680" V 5634 4350 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5680 4350 50  0001 C CNN
F 3 "~" H 5750 4350 50  0001 C CNN
	1    5750 4350
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 611FCEE6
P 5750 5100
F 0 "R9" V 5543 5100 50  0000 C CNN
F 1 "680" V 5634 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5680 5100 50  0001 C CNN
F 3 "~" H 5750 5100 50  0001 C CNN
	1    5750 5100
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 611FD1AA
P 5750 5850
F 0 "R10" V 5543 5850 50  0000 C CNN
F 1 "680" V 5634 5850 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric" V 5680 5850 50  0001 C CNN
F 3 "~" H 5750 5850 50  0001 C CNN
	1    5750 5850
	0    1    1    0   
$EndComp
$Comp
L Transistor_BJT:2N3055 Q1
U 1 1 611FDBDE
P 6150 1800
F 0 "Q1" H 6340 1846 50  0000 L CNN
F 1 "2N2222" H 6340 1755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6350 1725 50  0001 L CIN
F 3 "" H 6150 1800 50  0001 L CNN
	1    6150 1800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3055 Q2
U 1 1 611FE9A0
P 6150 2550
F 0 "Q2" H 6340 2596 50  0000 L CNN
F 1 "2N2222" H 6340 2505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6350 2475 50  0001 L CIN
F 3 "" H 6150 2550 50  0001 L CNN
	1    6150 2550
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3055 Q3
U 1 1 611FEE70
P 6150 3300
F 0 "Q3" H 6340 3346 50  0000 L CNN
F 1 "2N2222" H 6340 3255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6350 3225 50  0001 L CIN
F 3 "" H 6150 3300 50  0001 L CNN
	1    6150 3300
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3055 Q4
U 1 1 611FF31A
P 6150 4050
F 0 "Q4" H 6340 4096 50  0000 L CNN
F 1 "2N2222" H 6340 4005 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6350 3975 50  0001 L CIN
F 3 "" H 6150 4050 50  0001 L CNN
	1    6150 4050
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3055 Q5
U 1 1 611FF727
P 6150 4800
F 0 "Q5" H 6340 4846 50  0000 L CNN
F 1 "2N2222" H 6340 4755 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6350 4725 50  0001 L CIN
F 3 "" H 6150 4800 50  0001 L CNN
	1    6150 4800
	1    0    0    -1  
$EndComp
$Comp
L Transistor_BJT:2N3055 Q6
U 1 1 611FFAB8
P 6150 5550
F 0 "Q6" H 6340 5596 50  0000 L CNN
F 1 "2N2222" H 6340 5505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6350 5475 50  0001 L CIN
F 3 "" H 6150 5550 50  0001 L CNN
	1    6150 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 6123AD9B
P 2000 5800
F 0 "C1" H 2115 5846 50  0000 L CNN
F 1 "100nF" H 2115 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric" H 2038 5650 50  0001 C CNN
F 3 "~" H 2000 5800 50  0001 C CNN
	1    2000 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5400 2000 5400
Wire Wire Line
	2000 5400 2000 5650
Connection ~ 1450 5400
Wire Wire Line
	1450 6200 2000 6200
Wire Wire Line
	2000 6200 2000 5950
Connection ~ 1450 6200
$Comp
L Mechanical:Fiducial FID1
U 1 1 6124D72B
P 5550 7550
F 0 "FID1" H 5635 7596 50  0000 L CNN
F 1 "Fiducial" H 5635 7505 50  0000 L CNN
F 2 "Fiducial:Fiducial_0.5mm_Mask1.5mm" H 5550 7550 50  0001 C CNN
F 3 "~" H 5550 7550 50  0001 C CNN
	1    5550 7550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID2
U 1 1 6124DC8B
P 6050 7550
F 0 "FID2" H 6135 7596 50  0000 L CNN
F 1 "Fiducial" H 6135 7505 50  0000 L CNN
F 2 "Fiducial:Fiducial_0.5mm_Mask1.5mm" H 6050 7550 50  0001 C CNN
F 3 "~" H 6050 7550 50  0001 C CNN
	1    6050 7550
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:Fiducial FID3
U 1 1 6124E0C8
P 6550 7550
F 0 "FID3" H 6635 7596 50  0000 L CNN
F 1 "Fiducial" H 6635 7505 50  0000 L CNN
F 2 "Fiducial:Fiducial_0.5mm_Mask1.5mm" H 6550 7550 50  0001 C CNN
F 3 "~" H 6550 7550 50  0001 C CNN
	1    6550 7550
	1    0    0    -1  
$EndComp
$EndSCHEMATC
