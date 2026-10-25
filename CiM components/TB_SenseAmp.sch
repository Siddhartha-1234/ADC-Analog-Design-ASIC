v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {REF_IN = 0.9 V, SAEN period 50 ns (precharge, then 20 ns evaluate), BL_IN changed only while SAEN is low.
BL_IN - REF_IN per cycle: +50 mV, -50 mV, +10 mV, -10 mV, +1 mV, -1 mV
Expected OUT at end of each evaluate (out1..out6): high, low, high, low, high, low  (the 1 mV cycles test the resolution/offset limit)} 400 -140 0 0 0.3 0.3 {}
C {/home/ttuser/Documents/ADCAnalogDesign/CiM components/sense_amp.sym} 400 -300 0 0 {name=x1}
C {lab_pin.sym} 300 -340 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 300 -320 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 300 -300 0 0 {name=p3 sig_type=std_logic lab=SAEN}
C {lab_pin.sym} 300 -280 0 0 {name=p4 sig_type=std_logic lab=BL_IN}
C {lab_pin.sym} 300 -260 0 0 {name=p5 sig_type=std_logic lab=REF_IN}
C {lab_pin.sym} 500 -300 0 1 {name=p6 sig_type=std_logic lab=OUT}
C {capa.sym} 640 -250 0 0 {name=CL m=1 value=10f footprint=1206 device="ceramic capacitor"}
C {lab_pin.sym} 640 -280 0 1 {name=p7 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 640 -220 0 1 {name=p8 sig_type=std_logic lab=0}
C {vsource.sym} 100 100 0 0 {name=V1 value=1.8}
C {lab_pin.sym} 100 70 0 0 {name=p9 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 100 130 0 0 {name=p10 sig_type=std_logic lab=0}
C {vsource.sym} 260 100 0 0 {name=V2 value=0}
C {lab_pin.sym} 260 70 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 260 130 0 0 {name=p12 sig_type=std_logic lab=0}
C {vsource.sym} 420 100 0 0 {name=V3 value="PULSE(0 1.8 25n 0.1n 0.1n 20n 50n)"}
C {lab_pin.sym} 420 70 0 0 {name=p13 sig_type=std_logic lab=SAEN}
C {lab_pin.sym} 420 130 0 0 {name=p14 sig_type=std_logic lab=0}
C {vsource.sym} 580 100 0 0 {name=V4 value="PWL(0 0.95 60n 0.95 61n 0.85 110n 0.85 111n 0.91 160n 0.91 161n 0.89 210n 0.89 211n 0.901 260n 0.901 261n 0.899 300n 0.899)"}
C {lab_pin.sym} 580 70 0 0 {name=p15 sig_type=std_logic lab=BL_IN}
C {lab_pin.sym} 580 130 0 0 {name=p16 sig_type=std_logic lab=0}
C {vsource.sym} 740 100 0 0 {name=V5 value=0.9}
C {lab_pin.sym} 740 70 0 0 {name=p17 sig_type=std_logic lab=REF_IN}
C {lab_pin.sym} 740 130 0 0 {name=p18 sig_type=std_logic lab=0}
C {code_shown.sym} -300 -760 0 0 {name=s1 only_toplevel=false value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt

.control
save all
tran 0.05n 300n
meas tran out1 find v(OUT) at=44n
meas tran out2 find v(OUT) at=94n
meas tran out3 find v(OUT) at=144n
meas tran out4 find v(OUT) at=194n
meas tran out5 find v(OUT) at=244n
meas tran out6 find v(OUT) at=294n
plot v(SAEN) v(BL_IN) v(REF_IN)
plot v(x1.OUTL) v(x1.OUTR) v(OUT)
plot v(x1.TAIL) v(x1.NA) v(x1.NB)
.endc
"}
