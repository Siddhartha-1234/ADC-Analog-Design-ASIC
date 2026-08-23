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
C {vsource.sym} -910 80 0 0 {name=V2 value="PULSE(0 1.8 1ns 1ns 1ns 5ns 10ns)" savecurrent=false}
C {lab_pin.sym} -850 -70 0 0 {name=p1 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} -910 50 0 0 {name=p2 sig_type=std_logic lab=VIN}
C {gnd.sym} -850 -10 0 0 {name=l2 lab=GND}
C {gnd.sym} -910 110 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -480 -90 1 0 {name=p3 sig_type=std_logic lab=VDD
}
C {lab_pin.sym} -570 -10 0 0 {name=p4 sig_type=std_logic lab=VIN}
