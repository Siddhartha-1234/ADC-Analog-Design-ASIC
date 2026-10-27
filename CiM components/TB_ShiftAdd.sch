v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Ideal expectation at the end of each SHARE phase (VREF=0.6 V, C0=C, C1=2C):
cycle 1: IN0=1.2, IN1=0.9 -> SUM = 1.0 V
cycle 2: IN0=0.9, IN1=1.2 -> SUM = 1.1 V
cycle 3: IN0=IN1=0.3 -> SUM = 0.3 V
Measured values (sum1..sum3) differ slightly because of CL, switch charge injection and parasitics.} 400 -140 0 0 0.3 0.3 {}
C {/home/ttuser/Documents/ADCAnalogDesign/CiM components/shift_add_2col.sym} 400 -300 0 0 {name=x1}
C {lab_pin.sym} 300 -380 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 300 -360 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 300 -340 0 0 {name=p3 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 300 -320 0 0 {name=p4 sig_type=std_logic lab=IN0}
C {lab_pin.sym} 300 -300 0 0 {name=p5 sig_type=std_logic lab=IN1}
C {lab_pin.sym} 300 -280 0 0 {name=p6 sig_type=std_logic lab=RST}
C {lab_pin.sym} 300 -260 0 0 {name=p7 sig_type=std_logic lab=RST_N}
C {lab_pin.sym} 300 -240 0 0 {name=p8 sig_type=std_logic lab=SHARE}
C {lab_pin.sym} 300 -220 0 0 {name=p9 sig_type=std_logic lab=SHARE_N}
C {lab_pin.sym} 500 -300 0 1 {name=p10 sig_type=std_logic lab=SUM}
C {capa.sym} 640 -250 0 0 {name=CL m=1 value=20f footprint=1206 device="ceramic capacitor"}
C {lab_pin.sym} 640 -280 0 1 {name=p11 sig_type=std_logic lab=SUM}
C {lab_pin.sym} 640 -220 0 1 {name=p12 sig_type=std_logic lab=0}
C {vsource.sym} 100 100 0 0 {name=V1 value=1.8}
C {lab_pin.sym} 100 70 0 0 {name=p13 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 100 130 0 0 {name=p14 sig_type=std_logic lab=0}
C {vsource.sym} 260 100 0 0 {name=V2 value=0}
C {lab_pin.sym} 260 70 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 260 130 0 0 {name=p16 sig_type=std_logic lab=0}
C {vsource.sym} 420 100 0 0 {name=V3 value=0}
C {lab_pin.sym} 420 70 0 0 {name=p17 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 420 130 0 0 {name=p18 sig_type=std_logic lab=0}
C {vsource.sym} 500 20 0 0 {name=V4 value="PWL(0 1.2 300n 1.2 310n 0.9 700n 0.9 710n 0.3 1.2u 0.3)"}
C {lab_pin.sym} 500 -10 0 0 {name=p19 sig_type=std_logic lab=IN0}
C {lab_pin.sym} 500 50 0 0 {name=p20 sig_type=std_logic lab=0}
C {vsource.sym} 560 150 0 0 {name=V5 value="PWL(0 0.9 300n 0.9 310n 1.2 700n 1.2 710n 0.3 1.2u 0.3)"}
C {lab_pin.sym} 560 120 0 0 {name=p21 sig_type=std_logic lab=IN1}
C {lab_pin.sym} 560 180 0 0 {name=p22 sig_type=std_logic lab=0}
C {vsource.sym} 760 90 0 0 {name=V6 value="PULSE(1.8 0 100n 1n 1n 298n 400n)"}
C {lab_pin.sym} 760 60 0 0 {name=p23 sig_type=std_logic lab=RST}
C {lab_pin.sym} 760 120 0 0 {name=p24 sig_type=std_logic lab=0}
C {vsource.sym} 970 20 0 0 {name=V7 value="PULSE(0 1.8 100n 1n 1n 298n 400n)"}
C {lab_pin.sym} 970 -10 0 0 {name=p25 sig_type=std_logic lab=RST_N}
C {lab_pin.sym} 970 50 0 0 {name=p26 sig_type=std_logic lab=0}
C {vsource.sym} 1110 160 0 0 {name=V8 value="PULSE(0 1.8 150n 1n 1n 100n 400n)"}
C {lab_pin.sym} 1110 130 0 0 {name=p27 sig_type=std_logic lab=SHARE}
C {lab_pin.sym} 1110 190 0 0 {name=p28 sig_type=std_logic lab=0}
C {vsource.sym} 1380 100 0 0 {name=V9 value="PULSE(1.8 0 150n 1n 1n 100n 400n)"}
C {lab_pin.sym} 1380 70 0 0 {name=p29 sig_type=std_logic lab=SHARE_N}
C {lab_pin.sym} 1380 130 0 0 {name=p30 sig_type=std_logic lab=0}
C {code_shown.sym} -300 -760 0 0 {name=s1 only_toplevel=false value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt

.control
save all
tran 0.1n 1.2u
meas tran sum1 find v(SUM) at=245n
meas tran sum2 find v(SUM) at=645n
meas tran sum3 find v(SUM) at=1045n
plot v(RST) v(SHARE)
plot v(IN0) v(IN1) v(SUM)
plot v(x1.BP0) v(x1.BP1) v(SUM)
.endc
"}
