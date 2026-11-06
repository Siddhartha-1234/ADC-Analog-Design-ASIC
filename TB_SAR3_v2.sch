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
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/sar_adc3_v2.sym} 500 -350 0 0 {name=x1}
N 390 -460 370 -460 {}
C {lab_pin.sym} 370 -460 0 0 {name=l1 sig_type=std_logic lab=VCC}
N 390 -420 370 -420 {}
C {lab_pin.sym} 370 -420 0 0 {name=l2 sig_type=std_logic lab=VREF}
N 390 -400 370 -400 {}
C {lab_pin.sym} 370 -400 0 0 {name=l3 sig_type=std_logic lab=VIN}
N 390 -380 370 -380 {}
C {lab_pin.sym} 370 -380 0 0 {name=l4 sig_type=std_logic lab=CLK}
N 390 -360 370 -360 {}
C {lab_pin.sym} 370 -360 0 0 {name=l5 sig_type=std_logic lab=RST}
N 390 -340 370 -340 {}
C {lab_pin.sym} 370 -340 0 0 {name=l6 sig_type=std_logic lab=TRY2}
N 390 -320 370 -320 {}
C {lab_pin.sym} 370 -320 0 0 {name=l7 sig_type=std_logic lab=DEC2}
N 390 -300 370 -300 {}
C {lab_pin.sym} 370 -300 0 0 {name=l8 sig_type=std_logic lab=TRY1}
N 390 -280 370 -280 {}
C {lab_pin.sym} 370 -280 0 0 {name=l9 sig_type=std_logic lab=DEC1}
N 390 -260 370 -260 {}
C {lab_pin.sym} 370 -260 0 0 {name=l10 sig_type=std_logic lab=TRY0}
N 390 -240 370 -240 {}
C {lab_pin.sym} 370 -240 0 0 {name=l11 sig_type=std_logic lab=DEC0}
N 610 -460 630 -460 {}
C {lab_pin.sym} 630 -460 0 1 {name=l12 sig_type=std_logic lab=D2}
N 610 -440 630 -440 {}
C {lab_pin.sym} 630 -440 0 1 {name=l13 sig_type=std_logic lab=D1}
N 610 -420 630 -420 {}
C {lab_pin.sym} 630 -420 0 1 {name=l14 sig_type=std_logic lab=D0}
N 390 -440 370 -440 {}
C {lab_pin.sym} 370 -440 0 0 {name=l15 sig_type=std_logic lab=0}
C {vsource.sym} -300 200 0 0 {name=V1 value="1.8" savecurrent=false}
N -300 170 -300 150 {}
C {lab_pin.sym} -300 150 0 0 {name=l16 sig_type=std_logic lab=VCC}
N -300 230 -300 250 {}
C {lab_pin.sym} -300 250 0 0 {name=l17 sig_type=std_logic lab=0}
C {vsource.sym} -130 200 0 0 {name=V2 value="0.8" savecurrent=false}
N -130 170 -130 150 {}
C {lab_pin.sym} -130 150 0 0 {name=l18 sig_type=std_logic lab=VREF}
N -130 230 -130 250 {}
C {lab_pin.sym} -130 250 0 0 {name=l19 sig_type=std_logic lab=0}
C {vsource.sym} 40 200 0 0 {name=V5 value="PWL(0 0.05 102n 0.05 102.5n 0.15 202n 0.15 202.5n 0.25 302n 0.25 302.5n 0.35 402n 0.35 402.5n 0.45 502n 0.45 502.5n 0.55 602n 0.55 602.5n 0.65 702n 0.65 702.5n 0.75)" savecurrent=false}
N 40 170 40 150 {}
C {lab_pin.sym} 40 150 0 0 {name=l20 sig_type=std_logic lab=VIN}
N 40 230 40 250 {}
C {lab_pin.sym} 40 250 0 0 {name=l21 sig_type=std_logic lab=0}
C {vsource.sym} 210 200 0 0 {name=V6 value="PWL(0 0 24n 0 24.1n 1.8 28n 1.8 28.1n 0 49n 0 49.1n 1.8 53n 1.8 53.1n 0 74n 0 74.1n 1.8 78n 1.8 78.1n 0 100n 0) r=0" savecurrent=false}
N 210 170 210 150 {}
C {lab_pin.sym} 210 150 0 0 {name=l22 sig_type=std_logic lab=CLK}
N 210 230 210 250 {}
C {lab_pin.sym} 210 250 0 0 {name=l23 sig_type=std_logic lab=0}
C {vsource.sym} 380 200 0 0 {name=V7 value="PULSE(0 1.8 0n 0.1n 0.1n 9.9n 100n)" savecurrent=false}
N 380 170 380 150 {}
C {lab_pin.sym} 380 150 0 0 {name=l24 sig_type=std_logic lab=RST}
N 380 230 380 250 {}
C {lab_pin.sym} 380 250 0 0 {name=l25 sig_type=std_logic lab=0}
C {vsource.sym} 550 200 0 0 {name=V8 value="PULSE(0 1.8 12n 0.1n 0.1n 9.9n 100n)" savecurrent=false}
N 550 170 550 150 {}
C {lab_pin.sym} 550 150 0 0 {name=l26 sig_type=std_logic lab=TRY2}
N 550 230 550 250 {}
C {lab_pin.sym} 550 250 0 0 {name=l27 sig_type=std_logic lab=0}
C {vsource.sym} 720 200 0 0 {name=V9 value="PULSE(0 1.8 30n 0.1n 0.1n 4.9n 100n)" savecurrent=false}
N 720 170 720 150 {}
C {lab_pin.sym} 720 150 0 0 {name=l28 sig_type=std_logic lab=DEC2}
N 720 230 720 250 {}
C {lab_pin.sym} 720 250 0 0 {name=l29 sig_type=std_logic lab=0}
C {vsource.sym} -300 360 0 0 {name=V10 value="PULSE(0 1.8 37n 0.1n 0.1n 9.9n 100n)" savecurrent=false}
N -300 330 -300 310 {}
C {lab_pin.sym} -300 310 0 0 {name=l30 sig_type=std_logic lab=TRY1}
N -300 390 -300 410 {}
C {lab_pin.sym} -300 410 0 0 {name=l31 sig_type=std_logic lab=0}
C {vsource.sym} -130 360 0 0 {name=V11 value="PULSE(0 1.8 55n 0.1n 0.1n 4.9n 100n)" savecurrent=false}
N -130 330 -130 310 {}
C {lab_pin.sym} -130 310 0 0 {name=l32 sig_type=std_logic lab=DEC1}
N -130 390 -130 410 {}
C {lab_pin.sym} -130 410 0 0 {name=l33 sig_type=std_logic lab=0}
C {vsource.sym} 40 360 0 0 {name=V12 value="PULSE(0 1.8 62n 0.1n 0.1n 9.9n 100n)" savecurrent=false}
N 40 330 40 310 {}
C {lab_pin.sym} 40 310 0 0 {name=l34 sig_type=std_logic lab=TRY0}
N 40 390 40 410 {}
C {lab_pin.sym} 40 410 0 0 {name=l35 sig_type=std_logic lab=0}
C {vsource.sym} 210 360 0 0 {name=V13 value="PULSE(0 1.8 80n 0.1n 0.1n 4.9n 100n)" savecurrent=false}
N 210 330 210 310 {}
C {lab_pin.sym} 210 310 0 0 {name=l36 sig_type=std_logic lab=DEC0}
N 210 390 210 410 {}
C {lab_pin.sym} 210 410 0 0 {name=l37 sig_type=std_logic lab=0}
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
