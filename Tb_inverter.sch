v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 10 -40 10 0 {
lab=OUT}
N -80 -70 -30 -70 {
lab=IN}
N -90 30 -30 30 {
lab=IN}
N -90 -70 -90 30 {
lab=IN}
N -90 -70 -80 -70 {
lab=IN}
N -110 -30 -90 -30 {
lab=IN}
N 10 -20 30 -20 {
lab=OUT}
N 10 -130 10 -100 {
lab=VDD}
N 10 -70 80 -70 {
lab=VDD}
N 80 -100 80 -70 {
lab=VDD}
N 80 -110 80 -100 {
lab=VDD}
N 10 -110 80 -110 {
lab=VDD}
N 10 60 10 90 {
lab=0}
N 10 30 70 30 {
lab=0}
N 70 30 70 70 {
lab=0}
N 10 70 70 70 {
lab=0}
N -230 -30 -230 10 {
lab=IN}
N -230 -30 -110 -30 {
lab=IN}
N 10 -210 100 -210 {
lab=0}
N 10 -150 10 -130 {
lab=VDD}
C {lab_pin.sym} -110 -30 0 0 {name=p1 lab=IN}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -10 -70 0 0 {name=M3
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -10 30 0 0 {name=M2
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
C {lab_pin.sym} 10 -130 0 0 {name=p3 lab=VDD}
C {lab_pin.sym} 30 -20 0 1 {name=p2 sig_type=std_logic lab=OUT}
C {vsource_arith.sym} -230 40 0 0 {name=E1 VOL="'3*cos(time*time*time*1e11)'"}
C {lab_pin.sym} -230 70 0 0 {name=p5 sig_type=std_logic lab=0}
C {vsource.sym} 10 -180 2 0 {name=V1 value=3 savecurrent=false}
C {code.sym} 190 -50 0 0 {name=STIMULI only_toplevel=false value="
.tran 10n 2000u uic
.save all
"}
C {lab_pin.sym} 10 90 0 0 {name=p4 sig_type=std_logic lab=0}
C {lab_pin.sym} 100 -210 2 0 {name=p6 sig_type=std_logic lab=0}
