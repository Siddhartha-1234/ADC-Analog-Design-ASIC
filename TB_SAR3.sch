v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}

C {/home/ttuser/Documents/ADCAnalogDesign/sar_adc3.sym} 500 -300 0 0 {name=x1}
C {lab_pin.sym} 400 -420 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 400 -400 0 0 {name=p2 sig_type=std_logic lab=0}
C {lab_pin.sym} 400 -380 0 0 {name=p3 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 400 -360 0 0 {name=p4 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 400 -340 0 0 {name=p5 sig_type=std_logic lab=EN_N}
C {lab_pin.sym} 400 -320 0 0 {name=p6 sig_type=std_logic lab=ADJ}
C {lab_pin.sym} 400 -300 0 0 {name=p7 sig_type=std_logic lab=RST}
C {lab_pin.sym} 400 -280 0 0 {name=p8 sig_type=std_logic lab=TRY2}
C {lab_pin.sym} 400 -260 0 0 {name=p9 sig_type=std_logic lab=DEC2}
C {lab_pin.sym} 400 -240 0 0 {name=p10 sig_type=std_logic lab=TRY1}
C {lab_pin.sym} 400 -220 0 0 {name=p11 sig_type=std_logic lab=DEC1}
C {lab_pin.sym} 400 -200 0 0 {name=p12 sig_type=std_logic lab=TRY0}
C {lab_pin.sym} 400 -180 0 0 {name=p13 sig_type=std_logic lab=DEC0}
C {lab_pin.sym} 600 -320 0 1 {name=p14 sig_type=std_logic lab=D2}
C {lab_pin.sym} 600 -300 0 1 {name=p15 sig_type=std_logic lab=D1}
C {lab_pin.sym} 600 -280 0 1 {name=p16 sig_type=std_logic lab=D0}
C {vsource.sym} 100 100 0 0 {name=V1 value=1.8}
C {lab_pin.sym} 100 70 0 0 {name=p17 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 100 130 0 0 {name=p18 sig_type=std_logic lab=0}
C {vsource.sym} 270 100 0 0 {name=V2 value=0.8}
C {lab_pin.sym} 270 70 0 0 {name=p19 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 270 130 0 0 {name=p20 sig_type=std_logic lab=0}
C {vsource.sym} 440 100 0 0 {name=V3 value=0}
C {lab_pin.sym} 440 70 0 0 {name=p21 sig_type=std_logic lab=EN_N}
C {lab_pin.sym} 440 130 0 0 {name=p22 sig_type=std_logic lab=0}
C {vsource.sym} 610 100 0 0 {name=V4 value=0.9}
C {lab_pin.sym} 610 70 0 0 {name=p23 sig_type=std_logic lab=ADJ}
C {lab_pin.sym} 610 130 0 0 {name=p24 sig_type=std_logic lab=0}
C {vsource.sym} 780 100 0 0 {name=V5 value="PWL(0 0.05 2015n 0.05 2020n 0.15 4015n 0.15 4020n 0.25 6015n 0.25 6020n 0.35 8015n 0.35 8020n 0.45 10015n 0.45 10020n 0.55 12015n 0.55 12020n 0.65 14015n 0.65 14020n 0.75 16000n 0.75)"}
C {lab_pin.sym} 780 70 0 0 {name=p25 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 780 130 0 0 {name=p26 sig_type=std_logic lab=0}
C {vsource.sym} 950 100 0 0 {name=V6 value="PULSE(1.8 0 100n 1n 1n 1899n 2000n)"}
C {lab_pin.sym} 950 70 0 0 {name=p27 sig_type=std_logic lab=RST}
C {lab_pin.sym} 950 130 0 0 {name=p28 sig_type=std_logic lab=0}
C {vsource.sym} 1120 100 0 0 {name=V7 value="PULSE(0 1.8 150n 1n 1n 249n 2000n)"}
C {lab_pin.sym} 1120 70 0 0 {name=p29 sig_type=std_logic lab=TRY2}
C {lab_pin.sym} 1120 130 0 0 {name=p30 sig_type=std_logic lab=0}
C {vsource.sym} 1290 100 0 0 {name=V8 value="PULSE(0 1.8 450n 1n 1n 99n 2000n)"}
C {lab_pin.sym} 1290 70 0 0 {name=p31 sig_type=std_logic lab=DEC2}
C {lab_pin.sym} 1290 130 0 0 {name=p32 sig_type=std_logic lab=0}
C {vsource.sym} 1460 100 0 0 {name=V9 value="PULSE(0 1.8 600n 1n 1n 249n 2000n)"}
C {lab_pin.sym} 1460 70 0 0 {name=p33 sig_type=std_logic lab=TRY1}
C {lab_pin.sym} 1460 130 0 0 {name=p34 sig_type=std_logic lab=0}
C {vsource.sym} 1630 100 0 0 {name=V10 value="PULSE(0 1.8 900n 1n 1n 99n 2000n)"}
C {lab_pin.sym} 1630 70 0 0 {name=p35 sig_type=std_logic lab=DEC1}
C {lab_pin.sym} 1630 130 0 0 {name=p36 sig_type=std_logic lab=0}
C {vsource.sym} 1800 100 0 0 {name=V11 value="PULSE(0 1.8 1050n 1n 1n 249n 2000n)"}
C {lab_pin.sym} 1800 70 0 0 {name=p37 sig_type=std_logic lab=TRY0}
C {lab_pin.sym} 1800 130 0 0 {name=p38 sig_type=std_logic lab=0}
C {vsource.sym} 1970 100 0 0 {name=V12 value="PULSE(0 1.8 1350n 1n 1n 99n 2000n)"}
C {lab_pin.sym} 1970 70 0 0 {name=p39 sig_type=std_logic lab=DEC0}
C {lab_pin.sym} 1970 130 0 0 {name=p40 sig_type=std_logic lab=0}
C {code_shown.sym} -300 -760 0 0 {name=s1 only_toplevel=false value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt

.control
save all
tran 1n 16.2u
* digital code from the three output bits (bit = 1 when its voltage is above 0.9 V)
let code = 4*ceil((v(D2)-0.9)/10) + 2*ceil((v(D1)-0.9)/10) + ceil((v(D0)-0.9)/10)
* code at the end of each 2 us conversion
meas tran code1 find code at=1.6u
meas tran code2 find code at=3.6u
meas tran code3 find code at=5.6u
meas tran code4 find code at=7.6u
meas tran code5 find code at=9.6u
meas tran code6 find code at=11.6u
meas tran code7 find code at=13.6u
meas tran code8 find code at=15.6u
plot v(VIN) v(x1.REF)
plot v(x1.COM) v(x1.COML)
plot v(D2) v(D1)+2 v(D0)+4
plot code v(VIN)
.endc
"}
T {VREF = 0.8 V -> LSB = 100 mV.  One conversion every 2 us (RST, then TRY2 DEC2 TRY1 DEC1 TRY0 DEC0).  VIN steps to the middle of a new code during every RST phase:
0.05, 0.15 ... 0.75 V -> expected codes 0, 1, 2 ... 7 (code1..code8).  During each TRY phase x1.REF shows the trial level (VREF/2 first, then +/- VREF/4, then +/- VREF/8) against VIN.
ADJ = 0.9 V is a placeholder: use the ADJ value from your comparator test.} 100 -140 0 0 0.3 0.3 {}
