v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {2-column analog shift-add block (charge sharing), 
RST=1: SUM and both bottom plates tied to VREF.  SHARE=1: bottom plates driven by column voltages IN0 (LSB, C) and IN1 (MSB, 2C).
SUM = VREF + (C*(IN0-VREF) + 2C*(IN1-VREF)) / 3C   (SUM floats during SHARE; keep RST and SHARE non-overlapping)} -400 -600 0 0 0.3 0.3 {}
N 20 -330 120 -330 {}
N 120 -330 220 -330 {}
N 120 -360 120 -330 {}
N 20 -270 120 -270 {}
N 120 -270 220 -270 {}
N 120 -270 120 -240 {}
N 20 -300 60 -300 {}
N 220 -300 260 -300 {}
N 520 -330 620 -330 {}
N 620 -330 720 -330 {}
N 620 -360 620 -330 {}
N 520 -270 620 -270 {}
N 620 -270 720 -270 {}
N 620 -270 620 -240 {}
N 520 -300 560 -300 {}
N 720 -300 760 -300 {}
N 1020 -330 1120 -330 {}
N 1120 -330 1220 -330 {}
N 1120 -360 1120 -330 {}
N 1020 -270 1120 -270 {}
N 1120 -270 1220 -270 {}
N 1120 -270 1120 -240 {}
N 1020 -300 1060 -300 {}
N 1220 -300 1260 -300 {}
N 20 -130 120 -130 {}
N 120 -130 220 -130 {}
N 120 -160 120 -130 {}
N 20 -70 120 -70 {}
N 120 -70 220 -70 {}
N 120 -70 120 -40 {}
N 20 -100 60 -100 {}
N 220 -100 260 -100 {}
N 520 -130 620 -130 {}
N 620 -130 720 -130 {}
N 620 -160 620 -130 {}
N 520 -70 620 -70 {}
N 620 -70 720 -70 {}
N 620 -70 620 -40 {}
N 520 -100 560 -100 {}
N 720 -100 760 -100 {}
N 1000 -160 1000 -130 {}
N 1000 -70 1000 -40 {}
N 1200 -160 1200 -130 {}
N 1200 -70 1200 -40 {}
N 1400 -160 1400 -130 {}
N 1400 -70 1400 -40 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 -300 0 0 {name=M1
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 200 -300 0 0 {name=M2
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
C {lab_pin.sym} 120 -360 0 0 {name=p1 sig_type=std_logic lab=IN0}
C {lab_pin.sym} 120 -240 0 0 {name=p2 sig_type=std_logic lab=BP0}
C {lab_pin.sym} -20 -300 0 0 {name=p3 sig_type=std_logic lab=SHARE}
C {lab_pin.sym} 180 -300 0 0 {name=p4 sig_type=std_logic lab=SHARE_N}
C {lab_pin.sym} 60 -300 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 260 -300 0 1 {name=p6 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 500 -300 0 0 {name=M3
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 700 -300 0 0 {name=M4
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
C {lab_pin.sym} 620 -360 0 0 {name=p7 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 620 -240 0 0 {name=p8 sig_type=std_logic lab=BP0}
C {lab_pin.sym} 480 -300 0 0 {name=p9 sig_type=std_logic lab=RST}
C {lab_pin.sym} 680 -300 0 0 {name=p10 sig_type=std_logic lab=RST_N}
C {lab_pin.sym} 560 -300 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 760 -300 0 1 {name=p12 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1000 -300 0 0 {name=M5
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1200 -300 0 0 {name=M6
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
C {lab_pin.sym} 1120 -360 0 0 {name=p13 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1120 -240 0 0 {name=p14 sig_type=std_logic lab=SUM}
C {lab_pin.sym} 980 -300 0 0 {name=p15 sig_type=std_logic lab=RST}
C {lab_pin.sym} 1180 -300 0 0 {name=p16 sig_type=std_logic lab=RST_N}
C {lab_pin.sym} 1060 -300 0 1 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1260 -300 0 1 {name=p18 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 -100 0 0 {name=M7
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 200 -100 0 0 {name=M8
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
C {lab_pin.sym} 120 -160 0 0 {name=p19 sig_type=std_logic lab=IN1}
C {lab_pin.sym} 120 -40 0 0 {name=p20 sig_type=std_logic lab=BP1}
C {lab_pin.sym} -20 -100 0 0 {name=p21 sig_type=std_logic lab=SHARE}
C {lab_pin.sym} 180 -100 0 0 {name=p22 sig_type=std_logic lab=SHARE_N}
C {lab_pin.sym} 60 -100 0 1 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 260 -100 0 1 {name=p24 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 500 -100 0 0 {name=M9
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 700 -100 0 0 {name=M10
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
C {lab_pin.sym} 620 -160 0 0 {name=p25 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 620 -40 0 0 {name=p26 sig_type=std_logic lab=BP1}
C {lab_pin.sym} 480 -100 0 0 {name=p27 sig_type=std_logic lab=RST}
C {lab_pin.sym} 680 -100 0 0 {name=p28 sig_type=std_logic lab=RST_N}
C {lab_pin.sym} 560 -100 0 1 {name=p29 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 760 -100 0 1 {name=p30 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1000 -100 0 0 {name=C0 model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {lab_pin.sym} 1000 -160 0 0 {name=p31 sig_type=std_logic lab=SUM}
C {lab_pin.sym} 1000 -40 0 0 {name=p32 sig_type=std_logic lab=BP0}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1200 -100 0 0 {name=C1a model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {lab_pin.sym} 1200 -160 0 0 {name=p33 sig_type=std_logic lab=SUM}
C {lab_pin.sym} 1200 -40 0 0 {name=p34 sig_type=std_logic lab=BP1}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1400 -100 0 0 {name=C1b model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {lab_pin.sym} 1400 -160 0 0 {name=p35 sig_type=std_logic lab=SUM}
C {lab_pin.sym} 1400 -40 0 0 {name=p36 sig_type=std_logic lab=BP1}
C {ipin.sym} -400 -500 0 0 {name=i1 lab=VCC}
C {ipin.sym} -400 -470 0 0 {name=i2 lab=VSS}
C {ipin.sym} -400 -440 0 0 {name=i3 lab=VREF}
C {ipin.sym} -400 -410 0 0 {name=i4 lab=IN0}
C {ipin.sym} -400 -380 0 0 {name=i5 lab=IN1}
C {ipin.sym} -400 -350 0 0 {name=i6 lab=RST}
C {ipin.sym} -400 -320 0 0 {name=i7 lab=RST_N}
C {ipin.sym} -400 -290 0 0 {name=i8 lab=SHARE}
C {ipin.sym} -400 -260 0 0 {name=i9 lab=SHARE_N}
C {opin.sym} -400 -200 0 0 {name=o1 lab=SUM}
