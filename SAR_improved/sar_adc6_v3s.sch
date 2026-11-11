v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {AREA-REDUCED 6-bit SAR ADC (sar_adc6_v3 with 2 x 2 um unit caps, replica stacked under the main array in cap_mim_m3_1): top-plate sampling + Vcm switching + latch comparator.
CDAC: 16C, 8C, 4C, 2C, C and a dummy, C = 2 x 2 um MIM (about 10 fF), 32C in total.  The comparator compares VX with VR (a replica node sampled to VCM = VREF/2).
Conversion: SMP (sample VIN on VX, VCM on VR)  ->  C5: decide D5 = (VIN > VREF/2)  ->  U5: move the 16C plate to VREF (D5 = 0) or 0 V (D5 = 1)
->  C4: decide D4  ->  U4: move 8C  ->  ...  ->  C1: decide D1  ->  U1: move C  ->  C0: decide D0.   Code = D5 D4 D3 D2 D1 D0.
CLK (comparator clock) pulses during C5 ... C0.  All phases come from outside (a counter or the CiM controller in a real chip).} -400 -1000 0 0 0.3 0.3 {}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/latch_comp.sym} 600 -300 0 0 {name=x1}
N 500 -340 480 -340 {}
C {lab_pin.sym} 480 -340 0 0 {name=l1 sig_type=std_logic lab=VCC}
N 500 -320 480 -320 {}
C {lab_pin.sym} 480 -320 0 0 {name=l2 sig_type=std_logic lab=VSS}
N 500 -300 480 -300 {}
C {lab_pin.sym} 480 -300 0 0 {name=l3 sig_type=std_logic lab=CLK}
N 500 -280 480 -280 {}
C {lab_pin.sym} 480 -280 0 0 {name=l4 sig_type=std_logic lab=VX}
N 500 -260 480 -260 {}
C {lab_pin.sym} 480 -260 0 0 {name=l5 sig_type=std_logic lab=VR}
N 700 -340 720 -340 {}
C {lab_pin.sym} 720 -340 0 1 {name=l6 sig_type=std_logic lab=COM}
N 700 -320 720 -320 {}
C {lab_pin.sym} 720 -320 0 1 {name=l7 sig_type=std_logic lab=COMB}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/cdac_vcm6s.sym} 1300 -300 0 0 {name=x2}
N 1190 -550 1170 -550 {}
C {lab_pin.sym} 1170 -550 0 0 {name=l8 sig_type=std_logic lab=VCC}
N 1190 -530 1170 -530 {}
C {lab_pin.sym} 1170 -530 0 0 {name=l9 sig_type=std_logic lab=VSS}
N 1190 -510 1170 -510 {}
C {lab_pin.sym} 1170 -510 0 0 {name=l10 sig_type=std_logic lab=VREF}
N 1190 -490 1170 -490 {}
C {lab_pin.sym} 1170 -490 0 0 {name=l11 sig_type=std_logic lab=VCM}
N 1190 -470 1170 -470 {}
C {lab_pin.sym} 1170 -470 0 0 {name=l12 sig_type=std_logic lab=VIN}
N 1190 -450 1170 -450 {}
C {lab_pin.sym} 1170 -450 0 0 {name=l13 sig_type=std_logic lab=SMP}
N 1190 -430 1170 -430 {}
C {lab_pin.sym} 1170 -430 0 0 {name=l14 sig_type=std_logic lab=UP5}
N 1190 -410 1170 -410 {}
C {lab_pin.sym} 1170 -410 0 0 {name=l15 sig_type=std_logic lab=DN5}
N 1190 -390 1170 -390 {}
C {lab_pin.sym} 1170 -390 0 0 {name=l16 sig_type=std_logic lab=E5}
N 1190 -370 1170 -370 {}
C {lab_pin.sym} 1170 -370 0 0 {name=l17 sig_type=std_logic lab=E5B}
N 1190 -350 1170 -350 {}
C {lab_pin.sym} 1170 -350 0 0 {name=l18 sig_type=std_logic lab=UP4}
N 1190 -330 1170 -330 {}
C {lab_pin.sym} 1170 -330 0 0 {name=l19 sig_type=std_logic lab=DN4}
N 1190 -310 1170 -310 {}
C {lab_pin.sym} 1170 -310 0 0 {name=l20 sig_type=std_logic lab=E4}
N 1190 -290 1170 -290 {}
C {lab_pin.sym} 1170 -290 0 0 {name=l21 sig_type=std_logic lab=E4B}
N 1190 -270 1170 -270 {}
C {lab_pin.sym} 1170 -270 0 0 {name=l22 sig_type=std_logic lab=UP3}
N 1190 -250 1170 -250 {}
C {lab_pin.sym} 1170 -250 0 0 {name=l23 sig_type=std_logic lab=DN3}
N 1190 -230 1170 -230 {}
C {lab_pin.sym} 1170 -230 0 0 {name=l24 sig_type=std_logic lab=E3}
N 1190 -210 1170 -210 {}
C {lab_pin.sym} 1170 -210 0 0 {name=l25 sig_type=std_logic lab=E3B}
N 1190 -190 1170 -190 {}
C {lab_pin.sym} 1170 -190 0 0 {name=l26 sig_type=std_logic lab=UP2}
N 1190 -170 1170 -170 {}
C {lab_pin.sym} 1170 -170 0 0 {name=l27 sig_type=std_logic lab=DN2}
N 1190 -150 1170 -150 {}
C {lab_pin.sym} 1170 -150 0 0 {name=l28 sig_type=std_logic lab=E2}
N 1190 -130 1170 -130 {}
C {lab_pin.sym} 1170 -130 0 0 {name=l29 sig_type=std_logic lab=E2B}
N 1190 -110 1170 -110 {}
C {lab_pin.sym} 1170 -110 0 0 {name=l30 sig_type=std_logic lab=UP1}
N 1190 -90 1170 -90 {}
C {lab_pin.sym} 1170 -90 0 0 {name=l31 sig_type=std_logic lab=DN1}
N 1190 -70 1170 -70 {}
C {lab_pin.sym} 1170 -70 0 0 {name=l32 sig_type=std_logic lab=E1}
N 1190 -50 1170 -50 {}
C {lab_pin.sym} 1170 -50 0 0 {name=l33 sig_type=std_logic lab=E1B}
N 1410 -550 1430 -550 {}
C {lab_pin.sym} 1430 -550 0 1 {name=l34 sig_type=std_logic lab=VX}
N 1410 -530 1430 -530 {}
C {lab_pin.sym} 1430 -530 0 1 {name=l35 sig_type=std_logic lab=VR}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/sar_logic_vcm6s.sym} 2100 -300 0 0 {name=x3}
N 1990 -550 1970 -550 {}
C {lab_pin.sym} 1970 -550 0 0 {name=l36 sig_type=std_logic lab=VCC}
N 1990 -530 1970 -530 {}
C {lab_pin.sym} 1970 -530 0 0 {name=l37 sig_type=std_logic lab=VSS}
N 1990 -510 1970 -510 {}
C {lab_pin.sym} 1970 -510 0 0 {name=l38 sig_type=std_logic lab=SMP}
N 1990 -490 1970 -490 {}
C {lab_pin.sym} 1970 -490 0 0 {name=l39 sig_type=std_logic lab=C5}
N 1990 -470 1970 -470 {}
C {lab_pin.sym} 1970 -470 0 0 {name=l40 sig_type=std_logic lab=C4}
N 1990 -450 1970 -450 {}
C {lab_pin.sym} 1970 -450 0 0 {name=l41 sig_type=std_logic lab=C3}
N 1990 -430 1970 -430 {}
C {lab_pin.sym} 1970 -430 0 0 {name=l42 sig_type=std_logic lab=C2}
N 1990 -410 1970 -410 {}
C {lab_pin.sym} 1970 -410 0 0 {name=l43 sig_type=std_logic lab=C1}
N 1990 -390 1970 -390 {}
C {lab_pin.sym} 1970 -390 0 0 {name=l44 sig_type=std_logic lab=C0}
N 1990 -370 1970 -370 {}
C {lab_pin.sym} 1970 -370 0 0 {name=l45 sig_type=std_logic lab=U5}
N 1990 -350 1970 -350 {}
C {lab_pin.sym} 1970 -350 0 0 {name=l46 sig_type=std_logic lab=U4}
N 1990 -330 1970 -330 {}
C {lab_pin.sym} 1970 -330 0 0 {name=l47 sig_type=std_logic lab=U3}
N 1990 -310 1970 -310 {}
C {lab_pin.sym} 1970 -310 0 0 {name=l48 sig_type=std_logic lab=U2}
N 1990 -290 1970 -290 {}
C {lab_pin.sym} 1970 -290 0 0 {name=l49 sig_type=std_logic lab=U1}
N 1990 -270 1970 -270 {}
C {lab_pin.sym} 1970 -270 0 0 {name=l50 sig_type=std_logic lab=COM}
N 1990 -250 1970 -250 {}
C {lab_pin.sym} 1970 -250 0 0 {name=l51 sig_type=std_logic lab=COMB}
N 2210 -550 2230 -550 {}
C {lab_pin.sym} 2230 -550 0 1 {name=l52 sig_type=std_logic lab=D5}
N 2210 -530 2230 -530 {}
C {lab_pin.sym} 2230 -530 0 1 {name=l53 sig_type=std_logic lab=D4}
N 2210 -510 2230 -510 {}
C {lab_pin.sym} 2230 -510 0 1 {name=l54 sig_type=std_logic lab=D3}
N 2210 -490 2230 -490 {}
C {lab_pin.sym} 2230 -490 0 1 {name=l55 sig_type=std_logic lab=D2}
N 2210 -470 2230 -470 {}
C {lab_pin.sym} 2230 -470 0 1 {name=l56 sig_type=std_logic lab=D1}
N 2210 -450 2230 -450 {}
C {lab_pin.sym} 2230 -450 0 1 {name=l57 sig_type=std_logic lab=D0}
N 2210 -430 2230 -430 {}
C {lab_pin.sym} 2230 -430 0 1 {name=l58 sig_type=std_logic lab=UP5}
N 2210 -410 2230 -410 {}
C {lab_pin.sym} 2230 -410 0 1 {name=l59 sig_type=std_logic lab=DN5}
N 2210 -390 2230 -390 {}
C {lab_pin.sym} 2230 -390 0 1 {name=l60 sig_type=std_logic lab=E5}
N 2210 -370 2230 -370 {}
C {lab_pin.sym} 2230 -370 0 1 {name=l61 sig_type=std_logic lab=E5B}
N 2210 -350 2230 -350 {}
C {lab_pin.sym} 2230 -350 0 1 {name=l62 sig_type=std_logic lab=UP4}
N 2210 -330 2230 -330 {}
C {lab_pin.sym} 2230 -330 0 1 {name=l63 sig_type=std_logic lab=DN4}
N 2210 -310 2230 -310 {}
C {lab_pin.sym} 2230 -310 0 1 {name=l64 sig_type=std_logic lab=E4}
N 2210 -290 2230 -290 {}
C {lab_pin.sym} 2230 -290 0 1 {name=l65 sig_type=std_logic lab=E4B}
N 2210 -270 2230 -270 {}
C {lab_pin.sym} 2230 -270 0 1 {name=l66 sig_type=std_logic lab=UP3}
N 2210 -250 2230 -250 {}
C {lab_pin.sym} 2230 -250 0 1 {name=l67 sig_type=std_logic lab=DN3}
N 2210 -230 2230 -230 {}
C {lab_pin.sym} 2230 -230 0 1 {name=l68 sig_type=std_logic lab=E3}
N 2210 -210 2230 -210 {}
C {lab_pin.sym} 2230 -210 0 1 {name=l69 sig_type=std_logic lab=E3B}
N 2210 -190 2230 -190 {}
C {lab_pin.sym} 2230 -190 0 1 {name=l70 sig_type=std_logic lab=UP2}
N 2210 -170 2230 -170 {}
C {lab_pin.sym} 2230 -170 0 1 {name=l71 sig_type=std_logic lab=DN2}
N 2210 -150 2230 -150 {}
C {lab_pin.sym} 2230 -150 0 1 {name=l72 sig_type=std_logic lab=E2}
N 2210 -130 2230 -130 {}
C {lab_pin.sym} 2230 -130 0 1 {name=l73 sig_type=std_logic lab=E2B}
N 2210 -110 2230 -110 {}
C {lab_pin.sym} 2230 -110 0 1 {name=l74 sig_type=std_logic lab=UP1}
N 2210 -90 2230 -90 {}
C {lab_pin.sym} 2230 -90 0 1 {name=l75 sig_type=std_logic lab=DN1}
N 2210 -70 2230 -70 {}
C {lab_pin.sym} 2230 -70 0 1 {name=l76 sig_type=std_logic lab=E1}
N 2210 -50 2230 -50 {}
C {lab_pin.sym} 2230 -50 0 1 {name=l77 sig_type=std_logic lab=E1B}
C {ipin.sym} -400 -700 0 0 {name=p1 lab=VCC}
C {ipin.sym} -400 -670 0 0 {name=p2 lab=VSS}
C {ipin.sym} -400 -640 0 0 {name=p3 lab=VREF}
C {ipin.sym} -400 -610 0 0 {name=p4 lab=VCM}
C {ipin.sym} -400 -580 0 0 {name=p5 lab=VIN}
C {ipin.sym} -400 -550 0 0 {name=p6 lab=SMP}
C {ipin.sym} -400 -520 0 0 {name=p7 lab=CLK}
C {ipin.sym} -400 -490 0 0 {name=p8 lab=C5}
C {ipin.sym} -400 -460 0 0 {name=p9 lab=U5}
C {ipin.sym} -400 -430 0 0 {name=p10 lab=C4}
C {ipin.sym} -400 -400 0 0 {name=p11 lab=U4}
C {ipin.sym} -400 -370 0 0 {name=p12 lab=C3}
C {ipin.sym} -400 -340 0 0 {name=p13 lab=U3}
C {ipin.sym} -400 -310 0 0 {name=p14 lab=C2}
C {ipin.sym} -400 -280 0 0 {name=p15 lab=U2}
C {ipin.sym} -400 -250 0 0 {name=p16 lab=C1}
C {ipin.sym} -400 -220 0 0 {name=p17 lab=U1}
C {ipin.sym} -400 -190 0 0 {name=p18 lab=C0}
C {opin.sym} -400 -160 0 0 {name=p19 lab=D5}
C {opin.sym} -400 -130 0 0 {name=p20 lab=D4}
C {opin.sym} -400 -100 0 0 {name=p21 lab=D3}
C {opin.sym} -400 -70 0 0 {name=p22 lab=D2}
C {opin.sym} -400 -40 0 0 {name=p23 lab=D1}
C {opin.sym} -400 -10 0 0 {name=p24 lab=D0}
