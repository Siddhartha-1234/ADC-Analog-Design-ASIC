v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N -170 90 -150 90 {
lab=VSS}
N -150 70 -150 90 {
lab=VSS}
N -170 70 -150 70 {
lab=VSS}
N -150 90 -120 90 {
lab=VSS}
N -20 -10 10 -10 {
lab=THRESH}
N -170 -140 -120 -140 {
lab=THRESH}
C {/home/ttuser/Documents/ADCAnalogDesign/calibrated_comparator.sym} 160 -30 0 0 {name=x1}
C {/home/ttuser/Documents/ADCAnalogDesign/onehot2mux.sym} -320 -100 0 0 {name=x2}
C {/home/ttuser/Documents/ADCAnalogDesign/r2r.sym} -320 130 0 0 {name=x3}
C {ipin.sym} -470 -80 0 0 {name=p1 lab=USEEXT}
C {ipin.sym} -470 -100 0 0 {name=p2 lab=EXTTHRESH}
C {ipin.sym} -470 60 0 0 {name=p3 lab=b0}
C {ipin.sym} -470 80 0 0 {name=p4 lab=b1
}
C {ipin.sym} -470 100 0 0 {name=p5 lab=b2}
C {ipin.sym} -470 120 0 0 {name=p6 lab=b3}
C {ipin.sym} -470 140 0 0 {name=p7 lab=b4}
C {ipin.sym} -470 160 0 0 {name=p8 lab=b5}
C {ipin.sym} -470 180 0 0 {name=p9 lab=b6}
C {ipin.sym} -470 200 0 0 {name=p10 lab=b7}
C {ipin.sym} 10 -110 0 0 {name=p11 lab=EN_N}
C {ipin.sym} 10 -90 0 0 {name=p12 lab=CAL}
C {ipin.sym} 10 10 0 0 {name=p13 lab=INPUT}
C {opin.sym} -170 50 0 0 {name=p14 lab=DACOUT}
C {opin.sym} 190 0 0 0 {name=p15 lab=COMPOUT}
C {lab_pin.sym} -120 90 0 1 {name=p16 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 10 110 0 0 {name=p17 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} -470 -120 0 0 {name=p18 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} -470 -140 0 0 {name=p19 sig_type=std_logic lab=VCC
}
C {lab_pin.sym} 10 90 0 0 {name=p20 sig_type=std_logic lab=VCC
}
C {lab_pin.sym} -20 -10 0 0 {name=p21 sig_type=std_logic lab=THRESH}
C {lab_pin.sym} -120 -140 0 1 {name=p22 sig_type=std_logic lab=THRESH}
