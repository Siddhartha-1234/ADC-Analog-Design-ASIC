v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 100 -50 100 0 {
lab=y}
N 60 -80 60 30 {
lab=a}
N 100 30 190 30 {
lab=VSSPIN}
N 190 30 190 100 {
lab=VSSPIN}
N 100 60 100 80 {
lab=VSSPIN}
N 100 80 190 80 {
lab=VSSPIN}
N 100 -180 100 -110 {
lab=VCCPIN}
N 100 -80 200 -80 {
lab=VCCPIN}
N 200 -150 200 -80 {
lab=VCCPIN}
N 100 -150 200 -150 {
lab=VCCPIN}
N 10 -30 60 -30 {
lab=a}
N 100 -20 160 -20 {
lab=y}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 80 -80 0 0 {name=M2
L=0.35
W=2
nf=1 mult=1
model=pfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 80 30 0 0 {name=M1
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} 190 100 0 1 {name=p1 sig_type=std_logic lab=VSSPIN
}
C {lab_pin.sym} 100 -180 0 0 {name=p2 sig_type=std_logic lab=VCCPIN}
C {ipin.sym} 10 -30 0 0 {name=p3 lab=a}
C {opin.sym} 160 -20 0 0 {name=p4 lab=y verilog_type=wire}
C {ipin.sym} -60 -280 0 0 {name=p5 lab=VSSPIN}
C {ipin.sym} -60 -250 0 0 {name=p6 lab=VCCPIN}
