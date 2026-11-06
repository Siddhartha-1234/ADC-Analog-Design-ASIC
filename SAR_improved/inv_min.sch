v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {inv_min: minimum-size inverter (PMOS 0.84/0.15, NMOS 0.42/0.15).  Same symbol and pins as inverter.sym.} -400 -1000 0 0 0.3 0.3 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 200 -100 0 0 {name=M1
L=0.15
W=0.84
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
N 220 -130 220 -150 {}
C {lab_pin.sym} 220 -150 0 0 {name=l1 sig_type=std_logic lab=VDD}
N 220 -70 220 -50 {}
C {lab_pin.sym} 220 -50 0 0 {name=l2 sig_type=std_logic lab=out}
N 180 -100 160 -100 {}
C {lab_pin.sym} 160 -100 0 0 {name=l3 sig_type=std_logic lab=IN}
N 220 -100 260 -100 {}
C {lab_pin.sym} 260 -100 0 1 {name=l4 sig_type=std_logic lab=VDD}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 200 100 0 0 {name=M2
L=0.15
W=0.42
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
N 220 70 220 50 {}
C {lab_pin.sym} 220 50 0 0 {name=l5 sig_type=std_logic lab=out}
N 220 130 220 150 {}
C {lab_pin.sym} 220 150 0 0 {name=l6 sig_type=std_logic lab=VSS}
N 180 100 160 100 {}
C {lab_pin.sym} 160 100 0 0 {name=l7 sig_type=std_logic lab=IN}
N 220 100 260 100 {}
C {lab_pin.sym} 260 100 0 1 {name=l8 sig_type=std_logic lab=VSS}
C {ipin.sym} -400 -700 0 0 {name=p1 lab=IN}
C {opin.sym} -400 -670 0 0 {name=p2 lab=out}
C {iopin.sym} -400 -640 0 0 {name=p3 lab=VDD}
C {iopin.sym} -400 -610 0 0 {name=p4 lab=VSS}
