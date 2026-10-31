v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -330 20 -360 {}
N 20 -270 20 -240 {}
N -20 -300 -60 -300 {}
N 20 -300 60 -300 {}
N 270 -330 270 -360 {}
N 270 -270 270 -240 {}
N 230 -300 190 -300 {}
N 270 -300 310 -300 {}
N 520 -330 520 -360 {}
N 520 -270 520 -240 {}
N 480 -300 440 -300 {}
N 520 -300 560 -300 {}
N 770 -330 770 -360 {}
N 770 -270 770 -240 {}
N 730 -300 690 -300 {}
N 770 -300 810 -300 {}
N 20 -80 20 -110 {}
N 20 -20 20 10 {}
N -20 -50 -60 -50 {}
N 20 -50 60 -50 {}
N 270 -80 270 -110 {}
N 270 -20 270 10 {}
N 230 -50 190 -50 {}
N 270 -50 310 -50 {}
N 520 -80 520 -110 {}
N 520 -20 520 10 {}
N 480 -50 440 -50 {}
N 520 -50 560 -50 {}
N 770 -80 770 -110 {}
N 770 -20 770 10 {}
N 730 -50 690 -50 {}
N 770 -50 810 -50 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 0 -300 0 0 {name=M1
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
C {lab_pin.sym} 20 -360 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 20 -240 0 0 {name=p2 sig_type=std_logic lab=Y}
C {lab_pin.sym} -60 -300 0 0 {name=p3 sig_type=std_logic lab=A}
C {lab_pin.sym} 60 -300 0 1 {name=p4 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 250 -300 0 0 {name=M2
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
C {lab_pin.sym} 270 -360 0 0 {name=p5 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 270 -240 0 0 {name=p6 sig_type=std_logic lab=Y}
C {lab_pin.sym} 190 -300 0 0 {name=p7 sig_type=std_logic lab=B}
C {lab_pin.sym} 310 -300 0 1 {name=p8 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 500 -300 0 0 {name=M3
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
C {lab_pin.sym} 520 -360 0 0 {name=p9 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 520 -240 0 0 {name=p10 sig_type=std_logic lab=Y}
C {lab_pin.sym} 440 -300 0 0 {name=p11 sig_type=std_logic lab=C}
C {lab_pin.sym} 560 -300 0 1 {name=p12 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 750 -300 0 0 {name=M4
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
C {lab_pin.sym} 770 -360 0 0 {name=p13 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 770 -240 0 0 {name=p14 sig_type=std_logic lab=Y}
C {lab_pin.sym} 690 -300 0 0 {name=p15 sig_type=std_logic lab=D}
C {lab_pin.sym} 810 -300 0 1 {name=p16 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 -50 0 0 {name=M5
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
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 20 -110 0 0 {name=p17 sig_type=std_logic lab=Y}
C {lab_pin.sym} 20 10 0 0 {name=p18 sig_type=std_logic lab=n1}
C {lab_pin.sym} -60 -50 0 0 {name=p19 sig_type=std_logic lab=A}
C {lab_pin.sym} 60 -50 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 250 -50 0 0 {name=M6
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
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 270 -110 0 0 {name=p21 sig_type=std_logic lab=n1}
C {lab_pin.sym} 270 10 0 0 {name=p22 sig_type=std_logic lab=n2}
C {lab_pin.sym} 190 -50 0 0 {name=p23 sig_type=std_logic lab=B}
C {lab_pin.sym} 310 -50 0 1 {name=p24 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 500 -50 0 0 {name=M7
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
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 520 -110 0 0 {name=p25 sig_type=std_logic lab=n2}
C {lab_pin.sym} 520 10 0 0 {name=p26 sig_type=std_logic lab=n3}
C {lab_pin.sym} 440 -50 0 0 {name=p27 sig_type=std_logic lab=C}
C {lab_pin.sym} 560 -50 0 1 {name=p28 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 750 -50 0 0 {name=M8
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
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 770 -110 0 0 {name=p29 sig_type=std_logic lab=n3}
C {lab_pin.sym} 770 10 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 690 -50 0 0 {name=p31 sig_type=std_logic lab=D}
C {lab_pin.sym} 810 -50 0 1 {name=p32 sig_type=std_logic lab=VSS}
C {ipin.sym} -400 -500 0 0 {name=i1 lab=VCC}
C {ipin.sym} -400 -470 0 0 {name=i2 lab=VSS}
C {ipin.sym} -400 -440 0 0 {name=i3 lab=A}
C {ipin.sym} -400 -410 0 0 {name=i4 lab=B}
C {ipin.sym} -400 -380 0 0 {name=i5 lab=C}
C {ipin.sym} -400 -350 0 0 {name=i6 lab=D}
C {opin.sym} -400 -290 0 0 {name=o1 lab=Y}
T {4-input NAND: Y = ~(A·B·C·D).  4 parallel PMOS to VCC, 4 series NMOS to VSS.  8 transistors.} -400 -600 0 0 0.3 0.3 {}
