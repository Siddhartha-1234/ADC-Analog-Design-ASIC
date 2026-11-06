v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {TB_SAR3_v1: step-1 SAR (unit capacitor 8 x 8 um).  Same phases as TB_SAR3 scaled to 2000 ns per conversion.
VIN = 0.05, 0.15 ... 0.75 V (middle of each code), changing during RST -> expected codes 0 ... 7 (code1 ... code8).
Energy per conversion = energy from VCC + VREF + ADJ over the 8 conversions / 8.  ADJ = 0.75 V as in your SAR test.} -400 -1000 0 0 0.3 0.3 {}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/sar_adc3_v1.sym} 500 -350 0 0 {name=x1}
N 390 -470 370 -470 {}
C {lab_pin.sym} 370 -470 0 0 {name=l1 sig_type=std_logic lab=VCC}
N 390 -430 370 -430 {}
C {lab_pin.sym} 370 -430 0 0 {name=l2 sig_type=std_logic lab=VREF}
N 390 -410 370 -410 {}
C {lab_pin.sym} 370 -410 0 0 {name=l3 sig_type=std_logic lab=VIN}
N 390 -390 370 -390 {}
C {lab_pin.sym} 370 -390 0 0 {name=l4 sig_type=std_logic lab=EN_N}
N 390 -370 370 -370 {}
C {lab_pin.sym} 370 -370 0 0 {name=l5 sig_type=std_logic lab=ADJ}
N 390 -350 370 -350 {}
C {lab_pin.sym} 370 -350 0 0 {name=l6 sig_type=std_logic lab=RST}
N 390 -330 370 -330 {}
C {lab_pin.sym} 370 -330 0 0 {name=l7 sig_type=std_logic lab=TRY2}
N 390 -310 370 -310 {}
C {lab_pin.sym} 370 -310 0 0 {name=l8 sig_type=std_logic lab=DEC2}
N 390 -290 370 -290 {}
C {lab_pin.sym} 370 -290 0 0 {name=l9 sig_type=std_logic lab=TRY1}
N 390 -270 370 -270 {}
C {lab_pin.sym} 370 -270 0 0 {name=l10 sig_type=std_logic lab=DEC1}
N 390 -250 370 -250 {}
C {lab_pin.sym} 370 -250 0 0 {name=l11 sig_type=std_logic lab=TRY0}
N 390 -230 370 -230 {}
C {lab_pin.sym} 370 -230 0 0 {name=l12 sig_type=std_logic lab=DEC0}
N 610 -470 630 -470 {}
C {lab_pin.sym} 630 -470 0 1 {name=l13 sig_type=std_logic lab=D2}
N 610 -450 630 -450 {}
C {lab_pin.sym} 630 -450 0 1 {name=l14 sig_type=std_logic lab=D1}
N 610 -430 630 -430 {}
C {lab_pin.sym} 630 -430 0 1 {name=l15 sig_type=std_logic lab=D0}
N 390 -450 370 -450 {}
C {lab_pin.sym} 370 -450 0 0 {name=l16 sig_type=std_logic lab=0}
C {vsource.sym} -300 200 0 0 {name=V1 value="1.8" savecurrent=false}
N -300 170 -300 150 {}
C {lab_pin.sym} -300 150 0 0 {name=l17 sig_type=std_logic lab=VCC}
N -300 230 -300 250 {}
C {lab_pin.sym} -300 250 0 0 {name=l18 sig_type=std_logic lab=0}
C {vsource.sym} -130 200 0 0 {name=V2 value="0.8" savecurrent=false}
N -130 170 -130 150 {}
C {lab_pin.sym} -130 150 0 0 {name=l19 sig_type=std_logic lab=VREF}
N -130 230 -130 250 {}
C {lab_pin.sym} -130 250 0 0 {name=l20 sig_type=std_logic lab=0}
C {vsource.sym} 40 200 0 0 {name=V3 value="0" savecurrent=false}
N 40 170 40 150 {}
C {lab_pin.sym} 40 150 0 0 {name=l21 sig_type=std_logic lab=EN_N}
N 40 230 40 250 {}
C {lab_pin.sym} 40 250 0 0 {name=l22 sig_type=std_logic lab=0}
C {vsource.sym} 210 200 0 0 {name=V4 value="0.75" savecurrent=false}
N 210 170 210 150 {}
C {lab_pin.sym} 210 150 0 0 {name=l23 sig_type=std_logic lab=ADJ}
N 210 230 210 250 {}
C {lab_pin.sym} 210 250 0 0 {name=l24 sig_type=std_logic lab=0}
C {vsource.sym} 380 200 0 0 {name=V5 value="PWL(0 0.05 2015n 0.05 2015.5n 0.15 4015n 0.15 4015.5n 0.25 6015n 0.25 6015.5n 0.35 8015n 0.35 8015.5n 0.45 10015n 0.45 10015.5n 0.55 12015n 0.55 12015.5n 0.65 14015n 0.65 14015.5n 0.75)" savecurrent=false}
N 380 170 380 150 {}
C {lab_pin.sym} 380 150 0 0 {name=l25 sig_type=std_logic lab=VIN}
N 380 230 380 250 {}
C {lab_pin.sym} 380 250 0 0 {name=l26 sig_type=std_logic lab=0}
C {vsource.sym} 550 200 0 0 {name=V6 value="PULSE(1.8 0 100n 0.1n 0.1n 1899.8n 2000n)" savecurrent=false}
N 550 170 550 150 {}
C {lab_pin.sym} 550 150 0 0 {name=l27 sig_type=std_logic lab=RST}
N 550 230 550 250 {}
C {lab_pin.sym} 550 250 0 0 {name=l28 sig_type=std_logic lab=0}
C {vsource.sym} 720 200 0 0 {name=V7 value="PULSE(0 1.8 150n 0.1n 0.1n 249.9n 2000n)" savecurrent=false}
N 720 170 720 150 {}
C {lab_pin.sym} 720 150 0 0 {name=l29 sig_type=std_logic lab=TRY2}
N 720 230 720 250 {}
C {lab_pin.sym} 720 250 0 0 {name=l30 sig_type=std_logic lab=0}
C {vsource.sym} -300 360 0 0 {name=V8 value="PULSE(0 1.8 450n 0.1n 0.1n 99.9n 2000n)" savecurrent=false}
N -300 330 -300 310 {}
C {lab_pin.sym} -300 310 0 0 {name=l31 sig_type=std_logic lab=DEC2}
N -300 390 -300 410 {}
C {lab_pin.sym} -300 410 0 0 {name=l32 sig_type=std_logic lab=0}
C {vsource.sym} -130 360 0 0 {name=V9 value="PULSE(0 1.8 600n 0.1n 0.1n 249.9n 2000n)" savecurrent=false}
N -130 330 -130 310 {}
C {lab_pin.sym} -130 310 0 0 {name=l33 sig_type=std_logic lab=TRY1}
N -130 390 -130 410 {}
C {lab_pin.sym} -130 410 0 0 {name=l34 sig_type=std_logic lab=0}
C {vsource.sym} 40 360 0 0 {name=V10 value="PULSE(0 1.8 900n 0.1n 0.1n 99.9n 2000n)" savecurrent=false}
N 40 330 40 310 {}
C {lab_pin.sym} 40 310 0 0 {name=l35 sig_type=std_logic lab=DEC1}
N 40 390 40 410 {}
C {lab_pin.sym} 40 410 0 0 {name=l36 sig_type=std_logic lab=0}
C {vsource.sym} 210 360 0 0 {name=V11 value="PULSE(0 1.8 1050n 0.1n 0.1n 249.9n 2000n)" savecurrent=false}
N 210 330 210 310 {}
C {lab_pin.sym} 210 310 0 0 {name=l37 sig_type=std_logic lab=TRY0}
N 210 390 210 410 {}
C {lab_pin.sym} 210 410 0 0 {name=l38 sig_type=std_logic lab=0}
C {vsource.sym} 380 360 0 0 {name=V12 value="PULSE(0 1.8 1350n 0.1n 0.1n 99.9n 2000n)" savecurrent=false}
N 380 330 380 310 {}
C {lab_pin.sym} 380 310 0 0 {name=l39 sig_type=std_logic lab=DEC0}
N 380 390 380 410 {}
C {lab_pin.sym} 380 410 0 0 {name=l40 sig_type=std_logic lab=0}
C {code_shown.sym} -900 -1050 0 0 {name=s1 only_toplevel=false value=".lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.option method=gear reltol=1e-4
.control
save all
tran 0.5n 16000n
let code = 4*ceil((v(D2)-0.9)/10) + 2*ceil((v(D1)-0.9)/10) + ceil((v(D0)-0.9)/10)
meas tran code1 find code at=1600n
meas tran code2 find code at=3600n
meas tran code3 find code at=5600n
meas tran code4 find code at=7600n
meas tran code5 find code at=9600n
meas tran code6 find code at=11600n
meas tran code7 find code at=13600n
meas tran code8 find code at=15600n
let ptot = 1.8*(-i(V1)) + 0.8*(-i(V2)) + 0.75*(-i(V4))
meas tran etot integ ptot from=0 to=16000n
let e_conv_pJ = etot/8*1e12
let p_uW = etot/16000e-9*1e6
print e_conv_pJ p_uW
plot v(VIN) v(x1.REF)
plot v(D2) v(D1)+2 v(D0)+4
plot code v(VIN)
.endc"}
