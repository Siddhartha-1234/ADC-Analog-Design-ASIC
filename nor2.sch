v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {2-input NOR, Y = not(A+B).  PMOS W=4 in series, NMOS W=1 in parallel (L=0.15).} -400 -640 0 0 0.3 0.3 {}
N 20 -60 20 -30 {}
N 20 30 20 60 {}
N -60 0 -20 0 {}
N 20 0 60 0 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 0 0 0 0 {name=M1
L=0.15
W=4
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
C {lab_pin.sym} 20 -60 0 0 {name=l17 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 20 60 0 0 {name=l18 sig_type=std_logic lab=P1}
C {lab_pin.sym} -60 0 0 0 {name=l19 sig_type=std_logic lab=A}
C {lab_pin.sym} 60 0 0 1 {name=l20 sig_type=std_logic lab=VCC}
N 20 140 20 170 {}
N 20 230 20 260 {}
N -60 200 -20 200 {}
N 20 200 60 200 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 0 200 0 0 {name=M2
L=0.15
W=4
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
C {lab_pin.sym} 20 140 0 0 {name=l21 sig_type=std_logic lab=P1}
C {lab_pin.sym} 20 260 0 0 {name=l22 sig_type=std_logic lab=Y}
C {lab_pin.sym} -60 200 0 0 {name=l23 sig_type=std_logic lab=B}
C {lab_pin.sym} 60 200 0 1 {name=l24 sig_type=std_logic lab=VCC}
N 20 340 20 370 {}
N 20 430 20 460 {}
N -60 400 -20 400 {}
N 20 400 60 400 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 400 0 0 {name=M3
L=0.15
W=1
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
C {lab_pin.sym} 20 340 0 0 {name=l25 sig_type=std_logic lab=Y}
C {lab_pin.sym} 20 460 0 0 {name=l26 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -60 400 0 0 {name=l27 sig_type=std_logic lab=A}
C {lab_pin.sym} 60 400 0 1 {name=l28 sig_type=std_logic lab=VSS}
N 320 340 320 370 {}
N 320 430 320 460 {}
N 240 400 280 400 {}
N 320 400 360 400 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 300 400 0 0 {name=M4
L=0.15
W=1
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
C {lab_pin.sym} 320 340 0 0 {name=l29 sig_type=std_logic lab=Y}
C {lab_pin.sym} 320 460 0 0 {name=l30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 240 400 0 0 {name=l31 sig_type=std_logic lab=B}
C {lab_pin.sym} 360 400 0 1 {name=l32 sig_type=std_logic lab=VSS}
C {ipin.sym} -400 -500 0 0 {name=p1 lab=A}
C {ipin.sym} -400 -470 0 0 {name=p2 lab=B}
C {opin.sym} -400 -440 0 0 {name=p3 lab=Y}
C {iopin.sym} -400 -410 0 0 {name=p4 lab=VCC}
C {iopin.sym} -400 -380 0 0 {name=p5 lab=VSS}
