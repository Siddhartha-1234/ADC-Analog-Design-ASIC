v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 40 -80 60 -80 {
lab=IN}
N 140 -80 170 -80 {
lab=OUT}
N 70 -170 100 -170 {
lab=EN_N}
N 100 -170 100 -110 {
lab=EN_N}
N 100 -50 100 -10 {
lab=EN}
N 10 -40 60 -40 {
lab=VSS}
N 10 -120 60 -120 {
lab=VCC}
N 130 -360 280 -360 {
lab=EN_N}
N 0 -290 0 -220 {
lab=VSS}
N 0 -520 0 -440 {
lab=VCC}
N -170 -360 -90 -360 {}
C {passgate.sym} 100 -80 0 0 {name=x2}
C {/home/ttuser/Documents/ADCAnalogDesign/lvtNOT.sym} -10 -380 0 0 {name=x1}
C {ipin.sym} 40 -80 0 0 {name=p1 lab=IN}
C {opin.sym} 170 -80 0 0 {name=p2 lab=OUT}
C {lab_pin.sym} 70 -170 0 0 {name=p3 sig_type=std_logic lab=EN_N}
C {lab_pin.sym} 100 -10 0 0 {name=p4 sig_type=std_logic lab=EN}
C {lab_pin.sym} 10 -120 0 0 {name=p5 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 10 -40 0 0 {name=p6 sig_type=std_logic lab= VSS}
C {lab_pin.sym} 280 -360 0 1 {name=p7 sig_type=std_logic lab=EN_N}
C {lab_pin.sym} 0 -220 0 0 {name=p8 sig_type=std_logic lab= VSS}
C {lab_pin.sym} 0 -520 0 0 {name=p9 sig_type=std_logic lab=VCC}
C {ipin.sym} -170 -360 0 0 {name=p10 lab=EN}
C {ipin.sym} -210 -560 0 0 {name=p11 lab=VCC}
C {ipin.sym} -210 -530 0 0 {name=p12 lab=VSS}
