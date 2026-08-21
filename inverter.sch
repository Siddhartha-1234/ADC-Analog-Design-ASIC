v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 220 0 220 40 {
lab=out}
N 130 -30 180 -30 {
lab=IN}
N 120 70 180 70 {
lab=IN}
N 120 -30 120 70 {
lab=IN}
N 120 -30 130 -30 {
lab=IN}
N 100 10 120 10 {
lab=IN}
N 220 20 240 20 {
lab=out}
N 220 -90 220 -60 {
lab=VDD}
N 220 -30 290 -30 {
lab=VDD}
N 290 -60 290 -30 {
lab=VDD}
N 290 -70 290 -60 {
lab=VDD}
N 220 -70 290 -70 {
lab=VDD}
N 220 100 220 130 {
lab=VDD}
N 220 70 280 70 {
lab=VDD}
N 280 70 280 110 {
lab=VDD}
N 220 110 280 110 {
lab=VDD}
C {ipin.sym} 100 10 0 0 {name=p1 lab=IN}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 200 -30 0 0 {name=M3
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 200 70 0 0 {name=M1
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
C {opin.sym} 240 20 0 0 {name=p2 lab=out}
C {iopin.sym} 220 -90 0 0 {name=p3 lab=VDD}
C {iopin.sym} 220 130 0 0 {name=p4 lab=VSS}
