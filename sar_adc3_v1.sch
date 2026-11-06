v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {STEP 1 (area): 3-bit SAR ADC, same architecture as sar_adc3 but the CDAC unit capacitor is 8 x 8 um (133 fF) instead of 10 x 10 um x MF 5 (1.03 pF).
MIM area 7 x 64 + 47.6 = 496 um2 instead of 4000 um2.  The comparator puts Cp = 33 fF on REF, which would give REF = VREF.code/8 x 8C/(8C + Cp) (21 mV low at code 7).
So the dummy is made smaller by exactly Cp: 6.9 x 6.9 um (100 fF).  Total capacitance on REF is again 8C and the levels are right.} -400 -1000 0 0 0.3 0.3 {}
C {/home/ttuser/Documents/ADCAnalogDesign/comparator.sym} 600 -300 0 0 {name=x1}
N 500 -370 480 -370 {}
C {lab_pin.sym} 480 -370 0 0 {name=l1 sig_type=std_logic lab=VCC}
N 500 -320 480 -320 {}
C {lab_pin.sym} 480 -320 0 0 {name=l2 sig_type=std_logic lab=VIN}
N 500 -270 480 -270 {}
C {lab_pin.sym} 480 -270 0 0 {name=l3 sig_type=std_logic lab=REF}
N 500 -230 480 -230 {}
C {lab_pin.sym} 480 -230 0 0 {name=l4 sig_type=std_logic lab=VSS}
N 600 -220 580 -220 {}
C {lab_pin.sym} 580 -220 0 0 {name=l5 sig_type=std_logic lab=EN_N}
N 600 -200 600 -180 {}
C {lab_pin.sym} 600 -180 0 0 {name=l6 sig_type=std_logic lab=ADJ}
N 760 -280 780 -280 {}
C {lab_pin.sym} 780 -280 0 1 {name=l7 sig_type=std_logic lab=COM}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/cdac3_v1.sym} 1250 -300 0 0 {name=x2}
N 1140 -350 1120 -350 {}
C {lab_pin.sym} 1120 -350 0 0 {name=l8 sig_type=std_logic lab=VSS}
N 1140 -330 1120 -330 {}
C {lab_pin.sym} 1120 -330 0 0 {name=l9 sig_type=std_logic lab=VREF}
N 1140 -310 1120 -310 {}
C {lab_pin.sym} 1120 -310 0 0 {name=l10 sig_type=std_logic lab=RST}
N 1140 -290 1120 -290 {}
C {lab_pin.sym} 1120 -290 0 0 {name=l11 sig_type=std_logic lab=B2N}
N 1140 -270 1120 -270 {}
C {lab_pin.sym} 1120 -270 0 0 {name=l12 sig_type=std_logic lab=B1N}
N 1140 -250 1120 -250 {}
C {lab_pin.sym} 1120 -250 0 0 {name=l13 sig_type=std_logic lab=B0N}
N 1360 -350 1380 -350 {}
C {lab_pin.sym} 1380 -350 0 1 {name=l14 sig_type=std_logic lab=REF}
C {/home/ttuser/Documents/ADCAnalogDesign/sar_logic3_simple.sym} 1900 -300 0 0 {name=x3}
N 1800 -390 1780 -390 {}
C {lab_pin.sym} 1780 -390 0 0 {name=l15 sig_type=std_logic lab=VCC}
N 1800 -370 1780 -370 {}
C {lab_pin.sym} 1780 -370 0 0 {name=l16 sig_type=std_logic lab=VSS}
N 1800 -350 1780 -350 {}
C {lab_pin.sym} 1780 -350 0 0 {name=l17 sig_type=std_logic lab=RST}
N 1800 -330 1780 -330 {}
C {lab_pin.sym} 1780 -330 0 0 {name=l18 sig_type=std_logic lab=TRY2}
N 1800 -310 1780 -310 {}
C {lab_pin.sym} 1780 -310 0 0 {name=l19 sig_type=std_logic lab=DEC2}
N 1800 -290 1780 -290 {}
C {lab_pin.sym} 1780 -290 0 0 {name=l20 sig_type=std_logic lab=TRY1}
N 1800 -270 1780 -270 {}
C {lab_pin.sym} 1780 -270 0 0 {name=l21 sig_type=std_logic lab=DEC1}
N 1800 -250 1780 -250 {}
C {lab_pin.sym} 1780 -250 0 0 {name=l22 sig_type=std_logic lab=TRY0}
N 1800 -230 1780 -230 {}
C {lab_pin.sym} 1780 -230 0 0 {name=l23 sig_type=std_logic lab=DEC0}
N 1800 -210 1780 -210 {}
C {lab_pin.sym} 1780 -210 0 0 {name=l24 sig_type=std_logic lab=COM}
N 2000 -350 2020 -350 {}
C {lab_pin.sym} 2020 -350 0 1 {name=l25 sig_type=std_logic lab=D2}
N 2000 -330 2020 -330 {}
C {lab_pin.sym} 2020 -330 0 1 {name=l26 sig_type=std_logic lab=D1}
N 2000 -310 2020 -310 {}
C {lab_pin.sym} 2020 -310 0 1 {name=l27 sig_type=std_logic lab=D0}
N 2000 -290 2020 -290 {}
C {lab_pin.sym} 2020 -290 0 1 {name=l28 sig_type=std_logic lab=B2N}
N 2000 -270 2020 -270 {}
C {lab_pin.sym} 2020 -270 0 1 {name=l29 sig_type=std_logic lab=B1N}
N 2000 -250 2020 -250 {}
C {lab_pin.sym} 2020 -250 0 1 {name=l30 sig_type=std_logic lab=B0N}
C {ipin.sym} -400 -700 0 0 {name=p1 lab=VCC}
C {ipin.sym} -400 -670 0 0 {name=p2 lab=VSS}
C {ipin.sym} -400 -640 0 0 {name=p3 lab=VREF}
C {ipin.sym} -400 -610 0 0 {name=p4 lab=VIN}
C {ipin.sym} -400 -580 0 0 {name=p5 lab=EN_N}
C {ipin.sym} -400 -550 0 0 {name=p6 lab=ADJ}
C {ipin.sym} -400 -520 0 0 {name=p7 lab=RST}
C {ipin.sym} -400 -490 0 0 {name=p8 lab=TRY2}
C {ipin.sym} -400 -460 0 0 {name=p9 lab=DEC2}
C {ipin.sym} -400 -430 0 0 {name=p10 lab=TRY1}
C {ipin.sym} -400 -400 0 0 {name=p11 lab=DEC1}
C {ipin.sym} -400 -370 0 0 {name=p12 lab=TRY0}
C {ipin.sym} -400 -340 0 0 {name=p13 lab=DEC0}
C {opin.sym} -400 -310 0 0 {name=p14 lab=D2}
C {opin.sym} -400 -280 0 0 {name=p15 lab=D1}
C {opin.sym} -400 -250 0 0 {name=p16 lab=D0}
