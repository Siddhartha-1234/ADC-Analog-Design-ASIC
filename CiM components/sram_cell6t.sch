v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {6T SRAM bit-cell (MPU1/2, MPD1/2, MAX1/2) with a decoupled read transistor MRD.
Weight w = Q.  Q drives only the GATE of MRD, so reading never disturbs the cell.
Q = 1 (w = 1): MRD is on (about 1 kohm), current flows from the row input RIN into the column line CL.   Q = 0 (w = 0): MRD is off (leakage only).
Write: WL = 1, drive BL / BLB with the data and its complement.} -400 -640 0 0 0.3 0.3 {}
N 20 -360 20 -330 {
lab=VCC}
N 20 -270 20 -240 {
lab=Q}
N -60 -300 -20 -300 {
lab=QB}
N 20 -300 60 -300 {
lab=VCC}
N 320 -360 320 -330 {
lab=VCC}
N 320 -270 320 -240 {
lab=QB}
N 240 -300 280 -300 {
lab=Q}
N 320 -300 360 -300 {
lab=VCC}
N 20 -160 20 -130 {
lab=Q}
N 20 -70 20 -40 {
lab=VSS}
N -60 -100 -20 -100 {
lab=QB}
N 20 -100 60 -100 {
lab=VSS}
N 320 -160 320 -130 {
lab=QB}
N 320 -70 320 -40 {
lab=VSS}
N 240 -100 280 -100 {
lab=Q}
N 320 -100 360 -100 {
lab=VSS}
N -260 -200 -230 -200 {
lab=BL}
N -170 -200 -140 -200 {
lab=Q}
N -200 -280 -200 -240 {
lab=WL}
N -200 -200 -200 -160 {
lab=VSS}
N 490 -200 520 -200 {
lab=BLB}
N 400 -200 430 -200 {
lab=QB}
N 460 -280 460 -240 {
lab=WL}
N 460 -200 460 -160 {
lab=VSS}
N -110 10 -80 10 {
lab=RIN}
N -200 10 -170 10 {
lab=CL}
N -140 -70 -140 -30 {
lab=Q}
N -140 10 -140 50 {
lab=VSS}
N 20 -240 20 -160 {
lab=Q}
N 320 -240 320 -160 {
lab=QB}
N 20 -360 320 -360 {
lab=VCC}
N 20 -390 20 -360 {
lab=VCC}
N 60 -360 60 -300 {
lab=VCC}
N 360 -360 360 -300 {
lab=VCC}
N 320 -360 360 -360 {
lab=VCC}
N 20 -40 320 -40 {
lab=VSS}
N 60 -100 60 -40 {
lab=VSS}
N 360 -100 360 -40 {
lab=VSS}
N 320 -40 360 -40 {
lab=VSS}
N 20 -200 240 -200 {
lab=Q}
N 240 -300 240 -100 {
lab=Q}
N -60 -300 -60 -100 {
lab=QB}
N -60 -170 320 -170 {
lab=QB}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 0 -300 0 0 {name=MPU1
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
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 20 -390 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 20 -210 0 0 {name=p2 sig_type=std_logic lab=Q}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 300 -300 0 0 {name=MPU2
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
model=pfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 320 -220 0 0 {name=p6 sig_type=std_logic lab=QB}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 -100 0 0 {name=MPD1
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
C {lab_pin.sym} 20 -40 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 60 -100 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 300 -100 0 0 {name=MPD2
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
C {lab_pin.sym} 360 -100 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -200 -220 3 1 {name=MAX1
L=0.15
W=0.6
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
C {lab_pin.sym} -260 -200 3 1 {name=p17 sig_type=std_logic lab=BL}
C {lab_pin.sym} -140 -200 3 1 {name=p18 sig_type=std_logic lab=Q}
C {lab_pin.sym} -200 -280 0 1 {name=p19 sig_type=std_logic lab=WL}
C {lab_pin.sym} -200 -160 3 0 {name=p20 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 460 -220 1 0 {name=MAX2
L=0.15
W=0.6
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
C {lab_pin.sym} 520 -200 1 0 {name=p21 sig_type=std_logic lab=BLB}
C {lab_pin.sym} 400 -200 1 0 {name=p22 sig_type=std_logic lab=QB}
C {lab_pin.sym} 460 -280 1 0 {name=p23 sig_type=std_logic lab=WL}
C {lab_pin.sym} 460 -160 1 1 {name=p24 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -140 -10 1 0 {name=MRD
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
C {lab_pin.sym} -80 10 1 0 {name=p25 sig_type=std_logic lab=RIN}
C {lab_pin.sym} -200 10 1 0 {name=p26 sig_type=std_logic lab=CL}
C {lab_pin.sym} -140 -70 1 0 {name=p27 sig_type=std_logic lab=Q}
C {lab_pin.sym} -140 50 1 1 {name=p28 sig_type=std_logic lab=VSS}
C {ipin.sym} -400 -500 0 0 {name=i1 lab=VCC}
C {ipin.sym} -400 -470 0 0 {name=i2 lab=VSS}
C {ipin.sym} -400 -440 0 0 {name=i3 lab=WL}
C {ipin.sym} -400 -410 0 0 {name=i4 lab=BL}
C {ipin.sym} -400 -380 0 0 {name=i5 lab=BLB}
C {ipin.sym} -400 -350 0 0 {name=i6 lab=RIN}
C {opin.sym} -400 -290 0 0 {name=o1 lab=CL}
