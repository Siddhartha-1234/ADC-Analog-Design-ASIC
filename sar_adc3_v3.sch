v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {STEP 3 (final): 3-bit charge-redistribution SAR ADC: top-plate sampling + Vcm-based switching + latch comparator.
CDAC: 2C, C and a dummy with C = 4 x 4 um MIM (about 35 fF).  The comparator compares VX with VR (a replica node sampled to VCM = VREF/2).
Conversion: SMP (sample VIN on VX, VCM on VR)  ->  C2: decide D2 = (VIN > VREF/2)  ->  U2: move cap A to VREF (D2 = 0) or 0 V (D2 = 1)
->  C1: decide D1  ->  U1: move cap B  ->  C0: decide D0.   Code = D2 D1 D0.  CLK (comparator clock) pulses during C2, C1, C0.
All phases come from outside (a counter or the CiM controller in a real chip).} -400 -1000 0 0 0.3 0.3 {}
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
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/cdac_vcm3.sym} 1300 -300 0 0 {name=x2}
N 1190 -430 1170 -430 {}
C {lab_pin.sym} 1170 -430 0 0 {name=l8 sig_type=std_logic lab=VCC}
N 1190 -410 1170 -410 {}
C {lab_pin.sym} 1170 -410 0 0 {name=l9 sig_type=std_logic lab=VSS}
N 1190 -390 1170 -390 {}
C {lab_pin.sym} 1170 -390 0 0 {name=l10 sig_type=std_logic lab=VREF}
N 1190 -370 1170 -370 {}
C {lab_pin.sym} 1170 -370 0 0 {name=l11 sig_type=std_logic lab=VCM}
N 1190 -350 1170 -350 {}
C {lab_pin.sym} 1170 -350 0 0 {name=l12 sig_type=std_logic lab=VIN}
N 1190 -330 1170 -330 {}
C {lab_pin.sym} 1170 -330 0 0 {name=l13 sig_type=std_logic lab=SMP}
N 1190 -310 1170 -310 {}
C {lab_pin.sym} 1170 -310 0 0 {name=l14 sig_type=std_logic lab=UPA}
N 1190 -290 1170 -290 {}
C {lab_pin.sym} 1170 -290 0 0 {name=l15 sig_type=std_logic lab=DNA}
N 1190 -270 1170 -270 {}
C {lab_pin.sym} 1170 -270 0 0 {name=l16 sig_type=std_logic lab=EA}
N 1190 -250 1170 -250 {}
C {lab_pin.sym} 1170 -250 0 0 {name=l17 sig_type=std_logic lab=EAB}
N 1190 -230 1170 -230 {}
C {lab_pin.sym} 1170 -230 0 0 {name=l18 sig_type=std_logic lab=UPB}
N 1190 -210 1170 -210 {}
C {lab_pin.sym} 1170 -210 0 0 {name=l19 sig_type=std_logic lab=DNB}
N 1190 -190 1170 -190 {}
C {lab_pin.sym} 1170 -190 0 0 {name=l20 sig_type=std_logic lab=EB}
N 1190 -170 1170 -170 {}
C {lab_pin.sym} 1170 -170 0 0 {name=l21 sig_type=std_logic lab=EBB}
N 1410 -430 1430 -430 {}
C {lab_pin.sym} 1430 -430 0 1 {name=l22 sig_type=std_logic lab=VX}
N 1410 -410 1430 -410 {}
C {lab_pin.sym} 1430 -410 0 1 {name=l23 sig_type=std_logic lab=VR}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/sar_logic_vcm3.sym} 2100 -300 0 0 {name=x3}
N 1990 -400 1970 -400 {}
C {lab_pin.sym} 1970 -400 0 0 {name=l24 sig_type=std_logic lab=VCC}
N 1990 -380 1970 -380 {}
C {lab_pin.sym} 1970 -380 0 0 {name=l25 sig_type=std_logic lab=VSS}
N 1990 -360 1970 -360 {}
C {lab_pin.sym} 1970 -360 0 0 {name=l26 sig_type=std_logic lab=SMP}
N 1990 -340 1970 -340 {}
C {lab_pin.sym} 1970 -340 0 0 {name=l27 sig_type=std_logic lab=C2}
N 1990 -320 1970 -320 {}
C {lab_pin.sym} 1970 -320 0 0 {name=l28 sig_type=std_logic lab=C1}
N 1990 -300 1970 -300 {}
C {lab_pin.sym} 1970 -300 0 0 {name=l29 sig_type=std_logic lab=C0}
N 1990 -280 1970 -280 {}
C {lab_pin.sym} 1970 -280 0 0 {name=l30 sig_type=std_logic lab=U2}
N 1990 -260 1970 -260 {}
C {lab_pin.sym} 1970 -260 0 0 {name=l31 sig_type=std_logic lab=U1}
N 1990 -240 1970 -240 {}
C {lab_pin.sym} 1970 -240 0 0 {name=l32 sig_type=std_logic lab=COM}
N 1990 -220 1970 -220 {}
C {lab_pin.sym} 1970 -220 0 0 {name=l33 sig_type=std_logic lab=COMB}
N 2210 -400 2230 -400 {}
C {lab_pin.sym} 2230 -400 0 1 {name=l34 sig_type=std_logic lab=D2}
N 2210 -380 2230 -380 {}
C {lab_pin.sym} 2230 -380 0 1 {name=l35 sig_type=std_logic lab=D1}
N 2210 -360 2230 -360 {}
C {lab_pin.sym} 2230 -360 0 1 {name=l36 sig_type=std_logic lab=D0}
N 2210 -340 2230 -340 {}
C {lab_pin.sym} 2230 -340 0 1 {name=l37 sig_type=std_logic lab=UPA}
N 2210 -320 2230 -320 {}
C {lab_pin.sym} 2230 -320 0 1 {name=l38 sig_type=std_logic lab=DNA}
N 2210 -300 2230 -300 {}
C {lab_pin.sym} 2230 -300 0 1 {name=l39 sig_type=std_logic lab=EA}
N 2210 -280 2230 -280 {}
C {lab_pin.sym} 2230 -280 0 1 {name=l40 sig_type=std_logic lab=EAB}
N 2210 -260 2230 -260 {}
C {lab_pin.sym} 2230 -260 0 1 {name=l41 sig_type=std_logic lab=UPB}
N 2210 -240 2230 -240 {}
C {lab_pin.sym} 2230 -240 0 1 {name=l42 sig_type=std_logic lab=DNB}
N 2210 -220 2230 -220 {}
C {lab_pin.sym} 2230 -220 0 1 {name=l43 sig_type=std_logic lab=EB}
N 2210 -200 2230 -200 {}
C {lab_pin.sym} 2230 -200 0 1 {name=l44 sig_type=std_logic lab=EBB}
C {ipin.sym} -400 -700 0 0 {name=p1 lab=VCC}
C {ipin.sym} -400 -670 0 0 {name=p2 lab=VSS}
C {ipin.sym} -400 -640 0 0 {name=p3 lab=VREF}
C {ipin.sym} -400 -610 0 0 {name=p4 lab=VCM}
C {ipin.sym} -400 -580 0 0 {name=p5 lab=VIN}
C {ipin.sym} -400 -550 0 0 {name=p6 lab=SMP}
C {ipin.sym} -400 -520 0 0 {name=p7 lab=CLK}
C {ipin.sym} -400 -490 0 0 {name=p8 lab=C2}
C {ipin.sym} -400 -460 0 0 {name=p9 lab=U2}
C {ipin.sym} -400 -430 0 0 {name=p10 lab=C1}
C {ipin.sym} -400 -400 0 0 {name=p11 lab=U1}
C {ipin.sym} -400 -370 0 0 {name=p12 lab=C0}
C {opin.sym} -400 -340 0 0 {name=p13 lab=D2}
C {opin.sym} -400 -310 0 0 {name=p14 lab=D1}
C {opin.sym} -400 -280 0 0 {name=p15 lab=D0}
