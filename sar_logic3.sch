v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {SAR logic, 3 bits (data path of the SAR register). Per phase inputs: RST clears the bits; TRYi sets bit i = 1 (trial) while COM is latched at the end of TRYi; DECi writes the latched comparator result into bit i (keep or clear).
COML = latch(COM) transparent while any TRY is high. Bit i = transparent latch, enabled by TRYi + DECi + RST, input D = (TRYi + COML).~RST.   Outputs: Di (bit), BiN (inverted bit, drives the capacitor DAC).} -400 -640 0 0 0.3 0.3 {}
N 20 -60 20 -30 {}
N 20 30 20 60 {}
N -60 0 -20 0 {}
N 20 0 60 0 {}
N 20 140 20 170 {}
N 20 230 20 260 {}
N -60 200 -20 200 {}
N 20 200 60 200 {}
N 420 -60 420 -30 {}
N 420 30 420 60 {}
N 340 0 380 0 {}
N 420 0 460 0 {}
N 420 140 420 170 {}
N 420 230 420 260 {}
N 340 200 380 200 {}
N 420 200 460 200 {}
N 820 -60 820 -30 {}
N 820 30 820 60 {}
N 740 0 780 0 {}
N 820 0 860 0 {}
N 1070 -60 1070 -30 {}
N 1070 30 1070 60 {}
N 990 0 1030 0 {}
N 1070 0 1110 0 {}
N 1320 -60 1320 -30 {}
N 1320 30 1320 60 {}
N 1240 0 1280 0 {}
N 1320 0 1360 0 {}
N 820 140 820 170 {}
N 820 230 820 260 {}
N 740 200 780 200 {}
N 820 200 860 200 {}
N 1070 140 1070 170 {}
N 1070 230 1070 260 {}
N 990 200 1030 200 {}
N 1070 200 1110 200 {}
N 1320 140 1320 170 {}
N 1320 230 1320 260 {}
N 1240 200 1280 200 {}
N 1320 200 1360 200 {}
N 1720 -60 1720 -30 {}
N 1720 30 1720 60 {}
N 1640 0 1680 0 {}
N 1720 0 1760 0 {}
N 1720 140 1720 170 {}
N 1720 230 1720 260 {}
N 1640 200 1680 200 {}
N 1720 200 1760 200 {}
N 2120 -60 2120 -30 {}
N 2120 30 2120 60 {}
N 2040 0 2080 0 {}
N 2120 0 2160 0 {}
N 2370 -60 2370 -30 {}
N 2370 30 2370 60 {}
N 2290 0 2330 0 {}
N 2370 0 2410 0 {}
N 2770 -60 2770 -30 {}
N 2770 30 2770 60 {}
N 2690 0 2730 0 {}
N 2770 0 2810 0 {}
N 2770 140 2770 170 {}
N 2770 230 2770 260 {}
N 2690 200 2730 200 {}
N 2770 200 2810 200 {}
N 20 420 20 450 {}
N 20 510 20 540 {}
N -60 480 -20 480 {}
N 20 480 60 480 {}
N 20 620 20 650 {}
N 20 710 20 740 {}
N -60 680 -20 680 {}
N 20 680 60 680 {}
N 420 420 420 450 {}
N 420 510 420 540 {}
N 340 480 380 480 {}
N 420 480 460 480 {}
N 670 420 670 450 {}
N 670 510 670 540 {}
N 590 480 630 480 {}
N 670 480 710 480 {}
N 1070 420 1070 450 {}
N 1070 510 1070 540 {}
N 990 480 1030 480 {}
N 1070 480 1110 480 {}
N 1320 420 1320 450 {}
N 1320 510 1320 540 {}
N 1240 480 1280 480 {}
N 1320 480 1360 480 {}
N 1570 420 1570 450 {}
N 1570 510 1570 540 {}
N 1490 480 1530 480 {}
N 1570 480 1610 480 {}
N 1070 620 1070 650 {}
N 1070 710 1070 740 {}
N 990 680 1030 680 {}
N 1070 680 1110 680 {}
N 1320 620 1320 650 {}
N 1320 710 1320 740 {}
N 1240 680 1280 680 {}
N 1320 680 1360 680 {}
N 1570 620 1570 650 {}
N 1570 710 1570 740 {}
N 1490 680 1530 680 {}
N 1570 680 1610 680 {}
N 1970 420 1970 450 {}
N 1970 510 1970 540 {}
N 1890 480 1930 480 {}
N 1970 480 2010 480 {}
N 1970 620 1970 650 {}
N 1970 710 1970 740 {}
N 1890 680 1930 680 {}
N 1970 680 2010 680 {}
N 2370 420 2370 450 {}
N 2370 510 2370 540 {}
N 2290 480 2330 480 {}
N 2370 480 2410 480 {}
N 2620 420 2620 450 {}
N 2620 510 2620 540 {}
N 2540 480 2580 480 {}
N 2620 480 2660 480 {}
N 2370 620 2370 650 {}
N 2370 710 2370 740 {}
N 2290 680 2330 680 {}
N 2370 680 2410 680 {}
N 2620 620 2620 650 {}
N 2620 710 2620 740 {}
N 2540 680 2580 680 {}
N 2620 680 2660 680 {}
N 20 900 20 930 {}
N 20 990 20 1020 {}
N -60 960 -20 960 {}
N 20 960 60 960 {}
N 270 900 270 930 {}
N 270 990 270 1020 {}
N 190 960 230 960 {}
N 270 960 310 960 {}
N 20 1100 20 1130 {}
N 20 1190 20 1220 {}
N -60 1160 -20 1160 {}
N 20 1160 60 1160 {}
N 270 1100 270 1130 {}
N 270 1190 270 1220 {}
N 190 1160 230 1160 {}
N 270 1160 310 1160 {}
N 670 900 670 930 {}
N 670 990 670 1020 {}
N 590 960 630 960 {}
N 670 960 710 960 {}
N 920 900 920 930 {}
N 920 990 920 1020 {}
N 840 960 880 960 {}
N 920 960 960 960 {}
N 1320 900 1320 930 {}
N 1320 990 1320 1020 {}
N 1240 960 1280 960 {}
N 1320 960 1360 960 {}
N 1320 1100 1320 1130 {}
N 1320 1190 1320 1220 {}
N 1240 1160 1280 1160 {}
N 1320 1160 1360 1160 {}
N 1720 900 1720 930 {}
N 1720 990 1720 1020 {}
N 1640 960 1680 960 {}
N 1720 960 1760 960 {}
N 1720 1100 1720 1130 {}
N 1720 1190 1720 1220 {}
N 1640 1160 1680 1160 {}
N 1720 1160 1760 1160 {}
N 2120 900 2120 930 {}
N 2120 990 2120 1020 {}
N 2040 960 2080 960 {}
N 2120 960 2160 960 {}
N 2370 900 2370 930 {}
N 2370 990 2370 1020 {}
N 2290 960 2330 960 {}
N 2370 960 2410 960 {}
N 20 1380 20 1410 {}
N 20 1470 20 1500 {}
N -60 1440 -20 1440 {}
N 20 1440 60 1440 {}
N 270 1380 270 1410 {}
N 270 1470 270 1500 {}
N 190 1440 230 1440 {}
N 270 1440 310 1440 {}
N 520 1380 520 1410 {}
N 520 1470 520 1500 {}
N 440 1440 480 1440 {}
N 520 1440 560 1440 {}
N 20 1580 20 1610 {}
N 20 1670 20 1700 {}
N -60 1640 -20 1640 {}
N 20 1640 60 1640 {}
N 270 1580 270 1610 {}
N 270 1670 270 1700 {}
N 190 1640 230 1640 {}
N 270 1640 310 1640 {}
N 520 1580 520 1610 {}
N 520 1670 520 1700 {}
N 440 1640 480 1640 {}
N 520 1640 560 1640 {}
N 920 1380 920 1410 {}
N 920 1470 920 1500 {}
N 840 1440 880 1440 {}
N 920 1440 960 1440 {}
N 920 1580 920 1610 {}
N 920 1670 920 1700 {}
N 840 1640 880 1640 {}
N 920 1640 960 1640 {}
N 1320 1380 1320 1410 {}
N 1320 1470 1320 1500 {}
N 1240 1440 1280 1440 {}
N 1320 1440 1360 1440 {}
N 1570 1380 1570 1410 {}
N 1570 1470 1570 1500 {}
N 1490 1440 1530 1440 {}
N 1570 1440 1610 1440 {}
N 1320 1580 1320 1610 {}
N 1320 1670 1320 1700 {}
N 1240 1640 1280 1640 {}
N 1320 1640 1360 1640 {}
N 1570 1580 1570 1610 {}
N 1570 1670 1570 1700 {}
N 1490 1640 1530 1640 {}
N 1570 1640 1610 1640 {}
N 1970 1380 1970 1410 {}
N 1970 1470 1970 1500 {}
N 1890 1440 1930 1440 {}
N 1970 1440 2010 1440 {}
N 2220 1380 2220 1410 {}
N 2220 1470 2220 1500 {}
N 2140 1440 2180 1440 {}
N 2220 1440 2260 1440 {}
N 1970 1580 1970 1610 {}
N 1970 1670 1970 1700 {}
N 1890 1640 1930 1640 {}
N 1970 1640 2010 1640 {}
N 2220 1580 2220 1610 {}
N 2220 1670 2220 1700 {}
N 2140 1640 2180 1640 {}
N 2220 1640 2260 1640 {}
N 2620 1380 2620 1410 {}
N 2620 1470 2620 1500 {}
N 2540 1440 2580 1440 {}
N 2620 1440 2660 1440 {}
N 2870 1380 2870 1410 {}
N 2870 1470 2870 1500 {}
N 2790 1440 2830 1440 {}
N 2870 1440 2910 1440 {}
N 20 1860 20 1890 {}
N 20 1950 20 1980 {}
N -60 1920 -20 1920 {}
N 20 1920 60 1920 {}
N 20 2060 20 2090 {}
N 20 2150 20 2180 {}
N -60 2120 -20 2120 {}
N 20 2120 60 2120 {}
N 420 1860 420 1890 {}
N 420 1950 420 1980 {}
N 340 1920 380 1920 {}
N 420 1920 460 1920 {}
N 420 2060 420 2090 {}
N 420 2150 420 2180 {}
N 340 2120 380 2120 {}
N 420 2120 460 2120 {}
N 820 1860 820 1890 {}
N 820 1950 820 1980 {}
N 740 1920 780 1920 {}
N 820 1920 860 1920 {}
N 1070 1860 1070 1890 {}
N 1070 1950 1070 1980 {}
N 990 1920 1030 1920 {}
N 1070 1920 1110 1920 {}
N 1470 1860 1470 1890 {}
N 1470 1950 1470 1980 {}
N 1390 1920 1430 1920 {}
N 1470 1920 1510 1920 {}
N 1720 1860 1720 1890 {}
N 1720 1950 1720 1980 {}
N 1640 1920 1680 1920 {}
N 1720 1920 1760 1920 {}
N 1970 1860 1970 1890 {}
N 1970 1950 1970 1980 {}
N 1890 1920 1930 1920 {}
N 1970 1920 2010 1920 {}
N 1470 2060 1470 2090 {}
N 1470 2150 1470 2180 {}
N 1390 2120 1430 2120 {}
N 1470 2120 1510 2120 {}
N 1720 2060 1720 2090 {}
N 1720 2150 1720 2180 {}
N 1640 2120 1680 2120 {}
N 1720 2120 1760 2120 {}
N 1970 2060 1970 2090 {}
N 1970 2150 1970 2180 {}
N 1890 2120 1930 2120 {}
N 1970 2120 2010 2120 {}
N 2370 1860 2370 1890 {}
N 2370 1950 2370 1980 {}
N 2290 1920 2330 1920 {}
N 2370 1920 2410 1920 {}
N 2370 2060 2370 2090 {}
N 2370 2150 2370 2180 {}
N 2290 2120 2330 2120 {}
N 2370 2120 2410 2120 {}
N 2770 1860 2770 1890 {}
N 2770 1950 2770 1980 {}
N 2690 1920 2730 1920 {}
N 2770 1920 2810 1920 {}
N 3020 1860 3020 1890 {}
N 3020 1950 3020 1980 {}
N 2940 1920 2980 1920 {}
N 3020 1920 3060 1920 {}
N 2770 2060 2770 2090 {}
N 2770 2150 2770 2180 {}
N 2690 2120 2730 2120 {}
N 2770 2120 2810 2120 {}
N 3020 2060 3020 2090 {}
N 3020 2150 3020 2180 {}
N 2940 2120 2980 2120 {}
N 3020 2120 3060 2120 {}
N 20 2340 20 2370 {}
N 20 2430 20 2460 {}
N -60 2400 -20 2400 {}
N 20 2400 60 2400 {}
N 270 2340 270 2370 {}
N 270 2430 270 2460 {}
N 190 2400 230 2400 {}
N 270 2400 310 2400 {}
N 20 2540 20 2570 {}
N 20 2630 20 2660 {}
N -60 2600 -20 2600 {}
N 20 2600 60 2600 {}
N 270 2540 270 2570 {}
N 270 2630 270 2660 {}
N 190 2600 230 2600 {}
N 270 2600 310 2600 {}
N 670 2340 670 2370 {}
N 670 2430 670 2460 {}
N 590 2400 630 2400 {}
N 670 2400 710 2400 {}
N 920 2340 920 2370 {}
N 920 2430 920 2460 {}
N 840 2400 880 2400 {}
N 920 2400 960 2400 {}
N 1320 2340 1320 2370 {}
N 1320 2430 1320 2460 {}
N 1240 2400 1280 2400 {}
N 1320 2400 1360 2400 {}
N 1320 2540 1320 2570 {}
N 1320 2630 1320 2660 {}
N 1240 2600 1280 2600 {}
N 1320 2600 1360 2600 {}
N 1720 2340 1720 2370 {}
N 1720 2430 1720 2460 {}
N 1640 2400 1680 2400 {}
N 1720 2400 1760 2400 {}
N 1720 2540 1720 2570 {}
N 1720 2630 1720 2660 {}
N 1640 2600 1680 2600 {}
N 1720 2600 1760 2600 {}
N 2120 2340 2120 2370 {}
N 2120 2430 2120 2460 {}
N 2040 2400 2080 2400 {}
N 2120 2400 2160 2400 {}
N 2370 2340 2370 2370 {}
N 2370 2430 2370 2460 {}
N 2290 2400 2330 2400 {}
N 2370 2400 2410 2400 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 0 0 0 0 {name=M1
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
C {lab_pin.sym} 20 -60 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 20 60 0 0 {name=p2 sig_type=std_logic lab=COMB1}
C {lab_pin.sym} -60 0 0 0 {name=p3 sig_type=std_logic lab=COM}
C {lab_pin.sym} 60 0 0 1 {name=p4 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 200 0 0 {name=M2
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
C {lab_pin.sym} 20 140 0 0 {name=p5 sig_type=std_logic lab=COMB1}
C {lab_pin.sym} 20 260 0 0 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -60 200 0 0 {name=p7 sig_type=std_logic lab=COM}
C {lab_pin.sym} 60 200 0 1 {name=p8 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 400 0 0 0 {name=M3
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
C {lab_pin.sym} 420 -60 0 0 {name=p9 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 420 60 0 0 {name=p10 sig_type=std_logic lab=COMB}
C {lab_pin.sym} 340 0 0 0 {name=p11 sig_type=std_logic lab=COMB1}
C {lab_pin.sym} 460 0 0 1 {name=p12 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 400 200 0 0 {name=M4
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
C {lab_pin.sym} 420 140 0 0 {name=p13 sig_type=std_logic lab=COMB}
C {lab_pin.sym} 420 260 0 0 {name=p14 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 340 200 0 0 {name=p15 sig_type=std_logic lab=COMB1}
C {lab_pin.sym} 460 200 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 800 0 0 0 {name=M5
L=0.15
W=6
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
C {lab_pin.sym} 820 -60 0 0 {name=p17 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 820 60 0 0 {name=p18 sig_type=std_logic lab=TRYANYN_p1}
C {lab_pin.sym} 740 0 0 0 {name=p19 sig_type=std_logic lab=TRY2}
C {lab_pin.sym} 860 0 0 1 {name=p20 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1050 0 0 0 {name=M6
L=0.15
W=6
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
C {lab_pin.sym} 1070 -60 0 0 {name=p21 sig_type=std_logic lab=TRYANYN_p1}
C {lab_pin.sym} 1070 60 0 0 {name=p22 sig_type=std_logic lab=TRYANYN_p2}
C {lab_pin.sym} 990 0 0 0 {name=p23 sig_type=std_logic lab=TRY1}
C {lab_pin.sym} 1110 0 0 1 {name=p24 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1300 0 0 0 {name=M7
L=0.15
W=6
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
C {lab_pin.sym} 1320 -60 0 0 {name=p25 sig_type=std_logic lab=TRYANYN_p2}
C {lab_pin.sym} 1320 60 0 0 {name=p26 sig_type=std_logic lab=TRYANYN}
C {lab_pin.sym} 1240 0 0 0 {name=p27 sig_type=std_logic lab=TRY0}
C {lab_pin.sym} 1360 0 0 1 {name=p28 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 800 200 0 0 {name=M8
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
C {lab_pin.sym} 820 140 0 0 {name=p29 sig_type=std_logic lab=TRYANYN}
C {lab_pin.sym} 820 260 0 0 {name=p30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 740 200 0 0 {name=p31 sig_type=std_logic lab=TRY2}
C {lab_pin.sym} 860 200 0 1 {name=p32 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1050 200 0 0 {name=M9
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
C {lab_pin.sym} 1070 140 0 0 {name=p33 sig_type=std_logic lab=TRYANYN}
C {lab_pin.sym} 1070 260 0 0 {name=p34 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 990 200 0 0 {name=p35 sig_type=std_logic lab=TRY1}
C {lab_pin.sym} 1110 200 0 1 {name=p36 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1300 200 0 0 {name=M10
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
C {lab_pin.sym} 1320 140 0 0 {name=p37 sig_type=std_logic lab=TRYANYN}
C {lab_pin.sym} 1320 260 0 0 {name=p38 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1240 200 0 0 {name=p39 sig_type=std_logic lab=TRY0}
C {lab_pin.sym} 1360 200 0 1 {name=p40 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1700 0 0 0 {name=M11
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
C {lab_pin.sym} 1720 -60 0 0 {name=p41 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1720 60 0 0 {name=p42 sig_type=std_logic lab=TRYANY}
C {lab_pin.sym} 1640 0 0 0 {name=p43 sig_type=std_logic lab=TRYANYN}
C {lab_pin.sym} 1760 0 0 1 {name=p44 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1700 200 0 0 {name=M12
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
C {lab_pin.sym} 1720 140 0 0 {name=p45 sig_type=std_logic lab=TRYANY}
C {lab_pin.sym} 1720 260 0 0 {name=p46 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1640 200 0 0 {name=p47 sig_type=std_logic lab=TRYANYN}
C {lab_pin.sym} 1760 200 0 1 {name=p48 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2100 0 0 0 {name=M13
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
C {lab_pin.sym} 2120 -60 0 0 {name=p49 sig_type=std_logic lab=COMB}
C {lab_pin.sym} 2120 60 0 0 {name=p50 sig_type=std_logic lab=XC}
C {lab_pin.sym} 2040 0 0 0 {name=p51 sig_type=std_logic lab=TRYANY}
C {lab_pin.sym} 2160 0 0 1 {name=p52 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 2350 0 0 0 {name=M14
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
C {lab_pin.sym} 2370 -60 0 0 {name=p53 sig_type=std_logic lab=COMB}
C {lab_pin.sym} 2370 60 0 0 {name=p54 sig_type=std_logic lab=XC}
C {lab_pin.sym} 2290 0 0 0 {name=p55 sig_type=std_logic lab=TRYANYN}
C {lab_pin.sym} 2410 0 0 1 {name=p56 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 2750 0 0 0 {name=M15
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
C {lab_pin.sym} 2770 -60 0 0 {name=p57 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2770 60 0 0 {name=p58 sig_type=std_logic lab=XCN}
C {lab_pin.sym} 2690 0 0 0 {name=p59 sig_type=std_logic lab=XC}
C {lab_pin.sym} 2810 0 0 1 {name=p60 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2750 200 0 0 {name=M16
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
C {lab_pin.sym} 2770 140 0 0 {name=p61 sig_type=std_logic lab=XCN}
C {lab_pin.sym} 2770 260 0 0 {name=p62 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2690 200 0 0 {name=p63 sig_type=std_logic lab=XC}
C {lab_pin.sym} 2810 200 0 1 {name=p64 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 0 480 0 0 {name=M17
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
C {lab_pin.sym} 20 420 0 0 {name=p65 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 20 540 0 0 {name=p66 sig_type=std_logic lab=COML}
C {lab_pin.sym} -60 480 0 0 {name=p67 sig_type=std_logic lab=XCN}
C {lab_pin.sym} 60 480 0 1 {name=p68 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 680 0 0 {name=M18
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
C {lab_pin.sym} 20 620 0 0 {name=p69 sig_type=std_logic lab=COML}
C {lab_pin.sym} 20 740 0 0 {name=p70 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -60 680 0 0 {name=p71 sig_type=std_logic lab=XCN}
C {lab_pin.sym} 60 680 0 1 {name=p72 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 400 480 0 0 {name=M19
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
C {lab_pin.sym} 420 420 0 0 {name=p73 sig_type=std_logic lab=COML}
C {lab_pin.sym} 420 540 0 0 {name=p74 sig_type=std_logic lab=XC}
C {lab_pin.sym} 340 480 0 0 {name=p75 sig_type=std_logic lab=TRYANYN}
C {lab_pin.sym} 460 480 0 1 {name=p76 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 650 480 0 0 {name=M20
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
C {lab_pin.sym} 670 420 0 0 {name=p77 sig_type=std_logic lab=COML}
C {lab_pin.sym} 670 540 0 0 {name=p78 sig_type=std_logic lab=XC}
C {lab_pin.sym} 590 480 0 0 {name=p79 sig_type=std_logic lab=TRYANY}
C {lab_pin.sym} 710 480 0 1 {name=p80 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1050 480 0 0 {name=M21
L=0.15
W=6
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
C {lab_pin.sym} 1070 420 0 0 {name=p81 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1070 540 0 0 {name=p82 sig_type=std_logic lab=ENN2_p1}
C {lab_pin.sym} 990 480 0 0 {name=p83 sig_type=std_logic lab=TRY2}
C {lab_pin.sym} 1110 480 0 1 {name=p84 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1300 480 0 0 {name=M22
L=0.15
W=6
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
C {lab_pin.sym} 1320 420 0 0 {name=p85 sig_type=std_logic lab=ENN2_p1}
C {lab_pin.sym} 1320 540 0 0 {name=p86 sig_type=std_logic lab=ENN2_p2}
C {lab_pin.sym} 1240 480 0 0 {name=p87 sig_type=std_logic lab=DEC2}
C {lab_pin.sym} 1360 480 0 1 {name=p88 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1550 480 0 0 {name=M23
L=0.15
W=6
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
C {lab_pin.sym} 1570 420 0 0 {name=p89 sig_type=std_logic lab=ENN2_p2}
C {lab_pin.sym} 1570 540 0 0 {name=p90 sig_type=std_logic lab=ENN2}
C {lab_pin.sym} 1490 480 0 0 {name=p91 sig_type=std_logic lab=RST}
C {lab_pin.sym} 1610 480 0 1 {name=p92 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1050 680 0 0 {name=M24
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
C {lab_pin.sym} 1070 620 0 0 {name=p93 sig_type=std_logic lab=ENN2}
C {lab_pin.sym} 1070 740 0 0 {name=p94 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 990 680 0 0 {name=p95 sig_type=std_logic lab=TRY2}
C {lab_pin.sym} 1110 680 0 1 {name=p96 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1300 680 0 0 {name=M25
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
C {lab_pin.sym} 1320 620 0 0 {name=p97 sig_type=std_logic lab=ENN2}
C {lab_pin.sym} 1320 740 0 0 {name=p98 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1240 680 0 0 {name=p99 sig_type=std_logic lab=DEC2}
C {lab_pin.sym} 1360 680 0 1 {name=p100 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1550 680 0 0 {name=M26
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
C {lab_pin.sym} 1570 620 0 0 {name=p101 sig_type=std_logic lab=ENN2}
C {lab_pin.sym} 1570 740 0 0 {name=p102 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1490 680 0 0 {name=p103 sig_type=std_logic lab=RST}
C {lab_pin.sym} 1610 680 0 1 {name=p104 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1950 480 0 0 {name=M27
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
C {lab_pin.sym} 1970 420 0 0 {name=p105 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1970 540 0 0 {name=p106 sig_type=std_logic lab=EN2}
C {lab_pin.sym} 1890 480 0 0 {name=p107 sig_type=std_logic lab=ENN2}
C {lab_pin.sym} 2010 480 0 1 {name=p108 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1950 680 0 0 {name=M28
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
C {lab_pin.sym} 1970 620 0 0 {name=p109 sig_type=std_logic lab=EN2}
C {lab_pin.sym} 1970 740 0 0 {name=p110 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1890 680 0 0 {name=p111 sig_type=std_logic lab=ENN2}
C {lab_pin.sym} 2010 680 0 1 {name=p112 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 2350 480 0 0 {name=M29
L=0.15
W=4
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
C {lab_pin.sym} 2370 420 0 0 {name=p113 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2370 540 0 0 {name=p114 sig_type=std_logic lab=N1_2_p1}
C {lab_pin.sym} 2290 480 0 0 {name=p115 sig_type=std_logic lab=TRY2}
C {lab_pin.sym} 2410 480 0 1 {name=p116 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 2600 480 0 0 {name=M30
L=0.15
W=4
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
C {lab_pin.sym} 2620 420 0 0 {name=p117 sig_type=std_logic lab=N1_2_p1}
C {lab_pin.sym} 2620 540 0 0 {name=p118 sig_type=std_logic lab=N1_2}
C {lab_pin.sym} 2540 480 0 0 {name=p119 sig_type=std_logic lab=COML}
C {lab_pin.sym} 2660 480 0 1 {name=p120 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2350 680 0 0 {name=M31
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
C {lab_pin.sym} 2370 620 0 0 {name=p121 sig_type=std_logic lab=N1_2}
C {lab_pin.sym} 2370 740 0 0 {name=p122 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2290 680 0 0 {name=p123 sig_type=std_logic lab=TRY2}
C {lab_pin.sym} 2410 680 0 1 {name=p124 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2600 680 0 0 {name=M32
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
C {lab_pin.sym} 2620 620 0 0 {name=p125 sig_type=std_logic lab=N1_2}
C {lab_pin.sym} 2620 740 0 0 {name=p126 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2540 680 0 0 {name=p127 sig_type=std_logic lab=COML}
C {lab_pin.sym} 2660 680 0 1 {name=p128 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 0 960 0 0 {name=M33
L=0.15
W=4
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
C {lab_pin.sym} 20 900 0 0 {name=p129 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 20 1020 0 0 {name=p130 sig_type=std_logic lab=DIN2_p1}
C {lab_pin.sym} -60 960 0 0 {name=p131 sig_type=std_logic lab=N1_2}
C {lab_pin.sym} 60 960 0 1 {name=p132 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 250 960 0 0 {name=M34
L=0.15
W=4
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
C {lab_pin.sym} 270 900 0 0 {name=p133 sig_type=std_logic lab=DIN2_p1}
C {lab_pin.sym} 270 1020 0 0 {name=p134 sig_type=std_logic lab=DIN2}
C {lab_pin.sym} 190 960 0 0 {name=p135 sig_type=std_logic lab=RST}
C {lab_pin.sym} 310 960 0 1 {name=p136 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 1160 0 0 {name=M35
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
C {lab_pin.sym} 20 1100 0 0 {name=p137 sig_type=std_logic lab=DIN2}
C {lab_pin.sym} 20 1220 0 0 {name=p138 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -60 1160 0 0 {name=p139 sig_type=std_logic lab=N1_2}
C {lab_pin.sym} 60 1160 0 1 {name=p140 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 250 1160 0 0 {name=M36
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
C {lab_pin.sym} 270 1100 0 0 {name=p141 sig_type=std_logic lab=DIN2}
C {lab_pin.sym} 270 1220 0 0 {name=p142 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 190 1160 0 0 {name=p143 sig_type=std_logic lab=RST}
C {lab_pin.sym} 310 1160 0 1 {name=p144 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 650 960 0 0 {name=M37
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
C {lab_pin.sym} 670 900 0 0 {name=p145 sig_type=std_logic lab=DIN2}
C {lab_pin.sym} 670 1020 0 0 {name=p146 sig_type=std_logic lab=X2}
C {lab_pin.sym} 590 960 0 0 {name=p147 sig_type=std_logic lab=EN2}
C {lab_pin.sym} 710 960 0 1 {name=p148 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 900 960 0 0 {name=M38
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
C {lab_pin.sym} 920 900 0 0 {name=p149 sig_type=std_logic lab=DIN2}
C {lab_pin.sym} 920 1020 0 0 {name=p150 sig_type=std_logic lab=X2}
C {lab_pin.sym} 840 960 0 0 {name=p151 sig_type=std_logic lab=ENN2}
C {lab_pin.sym} 960 960 0 1 {name=p152 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1300 960 0 0 {name=M39
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
C {lab_pin.sym} 1320 900 0 0 {name=p153 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1320 1020 0 0 {name=p154 sig_type=std_logic lab=B2N}
C {lab_pin.sym} 1240 960 0 0 {name=p155 sig_type=std_logic lab=X2}
C {lab_pin.sym} 1360 960 0 1 {name=p156 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1300 1160 0 0 {name=M40
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
C {lab_pin.sym} 1320 1100 0 0 {name=p157 sig_type=std_logic lab=B2N}
C {lab_pin.sym} 1320 1220 0 0 {name=p158 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1240 1160 0 0 {name=p159 sig_type=std_logic lab=X2}
C {lab_pin.sym} 1360 1160 0 1 {name=p160 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1700 960 0 0 {name=M41
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
C {lab_pin.sym} 1720 900 0 0 {name=p161 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1720 1020 0 0 {name=p162 sig_type=std_logic lab=D2}
C {lab_pin.sym} 1640 960 0 0 {name=p163 sig_type=std_logic lab=B2N}
C {lab_pin.sym} 1760 960 0 1 {name=p164 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1700 1160 0 0 {name=M42
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
C {lab_pin.sym} 1720 1100 0 0 {name=p165 sig_type=std_logic lab=D2}
C {lab_pin.sym} 1720 1220 0 0 {name=p166 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1640 1160 0 0 {name=p167 sig_type=std_logic lab=B2N}
C {lab_pin.sym} 1760 1160 0 1 {name=p168 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2100 960 0 0 {name=M43
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
C {lab_pin.sym} 2120 900 0 0 {name=p169 sig_type=std_logic lab=D2}
C {lab_pin.sym} 2120 1020 0 0 {name=p170 sig_type=std_logic lab=X2}
C {lab_pin.sym} 2040 960 0 0 {name=p171 sig_type=std_logic lab=ENN2}
C {lab_pin.sym} 2160 960 0 1 {name=p172 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 2350 960 0 0 {name=M44
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
C {lab_pin.sym} 2370 900 0 0 {name=p173 sig_type=std_logic lab=D2}
C {lab_pin.sym} 2370 1020 0 0 {name=p174 sig_type=std_logic lab=X2}
C {lab_pin.sym} 2290 960 0 0 {name=p175 sig_type=std_logic lab=EN2}
C {lab_pin.sym} 2410 960 0 1 {name=p176 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 0 1440 0 0 {name=M45
L=0.15
W=6
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
C {lab_pin.sym} 20 1380 0 0 {name=p177 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 20 1500 0 0 {name=p178 sig_type=std_logic lab=ENN1_p1}
C {lab_pin.sym} -60 1440 0 0 {name=p179 sig_type=std_logic lab=TRY1}
C {lab_pin.sym} 60 1440 0 1 {name=p180 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 250 1440 0 0 {name=M46
L=0.15
W=6
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
C {lab_pin.sym} 270 1380 0 0 {name=p181 sig_type=std_logic lab=ENN1_p1}
C {lab_pin.sym} 270 1500 0 0 {name=p182 sig_type=std_logic lab=ENN1_p2}
C {lab_pin.sym} 190 1440 0 0 {name=p183 sig_type=std_logic lab=DEC1}
C {lab_pin.sym} 310 1440 0 1 {name=p184 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 500 1440 0 0 {name=M47
L=0.15
W=6
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
C {lab_pin.sym} 520 1380 0 0 {name=p185 sig_type=std_logic lab=ENN1_p2}
C {lab_pin.sym} 520 1500 0 0 {name=p186 sig_type=std_logic lab=ENN1}
C {lab_pin.sym} 440 1440 0 0 {name=p187 sig_type=std_logic lab=RST}
C {lab_pin.sym} 560 1440 0 1 {name=p188 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 1640 0 0 {name=M48
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
C {lab_pin.sym} 20 1580 0 0 {name=p189 sig_type=std_logic lab=ENN1}
C {lab_pin.sym} 20 1700 0 0 {name=p190 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -60 1640 0 0 {name=p191 sig_type=std_logic lab=TRY1}
C {lab_pin.sym} 60 1640 0 1 {name=p192 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 250 1640 0 0 {name=M49
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
C {lab_pin.sym} 270 1580 0 0 {name=p193 sig_type=std_logic lab=ENN1}
C {lab_pin.sym} 270 1700 0 0 {name=p194 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 190 1640 0 0 {name=p195 sig_type=std_logic lab=DEC1}
C {lab_pin.sym} 310 1640 0 1 {name=p196 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 500 1640 0 0 {name=M50
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
C {lab_pin.sym} 520 1580 0 0 {name=p197 sig_type=std_logic lab=ENN1}
C {lab_pin.sym} 520 1700 0 0 {name=p198 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 440 1640 0 0 {name=p199 sig_type=std_logic lab=RST}
C {lab_pin.sym} 560 1640 0 1 {name=p200 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 900 1440 0 0 {name=M51
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
C {lab_pin.sym} 920 1380 0 0 {name=p201 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 920 1500 0 0 {name=p202 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 840 1440 0 0 {name=p203 sig_type=std_logic lab=ENN1}
C {lab_pin.sym} 960 1440 0 1 {name=p204 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 900 1640 0 0 {name=M52
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
C {lab_pin.sym} 920 1580 0 0 {name=p205 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 920 1700 0 0 {name=p206 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 840 1640 0 0 {name=p207 sig_type=std_logic lab=ENN1}
C {lab_pin.sym} 960 1640 0 1 {name=p208 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1300 1440 0 0 {name=M53
L=0.15
W=4
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
C {lab_pin.sym} 1320 1380 0 0 {name=p209 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1320 1500 0 0 {name=p210 sig_type=std_logic lab=N1_1_p1}
C {lab_pin.sym} 1240 1440 0 0 {name=p211 sig_type=std_logic lab=TRY1}
C {lab_pin.sym} 1360 1440 0 1 {name=p212 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1550 1440 0 0 {name=M54
L=0.15
W=4
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
C {lab_pin.sym} 1570 1380 0 0 {name=p213 sig_type=std_logic lab=N1_1_p1}
C {lab_pin.sym} 1570 1500 0 0 {name=p214 sig_type=std_logic lab=N1_1}
C {lab_pin.sym} 1490 1440 0 0 {name=p215 sig_type=std_logic lab=COML}
C {lab_pin.sym} 1610 1440 0 1 {name=p216 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1300 1640 0 0 {name=M55
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
C {lab_pin.sym} 1320 1580 0 0 {name=p217 sig_type=std_logic lab=N1_1}
C {lab_pin.sym} 1320 1700 0 0 {name=p218 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1240 1640 0 0 {name=p219 sig_type=std_logic lab=TRY1}
C {lab_pin.sym} 1360 1640 0 1 {name=p220 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1550 1640 0 0 {name=M56
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
C {lab_pin.sym} 1570 1580 0 0 {name=p221 sig_type=std_logic lab=N1_1}
C {lab_pin.sym} 1570 1700 0 0 {name=p222 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1490 1640 0 0 {name=p223 sig_type=std_logic lab=COML}
C {lab_pin.sym} 1610 1640 0 1 {name=p224 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1950 1440 0 0 {name=M57
L=0.15
W=4
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
C {lab_pin.sym} 1970 1380 0 0 {name=p225 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1970 1500 0 0 {name=p226 sig_type=std_logic lab=DIN1_p1}
C {lab_pin.sym} 1890 1440 0 0 {name=p227 sig_type=std_logic lab=N1_1}
C {lab_pin.sym} 2010 1440 0 1 {name=p228 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 2200 1440 0 0 {name=M58
L=0.15
W=4
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
C {lab_pin.sym} 2220 1380 0 0 {name=p229 sig_type=std_logic lab=DIN1_p1}
C {lab_pin.sym} 2220 1500 0 0 {name=p230 sig_type=std_logic lab=DIN1}
C {lab_pin.sym} 2140 1440 0 0 {name=p231 sig_type=std_logic lab=RST}
C {lab_pin.sym} 2260 1440 0 1 {name=p232 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1950 1640 0 0 {name=M59
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
C {lab_pin.sym} 1970 1580 0 0 {name=p233 sig_type=std_logic lab=DIN1}
C {lab_pin.sym} 1970 1700 0 0 {name=p234 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1890 1640 0 0 {name=p235 sig_type=std_logic lab=N1_1}
C {lab_pin.sym} 2010 1640 0 1 {name=p236 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2200 1640 0 0 {name=M60
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
C {lab_pin.sym} 2220 1580 0 0 {name=p237 sig_type=std_logic lab=DIN1}
C {lab_pin.sym} 2220 1700 0 0 {name=p238 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2140 1640 0 0 {name=p239 sig_type=std_logic lab=RST}
C {lab_pin.sym} 2260 1640 0 1 {name=p240 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2600 1440 0 0 {name=M61
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
C {lab_pin.sym} 2620 1380 0 0 {name=p241 sig_type=std_logic lab=DIN1}
C {lab_pin.sym} 2620 1500 0 0 {name=p242 sig_type=std_logic lab=X1}
C {lab_pin.sym} 2540 1440 0 0 {name=p243 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 2660 1440 0 1 {name=p244 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 2850 1440 0 0 {name=M62
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
C {lab_pin.sym} 2870 1380 0 0 {name=p245 sig_type=std_logic lab=DIN1}
C {lab_pin.sym} 2870 1500 0 0 {name=p246 sig_type=std_logic lab=X1}
C {lab_pin.sym} 2790 1440 0 0 {name=p247 sig_type=std_logic lab=ENN1}
C {lab_pin.sym} 2910 1440 0 1 {name=p248 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 0 1920 0 0 {name=M63
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
C {lab_pin.sym} 20 1860 0 0 {name=p249 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 20 1980 0 0 {name=p250 sig_type=std_logic lab=B1N}
C {lab_pin.sym} -60 1920 0 0 {name=p251 sig_type=std_logic lab=X1}
C {lab_pin.sym} 60 1920 0 1 {name=p252 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 2120 0 0 {name=M64
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
C {lab_pin.sym} 20 2060 0 0 {name=p253 sig_type=std_logic lab=B1N}
C {lab_pin.sym} 20 2180 0 0 {name=p254 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -60 2120 0 0 {name=p255 sig_type=std_logic lab=X1}
C {lab_pin.sym} 60 2120 0 1 {name=p256 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 400 1920 0 0 {name=M65
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
C {lab_pin.sym} 420 1860 0 0 {name=p257 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 420 1980 0 0 {name=p258 sig_type=std_logic lab=D1}
C {lab_pin.sym} 340 1920 0 0 {name=p259 sig_type=std_logic lab=B1N}
C {lab_pin.sym} 460 1920 0 1 {name=p260 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 400 2120 0 0 {name=M66
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
C {lab_pin.sym} 420 2060 0 0 {name=p261 sig_type=std_logic lab=D1}
C {lab_pin.sym} 420 2180 0 0 {name=p262 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 340 2120 0 0 {name=p263 sig_type=std_logic lab=B1N}
C {lab_pin.sym} 460 2120 0 1 {name=p264 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 800 1920 0 0 {name=M67
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
C {lab_pin.sym} 820 1860 0 0 {name=p265 sig_type=std_logic lab=D1}
C {lab_pin.sym} 820 1980 0 0 {name=p266 sig_type=std_logic lab=X1}
C {lab_pin.sym} 740 1920 0 0 {name=p267 sig_type=std_logic lab=ENN1}
C {lab_pin.sym} 860 1920 0 1 {name=p268 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1050 1920 0 0 {name=M68
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
C {lab_pin.sym} 1070 1860 0 0 {name=p269 sig_type=std_logic lab=D1}
C {lab_pin.sym} 1070 1980 0 0 {name=p270 sig_type=std_logic lab=X1}
C {lab_pin.sym} 990 1920 0 0 {name=p271 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1110 1920 0 1 {name=p272 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1450 1920 0 0 {name=M69
L=0.15
W=6
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
C {lab_pin.sym} 1470 1860 0 0 {name=p273 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1470 1980 0 0 {name=p274 sig_type=std_logic lab=ENN0_p1}
C {lab_pin.sym} 1390 1920 0 0 {name=p275 sig_type=std_logic lab=TRY0}
C {lab_pin.sym} 1510 1920 0 1 {name=p276 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1700 1920 0 0 {name=M70
L=0.15
W=6
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
C {lab_pin.sym} 1720 1860 0 0 {name=p277 sig_type=std_logic lab=ENN0_p1}
C {lab_pin.sym} 1720 1980 0 0 {name=p278 sig_type=std_logic lab=ENN0_p2}
C {lab_pin.sym} 1640 1920 0 0 {name=p279 sig_type=std_logic lab=DEC0}
C {lab_pin.sym} 1760 1920 0 1 {name=p280 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1950 1920 0 0 {name=M71
L=0.15
W=6
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
C {lab_pin.sym} 1970 1860 0 0 {name=p281 sig_type=std_logic lab=ENN0_p2}
C {lab_pin.sym} 1970 1980 0 0 {name=p282 sig_type=std_logic lab=ENN0}
C {lab_pin.sym} 1890 1920 0 0 {name=p283 sig_type=std_logic lab=RST}
C {lab_pin.sym} 2010 1920 0 1 {name=p284 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1450 2120 0 0 {name=M72
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
C {lab_pin.sym} 1470 2060 0 0 {name=p285 sig_type=std_logic lab=ENN0}
C {lab_pin.sym} 1470 2180 0 0 {name=p286 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1390 2120 0 0 {name=p287 sig_type=std_logic lab=TRY0}
C {lab_pin.sym} 1510 2120 0 1 {name=p288 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1700 2120 0 0 {name=M73
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
C {lab_pin.sym} 1720 2060 0 0 {name=p289 sig_type=std_logic lab=ENN0}
C {lab_pin.sym} 1720 2180 0 0 {name=p290 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1640 2120 0 0 {name=p291 sig_type=std_logic lab=DEC0}
C {lab_pin.sym} 1760 2120 0 1 {name=p292 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1950 2120 0 0 {name=M74
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
C {lab_pin.sym} 1970 2060 0 0 {name=p293 sig_type=std_logic lab=ENN0}
C {lab_pin.sym} 1970 2180 0 0 {name=p294 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1890 2120 0 0 {name=p295 sig_type=std_logic lab=RST}
C {lab_pin.sym} 2010 2120 0 1 {name=p296 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 2350 1920 0 0 {name=M75
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
C {lab_pin.sym} 2370 1860 0 0 {name=p297 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2370 1980 0 0 {name=p298 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 2290 1920 0 0 {name=p299 sig_type=std_logic lab=ENN0}
C {lab_pin.sym} 2410 1920 0 1 {name=p300 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2350 2120 0 0 {name=M76
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
C {lab_pin.sym} 2370 2060 0 0 {name=p301 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 2370 2180 0 0 {name=p302 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2290 2120 0 0 {name=p303 sig_type=std_logic lab=ENN0}
C {lab_pin.sym} 2410 2120 0 1 {name=p304 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 2750 1920 0 0 {name=M77
L=0.15
W=4
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
C {lab_pin.sym} 2770 1860 0 0 {name=p305 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 2770 1980 0 0 {name=p306 sig_type=std_logic lab=N1_0_p1}
C {lab_pin.sym} 2690 1920 0 0 {name=p307 sig_type=std_logic lab=TRY0}
C {lab_pin.sym} 2810 1920 0 1 {name=p308 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 3000 1920 0 0 {name=M78
L=0.15
W=4
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
C {lab_pin.sym} 3020 1860 0 0 {name=p309 sig_type=std_logic lab=N1_0_p1}
C {lab_pin.sym} 3020 1980 0 0 {name=p310 sig_type=std_logic lab=N1_0}
C {lab_pin.sym} 2940 1920 0 0 {name=p311 sig_type=std_logic lab=COML}
C {lab_pin.sym} 3060 1920 0 1 {name=p312 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2750 2120 0 0 {name=M79
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
C {lab_pin.sym} 2770 2060 0 0 {name=p313 sig_type=std_logic lab=N1_0}
C {lab_pin.sym} 2770 2180 0 0 {name=p314 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2690 2120 0 0 {name=p315 sig_type=std_logic lab=TRY0}
C {lab_pin.sym} 2810 2120 0 1 {name=p316 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 3000 2120 0 0 {name=M80
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
C {lab_pin.sym} 3020 2060 0 0 {name=p317 sig_type=std_logic lab=N1_0}
C {lab_pin.sym} 3020 2180 0 0 {name=p318 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2940 2120 0 0 {name=p319 sig_type=std_logic lab=COML}
C {lab_pin.sym} 3060 2120 0 1 {name=p320 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 0 2400 0 0 {name=M81
L=0.15
W=4
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
C {lab_pin.sym} 20 2340 0 0 {name=p321 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 20 2460 0 0 {name=p322 sig_type=std_logic lab=DIN0_p1}
C {lab_pin.sym} -60 2400 0 0 {name=p323 sig_type=std_logic lab=N1_0}
C {lab_pin.sym} 60 2400 0 1 {name=p324 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 250 2400 0 0 {name=M82
L=0.15
W=4
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
C {lab_pin.sym} 270 2340 0 0 {name=p325 sig_type=std_logic lab=DIN0_p1}
C {lab_pin.sym} 270 2460 0 0 {name=p326 sig_type=std_logic lab=DIN0}
C {lab_pin.sym} 190 2400 0 0 {name=p327 sig_type=std_logic lab=RST}
C {lab_pin.sym} 310 2400 0 1 {name=p328 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 2600 0 0 {name=M83
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
C {lab_pin.sym} 20 2540 0 0 {name=p329 sig_type=std_logic lab=DIN0}
C {lab_pin.sym} 20 2660 0 0 {name=p330 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -60 2600 0 0 {name=p331 sig_type=std_logic lab=N1_0}
C {lab_pin.sym} 60 2600 0 1 {name=p332 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 250 2600 0 0 {name=M84
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
C {lab_pin.sym} 270 2540 0 0 {name=p333 sig_type=std_logic lab=DIN0}
C {lab_pin.sym} 270 2660 0 0 {name=p334 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 190 2600 0 0 {name=p335 sig_type=std_logic lab=RST}
C {lab_pin.sym} 310 2600 0 1 {name=p336 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 650 2400 0 0 {name=M85
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
C {lab_pin.sym} 670 2340 0 0 {name=p337 sig_type=std_logic lab=DIN0}
C {lab_pin.sym} 670 2460 0 0 {name=p338 sig_type=std_logic lab=X0}
C {lab_pin.sym} 590 2400 0 0 {name=p339 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 710 2400 0 1 {name=p340 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 900 2400 0 0 {name=M86
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
C {lab_pin.sym} 920 2340 0 0 {name=p341 sig_type=std_logic lab=DIN0}
C {lab_pin.sym} 920 2460 0 0 {name=p342 sig_type=std_logic lab=X0}
C {lab_pin.sym} 840 2400 0 0 {name=p343 sig_type=std_logic lab=ENN0}
C {lab_pin.sym} 960 2400 0 1 {name=p344 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1300 2400 0 0 {name=M87
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
C {lab_pin.sym} 1320 2340 0 0 {name=p345 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1320 2460 0 0 {name=p346 sig_type=std_logic lab=B0N}
C {lab_pin.sym} 1240 2400 0 0 {name=p347 sig_type=std_logic lab=X0}
C {lab_pin.sym} 1360 2400 0 1 {name=p348 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1300 2600 0 0 {name=M88
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
C {lab_pin.sym} 1320 2540 0 0 {name=p349 sig_type=std_logic lab=B0N}
C {lab_pin.sym} 1320 2660 0 0 {name=p350 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1240 2600 0 0 {name=p351 sig_type=std_logic lab=X0}
C {lab_pin.sym} 1360 2600 0 1 {name=p352 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1700 2400 0 0 {name=M89
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
C {lab_pin.sym} 1720 2340 0 0 {name=p353 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1720 2460 0 0 {name=p354 sig_type=std_logic lab=D0}
C {lab_pin.sym} 1640 2400 0 0 {name=p355 sig_type=std_logic lab=B0N}
C {lab_pin.sym} 1760 2400 0 1 {name=p356 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1700 2600 0 0 {name=M90
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
C {lab_pin.sym} 1720 2540 0 0 {name=p357 sig_type=std_logic lab=D0}
C {lab_pin.sym} 1720 2660 0 0 {name=p358 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1640 2600 0 0 {name=p359 sig_type=std_logic lab=B0N}
C {lab_pin.sym} 1760 2600 0 1 {name=p360 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2100 2400 0 0 {name=M91
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
C {lab_pin.sym} 2120 2340 0 0 {name=p361 sig_type=std_logic lab=D0}
C {lab_pin.sym} 2120 2460 0 0 {name=p362 sig_type=std_logic lab=X0}
C {lab_pin.sym} 2040 2400 0 0 {name=p363 sig_type=std_logic lab=ENN0}
C {lab_pin.sym} 2160 2400 0 1 {name=p364 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 2350 2400 0 0 {name=M92
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
C {lab_pin.sym} 2370 2340 0 0 {name=p365 sig_type=std_logic lab=D0}
C {lab_pin.sym} 2370 2460 0 0 {name=p366 sig_type=std_logic lab=X0}
C {lab_pin.sym} 2290 2400 0 0 {name=p367 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 2410 2400 0 1 {name=p368 sig_type=std_logic lab=VCC}
C {ipin.sym} -400 -500 0 0 {name=i1 lab=VCC}
C {ipin.sym} -400 -470 0 0 {name=i2 lab=VSS}
C {ipin.sym} -400 -440 0 0 {name=i3 lab=RST}
C {ipin.sym} -400 -410 0 0 {name=i4 lab=TRY2}
C {ipin.sym} -400 -380 0 0 {name=i5 lab=DEC2}
C {ipin.sym} -400 -350 0 0 {name=i6 lab=TRY1}
C {ipin.sym} -400 -320 0 0 {name=i7 lab=DEC1}
C {ipin.sym} -400 -290 0 0 {name=i8 lab=TRY0}
C {ipin.sym} -400 -260 0 0 {name=i9 lab=DEC0}
C {ipin.sym} -400 -230 0 0 {name=i10 lab=COM}
C {opin.sym} -400 -170 0 0 {name=o1 lab=D2}
C {opin.sym} -400 -140 0 0 {name=o2 lab=D1}
C {opin.sym} -400 -110 0 0 {name=o3 lab=D0}
C {opin.sym} -400 -80 0 0 {name=o4 lab=B2N}
C {opin.sym} -400 -50 0 0 {name=o5 lab=B1N}
C {opin.sym} -400 -20 0 0 {name=o6 lab=B0N}
