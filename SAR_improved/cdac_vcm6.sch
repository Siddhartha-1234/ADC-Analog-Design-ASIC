v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {cdac_vcm6: 6-bit sampling CDAC with Vcm-based switching (6-bit version of cdac_vcm3).  Unit C = cap_mim_m3_2 4 x 4 um (about 35 fF).
Capacitors on VX: 16C (bit 5), 8C (bit 4), 4C (bit 3), 2C (bit 2), 1C (bit 1) + dummy CD = 32C in total (about 1.10 pF).  Bit k owns 2^(k-1) unit caps (MF = number of units).
SMP = 1: transmission gate MS1/MS2 connects VX to VIN (VX tracks VIN); every bottom plate BPk sits at VCM.
SMP = 0: VX floats and holds VIN.  After decision k each bottom plate moves ONCE: to VREF (UPk = 1, VX goes up) or to 0 V (DNk = 1, VX goes down).
dVX = (Vbottom - VCM) x Ck / 32C:  bit 5 moves VX by +-VREF/4, bit 4 by +-VREF/8, ... bit 1 by +-VREF/64 (= half an LSB).
Dummy CD = 3.4 x 3.4 um (about 25 fF) = C - Cp (Cp = parasitic on VX: comparator input + switch junctions), so Ctotal = 32C.
Replica VR: CR (31 unit caps) + CRD (copy of the dummy) sampled to VCM by an identical switch, so VR has the same capacitance as VX and the kickback cancels.
Switch widths grow with the capacitor (MUk = n um, MDk = n/2 um for n unit caps), so every bit settles equally fast.} -400 -1000 0 0 0.3 0.3 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 3000 -380 0 0 {name=MS1
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
N 3020 -410 3020 -430 {}
C {lab_pin.sym} 3020 -430 0 0 {name=l1 sig_type=std_logic lab=VX}
N 3020 -350 3020 -330 {}
C {lab_pin.sym} 3020 -330 0 0 {name=l2 sig_type=std_logic lab=VIN}
N 2980 -380 2960 -380 {}
C {lab_pin.sym} 2960 -380 0 0 {name=l3 sig_type=std_logic lab=SMP}
N 3020 -380 3060 -380 {}
C {lab_pin.sym} 3060 -380 0 1 {name=l4 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 3240 -380 0 0 {name=MS2
L=0.15
W=8
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
N 3260 -410 3260 -430 {}
C {lab_pin.sym} 3260 -430 0 0 {name=l5 sig_type=std_logic lab=VIN}
N 3260 -350 3260 -330 {}
C {lab_pin.sym} 3260 -330 0 0 {name=l6 sig_type=std_logic lab=VX}
N 3220 -380 3200 -380 {}
C {lab_pin.sym} 3200 -380 0 0 {name=l7 sig_type=std_logic lab=SMPB}
N 3260 -380 3300 -380 {}
C {lab_pin.sym} 3300 -380 0 1 {name=l8 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 3000 0 0 0 {name=MR1
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
N 3020 -30 3020 -50 {}
C {lab_pin.sym} 3020 -50 0 0 {name=l9 sig_type=std_logic lab=VR}
N 3020 30 3020 50 {}
C {lab_pin.sym} 3020 50 0 0 {name=l10 sig_type=std_logic lab=VCM}
N 2980 0 2960 0 {}
C {lab_pin.sym} 2960 0 0 0 {name=l11 sig_type=std_logic lab=SMP}
N 3020 0 3060 0 {}
C {lab_pin.sym} 3060 0 0 1 {name=l12 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 3240 0 0 0 {name=MR2
L=0.15
W=8
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
N 3260 -30 3260 -50 {}
C {lab_pin.sym} 3260 -50 0 0 {name=l13 sig_type=std_logic lab=VCM}
N 3260 30 3260 50 {}
C {lab_pin.sym} 3260 50 0 0 {name=l14 sig_type=std_logic lab=VR}
N 3220 0 3200 0 {}
C {lab_pin.sym} 3200 0 0 0 {name=l15 sig_type=std_logic lab=SMPB}
N 3260 0 3300 0 {}
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
N 20 270 20 250 {}
C {lab_pin.sym} 20 250 0 0 {name=l17 sig_type=std_logic lab=VCC}
N 20 330 20 350 {}
C {lab_pin.sym} 20 350 0 0 {name=l18 sig_type=std_logic lab=SMPB}
N -20 300 -40 300 {}
C {lab_pin.sym} -40 300 0 0 {name=l19 sig_type=std_logic lab=SMP}
N 20 300 60 300 {}
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
N 20 420 20 400 {}
C {lab_pin.sym} 20 400 0 0 {name=l21 sig_type=std_logic lab=SMPB}
N 20 480 20 500 {}
C {lab_pin.sym} 20 500 0 0 {name=l22 sig_type=std_logic lab=VSS}
N -20 450 -40 450 {}
C {lab_pin.sym} -40 450 0 0 {name=l23 sig_type=std_logic lab=SMP}
N 20 450 60 450 {}
C {lab_pin.sym} 60 450 0 1 {name=l24 sig_type=std_logic lab=VSS}
T {bit 5: 16C} 360 -560 0 0 0.4 0.4 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 400 -400 0 0 {name=MU5
L=0.15
W=16
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
N 420 -430 420 -450 {}
C {lab_pin.sym} 420 -450 0 0 {name=l25 sig_type=std_logic lab=VREF}
N 420 -370 420 -350 {}
C {lab_pin.sym} 420 -350 0 0 {name=l26 sig_type=std_logic lab=BP5}
N 380 -400 360 -400 {}
C {lab_pin.sym} 360 -400 0 0 {name=l27 sig_type=std_logic lab=UP5}
N 420 -400 460 -400 {}
C {lab_pin.sym} 460 -400 0 1 {name=l28 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 400 -150 0 0 {name=MD5
L=0.15
W=8
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
N 420 -180 420 -200 {}
C {lab_pin.sym} 420 -200 0 0 {name=l29 sig_type=std_logic lab=BP5}
N 420 -120 420 -100 {}
C {lab_pin.sym} 420 -100 0 0 {name=l30 sig_type=std_logic lab=VSS}
N 380 -150 360 -150 {}
C {lab_pin.sym} 360 -150 0 0 {name=l31 sig_type=std_logic lab=DN5}
N 420 -150 460 -150 {}
C {lab_pin.sym} 460 -150 0 1 {name=l32 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 620 -400 0 0 {name=MT5n
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
N 640 -430 640 -450 {}
C {lab_pin.sym} 640 -450 0 0 {name=l33 sig_type=std_logic lab=BP5}
N 640 -370 640 -350 {}
C {lab_pin.sym} 640 -350 0 0 {name=l34 sig_type=std_logic lab=VCM}
N 600 -400 580 -400 {}
C {lab_pin.sym} 580 -400 0 0 {name=l35 sig_type=std_logic lab=E5B}
N 640 -400 680 -400 {}
C {lab_pin.sym} 680 -400 0 1 {name=l36 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 620 -150 0 0 {name=MT5p
L=0.15
W=8
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
N 640 -180 640 -200 {}
C {lab_pin.sym} 640 -200 0 0 {name=l37 sig_type=std_logic lab=VCM}
N 640 -120 640 -100 {}
C {lab_pin.sym} 640 -100 0 0 {name=l38 sig_type=std_logic lab=BP5}
N 600 -150 580 -150 {}
C {lab_pin.sym} 580 -150 0 0 {name=l39 sig_type=std_logic lab=E5}
N 640 -150 680 -150 {}
C {lab_pin.sym} 680 -150 0 1 {name=l40 sig_type=std_logic lab=VCC}
T {bit 4: 8C} 860 -560 0 0 0.4 0.4 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 900 -400 0 0 {name=MU4
L=0.15
W=8
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
N 920 -430 920 -450 {}
C {lab_pin.sym} 920 -450 0 0 {name=l41 sig_type=std_logic lab=VREF}
N 920 -370 920 -350 {}
C {lab_pin.sym} 920 -350 0 0 {name=l42 sig_type=std_logic lab=BP4}
N 880 -400 860 -400 {}
C {lab_pin.sym} 860 -400 0 0 {name=l43 sig_type=std_logic lab=UP4}
N 920 -400 960 -400 {}
C {lab_pin.sym} 960 -400 0 1 {name=l44 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 900 -150 0 0 {name=MD4
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
N 920 -180 920 -200 {}
C {lab_pin.sym} 920 -200 0 0 {name=l45 sig_type=std_logic lab=BP4}
N 920 -120 920 -100 {}
C {lab_pin.sym} 920 -100 0 0 {name=l46 sig_type=std_logic lab=VSS}
N 880 -150 860 -150 {}
C {lab_pin.sym} 860 -150 0 0 {name=l47 sig_type=std_logic lab=DN4}
N 920 -150 960 -150 {}
C {lab_pin.sym} 960 -150 0 1 {name=l48 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1120 -400 0 0 {name=MT4n
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
N 1140 -430 1140 -450 {}
C {lab_pin.sym} 1140 -450 0 0 {name=l49 sig_type=std_logic lab=BP4}
N 1140 -370 1140 -350 {}
C {lab_pin.sym} 1140 -350 0 0 {name=l50 sig_type=std_logic lab=VCM}
N 1100 -400 1080 -400 {}
C {lab_pin.sym} 1080 -400 0 0 {name=l51 sig_type=std_logic lab=E4B}
N 1140 -400 1180 -400 {}
C {lab_pin.sym} 1180 -400 0 1 {name=l52 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1120 -150 0 0 {name=MT4p
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
N 1140 -180 1140 -200 {}
C {lab_pin.sym} 1140 -200 0 0 {name=l53 sig_type=std_logic lab=VCM}
N 1140 -120 1140 -100 {}
C {lab_pin.sym} 1140 -100 0 0 {name=l54 sig_type=std_logic lab=BP4}
N 1100 -150 1080 -150 {}
C {lab_pin.sym} 1080 -150 0 0 {name=l55 sig_type=std_logic lab=E4}
N 1140 -150 1180 -150 {}
C {lab_pin.sym} 1180 -150 0 1 {name=l56 sig_type=std_logic lab=VCC}
T {bit 3: 4C} 1360 -560 0 0 0.4 0.4 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1400 -400 0 0 {name=MU3
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
N 1420 -430 1420 -450 {}
C {lab_pin.sym} 1420 -450 0 0 {name=l57 sig_type=std_logic lab=VREF}
N 1420 -370 1420 -350 {}
C {lab_pin.sym} 1420 -350 0 0 {name=l58 sig_type=std_logic lab=BP3}
N 1380 -400 1360 -400 {}
C {lab_pin.sym} 1360 -400 0 0 {name=l59 sig_type=std_logic lab=UP3}
N 1420 -400 1460 -400 {}
C {lab_pin.sym} 1460 -400 0 1 {name=l60 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1400 -150 0 0 {name=MD3
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
N 1420 -180 1420 -200 {}
C {lab_pin.sym} 1420 -200 0 0 {name=l61 sig_type=std_logic lab=BP3}
N 1420 -120 1420 -100 {}
C {lab_pin.sym} 1420 -100 0 0 {name=l62 sig_type=std_logic lab=VSS}
N 1380 -150 1360 -150 {}
C {lab_pin.sym} 1360 -150 0 0 {name=l63 sig_type=std_logic lab=DN3}
N 1420 -150 1460 -150 {}
C {lab_pin.sym} 1460 -150 0 1 {name=l64 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1620 -400 0 0 {name=MT3n
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
N 1640 -430 1640 -450 {}
C {lab_pin.sym} 1640 -450 0 0 {name=l65 sig_type=std_logic lab=BP3}
N 1640 -370 1640 -350 {}
C {lab_pin.sym} 1640 -350 0 0 {name=l66 sig_type=std_logic lab=VCM}
N 1600 -400 1580 -400 {}
C {lab_pin.sym} 1580 -400 0 0 {name=l67 sig_type=std_logic lab=E3B}
N 1640 -400 1680 -400 {}
C {lab_pin.sym} 1680 -400 0 1 {name=l68 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1620 -150 0 0 {name=MT3p
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
N 1640 -180 1640 -200 {}
C {lab_pin.sym} 1640 -200 0 0 {name=l69 sig_type=std_logic lab=VCM}
N 1640 -120 1640 -100 {}
C {lab_pin.sym} 1640 -100 0 0 {name=l70 sig_type=std_logic lab=BP3}
N 1600 -150 1580 -150 {}
C {lab_pin.sym} 1580 -150 0 0 {name=l71 sig_type=std_logic lab=E3}
N 1640 -150 1680 -150 {}
C {lab_pin.sym} 1680 -150 0 1 {name=l72 sig_type=std_logic lab=VCC}
T {bit 2: 2C} 1860 -560 0 0 0.4 0.4 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1900 -400 0 0 {name=MU2
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
N 1920 -430 1920 -450 {}
C {lab_pin.sym} 1920 -450 0 0 {name=l73 sig_type=std_logic lab=VREF}
N 1920 -370 1920 -350 {}
C {lab_pin.sym} 1920 -350 0 0 {name=l74 sig_type=std_logic lab=BP2}
N 1880 -400 1860 -400 {}
C {lab_pin.sym} 1860 -400 0 0 {name=l75 sig_type=std_logic lab=UP2}
N 1920 -400 1960 -400 {}
C {lab_pin.sym} 1960 -400 0 1 {name=l76 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1900 -150 0 0 {name=MD2
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
N 1920 -180 1920 -200 {}
C {lab_pin.sym} 1920 -200 0 0 {name=l77 sig_type=std_logic lab=BP2}
N 1920 -120 1920 -100 {}
C {lab_pin.sym} 1920 -100 0 0 {name=l78 sig_type=std_logic lab=VSS}
N 1880 -150 1860 -150 {}
C {lab_pin.sym} 1860 -150 0 0 {name=l79 sig_type=std_logic lab=DN2}
N 1920 -150 1960 -150 {}
C {lab_pin.sym} 1960 -150 0 1 {name=l80 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2120 -400 0 0 {name=MT2n
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
N 2140 -430 2140 -450 {}
C {lab_pin.sym} 2140 -450 0 0 {name=l81 sig_type=std_logic lab=BP2}
N 2140 -370 2140 -350 {}
C {lab_pin.sym} 2140 -350 0 0 {name=l82 sig_type=std_logic lab=VCM}
N 2100 -400 2080 -400 {}
C {lab_pin.sym} 2080 -400 0 0 {name=l83 sig_type=std_logic lab=E2B}
N 2140 -400 2180 -400 {}
C {lab_pin.sym} 2180 -400 0 1 {name=l84 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 2120 -150 0 0 {name=MT2p
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
N 2140 -180 2140 -200 {}
C {lab_pin.sym} 2140 -200 0 0 {name=l85 sig_type=std_logic lab=VCM}
N 2140 -120 2140 -100 {}
C {lab_pin.sym} 2140 -100 0 0 {name=l86 sig_type=std_logic lab=BP2}
N 2100 -150 2080 -150 {}
C {lab_pin.sym} 2080 -150 0 0 {name=l87 sig_type=std_logic lab=E2}
N 2140 -150 2180 -150 {}
C {lab_pin.sym} 2180 -150 0 1 {name=l88 sig_type=std_logic lab=VCC}
T {bit 1: 1C} 2360 -560 0 0 0.4 0.4 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2400 -400 0 0 {name=MU1
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
N 2420 -430 2420 -450 {}
C {lab_pin.sym} 2420 -450 0 0 {name=l89 sig_type=std_logic lab=VREF}
N 2420 -370 2420 -350 {}
C {lab_pin.sym} 2420 -350 0 0 {name=l90 sig_type=std_logic lab=BP1}
N 2380 -400 2360 -400 {}
C {lab_pin.sym} 2360 -400 0 0 {name=l91 sig_type=std_logic lab=UP1}
N 2420 -400 2460 -400 {}
C {lab_pin.sym} 2460 -400 0 1 {name=l92 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2400 -150 0 0 {name=MD1
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
N 2420 -180 2420 -200 {}
C {lab_pin.sym} 2420 -200 0 0 {name=l93 sig_type=std_logic lab=BP1}
N 2420 -120 2420 -100 {}
C {lab_pin.sym} 2420 -100 0 0 {name=l94 sig_type=std_logic lab=VSS}
N 2380 -150 2360 -150 {}
C {lab_pin.sym} 2360 -150 0 0 {name=l95 sig_type=std_logic lab=DN1}
N 2420 -150 2460 -150 {}
C {lab_pin.sym} 2460 -150 0 1 {name=l96 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2620 -400 0 0 {name=MT1n
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
N 2640 -430 2640 -450 {}
C {lab_pin.sym} 2640 -450 0 0 {name=l97 sig_type=std_logic lab=BP1}
N 2640 -370 2640 -350 {}
C {lab_pin.sym} 2640 -350 0 0 {name=l98 sig_type=std_logic lab=VCM}
N 2600 -400 2580 -400 {}
C {lab_pin.sym} 2580 -400 0 0 {name=l99 sig_type=std_logic lab=E1B}
N 2640 -400 2680 -400 {}
C {lab_pin.sym} 2680 -400 0 1 {name=l100 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 2620 -150 0 0 {name=MT1p
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
N 2640 -180 2640 -200 {}
C {lab_pin.sym} 2640 -200 0 0 {name=l101 sig_type=std_logic lab=VCM}
N 2640 -120 2640 -100 {}
C {lab_pin.sym} 2640 -100 0 0 {name=l102 sig_type=std_logic lab=BP1}
N 2600 -150 2580 -150 {}
C {lab_pin.sym} 2580 -150 0 0 {name=l103 sig_type=std_logic lab=E1}
N 2640 -150 2680 -150 {}
C {lab_pin.sym} 2680 -150 0 1 {name=l104 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 400 250 0 0 {name=C5 model=cap_mim_m3_2 W=4 L=4 MF=16 spiceprefix=X}
N 400 220 400 200 {}
C {lab_pin.sym} 400 200 0 0 {name=l105 sig_type=std_logic lab=VX}
N 400 280 400 300 {}
C {lab_pin.sym} 400 300 0 0 {name=l106 sig_type=std_logic lab=BP5}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 560 250 0 0 {name=C4 model=cap_mim_m3_2 W=4 L=4 MF=8 spiceprefix=X}
N 560 220 560 200 {}
C {lab_pin.sym} 560 200 0 0 {name=l107 sig_type=std_logic lab=VX}
N 560 280 560 300 {}
C {lab_pin.sym} 560 300 0 0 {name=l108 sig_type=std_logic lab=BP4}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 720 250 0 0 {name=C3 model=cap_mim_m3_2 W=4 L=4 MF=4 spiceprefix=X}
N 720 220 720 200 {}
C {lab_pin.sym} 720 200 0 0 {name=l109 sig_type=std_logic lab=VX}
N 720 280 720 300 {}
C {lab_pin.sym} 720 300 0 0 {name=l110 sig_type=std_logic lab=BP3}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 880 250 0 0 {name=C2 model=cap_mim_m3_2 W=4 L=4 MF=2 spiceprefix=X}
N 880 220 880 200 {}
C {lab_pin.sym} 880 200 0 0 {name=l111 sig_type=std_logic lab=VX}
N 880 280 880 300 {}
C {lab_pin.sym} 880 300 0 0 {name=l112 sig_type=std_logic lab=BP2}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1040 250 0 0 {name=C1 model=cap_mim_m3_2 W=4 L=4 MF=1 spiceprefix=X}
N 1040 220 1040 200 {}
C {lab_pin.sym} 1040 200 0 0 {name=l113 sig_type=std_logic lab=VX}
N 1040 280 1040 300 {}
C {lab_pin.sym} 1040 300 0 0 {name=l114 sig_type=std_logic lab=BP1}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1200 250 0 0 {name=CD model=cap_mim_m3_2 W=3.4 L=3.4 MF=1 spiceprefix=X}
N 1200 220 1200 200 {}
C {lab_pin.sym} 1200 200 0 0 {name=l115 sig_type=std_logic lab=VX}
N 1200 280 1200 300 {}
C {lab_pin.sym} 1200 300 0 0 {name=l116 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1500 250 0 0 {name=CR model=cap_mim_m3_2 W=4 L=4 MF=31 spiceprefix=X}
N 1500 220 1500 200 {}
C {lab_pin.sym} 1500 200 0 0 {name=l117 sig_type=std_logic lab=VR}
N 1500 280 1500 300 {}
C {lab_pin.sym} 1500 300 0 0 {name=l118 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1660 250 0 0 {name=CRD model=cap_mim_m3_2 W=3.4 L=3.4 MF=1 spiceprefix=X}
N 1660 220 1660 200 {}
C {lab_pin.sym} 1660 200 0 0 {name=l119 sig_type=std_logic lab=VR}
N 1660 280 1660 300 {}
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
