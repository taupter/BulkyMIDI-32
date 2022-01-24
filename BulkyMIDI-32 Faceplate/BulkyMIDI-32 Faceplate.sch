EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "BulkyMIDI-32 Faceplate"
Date ""
Rev "A"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L mounting:Mounting M1
U 1 1 5E3B603D
P 10775 550
F 0 "M1" H 10775 650 50  0001 C CNN
F 1 "Mounting" H 10775 475 50  0001 C CNN
F 2 "mounting:M3" H 10775 550 50  0001 C CNN
F 3 "" H 10775 550 50  0001 C CNN
	1    10775 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M2
U 1 1 61F083B7
P 10900 550
F 0 "M2" H 10900 650 50  0001 C CNN
F 1 "Mounting" H 10900 475 50  0001 C CNN
F 2 "mounting:M3" H 10900 550 50  0001 C CNN
F 3 "" H 10900 550 50  0001 C CNN
	1    10900 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M3
U 1 1 5E3B605A
P 11025 550
F 0 "M3" H 11025 650 50  0001 C CNN
F 1 "Mounting" H 11025 475 50  0001 C CNN
F 2 "mounting:M3" H 11025 550 50  0001 C CNN
F 3 "" H 11025 550 50  0001 C CNN
	1    11025 550 
	1    0    0    -1  
$EndComp
$Comp
L mounting:Mounting M4
U 1 1 61F083B9
P 11150 550
F 0 "M4" H 11150 650 50  0001 C CNN
F 1 "Mounting" H 11150 475 50  0001 C CNN
F 2 "mounting:M3" H 11150 550 50  0001 C CNN
F 3 "" H 11150 550 50  0001 C CNN
	1    11150 550 
	1    0    0    -1  
$EndComp
$Comp
L BulkyMIDI:Conn_Faceplate J4
U 1 1 5F3B6F1D
P 7025 3650
F 0 "J4" H 6950 4225 50  0000 L CNN
F 1 "Faceplate" H 6950 4150 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x10_P2.54mm_Vertical" H 7025 3650 50  0001 C CNN
F 3 "~" H 7025 3650 50  0001 C CNN
	1    7025 3650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6825 3250 6750 3250
$Comp
L power:+3.3V #PWR0102
U 1 1 5F44F08B
P 6750 3175
F 0 "#PWR0102" H 6750 3025 50  0001 C CNN
F 1 "+3.3V" H 6765 3348 50  0000 C CNN
F 2 "" H 6750 3175 50  0001 C CNN
F 3 "" H 6750 3175 50  0001 C CNN
	1    6750 3175
	-1   0    0    -1  
$EndComp
Text Notes 7000 6750 0    60   ~ 0
This module is not really necessary as the OLED can also be mounted on the main\nmodule, but I added it as a way of getting a more presentable solution.
Wire Wire Line
	6750 3175 6750 3250
NoConn ~ 6825 3350
NoConn ~ 6825 3450
NoConn ~ 6825 3750
NoConn ~ 6825 3950
NoConn ~ 6825 4150
$Comp
L power:GND #PWR01
U 1 1 5E3B6768
P 4500 3875
F 0 "#PWR01" H 4500 3625 50  0001 C CNN
F 1 "GND" H 4500 3725 50  0000 C CNN
F 2 "" H 4500 3875 50  0001 C CNN
F 3 "" H 4500 3875 50  0001 C CNN
	1    4500 3875
	-1   0    0    -1  
$EndComp
NoConn ~ 6650 100 
Text GLabel 5050 3800 2    50   Output ~ 0
SW_UP
Wire Wire Line
	4500 3800 4500 3400
Wire Wire Line
	4500 3800 4500 3875
Connection ~ 4500 3800
Wire Wire Line
	4500 3800 4575 3800
$Comp
L Switch:SW_Push SW4
U 1 1 5EE6A509
P 4775 3800
F 0 "SW4" H 4700 3975 50  0000 C CNN
F 1 "VOL_UP" H 4825 3975 50  0000 L CNN
F 2 "BulkyMIDI-32:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS_Underside" H 4775 4000 50  0001 C CNN
F 3 "~" H 4775 4000 50  0001 C CNN
	1    4775 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 3400 4575 3400
Wire Wire Line
	5050 3400 4975 3400
Text GLabel 5050 3400 2    50   Output ~ 0
SW_SYNTH
$Comp
L Switch:SW_Push SW1
U 1 1 5EE65CEA
P 4775 3400
F 0 "SW1" H 4700 3575 50  0000 C CNN
F 1 "SYNTH" H 4825 3575 50  0000 L CNN
F 2 "BulkyMIDI-32:SW_Tactile_SPST_Angled_PTS645Vx39-2LFS_Underside" H 4775 3600 50  0001 C CNN
F 3 "~" H 4775 3600 50  0001 C CNN
	1    4775 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 3800 4975 3800
Text GLabel 6750 4050 0    50   Input ~ 0
SW_UP
Text GLabel 6750 3850 0    50   Input ~ 0
SW_SYNTH
Wire Wire Line
	6825 4050 6750 4050
Wire Wire Line
	6750 3850 6825 3850
$EndSCHEMATC
