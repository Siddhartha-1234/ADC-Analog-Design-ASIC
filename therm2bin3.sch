v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {0 only for code 1} 490 12 0 0 0.22 0.22 {}
T {0 only for code 3} 490 162 0 0 0.22 0.22 {}
T {0 only for code 5} 490 312 0 0 0.22 0.22 {}
T {0 for codes 2, 3} 490 462 0 0 0.22 0.22 {}
T {D2 = T4} 930 12 0 0 0.22 0.22 {}
T {D1 = T6 + T2·~T4} 940 182 0 0 0.22 0.22 {}
T {D0 = T1·~T2 + T3·~T4 + T5·~T6 + T7} 950 392 0 0 0.22 0.22 {}
T {Level 2: NAND2 edge detectors} 330 -90 0 0 0.3 0.3 {}
T {Level 3: outputs} 800 -90 0 0 0.3 0.3 {}
T {Thermometer (T1..T7) to 3-bit binary encoder, gate level.  Same logic and pins as before, now built from the inv, nand2 and nand4 cells.
D2 = T4      D1 = T6 + T2·~T4      D0 = T1·~T2 + T3·~T4 + T5·~T6 + T7   (NAND-NAND = AND-OR by De Morgan)
5 inverters + 5 NAND2 + 1 NAND4 = 38 transistors, 3 gate delays on the longest path.} -400 -260 0 0 0.3 0.3 {}
N -350 430 -350 450 {
lab=VCC}
N -320 600 -320 620 {
lab=VSS}
N -470 530 -440 530 {
lab=T6}
N -200 540 -170 540 {
lab=T6B}
N 450 0 480 0 {
lab=N1}
N 450 150 480 150 {
lab=N2}
N 290 280 320 280 {
lab=T5}
N 290 320 320 320 {
lab=T6B}
N 450 300 480 300 {
lab=N3}
N 290 430 320 430 {
lab=T2}
N 290 470 320 470 {
lab=T4B}
N 450 450 480 450 {
lab=N4}
N 790 -120 790 -100 {
lab=VCC}
N 820 50 820 70 {
lab=VSS}
N 670 -20 700 -20 {
lab=T4B}
N 940 -10 970 -10 {
lab=D2}
N 900 170 930 170 {
lab=D1}
N 840 310 840 330 {
lab=VCC}
N 840 430 840 450 {
lab=VSS}
N 780 356 810 356 {
lab=N1}
N 780 372 810 372 {
lab=N2}
N 780 388 810 388 {
lab=N3}
N 780 404 810 404 {
lab=T7B}
N 910 380 940 380 {
lab=D0}
N -370 700 -370 720 {
lab=VCC}
N -340 870 -340 890 {
lab=VSS}
N -490 800 -460 800 {
lab=T7}
N -220 810 -190 810 {
lab=T7B}
N -760 420 -760 440 {
lab=VCC}
N -730 590 -730 610 {
lab=VSS}
N -880 520 -850 520 {
lab=T2}
N -610 530 -580 530 {
lab=T2B}
N -790 690 -790 710 {
lab=VCC}
N -760 860 -760 880 {
lab=VSS}
N -910 790 -880 790 {
lab=T4}
N -640 800 -610 800 {
lab=T4B}
C {/home/ttuser/Documents/ADCAnalogDesign/inverter.sym} -290 550 0 0 {name=x3}
C {lab_pin.sym} -350 430 0 1 {name=p9 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -320 620 0 1 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -470 530 0 0 {name=p11 sig_type=std_logic lab=T6}
C {lab_pin.sym} -170 540 0 1 {name=p12 sig_type=std_logic lab=T6B}
C {/home/ttuser/Documents/ADCAnalogDesign/nand2.sym} 400 0 0 0 {name=x5}
C {lab_pin.sym} 400 -60 0 1 {name=p17 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 400 60 0 1 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 320 -20 0 0 {name=p19 sig_type=std_logic lab=T1}
C {lab_pin.sym} 320 20 0 0 {name=p20 sig_type=std_logic lab=T2B}
C {lab_pin.sym} 480 0 0 1 {name=p21 sig_type=std_logic lab=N1}
C {/home/ttuser/Documents/ADCAnalogDesign/nand2.sym} 400 150 0 0 {name=x6}
C {lab_pin.sym} 400 90 0 1 {name=p22 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 400 210 0 1 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 320 130 0 0 {name=p24 sig_type=std_logic lab=T3}
C {lab_pin.sym} 320 170 0 0 {name=p25 sig_type=std_logic lab=T4B}
C {lab_pin.sym} 480 150 0 1 {name=p26 sig_type=std_logic lab=N2}
C {/home/ttuser/Documents/ADCAnalogDesign/nand2.sym} 400 300 0 0 {name=x7}
C {lab_pin.sym} 400 240 0 1 {name=p27 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 400 360 0 1 {name=p28 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 290 280 0 0 {name=p29 sig_type=std_logic lab=T5}
C {lab_pin.sym} 290 320 0 0 {name=p30 sig_type=std_logic lab=T6B}
C {lab_pin.sym} 480 300 0 1 {name=p31 sig_type=std_logic lab=N3}
C {/home/ttuser/Documents/ADCAnalogDesign/nand2.sym} 400 450 0 0 {name=x8}
C {lab_pin.sym} 400 390 0 1 {name=p32 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 400 510 0 1 {name=p33 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 290 430 0 0 {name=p34 sig_type=std_logic lab=T2}
C {lab_pin.sym} 290 470 0 0 {name=p35 sig_type=std_logic lab=T4B}
C {lab_pin.sym} 480 450 0 1 {name=p36 sig_type=std_logic lab=N4}
C {/home/ttuser/Documents/ADCAnalogDesign/inverter.sym} 850 0 0 0 {name=x9}
C {lab_pin.sym} 790 -120 0 1 {name=p37 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 820 70 0 1 {name=p38 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 670 -20 0 0 {name=p39 sig_type=std_logic lab=T4B}
C {lab_pin.sym} 970 -10 0 1 {name=p40 sig_type=std_logic lab=D2}
C {/home/ttuser/Documents/ADCAnalogDesign/nand2.sym} 850 170 0 0 {name=x10}
C {lab_pin.sym} 850 110 0 1 {name=p41 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 850 230 0 1 {name=p42 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 770 150 0 0 {name=p43 sig_type=std_logic lab=T6B}
C {lab_pin.sym} 770 190 0 0 {name=p44 sig_type=std_logic lab=N4}
C {lab_pin.sym} 930 170 0 1 {name=p45 sig_type=std_logic lab=D1}
C {/home/ttuser/Documents/ADCAnalogDesign/nand4.sym} 850 380 0 0 {name=x11}
C {lab_pin.sym} 840 310 0 1 {name=p46 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 840 450 0 1 {name=p47 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 780 356 0 0 {name=p48 sig_type=std_logic lab=N1}
C {lab_pin.sym} 780 372 0 0 {name=p49 sig_type=std_logic lab=N2}
C {lab_pin.sym} 780 388 0 0 {name=p50 sig_type=std_logic lab=N3}
C {lab_pin.sym} 780 404 0 0 {name=p51 sig_type=std_logic lab=T7B}
C {lab_pin.sym} 940 380 0 1 {name=p52 sig_type=std_logic lab=D0}
C {ipin.sym} -400 -60 0 0 {name=i1 lab=VCC}
C {ipin.sym} -400 -30 0 0 {name=i2 lab=VSS}
C {ipin.sym} -400 0 0 0 {name=i3 lab=T1}
C {ipin.sym} -400 30 0 0 {name=i4 lab=T2}
C {ipin.sym} -400 60 0 0 {name=i5 lab=T3}
C {ipin.sym} -400 90 0 0 {name=i6 lab=T4}
C {ipin.sym} -400 120 0 0 {name=i7 lab=T5}
C {ipin.sym} -400 150 0 0 {name=i8 lab=T6}
C {ipin.sym} -400 180 0 0 {name=i9 lab=T7}
C {opin.sym} -400 300 0 0 {name=o1 lab=D2}
C {opin.sym} -400 330 0 0 {name=o2 lab=D1}
C {opin.sym} -400 360 0 0 {name=o3 lab=D0}
C {/home/ttuser/Documents/ADCAnalogDesign/inverter.sym} -310 820 0 0 {name=x1}
C {lab_pin.sym} -370 700 0 1 {name=p2 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -340 890 0 1 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -490 800 0 0 {name=p4 sig_type=std_logic lab=T7}
C {lab_pin.sym} -190 810 0 1 {name=p5 sig_type=std_logic lab=T7B}
C {/home/ttuser/Documents/ADCAnalogDesign/inverter.sym} -700 540 0 0 {name=x2}
C {lab_pin.sym} -760 420 0 1 {name=p6 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -730 610 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -880 520 0 0 {name=p8 sig_type=std_logic lab=T2}
C {lab_pin.sym} -580 530 0 1 {name=p13 sig_type=std_logic lab=T2B}
C {/home/ttuser/Documents/ADCAnalogDesign/inverter.sym} -730 810 0 0 {name=x4}
C {lab_pin.sym} -790 690 0 1 {name=p14 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -760 880 0 1 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -900 790 0 0 {name=p16 sig_type=std_logic lab=T4}
C {lab_pin.sym} -610 800 0 1 {name=p53 sig_type=std_logic lab=T4B}
