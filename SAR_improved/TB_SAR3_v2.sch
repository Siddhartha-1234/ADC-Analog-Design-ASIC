v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {TB_SAR3_v2: step-2 SAR (latch comparator).  100 ns per conversion: RST, then for each bit TRYi -> one CLK pulse (decision) -> DECi.
CLK has three pulses per conversion (PWL repeated with r=0).  VIN = 0.05 ... 0.75 V -> expected codes 0 ... 7.
Energy per conversion = energy from VCC + VREF / 8.} -400 -1000 0 0 0.3 0.3 {}
N 370 -460 390 -460 {}
N 370 -420 390 -420 {}
N 370 -400 390 -400 {}
N 370 -380 390 -380 {}
N 370 -360 390 -360 {}
N 370 -340 390 -340 {}
N 370 -320 390 -320 {}
N 370 -300 390 -300 {}
N 370 -280 390 -280 {}
N 370 -260 390 -260 {}
N 370 -240 390 -240 {}
N 610 -460 630 -460 {}
N 610 -440 630 -440 {}
N 610 -420 630 -420 {}
N 370 -440 390 -440 {}
N -410 -130 -410 -110 {}
N -410 -50 -410 -30 {}
N -240 -130 -240 -110 {}
N -240 -50 -240 -30 {}
N -70 -130 -70 -110 {}
N -70 -50 -70 -30 {}
N 100 -130 100 -110 {}
N 100 -50 100 -30 {}
N 270 -130 270 -110 {}
N 270 -50 270 -30 {}
N 440 -130 440 -110 {}
N 440 -50 440 -30 {}
N 610 -130 610 -110 {}
N 610 -50 610 -30 {}
N -410 30 -410 50 {}
N -410 110 -410 130 {}
N -240 30 -240 50 {}
N -240 110 -240 130 {}
N -70 30 -70 50 {}
N -70 110 -70 130 {}
N 100 30 100 50 {}
N 100 110 100 130 {}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/sar_adc3_v2.sym} 500 -350 0 0 {name=x1}
C {lab_pin.sym} 370 -460 0 0 {name=l1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 370 -420 0 0 {name=l2 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 370 -400 0 0 {name=l3 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 370 -380 0 0 {name=l4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 370 -360 0 0 {name=l5 sig_type=std_logic lab=RST}
C {lab_pin.sym} 370 -340 0 0 {name=l6 sig_type=std_logic lab=TRY2}
C {lab_pin.sym} 370 -320 0 0 {name=l7 sig_type=std_logic lab=DEC2}
C {lab_pin.sym} 370 -300 0 0 {name=l8 sig_type=std_logic lab=TRY1}
C {lab_pin.sym} 370 -280 0 0 {name=l9 sig_type=std_logic lab=DEC1}
C {lab_pin.sym} 370 -260 0 0 {name=l10 sig_type=std_logic lab=TRY0}
C {lab_pin.sym} 370 -240 0 0 {name=l11 sig_type=std_logic lab=DEC0}
C {lab_pin.sym} 630 -460 0 1 {name=l12 sig_type=std_logic lab=D2}
C {lab_pin.sym} 630 -440 0 1 {name=l13 sig_type=std_logic lab=D1}
C {lab_pin.sym} 630 -420 0 1 {name=l14 sig_type=std_logic lab=D0}
C {lab_pin.sym} 370 -440 0 0 {name=l15 sig_type=std_logic lab=0}
C {vsource.sym} -410 -80 0 0 {name=V1 value="1.8" savecurrent=false}
C {lab_pin.sym} -410 -130 0 0 {name=l16 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -410 -30 0 0 {name=l17 sig_type=std_logic lab=0}
C {vsource.sym} -240 -80 0 0 {name=V2 value="0.8" savecurrent=false}
C {lab_pin.sym} -240 -130 0 0 {name=l18 sig_type=std_logic lab=VREF}
C {lab_pin.sym} -240 -30 0 0 {name=l19 sig_type=std_logic lab=0}
C {vsource.sym} -70 -80 0 0 {name=V5 value="PWL(0 0.05 102n 0.05 102.5n 0.15 202n 0.15 202.5n 0.25 302n 0.25 302.5n 0.35 402n 0.35 402.5n 0.45 502n 0.45 502.5n 0.55 602n 0.55 602.5n 0.65 702n 0.65 702.5n 0.75)" savecurrent=false}
C {lab_pin.sym} -70 -130 0 0 {name=l20 sig_type=std_logic lab=VIN}
C {lab_pin.sym} -70 -30 0 0 {name=l21 sig_type=std_logic lab=0}
C {vsource.sym} 100 -80 0 0 {name=V6 value="PWL(0 0 24n 0 24.1n 1.8 28n 1.8 28.1n 0 49n 0 49.1n 1.8 53n 1.8 53.1n 0 74n 0 74.1n 1.8 78n 1.8 78.1n 0 100n 0) r=0" savecurrent=false}
C {lab_pin.sym} 100 -130 0 0 {name=l22 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 100 -30 0 0 {name=l23 sig_type=std_logic lab=0}
C {vsource.sym} 270 -80 0 0 {name=V7 value="PULSE(0 1.8 0n 0.1n 0.1n 9.9n 100n)" savecurrent=false}
C {lab_pin.sym} 270 -130 0 0 {name=l24 sig_type=std_logic lab=RST}
C {lab_pin.sym} 270 -30 0 0 {name=l25 sig_type=std_logic lab=0}
C {vsource.sym} 440 -80 0 0 {name=V8 value="PULSE(0 1.8 12n 0.1n 0.1n 9.9n 100n)" savecurrent=false}
C {lab_pin.sym} 440 -130 0 0 {name=l26 sig_type=std_logic lab=TRY2}
C {lab_pin.sym} 440 -30 0 0 {name=l27 sig_type=std_logic lab=0}
C {vsource.sym} 610 -80 0 0 {name=V9 value="PULSE(0 1.8 30n 0.1n 0.1n 4.9n 100n)" savecurrent=false}
C {lab_pin.sym} 610 -130 0 0 {name=l28 sig_type=std_logic lab=DEC2}
C {lab_pin.sym} 610 -30 0 0 {name=l29 sig_type=std_logic lab=0}
C {vsource.sym} -410 80 0 0 {name=V10 value="PULSE(0 1.8 37n 0.1n 0.1n 9.9n 100n)" savecurrent=false}
C {lab_pin.sym} -410 30 0 0 {name=l30 sig_type=std_logic lab=TRY1}
C {lab_pin.sym} -410 130 0 0 {name=l31 sig_type=std_logic lab=0}
C {vsource.sym} -240 80 0 0 {name=V11 value="PULSE(0 1.8 55n 0.1n 0.1n 4.9n 100n)" savecurrent=false}
C {lab_pin.sym} -240 30 0 0 {name=l32 sig_type=std_logic lab=DEC1}
C {lab_pin.sym} -240 130 0 0 {name=l33 sig_type=std_logic lab=0}
C {vsource.sym} -70 80 0 0 {name=V12 value="PULSE(0 1.8 62n 0.1n 0.1n 9.9n 100n)" savecurrent=false}
C {lab_pin.sym} -70 30 0 0 {name=l34 sig_type=std_logic lab=TRY0}
C {lab_pin.sym} -70 130 0 0 {name=l35 sig_type=std_logic lab=0}
C {vsource.sym} 100 80 0 0 {name=V13 value="PULSE(0 1.8 80n 0.1n 0.1n 4.9n 100n)" savecurrent=false}
C {lab_pin.sym} 100 30 0 0 {name=l36 sig_type=std_logic lab=DEC0}
C {lab_pin.sym} 100 130 0 0 {name=l37 sig_type=std_logic lab=0}
C {code_shown.sym} -900 -1050 0 0 {name=s1 only_toplevel=false value=".lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.option method=gear reltol=1e-4
.control
save all
tran 0.025n 800n
let code = 4*ceil((v(D2)-0.9)/10) + 2*ceil((v(D1)-0.9)/10) + ceil((v(D0)-0.9)/10)
meas tran code1 find code at=90n
meas tran code2 find code at=190n
meas tran code3 find code at=290n
meas tran code4 find code at=390n
meas tran code5 find code at=490n
meas tran code6 find code at=590n
meas tran code7 find code at=690n
meas tran code8 find code at=790n
let ptot = 1.8*(-i(V1)) + 0.8*(-i(V2))
meas tran etot integ ptot from=0 to=800n
let e_conv_pJ = etot/8*1e12
let p_uW = etot/800e-9*1e6
print e_conv_pJ p_uW
plot v(VIN) v(x1.REF)
plot v(CLK) v(x1.COM)+2
plot v(D2) v(D1)+2 v(D0)+4
plot code v(VIN)
.endc"}
