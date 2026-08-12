v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 190 -50 410 -50 {
lab=#net1}
N 370 -100 410 -100 {
lab=VCC}
N 380 40 410 40 {
lab=VSS}
N 360 0 410 0 {
lab=THRESHV}
N 460 50 510 50 {
lab=EN_N}
N 460 50 460 90 {
lab=EN_N}
N 450 90 460 90 {
lab=EN_N}
N 510 70 510 100 {
lab=ADJ}
N 670 -10 710 -10 {
lab=RESULT}
N 580 -270 660 -270 {
lab=ADJ}
N 620 -270 620 -230 {
lab=ADJ}
N 620 -170 620 -130 {
lab=VSS}
N 250 -250 280 -250 {
lab=CALIB}
N 190 -230 280 -230 {
lab=RESULT}
N 240 -190 280 -190 {
lab=VCC}
N 130 -170 280 -170 {
lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/comparator.sym} 510 -30 0 0 {name=x3}
C {lab_pin.sym} 370 -100 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 380 40 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 360 0 0 0 {name=p3 sig_type=std_logic lab=THRESHV}
C {lab_pin.sym} 450 90 0 0 {name=p4 sig_type=std_logic lab=EN_N
}
C {lab_pin.sym} 510 100 0 0 {name=p5 sig_type=std_logic lab=ADJ}
C {lab_pin.sym} 710 -10 0 1 {name=p6 sig_type=std_logic lab=RESULT
}
C {lab_pin.sym} 660 -270 0 1 {name=p7 sig_type=std_logic lab=ADJ}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_1.sym} 620 -200 0 0 {name=C1 model=cap_mim_m3_1 W=10 L=10 MF=4 spiceprefix=X}
C {lab_pin.sym} 620 -130 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/analogSwitch.sym} 430 -240 0 0 {name=x1}
C {lab_pin.sym} 250 -250 0 0 {name=p9 sig_type=std_logic lab=CALIB
}
C {lab_pin.sym} 190 -230 0 0 {name=p10 sig_type=std_logic lab=RESULT}
C {lab_pin.sym} 240 -190 0 0 {name=p11 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 130 -170 0 0 {name=p12 sig_type=std_logic lab=VSS}
