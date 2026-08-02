v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 410 -120 410 -90 {
lab=#net1}
N 300 -150 370 -150 {
lab=LO}
N 300 -60 370 -60 {
lab=RF}
N 310 -240 310 -210 {
lab=IOUT}
N 410 -200 410 -180 {
lab=IOUT}
N 310 -200 410 -200 {
lab=IOUT}
N 390 -10 410 -10 {
lab=VSS}
N 410 -30 410 -10 {
lab=VSS}
N 310 -210 310 -200 {
lab=IOUT}
N 410 -60 550 -60 {
lab=VSS}
N 410 -150 540 -150 {
lab=VSS}
C {ipin.sym} 300 -150 0 0 {name=p1 lab=LO
}
C {ipin.sym} 300 -60 0 0 {name=p3 lab=RF
}
C {ipin.sym} 300 -60 0 0 {name=p4 lab=RF
}
C {ipin.sym} 390 -10 0 0 {name=p5 lab=VSS
}
C {opin.sym} 310 -240 0 0 {name=p7 lab=IOUT
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 390 -150 0 0 {name=M1
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 390 -60 0 0 {name=M2
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
C {ipin.sym} 550 -60 0 1 {name=p2 lab=VSS
}
C {ipin.sym} 540 -150 0 1 {name=p6 lab=VSS
}
