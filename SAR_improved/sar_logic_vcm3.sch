v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {sar_logic_vcm3: SAR logic for Vcm-based switching, built from minimum-size inverters and NOR2 gates (inv_min, nor2_min).
Ck (k = 2, 1, 0) marks the comparator decision for bit k (the comparator clock CLK pulses at the same time).
Bit latch (NOR SR):  Sk = Ck.COM,  Rk = Ck.COMB  ->  Dk = comparator decision taken during Ck (held afterwards).
Update flag (NOR SR): Uk sets Ek = 1, SMP clears it.  Switch controls:  UPk = NOR(EkB, Dk) = Ek.(not Dk) (bottom plate to VREF when Dk = 0),
DNk = NOR(EkB, DkB) = Ek.Dk (bottom plate to 0 when Dk = 1), and while Ek = 0 the plate stays at VCM.  D2 drives cap A (2C), D1 drives cap B (C).} -400 -1000 0 0 0.3 0.3 {}
T {bit 2  (drives cap A)} -100 -150 0 0 0.4 0.4 {}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/inv_min.sym} 200 0 0 0 {name=xi2}
N 50 -20 30 -20 {}
C {lab_pin.sym} 30 -20 0 0 {name=l1 sig_type=std_logic lab=C2}
N 290 -10 310 -10 {}
C {lab_pin.sym} 310 -10 0 1 {name=l2 sig_type=std_logic lab=C2B}
N 140 -100 140 -120 {}
C {lab_pin.sym} 140 -120 0 0 {name=l3 sig_type=std_logic lab=VCC}
N 170 50 170 70 {}
C {lab_pin.sym} 170 70 0 0 {name=l4 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 600 -100 0 0 {name=xs2}
N 520 -120 500 -120 {}
C {lab_pin.sym} 500 -120 0 0 {name=l5 sig_type=std_logic lab=C2B}
N 520 -80 500 -80 {}
C {lab_pin.sym} 500 -80 0 0 {name=l6 sig_type=std_logic lab=COMB}
N 680 -100 700 -100 {}
C {lab_pin.sym} 700 -100 0 1 {name=l7 sig_type=std_logic lab=S2}
N 600 -160 600 -180 {}
C {lab_pin.sym} 600 -180 0 0 {name=l8 sig_type=std_logic lab=VCC}
N 600 -40 600 -20 {}
C {lab_pin.sym} 600 -20 0 0 {name=l9 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 600 120 0 0 {name=xr2}
N 520 100 500 100 {}
C {lab_pin.sym} 500 100 0 0 {name=l10 sig_type=std_logic lab=C2B}
N 520 140 500 140 {}
C {lab_pin.sym} 500 140 0 0 {name=l11 sig_type=std_logic lab=COM}
N 680 120 700 120 {}
C {lab_pin.sym} 700 120 0 1 {name=l12 sig_type=std_logic lab=R2}
N 600 60 600 40 {}
C {lab_pin.sym} 600 40 0 0 {name=l13 sig_type=std_logic lab=VCC}
N 600 180 600 200 {}
C {lab_pin.sym} 600 200 0 0 {name=l14 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1000 -100 0 0 {name=xd2}
N 920 -120 900 -120 {}
C {lab_pin.sym} 900 -120 0 0 {name=l15 sig_type=std_logic lab=R2}
N 920 -80 900 -80 {}
C {lab_pin.sym} 900 -80 0 0 {name=l16 sig_type=std_logic lab=D2B}
N 1080 -100 1100 -100 {}
C {lab_pin.sym} 1100 -100 0 1 {name=l17 sig_type=std_logic lab=D2}
N 1000 -160 1000 -180 {}
C {lab_pin.sym} 1000 -180 0 0 {name=l18 sig_type=std_logic lab=VCC}
N 1000 -40 1000 -20 {}
C {lab_pin.sym} 1000 -20 0 0 {name=l19 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1000 120 0 0 {name=xdb2}
N 920 100 900 100 {}
C {lab_pin.sym} 900 100 0 0 {name=l20 sig_type=std_logic lab=S2}
N 920 140 900 140 {}
C {lab_pin.sym} 900 140 0 0 {name=l21 sig_type=std_logic lab=D2}
N 1080 120 1100 120 {}
C {lab_pin.sym} 1100 120 0 1 {name=l22 sig_type=std_logic lab=D2B}
N 1000 60 1000 40 {}
C {lab_pin.sym} 1000 40 0 0 {name=l23 sig_type=std_logic lab=VCC}
N 1000 180 1000 200 {}
C {lab_pin.sym} 1000 200 0 0 {name=l24 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1450 -100 0 0 {name=xe2}
N 1370 -120 1350 -120 {}
C {lab_pin.sym} 1350 -120 0 0 {name=l25 sig_type=std_logic lab=SMP}
N 1370 -80 1350 -80 {}
C {lab_pin.sym} 1350 -80 0 0 {name=l26 sig_type=std_logic lab=EAB}
N 1530 -100 1550 -100 {}
C {lab_pin.sym} 1550 -100 0 1 {name=l27 sig_type=std_logic lab=EA}
N 1450 -160 1450 -180 {}
C {lab_pin.sym} 1450 -180 0 0 {name=l28 sig_type=std_logic lab=VCC}
N 1450 -40 1450 -20 {}
C {lab_pin.sym} 1450 -20 0 0 {name=l29 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1450 120 0 0 {name=xeb2}
N 1370 100 1350 100 {}
C {lab_pin.sym} 1350 100 0 0 {name=l30 sig_type=std_logic lab=U2}
N 1370 140 1350 140 {}
C {lab_pin.sym} 1350 140 0 0 {name=l31 sig_type=std_logic lab=EA}
N 1530 120 1550 120 {}
C {lab_pin.sym} 1550 120 0 1 {name=l32 sig_type=std_logic lab=EAB}
N 1450 60 1450 40 {}
C {lab_pin.sym} 1450 40 0 0 {name=l33 sig_type=std_logic lab=VCC}
N 1450 180 1450 200 {}
C {lab_pin.sym} 1450 200 0 0 {name=l34 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1900 -100 0 0 {name=xu2}
N 1820 -120 1800 -120 {}
C {lab_pin.sym} 1800 -120 0 0 {name=l35 sig_type=std_logic lab=EAB}
N 1820 -80 1800 -80 {}
C {lab_pin.sym} 1800 -80 0 0 {name=l36 sig_type=std_logic lab=D2}
N 1980 -100 2000 -100 {}
C {lab_pin.sym} 2000 -100 0 1 {name=l37 sig_type=std_logic lab=UPA}
N 1900 -160 1900 -180 {}
C {lab_pin.sym} 1900 -180 0 0 {name=l38 sig_type=std_logic lab=VCC}
N 1900 -40 1900 -20 {}
C {lab_pin.sym} 1900 -20 0 0 {name=l39 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1900 120 0 0 {name=xn2}
N 1820 100 1800 100 {}
C {lab_pin.sym} 1800 100 0 0 {name=l40 sig_type=std_logic lab=EAB}
N 1820 140 1800 140 {}
C {lab_pin.sym} 1800 140 0 0 {name=l41 sig_type=std_logic lab=D2B}
N 1980 120 2000 120 {}
C {lab_pin.sym} 2000 120 0 1 {name=l42 sig_type=std_logic lab=DNA}
N 1900 60 1900 40 {}
C {lab_pin.sym} 1900 40 0 0 {name=l43 sig_type=std_logic lab=VCC}
N 1900 180 1900 200 {}
C {lab_pin.sym} 1900 200 0 0 {name=l44 sig_type=std_logic lab=VSS}
T {bit 1  (drives cap B)} -100 550 0 0 0.4 0.4 {}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/inv_min.sym} 200 700 0 0 {name=xi1}
N 50 680 30 680 {}
C {lab_pin.sym} 30 680 0 0 {name=l45 sig_type=std_logic lab=C1}
N 290 690 310 690 {}
C {lab_pin.sym} 310 690 0 1 {name=l46 sig_type=std_logic lab=C1B}
N 140 600 140 580 {}
C {lab_pin.sym} 140 580 0 0 {name=l47 sig_type=std_logic lab=VCC}
N 170 750 170 770 {}
C {lab_pin.sym} 170 770 0 0 {name=l48 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 600 600 0 0 {name=xs1}
N 520 580 500 580 {}
C {lab_pin.sym} 500 580 0 0 {name=l49 sig_type=std_logic lab=C1B}
N 520 620 500 620 {}
C {lab_pin.sym} 500 620 0 0 {name=l50 sig_type=std_logic lab=COMB}
N 680 600 700 600 {}
C {lab_pin.sym} 700 600 0 1 {name=l51 sig_type=std_logic lab=S1}
N 600 540 600 520 {}
C {lab_pin.sym} 600 520 0 0 {name=l52 sig_type=std_logic lab=VCC}
N 600 660 600 680 {}
C {lab_pin.sym} 600 680 0 0 {name=l53 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 600 820 0 0 {name=xr1}
N 520 800 500 800 {}
C {lab_pin.sym} 500 800 0 0 {name=l54 sig_type=std_logic lab=C1B}
N 520 840 500 840 {}
C {lab_pin.sym} 500 840 0 0 {name=l55 sig_type=std_logic lab=COM}
N 680 820 700 820 {}
C {lab_pin.sym} 700 820 0 1 {name=l56 sig_type=std_logic lab=R1}
N 600 760 600 740 {}
C {lab_pin.sym} 600 740 0 0 {name=l57 sig_type=std_logic lab=VCC}
N 600 880 600 900 {}
C {lab_pin.sym} 600 900 0 0 {name=l58 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1000 600 0 0 {name=xd1}
N 920 580 900 580 {}
C {lab_pin.sym} 900 580 0 0 {name=l59 sig_type=std_logic lab=R1}
N 920 620 900 620 {}
C {lab_pin.sym} 900 620 0 0 {name=l60 sig_type=std_logic lab=D1B}
N 1080 600 1100 600 {}
C {lab_pin.sym} 1100 600 0 1 {name=l61 sig_type=std_logic lab=D1}
N 1000 540 1000 520 {}
C {lab_pin.sym} 1000 520 0 0 {name=l62 sig_type=std_logic lab=VCC}
N 1000 660 1000 680 {}
C {lab_pin.sym} 1000 680 0 0 {name=l63 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1000 820 0 0 {name=xdb1}
N 920 800 900 800 {}
C {lab_pin.sym} 900 800 0 0 {name=l64 sig_type=std_logic lab=S1}
N 920 840 900 840 {}
C {lab_pin.sym} 900 840 0 0 {name=l65 sig_type=std_logic lab=D1}
N 1080 820 1100 820 {}
C {lab_pin.sym} 1100 820 0 1 {name=l66 sig_type=std_logic lab=D1B}
N 1000 760 1000 740 {}
C {lab_pin.sym} 1000 740 0 0 {name=l67 sig_type=std_logic lab=VCC}
N 1000 880 1000 900 {}
C {lab_pin.sym} 1000 900 0 0 {name=l68 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1450 600 0 0 {name=xe1}
N 1370 580 1350 580 {}
C {lab_pin.sym} 1350 580 0 0 {name=l69 sig_type=std_logic lab=SMP}
N 1370 620 1350 620 {}
C {lab_pin.sym} 1350 620 0 0 {name=l70 sig_type=std_logic lab=EBB}
N 1530 600 1550 600 {}
C {lab_pin.sym} 1550 600 0 1 {name=l71 sig_type=std_logic lab=EB}
N 1450 540 1450 520 {}
C {lab_pin.sym} 1450 520 0 0 {name=l72 sig_type=std_logic lab=VCC}
N 1450 660 1450 680 {}
C {lab_pin.sym} 1450 680 0 0 {name=l73 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1450 820 0 0 {name=xeb1}
N 1370 800 1350 800 {}
C {lab_pin.sym} 1350 800 0 0 {name=l74 sig_type=std_logic lab=U1}
N 1370 840 1350 840 {}
C {lab_pin.sym} 1350 840 0 0 {name=l75 sig_type=std_logic lab=EB}
N 1530 820 1550 820 {}
C {lab_pin.sym} 1550 820 0 1 {name=l76 sig_type=std_logic lab=EBB}
N 1450 760 1450 740 {}
C {lab_pin.sym} 1450 740 0 0 {name=l77 sig_type=std_logic lab=VCC}
N 1450 880 1450 900 {}
C {lab_pin.sym} 1450 900 0 0 {name=l78 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1900 600 0 0 {name=xu1}
N 1820 580 1800 580 {}
C {lab_pin.sym} 1800 580 0 0 {name=l79 sig_type=std_logic lab=EBB}
N 1820 620 1800 620 {}
C {lab_pin.sym} 1800 620 0 0 {name=l80 sig_type=std_logic lab=D1}
N 1980 600 2000 600 {}
C {lab_pin.sym} 2000 600 0 1 {name=l81 sig_type=std_logic lab=UPB}
N 1900 540 1900 520 {}
C {lab_pin.sym} 1900 520 0 0 {name=l82 sig_type=std_logic lab=VCC}
N 1900 660 1900 680 {}
C {lab_pin.sym} 1900 680 0 0 {name=l83 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1900 820 0 0 {name=xn1}
N 1820 800 1800 800 {}
C {lab_pin.sym} 1800 800 0 0 {name=l84 sig_type=std_logic lab=EBB}
N 1820 840 1800 840 {}
C {lab_pin.sym} 1800 840 0 0 {name=l85 sig_type=std_logic lab=D1B}
N 1980 820 2000 820 {}
C {lab_pin.sym} 2000 820 0 1 {name=l86 sig_type=std_logic lab=DNB}
N 1900 760 1900 740 {}
C {lab_pin.sym} 1900 740 0 0 {name=l87 sig_type=std_logic lab=VCC}
N 1900 880 1900 900 {}
C {lab_pin.sym} 1900 900 0 0 {name=l88 sig_type=std_logic lab=VSS}
T {bit 0  (no capacitor: last decision)} -100 1250 0 0 0.4 0.4 {}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/inv_min.sym} 200 1400 0 0 {name=xi0}
N 50 1380 30 1380 {}
C {lab_pin.sym} 30 1380 0 0 {name=l89 sig_type=std_logic lab=C0}
N 290 1390 310 1390 {}
C {lab_pin.sym} 310 1390 0 1 {name=l90 sig_type=std_logic lab=C0B}
N 140 1300 140 1280 {}
C {lab_pin.sym} 140 1280 0 0 {name=l91 sig_type=std_logic lab=VCC}
N 170 1450 170 1470 {}
C {lab_pin.sym} 170 1470 0 0 {name=l92 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 600 1300 0 0 {name=xs0}
N 520 1280 500 1280 {}
C {lab_pin.sym} 500 1280 0 0 {name=l93 sig_type=std_logic lab=C0B}
N 520 1320 500 1320 {}
C {lab_pin.sym} 500 1320 0 0 {name=l94 sig_type=std_logic lab=COMB}
N 680 1300 700 1300 {}
C {lab_pin.sym} 700 1300 0 1 {name=l95 sig_type=std_logic lab=S0}
N 600 1240 600 1220 {}
C {lab_pin.sym} 600 1220 0 0 {name=l96 sig_type=std_logic lab=VCC}
N 600 1360 600 1380 {}
C {lab_pin.sym} 600 1380 0 0 {name=l97 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 600 1520 0 0 {name=xr0}
N 520 1500 500 1500 {}
C {lab_pin.sym} 500 1500 0 0 {name=l98 sig_type=std_logic lab=C0B}
N 520 1540 500 1540 {}
C {lab_pin.sym} 500 1540 0 0 {name=l99 sig_type=std_logic lab=COM}
N 680 1520 700 1520 {}
C {lab_pin.sym} 700 1520 0 1 {name=l100 sig_type=std_logic lab=R0}
N 600 1460 600 1440 {}
C {lab_pin.sym} 600 1440 0 0 {name=l101 sig_type=std_logic lab=VCC}
N 600 1580 600 1600 {}
C {lab_pin.sym} 600 1600 0 0 {name=l102 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1000 1300 0 0 {name=xd0}
N 920 1280 900 1280 {}
C {lab_pin.sym} 900 1280 0 0 {name=l103 sig_type=std_logic lab=R0}
N 920 1320 900 1320 {}
C {lab_pin.sym} 900 1320 0 0 {name=l104 sig_type=std_logic lab=D0B}
N 1080 1300 1100 1300 {}
C {lab_pin.sym} 1100 1300 0 1 {name=l105 sig_type=std_logic lab=D0}
N 1000 1240 1000 1220 {}
C {lab_pin.sym} 1000 1220 0 0 {name=l106 sig_type=std_logic lab=VCC}
N 1000 1360 1000 1380 {}
C {lab_pin.sym} 1000 1380 0 0 {name=l107 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/nor2_min.sym} 1000 1520 0 0 {name=xdb0}
N 920 1500 900 1500 {}
C {lab_pin.sym} 900 1500 0 0 {name=l108 sig_type=std_logic lab=S0}
N 920 1540 900 1540 {}
C {lab_pin.sym} 900 1540 0 0 {name=l109 sig_type=std_logic lab=D0}
N 1080 1520 1100 1520 {}
C {lab_pin.sym} 1100 1520 0 1 {name=l110 sig_type=std_logic lab=D0B}
N 1000 1460 1000 1440 {}
C {lab_pin.sym} 1000 1440 0 0 {name=l111 sig_type=std_logic lab=VCC}
N 1000 1580 1000 1600 {}
C {lab_pin.sym} 1000 1600 0 0 {name=l112 sig_type=std_logic lab=VSS}
C {ipin.sym} -400 -700 0 0 {name=p1 lab=VCC}
C {ipin.sym} -400 -670 0 0 {name=p2 lab=VSS}
C {ipin.sym} -400 -640 0 0 {name=p3 lab=SMP}
C {ipin.sym} -400 -610 0 0 {name=p4 lab=C2}
C {ipin.sym} -400 -580 0 0 {name=p5 lab=C1}
C {ipin.sym} -400 -550 0 0 {name=p6 lab=C0}
C {ipin.sym} -400 -520 0 0 {name=p7 lab=U2}
C {ipin.sym} -400 -490 0 0 {name=p8 lab=U1}
C {ipin.sym} -400 -460 0 0 {name=p9 lab=COM}
C {ipin.sym} -400 -430 0 0 {name=p10 lab=COMB}
C {opin.sym} -400 -400 0 0 {name=p11 lab=D2}
C {opin.sym} -400 -370 0 0 {name=p12 lab=D1}
C {opin.sym} -400 -340 0 0 {name=p13 lab=D0}
C {opin.sym} -400 -310 0 0 {name=p14 lab=UPA}
C {opin.sym} -400 -280 0 0 {name=p15 lab=DNA}
C {opin.sym} -400 -250 0 0 {name=p16 lab=EA}
C {opin.sym} -400 -220 0 0 {name=p17 lab=EAB}
C {opin.sym} -400 -190 0 0 {name=p18 lab=UPB}
C {opin.sym} -400 -160 0 0 {name=p19 lab=DNB}
C {opin.sym} -400 -130 0 0 {name=p20 lab=EB}
C {opin.sym} -400 -100 0 0 {name=p21 lab=EBB}
