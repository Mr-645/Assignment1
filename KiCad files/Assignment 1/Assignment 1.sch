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
P 2750 2550
F 0 "A1" H 2750 1461 50  0000 C CNN
F 1 "Arduino_Nano_v3.x" H 2750 1370 50  0000 C CNN
F 2 "Module:Arduino_Nano" H 2900 1600 50  0001 L CNN
F 3 "http://www.mouser.com/pdfdocs/Gravitech_Arduino_Nano3_0.pdf" H 2750 1550 50  0001 C CNN
	1    2750 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 3600 2850 3600
Wire Wire Line
	2850 3600 2850 3550
$Comp
L Switch:SW_Push SW2
U 1 1 5CBCDB5E
P 2050 2150
F 0 "SW2" H 2050 2435 50  0000 C CNN
F 1 "SW_Push" H 2050 2344 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 2050 2350 50  0001 C CNN
F 3 "~" H 2050 2350 50  0001 C CNN
	1    2050 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 2150 1700 2150
Wire Wire Line
	1700 2150 1700 3600
Connection ~ 2850 3600
$Comp
L Device:R R1
U 1 1 5CBCEEE9
P 3850 2700
F 0 "R1" H 3920 2746 50  0000 L CNN
F 1 "1k" H 3920 2655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 3780 2700 50  0001 C CNN
F 3 "~" H 3850 2700 50  0001 C CNN
	1    3850 2700
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW1
U 1 1 5CD4B57A
P 1400 2250
F 0 "SW1" H 1400 2535 50  0000 C CNN
F 1 "SW_Push" H 1400 2444 50  0000 C CNN
F 2 "Button_Switch_THT:SW_PUSH_6mm_H4.3mm" H 1400 2450 50  0001 C CNN
F 3 "~" H 1400 2450 50  0001 C CNN
	1    1400 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 2250 1600 2250
Wire Wire Line
	1200 2250 1200 3600
Wire Wire Line
	1200 3600 1700 3600
Connection ~ 1700 3600
Wire Wire Line
	1700 3600 2850 3600
$Comp
L Display_Character:CC56-12EWA U1
U 1 1 5CD4E5BB
P 5850 1800
F 0 "U1" H 5850 2467 50  0000 C CNN
F 1 "CC56-12EWA" H 5850 2376 50  0000 C CNN
F 2 "Display_7Segment:CA56-12EWA" H 5850 2375 50  0001 C CNN
F 3 "http://www.kingbrightusa.com/images/catalog/SPEC/CA56-12EWA.pdf" H 5420 1830 50  0001 C CNN
	1    5850 1800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD6186B
P 4250 2700
F 0 "R?" H 4320 2746 50  0000 L CNN
F 1 "1k" H 4320 2655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4180 2700 50  0001 C CNN
F 3 "~" H 4250 2700 50  0001 C CNN
	1    4250 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD61A8A
P 4700 2750
F 0 "R?" H 4770 2796 50  0000 L CNN
F 1 "1k" H 4770 2705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4630 2750 50  0001 C CNN
F 3 "~" H 4700 2750 50  0001 C CNN
	1    4700 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD621CB
P 5150 2750
F 0 "R?" H 5220 2796 50  0000 L CNN
F 1 "1k" H 5220 2705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5080 2750 50  0001 C CNN
F 3 "~" H 5150 2750 50  0001 C CNN
	1    5150 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD6232D
P 6000 2750
F 0 "R?" H 6070 2796 50  0000 L CNN
F 1 "1k" H 6070 2705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5930 2750 50  0001 C CNN
F 3 "~" H 6000 2750 50  0001 C CNN
	1    6000 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD6246F
P 6350 2750
F 0 "R?" H 6420 2796 50  0000 L CNN
F 1 "1k" H 6420 2705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6280 2750 50  0001 C CNN
F 3 "~" H 6350 2750 50  0001 C CNN
	1    6350 2750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD627B1
P 6650 2700
F 0 "R?" H 6720 2746 50  0000 L CNN
F 1 "1k" H 6720 2655 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6580 2700 50  0001 C CNN
F 3 "~" H 6650 2700 50  0001 C CNN
	1    6650 2700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD628AB
P 7000 2750
F 0 "R?" H 7070 2796 50  0000 L CNN
F 1 "1k" H 7070 2705 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6930 2750 50  0001 C CNN
F 3 "~" H 7000 2750 50  0001 C CNN
	1    7000 2750
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLB3034PBF Q?
U 1 1 5CD66F0D
P 4650 3350
F 0 "Q?" H 4758 3403 60  0000 L CNN
F 1 "IRLB3034PBF" H 4758 3297 60  0000 L CNN
F 2 "Silicon-Standard:SOT23-3" H 4850 3550 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 4850 3650 60  0001 L CNN
F 4 "IRLB3034PBF-ND" H 4850 3750 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLB3034PBF" H 4850 3850 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 4850 3950 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 4850 4050 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 4850 4150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLB3034PBF/IRLB3034PBF-ND/2096638" H 4850 4250 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 40V 195A TO220AB" H 4850 4350 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 4850 4450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 4850 4550 60  0001 L CNN "Status"
	1    4650 3350
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLB3034PBF Q?
U 1 1 5CD68711
P 5800 3350
F 0 "Q?" H 5908 3403 60  0000 L CNN
F 1 "IRLB3034PBF" H 5908 3297 60  0000 L CNN
F 2 "Silicon-Standard:SOT23-3" H 6000 3550 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 6000 3650 60  0001 L CNN
F 4 "IRLB3034PBF-ND" H 6000 3750 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLB3034PBF" H 6000 3850 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 6000 3950 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 6000 4050 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 6000 4150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLB3034PBF/IRLB3034PBF-ND/2096638" H 6000 4250 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 40V 195A TO220AB" H 6000 4350 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 6000 4450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 6000 4550 60  0001 L CNN "Status"
	1    5800 3350
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLB3034PBF Q?
U 1 1 5CD69530
P 6850 3350
F 0 "Q?" H 6958 3403 60  0000 L CNN
F 1 "IRLB3034PBF" H 6958 3297 60  0000 L CNN
F 2 "Silicon-Standard:SOT23-3" H 7050 3550 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 7050 3650 60  0001 L CNN
F 4 "IRLB3034PBF-ND" H 7050 3750 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLB3034PBF" H 7050 3850 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 7050 3950 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 7050 4050 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 7050 4150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLB3034PBF/IRLB3034PBF-ND/2096638" H 7050 4250 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 40V 195A TO220AB" H 7050 4350 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 7050 4450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7050 4550 60  0001 L CNN "Status"
	1    6850 3350
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-FETs-MOSFETs-Single:IRLB3034PBF Q?
U 1 1 5CD69EFB
P 7950 3350
F 0 "Q?" H 8058 3403 60  0000 L CNN
F 1 "IRLB3034PBF" H 8058 3297 60  0000 L CNN
F 2 "Silicon-Standard:SOT23-3" H 8150 3550 60  0001 L CNN
F 3 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 8150 3650 60  0001 L CNN
F 4 "IRLB3034PBF-ND" H 8150 3750 60  0001 L CNN "Digi-Key_PN"
F 5 "IRLB3034PBF" H 8150 3850 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 8150 3950 60  0001 L CNN "Category"
F 7 "Transistors - FETs, MOSFETs - Single" H 8150 4050 60  0001 L CNN "Family"
F 8 "https://www.infineon.com/dgdl/irlb3034pbf.pdf?fileId=5546d462533600a40153566027b22585" H 8150 4150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/infineon-technologies/IRLB3034PBF/IRLB3034PBF-ND/2096638" H 8150 4250 60  0001 L CNN "DK_Detail_Page"
F 10 "MOSFET N-CH 40V 195A TO220AB" H 8150 4350 60  0001 L CNN "Description"
F 11 "Infineon Technologies" H 8150 4450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8150 4550 60  0001 L CNN "Status"
	1    7950 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD7262A
P 4150 3950
F 0 "R?" H 4220 3996 50  0000 L CNN
F 1 "1k" H 4220 3905 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 4080 3950 50  0001 C CNN
F 3 "~" H 4150 3950 50  0001 C CNN
	1    4150 3950
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD7327A
P 5450 4000
F 0 "R?" H 5520 4046 50  0000 L CNN
F 1 "1k" H 5520 3955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 5380 4000 50  0001 C CNN
F 3 "~" H 5450 4000 50  0001 C CNN
	1    5450 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD735FE
P 6550 4000
F 0 "R?" H 6620 4046 50  0000 L CNN
F 1 "1k" H 6620 3955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 6480 4000 50  0001 C CNN
F 3 "~" H 6550 4000 50  0001 C CNN
	1    6550 4000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5CD73915
P 7550 4000
F 0 "R?" H 7620 4046 50  0000 L CNN
F 1 "1k" H 7620 3955 50  0000 L CNN
F 2 "Resistor_THT:R_Axial_DIN0204_L3.6mm_D1.6mm_P5.08mm_Horizontal" V 7480 4000 50  0001 C CNN
F 3 "~" H 7550 4000 50  0001 C CNN
	1    7550 4000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
