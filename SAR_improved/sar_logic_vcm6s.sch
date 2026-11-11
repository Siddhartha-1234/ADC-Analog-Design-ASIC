v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {sar_logic_vcm6s: 6-bit SAR logic for Vcm-based switching (same as sar_logic_vcm6), minimum-size inverters and NOR2 gates (inv_min, nor2_min).
Ck (k = 5 ... 0) marks the comparator decision for bit k (the comparator clock CLK pulses at the same time).
Bit latch (NOR SR):  Sk = Ck.COM,  Rk = Ck.COMB  ->  Dk = comparator decision taken during Ck (held afterwards).
Update flag (NOR SR, bits 5 ... 1): Uk sets Ek = 1, SMP clears it.  Switch controls:  UPk = NOR(EkB, Dk) = Ek.(not Dk) (bottom plate to VREF when Dk = 0),
DNk = NOR(EkB, DkB) = Ek.Dk (bottom plate to 0 when Dk = 1); while Ek = 0 the plate stays at VCM.  Bit 0 is the last decision and needs no update flag.} -400 -1000 0 0 0.3 0.3 {}
T {bit 5  (drives the 16C capacitor)} -100 -150 0 0 0.4 0.4 {}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/inv_min.sym} 200 0 0 0 {name=xi5}
N 50 -20 30 -20 {}
C {lab_pin.sym} 30 -20 0 0 {name=l1 sig_type=std_logic lab=C5}
N 290 -10 310 -10 {}
C {lab_pin.sym} 310 -10 0 1 {name=l2 sig_type=std_logic lab=C5B}
N 140 -100 140 -120 {}
C {lab_pin.sym} 140 -120 0 0 {name=l3 sig_type=std_logic lab=VCC}
N 170 50 170 70 {}
C {lab_pin.sym} 170 70 0 0 {name=l4 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 600 -100 0 0 {name=xs5}
N 520 -120 500 -120 {}
C {lab_pin.sym} 500 -120 0 0 {name=l5 sig_type=std_logic lab=C5B}
N 520 -80 500 -80 {}
C {lab_pin.sym} 500 -80 0 0 {name=l6 sig_type=std_logic lab=COMB}
N 680 -100 700 -100 {}
C {lab_pin.sym} 700 -100 0 1 {name=l7 sig_type=std_logic lab=S5}
N 600 -160 600 -180 {}
C {lab_pin.sym} 600 -180 0 0 {name=l8 sig_type=std_logic lab=VCC}
N 600 -40 600 -20 {}
C {lab_pin.sym} 600 -20 0 0 {name=l9 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 600 120 0 0 {name=xr5}
N 520 100 500 100 {}
C {lab_pin.sym} 500 100 0 0 {name=l10 sig_type=std_logic lab=C5B}
N 520 140 500 140 {}
C {lab_pin.sym} 500 140 0 0 {name=l11 sig_type=std_logic lab=COM}
N 680 120 700 120 {}
C {lab_pin.sym} 700 120 0 1 {name=l12 sig_type=std_logic lab=R5}
N 600 60 600 40 {}
C {lab_pin.sym} 600 40 0 0 {name=l13 sig_type=std_logic lab=VCC}
N 600 180 600 200 {}
C {lab_pin.sym} 600 200 0 0 {name=l14 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1000 -100 0 0 {name=xd5}
N 920 -120 900 -120 {}
C {lab_pin.sym} 900 -120 0 0 {name=l15 sig_type=std_logic lab=R5}
N 920 -80 900 -80 {}
C {lab_pin.sym} 900 -80 0 0 {name=l16 sig_type=std_logic lab=D5B}
N 1080 -100 1100 -100 {}
C {lab_pin.sym} 1100 -100 0 1 {name=l17 sig_type=std_logic lab=D5}
N 1000 -160 1000 -180 {}
C {lab_pin.sym} 1000 -180 0 0 {name=l18 sig_type=std_logic lab=VCC}
N 1000 -40 1000 -20 {}
C {lab_pin.sym} 1000 -20 0 0 {name=l19 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1000 120 0 0 {name=xdb5}
N 920 100 900 100 {}
C {lab_pin.sym} 900 100 0 0 {name=l20 sig_type=std_logic lab=S5}
N 920 140 900 140 {}
C {lab_pin.sym} 900 140 0 0 {name=l21 sig_type=std_logic lab=D5}
N 1080 120 1100 120 {}
C {lab_pin.sym} 1100 120 0 1 {name=l22 sig_type=std_logic lab=D5B}
N 1000 60 1000 40 {}
C {lab_pin.sym} 1000 40 0 0 {name=l23 sig_type=std_logic lab=VCC}
N 1000 180 1000 200 {}
C {lab_pin.sym} 1000 200 0 0 {name=l24 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1450 -100 0 0 {name=xe5}
N 1370 -120 1350 -120 {}
C {lab_pin.sym} 1350 -120 0 0 {name=l25 sig_type=std_logic lab=SMP}
N 1370 -80 1350 -80 {}
C {lab_pin.sym} 1350 -80 0 0 {name=l26 sig_type=std_logic lab=E5B}
N 1530 -100 1550 -100 {}
C {lab_pin.sym} 1550 -100 0 1 {name=l27 sig_type=std_logic lab=E5}
N 1450 -160 1450 -180 {}
C {lab_pin.sym} 1450 -180 0 0 {name=l28 sig_type=std_logic lab=VCC}
N 1450 -40 1450 -20 {}
C {lab_pin.sym} 1450 -20 0 0 {name=l29 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1450 120 0 0 {name=xeb5}
N 1370 100 1350 100 {}
C {lab_pin.sym} 1350 100 0 0 {name=l30 sig_type=std_logic lab=U5}
N 1370 140 1350 140 {}
C {lab_pin.sym} 1350 140 0 0 {name=l31 sig_type=std_logic lab=E5}
N 1530 120 1550 120 {}
C {lab_pin.sym} 1550 120 0 1 {name=l32 sig_type=std_logic lab=E5B}
N 1450 60 1450 40 {}
C {lab_pin.sym} 1450 40 0 0 {name=l33 sig_type=std_logic lab=VCC}
N 1450 180 1450 200 {}
C {lab_pin.sym} 1450 200 0 0 {name=l34 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1900 -100 0 0 {name=xu5}
N 1820 -120 1800 -120 {}
C {lab_pin.sym} 1800 -120 0 0 {name=l35 sig_type=std_logic lab=E5B}
N 1820 -80 1800 -80 {}
C {lab_pin.sym} 1800 -80 0 0 {name=l36 sig_type=std_logic lab=D5}
N 1980 -100 2000 -100 {}
C {lab_pin.sym} 2000 -100 0 1 {name=l37 sig_type=std_logic lab=UP5}
N 1900 -160 1900 -180 {}
C {lab_pin.sym} 1900 -180 0 0 {name=l38 sig_type=std_logic lab=VCC}
N 1900 -40 1900 -20 {}
C {lab_pin.sym} 1900 -20 0 0 {name=l39 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1900 120 0 0 {name=xn5}
N 1820 100 1800 100 {}
C {lab_pin.sym} 1800 100 0 0 {name=l40 sig_type=std_logic lab=E5B}
N 1820 140 1800 140 {}
C {lab_pin.sym} 1800 140 0 0 {name=l41 sig_type=std_logic lab=D5B}
N 1980 120 2000 120 {}
C {lab_pin.sym} 2000 120 0 1 {name=l42 sig_type=std_logic lab=DN5}
N 1900 60 1900 40 {}
C {lab_pin.sym} 1900 40 0 0 {name=l43 sig_type=std_logic lab=VCC}
N 1900 180 1900 200 {}
C {lab_pin.sym} 1900 200 0 0 {name=l44 sig_type=std_logic lab=VSS}
T {bit 4  (drives the 8C capacitor)} -100 550 0 0 0.4 0.4 {}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/inv_min.sym} 200 700 0 0 {name=xi4}
N 50 680 30 680 {}
C {lab_pin.sym} 30 680 0 0 {name=l45 sig_type=std_logic lab=C4}
N 290 690 310 690 {}
C {lab_pin.sym} 310 690 0 1 {name=l46 sig_type=std_logic lab=C4B}
N 140 600 140 580 {}
C {lab_pin.sym} 140 580 0 0 {name=l47 sig_type=std_logic lab=VCC}
N 170 750 170 770 {}
C {lab_pin.sym} 170 770 0 0 {name=l48 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 600 600 0 0 {name=xs4}
N 520 580 500 580 {}
C {lab_pin.sym} 500 580 0 0 {name=l49 sig_type=std_logic lab=C4B}
N 520 620 500 620 {}
C {lab_pin.sym} 500 620 0 0 {name=l50 sig_type=std_logic lab=COMB}
N 680 600 700 600 {}
C {lab_pin.sym} 700 600 0 1 {name=l51 sig_type=std_logic lab=S4}
N 600 540 600 520 {}
C {lab_pin.sym} 600 520 0 0 {name=l52 sig_type=std_logic lab=VCC}
N 600 660 600 680 {}
C {lab_pin.sym} 600 680 0 0 {name=l53 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 600 820 0 0 {name=xr4}
N 520 800 500 800 {}
C {lab_pin.sym} 500 800 0 0 {name=l54 sig_type=std_logic lab=C4B}
N 520 840 500 840 {}
C {lab_pin.sym} 500 840 0 0 {name=l55 sig_type=std_logic lab=COM}
N 680 820 700 820 {}
C {lab_pin.sym} 700 820 0 1 {name=l56 sig_type=std_logic lab=R4}
N 600 760 600 740 {}
C {lab_pin.sym} 600 740 0 0 {name=l57 sig_type=std_logic lab=VCC}
N 600 880 600 900 {}
C {lab_pin.sym} 600 900 0 0 {name=l58 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1000 600 0 0 {name=xd4}
N 920 580 900 580 {}
C {lab_pin.sym} 900 580 0 0 {name=l59 sig_type=std_logic lab=R4}
N 920 620 900 620 {}
C {lab_pin.sym} 900 620 0 0 {name=l60 sig_type=std_logic lab=D4B}
N 1080 600 1100 600 {}
C {lab_pin.sym} 1100 600 0 1 {name=l61 sig_type=std_logic lab=D4}
N 1000 540 1000 520 {}
C {lab_pin.sym} 1000 520 0 0 {name=l62 sig_type=std_logic lab=VCC}
N 1000 660 1000 680 {}
C {lab_pin.sym} 1000 680 0 0 {name=l63 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1000 820 0 0 {name=xdb4}
N 920 800 900 800 {}
C {lab_pin.sym} 900 800 0 0 {name=l64 sig_type=std_logic lab=S4}
N 920 840 900 840 {}
C {lab_pin.sym} 900 840 0 0 {name=l65 sig_type=std_logic lab=D4}
N 1080 820 1100 820 {}
C {lab_pin.sym} 1100 820 0 1 {name=l66 sig_type=std_logic lab=D4B}
N 1000 760 1000 740 {}
C {lab_pin.sym} 1000 740 0 0 {name=l67 sig_type=std_logic lab=VCC}
N 1000 880 1000 900 {}
C {lab_pin.sym} 1000 900 0 0 {name=l68 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1450 600 0 0 {name=xe4}
N 1370 580 1350 580 {}
C {lab_pin.sym} 1350 580 0 0 {name=l69 sig_type=std_logic lab=SMP}
N 1370 620 1350 620 {}
C {lab_pin.sym} 1350 620 0 0 {name=l70 sig_type=std_logic lab=E4B}
N 1530 600 1550 600 {}
C {lab_pin.sym} 1550 600 0 1 {name=l71 sig_type=std_logic lab=E4}
N 1450 540 1450 520 {}
C {lab_pin.sym} 1450 520 0 0 {name=l72 sig_type=std_logic lab=VCC}
N 1450 660 1450 680 {}
C {lab_pin.sym} 1450 680 0 0 {name=l73 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1450 820 0 0 {name=xeb4}
N 1370 800 1350 800 {}
C {lab_pin.sym} 1350 800 0 0 {name=l74 sig_type=std_logic lab=U4}
N 1370 840 1350 840 {}
C {lab_pin.sym} 1350 840 0 0 {name=l75 sig_type=std_logic lab=E4}
N 1530 820 1550 820 {}
C {lab_pin.sym} 1550 820 0 1 {name=l76 sig_type=std_logic lab=E4B}
N 1450 760 1450 740 {}
C {lab_pin.sym} 1450 740 0 0 {name=l77 sig_type=std_logic lab=VCC}
N 1450 880 1450 900 {}
C {lab_pin.sym} 1450 900 0 0 {name=l78 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1900 600 0 0 {name=xu4}
N 1820 580 1800 580 {}
C {lab_pin.sym} 1800 580 0 0 {name=l79 sig_type=std_logic lab=E4B}
N 1820 620 1800 620 {}
C {lab_pin.sym} 1800 620 0 0 {name=l80 sig_type=std_logic lab=D4}
N 1980 600 2000 600 {}
C {lab_pin.sym} 2000 600 0 1 {name=l81 sig_type=std_logic lab=UP4}
N 1900 540 1900 520 {}
C {lab_pin.sym} 1900 520 0 0 {name=l82 sig_type=std_logic lab=VCC}
N 1900 660 1900 680 {}
C {lab_pin.sym} 1900 680 0 0 {name=l83 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1900 820 0 0 {name=xn4}
N 1820 800 1800 800 {}
C {lab_pin.sym} 1800 800 0 0 {name=l84 sig_type=std_logic lab=E4B}
N 1820 840 1800 840 {}
C {lab_pin.sym} 1800 840 0 0 {name=l85 sig_type=std_logic lab=D4B}
N 1980 820 2000 820 {}
C {lab_pin.sym} 2000 820 0 1 {name=l86 sig_type=std_logic lab=DN4}
N 1900 760 1900 740 {}
C {lab_pin.sym} 1900 740 0 0 {name=l87 sig_type=std_logic lab=VCC}
N 1900 880 1900 900 {}
C {lab_pin.sym} 1900 900 0 0 {name=l88 sig_type=std_logic lab=VSS}
T {bit 3  (drives the 4C capacitor)} -100 1250 0 0 0.4 0.4 {}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/inv_min.sym} 200 1400 0 0 {name=xi3}
N 50 1380 30 1380 {}
C {lab_pin.sym} 30 1380 0 0 {name=l89 sig_type=std_logic lab=C3}
N 290 1390 310 1390 {}
C {lab_pin.sym} 310 1390 0 1 {name=l90 sig_type=std_logic lab=C3B}
N 140 1300 140 1280 {}
C {lab_pin.sym} 140 1280 0 0 {name=l91 sig_type=std_logic lab=VCC}
N 170 1450 170 1470 {}
C {lab_pin.sym} 170 1470 0 0 {name=l92 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 600 1300 0 0 {name=xs3}
N 520 1280 500 1280 {}
C {lab_pin.sym} 500 1280 0 0 {name=l93 sig_type=std_logic lab=C3B}
N 520 1320 500 1320 {}
C {lab_pin.sym} 500 1320 0 0 {name=l94 sig_type=std_logic lab=COMB}
N 680 1300 700 1300 {}
C {lab_pin.sym} 700 1300 0 1 {name=l95 sig_type=std_logic lab=S3}
N 600 1240 600 1220 {}
C {lab_pin.sym} 600 1220 0 0 {name=l96 sig_type=std_logic lab=VCC}
N 600 1360 600 1380 {}
C {lab_pin.sym} 600 1380 0 0 {name=l97 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 600 1520 0 0 {name=xr3}
N 520 1500 500 1500 {}
C {lab_pin.sym} 500 1500 0 0 {name=l98 sig_type=std_logic lab=C3B}
N 520 1540 500 1540 {}
C {lab_pin.sym} 500 1540 0 0 {name=l99 sig_type=std_logic lab=COM}
N 680 1520 700 1520 {}
C {lab_pin.sym} 700 1520 0 1 {name=l100 sig_type=std_logic lab=R3}
N 600 1460 600 1440 {}
C {lab_pin.sym} 600 1440 0 0 {name=l101 sig_type=std_logic lab=VCC}
N 600 1580 600 1600 {}
C {lab_pin.sym} 600 1600 0 0 {name=l102 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1000 1300 0 0 {name=xd3}
N 920 1280 900 1280 {}
C {lab_pin.sym} 900 1280 0 0 {name=l103 sig_type=std_logic lab=R3}
N 920 1320 900 1320 {}
C {lab_pin.sym} 900 1320 0 0 {name=l104 sig_type=std_logic lab=D3B}
N 1080 1300 1100 1300 {}
C {lab_pin.sym} 1100 1300 0 1 {name=l105 sig_type=std_logic lab=D3}
N 1000 1240 1000 1220 {}
C {lab_pin.sym} 1000 1220 0 0 {name=l106 sig_type=std_logic lab=VCC}
N 1000 1360 1000 1380 {}
C {lab_pin.sym} 1000 1380 0 0 {name=l107 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1000 1520 0 0 {name=xdb3}
N 920 1500 900 1500 {}
C {lab_pin.sym} 900 1500 0 0 {name=l108 sig_type=std_logic lab=S3}
N 920 1540 900 1540 {}
C {lab_pin.sym} 900 1540 0 0 {name=l109 sig_type=std_logic lab=D3}
N 1080 1520 1100 1520 {}
C {lab_pin.sym} 1100 1520 0 1 {name=l110 sig_type=std_logic lab=D3B}
N 1000 1460 1000 1440 {}
C {lab_pin.sym} 1000 1440 0 0 {name=l111 sig_type=std_logic lab=VCC}
N 1000 1580 1000 1600 {}
C {lab_pin.sym} 1000 1600 0 0 {name=l112 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1450 1300 0 0 {name=xe3}
N 1370 1280 1350 1280 {}
C {lab_pin.sym} 1350 1280 0 0 {name=l113 sig_type=std_logic lab=SMP}
N 1370 1320 1350 1320 {}
C {lab_pin.sym} 1350 1320 0 0 {name=l114 sig_type=std_logic lab=E3B}
N 1530 1300 1550 1300 {}
C {lab_pin.sym} 1550 1300 0 1 {name=l115 sig_type=std_logic lab=E3}
N 1450 1240 1450 1220 {}
C {lab_pin.sym} 1450 1220 0 0 {name=l116 sig_type=std_logic lab=VCC}
N 1450 1360 1450 1380 {}
C {lab_pin.sym} 1450 1380 0 0 {name=l117 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1450 1520 0 0 {name=xeb3}
N 1370 1500 1350 1500 {}
C {lab_pin.sym} 1350 1500 0 0 {name=l118 sig_type=std_logic lab=U3}
N 1370 1540 1350 1540 {}
C {lab_pin.sym} 1350 1540 0 0 {name=l119 sig_type=std_logic lab=E3}
N 1530 1520 1550 1520 {}
C {lab_pin.sym} 1550 1520 0 1 {name=l120 sig_type=std_logic lab=E3B}
N 1450 1460 1450 1440 {}
C {lab_pin.sym} 1450 1440 0 0 {name=l121 sig_type=std_logic lab=VCC}
N 1450 1580 1450 1600 {}
C {lab_pin.sym} 1450 1600 0 0 {name=l122 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1900 1300 0 0 {name=xu3}
N 1820 1280 1800 1280 {}
C {lab_pin.sym} 1800 1280 0 0 {name=l123 sig_type=std_logic lab=E3B}
N 1820 1320 1800 1320 {}
C {lab_pin.sym} 1800 1320 0 0 {name=l124 sig_type=std_logic lab=D3}
N 1980 1300 2000 1300 {}
C {lab_pin.sym} 2000 1300 0 1 {name=l125 sig_type=std_logic lab=UP3}
N 1900 1240 1900 1220 {}
C {lab_pin.sym} 1900 1220 0 0 {name=l126 sig_type=std_logic lab=VCC}
N 1900 1360 1900 1380 {}
C {lab_pin.sym} 1900 1380 0 0 {name=l127 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1900 1520 0 0 {name=xn3}
N 1820 1500 1800 1500 {}
C {lab_pin.sym} 1800 1500 0 0 {name=l128 sig_type=std_logic lab=E3B}
N 1820 1540 1800 1540 {}
C {lab_pin.sym} 1800 1540 0 0 {name=l129 sig_type=std_logic lab=D3B}
N 1980 1520 2000 1520 {}
C {lab_pin.sym} 2000 1520 0 1 {name=l130 sig_type=std_logic lab=DN3}
N 1900 1460 1900 1440 {}
C {lab_pin.sym} 1900 1440 0 0 {name=l131 sig_type=std_logic lab=VCC}
N 1900 1580 1900 1600 {}
C {lab_pin.sym} 1900 1600 0 0 {name=l132 sig_type=std_logic lab=VSS}
T {bit 2  (drives the 2C capacitor)} -100 1950 0 0 0.4 0.4 {}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/inv_min.sym} 200 2100 0 0 {name=xi2}
N 50 2080 30 2080 {}
C {lab_pin.sym} 30 2080 0 0 {name=l133 sig_type=std_logic lab=C2}
N 290 2090 310 2090 {}
C {lab_pin.sym} 310 2090 0 1 {name=l134 sig_type=std_logic lab=C2B}
N 140 2000 140 1980 {}
C {lab_pin.sym} 140 1980 0 0 {name=l135 sig_type=std_logic lab=VCC}
N 170 2150 170 2170 {}
C {lab_pin.sym} 170 2170 0 0 {name=l136 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 600 2000 0 0 {name=xs2}
N 520 1980 500 1980 {}
C {lab_pin.sym} 500 1980 0 0 {name=l137 sig_type=std_logic lab=C2B}
N 520 2020 500 2020 {}
C {lab_pin.sym} 500 2020 0 0 {name=l138 sig_type=std_logic lab=COMB}
N 680 2000 700 2000 {}
C {lab_pin.sym} 700 2000 0 1 {name=l139 sig_type=std_logic lab=S2}
N 600 1940 600 1920 {}
C {lab_pin.sym} 600 1920 0 0 {name=l140 sig_type=std_logic lab=VCC}
N 600 2060 600 2080 {}
C {lab_pin.sym} 600 2080 0 0 {name=l141 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 600 2220 0 0 {name=xr2}
N 520 2200 500 2200 {}
C {lab_pin.sym} 500 2200 0 0 {name=l142 sig_type=std_logic lab=C2B}
N 520 2240 500 2240 {}
C {lab_pin.sym} 500 2240 0 0 {name=l143 sig_type=std_logic lab=COM}
N 680 2220 700 2220 {}
C {lab_pin.sym} 700 2220 0 1 {name=l144 sig_type=std_logic lab=R2}
N 600 2160 600 2140 {}
C {lab_pin.sym} 600 2140 0 0 {name=l145 sig_type=std_logic lab=VCC}
N 600 2280 600 2300 {}
C {lab_pin.sym} 600 2300 0 0 {name=l146 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1000 2000 0 0 {name=xd2}
N 920 1980 900 1980 {}
C {lab_pin.sym} 900 1980 0 0 {name=l147 sig_type=std_logic lab=R2}
N 920 2020 900 2020 {}
C {lab_pin.sym} 900 2020 0 0 {name=l148 sig_type=std_logic lab=D2B}
N 1080 2000 1100 2000 {}
C {lab_pin.sym} 1100 2000 0 1 {name=l149 sig_type=std_logic lab=D2}
N 1000 1940 1000 1920 {}
C {lab_pin.sym} 1000 1920 0 0 {name=l150 sig_type=std_logic lab=VCC}
N 1000 2060 1000 2080 {}
C {lab_pin.sym} 1000 2080 0 0 {name=l151 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1000 2220 0 0 {name=xdb2}
N 920 2200 900 2200 {}
C {lab_pin.sym} 900 2200 0 0 {name=l152 sig_type=std_logic lab=S2}
N 920 2240 900 2240 {}
C {lab_pin.sym} 900 2240 0 0 {name=l153 sig_type=std_logic lab=D2}
N 1080 2220 1100 2220 {}
C {lab_pin.sym} 1100 2220 0 1 {name=l154 sig_type=std_logic lab=D2B}
N 1000 2160 1000 2140 {}
C {lab_pin.sym} 1000 2140 0 0 {name=l155 sig_type=std_logic lab=VCC}
N 1000 2280 1000 2300 {}
C {lab_pin.sym} 1000 2300 0 0 {name=l156 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1450 2000 0 0 {name=xe2}
N 1370 1980 1350 1980 {}
C {lab_pin.sym} 1350 1980 0 0 {name=l157 sig_type=std_logic lab=SMP}
N 1370 2020 1350 2020 {}
C {lab_pin.sym} 1350 2020 0 0 {name=l158 sig_type=std_logic lab=E2B}
N 1530 2000 1550 2000 {}
C {lab_pin.sym} 1550 2000 0 1 {name=l159 sig_type=std_logic lab=E2}
N 1450 1940 1450 1920 {}
C {lab_pin.sym} 1450 1920 0 0 {name=l160 sig_type=std_logic lab=VCC}
N 1450 2060 1450 2080 {}
C {lab_pin.sym} 1450 2080 0 0 {name=l161 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1450 2220 0 0 {name=xeb2}
N 1370 2200 1350 2200 {}
C {lab_pin.sym} 1350 2200 0 0 {name=l162 sig_type=std_logic lab=U2}
N 1370 2240 1350 2240 {}
C {lab_pin.sym} 1350 2240 0 0 {name=l163 sig_type=std_logic lab=E2}
N 1530 2220 1550 2220 {}
C {lab_pin.sym} 1550 2220 0 1 {name=l164 sig_type=std_logic lab=E2B}
N 1450 2160 1450 2140 {}
C {lab_pin.sym} 1450 2140 0 0 {name=l165 sig_type=std_logic lab=VCC}
N 1450 2280 1450 2300 {}
C {lab_pin.sym} 1450 2300 0 0 {name=l166 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1900 2000 0 0 {name=xu2}
N 1820 1980 1800 1980 {}
C {lab_pin.sym} 1800 1980 0 0 {name=l167 sig_type=std_logic lab=E2B}
N 1820 2020 1800 2020 {}
C {lab_pin.sym} 1800 2020 0 0 {name=l168 sig_type=std_logic lab=D2}
N 1980 2000 2000 2000 {}
C {lab_pin.sym} 2000 2000 0 1 {name=l169 sig_type=std_logic lab=UP2}
N 1900 1940 1900 1920 {}
C {lab_pin.sym} 1900 1920 0 0 {name=l170 sig_type=std_logic lab=VCC}
N 1900 2060 1900 2080 {}
C {lab_pin.sym} 1900 2080 0 0 {name=l171 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1900 2220 0 0 {name=xn2}
N 1820 2200 1800 2200 {}
C {lab_pin.sym} 1800 2200 0 0 {name=l172 sig_type=std_logic lab=E2B}
N 1820 2240 1800 2240 {}
C {lab_pin.sym} 1800 2240 0 0 {name=l173 sig_type=std_logic lab=D2B}
N 1980 2220 2000 2220 {}
C {lab_pin.sym} 2000 2220 0 1 {name=l174 sig_type=std_logic lab=DN2}
N 1900 2160 1900 2140 {}
C {lab_pin.sym} 1900 2140 0 0 {name=l175 sig_type=std_logic lab=VCC}
N 1900 2280 1900 2300 {}
C {lab_pin.sym} 1900 2300 0 0 {name=l176 sig_type=std_logic lab=VSS}
T {bit 1  (drives the 1C capacitor)} -100 2650 0 0 0.4 0.4 {}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/inv_min.sym} 200 2800 0 0 {name=xi1}
N 50 2780 30 2780 {}
C {lab_pin.sym} 30 2780 0 0 {name=l177 sig_type=std_logic lab=C1}
N 290 2790 310 2790 {}
C {lab_pin.sym} 310 2790 0 1 {name=l178 sig_type=std_logic lab=C1B}
N 140 2700 140 2680 {}
C {lab_pin.sym} 140 2680 0 0 {name=l179 sig_type=std_logic lab=VCC}
N 170 2850 170 2870 {}
C {lab_pin.sym} 170 2870 0 0 {name=l180 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 600 2700 0 0 {name=xs1}
N 520 2680 500 2680 {}
C {lab_pin.sym} 500 2680 0 0 {name=l181 sig_type=std_logic lab=C1B}
N 520 2720 500 2720 {}
C {lab_pin.sym} 500 2720 0 0 {name=l182 sig_type=std_logic lab=COMB}
N 680 2700 700 2700 {}
C {lab_pin.sym} 700 2700 0 1 {name=l183 sig_type=std_logic lab=S1}
N 600 2640 600 2620 {}
C {lab_pin.sym} 600 2620 0 0 {name=l184 sig_type=std_logic lab=VCC}
N 600 2760 600 2780 {}
C {lab_pin.sym} 600 2780 0 0 {name=l185 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 600 2920 0 0 {name=xr1}
N 520 2900 500 2900 {}
C {lab_pin.sym} 500 2900 0 0 {name=l186 sig_type=std_logic lab=C1B}
N 520 2940 500 2940 {}
C {lab_pin.sym} 500 2940 0 0 {name=l187 sig_type=std_logic lab=COM}
N 680 2920 700 2920 {}
C {lab_pin.sym} 700 2920 0 1 {name=l188 sig_type=std_logic lab=R1}
N 600 2860 600 2840 {}
C {lab_pin.sym} 600 2840 0 0 {name=l189 sig_type=std_logic lab=VCC}
N 600 2980 600 3000 {}
C {lab_pin.sym} 600 3000 0 0 {name=l190 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1000 2700 0 0 {name=xd1}
N 920 2680 900 2680 {}
C {lab_pin.sym} 900 2680 0 0 {name=l191 sig_type=std_logic lab=R1}
N 920 2720 900 2720 {}
C {lab_pin.sym} 900 2720 0 0 {name=l192 sig_type=std_logic lab=D1B}
N 1080 2700 1100 2700 {}
C {lab_pin.sym} 1100 2700 0 1 {name=l193 sig_type=std_logic lab=D1}
N 1000 2640 1000 2620 {}
C {lab_pin.sym} 1000 2620 0 0 {name=l194 sig_type=std_logic lab=VCC}
N 1000 2760 1000 2780 {}
C {lab_pin.sym} 1000 2780 0 0 {name=l195 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1000 2920 0 0 {name=xdb1}
N 920 2900 900 2900 {}
C {lab_pin.sym} 900 2900 0 0 {name=l196 sig_type=std_logic lab=S1}
N 920 2940 900 2940 {}
C {lab_pin.sym} 900 2940 0 0 {name=l197 sig_type=std_logic lab=D1}
N 1080 2920 1100 2920 {}
C {lab_pin.sym} 1100 2920 0 1 {name=l198 sig_type=std_logic lab=D1B}
N 1000 2860 1000 2840 {}
C {lab_pin.sym} 1000 2840 0 0 {name=l199 sig_type=std_logic lab=VCC}
N 1000 2980 1000 3000 {}
C {lab_pin.sym} 1000 3000 0 0 {name=l200 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1450 2700 0 0 {name=xe1}
N 1370 2680 1350 2680 {}
C {lab_pin.sym} 1350 2680 0 0 {name=l201 sig_type=std_logic lab=SMP}
N 1370 2720 1350 2720 {}
C {lab_pin.sym} 1350 2720 0 0 {name=l202 sig_type=std_logic lab=E1B}
N 1530 2700 1550 2700 {}
C {lab_pin.sym} 1550 2700 0 1 {name=l203 sig_type=std_logic lab=E1}
N 1450 2640 1450 2620 {}
C {lab_pin.sym} 1450 2620 0 0 {name=l204 sig_type=std_logic lab=VCC}
N 1450 2760 1450 2780 {}
C {lab_pin.sym} 1450 2780 0 0 {name=l205 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1450 2920 0 0 {name=xeb1}
N 1370 2900 1350 2900 {}
C {lab_pin.sym} 1350 2900 0 0 {name=l206 sig_type=std_logic lab=U1}
N 1370 2940 1350 2940 {}
C {lab_pin.sym} 1350 2940 0 0 {name=l207 sig_type=std_logic lab=E1}
N 1530 2920 1550 2920 {}
C {lab_pin.sym} 1550 2920 0 1 {name=l208 sig_type=std_logic lab=E1B}
N 1450 2860 1450 2840 {}
C {lab_pin.sym} 1450 2840 0 0 {name=l209 sig_type=std_logic lab=VCC}
N 1450 2980 1450 3000 {}
C {lab_pin.sym} 1450 3000 0 0 {name=l210 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1900 2700 0 0 {name=xu1}
N 1820 2680 1800 2680 {}
C {lab_pin.sym} 1800 2680 0 0 {name=l211 sig_type=std_logic lab=E1B}
N 1820 2720 1800 2720 {}
C {lab_pin.sym} 1800 2720 0 0 {name=l212 sig_type=std_logic lab=D1}
N 1980 2700 2000 2700 {}
C {lab_pin.sym} 2000 2700 0 1 {name=l213 sig_type=std_logic lab=UP1}
N 1900 2640 1900 2620 {}
C {lab_pin.sym} 1900 2620 0 0 {name=l214 sig_type=std_logic lab=VCC}
N 1900 2760 1900 2780 {}
C {lab_pin.sym} 1900 2780 0 0 {name=l215 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1900 2920 0 0 {name=xn1}
N 1820 2900 1800 2900 {}
C {lab_pin.sym} 1800 2900 0 0 {name=l216 sig_type=std_logic lab=E1B}
N 1820 2940 1800 2940 {}
C {lab_pin.sym} 1800 2940 0 0 {name=l217 sig_type=std_logic lab=D1B}
N 1980 2920 2000 2920 {}
C {lab_pin.sym} 2000 2920 0 1 {name=l218 sig_type=std_logic lab=DN1}
N 1900 2860 1900 2840 {}
C {lab_pin.sym} 1900 2840 0 0 {name=l219 sig_type=std_logic lab=VCC}
N 1900 2980 1900 3000 {}
C {lab_pin.sym} 1900 3000 0 0 {name=l220 sig_type=std_logic lab=VSS}
T {bit 0  (no capacitor: last decision)} -100 3350 0 0 0.4 0.4 {}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/inv_min.sym} 200 3500 0 0 {name=xi0}
N 50 3480 30 3480 {}
C {lab_pin.sym} 30 3480 0 0 {name=l221 sig_type=std_logic lab=C0}
N 290 3490 310 3490 {}
C {lab_pin.sym} 310 3490 0 1 {name=l222 sig_type=std_logic lab=C0B}
N 140 3400 140 3380 {}
C {lab_pin.sym} 140 3380 0 0 {name=l223 sig_type=std_logic lab=VCC}
N 170 3550 170 3570 {}
C {lab_pin.sym} 170 3570 0 0 {name=l224 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 600 3400 0 0 {name=xs0}
N 520 3380 500 3380 {}
C {lab_pin.sym} 500 3380 0 0 {name=l225 sig_type=std_logic lab=C0B}
N 520 3420 500 3420 {}
C {lab_pin.sym} 500 3420 0 0 {name=l226 sig_type=std_logic lab=COMB}
N 680 3400 700 3400 {}
C {lab_pin.sym} 700 3400 0 1 {name=l227 sig_type=std_logic lab=S0}
N 600 3340 600 3320 {}
C {lab_pin.sym} 600 3320 0 0 {name=l228 sig_type=std_logic lab=VCC}
N 600 3460 600 3480 {}
C {lab_pin.sym} 600 3480 0 0 {name=l229 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 600 3620 0 0 {name=xr0}
N 520 3600 500 3600 {}
C {lab_pin.sym} 500 3600 0 0 {name=l230 sig_type=std_logic lab=C0B}
N 520 3640 500 3640 {}
C {lab_pin.sym} 500 3640 0 0 {name=l231 sig_type=std_logic lab=COM}
N 680 3620 700 3620 {}
C {lab_pin.sym} 700 3620 0 1 {name=l232 sig_type=std_logic lab=R0}
N 600 3560 600 3540 {}
C {lab_pin.sym} 600 3540 0 0 {name=l233 sig_type=std_logic lab=VCC}
N 600 3680 600 3700 {}
C {lab_pin.sym} 600 3700 0 0 {name=l234 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1000 3400 0 0 {name=xd0}
N 920 3380 900 3380 {}
C {lab_pin.sym} 900 3380 0 0 {name=l235 sig_type=std_logic lab=R0}
N 920 3420 900 3420 {}
C {lab_pin.sym} 900 3420 0 0 {name=l236 sig_type=std_logic lab=D0B}
N 1080 3400 1100 3400 {}
C {lab_pin.sym} 1100 3400 0 1 {name=l237 sig_type=std_logic lab=D0}
N 1000 3340 1000 3320 {}
C {lab_pin.sym} 1000 3320 0 0 {name=l238 sig_type=std_logic lab=VCC}
N 1000 3460 1000 3480 {}
C {lab_pin.sym} 1000 3480 0 0 {name=l239 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1000 3620 0 0 {name=xdb0}
N 920 3600 900 3600 {}
C {lab_pin.sym} 900 3600 0 0 {name=l240 sig_type=std_logic lab=S0}
N 920 3640 900 3640 {}
C {lab_pin.sym} 900 3640 0 0 {name=l241 sig_type=std_logic lab=D0}
N 1080 3620 1100 3620 {}
C {lab_pin.sym} 1100 3620 0 1 {name=l242 sig_type=std_logic lab=D0B}
N 1000 3560 1000 3540 {}
C {lab_pin.sym} 1000 3540 0 0 {name=l243 sig_type=std_logic lab=VCC}
N 1000 3680 1000 3700 {}
C {lab_pin.sym} 1000 3700 0 0 {name=l244 sig_type=std_logic lab=VSS}
C {ipin.sym} -400 -700 0 0 {name=p1 lab=VCC}
C {ipin.sym} -400 -670 0 0 {name=p2 lab=VSS}
C {ipin.sym} -400 -640 0 0 {name=p3 lab=SMP}
C {ipin.sym} -400 -610 0 0 {name=p4 lab=C5}
C {ipin.sym} -400 -580 0 0 {name=p5 lab=C4}
C {ipin.sym} -400 -550 0 0 {name=p6 lab=C3}
C {ipin.sym} -400 -520 0 0 {name=p7 lab=C2}
C {ipin.sym} -400 -490 0 0 {name=p8 lab=C1}
C {ipin.sym} -400 -460 0 0 {name=p9 lab=C0}
C {ipin.sym} -400 -430 0 0 {name=p10 lab=U5}
C {ipin.sym} -400 -400 0 0 {name=p11 lab=U4}
C {ipin.sym} -400 -370 0 0 {name=p12 lab=U3}
C {ipin.sym} -400 -340 0 0 {name=p13 lab=U2}
C {ipin.sym} -400 -310 0 0 {name=p14 lab=U1}
C {ipin.sym} -400 -280 0 0 {name=p15 lab=COM}
C {ipin.sym} -400 -250 0 0 {name=p16 lab=COMB}
C {opin.sym} -400 -220 0 0 {name=p17 lab=D5}
C {opin.sym} -400 -190 0 0 {name=p18 lab=D4}
C {opin.sym} -400 -160 0 0 {name=p19 lab=D3}
C {opin.sym} -400 -130 0 0 {name=p20 lab=D2}
C {opin.sym} -400 -100 0 0 {name=p21 lab=D1}
C {opin.sym} -400 -70 0 0 {name=p22 lab=D0}
C {opin.sym} -400 -40 0 0 {name=p23 lab=UP5}
C {opin.sym} -400 -10 0 0 {name=p24 lab=DN5}
C {opin.sym} -400 20 0 0 {name=p25 lab=E5}
C {opin.sym} -400 50 0 0 {name=p26 lab=E5B}
C {opin.sym} -400 80 0 0 {name=p27 lab=UP4}
C {opin.sym} -400 110 0 0 {name=p28 lab=DN4}
C {opin.sym} -400 140 0 0 {name=p29 lab=E4}
C {opin.sym} -400 170 0 0 {name=p30 lab=E4B}
C {opin.sym} -400 200 0 0 {name=p31 lab=UP3}
C {opin.sym} -400 230 0 0 {name=p32 lab=DN3}
C {opin.sym} -400 260 0 0 {name=p33 lab=E3}
C {opin.sym} -400 290 0 0 {name=p34 lab=E3B}
C {opin.sym} -400 320 0 0 {name=p35 lab=UP2}
C {opin.sym} -400 350 0 0 {name=p36 lab=DN2}
C {opin.sym} -400 380 0 0 {name=p37 lab=E2}
C {opin.sym} -400 410 0 0 {name=p38 lab=E2B}
C {opin.sym} -400 440 0 0 {name=p39 lab=UP1}
C {opin.sym} -400 470 0 0 {name=p40 lab=DN1}
C {opin.sym} -400 500 0 0 {name=p41 lab=E1}
C {opin.sym} -400 530 0 0 {name=p42 lab=E1B}
