EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:gb-flashcart-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L SST39SF010 U1
U 1 1 58B2D61D
P 2300 3500
F 0 "U1" H 2400 4800 50  0000 C CNN
F 1 "SST39SF010A" H 2300 2300 50  0000 C CNN
F 2 "SMD_Packages:PLCC-32" H 2300 3800 50  0001 C CNN
F 3 "" H 2300 3800 50  0000 C CNN
	1    2300 3500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X32 P2
U 1 1 58B2D709
P 8400 3450
F 0 "P2" H 8400 5100 50  0000 C CNN
F 1 "GB_CART_CONNECTOR" V 8500 3450 50  0000 C CNN
F 2 "doragasu-footprints:GB_CART_FINGERS" H 8400 3450 50  0001 C CNN
F 3 "" H 8400 3450 50  0000 C CNN
	1    8400 3450
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR01
U 1 1 58B2D87E
P 8200 5000
F 0 "#PWR01" H 8200 4750 50  0001 C CNN
F 1 "GND" H 8200 4850 50  0000 C CNN
F 2 "" H 8200 5000 50  0000 C CNN
F 3 "" H 8200 5000 50  0000 C CNN
	1    8200 5000
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR02
U 1 1 58B2D8F7
P 8200 1900
F 0 "#PWR02" H 8200 1750 50  0001 C CNN
F 1 "VCC" H 8200 2050 50  0000 C CNN
F 2 "" H 8200 1900 50  0000 C CNN
F 3 "" H 8200 1900 50  0000 C CNN
	1    8200 1900
	1    0    0    -1  
$EndComp
Text GLabel 8200 2400 0    60   Input ~ 0
A0
Text GLabel 8200 2500 0    60   Input ~ 0
A1
Text GLabel 8200 2600 0    60   Input ~ 0
A2
Text GLabel 8200 2700 0    60   Input ~ 0
A3
Text GLabel 8200 2800 0    60   Input ~ 0
A4
Text GLabel 8200 2900 0    60   Input ~ 0
A5
Text GLabel 8200 3000 0    60   Input ~ 0
A6
Text GLabel 8200 3100 0    60   Input ~ 0
A7
Text GLabel 8200 3200 0    60   Input ~ 0
A8
Text GLabel 8200 3300 0    60   Input ~ 0
A9
Text GLabel 8200 3400 0    60   Input ~ 0
A10
Text GLabel 8200 3500 0    60   Input ~ 0
A11
Text GLabel 8200 3600 0    60   Input ~ 0
A12
Text GLabel 8200 3700 0    60   Input ~ 0
A13
Text GLabel 8200 3800 0    60   Input ~ 0
A14
Text GLabel 8200 3900 0    60   Input ~ 0
CE#
Text GLabel 1700 2300 0    60   Input ~ 0
A0
Text GLabel 1700 2400 0    60   Input ~ 0
A1
Text GLabel 1700 2500 0    60   Input ~ 0
A2
Text GLabel 1700 2600 0    60   Input ~ 0
A3
Text GLabel 1700 2700 0    60   Input ~ 0
A4
Text GLabel 1700 2800 0    60   Input ~ 0
A5
Text GLabel 1700 2900 0    60   Input ~ 0
A6
Text GLabel 1700 3000 0    60   Input ~ 0
A7
Text GLabel 1700 3100 0    60   Input ~ 0
A8
Text GLabel 1700 3200 0    60   Input ~ 0
A9
Text GLabel 1700 3300 0    60   Input ~ 0
A10
Text GLabel 1700 3400 0    60   Input ~ 0
A11
Text GLabel 1700 3500 0    60   Input ~ 0
A12
Text GLabel 1700 3600 0    60   Input ~ 0
A13
Text GLabel 1700 3700 0    60   Input ~ 0
A14
Text GLabel 1700 3800 0    60   Input ~ 0
A15
Text GLabel 8200 4000 0    60   Input ~ 0
D0
Text GLabel 8200 4100 0    60   Input ~ 0
D1
Text GLabel 8200 4200 0    60   Input ~ 0
D2
Text GLabel 8200 4300 0    60   Input ~ 0
D3
Text GLabel 8200 4400 0    60   Input ~ 0
D4
Text GLabel 8200 4500 0    60   Input ~ 0
D5
Text GLabel 8200 4600 0    60   Input ~ 0
D6
Text GLabel 8200 4700 0    60   Input ~ 0
D7
Text GLabel 2900 2300 2    60   Input ~ 0
D0
Text GLabel 2900 2400 2    60   Input ~ 0
D1
Text GLabel 2900 2500 2    60   Input ~ 0
D2
Text GLabel 2900 2600 2    60   Input ~ 0
D3
Text GLabel 2900 2700 2    60   Input ~ 0
D4
Text GLabel 2900 2800 2    60   Input ~ 0
D5
Text GLabel 2900 2900 2    60   Input ~ 0
D6
Text GLabel 2900 3000 2    60   Input ~ 0
D7
Text GLabel 8200 2200 0    60   Input ~ 0
OE#
Text GLabel 1700 4300 0    60   Input ~ 0
WE#
Text GLabel 1700 4600 0    60   Input ~ 0
OE#
Text GLabel 1700 4500 0    60   Input ~ 0
CE#
Text GLabel 3000 5800 2    60   Input ~ 0
A0
Text GLabel 3000 5900 2    60   Input ~ 0
A1
Text GLabel 3000 6000 2    60   Input ~ 0
A2
Text GLabel 3000 6100 2    60   Input ~ 0
A3
Text GLabel 3000 6200 2    60   Input ~ 0
A4
Text GLabel 3000 6300 2    60   Input ~ 0
A5
Text GLabel 3000 6400 2    60   Input ~ 0
A6
Text GLabel 3000 6500 2    60   Input ~ 0
A7
Text GLabel 6350 5750 2    60   Input ~ 0
A8
Text GLabel 6350 5850 2    60   Input ~ 0
A9
Text GLabel 6350 5950 2    60   Input ~ 0
A10
Text GLabel 6350 6050 2    60   Input ~ 0
A11
Text GLabel 6350 6150 2    60   Input ~ 0
A12
Text GLabel 6350 6250 2    60   Input ~ 0
A13
Text GLabel 6350 6350 2    60   Input ~ 0
A14
Text GLabel 6350 6450 2    60   Input ~ 0
A15
$Comp
L USB_OTG P3
U 1 1 58B2ECA8
P 8300 5700
F 0 "P3" H 8625 5575 50  0000 C CNN
F 1 "USB" H 8300 5900 50  0000 C CNN
F 2 "Connect:USB_Micro-B" V 8250 5600 50  0001 C CNN
F 3 "" V 8250 5600 50  0000 C CNN
	1    8300 5700
	0    1    1    0   
$EndComp
Text GLabel 4500 3300 0    60   Input ~ 0
USB_D+
Text GLabel 4500 3400 0    60   Input ~ 0
USB_D-
Text GLabel 7450 5750 0    60   Input ~ 0
USB_D+
Text GLabel 7450 5600 0    60   Input ~ 0
USB_D-
$Comp
L VCC #PWR03
U 1 1 58B2F151
P 5550 1600
F 0 "#PWR03" H 5550 1450 50  0001 C CNN
F 1 "VCC" H 5550 1750 50  0000 C CNN
F 2 "" H 5550 1600 50  0000 C CNN
F 3 "" H 5550 1600 50  0000 C CNN
	1    5550 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR04
U 1 1 58B2F178
P 5450 5200
F 0 "#PWR04" H 5450 4950 50  0001 C CNN
F 1 "GND" H 5450 5050 50  0000 C CNN
F 2 "" H 5450 5200 50  0000 C CNN
F 3 "" H 5450 5200 50  0000 C CNN
	1    5450 5200
	1    0    0    -1  
$EndComp
Text GLabel 6750 2150 2    60   Input ~ 0
OE#
Text GLabel 6750 2250 2    60   Input ~ 0
WE#
$Comp
L 74HC595 U4
U 1 1 58B318C1
P 2300 6250
F 0 "U4" H 2450 6850 50  0000 C CNN
F 1 "74HC595" H 2300 5650 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 2300 6250 50  0001 C CNN
F 3 "" H 2300 6250 50  0000 C CNN
	1    2300 6250
	1    0    0    -1  
$EndComp
Text GLabel 1600 5800 0    60   Input ~ 0
A_SER_0_7
Text GLabel 1600 6000 0    60   Input ~ 0
A_SRCLK
Text GLabel 1600 6300 0    60   Input ~ 0
A_RCLK
$Comp
L VCC #PWR05
U 1 1 58B31EEB
P 1050 6100
F 0 "#PWR05" H 1050 5950 50  0001 C CNN
F 1 "VCC" H 1050 6250 50  0000 C CNN
F 2 "" H 1050 6100 50  0000 C CNN
F 3 "" H 1050 6100 50  0000 C CNN
	1    1050 6100
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 58B3205D
P 4350 1800
F 0 "R1" V 4430 1800 50  0000 C CNN
F 1 "10K" V 4350 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4280 1800 50  0001 C CNN
F 3 "" H 4350 1800 50  0000 C CNN
	1    4350 1800
	-1   0    0    1   
$EndComp
$Comp
L VCC #PWR06
U 1 1 58B3213D
P 4350 1650
F 0 "#PWR06" H 4350 1500 50  0001 C CNN
F 1 "VCC" H 4350 1800 50  0000 C CNN
F 2 "" H 4350 1650 50  0000 C CNN
F 3 "" H 4350 1650 50  0000 C CNN
	1    4350 1650
	1    0    0    -1  
$EndComp
Text GLabel 6750 2850 2    60   Input ~ 0
A_SER_0_7
Text GLabel 6750 2350 2    60   Input ~ 0
A_SRCLK
Text GLabel 6750 2450 2    60   Input ~ 0
A_RCLK
$Comp
L 74HC595 U3
U 1 1 58C264EE
P 5650 6200
F 0 "U3" H 5800 6800 50  0000 C CNN
F 1 "74HC595" H 5650 5600 50  0000 C CNN
F 2 "Housings_SSOP:TSSOP-16_4.4x5mm_Pitch0.65mm" H 5650 6200 50  0001 C CNN
F 3 "" H 5650 6200 50  0000 C CNN
	1    5650 6200
	1    0    0    -1  
$EndComp
Text GLabel 6750 3150 2    60   Input ~ 0
D0
Text GLabel 6750 3250 2    60   Input ~ 0
D1
Text GLabel 6750 3350 2    60   Input ~ 0
D2
Text GLabel 6750 3450 2    60   Input ~ 0
D3
Text GLabel 6750 3550 2    60   Input ~ 0
D4
Text GLabel 6750 3650 2    60   Input ~ 0
D5
Text GLabel 6750 3750 2    60   Input ~ 0
D6
Text GLabel 6750 3850 2    60   Input ~ 0
D7
Text GLabel 4950 5750 0    60   Input ~ 0
A_SER_8_15
Text GLabel 4950 5950 0    60   Input ~ 0
A_SRCLK
Text GLabel 4950 6250 0    60   Input ~ 0
A_RCLK
$Comp
L VCC #PWR07
U 1 1 58C26505
P 4400 6050
F 0 "#PWR07" H 4400 5900 50  0001 C CNN
F 1 "VCC" H 4400 6200 50  0000 C CNN
F 2 "" H 4400 6050 50  0000 C CNN
F 3 "" H 4400 6050 50  0000 C CNN
	1    4400 6050
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 58C26AD4
P 4250 2450
F 0 "Y1" H 4250 2600 50  0000 C CNN
F 1 "16Mhz" H 4250 2300 50  0000 C CNN
F 2 "Crystals:Crystal_SMD_0603-2pin_6.0x3.5mm_HandSoldering" H 4250 2450 50  0001 C CNN
F 3 "" H 4250 2450 50  0000 C CNN
	1    4250 2450
	0    1    1    0   
$EndComp
$Comp
L C C1
U 1 1 58C26B71
P 3900 2300
F 0 "C1" H 3925 2400 50  0000 L CNN
F 1 "22pF" H 3925 2200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3938 2150 50  0001 C CNN
F 3 "" H 3900 2300 50  0000 C CNN
	1    3900 2300
	0    1    1    0   
$EndComp
$Comp
L C C2
U 1 1 58C26BDE
P 3900 2600
F 0 "C2" H 3925 2700 50  0000 L CNN
F 1 "22pF" H 3925 2500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 3938 2450 50  0001 C CNN
F 3 "" H 3900 2600 50  0000 C CNN
	1    3900 2600
	0    1    1    0   
$EndComp
Text GLabel 6750 2050 2    60   Input ~ 0
CE#
$Comp
L GND #PWR08
U 1 1 58C56C2A
P 3650 2750
F 0 "#PWR08" H 3650 2500 50  0001 C CNN
F 1 "GND" H 3650 2600 50  0000 C CNN
F 2 "" H 3650 2750 50  0000 C CNN
F 3 "" H 3650 2750 50  0000 C CNN
	1    3650 2750
	1    0    0    -1  
$EndComp
Text GLabel 6750 2950 2    60   Input ~ 0
A_SER_8_15
$Comp
L GND #PWR09
U 1 1 58C57A35
P 7600 5900
F 0 "#PWR09" H 7600 5650 50  0001 C CNN
F 1 "GND" H 7600 5750 50  0000 C CNN
F 2 "" H 7600 5900 50  0000 C CNN
F 3 "" H 7600 5900 50  0000 C CNN
	1    7600 5900
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 58C57C59
P 7750 5600
F 0 "R2" V 7830 5600 50  0000 C CNN
F 1 "22" V 7750 5600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7680 5600 50  0001 C CNN
F 3 "" H 7750 5600 50  0000 C CNN
	1    7750 5600
	0    1    1    0   
$EndComp
$Comp
L R R3
U 1 1 58C57CE5
P 7750 5750
F 0 "R3" V 7830 5750 50  0000 C CNN
F 1 "22" V 7750 5750 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7680 5750 50  0001 C CNN
F 3 "" H 7750 5750 50  0000 C CNN
	1    7750 5750
	0    1    1    0   
$EndComp
$Comp
L GND #PWR010
U 1 1 58C58551
P 8400 6100
F 0 "#PWR010" H 8400 5850 50  0001 C CNN
F 1 "GND" H 8400 5950 50  0000 C CNN
F 2 "" H 8400 6100 50  0000 C CNN
F 3 "" H 8400 6100 50  0000 C CNN
	1    8400 6100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 58C58FF7
P 4300 3950
F 0 "#PWR011" H 4300 3700 50  0001 C CNN
F 1 "GND" H 4300 3800 50  0000 C CNN
F 2 "" H 4300 3950 50  0000 C CNN
F 3 "" H 4300 3950 50  0000 C CNN
	1    4300 3950
	1    0    0    -1  
$EndComp
Text GLabel 4200 1950 0    60   Input ~ 0
RST
$Comp
L ATMEGA32U4-A U2
U 1 1 58C59CBE
P 5650 3500
F 0 "U2" H 4700 5200 50  0000 C CNN
F 1 "ATMEGA32U4-A" H 6350 2000 50  0000 C CNN
F 2 "Housings_QFP:TQFP-44_10x10mm_Pitch0.8mm" H 5650 3500 50  0000 C CIN
F 3 "" H 6750 4600 50  0000 C CNN
	1    5650 3500
	1    0    0    -1  
$EndComp
Text GLabel 4950 6350 0    60   Input ~ 0
A_OE#
Text GLabel 1600 6400 0    60   Input ~ 0
A_OE#
Text GLabel 6750 2550 2    60   Input ~ 0
A_OE#
$Comp
L CONN_02X05 P1
U 1 1 58D2F3A3
P 2300 1500
F 0 "P1" H 2300 1800 50  0000 C CNN
F 1 "AVR_JTAG" H 2300 1200 50  0000 C CNN
F 2 "Socket_Strips:Socket_Strip_Straight_2x05_Pitch1.27mm_SMD" H 2300 300 50  0001 C CNN
F 3 "" H 2300 300 50  0000 C CNN
	1    2300 1500
	1    0    0    -1  
$EndComp
Text GLabel 2050 1300 0    60   Input ~ 0
TCK
Text GLabel 2050 1400 0    60   Input ~ 0
TDO
Text GLabel 2050 1500 0    60   Input ~ 0
TMS
Text GLabel 2050 1700 0    60   Input ~ 0
TDI
Text GLabel 2550 1500 2    60   Input ~ 0
RST
$Comp
L GND #PWR012
U 1 1 58D2F69D
P 2900 1300
F 0 "#PWR012" H 2900 1050 50  0001 C CNN
F 1 "GND" H 2900 1150 50  0000 C CNN
F 2 "" H 2900 1300 50  0000 C CNN
F 3 "" H 2900 1300 50  0000 C CNN
	1    2900 1300
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR013
U 1 1 58D2F98F
P 2700 1200
F 0 "#PWR013" H 2700 1050 50  0001 C CNN
F 1 "VCC" H 2700 1350 50  0000 C CNN
F 2 "" H 2700 1200 50  0000 C CNN
F 3 "" H 2700 1200 50  0000 C CNN
	1    2700 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR014
U 1 1 58D2FA30
P 2700 1700
F 0 "#PWR014" H 2700 1450 50  0001 C CNN
F 1 "GND" H 2700 1550 50  0000 C CNN
F 2 "" H 2700 1700 50  0000 C CNN
F 3 "" H 2700 1700 50  0000 C CNN
	1    2700 1700
	1    0    0    -1  
$EndComp
Text GLabel 6750 4550 2    60   Input ~ 0
TCK
Text GLabel 6750 4750 2    60   Input ~ 0
TDO
Text GLabel 6750 4650 2    60   Input ~ 0
TMS
Text GLabel 6750 4850 2    60   Input ~ 0
TDI
$Comp
L C C3
U 1 1 58D4EE96
P 4300 3800
F 0 "C3" H 4325 3900 50  0000 L CNN
F 1 "1uF" H 4325 3700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4338 3650 50  0001 C CNN
F 3 "" H 4300 3800 50  0000 C CNN
	1    4300 3800
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 58D6E02F
P 4300 4600
F 0 "C4" H 4325 4700 50  0000 L CNN
F 1 "100nF" H 4325 4500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4338 4450 50  0001 C CNN
F 3 "" H 4300 4600 50  0000 C CNN
	1    4300 4600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 58D6E07E
P 4300 4750
F 0 "#PWR015" H 4300 4500 50  0001 C CNN
F 1 "GND" H 4300 4600 50  0000 C CNN
F 2 "" H 4300 4750 50  0000 C CNN
F 3 "" H 4300 4750 50  0000 C CNN
	1    4300 4750
	1    0    0    -1  
$EndComp
Text GLabel 8200 2100 0    60   Input ~ 0
WE#
$Comp
L R R4
U 1 1 58D6E86B
P 7000 4050
F 0 "R4" V 7080 4050 50  0000 C CNN
F 1 "10K" V 7000 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 6930 4050 50  0001 C CNN
F 3 "" H 7000 4050 50  0000 C CNN
	1    7000 4050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR016
U 1 1 58D6E8BA
P 7250 4050
F 0 "#PWR016" H 7250 3800 50  0001 C CNN
F 1 "GND" H 7250 3900 50  0000 C CNN
F 2 "" H 7250 4050 50  0000 C CNN
F 3 "" H 7250 4050 50  0000 C CNN
	1    7250 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 4050 7250 4050
Wire Wire Line
	6750 4050 6850 4050
Wire Wire Line
	8000 5500 7750 5500
Wire Wire Line
	4300 4350 4300 4450
Wire Wire Line
	4500 4350 4300 4350
Wire Wire Line
	2550 1700 2700 1700
Wire Wire Line
	2700 1400 2700 1200
Wire Wire Line
	2550 1400 2700 1400
Wire Wire Line
	2550 1300 2900 1300
Connection ~ 4350 1950
Wire Wire Line
	4200 1950 4500 1950
Wire Wire Line
	4300 3550 4300 3650
Wire Wire Line
	4300 3550 4500 3550
Wire Wire Line
	1600 6100 1050 6100
Wire Wire Line
	4950 6050 4400 6050
Wire Wire Line
	7600 5600 7450 5600
Wire Wire Line
	7600 5750 7450 5750
Wire Wire Line
	7900 5700 7900 5750
Wire Wire Line
	8000 5700 7900 5700
Wire Wire Line
	8000 5600 7900 5600
Wire Wire Line
	8000 5900 7600 5900
Connection ~ 5800 1650
Wire Wire Line
	5900 1650 5900 1700
Wire Wire Line
	5800 1650 5800 1700
Connection ~ 5450 1650
Wire Wire Line
	5200 1700 5200 1650
Wire Wire Line
	5250 5100 5250 5150
Wire Wire Line
	3650 2600 3750 2600
Wire Wire Line
	3750 2300 3650 2300
Connection ~ 3650 2600
Wire Wire Line
	3650 2300 3650 2750
Connection ~ 4250 2600
Wire Wire Line
	4400 2600 4050 2600
Wire Wire Line
	4400 2550 4400 2600
Wire Wire Line
	4500 2550 4400 2550
Connection ~ 4250 2300
Wire Wire Line
	4400 2300 4050 2300
Wire Wire Line
	4400 2350 4400 2300
Wire Wire Line
	4500 2350 4400 2350
Wire Wire Line
	5550 1600 5550 1700
Wire Wire Line
	5450 1650 5450 1700
Connection ~ 5550 1650
Connection ~ 5700 5150
Wire Wire Line
	5800 5150 5800 5100
Connection ~ 5600 5150
Wire Wire Line
	5700 5150 5700 5100
Connection ~ 5500 5150
Wire Wire Line
	5600 5150 5600 5100
Wire Wire Line
	5250 5150 5800 5150
Wire Wire Line
	5500 5100 5500 5200
Wire Wire Line
	5200 1650 5900 1650
$Comp
L VCC #PWR017
U 1 1 58D6F298
P 7750 5500
F 0 "#PWR017" H 7750 5350 50  0001 C CNN
F 1 "VCC" H 7750 5650 50  0000 C CNN
F 2 "" H 7750 5500 50  0000 C CNN
F 3 "" H 7750 5500 50  0000 C CNN
	1    7750 5500
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR018
U 1 1 58D6F2FE
P 4300 3150
F 0 "#PWR018" H 4300 3000 50  0001 C CNN
F 1 "VCC" H 4300 3300 50  0000 C CNN
F 2 "" H 4300 3150 50  0000 C CNN
F 3 "" H 4300 3150 50  0000 C CNN
	1    4300 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3150 4300 3150
$EndSCHEMATC
