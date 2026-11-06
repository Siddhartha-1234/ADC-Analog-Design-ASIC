v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {TB_SAR3_v3: final SAR (top-plate sampling, Vcm-based switching, latch comparator).  100 ns per conversion:
SMP (VIN sampled on VX, VCM on VR) -> C2 (decide D2) -> U2 (move cap A) -> C1 (decide D1) -> U1 (move cap B) -> C0 (decide D0).
CLK (comparator clock) pulses together with C2, C1 and C0.  The same design works down to 20 ns per conversion (scale every time by the same factor).
VIN = 0.05 ... 0.75 V -> expected codes 0 ... 7.  Energy per conversion = energy from VCC + VREF + VCM / 8 (energy taken from VIN printed separately).} 290 -630 0 0 0.3 0.3 {}
N 370 -460 390 -460 {
lab=VCC}
N 370 -420 390 -420 {
lab=VREF}
N 370 -400 390 -400 {
lab=VCM}
N 370 -380 390 -380 {
lab=VIN}
N 370 -360 390 -360 {
lab=SMP}
N 370 -340 390 -340 {
lab=CLK}
N 370 -320 390 -320 {
lab=C2}
N 370 -300 390 -300 {
lab=U2}
N 370 -280 390 -280 {
lab=C1}
N 370 -260 390 -260 {
lab=U1}
N 370 -240 390 -240 {
lab=C0}
N 610 -460 630 -460 {
lab=D2}
N 610 -440 630 -440 {
lab=D1}
N 610 -420 630 -420 {
lab=D0}
N 370 -440 390 -440 {
lab=0}
N -300 150 -300 170 {
lab=VCC}
N -300 230 -300 250 {
lab=0}
N -130 150 -130 170 {
lab=VREF}
N -130 230 -130 250 {
lab=0}
N 40 150 40 170 {
lab=VCM}
N 40 230 40 250 {
lab=0}
N 210 150 210 170 {
lab=VIN}
N 210 230 210 250 {
lab=0}
N 380 150 380 170 {
lab=CLK}
N 380 230 380 250 {
lab=0}
N 550 150 550 170 {
lab=SMP}
N 550 230 550 250 {
lab=0}
N 720 150 720 170 {
lab=C2}
N 720 230 720 250 {
lab=0}
N -300 310 -300 330 {
lab=U2}
N -300 390 -300 410 {
lab=0}
N -130 310 -130 330 {
lab=C1}
N -130 390 -130 410 {
lab=0}
N 40 310 40 330 {
lab=U1}
N 40 390 40 410 {
lab=0}
N 210 310 210 330 {
lab=C0}
N 210 390 210 410 {
lab=0}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/sar_adc3_v3.sym} 500 -350 0 0 {name=x1}
C {lab_pin.sym} 370 -460 0 0 {name=l1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 370 -420 0 0 {name=l2 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 370 -400 0 0 {name=l3 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 370 -380 0 0 {name=l4 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 370 -360 0 0 {name=l5 sig_type=std_logic lab=SMP}
C {lab_pin.sym} 370 -340 0 0 {name=l6 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 370 -320 0 0 {name=l7 sig_type=std_logic lab=C2}
C {lab_pin.sym} 370 -300 0 0 {name=l8 sig_type=std_logic lab=U2}
C {lab_pin.sym} 370 -280 0 0 {name=l9 sig_type=std_logic lab=C1}
C {lab_pin.sym} 370 -260 0 0 {name=l10 sig_type=std_logic lab=U1}
C {lab_pin.sym} 370 -240 0 0 {name=l11 sig_type=std_logic lab=C0}
C {lab_pin.sym} 630 -460 0 1 {name=l12 sig_type=std_logic lab=D2}
C {lab_pin.sym} 630 -440 0 1 {name=l13 sig_type=std_logic lab=D1}
C {lab_pin.sym} 630 -420 0 1 {name=l14 sig_type=std_logic lab=D0}
C {lab_pin.sym} 370 -440 0 0 {name=l15 sig_type=std_logic lab=0}
C {vsource.sym} -300 200 0 0 {name=V1 value="1.8" savecurrent=false}
C {lab_pin.sym} -300 150 0 0 {name=l16 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -300 250 0 0 {name=l17 sig_type=std_logic lab=0}
C {vsource.sym} -130 200 0 0 {name=V2 value="0.8" savecurrent=false}
C {lab_pin.sym} -130 150 0 0 {name=l18 sig_type=std_logic lab=VREF}
C {lab_pin.sym} -130 250 0 0 {name=l19 sig_type=std_logic lab=0}
C {vsource.sym} 40 200 0 0 {name=V3 value="0.4" savecurrent=false}
C {lab_pin.sym} 40 150 0 0 {name=l20 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 40 250 0 0 {name=l21 sig_type=std_logic lab=0}
C {vsource.sym} 210 200 0 0 {name=V5 value="PWL(0 0.05 102n 0.05 102.5n 0.15 202n 0.15 202.5n 0.25 302n 0.25 302.5n 0.35 402n 0.35 402.5n 0.45 502n 0.45 502.5n 0.55 602n 0.55 602.5n 0.65 702n 0.65 702.5n 0.75)" savecurrent=false}
C {lab_pin.sym} 210 150 0 0 {name=l22 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 210 250 0 0 {name=l23 sig_type=std_logic lab=0}
C {vsource.sym} 380 200 0 0 {name=V4 value="PWL(0 0 24n 0 24.1n 1.8 28n 1.8 28.1n 0 49n 0 49.1n 1.8 53n 1.8 53.1n 0 74n 0 74.1n 1.8 78n 1.8 78.1n 0 100n 0) r=0" savecurrent=false}
C {lab_pin.sym} 380 150 0 0 {name=l24 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 380 250 0 0 {name=l25 sig_type=std_logic lab=0}
C {vsource.sym} 550 200 0 0 {name=V6 value="PULSE(0 1.8 0n 0.1n 0.1n 19.9n 100n)" savecurrent=false}
C {lab_pin.sym} 550 150 0 0 {name=l26 sig_type=std_logic lab=SMP}
C {lab_pin.sym} 550 250 0 0 {name=l27 sig_type=std_logic lab=0}
C {vsource.sym} 720 200 0 0 {name=V7 value="PULSE(0 1.8 24n 0.1n 0.1n 3.9n 100n)" savecurrent=false}
C {lab_pin.sym} 720 150 0 0 {name=l28 sig_type=std_logic lab=C2}
C {lab_pin.sym} 720 250 0 0 {name=l29 sig_type=std_logic lab=0}
C {vsource.sym} -300 360 0 0 {name=V8 value="PULSE(0 1.8 30n 0.1n 0.1n 4.9n 100n)" savecurrent=false}
C {lab_pin.sym} -300 310 0 0 {name=l30 sig_type=std_logic lab=U2}
C {lab_pin.sym} -300 410 0 0 {name=l31 sig_type=std_logic lab=0}
C {vsource.sym} -130 360 0 0 {name=V9 value="PULSE(0 1.8 49n 0.1n 0.1n 3.9n 100n)" savecurrent=false}
C {lab_pin.sym} -130 310 0 0 {name=l32 sig_type=std_logic lab=C1}
C {lab_pin.sym} -130 410 0 0 {name=l33 sig_type=std_logic lab=0}
C {vsource.sym} 40 360 0 0 {name=V10 value="PULSE(0 1.8 55n 0.1n 0.1n 4.9n 100n)" savecurrent=false}
C {lab_pin.sym} 40 310 0 0 {name=l34 sig_type=std_logic lab=U1}
C {lab_pin.sym} 40 410 0 0 {name=l35 sig_type=std_logic lab=0}
C {vsource.sym} 210 360 0 0 {name=V11 value="PULSE(0 1.8 74n 0.1n 0.1n 3.9n 100n)" savecurrent=false}
C {lab_pin.sym} 210 310 0 0 {name=l36 sig_type=std_logic lab=C0}
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
let ptot = 1.8*(-i(V1)) + 0.8*(-i(V2)) + 0.4*(-i(V3))
let pin = v(VIN)*(-i(V5))
meas tran etot integ ptot from=0 to=800n
meas tran ein integ pin from=0 to=800n
let e_conv_pJ = etot/8*1e12
let e_from_vin_pJ = ein/8*1e12
let p_uW = etot/800e-9*1e6
print e_conv_pJ p_uW e_from_vin_pJ
plot v(VIN) v(x1.VX) v(x1.VR)
plot v(SMP) v(CLK)+2 v(x1.COM)+4
plot v(x1.x2.BPA) v(x1.x2.BPB)
plot v(D2) v(D1)+2 v(D0)+4
plot code v(VIN)
.endc"}
