v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 400 -30 400 -60 {}
N 400 30 400 60 {}
N 900 -30 900 -60 {}
N 900 30 900 60 {}
N 1400 -30 1400 -60 {}
N 1400 30 1400 60 {}
N 1900 -30 1900 -60 {}
N 1900 30 1900 60 {}
N 400 270 400 240 {}
N 400 330 400 360 {}
N 900 270 900 240 {}
N 900 330 900 360 {}
N 1400 270 1400 240 {}
N 1400 330 1400 360 {}
N 1900 270 1900 240 {}
N 1900 330 1900 360 {}
N 400 570 400 540 {}
N 400 630 400 660 {}
N 900 570 900 540 {}
N 900 630 900 660 {}
N 1400 570 1400 540 {}
N 1400 630 1400 660 {}
N 1900 570 1900 540 {}
N 1900 630 1900 660 {}
N 400 870 400 840 {}
N 400 930 400 960 {}
N 900 870 900 840 {}
N 900 930 900 960 {}
N 1400 870 1400 840 {}
N 1400 930 1400 960 {}
N 1900 870 1900 840 {}
N 1900 930 1900 960 {}
N 400 1320 400 1290 {}
N 400 1380 400 1410 {}
N 900 1320 900 1290 {}
N 900 1380 900 1410 {}
N 1400 1320 1400 1290 {}
N 1400 1380 1400 1410 {}
N 1900 1320 1900 1290 {}
N 1900 1380 1900 1410 {}
C {res.sym} 400 0 0 0 {name=R00 value=1k footprint=1206 device=resistor m=1}
C {lab_pin.sym} 400 -60 0 0 {name=p1 sig_type=std_logic lab=RIN0}
C {lab_pin.sym} 400 60 0 0 {name=p2 sig_type=std_logic lab=CL0}
T {LRS 1000 uS (w=1)} 430 -10 0 0 0.2 0.2 {}
C {res.sym} 900 0 0 0 {name=R01 value=10Meg footprint=1206 device=resistor m=1}
C {lab_pin.sym} 900 -60 0 0 {name=p3 sig_type=std_logic lab=RIN0}
C {lab_pin.sym} 900 60 0 0 {name=p4 sig_type=std_logic lab=CL1}
T {HRS 0.1 uS (w=0)} 930 -10 0 0 0.2 0.2 {}
C {res.sym} 1400 0 0 0 {name=R02 value=1k footprint=1206 device=resistor m=1}
C {lab_pin.sym} 1400 -60 0 0 {name=p5 sig_type=std_logic lab=RIN0}
C {lab_pin.sym} 1400 60 0 0 {name=p6 sig_type=std_logic lab=CL2}
T {LRS 1000 uS (w=1)} 1430 -10 0 0 0.2 0.2 {}
C {res.sym} 1900 0 0 0 {name=R03 value=1k footprint=1206 device=resistor m=1}
C {lab_pin.sym} 1900 -60 0 0 {name=p7 sig_type=std_logic lab=RIN0}
C {lab_pin.sym} 1900 60 0 0 {name=p8 sig_type=std_logic lab=CL3}
T {LRS 1000 uS (w=1)} 1930 -10 0 0 0.2 0.2 {}
C {res.sym} 400 300 0 0 {name=R10 value=10Meg footprint=1206 device=resistor m=1}
C {lab_pin.sym} 400 240 0 0 {name=p9 sig_type=std_logic lab=RIN1}
C {lab_pin.sym} 400 360 0 0 {name=p10 sig_type=std_logic lab=CL0}
T {HRS 0.1 uS (w=0)} 430 290 0 0 0.2 0.2 {}
C {res.sym} 900 300 0 0 {name=R11 value=1k footprint=1206 device=resistor m=1}
C {lab_pin.sym} 900 240 0 0 {name=p11 sig_type=std_logic lab=RIN1}
C {lab_pin.sym} 900 360 0 0 {name=p12 sig_type=std_logic lab=CL1}
T {LRS 1000 uS (w=1)} 930 290 0 0 0.2 0.2 {}
C {res.sym} 1400 300 0 0 {name=R12 value=1k footprint=1206 device=resistor m=1}
C {lab_pin.sym} 1400 240 0 0 {name=p13 sig_type=std_logic lab=RIN1}
C {lab_pin.sym} 1400 360 0 0 {name=p14 sig_type=std_logic lab=CL2}
T {LRS 1000 uS (w=1)} 1430 290 0 0 0.2 0.2 {}
C {res.sym} 1900 300 0 0 {name=R13 value=10Meg footprint=1206 device=resistor m=1}
C {lab_pin.sym} 1900 240 0 0 {name=p15 sig_type=std_logic lab=RIN1}
C {lab_pin.sym} 1900 360 0 0 {name=p16 sig_type=std_logic lab=CL3}
T {HRS 0.1 uS (w=0)} 1930 290 0 0 0.2 0.2 {}
C {res.sym} 400 600 0 0 {name=R20 value=1k footprint=1206 device=resistor m=1}
C {lab_pin.sym} 400 540 0 0 {name=p17 sig_type=std_logic lab=RIN2}
C {lab_pin.sym} 400 660 0 0 {name=p18 sig_type=std_logic lab=CL0}
T {LRS 1000 uS (w=1)} 430 590 0 0 0.2 0.2 {}
C {res.sym} 900 600 0 0 {name=R21 value=1k footprint=1206 device=resistor m=1}
C {lab_pin.sym} 900 540 0 0 {name=p19 sig_type=std_logic lab=RIN2}
C {lab_pin.sym} 900 660 0 0 {name=p20 sig_type=std_logic lab=CL1}
T {LRS 1000 uS (w=1)} 930 590 0 0 0.2 0.2 {}
C {res.sym} 1400 600 0 0 {name=R22 value=10Meg footprint=1206 device=resistor m=1}
C {lab_pin.sym} 1400 540 0 0 {name=p21 sig_type=std_logic lab=RIN2}
C {lab_pin.sym} 1400 660 0 0 {name=p22 sig_type=std_logic lab=CL2}
T {HRS 0.1 uS (w=0)} 1430 590 0 0 0.2 0.2 {}
C {res.sym} 1900 600 0 0 {name=R23 value=1k footprint=1206 device=resistor m=1}
C {lab_pin.sym} 1900 540 0 0 {name=p23 sig_type=std_logic lab=RIN2}
C {lab_pin.sym} 1900 660 0 0 {name=p24 sig_type=std_logic lab=CL3}
T {LRS 1000 uS (w=1)} 1930 590 0 0 0.2 0.2 {}
C {res.sym} 400 900 0 0 {name=R30 value=10Meg footprint=1206 device=resistor m=1}
C {lab_pin.sym} 400 840 0 0 {name=p25 sig_type=std_logic lab=RIN3}
C {lab_pin.sym} 400 960 0 0 {name=p26 sig_type=std_logic lab=CL0}
T {HRS 0.1 uS (w=0)} 430 890 0 0 0.2 0.2 {}
C {res.sym} 900 900 0 0 {name=R31 value=10Meg footprint=1206 device=resistor m=1}
C {lab_pin.sym} 900 840 0 0 {name=p27 sig_type=std_logic lab=RIN3}
C {lab_pin.sym} 900 960 0 0 {name=p28 sig_type=std_logic lab=CL1}
T {HRS 0.1 uS (w=0)} 930 890 0 0 0.2 0.2 {}
C {res.sym} 1400 900 0 0 {name=R32 value=1k footprint=1206 device=resistor m=1}
C {lab_pin.sym} 1400 840 0 0 {name=p29 sig_type=std_logic lab=RIN3}
C {lab_pin.sym} 1400 960 0 0 {name=p30 sig_type=std_logic lab=CL2}
T {LRS 1000 uS (w=1)} 1430 890 0 0 0.2 0.2 {}
C {res.sym} 1900 900 0 0 {name=R33 value=1k footprint=1206 device=resistor m=1}
C {lab_pin.sym} 1900 840 0 0 {name=p31 sig_type=std_logic lab=RIN3}
C {lab_pin.sym} 1900 960 0 0 {name=p32 sig_type=std_logic lab=CL3}
T {LRS 1000 uS (w=1)} 1930 890 0 0 0.2 0.2 {}
C {res.sym} 400 1350 0 0 {name=RL0 value=250 footprint=1206 device=resistor m=1}
C {lab_pin.sym} 400 1290 0 0 {name=p33 sig_type=std_logic lab=CL0}
C {lab_pin.sym} 400 1410 0 0 {name=p34 sig_type=std_logic lab=VSS}
C {res.sym} 900 1350 0 0 {name=RL1 value=250 footprint=1206 device=resistor m=1}
C {lab_pin.sym} 900 1290 0 0 {name=p35 sig_type=std_logic lab=CL1}
C {lab_pin.sym} 900 1410 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {res.sym} 1400 1350 0 0 {name=RL2 value=250 footprint=1206 device=resistor m=1}
C {lab_pin.sym} 1400 1290 0 0 {name=p37 sig_type=std_logic lab=CL2}
C {lab_pin.sym} 1400 1410 0 0 {name=p38 sig_type=std_logic lab=VSS}
C {res.sym} 1900 1350 0 0 {name=RL3 value=250 footprint=1206 device=resistor m=1}
C {lab_pin.sym} 1900 1290 0 0 {name=p39 sig_type=std_logic lab=CL3}
C {lab_pin.sym} 1900 1410 0 0 {name=p40 sig_type=std_logic lab=VSS}
C {ipin.sym} -400 -500 0 0 {name=i1 lab=VSS}
C {ipin.sym} -400 -470 0 0 {name=i2 lab=RIN0}
C {ipin.sym} -400 -440 0 0 {name=i3 lab=RIN1}
C {ipin.sym} -400 -410 0 0 {name=i4 lab=RIN2}
C {ipin.sym} -400 -380 0 0 {name=i5 lab=RIN3}
C {opin.sym} -400 -320 0 0 {name=o1 lab=CL0}
C {opin.sym} -400 -290 0 0 {name=o2 lab=CL1}
C {opin.sym} -400 -260 0 0 {name=o3 lab=CL2}
C {opin.sym} -400 -230 0 0 {name=o4 lab=CL3}
T {4x4 ReRAM compute-in-memory crossbar (Fig. 1a of the paper).  Every cell is a resistor between row input RIN_i and column line CL_j.
Weight 1 = LRS = 1000 uS (1 kohm), weight 0 = HRS = 0.1 uS (10 Mohm).  To reprogram a cell, change the resistor value (1k or 10Meg).
Each column current is converted to a voltage by a load resistor RL (250 ohm).   Stored weights: rows = [[1, 0, 1, 1], [0, 1, 1, 0], [1, 1, 0, 1], [0, 0, 1, 1]]} -400 -640 0 0 0.3 0.3 {}
