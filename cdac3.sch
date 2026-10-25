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
N 20 -130 20 -160 {}
N 20 -70 20 -40 {}
N -20 -100 -60 -100 {}
N 20 -100 60 -100 {}
N 320 -330 320 -360 {}
N 320 -270 320 -240 {}
N 280 -300 240 -300 {}
N 320 -300 360 -300 {}
N 320 -130 320 -160 {}
N 320 -70 320 -40 {}
N 280 -100 240 -100 {}
N 320 -100 360 -100 {}
N 620 -330 620 -360 {}
N 620 -270 620 -240 {}
N 580 -300 540 -300 {}
N 620 -300 660 -300 {}
N 620 -130 620 -160 {}
N 620 -70 620 -40 {}
N 580 -100 540 -100 {}
N 620 -100 660 -100 {}
N 1100 -280 1100 -310 {}
N 1100 -220 1100 -190 {}
N 1300 -280 1300 -310 {}
N 1300 -220 1300 -190 {}
N 1500 -280 1500 -310 {}
N 1500 -220 1500 -190 {}
N 1700 -280 1700 -310 {}
N 1700 -220 1700 -190 {}
N 1900 -280 1900 -310 {}
N 1900 -220 1900 -190 {}
N 2100 -280 2100 -310 {}
N 2100 -220 2100 -190 {}
N 2300 -280 2300 -310 {}
N 2300 -220 2300 -190 {}
N 2500 -280 2500 -310 {}
N 2500 -220 2500 -190 {}
N 20 270 20 240 {}
N 20 330 20 360 {}
N -20 300 -60 300 {}
N 20 300 60 300 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 0 -300 0 0 {name=M1
L=0.15
W=8
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
C {lab_pin.sym} 20 -360 0 0 {name=p1 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 20 -240 0 0 {name=p2 sig_type=std_logic lab=BP2}
C {lab_pin.sym} -60 -300 0 0 {name=p3 sig_type=std_logic lab=B2N}
C {lab_pin.sym} 60 -300 0 1 {name=p4 sig_type=std_logic lab=VREF}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 -100 0 0 {name=M2
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
C {lab_pin.sym} 20 -160 0 0 {name=p5 sig_type=std_logic lab=BP2}
C {lab_pin.sym} 20 -40 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -60 -100 0 0 {name=p7 sig_type=std_logic lab=B2N}
C {lab_pin.sym} 60 -100 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 300 -300 0 0 {name=M3
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
C {lab_pin.sym} 320 -360 0 0 {name=p9 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 320 -240 0 0 {name=p10 sig_type=std_logic lab=BP1}
C {lab_pin.sym} 240 -300 0 0 {name=p11 sig_type=std_logic lab=B1N}
C {lab_pin.sym} 360 -300 0 1 {name=p12 sig_type=std_logic lab=VREF}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 300 -100 0 0 {name=M4
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
C {lab_pin.sym} 320 -160 0 0 {name=p13 sig_type=std_logic lab=BP1}
C {lab_pin.sym} 320 -40 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 240 -100 0 0 {name=p15 sig_type=std_logic lab=B1N}
C {lab_pin.sym} 360 -100 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 600 -300 0 0 {name=M5
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
C {lab_pin.sym} 620 -360 0 0 {name=p17 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 620 -240 0 0 {name=p18 sig_type=std_logic lab=BP0}
C {lab_pin.sym} 540 -300 0 0 {name=p19 sig_type=std_logic lab=B0N}
C {lab_pin.sym} 660 -300 0 1 {name=p20 sig_type=std_logic lab=VREF}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 600 -100 0 0 {name=M6
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
C {lab_pin.sym} 620 -160 0 0 {name=p21 sig_type=std_logic lab=BP0}
C {lab_pin.sym} 620 -40 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 540 -100 0 0 {name=p23 sig_type=std_logic lab=B0N}
C {lab_pin.sym} 660 -100 0 1 {name=p24 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1100 -250 0 0 {name=C2a model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {lab_pin.sym} 1100 -310 0 0 {name=p25 sig_type=std_logic lab=REF}
C {lab_pin.sym} 1100 -190 0 0 {name=p26 sig_type=std_logic lab=BP2}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1300 -250 0 0 {name=C2b model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {lab_pin.sym} 1300 -310 0 0 {name=p27 sig_type=std_logic lab=REF}
C {lab_pin.sym} 1300 -190 0 0 {name=p28 sig_type=std_logic lab=BP2}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1500 -250 0 0 {name=C2c model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {lab_pin.sym} 1500 -310 0 0 {name=p29 sig_type=std_logic lab=REF}
C {lab_pin.sym} 1500 -190 0 0 {name=p30 sig_type=std_logic lab=BP2}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1700 -250 0 0 {name=C2d model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {lab_pin.sym} 1700 -310 0 0 {name=p31 sig_type=std_logic lab=REF}
C {lab_pin.sym} 1700 -190 0 0 {name=p32 sig_type=std_logic lab=BP2}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1900 -250 0 0 {name=C1a model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {lab_pin.sym} 1900 -310 0 0 {name=p33 sig_type=std_logic lab=REF}
C {lab_pin.sym} 1900 -190 0 0 {name=p34 sig_type=std_logic lab=BP1}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 2100 -250 0 0 {name=C1b model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {lab_pin.sym} 2100 -310 0 0 {name=p35 sig_type=std_logic lab=REF}
C {lab_pin.sym} 2100 -190 0 0 {name=p36 sig_type=std_logic lab=BP1}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 2300 -250 0 0 {name=C0a model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {lab_pin.sym} 2300 -310 0 0 {name=p37 sig_type=std_logic lab=REF}
C {lab_pin.sym} 2300 -190 0 0 {name=p38 sig_type=std_logic lab=BP0}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 2500 -250 0 0 {name=CD model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {lab_pin.sym} 2500 -310 0 0 {name=p39 sig_type=std_logic lab=REF}
C {lab_pin.sym} 2500 -190 0 0 {name=p40 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 300 0 0 {name=M7
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
C {lab_pin.sym} 20 240 0 0 {name=p41 sig_type=std_logic lab=REF}
C {lab_pin.sym} 20 360 0 0 {name=p42 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -60 300 0 0 {name=p43 sig_type=std_logic lab=RST}
C {lab_pin.sym} 60 300 0 1 {name=p44 sig_type=std_logic lab=VSS}
C {ipin.sym} -400 -500 0 0 {name=i1 lab=VSS}
C {ipin.sym} -400 -470 0 0 {name=i2 lab=VREF}
C {ipin.sym} -400 -440 0 0 {name=i3 lab=RST}
C {ipin.sym} -400 -410 0 0 {name=i4 lab=B2N}
C {ipin.sym} -400 -380 0 0 {name=i5 lab=B1N}
C {ipin.sym} -400 -350 0 0 {name=i6 lab=B0N}
C {opin.sym} -400 -290 0 0 {name=o1 lab=REF}
T {3-bit capacitive DAC (charge redistribution, Fig. 2d of the paper): binary weighted caps 4C, 2C, C plus one dummy C on a floating top plate REF.
RST = 1 grounds REF (all bits are 0 then). After RST falls REF floats and REF = VREF.(4.b2 + 2.b1 + b0)/8. The bottom plates are driven by inverters powered from VREF, controlled by BiN (BiN = 0 -> bit = 1).} -400 -640 0 0 0.3 0.3 {}
