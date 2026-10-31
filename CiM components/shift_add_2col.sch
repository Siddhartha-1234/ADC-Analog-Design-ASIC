v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {RST=1: SUM and both bottom plates tied to VREF.  SHARE=1: bottom plates driven by column voltages IN0 (LSB, C) and IN1 (MSB, 2C).
SUM = VREF + (C*(IN0-VREF) + 2C*(IN1-VREF)) / 3C } -400 -600 0 0 0.3 0.3 {}
N 30 -430 130 -430 {
lab=IN0}
N 130 -430 230 -430 {
lab=IN0}
N 130 -460 130 -430 {
lab=IN0}
N 30 -370 130 -370 {
lab=BP0}
N 130 -370 230 -370 {
lab=BP0}
N 130 -370 130 -340 {
lab=BP0}
N 30 -400 70 -400 {
lab=VSS}
N 230 -400 270 -400 {
lab=VCC}
N 430 -430 530 -430 {
lab=VREF}
N 530 -430 630 -430 {
lab=VREF}
N 530 -460 530 -430 {
lab=VREF}
N 430 -370 530 -370 {
lab=BP0}
N 530 -370 630 -370 {
lab=BP0}
N 530 -370 530 -340 {
lab=BP0}
N 430 -400 470 -400 {
lab=VSS}
N 630 -400 670 -400 {
lab=VCC}
N 530 110 630 110 {
lab=VREF}
N 430 110 530 110 {
lab=VREF}
N 530 110 530 140 {
lab=VREF}
N 530 50 630 50 {
lab=SUM}
N 430 50 530 50 {
lab=SUM}
N 530 20 530 50 {
lab=SUM}
N 590 80 630 80 {
lab=VSS}
N 390 80 430 80 {
lab=VCC}
N 860 -460 960 -460 {
lab=IN1}
N 960 -460 1060 -460 {
lab=IN1}
N 960 -490 960 -460 {
lab=IN1}
N 860 -400 960 -400 {
lab=BP1}
N 960 -400 1060 -400 {
lab=BP1}
N 960 -400 960 -370 {
lab=BP1}
N 860 -430 900 -430 {
lab=VSS}
N 1060 -430 1100 -430 {
lab=VCC}
N 1360 -460 1460 -460 {
lab=VREF}
N 1460 -460 1560 -460 {
lab=VREF}
N 1460 -490 1460 -460 {
lab=VREF}
N 1360 -400 1460 -400 {
lab=BP1}
N 1460 -400 1560 -400 {
lab=BP1}
N 1460 -400 1460 -370 {
lab=BP1}
N 1360 -430 1400 -430 {
lab=VSS}
N 1560 -430 1600 -430 {
lab=VCC}
N 340 -80 340 -50 {
lab=SUM}
N 340 -170 340 -140 {
lab=BP0}
N 1280 -190 1280 -160 {
lab=SUM}
N 1280 -280 1280 -250 {
lab=BP1}
N 1080 -190 1080 -160 {
lab=SUM}
N 1080 -280 1080 -250 {
lab=BP1}
N 130 -340 530 -340 {
lab=BP0}
N 340 -340 340 -170 {
lab=BP0}
N 960 -370 1460 -370 {
lab=BP1}
N 1080 -280 1280 -280 {
lab=BP1}
N 1200 -370 1200 -280 {
lab=BP1}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 10 -400 0 0 {name=M1
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 210 -400 0 0 {name=M2
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
C {lab_pin.sym} 130 -460 0 0 {name=p1 sig_type=std_logic lab=IN0}
C {lab_pin.sym} -10 -400 0 0 {name=p3 sig_type=std_logic lab=SHARE}
C {lab_pin.sym} 190 -400 0 0 {name=p4 sig_type=std_logic lab=SHARE_N}
C {lab_pin.sym} 70 -400 0 1 {name=p5 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 270 -400 0 1 {name=p6 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 410 -400 0 0 {name=M3
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 610 -400 0 0 {name=M4
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
C {lab_pin.sym} 530 -460 0 0 {name=p7 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 390 -400 0 0 {name=p9 sig_type=std_logic lab=RST}
C {lab_pin.sym} 590 -400 0 0 {name=p10 sig_type=std_logic lab=RST_N}
C {lab_pin.sym} 470 -400 0 1 {name=p11 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 670 -400 0 1 {name=p12 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 650 80 2 0 {name=M5
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 450 80 2 0 {name=M6
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
C {lab_pin.sym} 530 140 2 0 {name=p13 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 530 20 2 0 {name=p14 sig_type=std_logic lab=SUM}
C {lab_pin.sym} 670 80 2 0 {name=p15 sig_type=std_logic lab=RST}
C {lab_pin.sym} 470 80 2 0 {name=p16 sig_type=std_logic lab=RST_N}
C {lab_pin.sym} 590 80 2 1 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 390 80 2 1 {name=p18 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 840 -430 0 0 {name=M7
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1040 -430 0 0 {name=M8
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
C {lab_pin.sym} 960 -490 0 0 {name=p19 sig_type=std_logic lab=IN1}
C {lab_pin.sym} 820 -430 0 0 {name=p21 sig_type=std_logic lab=SHARE}
C {lab_pin.sym} 1020 -430 0 0 {name=p22 sig_type=std_logic lab=SHARE_N}
C {lab_pin.sym} 900 -430 0 1 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1100 -430 0 1 {name=p24 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1340 -430 0 0 {name=M9
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1540 -430 0 0 {name=M10
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
C {lab_pin.sym} 1460 -490 0 0 {name=p25 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1320 -430 0 0 {name=p27 sig_type=std_logic lab=RST}
C {lab_pin.sym} 1520 -430 0 0 {name=p28 sig_type=std_logic lab=RST_N}
C {lab_pin.sym} 1400 -430 0 1 {name=p29 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1600 -430 0 1 {name=p30 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 340 -110 2 0 {name=C0 model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {lab_pin.sym} 340 -50 2 0 {name=p31 sig_type=std_logic lab=SUM}
C {lab_pin.sym} 340 -310 2 0 {name=p32 sig_type=std_logic lab=BP0}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1280 -220 2 0 {name=C1a model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {lab_pin.sym} 1280 -160 2 0 {name=p33 sig_type=std_logic lab=SUM}
C {lab_pin.sym} 1200 -320 2 0 {name=p34 sig_type=std_logic lab=BP1}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1080 -220 2 0 {name=C1b model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {lab_pin.sym} 1080 -160 2 0 {name=p35 sig_type=std_logic lab=SUM}
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
