v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {latch_comp: clocked latch comparator (PMOS-input StrongARM + SR latch).  CLK = 1: evaluate,  CLK = 0: reset.
Reset (CLK = 0): tail M7 off, MR1-MR4 pull P, Q, X, Y to 0 V, so no current flows and the previous decision is erased.
Evaluate (CLK = 1): M7 turns on; the input with the LOWER gate voltage (PMOS) charges its side (P or Q) faster,
the cross-coupled pairs M3/M4 (PMOS) and M5/M6 (NMOS) regenerate: one of X, Y goes to VDD, the other to 0.  X high <=> INP < INN.
No static current: in both states every path from VDD to VSS is broken (zero static power).
Inverters + NAND SR latch: OUT = 1 when INP > INN; OUT keeps the last decision while the latch resets (OUTB = complement).} -400 -1000 0 0 0.3 0.3 {}
T {Reset Phase (Reset all X, Y, P, Q to VSS)
} 880 -450 0 0 0.3 0.3 {}
N 330 -590 330 -570 {
lab=VDD}
N 330 -510 330 -490 {
lab=TAIL}
N 270 -540 290 -540 {
lab=CLKB}
N 330 -540 370 -540 {
lab=VDD}
N 120 -450 120 -430 {
lab=TAIL}
N 120 -370 120 -350 {
lab=P}
N 60 -400 80 -400 {
lab=INP}
N 120 -400 160 -400 {
lab=VDD}
N 520 -450 520 -430 {
lab=TAIL}
N 520 -370 520 -350 {
lab=Q}
N 460 -400 480 -400 {
lab=INN}
N 520 -400 560 -400 {
lab=VDD}
N 120 -250 120 -230 {
lab=P}
N 120 -170 120 -150 {
lab=X}
N 60 -200 80 -200 {
lab=Y}
N 120 -200 160 -200 {
lab=VDD}
N 520 -250 520 -230 {
lab=Q}
N 520 -170 520 -150 {
lab=Y}
N 460 -200 480 -200 {
lab=X}
N 520 -200 560 -200 {
lab=VDD}
N 120 -50 120 -30 {
lab=X}
N 120 30 120 50 {
lab=VSS}
N 60 0 80 0 {
lab=Y}
N 120 0 160 0 {
lab=VSS}
N 520 -50 520 -30 {
lab=Y}
N 520 30 520 50 {
lab=VSS}
N 460 0 480 0 {
lab=X}
N 520 0 560 0 {
lab=VSS}
N 920 -350 920 -330 {
lab=P}
N 920 -270 920 -250 {
lab=VSS}
N 860 -300 880 -300 {
lab=CLKB}
N 920 -300 960 -300 {
lab=VSS}
N 1140 -350 1140 -330 {
lab=Q}
N 1140 -270 1140 -250 {
lab=VSS}
N 1080 -300 1100 -300 {
lab=CLKB}
N 1140 -300 1180 -300 {
lab=VSS}
N 1360 -350 1360 -330 {
lab=X}
N 1360 -270 1360 -250 {
lab=VSS}
N 1300 -300 1320 -300 {
lab=CLKB}
N 1360 -300 1400 -300 {
lab=VSS}
N 1580 -350 1580 -330 {
lab=Y}
N 1580 -270 1580 -250 {
lab=VSS}
N 1520 -300 1540 -300 {
lab=CLKB}
N 1580 -300 1620 -300 {
lab=VSS}
N 1260 180 1280 180 {
lab=YB}
N 1260 220 1280 220 {
lab=OUTB}
N 1440 200 1650 200 {
lab=OUT}
N 1360 120 1360 140 {
lab=VDD}
N 1360 260 1360 280 {
lab=VSS}
N 1270 390 1290 390 {
lab=XB}
N 1270 430 1290 430 {
lab=OUT}
N 1450 410 1660 410 {
lab=OUTB}
N 1370 330 1370 350 {
lab=VDD}
N 1370 470 1370 490 {
lab=VSS}
N 120 -350 120 -250 {
lab=P}
N 120 -150 120 -50 {
lab=X}
N 520 -350 520 -250 {
lab=Q}
N 520 -150 520 -50 {
lab=Y}
N 1010 300 1010 340 {
lab=XB}
N 1090 650 1090 690 {
lab=YB}
N -250 30 -250 60 {
lab=CLKB}
N 120 50 520 50 {
lab=VSS}
N 220 50 220 80 {
lab=VSS}
N 120 -450 330 -490 {
lab=TAIL}
N 330 -490 520 -450 {
lab=TAIL}
N 60 -200 60 -0 {
lab=Y}
N 460 -200 460 -0 {
lab=X}
N 120 -120 460 -120 {
lab=X}
N 60 -60 520 -60 {
lab=Y}
N 1260 220 1260 290 {
lab=OUTB}
N 1260 290 1490 330 {
lab=OUTB}
N 1490 330 1490 410 {
lab=OUTB}
N 1520 200 1520 270 {
lab=OUT}
N 1180 360 1520 270 {
lab=OUT}
N 1180 360 1180 430 {
lab=OUT}
N 1180 430 1270 430 {
lab=OUT}
C {lab_pin.sym} -250 60 0 0 {name=l5 sig_type=std_logic lab=CLKB}
C {lab_pin.sym} -490 20 0 0 {name=l7 sig_type=std_logic lab=CLK}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 310 -540 0 0 {name=M7
L=0.15
W=2
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
C {lab_pin.sym} 330 -590 0 0 {name=l9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 270 -540 0 0 {name=l11 sig_type=std_logic lab=CLKB}
C {lab_pin.sym} 370 -540 0 1 {name=l12 sig_type=std_logic lab=VDD}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 100 -400 0 0 {name=M1
L=0.5
W=2
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
C {lab_pin.sym} 120 -300 0 0 {name=l14 sig_type=std_logic lab=P}
C {lab_pin.sym} 60 -400 0 0 {name=l15 sig_type=std_logic lab=INP}
C {lab_pin.sym} 160 -400 0 1 {name=l16 sig_type=std_logic lab=VDD}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 500 -400 0 0 {name=M2
L=0.5
W=2
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
C {lab_pin.sym} 120 -450 0 0 {name=l17 sig_type=std_logic lab=TAIL}
C {lab_pin.sym} 520 -350 0 0 {name=l18 sig_type=std_logic lab=Q}
C {lab_pin.sym} 460 -400 0 0 {name=l19 sig_type=std_logic lab=INN}
C {lab_pin.sym} 560 -400 0 1 {name=l20 sig_type=std_logic lab=VDD}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 100 -200 0 0 {name=M3
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
C {lab_pin.sym} 60 -150 0 0 {name=l23 sig_type=std_logic lab=Y}
C {lab_pin.sym} 160 -200 0 1 {name=l24 sig_type=std_logic lab=VDD}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 500 -200 0 0 {name=M4
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
C {lab_pin.sym} 460 -140 0 0 {name=l27 sig_type=std_logic lab=X}
C {lab_pin.sym} 560 -200 0 1 {name=l28 sig_type=std_logic lab=VDD}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 100 0 0 0 {name=M5
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
C {lab_pin.sym} 220 80 0 0 {name=l30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 160 0 0 1 {name=l32 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 500 0 0 0 {name=M6
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
C {lab_pin.sym} 560 0 0 1 {name=l36 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 900 -300 0 0 {name=MR1
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
C {lab_pin.sym} 920 -350 0 0 {name=l37 sig_type=std_logic lab=P}
C {lab_pin.sym} 920 -250 0 0 {name=l38 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 860 -300 0 0 {name=l39 sig_type=std_logic lab=CLKB}
C {lab_pin.sym} 960 -300 0 1 {name=l40 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1120 -300 0 0 {name=MR2
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
C {lab_pin.sym} 1140 -350 0 0 {name=l41 sig_type=std_logic lab=Q}
C {lab_pin.sym} 1140 -250 0 0 {name=l42 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1080 -300 0 0 {name=l43 sig_type=std_logic lab=CLKB}
C {lab_pin.sym} 1180 -300 0 1 {name=l44 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1340 -300 0 0 {name=MR3
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
C {lab_pin.sym} 1360 -350 0 0 {name=l45 sig_type=std_logic lab=X}
C {lab_pin.sym} 1360 -250 0 0 {name=l46 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1300 -300 0 0 {name=l47 sig_type=std_logic lab=CLKB}
C {lab_pin.sym} 1400 -300 0 1 {name=l48 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1560 -300 0 0 {name=MR4
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
C {lab_pin.sym} 1580 -350 0 0 {name=l49 sig_type=std_logic lab=Y}
C {lab_pin.sym} 1580 -250 0 0 {name=l50 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1520 -300 0 0 {name=l51 sig_type=std_logic lab=CLKB}
C {lab_pin.sym} 1620 -300 0 1 {name=l52 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1010 340 0 0 {name=l54 sig_type=std_logic lab=XB}
C {lab_pin.sym} 860 210 0 1 {name=l56 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 890 360 0 0 {name=l58 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 770 290 0 0 {name=l59 sig_type=std_logic lab=X}
C {/home/ttuser/Documents/ADCAnalogDesign/nand2.sym} 1360 200 0 0 {name=x1}
C {lab_pin.sym} 1260 180 0 0 {name=l69 sig_type=std_logic lab=YB}
C {lab_pin.sym} 1650 200 0 1 {name=l71 sig_type=std_logic lab=OUT}
C {lab_pin.sym} 1360 120 0 0 {name=l72 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1360 280 0 0 {name=l73 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/nand2.sym} 1370 410 0 0 {name=x2}
C {lab_pin.sym} 1270 390 0 0 {name=l74 sig_type=std_logic lab=XB}
C {lab_pin.sym} 1660 410 0 1 {name=l76 sig_type=std_logic lab=OUTB}
C {lab_pin.sym} 1370 330 0 0 {name=l77 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1370 490 0 0 {name=l78 sig_type=std_logic lab=VSS}
C {ipin.sym} -400 -700 0 0 {name=p1 lab=VDD}
C {ipin.sym} -400 -670 0 0 {name=p2 lab=VSS}
C {ipin.sym} -400 -640 0 0 {name=p3 lab=CLK}
C {ipin.sym} -400 -610 0 0 {name=p4 lab=INP}
C {ipin.sym} -400 -580 0 0 {name=p5 lab=INN}
C {opin.sym} -400 -550 0 0 {name=p6 lab=OUT}
C {opin.sym} -400 -520 0 0 {name=p7 lab=OUTB}
C {/home/ttuser/Documents/ADCAnalogDesign/inverter.sym} 920 310 0 0 {name=x3}
C {lab_pin.sym} 1090 690 0 0 {name=l21 sig_type=std_logic lab=YB}
C {lab_pin.sym} 940 560 0 1 {name=l22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 970 710 0 0 {name=l25 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 850 640 0 0 {name=l33 sig_type=std_logic lab=Y}
C {/home/ttuser/Documents/ADCAnalogDesign/inverter.sym} 1000 660 0 0 {name=x4}
C {lab_pin.sym} -400 -60 0 1 {name=l53 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -370 90 0 0 {name=l55 sig_type=std_logic lab=VSS}
C {/home/ttuser/Documents/ADCAnalogDesign/inverter.sym} -340 40 0 0 {name=x5}
