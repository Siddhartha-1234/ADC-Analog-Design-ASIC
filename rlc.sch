v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -90 -20 -90 30 {
lab=#net1}
N -90 30 120 30 {
lab=#net1}
N 120 -160 120 30 {
lab=#net1}
N 120 -320 120 -220 {
lab=A}
N -90 -320 120 -320 {
lab=A}
N -90 -320 -90 -290 {
lab=A}
N -90 -120 -90 -80 {
lab=C}
N -90 -230 -90 -180 {
lab=B}
C {capa.sym} -90 -150 0 0 {name=C1
m=1
value=50nF
footprint=1206
device="ceramic capacitor"}
C {ind.sym} -90 -260 0 0 {name=L1
m=1
value=10mH
footprint=1206
device=inductor}
C {res.sym} 120 -190 0 0 {name=R1
value=1k
footprint=1206
device=resistor
m=1}
C {vsource_arith.sym} -90 -50 0 0 {name=E1 VOL="'3*cos(time*time*time*1e11)'"}
C {lab_pin.sym} 120 -320 0 1 {name=p1 sig_type=std_logic lab=A}
C {lab_pin.sym} -90 -100 2 1 {name=p2 sig_type=std_logic lab=C}
C {lab_pin.sym} -90 -210 0 0 {name=p3 sig_type=std_logic lab=B}
C {lab_pin.sym} 120 30 2 0 {name=p4 sig_type=std_logic lab=0}
