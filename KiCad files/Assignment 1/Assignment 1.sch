EESchema Schematic File Version 4
LIBS:Assignment 1-cache
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Assignment 0 schematic"
Date "2019-04-22"
Rev "01"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MCU_Module:Arduino_Nano_v3.x A1
U 1 1 5CBC55E9
P 3600 4500
F 0 "A1" H 3600 3411 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 3600 3320 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 3750 3550 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 3600 3500 50  0001 C CNN
	1    3600 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 4950 8250 4950
Wire Wire Line
	3700 5550 3700 5500
$Comp
L Switch:SW_Push SW1
U 1 1 5CBCDB5E
P 1900 4100
F 0 "SW1" H 1900 4385 50  0000 C CNN
F 1 "SW_Push" H 1900 4294 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 1900 4300 50  0001 C CNN
F 3 "~" H 1900 4300 50  0001 C CNN
	1    1900 4100
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5CD4B57A
P 2400 4200
F 0 "SW2" H 2400 4485 50  0000 C CNN
F 1 "SW_Push" H 2400 4394 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 2400 4400 50  0001 C CNN
F 3 "~" H 2400 4400 50  0001 C CNN
	1    2400 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4200 2600 4200
Wire Wire Line
	2200 4200 2200 5550
$Comp
L Display_Character:CC56-12EWA U1
U 1 1 5CD4E5BB
P 7200 2700
F 0 "U1" H 7200 3367 50  0000 C CNN
F 1 "CC56-12EWA" H 7200 3276 50  0000 C CNN
F 2 "Display_7Segment:CA56-12EWA" H 7200 3275 50  0001 C CNN
F 3 "http://www.kingbrightusa.com/images/catalog/SPEC/CA56-12EWA.pdf" H 6770 2730 50  0001 C CNN
	1    7200 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5CD628AB
P 4050 2400
F 0 "R1" V 4120 2446 50  0000 L CNN
F 1 "330 Ω" V 4120 2119 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3980 2400 50  0001 C CNN
F 3 "~" H 4050 2400 50  0001 C CNN
	1    4050 2400
	0    -1   -1   0   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLB3034PBF Q1
U 1 1 5CD66F0D
P 5900 4450
F 0 "Q1" H 6008 4503 60  0000 L CNN
F 1 "IRLB3034PBF" H 6008 4397 60  0000 L CNN
F 2 "Silicon-Standard:TO-220-ALT" H 6100 4650 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 6100 4750 60  0001 L CNN
F 4 "IRLB3034PBF-ND" H 6100 4850 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLB3034PBF" H 6100 4950 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6100 5050 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 6100 5150 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 6100 5250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLB3034PBF/IRLB3034PBF-ND/2096638" H 6100 5350 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 40V 195A TO220AB" H 6100 5450 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 6100 5550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6100 5650 60  0001 L CNN "Status"
	1    5900 4450
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLB3034PBF Q2
U 1 1 5CD68711
P 7050 4200
F 0 "Q2" H 7158 4253 60  0000 L CNN
F 1 "IRLB3034PBF" H 7158 4147 60  0000 L CNN
F 2 "Silicon-Standard:TO-220-ALT" H 7250 4400 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 7250 4500 60  0001 L CNN
F 4 "IRLB3034PBF-ND" H 7250 4600 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLB3034PBF" H 7250 4700 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7250 4800 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 7250 4900 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 7250 5000 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLB3034PBF/IRLB3034PBF-ND/2096638" H 7250 5100 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 40V 195A TO220AB" H 7250 5200 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 7250 5300 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7250 5400 60  0001 L CNN "Status"
	1    7050 4200
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLB3034PBF Q3
U 1 1 5CD69530
P 8250 3950
F 0 "Q3" H 8358 4003 60  0000 L CNN
F 1 "IRLB3034PBF" H 8358 3897 60  0000 L CNN
F 2 "Silicon-Standard:TO-220-ALT" H 8450 4150 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 8450 4250 60  0001 L CNN
F 4 "IRLB3034PBF-ND" H 8450 4350 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLB3034PBF" H 8450 4450 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 8450 4550 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 8450 4650 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 8450 4750 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLB3034PBF/IRLB3034PBF-ND/2096638" H 8450 4850 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 40V 195A TO220AB" H 8450 4950 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 8450 5050 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8450 5150 60  0001 L CNN "Status"
	1    8250 3950
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLB3034PBF Q4
U 1 1 5CD69EFB
P 9350 3700
F 0 "Q4" H 9458 3753 60  0000 L CNN
F 1 "IRLB3034PBF" H 9458 3647 60  0000 L CNN
F 2 "Silicon-Standard:TO-220-ALT" H 9550 3900 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 9550 4000 60  0001 L CNN
F 4 "IRLB3034PBF-ND" H 9550 4100 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLB3034PBF" H 9550 4200 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9550 4300 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 9550 4400 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 9550 4500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLB3034PBF/IRLB3034PBF-ND/2096638" H 9550 4600 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 40V 195A TO220AB" H 9550 4700 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 9550 4800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9550 4900 60  0001 L CNN "Status"
	1    9350 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R RG1
U 1 1 5CD7262A
P 5550 4800
F 0 "RG1" H 5620 4846 50  0000 L CNN
F 1 "5.6k" H 5620 4755 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5480 4800 50  0001 C CNN
F 3 "~" H 5550 4800 50  0001 C CNN
	1    5550 4800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9050 4950 9050 4850
Wire Wire Line
	7950 4850 7950 4950
Connection ~ 7950 4950
Wire Wire Line
	7950 4950 7050 4950
Wire Wire Line
	6700 4850 6700 4950
Connection ~ 6700 4950
Wire Wire Line
	5550 4950 5100 4950
Wire Wire Line
	5550 4650 5550 4550
Wire Wire Line
	5550 4550 5600 4550
$Comp
L Device:R RG2
U 1 1 5CDAADED
P 6700 4700
F 0 "RG2" H 6770 4746 50  0000 L CNN
F 1 "5.6k" H 6770 4655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6630 4700 50  0001 C CNN
F 3 "~" H 6700 4700 50  0001 C CNN
	1    6700 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R RG3
U 1 1 5CDAB51A
P 7950 4700
F 0 "RG3" H 8020 4746 50  0000 L CNN
F 1 "5.6k" H 8020 4655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7880 4700 50  0001 C CNN
F 3 "~" H 7950 4700 50  0001 C CNN
	1    7950 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R RG4
U 1 1 5CDAB9C9
P 9050 4700
F 0 "RG4" H 9120 4746 50  0000 L CNN
F 1 "5.6k" H 9120 4655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 8980 4700 50  0001 C CNN
F 3 "~" H 9050 4700 50  0001 C CNN
	1    9050 4700
	1    0    0    -1  
$EndComp
Connection ~ 3700 5550
Wire Wire Line
	7050 4400 7050 4950
Wire Wire Line
	7050 4950 6700 4950
Wire Wire Line
	8250 4150 8250 4950
Connection ~ 8250 4950
Wire Wire Line
	8250 4950 7950 4950
Wire Wire Line
	9350 4950 9050 4950
Connection ~ 9050 4950
$Comp
L SparkFun-Resistors:POTENTIOMETER-PTH-9MM-1_20W-20% VR1
U 1 1 5CDC185F
P 5100 5550
F 0 "VR1" H 5032 5645 45  0000 R CNN
F 1 "POTENTIOMETER-PTH-9MM-1_20W-20%" H 5032 5561 45  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3339P_Vertical_HandSoldering" V 4950 5550 20  0001 C CNN
F 3 "" H 5100 5550 60  0001 C CNN
F 4 "RES-09177" H 5032 5466 60  0000 R CNN "Field4"
	1    5100 5550
	-1   0    0    -1  
$EndComp
Text GLabel 3050 4900 0    50   Output ~ 0
Digit_1_cathode
Text GLabel 5550 4550 0    50   Input ~ 0
Digit_1_cathode
Wire Wire Line
	9350 4950 9350 3900
Text GLabel 6700 4300 0    50   Input ~ 0
Digit_2_cathode
Text GLabel 3050 5000 0    50   Output ~ 0
Digit_3_cathode
Wire Wire Line
	6700 4550 6700 4300
Wire Wire Line
	6750 4300 6700 4300
Text GLabel 4150 4500 2    50   Output ~ 0
Digit_4_cathode
Text GLabel 7900 4050 0    50   Input ~ 0
Digit_3_cathode
Text GLabel 9000 3800 0    50   Input ~ 0
Digit_4_cathode
Connection ~ 7050 4950
Wire Wire Line
	9050 4550 9050 3800
Wire Wire Line
	9050 3800 9000 3800
Connection ~ 9050 3800
Wire Wire Line
	7950 4550 7950 4050
Wire Wire Line
	7900 4050 7950 4050
Connection ~ 7950 4050
Wire Wire Line
	5900 4650 5900 4950
Wire Wire Line
	5900 4950 6700 4950
Wire Wire Line
	5550 4950 5900 4950
Connection ~ 5550 4950
Connection ~ 5900 4950
Wire Wire Line
	9350 3500 9350 3100
Wire Wire Line
	9350 3100 8300 3100
Wire Wire Line
	8250 3750 8250 3600
Wire Wire Line
	8500 3000 8300 3000
Wire Wire Line
	7050 3450 8450 3450
Wire Wire Line
	8450 3450 8450 2900
Wire Wire Line
	8450 2900 8300 2900
Wire Wire Line
	7050 3450 7050 4000
Wire Wire Line
	5900 4250 5900 3400
Wire Wire Line
	5900 3400 8400 3400
Wire Wire Line
	8400 3400 8400 2800
Wire Wire Line
	8400 2800 8300 2800
Wire Wire Line
	4150 4500 4100 4500
Wire Wire Line
	2200 5550 3700 5550
Wire Wire Line
	3100 4100 2800 4100
Wire Wire Line
	2800 4100 2800 3800
Wire Wire Line
	2800 3800 2100 3800
Wire Wire Line
	2100 3800 2100 4100
Wire Wire Line
	1700 4100 1700 5550
Wire Wire Line
	1700 5550 2200 5550
Connection ~ 2200 5550
Text GLabel 3050 5100 0    50   Output ~ 0
Digit_2_cathode
Wire Wire Line
	4200 2400 6100 2400
Text GLabel 4150 4600 2    50   Output ~ 0
Segment_A_anode
Wire Wire Line
	4150 4600 4100 4600
Text GLabel 3850 2400 0    50   Input ~ 0
Segment_A_anode
Wire Wire Line
	3850 2400 3900 2400
$Comp
L Device:R R5
U 1 1 5CE4106A
P 5450 2550
F 0 "R5" V 5520 2596 50  0000 L CNN
F 1 "330 Ω" V 5520 2269 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5380 2550 50  0001 C CNN
F 3 "~" H 5450 2550 50  0001 C CNN
	1    5450 2550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5CE460F5
P 4050 2600
F 0 "R2" V 4120 2646 50  0000 L CNN
F 1 "330 Ω" V 4120 2319 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3980 2600 50  0001 C CNN
F 3 "~" H 4050 2600 50  0001 C CNN
	1    4050 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 2600 6100 2600
Wire Wire Line
	5750 2500 5750 2550
Wire Wire Line
	5750 2550 5600 2550
$Comp
L Device:R R6
U 1 1 5CE4DF12
P 5450 2750
F 0 "R6" V 5520 2796 50  0000 L CNN
F 1 "330 Ω" V 5520 2469 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5380 2750 50  0001 C CNN
F 3 "~" H 5450 2750 50  0001 C CNN
	1    5450 2750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5600 2750 5750 2750
Wire Wire Line
	5750 2750 5750 2700
Wire Wire Line
	5750 2700 6100 2700
$Comp
L Device:R R3
U 1 1 5CE4FC71
P 4050 2800
F 0 "R3" V 4120 2846 50  0000 L CNN
F 1 "330 Ω" V 4120 2519 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3980 2800 50  0001 C CNN
F 3 "~" H 4050 2800 50  0001 C CNN
	1    4050 2800
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5CE51B5C
P 5450 2950
F 0 "R7" V 5520 2996 50  0000 L CNN
F 1 "330 Ω" V 5520 2669 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5380 2950 50  0001 C CNN
F 3 "~" H 5450 2950 50  0001 C CNN
	1    5450 2950
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5CE51FB1
P 4050 3000
F 0 "R4" V 4120 3046 50  0000 L CNN
F 1 "330 Ω" V 4120 2719 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3980 3000 50  0001 C CNN
F 3 "~" H 4050 3000 50  0001 C CNN
	1    4050 3000
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5CE52563
P 5450 3150
F 0 "R8" V 5520 3196 50  0000 L CNN
F 1 "330 Ω" V 5520 2869 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5380 3150 50  0001 C CNN
F 3 "~" H 5450 3150 50  0001 C CNN
	1    5450 3150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6100 3100 5750 3100
Wire Wire Line
	5750 3100 5750 3150
Wire Wire Line
	5750 3150 5600 3150
Wire Wire Line
	6100 2900 5750 2900
Wire Wire Line
	5750 2900 5750 2950
Wire Wire Line
	5750 2950 5600 2950
Wire Wire Line
	6100 2800 4200 2800
Wire Wire Line
	6100 3000 4200 3000
Text GLabel 3850 2600 0    50   Input ~ 0
Segment_C_anode
Text GLabel 3850 2800 0    50   Input ~ 0
Segment_E_anode
Text GLabel 5250 2750 0    50   Input ~ 0
Segment_D_anode
Text GLabel 5250 2950 0    50   Input ~ 0
Segment_F_anode
Wire Wire Line
	5750 2500 6100 2500
Text GLabel 5250 2550 0    50   Input ~ 0
Segment_B_anode
Text GLabel 3850 3000 0    50   Input ~ 0
Segment_G_anode
Text GLabel 5250 3150 0    50   Input ~ 0
Segment_DP_anode
Wire Wire Line
	3850 2600 3900 2600
Wire Wire Line
	3850 2800 3900 2800
Wire Wire Line
	3850 3000 3900 3000
Wire Wire Line
	5250 3150 5300 3150
Wire Wire Line
	5250 2950 5300 2950
Wire Wire Line
	5250 2750 5300 2750
Wire Wire Line
	5250 2550 5300 2550
Text GLabel 4150 4700 2    50   Output ~ 0
Segment_B_anode
Wire Wire Line
	3050 4900 3100 4900
Wire Wire Line
	3050 5000 3100 5000
Wire Wire Line
	3050 5100 3100 5100
Wire Wire Line
	4150 4700 4100 4700
Text GLabel 3050 4800 0    50   Output ~ 0
Segment_DP_anode
Text GLabel 3050 4700 0    50   Output ~ 0
Segment_G_anode
Text GLabel 3050 4600 0    50   Output ~ 0
Segment_F_anode
Text GLabel 3050 4500 0    50   Output ~ 0
Segment_E_anode
Text GLabel 3050 4400 0    50   Output ~ 0
Segment_D_anode
Text GLabel 3050 4300 0    50   Output ~ 0
Segment_C_anode
Wire Wire Line
	3050 4300 3100 4300
Wire Wire Line
	3050 4400 3100 4400
Wire Wire Line
	3050 4500 3100 4500
Wire Wire Line
	3050 4600 3100 4600
Wire Wire Line
	3050 4700 3100 4700
Wire Wire Line
	3050 4800 3100 4800
Wire Wire Line
	3700 5550 4300 5550
Wire Wire Line
	8500 3000 8500 3600
Wire Wire Line
	8500 3600 8250 3600
$Comp
L SparkFun-PowerSymbols:5V #SUPPLY01
U 1 1 5CED1B28
P 3800 3450
F 0 "#SUPPLY01" H 3850 3450 45  0001 L BNN
F 1 "5V" H 3800 3620 45  0000 C CNN
F 2 "" H 3800 3750 60  0000 C CNN
F 3 "" H 3800 3450 60  0001 C CNN
	1    3800 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3450 3800 3500
$Comp
L power:GND #PWR01
U 1 1 5CED5A91
P 4300 5550
F 0 "#PWR01" H 4300 5300 50  0001 C CNN
F 1 "GND" H 4305 5377 50  0000 C CNN
F 2 "" H 4300 5550 50  0001 C CNN
F 3 "" H 4300 5550 50  0001 C CNN
	1    4300 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 5250 5100 4950
Wire Wire Line
	4900 5550 4300 5550
Connection ~ 4300 5550
$EndSCHEMATC
