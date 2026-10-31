v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {3-bit charge-redistribution SAR ADC (Fig. 1c / 2d of the paper).  x1 comparator: VIN vs REF (COM = 1 when VIN > REF).  x2 capacitive DAC makes REF.  x3 SAR logic holds the bits and drives the DAC.
Conversion order: RST, then TRY2, DEC2, TRY1, DEC1, TRY0, DEC0 (phases supplied from outside).  VIN must be held constant during a conversion (ideal sample/hold).} -400 -640 0 0 0.3 0.3 {}
C {/home/ttuser/Documents/ADCAnalogDesign/comparator.sym} 600 -300 0 0 {name=x1}
C {lab_pin.sym} 500 -370 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 500 -320 0 0 {name=p2 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 500 -270 0 0 {name=p3 sig_type=std_logic lab=REF}
C {lab_pin.sym} 500 -230 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 600 -220 0 0 {name=p5 sig_type=std_logic lab=EN_N}
C {lab_pin.sym} 600 -200 0 0 {name=p6 sig_type=std_logic lab=ADJ}
C {lab_pin.sym} 760 -280 0 1 {name=p7 sig_type=std_logic lab=COM}
C {/home/ttuser/Documents/ADCAnalogDesign/cdac3.sym} 1200 -300 0 0 {name=x2}
C {lab_pin.sym} 1100 -350 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1100 -330 0 0 {name=p9 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1100 -310 0 0 {name=p10 sig_type=std_logic lab=RST}
C {lab_pin.sym} 1100 -290 0 0 {name=p11 sig_type=std_logic lab=B2N}
C {lab_pin.sym} 1100 -270 0 0 {name=p12 sig_type=std_logic lab=B1N}
C {lab_pin.sym} 1100 -250 0 0 {name=p13 sig_type=std_logic lab=B0N}
C {lab_pin.sym} 1300 -300 0 1 {name=p14 sig_type=std_logic lab=REF}
C {lab_pin.sym} 1700 -390 0 0 {name=p15 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1700 -370 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1700 -350 0 0 {name=p17 sig_type=std_logic lab=RST}
C {lab_pin.sym} 1700 -330 0 0 {name=p18 sig_type=std_logic lab=TRY2}
C {lab_pin.sym} 1700 -310 0 0 {name=p19 sig_type=std_logic lab=DEC2}
C {lab_pin.sym} 1700 -290 0 0 {name=p20 sig_type=std_logic lab=TRY1}
C {lab_pin.sym} 1700 -270 0 0 {name=p21 sig_type=std_logic lab=DEC1}
C {lab_pin.sym} 1700 -250 0 0 {name=p22 sig_type=std_logic lab=TRY0}
C {lab_pin.sym} 1700 -230 0 0 {name=p23 sig_type=std_logic lab=DEC0}
C {lab_pin.sym} 1700 -210 0 0 {name=p24 sig_type=std_logic lab=COM}
C {lab_pin.sym} 1900 -350 0 1 {name=p25 sig_type=std_logic lab=D2}
C {lab_pin.sym} 1900 -330 0 1 {name=p26 sig_type=std_logic lab=D1}
C {lab_pin.sym} 1900 -310 0 1 {name=p27 sig_type=std_logic lab=D0}
C {lab_pin.sym} 1900 -290 0 1 {name=p28 sig_type=std_logic lab=B2N}
C {lab_pin.sym} 1900 -270 0 1 {name=p29 sig_type=std_logic lab=B1N}
C {lab_pin.sym} 1900 -250 0 1 {name=p30 sig_type=std_logic lab=B0N}
C {ipin.sym} -400 -500 0 0 {name=i1 lab=VCC}
C {ipin.sym} -400 -470 0 0 {name=i2 lab=VSS}
C {ipin.sym} -400 -440 0 0 {name=i3 lab=VREF}
C {ipin.sym} -400 -410 0 0 {name=i4 lab=VIN}
C {ipin.sym} -400 -380 0 0 {name=i5 lab=EN_N}
C {ipin.sym} -400 -350 0 0 {name=i6 lab=ADJ}
C {ipin.sym} -400 -320 0 0 {name=i7 lab=RST}
C {ipin.sym} -400 -290 0 0 {name=i8 lab=TRY2}
C {ipin.sym} -400 -260 0 0 {name=i9 lab=DEC2}
C {ipin.sym} -400 -230 0 0 {name=i10 lab=TRY1}
C {ipin.sym} -400 -200 0 0 {name=i11 lab=DEC1}
C {ipin.sym} -400 -170 0 0 {name=i12 lab=TRY0}
C {ipin.sym} -400 -140 0 0 {name=i13 lab=DEC0}
C {opin.sym} -400 -80 0 0 {name=o1 lab=D2}
C {opin.sym} -400 -50 0 0 {name=o2 lab=D1}
C {opin.sym} -400 -20 0 0 {name=o3 lab=D0}
C {/home/ttuser/Documents/ADCAnalogDesign/sar_logic3_simple.sym} 1800 -300 0 0 {name=x4}
