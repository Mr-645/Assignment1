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
P 4700 3100
F 0 "A1" H 4700 2011 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 4700 1920 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 4850 2150 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 4700 2100 50  0001 C CNN
	1    4700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 3550 9350 3550
Wire Wire Line
	4800 4150 4800 4100
$Comp
L Switch:SW_Push SW1
U 1 1 5CBCDB5E
P 3000 2700
F 0 "SW1" H 3000 2985 50  0000 C CNN
F 1 "SW_Push" H 3000 2894 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 3000 2900 50  0001 C CNN
F 3 "~" H 3000 2900 50  0001 C CNN
	1    3000 2700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW2
U 1 1 5CD4B57A
P 3500 2800
F 0 "SW2" H 3500 3085 50  0000 C CNN
F 1 "SW_Push" H 3500 2994 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 3500 3000 50  0001 C CNN
F 3 "~" H 3500 3000 50  0001 C CNN
	1    3500 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 2800 3700 2800
Wire Wire Line
	3300 2800 3300 4150
$Comp
L Display_Character:CC56-12EWA U1
U 1 1 5CD4E5BB
P 8300 1300
F 0 "U1" H 8300 1967 50  0000 C CNN
F 1 "CC56-12EWA" H 8300 1876 50  0000 C CNN
F 2 "Display_7Segment:CA56-12EWA" H 8300 1875 50  0001 C CNN
F 3 "http://www.kingbrightusa.com/images/catalog/SPEC/CA56-12EWA.pdf" H 7870 1330 50  0001 C CNN
	1    8300 1300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5CD628AB
P 5150 1000
F 0 "R1" V 5220 1046 50  0000 L CNN
F 1 "330 Ω" V 5220 719 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5080 1000 50  0001 C CNN
F 3 "~" H 5150 1000 50  0001 C CNN
	1    5150 1000
	0    -1   -1   0   
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLB3034PBF Q1
U 1 1 5CD66F0D
P 7000 3050
F 0 "Q1" H 7108 3103 60  0000 L CNN
F 1 "IRLB3034PBF" H 7108 2997 60  0000 L CNN
F 2 "Silicon-Standard:SOT23-3" H 7200 3250 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 7200 3350 60  0001 L CNN
F 4 "IRLB3034PBF-ND" H 7200 3450 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLB3034PBF" H 7200 3550 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7200 3650 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 7200 3750 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 7200 3850 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLB3034PBF/IRLB3034PBF-ND/2096638" H 7200 3950 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 40V 195A TO220AB" H 7200 4050 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 7200 4150 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7200 4250 60  0001 L CNN "Status"
	1    7000 3050
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLB3034PBF Q2
U 1 1 5CD68711
P 8150 2800
F 0 "Q2" H 8258 2853 60  0000 L CNN
F 1 "IRLB3034PBF" H 8258 2747 60  0000 L CNN
F 2 "Silicon-Standard:SOT23-3" H 8350 3000 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 8350 3100 60  0001 L CNN
F 4 "IRLB3034PBF-ND" H 8350 3200 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLB3034PBF" H 8350 3300 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 8350 3400 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 8350 3500 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 8350 3600 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLB3034PBF/IRLB3034PBF-ND/2096638" H 8350 3700 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 40V 195A TO220AB" H 8350 3800 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 8350 3900 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8350 4000 60  0001 L CNN "Status"
	1    8150 2800
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLB3034PBF Q3
U 1 1 5CD69530
P 9350 2550
F 0 "Q3" H 9458 2603 60  0000 L CNN
F 1 "IRLB3034PBF" H 9458 2497 60  0000 L CNN
F 2 "Silicon-Standard:SOT23-3" H 9550 2750 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 9550 2850 60  0001 L CNN
F 4 "IRLB3034PBF-ND" H 9550 2950 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLB3034PBF" H 9550 3050 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9550 3150 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 9550 3250 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 9550 3350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLB3034PBF/IRLB3034PBF-ND/2096638" H 9550 3450 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 40V 195A TO220AB" H 9550 3550 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 9550 3650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9550 3750 60  0001 L CNN "Status"
	1    9350 2550
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLB3034PBF Q4
U 1 1 5CD69EFB
P 10450 2300
F 0 "Q4" H 10558 2353 60  0000 L CNN
F 1 "IRLB3034PBF" H 10558 2247 60  0000 L CNN
F 2 "Aesthetics:BREADBOARD_SPACING" H 10650 2500 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 10650 2600 60  0001 L CNN
F 4 "IRLB3034PBF-ND" H 10650 2700 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLB3034PBF" H 10650 2800 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 10650 2900 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 10650 3000 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 10650 3100 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLB3034PBF/IRLB3034PBF-ND/2096638" H 10650 3200 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 40V 195A TO220AB" H 10650 3300 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 10650 3400 60  0001 L CNN "Manufacturer"
F 12 "Active" H 10650 3500 60  0001 L CNN "Status"
	1    10450 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:R RG1
U 1 1 5CD7262A
P 6650 3400
F 0 "RG1" H 6720 3446 50  0000 L CNN
F 1 "5.6k" H 6720 3355 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6580 3400 50  0001 C CNN
F 3 "~" H 6650 3400 50  0001 C CNN
	1    6650 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 3550 10150 3450
Wire Wire Line
	9050 3450 9050 3550
Connection ~ 9050 3550
Wire Wire Line
	9050 3550 8150 3550
Wire Wire Line
	7800 3450 7800 3550
Connection ~ 7800 3550
Wire Wire Line
	6650 3550 6200 3550
Wire Wire Line
	6650 3250 6650 3150
Wire Wire Line
	6650 3150 6700 3150
$Comp
L Device:R RG2
U 1 1 5CDAADED
P 7800 3300
F 0 "RG2" H 7870 3346 50  0000 L CNN
F 1 "5.6k" H 7870 3255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7730 3300 50  0001 C CNN
F 3 "~" H 7800 3300 50  0001 C CNN
	1    7800 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R RG3
U 1 1 5CDAB51A
P 9050 3300
F 0 "RG3" H 9120 3346 50  0000 L CNN
F 1 "5.6k" H 9120 3255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 8980 3300 50  0001 C CNN
F 3 "~" H 9050 3300 50  0001 C CNN
	1    9050 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:R RG4
U 1 1 5CDAB9C9
P 10150 3300
F 0 "RG4" H 10220 3346 50  0000 L CNN
F 1 "5.6k" H 10220 3255 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 10080 3300 50  0001 C CNN
F 3 "~" H 10150 3300 50  0001 C CNN
	1    10150 3300
	1    0    0    -1  
$EndComp
Connection ~ 4800 4150
Wire Wire Line
	8150 3000 8150 3550
Wire Wire Line
	8150 3550 7800 3550
Wire Wire Line
	9350 2750 9350 3550
Connection ~ 9350 3550
Wire Wire Line
	9350 3550 9050 3550
Wire Wire Line
	10450 3550 10150 3550
Connection ~ 10150 3550
$Comp
L SparkFun-Resistors:POTENTIOMETER-PTH-9MM-1_20W-20% VR1
U 1 1 5CDC185F
P 6200 3850
F 0 "VR1" H 6132 3945 45  0000 R CNN
F 1 "POTENTIOMETER-PTH-9MM-1_20W-20%" H 6132 3861 45  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3339H_Vertical" V 6050 3850 20  0001 C CNN
F 3 "" H 6200 3850 60  0001 C CNN
F 4 "RES-09177" H 6132 3766 60  0000 R CNN "Field4"
	1    6200 3850
	-1   0    0    -1  
$EndComp
Text GLabel 4150 3500 0    50   Output ~ 0
Digit_1_cathode
Text GLabel 6650 3150 0    50   Input ~ 0
Digit_1_cathode
Wire Wire Line
	10450 3550 10450 2500
Text GLabel 7800 2900 0    50   Input ~ 0
Digit_2_cathode
Text GLabel 4150 3600 0    50   Output ~ 0
Digit_3_cathode
Wire Wire Line
	7800 3150 7800 2900
Wire Wire Line
	7850 2900 7800 2900
Text GLabel 5250 3100 2    50   Output ~ 0
Digit_4_cathode
Text GLabel 9000 2650 0    50   Input ~ 0
Digit_3_cathode
Text GLabel 10100 2400 0    50   Input ~ 0
Digit_4_cathode
Connection ~ 8150 3550
Wire Wire Line
	10150 3150 10150 2400
Wire Wire Line
	10150 2400 10100 2400
Connection ~ 10150 2400
Wire Wire Line
	9050 3150 9050 2650
Wire Wire Line
	9000 2650 9050 2650
Connection ~ 9050 2650
Wire Wire Line
	7000 3250 7000 3550
Wire Wire Line
	7000 3550 7800 3550
Wire Wire Line
	6650 3550 7000 3550
Connection ~ 6650 3550
Connection ~ 7000 3550
Wire Wire Line
	10450 2100 10450 1700
Wire Wire Line
	10450 1700 9400 1700
Wire Wire Line
	9350 2350 9350 2200
Wire Wire Line
	9600 1600 9400 1600
Wire Wire Line
	8150 2050 9550 2050
Wire Wire Line
	9550 2050 9550 1500
Wire Wire Line
	9550 1500 9400 1500
Wire Wire Line
	8150 2050 8150 2600
Wire Wire Line
	7000 2850 7000 2000
Wire Wire Line
	7000 2000 9500 2000
Wire Wire Line
	9500 2000 9500 1400
Wire Wire Line
	9500 1400 9400 1400
Wire Wire Line
	5250 3100 5200 3100
Wire Wire Line
	3300 4150 4800 4150
Wire Wire Line
	4200 2700 3900 2700
Wire Wire Line
	3900 2700 3900 2400
Wire Wire Line
	3900 2400 3200 2400
Wire Wire Line
	3200 2400 3200 2700
Wire Wire Line
	2800 2700 2800 4150
Wire Wire Line
	2800 4150 3300 4150
Connection ~ 3300 4150
Text GLabel 4150 3700 0    50   Output ~ 0
Digit_2_cathode
Wire Wire Line
	5300 1000 7200 1000
Text GLabel 5250 3200 2    50   Output ~ 0
Segment_A_anode
Wire Wire Line
	5250 3200 5200 3200
Text GLabel 4950 1000 0    50   Input ~ 0
Segment_A_anode
Wire Wire Line
	4950 1000 5000 1000
$Comp
L Device:R R5
U 1 1 5CE4106A
P 6550 1150
F 0 "R5" V 6620 1196 50  0000 L CNN
F 1 "330 Ω" V 6620 869 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6480 1150 50  0001 C CNN
F 3 "~" H 6550 1150 50  0001 C CNN
	1    6550 1150
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5CE460F5
P 5150 1200
F 0 "R2" V 5220 1246 50  0000 L CNN
F 1 "330 Ω" V 5220 919 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5080 1200 50  0001 C CNN
F 3 "~" H 5150 1200 50  0001 C CNN
	1    5150 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 1200 7200 1200
Wire Wire Line
	6850 1100 6850 1150
Wire Wire Line
	6850 1150 6700 1150
$Comp
L Device:R R6
U 1 1 5CE4DF12
P 6550 1350
F 0 "R6" V 6620 1396 50  0000 L CNN
F 1 "330 Ω" V 6620 1069 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6480 1350 50  0001 C CNN
F 3 "~" H 6550 1350 50  0001 C CNN
	1    6550 1350
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6700 1350 6850 1350
Wire Wire Line
	6850 1350 6850 1300
Wire Wire Line
	6850 1300 7200 1300
$Comp
L Device:R R3
U 1 1 5CE4FC71
P 5150 1400
F 0 "R3" V 5220 1446 50  0000 L CNN
F 1 "330 Ω" V 5220 1119 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5080 1400 50  0001 C CNN
F 3 "~" H 5150 1400 50  0001 C CNN
	1    5150 1400
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R7
U 1 1 5CE51B5C
P 6550 1550
F 0 "R7" V 6620 1596 50  0000 L CNN
F 1 "330 Ω" V 6620 1269 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6480 1550 50  0001 C CNN
F 3 "~" H 6550 1550 50  0001 C CNN
	1    6550 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R4
U 1 1 5CE51FB1
P 5150 1600
F 0 "R4" V 5220 1646 50  0000 L CNN
F 1 "330 Ω" V 5220 1319 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5080 1600 50  0001 C CNN
F 3 "~" H 5150 1600 50  0001 C CNN
	1    5150 1600
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R8
U 1 1 5CE52563
P 6550 1750
F 0 "R8" V 6620 1796 50  0000 L CNN
F 1 "330 Ω" V 6620 1469 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6480 1750 50  0001 C CNN
F 3 "~" H 6550 1750 50  0001 C CNN
	1    6550 1750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7200 1700 6850 1700
Wire Wire Line
	6850 1700 6850 1750
Wire Wire Line
	6850 1750 6700 1750
Wire Wire Line
	7200 1500 6850 1500
Wire Wire Line
	6850 1500 6850 1550
Wire Wire Line
	6850 1550 6700 1550
Wire Wire Line
	7200 1400 5300 1400
Wire Wire Line
	7200 1600 5300 1600
Text GLabel 4950 1200 0    50   Input ~ 0
Segment_C_anode
Text GLabel 4950 1400 0    50   Input ~ 0
Segment_E_anode
Text GLabel 6350 1350 0    50   Input ~ 0
Segment_D_anode
Text GLabel 6350 1550 0    50   Input ~ 0
Segment_F_anode
Wire Wire Line
	6850 1100 7200 1100
Text GLabel 6350 1150 0    50   Input ~ 0
Segment_B_anode
Text GLabel 4950 1600 0    50   Input ~ 0
Segment_G_anode
Text GLabel 6350 1750 0    50   Input ~ 0
Segment_DP_anode
Wire Wire Line
	4950 1200 5000 1200
Wire Wire Line
	4950 1400 5000 1400
Wire Wire Line
	4950 1600 5000 1600
Wire Wire Line
	6350 1750 6400 1750
Wire Wire Line
	6350 1550 6400 1550
Wire Wire Line
	6350 1350 6400 1350
Wire Wire Line
	6350 1150 6400 1150
Text GLabel 5250 3300 2    50   Output ~ 0
Segment_B_anode
Wire Wire Line
	4150 3500 4200 3500
Wire Wire Line
	4150 3600 4200 3600
Wire Wire Line
	4150 3700 4200 3700
Wire Wire Line
	5250 3300 5200 3300
Text GLabel 4150 3400 0    50   Output ~ 0
Segment_DP_anode
Text GLabel 4150 3300 0    50   Output ~ 0
Segment_G_anode
Text GLabel 4150 3200 0    50   Output ~ 0
Segment_F_anode
Text GLabel 4150 3100 0    50   Output ~ 0
Segment_E_anode
Text GLabel 4150 3000 0    50   Output ~ 0
Segment_D_anode
Text GLabel 4150 2900 0    50   Output ~ 0
Segment_C_anode
Wire Wire Line
	4150 2900 4200 2900
Wire Wire Line
	4150 3000 4200 3000
Wire Wire Line
	4150 3100 4200 3100
Wire Wire Line
	4150 3200 4200 3200
Wire Wire Line
	4150 3300 4200 3300
Wire Wire Line
	4150 3400 4200 3400
Wire Wire Line
	4800 4150 5400 4150
Wire Wire Line
	9600 1600 9600 2200
Wire Wire Line
	9600 2200 9350 2200
$Comp
L SparkFun-PowerSymbols:5V #SUPPLY01
U 1 1 5CED1B28
P 4900 2050
F 0 "#SUPPLY01" H 4950 2050 45  0001 L BNN
F 1 "5V" H 4900 2220 45  0000 C CNN
F 2 "" H 4900 2350 60  0000 C CNN
F 3 "" H 4900 2050 60  0001 C CNN
	1    4900 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 2050 4900 2100
$Comp
L power:GND #PWR01
U 1 1 5CED5A91
P 5400 4150
F 0 "#PWR01" H 5400 3900 50  0001 C CNN
F 1 "GND" H 5405 3977 50  0000 C CNN
F 2 "" H 5400 4150 50  0001 C CNN
F 3 "" H 5400 4150 50  0001 C CNN
	1    5400 4150
	1    0    0    -1  
$EndComp
Connection ~ 5400 4150
Wire Wire Line
	5400 4150 6200 4150
$EndSCHEMATC
