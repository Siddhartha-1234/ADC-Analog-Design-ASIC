v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {4x4 SRAM compute-in-memory array (Fig. 1a of the paper).  Cell (i,j): weight stored in a 6T cell, its Q node gates the read transistor between row input RIN_i and column line CL_j.
Each column current is converted to a voltage by a load resistor RL (resistor divider, 250 ohm): VCL_j = sum_i(G_ij.VRIN_i) / (sum_i G_ij + 1/RL).  Weights are written through WL_i / BL_j / BLB_j.} -400 -640 0 0 0.3 0.3 {}
N 400 1120 400 1150 {}
N 400 1210 400 1240 {}
N 1100 1120 1100 1150 {}
N 1100 1210 1100 1240 {}
N 1800 1120 1800 1150 {}
N 1800 1210 1800 1240 {}
N 2500 1120 2500 1150 {}
N 2500 1210 2500 1240 {}
N 500 0 500 880 {}
N 1200 0 1200 800 {}
N 1900 0 1900 810 {}
N 2600 0 2600 820 {}
C {/home/ttuser/Documents/ADCAnalogDesign/CiM components/sram_cell6t.sym} 400 0 0 0 {name=x00}
C {lab_pin.sym} 300 -50 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 300 -30 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 300 -10 0 0 {name=p3 sig_type=std_logic lab=WL0}
C {lab_pin.sym} 300 10 0 0 {name=p4 sig_type=std_logic lab=BL0}
C {lab_pin.sym} 300 30 0 0 {name=p5 sig_type=std_logic lab=BLB0}
C {lab_pin.sym} 300 50 0 0 {name=p6 sig_type=std_logic lab=RIN0}
C {lab_pin.sym} 500 110 0 1 {name=p7 sig_type=std_logic lab=CL0}
C {/home/ttuser/Documents/ADCAnalogDesign/CiM components/sram_cell6t.sym} 1100 0 0 0 {name=x01}
C {lab_pin.sym} 1000 -50 0 0 {name=p8 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1000 -30 0 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1000 -10 0 0 {name=p10 sig_type=std_logic lab=WL0}
C {lab_pin.sym} 1000 10 0 0 {name=p11 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 1000 30 0 0 {name=p12 sig_type=std_logic lab=BLB1}
C {lab_pin.sym} 1000 50 0 0 {name=p13 sig_type=std_logic lab=RIN0}
C {lab_pin.sym} 1200 70 0 1 {name=p14 sig_type=std_logic lab=CL1}
C {lab_pin.sym} 1700 -50 0 0 {name=p15 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1700 -30 0 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1700 -10 0 0 {name=p17 sig_type=std_logic lab=WL0}
C {lab_pin.sym} 1700 10 0 0 {name=p18 sig_type=std_logic lab=BL2}
C {lab_pin.sym} 1700 30 0 0 {name=p19 sig_type=std_logic lab=BLB2}
C {lab_pin.sym} 1700 50 0 0 {name=p20 sig_type=std_logic lab=RIN0}
C {lab_pin.sym} 1900 60 0 1 {name=p21 sig_type=std_logic lab=CL2}
C {lab_pin.sym} 2400 -50 0 0 {name=p22 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2400 -30 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2400 -10 0 0 {name=p24 sig_type=std_logic lab=WL0}
C {lab_pin.sym} 2400 10 0 0 {name=p25 sig_type=std_logic lab=BL3}
C {lab_pin.sym} 2400 30 0 0 {name=p26 sig_type=std_logic lab=BLB3}
C {lab_pin.sym} 2400 50 0 0 {name=p27 sig_type=std_logic lab=RIN0}
C {lab_pin.sym} 2600 90 0 1 {name=p28 sig_type=std_logic lab=CL3}
C {/home/ttuser/Documents/ADCAnalogDesign/CiM components/sram_cell6t.sym} 400 250 0 0 {name=x10}
C {lab_pin.sym} 300 200 0 0 {name=p29 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 300 220 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 300 240 0 0 {name=p31 sig_type=std_logic lab=WL1}
C {lab_pin.sym} 300 260 0 0 {name=p32 sig_type=std_logic lab=BL0}
C {lab_pin.sym} 300 280 0 0 {name=p33 sig_type=std_logic lab=BLB0}
C {lab_pin.sym} 300 300 0 0 {name=p34 sig_type=std_logic lab=RIN1}
C {/home/ttuser/Documents/ADCAnalogDesign/CiM components/sram_cell6t.sym} 1100 250 0 0 {name=x11}
C {lab_pin.sym} 1000 200 0 0 {name=p36 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1000 220 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1000 240 0 0 {name=p38 sig_type=std_logic lab=WL1}
C {lab_pin.sym} 1000 260 0 0 {name=p39 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 1000 280 0 0 {name=p40 sig_type=std_logic lab=BLB1}
C {lab_pin.sym} 1000 300 0 0 {name=p41 sig_type=std_logic lab=RIN1}
C {lab_pin.sym} 1700 200 0 0 {name=p43 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1700 220 0 0 {name=p44 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1700 240 0 0 {name=p45 sig_type=std_logic lab=WL1}
C {lab_pin.sym} 1700 260 0 0 {name=p46 sig_type=std_logic lab=BL2}
C {lab_pin.sym} 1700 280 0 0 {name=p47 sig_type=std_logic lab=BLB2}
C {lab_pin.sym} 1700 300 0 0 {name=p48 sig_type=std_logic lab=RIN1}
C {lab_pin.sym} 2400 200 0 0 {name=p50 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2400 220 0 0 {name=p51 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2400 240 0 0 {name=p52 sig_type=std_logic lab=WL1}
C {lab_pin.sym} 2400 260 0 0 {name=p53 sig_type=std_logic lab=BL3}
C {lab_pin.sym} 2400 280 0 0 {name=p54 sig_type=std_logic lab=BLB3}
C {lab_pin.sym} 2400 300 0 0 {name=p55 sig_type=std_logic lab=RIN1}
C {lab_pin.sym} 300 450 0 0 {name=p57 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 300 470 0 0 {name=p58 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 300 490 0 0 {name=p59 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 300 510 0 0 {name=p60 sig_type=std_logic lab=BL0}
C {lab_pin.sym} 300 530 0 0 {name=p61 sig_type=std_logic lab=BLB0}
C {lab_pin.sym} 300 550 0 0 {name=p62 sig_type=std_logic lab=RIN2}
C {lab_pin.sym} 1000 450 0 0 {name=p64 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1000 470 0 0 {name=p65 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1000 490 0 0 {name=p66 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 1000 510 0 0 {name=p67 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 1000 530 0 0 {name=p68 sig_type=std_logic lab=BLB1}
C {lab_pin.sym} 1000 550 0 0 {name=p69 sig_type=std_logic lab=RIN2}
C {lab_pin.sym} 1700 450 0 0 {name=p71 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1700 470 0 0 {name=p72 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1700 490 0 0 {name=p73 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 1700 510 0 0 {name=p74 sig_type=std_logic lab=BL2}
C {lab_pin.sym} 1700 530 0 0 {name=p75 sig_type=std_logic lab=BLB2}
C {lab_pin.sym} 1700 550 0 0 {name=p76 sig_type=std_logic lab=RIN2}
C {lab_pin.sym} 2400 450 0 0 {name=p78 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2400 470 0 0 {name=p79 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2400 490 0 0 {name=p80 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 2400 510 0 0 {name=p81 sig_type=std_logic lab=BL3}
C {lab_pin.sym} 2400 530 0 0 {name=p82 sig_type=std_logic lab=BLB3}
C {lab_pin.sym} 2400 550 0 0 {name=p83 sig_type=std_logic lab=RIN2}
C {lab_pin.sym} 300 700 0 0 {name=p85 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 300 720 0 0 {name=p86 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 300 740 0 0 {name=p87 sig_type=std_logic lab=WL3}
C {lab_pin.sym} 300 760 0 0 {name=p88 sig_type=std_logic lab=BL0}
C {lab_pin.sym} 300 780 0 0 {name=p89 sig_type=std_logic lab=BLB0}
C {lab_pin.sym} 300 800 0 0 {name=p90 sig_type=std_logic lab=RIN3}
C {lab_pin.sym} 1000 700 0 0 {name=p92 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1000 720 0 0 {name=p93 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1000 740 0 0 {name=p94 sig_type=std_logic lab=WL3}
C {lab_pin.sym} 1000 760 0 0 {name=p95 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 1000 780 0 0 {name=p96 sig_type=std_logic lab=BLB1}
C {lab_pin.sym} 1000 800 0 0 {name=p97 sig_type=std_logic lab=RIN3}
C {lab_pin.sym} 1700 700 0 0 {name=p99 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1700 720 0 0 {name=p100 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1700 740 0 0 {name=p101 sig_type=std_logic lab=WL3}
C {lab_pin.sym} 1700 760 0 0 {name=p102 sig_type=std_logic lab=BL2}
C {lab_pin.sym} 1700 780 0 0 {name=p103 sig_type=std_logic lab=BLB2}
C {lab_pin.sym} 1700 800 0 0 {name=p104 sig_type=std_logic lab=RIN3}
C {lab_pin.sym} 2400 700 0 0 {name=p106 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2400 720 0 0 {name=p107 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2400 740 0 0 {name=p108 sig_type=std_logic lab=WL3}
C {lab_pin.sym} 2400 760 0 0 {name=p109 sig_type=std_logic lab=BL3}
C {lab_pin.sym} 2400 780 0 0 {name=p110 sig_type=std_logic lab=BLB3}
C {lab_pin.sym} 2400 800 0 0 {name=p111 sig_type=std_logic lab=RIN3}
C {res.sym} 400 1180 0 0 {name=RL0 value=250 footprint=1206 device=resistor m=1}
C {lab_pin.sym} 400 1120 0 0 {name=p113 sig_type=std_logic lab=CL0}
C {lab_pin.sym} 400 1240 0 0 {name=p114 sig_type=std_logic lab=VSS}
C {res.sym} 1100 1180 0 0 {name=RL1 value=250 footprint=1206 device=resistor m=1}
C {lab_pin.sym} 1100 1120 0 0 {name=p115 sig_type=std_logic lab=CL1}
C {lab_pin.sym} 1100 1240 0 0 {name=p116 sig_type=std_logic lab=VSS}
C {res.sym} 1800 1180 0 0 {name=RL2 value=250 footprint=1206 device=resistor m=1}
C {lab_pin.sym} 1800 1120 0 0 {name=p117 sig_type=std_logic lab=CL2}
C {lab_pin.sym} 1800 1240 0 0 {name=p118 sig_type=std_logic lab=VSS}
C {res.sym} 2500 1180 0 0 {name=RL3 value=250 footprint=1206 device=resistor m=1}
C {lab_pin.sym} 2500 1120 0 0 {name=p119 sig_type=std_logic lab=CL3}
C {lab_pin.sym} 2500 1240 0 0 {name=p120 sig_type=std_logic lab=VSS}
C {ipin.sym} -400 -500 0 0 {name=i1 lab=VCC}
C {ipin.sym} -400 -470 0 0 {name=i2 lab=VSS}
C {ipin.sym} -400 -440 0 0 {name=i3 lab=WL0}
C {ipin.sym} -400 -410 0 0 {name=i4 lab=WL1}
C {ipin.sym} -400 -380 0 0 {name=i5 lab=WL2}
C {ipin.sym} -400 -350 0 0 {name=i6 lab=WL3}
C {ipin.sym} -400 -320 0 0 {name=i7 lab=BL0}
C {ipin.sym} -400 -290 0 0 {name=i8 lab=BL1}
C {ipin.sym} -400 -260 0 0 {name=i9 lab=BL2}
C {ipin.sym} -400 -230 0 0 {name=i10 lab=BL3}
C {ipin.sym} -400 -200 0 0 {name=i11 lab=BLB0}
C {ipin.sym} -400 -170 0 0 {name=i12 lab=BLB1}
C {ipin.sym} -400 -140 0 0 {name=i13 lab=BLB2}
C {ipin.sym} -400 -110 0 0 {name=i14 lab=BLB3}
C {ipin.sym} -400 -80 0 0 {name=i15 lab=RIN0}
C {ipin.sym} -400 -50 0 0 {name=i16 lab=RIN1}
C {ipin.sym} -400 -20 0 0 {name=i17 lab=RIN2}
C {ipin.sym} -400 10 0 0 {name=i18 lab=RIN3}
C {opin.sym} -400 70 0 0 {name=o1 lab=CL0}
C {opin.sym} -400 100 0 0 {name=o2 lab=CL1}
C {opin.sym} -400 130 0 0 {name=o3 lab=CL2}
C {opin.sym} -400 160 0 0 {name=o4 lab=CL3}
C {/home/ttuser/Documents/ADCAnalogDesign/CiM components/sram_cell6t.sym} 400 500 0 0 {name=x1}
C {/home/ttuser/Documents/ADCAnalogDesign/CiM components/sram_cell6t.sym} 400 750 0 0 {name=x2}
C {/home/ttuser/Documents/ADCAnalogDesign/CiM components/sram_cell6t.sym} 1100 500 0 0 {name=x3}
C {/home/ttuser/Documents/ADCAnalogDesign/CiM components/sram_cell6t.sym} 1100 750 0 0 {name=x4}
C {/home/ttuser/Documents/ADCAnalogDesign/CiM components/sram_cell6t.sym} 1800 0 0 0 {name=x5}
C {/home/ttuser/Documents/ADCAnalogDesign/CiM components/sram_cell6t.sym} 1800 250 0 0 {name=x6}
C {/home/ttuser/Documents/ADCAnalogDesign/CiM components/sram_cell6t.sym} 1800 500 0 0 {name=x7}
C {/home/ttuser/Documents/ADCAnalogDesign/CiM components/sram_cell6t.sym} 1800 750 0 0 {name=x8}
C {/home/ttuser/Documents/ADCAnalogDesign/CiM components/sram_cell6t.sym} 2500 0 0 0 {name=x9}
C {/home/ttuser/Documents/ADCAnalogDesign/CiM components/sram_cell6t.sym} 2500 250 0 0 {name=x12}
C {/home/ttuser/Documents/ADCAnalogDesign/CiM components/sram_cell6t.sym} 2500 500 0 0 {name=x13}
C {/home/ttuser/Documents/ADCAnalogDesign/CiM components/sram_cell6t.sym} 2500 750 0 0 {name=x14}
