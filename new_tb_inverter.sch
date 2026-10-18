v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -240 -60 -240 -30 {
lab=VDD}
N -240 30 -240 50 {
lab=GND}
N -170 150 -170 170 {
lab=GND}
N -170 70 -170 90 {
lab=Vin}
N -380 30 -380 60 {
lab=GND}
N -380 -80 -380 -30 {
lab=VSS}
N -200 -400 -200 -340 {
lab=VDD}
N -330 -260 -290 -260 {
lab=Vin}
N -170 -190 -170 -130 {
lab=VSS}
N -50 -250 -20 -250 {
lab=Vout}
C {lab_pin.sym} -200 -400 0 0 {name=p1 sig_type=std_logic lab=VDD

}
C {vsource.sym} -240 0 0 0 {name=VDD value=1.8 savecurrent=false}
C {lab_pin.sym} -240 -60 0 0 {name=p2 sig_type=std_logic lab=VDD

}
C {gnd.sym} -240 50 0 0 {name=l2 lab=GND}
C {vsource.sym} -170 120 0 0 {name=Vin value=0 savecurrent=false}
C {gnd.sym} -170 170 0 0 {name=l3 lab=GND}
C {code.sym} 140 -160 0 0 {name=s1 only_toplevel=false value=".lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt"}
C {code_shown.sym} 280 -140 0 0 {name=SPICE only_toplevel=false value=".control
save all
dc Vin -1.8 1.8 0.01
plot v(Vout) v(Vin)
.endc
"}
C {lab_pin.sym} -330 -260 0 0 {name=p3 sig_type=std_logic lab=Vin}
C {lab_pin.sym} -170 70 0 1 {name=p4 sig_type=std_logic lab=Vin}
C {lab_pin.sym} -20 -250 0 1 {name=p5 sig_type=std_logic lab=Vout}
C {vsource.sym} -380 0 0 0 {name=V1 value=-1.8 savecurrent=false}
C {lab_pin.sym} -380 -80 0 0 {name=p6 sig_type=std_logic lab=VSS

}
C {gnd.sym} -380 60 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -170 -130 0 0 {name=p7 sig_type=std_logic lab=VSS

}
C {/home/ttuser/Documents/ADCAnalogDesign/inverter.sym} -140 -240 0 0 {name=x1}
