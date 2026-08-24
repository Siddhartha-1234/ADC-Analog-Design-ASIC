v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -450 60 -450 100 {
lab=GND}
C {/home/ttuser/Documents/ADCAnalogDesign/inverter.sym} -420 10 0 0 {name=x1}
C {gnd.sym} -450 100 0 0 {name=l1 lab=GND}
C {vsource.sym} -850 -40 0 0 {name=V1 value=3 savecurrent=false}
C {lab_pin.sym} -850 -70 0 0 {name=p1 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} -910 50 0 0 {name=p2 sig_type=std_logic lab=VIN}
C {gnd.sym} -850 -10 0 0 {name=l2 lab=GND}
C {gnd.sym} -910 110 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -480 -90 1 0 {name=p3 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} -570 -10 0 0 {name=p4 sig_type=std_logic lab=VIN}
C {code_shown.sym} -700 170 0 0 {name=COMMANDS only_toplevel=false value="
.dc V2 0 2 0.01 V1 5 6 0.2
.print dc format=raw file=tb_inverter.raw" v(*) i(*)"}
C {vsource.sym} -910 80 0 0 {name=V2 value=3 savecurrent=false}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/corner.sym} -910 190 0 0 {name=CORNER only_toplevel=false corner=tt}
