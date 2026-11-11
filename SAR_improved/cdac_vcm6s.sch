v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {cdac_vcm6s: AREA-REDUCED 6-bit sampling CDAC with Vcm-based switching (cdac_vcm6 with 2 x 2 um units).  Unit C = cap_mim_m3_2 2 x 2 um (about 10 fF).
Capacitors on VX: 16C (bit 5), 8C (bit 4), 4C (bit 3), 2C (bit 2), 1C (bit 1) + dummy CD = 32C in total (about 0.30 pF).  Bit k owns 2^(k-1) unit caps (MF = number of units).
SMP = 1: transmission gate MS1/MS2 connects VX to VIN (VX tracks VIN); every bottom plate BPk sits at VCM.
SMP = 0: VX floats and holds VIN.  After decision k each bottom plate moves ONCE: to VREF (UPk = 1, VX goes up) or to 0 V (DNk = 1, VX goes down).
dVX = (Vbottom - VCM) x Ck / 32C:  bit 5 moves VX by +-VREF/4, bit 4 by +-VREF/8, ... bit 1 by +-VREF/64 (= half an LSB).
Dummy CD = 1.25 x 1.25 um (about 4 fF) = C - Cp (Cp = parasitic on VX: comparator input + switch junctions), so Ctotal = 32C.
Replica VR: CR (31 unit caps) + CRD (copy of the dummy) in cap_mim_m3_1 (met3-met4), drawn UNDER the main array (cap_mim_m3_2, met4-met5): same capacitance, no extra footprint.
Switch widths scale with the capacitor they drive (4x smaller caps than cdac_vcm6, so 4x narrower switches, min 0.42 um).} -400 -1000 0 0 0.3 0.3 {}
T {bit 5: 16C} 360 -560 0 0 0.4 0.4 {}
T {bit 4: 8C} 860 -560 0 0 0.4 0.4 {}
T {bit 3: 4C} 1360 -560 0 0 0.4 0.4 {}
T {bit 2: 2C} 1860 -560 0 0 0.4 0.4 {}
T {bit 1: 1C} 2360 -560 0 0 0.4 0.4 {}
N 3020 -430 3020 -410 {}
N 3020 -350 3020 -330 {}
N 2960 -380 2980 -380 {}
N 3020 -380 3060 -380 {}
N 3260 -430 3260 -410 {}
N 3260 -350 3260 -330 {}
N 3200 -380 3220 -380 {}
N 3260 -380 3300 -380 {}
N 3020 -50 3020 -30 {}
N 3020 30 3020 50 {}
N 2960 0 2980 0 {}
N 3020 0 3060 0 {}
N 3260 -50 3260 -30 {}
N 3260 30 3260 50 {}
N 3200 0 3220 0 {}
N 3260 0 3300 0 {}
N 20 250 20 270 {}
N 20 330 20 350 {}
N -40 300 -20 300 {}
N 20 300 60 300 {}
N 20 400 20 420 {}
N 20 480 20 500 {}
N -40 450 -20 450 {}
N 20 450 60 450 {}
N 420 -450 420 -430 {}
N 420 -370 420 -350 {}
N 360 -400 380 -400 {}
N 420 -400 460 -400 {}
N 420 -200 420 -180 {}
N 420 -120 420 -100 {}
N 360 -150 380 -150 {}
N 420 -150 460 -150 {}
N 640 -450 640 -430 {}
N 640 -370 640 -350 {}
N 580 -400 600 -400 {}
N 640 -400 680 -400 {}
N 640 -200 640 -180 {}
N 640 -120 640 -100 {}
N 580 -150 600 -150 {}
N 640 -150 680 -150 {}
N 920 -450 920 -430 {}
N 920 -370 920 -350 {}
N 860 -400 880 -400 {}
N 920 -400 960 -400 {}
N 920 -200 920 -180 {}
N 920 -120 920 -100 {}
N 860 -150 880 -150 {}
N 920 -150 960 -150 {}
N 1140 -450 1140 -430 {}
N 1140 -370 1140 -350 {}
N 1080 -400 1100 -400 {}
N 1140 -400 1180 -400 {}
N 1140 -200 1140 -180 {}
N 1140 -120 1140 -100 {}
N 1080 -150 1100 -150 {}
N 1140 -150 1180 -150 {}
N 1420 -450 1420 -430 {}
N 1420 -370 1420 -350 {}
N 1360 -400 1380 -400 {}
N 1420 -400 1460 -400 {}
N 1420 -200 1420 -180 {}
N 1420 -120 1420 -100 {}
N 1360 -150 1380 -150 {}
N 1420 -150 1460 -150 {}
N 1640 -450 1640 -430 {}
N 1640 -370 1640 -350 {}
N 1580 -400 1600 -400 {}
N 1640 -400 1680 -400 {}
N 1640 -200 1640 -180 {}
N 1640 -120 1640 -100 {}
N 1580 -150 1600 -150 {}
N 1640 -150 1680 -150 {}
N 1920 -450 1920 -430 {}
N 1920 -370 1920 -350 {}
N 1860 -400 1880 -400 {}
N 1920 -400 1960 -400 {}
N 1920 -200 1920 -180 {}
N 1920 -120 1920 -100 {}
N 1860 -150 1880 -150 {}
N 1920 -150 1960 -150 {}
N 2140 -450 2140 -430 {}
N 2140 -370 2140 -350 {}
N 2080 -400 2100 -400 {}
N 2140 -400 2180 -400 {}
N 2140 -200 2140 -180 {}
N 2140 -120 2140 -100 {}
N 2080 -150 2100 -150 {}
N 2140 -150 2180 -150 {}
N 2420 -450 2420 -430 {}
N 2420 -370 2420 -350 {}
N 2360 -400 2380 -400 {}
N 2420 -400 2460 -400 {}
N 2420 -200 2420 -180 {}
N 2420 -120 2420 -100 {}
N 2360 -150 2380 -150 {}
N 2420 -150 2460 -150 {}
N 2640 -450 2640 -430 {}
N 2640 -370 2640 -350 {}
N 2580 -400 2600 -400 {}
N 2640 -400 2680 -400 {}
N 2640 -200 2640 -180 {}
N 2640 -120 2640 -100 {}
N 2580 -150 2600 -150 {}
N 2640 -150 2680 -150 {}
N 400 200 400 220 {}
N 400 280 400 300 {}
N 560 200 560 220 {}
N 560 280 560 300 {}
N 720 200 720 220 {}
N 720 280 720 300 {}
N 880 200 880 220 {}
N 880 280 880 300 {}
N 1040 200 1040 220 {}
N 1040 280 1040 300 {}
N 1200 200 1200 220 {}
N 1200 280 1200 300 {}
N 1500 200 1500 220 {}
N 1500 280 1500 300 {}
N 1660 200 1660 220 {}
N 1660 280 1660 300 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 3000 -380 0 0 {name=MS1
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
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 3020 -430 0 0 {name=l1 sig_type=std_logic lab=VX}
C {lab_pin.sym} 3020 -330 0 0 {name=l2 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 2960 -380 0 0 {name=l3 sig_type=std_logic lab=SMP}
C {lab_pin.sym} 3060 -380 0 1 {name=l4 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 3240 -380 0 0 {name=MS2
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
C {lab_pin.sym} 3260 -430 0 0 {name=l5 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 3260 -330 0 0 {name=l6 sig_type=std_logic lab=VX}
C {lab_pin.sym} 3200 -380 0 0 {name=l7 sig_type=std_logic lab=SMPB}
C {lab_pin.sym} 3300 -380 0 1 {name=l8 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 3000 0 0 0 {name=MR1
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
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 3020 -50 0 0 {name=l9 sig_type=std_logic lab=VR}
C {lab_pin.sym} 3020 50 0 0 {name=l10 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 2960 0 0 0 {name=l11 sig_type=std_logic lab=SMP}
C {lab_pin.sym} 3060 0 0 1 {name=l12 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 3240 0 0 0 {name=MR2
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
C {lab_pin.sym} 3260 -50 0 0 {name=l13 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 3260 50 0 0 {name=l14 sig_type=std_logic lab=VR}
C {lab_pin.sym} 3200 0 0 0 {name=l15 sig_type=std_logic lab=SMPB}
C {lab_pin.sym} 3300 0 0 1 {name=l16 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 0 300 0 0 {name=MSIP
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
C {lab_pin.sym} 20 250 0 0 {name=l17 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 20 350 0 0 {name=l18 sig_type=std_logic lab=SMPB}
C {lab_pin.sym} -40 300 0 0 {name=l19 sig_type=std_logic lab=SMP}
C {lab_pin.sym} 60 300 0 1 {name=l20 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 450 0 0 {name=MSIN
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
C {lab_pin.sym} 20 400 0 0 {name=l21 sig_type=std_logic lab=SMPB}
C {lab_pin.sym} 20 500 0 0 {name=l22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -40 450 0 0 {name=l23 sig_type=std_logic lab=SMP}
C {lab_pin.sym} 60 450 0 1 {name=l24 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 400 -400 0 0 {name=MU5
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
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 420 -450 0 0 {name=l25 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 420 -350 0 0 {name=l26 sig_type=std_logic lab=BP5}
C {lab_pin.sym} 360 -400 0 0 {name=l27 sig_type=std_logic lab=UP5}
C {lab_pin.sym} 460 -400 0 1 {name=l28 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 400 -150 0 0 {name=MD5
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
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 420 -200 0 0 {name=l29 sig_type=std_logic lab=BP5}
C {lab_pin.sym} 420 -100 0 0 {name=l30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 360 -150 0 0 {name=l31 sig_type=std_logic lab=DN5}
C {lab_pin.sym} 460 -150 0 1 {name=l32 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 620 -400 0 0 {name=MT5n
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
C {lab_pin.sym} 640 -450 0 0 {name=l33 sig_type=std_logic lab=BP5}
C {lab_pin.sym} 640 -350 0 0 {name=l34 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 580 -400 0 0 {name=l35 sig_type=std_logic lab=E5B}
C {lab_pin.sym} 680 -400 0 1 {name=l36 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 620 -150 0 0 {name=MT5p
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
C {lab_pin.sym} 640 -200 0 0 {name=l37 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 640 -100 0 0 {name=l38 sig_type=std_logic lab=BP5}
C {lab_pin.sym} 580 -150 0 0 {name=l39 sig_type=std_logic lab=E5}
C {lab_pin.sym} 680 -150 0 1 {name=l40 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 900 -400 0 0 {name=MU4
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
model=nfet_01v8
spiceprefix=X
}
C {lab_pin.sym} 920 -450 0 0 {name=l41 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 920 -350 0 0 {name=l42 sig_type=std_logic lab=BP4}
C {lab_pin.sym} 860 -400 0 0 {name=l43 sig_type=std_logic lab=UP4}
C {lab_pin.sym} 960 -400 0 1 {name=l44 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 900 -150 0 0 {name=MD4
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
C {lab_pin.sym} 920 -200 0 0 {name=l45 sig_type=std_logic lab=BP4}
C {lab_pin.sym} 920 -100 0 0 {name=l46 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 860 -150 0 0 {name=l47 sig_type=std_logic lab=DN4}
C {lab_pin.sym} 960 -150 0 1 {name=l48 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1120 -400 0 0 {name=MT4n
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
C {lab_pin.sym} 1140 -450 0 0 {name=l49 sig_type=std_logic lab=BP4}
C {lab_pin.sym} 1140 -350 0 0 {name=l50 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 1080 -400 0 0 {name=l51 sig_type=std_logic lab=E4B}
C {lab_pin.sym} 1180 -400 0 1 {name=l52 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1120 -150 0 0 {name=MT4p
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
C {lab_pin.sym} 1140 -200 0 0 {name=l53 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 1140 -100 0 0 {name=l54 sig_type=std_logic lab=BP4}
C {lab_pin.sym} 1080 -150 0 0 {name=l55 sig_type=std_logic lab=E4}
C {lab_pin.sym} 1180 -150 0 1 {name=l56 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1400 -400 0 0 {name=MU3
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
C {lab_pin.sym} 1420 -450 0 0 {name=l57 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1420 -350 0 0 {name=l58 sig_type=std_logic lab=BP3}
C {lab_pin.sym} 1360 -400 0 0 {name=l59 sig_type=std_logic lab=UP3}
C {lab_pin.sym} 1460 -400 0 1 {name=l60 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1400 -150 0 0 {name=MD3
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
C {lab_pin.sym} 1420 -200 0 0 {name=l61 sig_type=std_logic lab=BP3}
C {lab_pin.sym} 1420 -100 0 0 {name=l62 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1360 -150 0 0 {name=l63 sig_type=std_logic lab=DN3}
C {lab_pin.sym} 1460 -150 0 1 {name=l64 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1620 -400 0 0 {name=MT3n
L=0.15
W=0.42
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
C {lab_pin.sym} 1640 -450 0 0 {name=l65 sig_type=std_logic lab=BP3}
C {lab_pin.sym} 1640 -350 0 0 {name=l66 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 1580 -400 0 0 {name=l67 sig_type=std_logic lab=E3B}
C {lab_pin.sym} 1680 -400 0 1 {name=l68 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1620 -150 0 0 {name=MT3p
L=0.15
W=0.84
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
C {lab_pin.sym} 1640 -200 0 0 {name=l69 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 1640 -100 0 0 {name=l70 sig_type=std_logic lab=BP3}
C {lab_pin.sym} 1580 -150 0 0 {name=l71 sig_type=std_logic lab=E3}
C {lab_pin.sym} 1680 -150 0 1 {name=l72 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1900 -400 0 0 {name=MU2
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
C {lab_pin.sym} 1920 -450 0 0 {name=l73 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1920 -350 0 0 {name=l74 sig_type=std_logic lab=BP2}
C {lab_pin.sym} 1860 -400 0 0 {name=l75 sig_type=std_logic lab=UP2}
C {lab_pin.sym} 1960 -400 0 1 {name=l76 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1900 -150 0 0 {name=MD2
L=0.15
W=0.42
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
C {lab_pin.sym} 1920 -200 0 0 {name=l77 sig_type=std_logic lab=BP2}
C {lab_pin.sym} 1920 -100 0 0 {name=l78 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1860 -150 0 0 {name=l79 sig_type=std_logic lab=DN2}
C {lab_pin.sym} 1960 -150 0 1 {name=l80 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2120 -400 0 0 {name=MT2n
L=0.15
W=0.42
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
C {lab_pin.sym} 2140 -450 0 0 {name=l81 sig_type=std_logic lab=BP2}
C {lab_pin.sym} 2140 -350 0 0 {name=l82 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 2080 -400 0 0 {name=l83 sig_type=std_logic lab=E2B}
C {lab_pin.sym} 2180 -400 0 1 {name=l84 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 2120 -150 0 0 {name=MT2p
L=0.15
W=0.84
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
C {lab_pin.sym} 2140 -200 0 0 {name=l85 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 2140 -100 0 0 {name=l86 sig_type=std_logic lab=BP2}
C {lab_pin.sym} 2080 -150 0 0 {name=l87 sig_type=std_logic lab=E2}
C {lab_pin.sym} 2180 -150 0 1 {name=l88 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2400 -400 0 0 {name=MU1
L=0.15
W=0.42
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
C {lab_pin.sym} 2420 -450 0 0 {name=l89 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 2420 -350 0 0 {name=l90 sig_type=std_logic lab=BP1}
C {lab_pin.sym} 2360 -400 0 0 {name=l91 sig_type=std_logic lab=UP1}
C {lab_pin.sym} 2460 -400 0 1 {name=l92 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2400 -150 0 0 {name=MD1
L=0.15
W=0.42
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
C {lab_pin.sym} 2420 -200 0 0 {name=l93 sig_type=std_logic lab=BP1}
C {lab_pin.sym} 2420 -100 0 0 {name=l94 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 2360 -150 0 0 {name=l95 sig_type=std_logic lab=DN1}
C {lab_pin.sym} 2460 -150 0 1 {name=l96 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2620 -400 0 0 {name=MT1n
L=0.15
W=0.42
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
C {lab_pin.sym} 2640 -450 0 0 {name=l97 sig_type=std_logic lab=BP1}
C {lab_pin.sym} 2640 -350 0 0 {name=l98 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 2580 -400 0 0 {name=l99 sig_type=std_logic lab=E1B}
C {lab_pin.sym} 2680 -400 0 1 {name=l100 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 2620 -150 0 0 {name=MT1p
L=0.15
W=0.84
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
C {lab_pin.sym} 2640 -200 0 0 {name=l101 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 2640 -100 0 0 {name=l102 sig_type=std_logic lab=BP1}
C {lab_pin.sym} 2580 -150 0 0 {name=l103 sig_type=std_logic lab=E1}
C {lab_pin.sym} 2680 -150 0 1 {name=l104 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 400 250 0 0 {name=C5 model=cap_mim_m3_2 W=2 L=2 MF=16 spiceprefix=X}
C {lab_pin.sym} 400 200 0 0 {name=l105 sig_type=std_logic lab=VX}
C {lab_pin.sym} 400 300 0 0 {name=l106 sig_type=std_logic lab=BP5}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 560 250 0 0 {name=C4 model=cap_mim_m3_2 W=2 L=2 MF=8 spiceprefix=X}
C {lab_pin.sym} 560 200 0 0 {name=l107 sig_type=std_logic lab=VX}
C {lab_pin.sym} 560 300 0 0 {name=l108 sig_type=std_logic lab=BP4}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 720 250 0 0 {name=C3 model=cap_mim_m3_2 W=2 L=2 MF=4 spiceprefix=X}
C {lab_pin.sym} 720 200 0 0 {name=l109 sig_type=std_logic lab=VX}
C {lab_pin.sym} 720 300 0 0 {name=l110 sig_type=std_logic lab=BP3}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 880 250 0 0 {name=C2 model=cap_mim_m3_2 W=2 L=2 MF=2 spiceprefix=X}
C {lab_pin.sym} 880 200 0 0 {name=l111 sig_type=std_logic lab=VX}
C {lab_pin.sym} 880 300 0 0 {name=l112 sig_type=std_logic lab=BP2}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1040 250 0 0 {name=C1 model=cap_mim_m3_2 W=2 L=2 MF=1 spiceprefix=X}
C {lab_pin.sym} 1040 200 0 0 {name=l113 sig_type=std_logic lab=VX}
C {lab_pin.sym} 1040 300 0 0 {name=l114 sig_type=std_logic lab=BP1}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1200 250 0 0 {name=CD model=cap_mim_m3_2 W=1.25 L=1.25 MF=1 spiceprefix=X}
C {lab_pin.sym} 1200 200 0 0 {name=l115 sig_type=std_logic lab=VX}
C {lab_pin.sym} 1200 300 0 0 {name=l116 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_1.sym} 1500 250 0 0 {name=CR model=cap_mim_m3_1 W=2 L=2 MF=31 spiceprefix=X}
C {lab_pin.sym} 1500 200 0 0 {name=l117 sig_type=std_logic lab=VR}
C {lab_pin.sym} 1500 300 0 0 {name=l118 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_1.sym} 1660 250 0 0 {name=CRD model=cap_mim_m3_1 W=1.25 L=1.25 MF=1 spiceprefix=X}
C {lab_pin.sym} 1660 200 0 0 {name=l119 sig_type=std_logic lab=VR}
C {lab_pin.sym} 1660 300 0 0 {name=l120 sig_type=std_logic lab=VSS}
C {ipin.sym} -400 -700 0 0 {name=p1 lab=VCC}
C {ipin.sym} -400 -670 0 0 {name=p2 lab=VSS}
C {ipin.sym} -400 -640 0 0 {name=p3 lab=VREF}
C {ipin.sym} -400 -610 0 0 {name=p4 lab=VCM}
C {ipin.sym} -400 -580 0 0 {name=p5 lab=VIN}
C {ipin.sym} -400 -550 0 0 {name=p6 lab=SMP}
C {ipin.sym} -400 -520 0 0 {name=p7 lab=UP5}
C {ipin.sym} -400 -490 0 0 {name=p8 lab=DN5}
C {ipin.sym} -400 -460 0 0 {name=p9 lab=E5}
C {ipin.sym} -400 -430 0 0 {name=p10 lab=E5B}
C {ipin.sym} -400 -400 0 0 {name=p11 lab=UP4}
C {ipin.sym} -400 -370 0 0 {name=p12 lab=DN4}
C {ipin.sym} -400 -340 0 0 {name=p13 lab=E4}
C {ipin.sym} -400 -310 0 0 {name=p14 lab=E4B}
C {ipin.sym} -400 -280 0 0 {name=p15 lab=UP3}
C {ipin.sym} -400 -250 0 0 {name=p16 lab=DN3}
C {ipin.sym} -400 -220 0 0 {name=p17 lab=E3}
C {ipin.sym} -400 -190 0 0 {name=p18 lab=E3B}
C {ipin.sym} -400 -160 0 0 {name=p19 lab=UP2}
C {ipin.sym} -400 -130 0 0 {name=p20 lab=DN2}
C {ipin.sym} -400 -100 0 0 {name=p21 lab=E2}
C {ipin.sym} -400 -70 0 0 {name=p22 lab=E2B}
C {ipin.sym} -400 -40 0 0 {name=p23 lab=UP1}
C {ipin.sym} -400 -10 0 0 {name=p24 lab=DN1}
C {ipin.sym} -400 20 0 0 {name=p25 lab=E1}
C {ipin.sym} -400 50 0 0 {name=p26 lab=E1B}
C {opin.sym} -400 80 0 0 {name=p27 lab=VX}
C {opin.sym} -400 110 0 0 {name=p28 lab=VR}
