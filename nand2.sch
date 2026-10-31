v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {2-input NAND, Y = not(A.B).  PMOS W=2 in parallel, NMOS W=2 in series (L=0.15).} -400 -640 0 0 0.3 0.3 {}
N 20 -60 20 -30 {}
N 20 30 20 60 {}
N -60 0 -20 0 {}
N 20 0 60 0 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 0 0 0 0 {name=M1
L=0.15
W=2
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
C {lab_pin.sym} 20 -60 0 0 {name=l1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 20 60 0 0 {name=l2 sig_type=std_logic lab=Y}
C {lab_pin.sym} -60 0 0 0 {name=l3 sig_type=std_logic lab=A}
C {lab_pin.sym} 60 0 0 1 {name=l4 sig_type=std_logic lab=VCC}
N 320 -60 320 -30 {}
N 320 30 320 60 {}
N 240 0 280 0 {}
N 320 0 360 0 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 300 0 0 0 {name=M2
L=0.15
W=2
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
C {lab_pin.sym} 320 -60 0 0 {name=l5 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 320 60 0 0 {name=l6 sig_type=std_logic lab=Y}
C {lab_pin.sym} 240 0 0 0 {name=l7 sig_type=std_logic lab=B}
C {lab_pin.sym} 360 0 0 1 {name=l8 sig_type=std_logic lab=VCC}
N 20 140 20 170 {}
N 20 230 20 260 {}
N -60 200 -20 200 {}
N 20 200 60 200 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 200 0 0 {name=M3
L=0.15
W=2
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
C {lab_pin.sym} 20 140 0 0 {name=l9 sig_type=std_logic lab=Y}
C {lab_pin.sym} 20 260 0 0 {name=l10 sig_type=std_logic lab=N1}
C {lab_pin.sym} -60 200 0 0 {name=l11 sig_type=std_logic lab=A}
C {lab_pin.sym} 60 200 0 1 {name=l12 sig_type=std_logic lab=VSS}
N 20 340 20 370 {}
N 20 430 20 460 {}
N -60 400 -20 400 {}
N 20 400 60 400 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 400 0 0 {name=M4
L=0.15
W=2
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
C {lab_pin.sym} 20 340 0 0 {name=l13 sig_type=std_logic lab=N1}
C {lab_pin.sym} 20 460 0 0 {name=l14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -60 400 0 0 {name=l15 sig_type=std_logic lab=B}
C {lab_pin.sym} 60 400 0 1 {name=l16 sig_type=std_logic lab=VSS}
C {ipin.sym} -400 -500 0 0 {name=p1 lab=A}
C {ipin.sym} -400 -470 0 0 {name=p2 lab=B}
C {opin.sym} -400 -440 0 0 {name=p3 lab=Y}
C {iopin.sym} -400 -410 0 0 {name=p4 lab=VCC}
C {iopin.sym} -400 -380 0 0 {name=p5 lab=VSS}
