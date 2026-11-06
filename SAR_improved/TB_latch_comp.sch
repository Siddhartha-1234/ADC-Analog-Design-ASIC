v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {TB_latch_comp: two copies of the latch comparator, CLK = 100 MHz (evaluate while CLK = 1), INN = 0.4 V.
x1: INP ramps 0.38 -> 0.42 V over 2 us (0.2 mV per decision) -> offset = INP when OUT1 first goes high, minus 0.4 V.
x2: INP = 0.41 V (10 mV overdrive) -> decision time (CLK edge to Y at VDD/2) and energy per decision from its own supply VDD2.
Expected (tt): offset ~0 mV, decision ~0.54 ns, ~96 fJ per decision, no current between decisions.} 620 -660 0 0 0.3 0.3 {}
N 380 -390 400 -390 {
lab=VDD1}
N 380 -370 400 -370 {
lab=0}
N 380 -350 400 -350 {
lab=CLK}
N 380 -330 400 -330 {
lab=INP1}
N 380 -310 400 -310 {
lab=INN}
N 600 -390 620 -390 {
lab=OUT1}
N 600 -370 620 -370 {
lab=OUTB1}
N 780 -390 800 -390 {
lab=VDD2}
N 780 -370 800 -370 {
lab=0}
N 780 -350 800 -350 {
lab=CLK}
N 780 -330 800 -330 {
lab=INP2}
N 780 -310 800 -310 {
lab=INN}
N 1000 -390 1020 -390 {
lab=OUT2}
N 1000 -370 1020 -370 {
lab=OUTB2}
N -300 150 -300 170 {
lab=VDD1}
N -300 230 -300 250 {
lab=0}
N -130 150 -130 170 {
lab=VDD2}
N -130 230 -130 250 {
lab=0}
N 40 150 40 170 {
lab=CLK}
N 40 230 40 250 {
lab=0}
N 210 150 210 170 {
lab=INN}
N 210 230 210 250 {
lab=0}
N 380 150 380 170 {
lab=INP1}
N 380 230 380 250 {
lab=0}
N 550 150 550 170 {
lab=INP2}
N 550 230 550 250 {
lab=0}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/latch_comp.sym} 500 -350 0 0 {name=x1}
C {lab_pin.sym} 380 -390 0 0 {name=l1 sig_type=std_logic lab=VDD1}
C {lab_pin.sym} 380 -370 0 0 {name=l2 sig_type=std_logic lab=0}
C {lab_pin.sym} 380 -350 0 0 {name=l3 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 380 -330 0 0 {name=l4 sig_type=std_logic lab=INP1}
C {lab_pin.sym} 380 -310 0 0 {name=l5 sig_type=std_logic lab=INN}
C {lab_pin.sym} 620 -390 0 1 {name=l6 sig_type=std_logic lab=OUT1}
C {lab_pin.sym} 620 -370 0 1 {name=l7 sig_type=std_logic lab=OUTB1}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/latch_comp.sym} 900 -350 0 0 {name=x2}
C {lab_pin.sym} 780 -390 0 0 {name=l8 sig_type=std_logic lab=VDD2}
C {lab_pin.sym} 780 -370 0 0 {name=l9 sig_type=std_logic lab=0}
C {lab_pin.sym} 780 -350 0 0 {name=l10 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 780 -330 0 0 {name=l11 sig_type=std_logic lab=INP2}
C {lab_pin.sym} 780 -310 0 0 {name=l12 sig_type=std_logic lab=INN}
C {lab_pin.sym} 1020 -390 0 1 {name=l13 sig_type=std_logic lab=OUT2}
C {lab_pin.sym} 1020 -370 0 1 {name=l14 sig_type=std_logic lab=OUTB2}
C {vsource.sym} -300 200 0 0 {name=V1 value="1.8" savecurrent=false}
C {lab_pin.sym} -300 150 0 0 {name=l15 sig_type=std_logic lab=VDD1}
C {lab_pin.sym} -300 250 0 0 {name=l16 sig_type=std_logic lab=0}
C {vsource.sym} -130 200 0 0 {name=V2 value="1.8" savecurrent=false}
C {lab_pin.sym} -130 150 0 0 {name=l17 sig_type=std_logic lab=VDD2}
C {lab_pin.sym} -130 250 0 0 {name=l18 sig_type=std_logic lab=0}
C {vsource.sym} 40 200 0 0 {name=V3 value="PULSE(0 1.8 5n 50p 50p 4.95n 10n)" savecurrent=false}
C {lab_pin.sym} 40 150 0 0 {name=l19 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 40 250 0 0 {name=l20 sig_type=std_logic lab=0}
C {vsource.sym} 210 200 0 0 {name=V4 value="0.4" savecurrent=false}
C {lab_pin.sym} 210 150 0 0 {name=l21 sig_type=std_logic lab=INN}
C {lab_pin.sym} 210 250 0 0 {name=l22 sig_type=std_logic lab=0}
C {vsource.sym} 380 200 0 0 {name=V5 value="PWL(0 0.38 2u 0.42)" savecurrent=false}
C {lab_pin.sym} 380 150 0 0 {name=l23 sig_type=std_logic lab=INP1}
C {lab_pin.sym} 380 250 0 0 {name=l24 sig_type=std_logic lab=0}
C {vsource.sym} 550 200 0 0 {name=V6 value="0.41" savecurrent=false}
C {lab_pin.sym} 550 150 0 0 {name=l25 sig_type=std_logic lab=INP2}
C {lab_pin.sym} 550 250 0 0 {name=l26 sig_type=std_logic lab=0}
C {code_shown.sym} -450 -740 0 0 {name=s1 only_toplevel=false value=".lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.option method=gear reltol=1e-4
.control
save all
tran 10p 2u
* offset of x1: input where the decision changes (ramp 0.2 mV per clock)
meas tran vtrip find v(INP1) when v(OUT1)=0.9 rise=1 td=30n
let offset_mV = (vtrip - 0.4)*1000
print offset_mV
* decision time of x2 at the 10th clock edge
meas tran tck when v(CLK)=0.9 rise=10
meas tran ty when v(x2.Y)=0.9 rise=10
let tdecide_ps = (ty - tck)*1e12
print tdecide_ps
* energy per decision of x2: 100 clock cycles
let p2 = 1.8*(-i(V2))
meas tran e100 integ p2 from=5n to=1.005u
let e_fJ = e100/100*1e15
print e_fJ
plot v(CLK) v(x2.X)+2 v(x2.Y)+2 v(OUT2)+4 v(x2.P)+6 v(x2.Q)+8
plot v(INP1) v(INN)
plot v(OUT1)
.endc"}
