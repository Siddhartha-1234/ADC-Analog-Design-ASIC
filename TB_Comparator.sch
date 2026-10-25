v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 370 -550 370 -530 {
lab=START_N}
N 370 -470 370 -450 {
lab=START}
N 780 -700 810 -700 {
lab=START_N}
N 410 -500 520 -500 {
lab=ADJ}
N -250 -410 -250 -360 {
lab=START}
C {/home/ttuser/Documents/ADCAnalogDesign/comparator.sym} 390 -330 0 0 {name=x1}
C {/home/ttuser/Documents/ADCAnalogDesign/passgate.sym} 370 -500 0 0 {name=x2}
C {lab_pin.sym} 370 -450 0 0 {name=p1 sig_type=std_logic lab=START}
C {lab_pin.sym} 370 -550 0 0 {name=p2 sig_type=std_logic lab=START_N}
C {lab_pin.sym} 540 -710 0 0 {name=p3 sig_type=std_logic lab=START}
C {lab_pin.sym} 810 -700 0 1 {name=p4 sig_type=std_logic lab=START_N}
C {lab_pin.sym} 290 -400 0 0 {name=p5 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 290 -350 0 0 {name=p6 sig_type=std_logic lab=PLUS}
C {lab_pin.sym} 290 -300 0 0 {name=p7 sig_type=std_logic lab=MINUS}
C {lab_pin.sym} 290 -260 0 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 390 -230 0 0 {name=p9 sig_type=std_logic lab=ADJ}
C {lab_pin.sym} 390 -250 0 0 {name=p10 sig_type=std_logic lab=EN_N}
C {lab_pin.sym} 550 -310 0 1 {name=p11 sig_type=std_logic lab=DIFFOUT}
C {lab_pin.sym} 330 -500 0 0 {name=p12 sig_type=std_logic lab=DIFFOUT_N}
C {lab_pin.sym} 520 -500 0 1 {name=p13 sig_type=std_logic lab=ADJ}
C {lab_pin.sym} 460 -440 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 460 -470 0 0 {name=C2 model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {vsource.sym} 100 -540 0 0 {name=V1 value=1.8 savecurrent=false}
C {gnd.sym} 100 -510 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 100 -570 0 0 {name=p15 sig_type=std_logic lab=VCC}
C {code.sym} 760 -630 0 0 {name=s1 only_toplevel=false value=".lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt"}
C {vsource.sym} 90 -330 0 0 {name=V2 value=0.6 savecurrent=false}
C {gnd.sym} 90 -300 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 90 -360 0 0 {name=p16 sig_type=std_logic lab=MINUS}
C {code_shown.sym} 790 -470 0 0 {name=SPICE only_toplevel=false value=".control
save all
dc V3 -1.4 1.4 0.01
plot v(DIFFOUT) v(PLUS) v(ADJ) v(x1.G1)
.endc
"}
C {vsource.sym} 0 -480 0 0 {name=V3 value=0 savecurrent=false}
C {gnd.sym} 0 -450 0 0 {name=l4 lab=GND
value=0}
C {lab_pin.sym} 0 -510 0 0 {name=p17 sig_type=std_logic lab=PLUS
}
C {lab_pin.sym} -420 -550 0 0 {name=p18 sig_type=std_logic lab=DIFFOUT}
C {lab_pin.sym} -180 -540 0 1 {name=p19 sig_type=std_logic lab=DIFFOUT_N}
C {/home/ttuser/Documents/ADCAnalogDesign/inverter.sym} -270 -530 0 0 {name=x3}
C {/home/ttuser/Documents/ADCAnalogDesign/inverter.sym} 690 -690 0 0 {name=x4}
C {lab_pin.sym} 630 -790 0 0 {name=p20 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -330 -630 0 0 {name=p21 sig_type=std_logic lab=VCC}
C {gnd.sym} -300 -480 0 0 {name=l7 lab=GND}
C {gnd.sym} 660 -640 0 0 {name=l8 lab=GND}
C {vsource.sym} -190 -340 0 0 {name=V4 value=0 savecurrent=false}
C {gnd.sym} -190 -310 0 0 {name=l9 lab=GND}
C {vsource.sym} -250 -330 0 0 {name=V5 value=0 savecurrent=false}
C {gnd.sym} -250 -300 0 0 {name=l10 lab=GND}
C {vsource.sym} -320 -330 0 0 {name=V6 value=0 savecurrent=false}
C {gnd.sym} -320 -300 0 0 {name=l11 lab=GND
value=0}
C {lab_pin.sym} -320 -360 0 0 {name=p22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -190 -370 0 0 {name=p23 sig_type=std_logic lab=EN_N}
C {lab_pin.sym} -250 -410 0 0 {name=p24 sig_type=std_logic lab=START}
C {lab_pin.sym} 350 -470 0 0 {name=p25 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 350 -530 0 0 {name=p26 sig_type=std_logic lab=VCC}
