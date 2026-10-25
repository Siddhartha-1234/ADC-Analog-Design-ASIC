v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 20 -430 20 -460 {}
N 20 -370 20 -340 {}
N -20 -400 -60 -400 {}
N 20 -400 60 -400 {}
N 320 -430 320 -460 {}
N 320 -370 320 -340 {}
N 280 -400 240 -400 {}
N 320 -400 360 -400 {}
N 620 -430 620 -460 {}
N 620 -370 620 -340 {}
N 580 -400 540 -400 {}
N 620 -400 660 -400 {}
N 920 -430 920 -460 {}
N 920 -370 920 -340 {}
N 880 -400 840 -400 {}
N 920 -400 960 -400 {}
N 20 -230 20 -260 {}
N 20 -170 20 -140 {}
N -20 -200 -60 -200 {}
N 20 -200 60 -200 {}
N 320 -230 320 -260 {}
N 320 -170 320 -140 {}
N 280 -200 240 -200 {}
N 320 -200 360 -200 {}
N 20 -30 20 -60 {}
N 20 30 20 60 {}
N -20 0 -60 0 {}
N 20 0 60 0 {}
N 320 -30 320 -60 {}
N 320 30 320 60 {}
N 280 0 240 0 {}
N 320 0 360 0 {}
N 620 -30 620 -60 {}
N 620 30 620 60 {}
N 580 0 540 0 {}
N 620 0 660 0 {}
N 20 220 20 190 {}
N 20 280 20 310 {}
N -20 250 -60 250 {}
N 20 250 60 250 {}
N 320 220 320 190 {}
N 320 280 320 310 {}
N 280 250 240 250 {}
N 320 250 360 250 {}
N 620 220 620 190 {}
N 620 280 620 310 {}
N 580 250 540 250 {}
N 620 250 660 250 {}
N 920 220 920 190 {}
N 920 280 920 310 {}
N 880 250 840 250 {}
N 920 250 960 250 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 0 -400 0 0 {name=M6
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
C {lab_pin.sym} 20 -460 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 20 -340 0 0 {name=p2 sig_type=std_logic lab=OUTL}
C {lab_pin.sym} -60 -400 0 0 {name=p3 sig_type=std_logic lab=OUTR}
C {lab_pin.sym} 60 -400 0 1 {name=p4 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 300 -400 0 0 {name=M8
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
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 320 -460 0 0 {name=p5 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 320 -340 0 0 {name=p6 sig_type=std_logic lab=OUTL}
C {lab_pin.sym} 240 -400 0 0 {name=p7 sig_type=std_logic lab=SAEN}
C {lab_pin.sym} 360 -400 0 1 {name=p8 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 600 -400 0 0 {name=M7
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
C {lab_pin.sym} 620 -460 0 0 {name=p9 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 620 -340 0 0 {name=p10 sig_type=std_logic lab=OUTR}
C {lab_pin.sym} 540 -400 0 0 {name=p11 sig_type=std_logic lab=OUTL}
C {lab_pin.sym} 660 -400 0 1 {name=p12 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 900 -400 0 0 {name=M9
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
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 920 -460 0 0 {name=p13 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 920 -340 0 0 {name=p14 sig_type=std_logic lab=OUTR}
C {lab_pin.sym} 840 -400 0 0 {name=p15 sig_type=std_logic lab=SAEN}
C {lab_pin.sym} 960 -400 0 1 {name=p16 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 -200 0 0 {name=M4
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
C {lab_pin.sym} 20 -260 0 0 {name=p17 sig_type=std_logic lab=OUTL}
C {lab_pin.sym} 20 -140 0 0 {name=p18 sig_type=std_logic lab=NA}
C {lab_pin.sym} -60 -200 0 0 {name=p19 sig_type=std_logic lab=OUTR}
C {lab_pin.sym} 60 -200 0 1 {name=p20 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 300 -200 0 0 {name=M5
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
C {lab_pin.sym} 320 -260 0 0 {name=p21 sig_type=std_logic lab=OUTR}
C {lab_pin.sym} 320 -140 0 0 {name=p22 sig_type=std_logic lab=NB}
C {lab_pin.sym} 240 -200 0 0 {name=p23 sig_type=std_logic lab=OUTL}
C {lab_pin.sym} 360 -200 0 1 {name=p24 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 0 0 0 {name=M2
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
C {lab_pin.sym} 20 -60 0 0 {name=p25 sig_type=std_logic lab=NA}
C {lab_pin.sym} 20 60 0 0 {name=p26 sig_type=std_logic lab=TAIL}
C {lab_pin.sym} -60 0 0 0 {name=p27 sig_type=std_logic lab=BL_IN}
C {lab_pin.sym} 60 0 0 1 {name=p28 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 300 0 0 0 {name=M3
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
C {lab_pin.sym} 320 -60 0 0 {name=p29 sig_type=std_logic lab=NB}
C {lab_pin.sym} 320 60 0 0 {name=p30 sig_type=std_logic lab=TAIL}
C {lab_pin.sym} 240 0 0 0 {name=p31 sig_type=std_logic lab=REF_IN}
C {lab_pin.sym} 360 0 0 1 {name=p32 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 600 0 0 0 {name=M1
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
C {lab_pin.sym} 620 -60 0 0 {name=p33 sig_type=std_logic lab=TAIL}
C {lab_pin.sym} 620 60 0 0 {name=p34 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 540 0 0 0 {name=p35 sig_type=std_logic lab=SAEN}
C {lab_pin.sym} 660 0 0 1 {name=p36 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 0 250 0 0 {name=M10
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
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 20 190 0 0 {name=p37 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 20 310 0 0 {name=p38 sig_type=std_logic lab=BUF1}
C {lab_pin.sym} -60 250 0 0 {name=p39 sig_type=std_logic lab=OUTR}
C {lab_pin.sym} 60 250 0 1 {name=p40 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 300 250 0 0 {name=M11
L=0.15
W=0.5
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
C {lab_pin.sym} 320 190 0 0 {name=p41 sig_type=std_logic lab=BUF1}
C {lab_pin.sym} 320 310 0 0 {name=p42 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 240 250 0 0 {name=p43 sig_type=std_logic lab=OUTR}
C {lab_pin.sym} 360 250 0 1 {name=p44 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 600 250 0 0 {name=M12
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
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 620 190 0 0 {name=p45 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 620 310 0 0 {name=p46 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 540 250 0 0 {name=p47 sig_type=std_logic lab=BUF1}
C {lab_pin.sym} 660 250 0 1 {name=p48 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 900 250 0 0 {name=M13
L=0.15
W=0.5
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
C {lab_pin.sym} 920 190 0 0 {name=p49 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 920 310 0 0 {name=p50 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 840 250 0 0 {name=p51 sig_type=std_logic lab=BUF1}
C {lab_pin.sym} 960 250 0 1 {name=p52 sig_type=std_logic lab=VSS}
C {ipin.sym} -400 -500 0 0 {name=i1 lab=VCC}
C {ipin.sym} -400 -470 0 0 {name=i2 lab=VSS}
C {ipin.sym} -400 -440 0 0 {name=i3 lab=SAEN}
C {ipin.sym} -400 -410 0 0 {name=i4 lab=BL_IN}
C {ipin.sym} -400 -380 0 0 {name=i5 lab=REF_IN}
C {opin.sym} -400 -330 0 0 {name=o1 lab=OUT}
T {Latch-based voltage-mode sense amplifier, after Fig. 2c of Jiang et al., IEEE D&T 2022
SAEN=0: M8/M9 precharge OUTL and OUTR to VCC, tail M1 off.  SAEN=1: M2/M3 (BL_IN vs REF_IN) unbalance the latch M4-M7, which regenerates.
OUT (buffered OUTR) = 1 when BL_IN > REF_IN, 0 when BL_IN < REF_IN, after the evaluation phase} -400 -640 0 0 0.3 0.3 {}
