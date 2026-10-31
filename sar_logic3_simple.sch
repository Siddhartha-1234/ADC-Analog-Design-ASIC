v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {52 transistor
Each bit is a NOR SR latch:  Di = NOR(Ri, BiN),  BiN = NOR(TRYi, Di)
Reset:  Ri = NAND(RSTB, NAND(DECi, COMB)) = RST + DECi.COMB} 1190 -170 0 0 0.3 0.3 {}
T {bit 2} -100 -60 0 0 0.4 0.4 {}
T {bit 1} -100 390 0 0 0.4 0.4 {}
T {bit 0} -100 840 0 0 0.4 0.4 {}
N 80 -370 100 -370 {
lab=RST}
N 340 -360 360 -360 {
lab=RSTB}
N 190 -470 190 -450 {
lab=VCC}
N 220 -300 220 -280 {
lab=VSS}
N 630 -370 650 -370 {
lab=COM}
N 890 -360 910 -360 {
lab=COMB}
N 740 -470 740 -450 {
lab=VCC}
N 770 -300 770 -280 {
lab=VSS}
N 50 -20 70 -20 {
lab=DEC2}
N 50 20 70 20 {
lab=COMB}
N 150 -80 150 -60 {
lab=VCC}
N 150 60 150 80 {
lab=VSS}
N 450 -20 470 -20 {
lab=RSTB}
N 450 20 470 20 {
lab=#net1}
N 630 0 650 0 {
lab=R2}
N 550 -80 550 -60 {
lab=VCC}
N 550 60 550 80 {
lab=VSS}
N 900 -20 920 -20 {
lab=R2}
N 900 20 920 20 {
lab=B2N}
N 1080 0 1100 0 {
lab=D2}
N 1000 -80 1000 -60 {
lab=VCC}
N 1000 60 1000 80 {
lab=VSS}
N 900 180 920 180 {
lab=TRY2}
N 900 220 920 220 {
lab=D2}
N 1080 200 1100 200 {
lab=B2N}
N 1000 120 1000 140 {
lab=VCC}
N 1000 260 1000 280 {
lab=VSS}
N 50 430 70 430 {
lab=DEC1}
N 50 470 70 470 {
lab=COMB}
N 230 450 250 450 {
lab=K1}
N 150 370 150 390 {
lab=VCC}
N 150 510 150 530 {
lab=VSS}
N 450 430 470 430 {
lab=RSTB}
N 450 470 470 470 {
lab=K1}
N 630 450 650 450 {
lab=R1}
N 550 370 550 390 {
lab=VCC}
N 550 510 550 530 {
lab=VSS}
N 900 430 920 430 {
lab=R1}
N 900 470 920 470 {
lab=B1N}
N 1080 450 1100 450 {
lab=D1}
N 1000 370 1000 390 {
lab=VCC}
N 1000 510 1000 530 {
lab=VSS}
N 900 630 920 630 {
lab=TRY1}
N 900 670 920 670 {
lab=D1}
N 1080 650 1100 650 {
lab=B1N}
N 1000 570 1000 590 {
lab=VCC}
N 1000 710 1000 730 {
lab=VSS}
N 50 880 70 880 {
lab=DEC0}
N 50 920 70 920 {
lab=COMB}
N 230 900 250 900 {
lab=K0}
N 150 820 150 840 {
lab=VCC}
N 150 960 150 980 {
lab=VSS}
N 450 880 470 880 {
lab=RSTB}
N 450 920 470 920 {
lab=K0}
N 630 900 650 900 {
lab=R0}
N 550 820 550 840 {
lab=VCC}
N 550 960 550 980 {
lab=VSS}
N 900 880 920 880 {
lab=R0}
N 900 920 920 920 {
lab=B0N}
N 1080 900 1100 900 {
lab=D0}
N 1000 820 1000 840 {
lab=VCC}
N 1000 960 1000 980 {
lab=VSS}
N 900 1080 920 1080 {
lab=TRY0}
N 900 1120 920 1120 {
lab=D0}
N 1080 1100 1100 1100 {
lab=B0N}
N 1000 1020 1000 1040 {
lab=VCC}
N 1000 1160 1000 1180 {
lab=VSS}
N 360 0 360 20 {
lab=#net1}
N 360 20 450 20 {
lab=#net1}
N 230 -0 360 -0 {}
C {/home/ttuser/Documents/ADCAnalogDesign/inverter.sym} 250 -350 0 0 {name=x1}
C {lab_pin.sym} 80 -370 0 0 {name=l33 sig_type=std_logic lab=RST}
C {lab_pin.sym} 360 -360 0 1 {name=l34 sig_type=std_logic lab=RSTB}
C {lab_pin.sym} 190 -470 0 0 {name=l35 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 220 -280 0 0 {name=l36 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/inverter.sym} 800 -350 0 0 {name=x2}
C {lab_pin.sym} 630 -370 0 0 {name=l37 sig_type=std_logic lab=COM}
C {lab_pin.sym} 910 -360 0 1 {name=l38 sig_type=std_logic lab=COMB}
C {lab_pin.sym} 740 -470 0 0 {name=l39 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 770 -280 0 0 {name=l40 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/nand2.sym} 150 0 0 0 {name=x3}
C {lab_pin.sym} 50 -20 0 0 {name=l41 sig_type=std_logic lab=DEC2}
C {lab_pin.sym} 50 20 0 0 {name=l42 sig_type=std_logic lab=COMB}
C {lab_pin.sym} 360 0 0 1 {name=l43 sig_type=std_logic lab=K2}
C {lab_pin.sym} 150 -80 0 0 {name=l44 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 150 80 0 0 {name=l45 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/nand2.sym} 550 0 0 0 {name=x4}
C {lab_pin.sym} 450 -20 0 0 {name=l46 sig_type=std_logic lab=RSTB}
C {lab_pin.sym} 650 0 0 1 {name=l48 sig_type=std_logic lab=R2}
C {lab_pin.sym} 550 -80 0 0 {name=l49 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 550 80 0 0 {name=l50 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/nor2.sym} 1000 0 0 0 {name=x5}
C {lab_pin.sym} 900 -20 0 0 {name=l51 sig_type=std_logic lab=R2}
C {lab_pin.sym} 900 20 0 0 {name=l52 sig_type=std_logic lab=B2N}
C {lab_pin.sym} 1100 0 0 1 {name=l53 sig_type=std_logic lab=D2}
C {lab_pin.sym} 1000 -80 0 0 {name=l54 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1000 80 0 0 {name=l55 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/nor2.sym} 1000 200 0 0 {name=x6}
C {lab_pin.sym} 900 180 0 0 {name=l56 sig_type=std_logic lab=TRY2}
C {lab_pin.sym} 900 220 0 0 {name=l57 sig_type=std_logic lab=D2}
C {lab_pin.sym} 1100 200 0 1 {name=l58 sig_type=std_logic lab=B2N}
C {lab_pin.sym} 1000 120 0 0 {name=l59 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1000 280 0 0 {name=l60 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/nand2.sym} 150 450 0 0 {name=x7}
C {lab_pin.sym} 50 430 0 0 {name=l61 sig_type=std_logic lab=DEC1}
C {lab_pin.sym} 50 470 0 0 {name=l62 sig_type=std_logic lab=COMB}
C {lab_pin.sym} 250 450 0 1 {name=l63 sig_type=std_logic lab=K1}
C {lab_pin.sym} 150 370 0 0 {name=l64 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 150 530 0 0 {name=l65 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/nand2.sym} 550 450 0 0 {name=x8}
C {lab_pin.sym} 450 430 0 0 {name=l66 sig_type=std_logic lab=RSTB}
C {lab_pin.sym} 450 470 0 0 {name=l67 sig_type=std_logic lab=K1}
C {lab_pin.sym} 650 450 0 1 {name=l68 sig_type=std_logic lab=R1}
C {lab_pin.sym} 550 370 0 0 {name=l69 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 550 530 0 0 {name=l70 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/nor2.sym} 1000 450 0 0 {name=x9}
C {lab_pin.sym} 900 430 0 0 {name=l71 sig_type=std_logic lab=R1}
C {lab_pin.sym} 900 470 0 0 {name=l72 sig_type=std_logic lab=B1N}
C {lab_pin.sym} 1100 450 0 1 {name=l73 sig_type=std_logic lab=D1}
C {lab_pin.sym} 1000 370 0 0 {name=l74 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1000 530 0 0 {name=l75 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/nor2.sym} 1000 650 0 0 {name=x10}
C {lab_pin.sym} 900 630 0 0 {name=l76 sig_type=std_logic lab=TRY1}
C {lab_pin.sym} 900 670 0 0 {name=l77 sig_type=std_logic lab=D1}
C {lab_pin.sym} 1100 650 0 1 {name=l78 sig_type=std_logic lab=B1N}
C {lab_pin.sym} 1000 570 0 0 {name=l79 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1000 730 0 0 {name=l80 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/nand2.sym} 150 900 0 0 {name=x11}
C {lab_pin.sym} 50 880 0 0 {name=l81 sig_type=std_logic lab=DEC0}
C {lab_pin.sym} 50 920 0 0 {name=l82 sig_type=std_logic lab=COMB}
C {lab_pin.sym} 250 900 0 1 {name=l83 sig_type=std_logic lab=K0}
C {lab_pin.sym} 150 820 0 0 {name=l84 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 150 980 0 0 {name=l85 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/nand2.sym} 550 900 0 0 {name=x12}
C {lab_pin.sym} 450 880 0 0 {name=l86 sig_type=std_logic lab=RSTB}
C {lab_pin.sym} 450 920 0 0 {name=l87 sig_type=std_logic lab=K0}
C {lab_pin.sym} 650 900 0 1 {name=l88 sig_type=std_logic lab=R0}
C {lab_pin.sym} 550 820 0 0 {name=l89 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 550 980 0 0 {name=l90 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/nor2.sym} 1000 900 0 0 {name=x13}
C {lab_pin.sym} 900 880 0 0 {name=l91 sig_type=std_logic lab=R0}
C {lab_pin.sym} 900 920 0 0 {name=l92 sig_type=std_logic lab=B0N}
C {lab_pin.sym} 1100 900 0 1 {name=l93 sig_type=std_logic lab=D0}
C {lab_pin.sym} 1000 820 0 0 {name=l94 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1000 980 0 0 {name=l95 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/nor2.sym} 1000 1100 0 0 {name=x14}
C {lab_pin.sym} 900 1080 0 0 {name=l96 sig_type=std_logic lab=TRY0}
C {lab_pin.sym} 900 1120 0 0 {name=l97 sig_type=std_logic lab=D0}
C {lab_pin.sym} 1100 1100 0 1 {name=l98 sig_type=std_logic lab=B0N}
C {lab_pin.sym} 1000 1020 0 0 {name=l99 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1000 1180 0 0 {name=l100 sig_type=std_logic lab=VSS}
C {ipin.sym} -400 -500 0 0 {name=p1 lab=VCC}
C {ipin.sym} -400 -470 0 0 {name=p2 lab=VSS}
C {ipin.sym} -400 -440 0 0 {name=p3 lab=RST}
C {ipin.sym} -400 -410 0 0 {name=p4 lab=TRY2}
C {ipin.sym} -400 -380 0 0 {name=p5 lab=DEC2}
C {ipin.sym} -400 -350 0 0 {name=p6 lab=TRY1}
C {ipin.sym} -400 -320 0 0 {name=p7 lab=DEC1}
C {ipin.sym} -400 -290 0 0 {name=p8 lab=TRY0}
C {ipin.sym} -400 -260 0 0 {name=p9 lab=DEC0}
C {ipin.sym} -400 -230 0 0 {name=p10 lab=COM}
C {opin.sym} -400 -200 0 0 {name=p11 lab=D2}
C {opin.sym} -400 -170 0 0 {name=p12 lab=D1}
C {opin.sym} -400 -140 0 0 {name=p13 lab=D0}
C {opin.sym} -400 -110 0 0 {name=p14 lab=B2N}
C {opin.sym} -400 -80 0 0 {name=p15 lab=B1N}
C {opin.sym} -400 -50 0 0 {name=p16 lab=B0N}
