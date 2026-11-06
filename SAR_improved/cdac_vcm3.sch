v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {cdac_vcm3: sampling CDAC with Vcm-based switching.  Unit C = cap_mim_m3_2 4 x 4 um (about 35 fF).
SMP = 1: transmission gate MS1/MS2 connects VX to VIN (VX tracks VIN); bottom plates of CA (2C) and CB (C) sit at VCM.
SMP = 0: VX floats and holds VIN.  Later each bottom plate moves ONCE: to VREF (VX goes up) or to 0 V (VX goes down).
dVX = (Vbottom - VCM) x Ci / Ctotal:  CA moves VX by +-VREF/4, CB by +-VREF/8, when Ctotal = 4C.
Dummy CD = 3.7 x 3.7 um (about 30 fF) = C - Cp (Cp = 4 fF measured: comparator input + switch junctions), so Ctotal = 4C exactly.
Replica VR: CR = 8.0 x 8.0 um (about 133 fF) is sampled to VCM by the same kind of switch, so VR has the same capacitance as VX:
the comparator's kickback then moves VX and VR equally and cancels.  Switches: MUx to VREF (UPx = 1), MDx to 0 (DNx = 1), MTx to VCM (while Ex = 0).
MUx is an NMOS: with its gate at 1.8 V it has 1 V of drive at 0.8 V, so the bottom plate stays put while the comparator kicks VX.} 480 -710 0 0 0.3 0.3 {}
N 3030 -430 3030 -410 {
lab=VX}
N 3030 -350 3030 -330 {
lab=VIN}
N 2970 -380 2990 -380 {
lab=SMP}
N 3030 -380 3070 -380 {
lab=VSS}
N 3260 -350 3260 -330 {
lab=VIN}
N 3260 -430 3260 -410 {
lab=VX}
N 3200 -380 3220 -380 {
lab=SMPB}
N 3260 -380 3300 -380 {
lab=VCC}
N 2920 -50 2920 -30 {
lab=VR}
N 2920 30 2920 50 {
lab=VCM}
N 2860 0 2880 0 {
lab=SMP}
N 2920 0 2960 0 {
lab=VSS}
N 3160 30 3160 50 {
lab=VCM}
N 3160 -50 3160 -30 {
lab=VR}
N 3100 0 3120 0 {
lab=SMPB}
N 3160 0 3200 0 {
lab=VCC}
N -390 40 -390 60 {
lab=VCC}
N -390 120 -390 140 {
lab=SMPB}
N -450 90 -430 90 {
lab=SMP}
N -390 90 -350 90 {
lab=VCC}
N -390 190 -390 210 {
lab=SMPB}
N -390 270 -390 290 {
lab=VSS}
N -450 240 -430 240 {
lab=SMP}
N -390 240 -350 240 {
lab=VSS}
N 720 -450 720 -430 {
lab=VREF}
N 720 -370 720 -350 {
lab=BPA}
N 660 -400 680 -400 {
lab=UPA}
N 720 -400 760 -400 {
lab=VSS}
N 720 -200 720 -180 {
lab=BPA}
N 720 -120 720 -100 {
lab=VSS}
N 660 -150 680 -150 {
lab=DNA}
N 720 -150 760 -150 {
lab=VSS}
N 1020 -450 1020 -430 {
lab=BPA}
N 1020 -370 1020 -350 {
lab=VCM}
N 960 -400 980 -400 {
lab=EAB}
N 1020 -400 1060 -400 {
lab=VSS}
N 1220 -370 1220 -350 {
lab=VCM}
N 1220 -450 1220 -430 {
lab=BPA}
N 1160 -400 1180 -400 {
lab=EA}
N 1220 -400 1260 -400 {
lab=VCC}
N 1520 -450 1520 -430 {
lab=VREF}
N 1520 -370 1520 -350 {
lab=BPB}
N 1460 -400 1480 -400 {
lab=UPB}
N 1520 -400 1560 -400 {
lab=VSS}
N 1520 -200 1520 -180 {
lab=BPB}
N 1520 -120 1520 -100 {
lab=VSS}
N 1460 -150 1480 -150 {
lab=DNB}
N 1520 -150 1560 -150 {
lab=VSS}
N 1820 -450 1820 -430 {
lab=BPB}
N 1820 -370 1820 -350 {
lab=VCM}
N 1760 -400 1780 -400 {
lab=EBB}
N 1820 -400 1860 -400 {
lab=VSS}
N 2020 -370 2020 -350 {
lab=VCM}
N 2020 -450 2020 -430 {
lab=BPB}
N 1960 -400 1980 -400 {
lab=EB}
N 2020 -400 2060 -400 {
lab=VCC}
N 2400 -350 2400 -330 {
lab=VX}
N 2400 -270 2400 -250 {
lab=BPA}
N 2540 -350 2540 -330 {
lab=VX}
N 2540 -270 2540 -250 {
lab=BPA}
N 2680 -350 2680 -330 {
lab=VX}
N 2680 -270 2680 -250 {
lab=BPB}
N 2820 -350 2820 -330 {
lab=VX}
N 2820 -270 2820 -250 {
lab=VSS}
N 2400 0 2400 20 {
lab=VR}
N 2400 80 2400 100 {
lab=VSS}
N 2400 -350 2820 -350 {
lab=VX}
N 2560 -390 2560 -350 {
lab=VX}
N 2400 -250 2540 -250 {
lab=BPA}
N 3030 -430 3260 -430 {
lab=VX}
N 3030 -330 3260 -330 {
lab=VIN}
N 2920 -50 3160 -50 {
lab=VR}
N 2920 50 3160 50 {
lab=VCM}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 3010 -380 0 0 {name=MS1
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
C {lab_pin.sym} 2970 -380 0 0 {name=l3 sig_type=std_logic lab=SMP}
C {lab_pin.sym} 3070 -380 0 1 {name=l4 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 3240 -380 2 1 {name=MS2
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
C {lab_pin.sym} 3150 -330 3 0 {name=l5 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 3170 -430 3 1 {name=l6 sig_type=std_logic lab=VX}
C {lab_pin.sym} 3200 -380 2 1 {name=l7 sig_type=std_logic lab=SMPB}
C {lab_pin.sym} 3300 -380 2 0 {name=l8 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2900 0 0 0 {name=MR1
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
C {lab_pin.sym} 2860 0 0 0 {name=l11 sig_type=std_logic lab=SMP}
C {lab_pin.sym} 2960 0 0 1 {name=l12 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 3140 0 2 1 {name=MR2
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
C {lab_pin.sym} 2920 50 2 1 {name=l13 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 3160 -50 2 1 {name=l14 sig_type=std_logic lab=VR}
C {lab_pin.sym} 3100 0 2 1 {name=l15 sig_type=std_logic lab=SMPB}
C {lab_pin.sym} 3200 0 2 0 {name=l16 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -410 90 0 0 {name=MSIP
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
C {lab_pin.sym} -390 40 0 0 {name=l17 sig_type=std_logic lab=VCC}
C {lab_pin.sym} -390 140 0 0 {name=l18 sig_type=std_logic lab=SMPB}
C {lab_pin.sym} -450 90 0 0 {name=l19 sig_type=std_logic lab=SMP}
C {lab_pin.sym} -350 90 0 1 {name=l20 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -410 240 0 0 {name=MSIN
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
C {lab_pin.sym} -390 190 0 0 {name=l21 sig_type=std_logic lab=SMPB}
C {lab_pin.sym} -390 290 0 0 {name=l22 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -450 240 0 0 {name=l23 sig_type=std_logic lab=SMP}
C {lab_pin.sym} -350 240 0 1 {name=l24 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 700 -400 0 0 {name=MUA
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
C {lab_pin.sym} 720 -450 0 0 {name=l25 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 720 -350 0 0 {name=l26 sig_type=std_logic lab=BPA}
C {lab_pin.sym} 660 -400 0 0 {name=l27 sig_type=std_logic lab=UPA}
C {lab_pin.sym} 760 -400 0 1 {name=l28 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 700 -150 0 0 {name=MDA
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
C {lab_pin.sym} 720 -200 0 0 {name=l29 sig_type=std_logic lab=BPA}
C {lab_pin.sym} 720 -100 0 0 {name=l30 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 660 -150 0 0 {name=l31 sig_type=std_logic lab=DNA}
C {lab_pin.sym} 760 -150 0 1 {name=l32 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1000 -400 0 0 {name=MTAn
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
C {lab_pin.sym} 1020 -450 0 0 {name=l33 sig_type=std_logic lab=BPA}
C {lab_pin.sym} 1020 -350 0 0 {name=l34 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 960 -400 0 0 {name=l35 sig_type=std_logic lab=EAB}
C {lab_pin.sym} 1060 -400 0 1 {name=l36 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1200 -400 2 1 {name=MTAp
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
C {lab_pin.sym} 1220 -350 2 1 {name=l37 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 1220 -450 2 1 {name=l38 sig_type=std_logic lab=BPA}
C {lab_pin.sym} 1160 -400 2 1 {name=l39 sig_type=std_logic lab=EA}
C {lab_pin.sym} 1260 -400 2 0 {name=l40 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1500 -400 0 0 {name=MUB
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
C {lab_pin.sym} 1520 -450 0 0 {name=l41 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 1520 -350 0 0 {name=l42 sig_type=std_logic lab=BPB}
C {lab_pin.sym} 1460 -400 0 0 {name=l43 sig_type=std_logic lab=UPB}
C {lab_pin.sym} 1560 -400 0 1 {name=l44 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1500 -150 0 0 {name=MDB
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
C {lab_pin.sym} 1520 -200 0 0 {name=l45 sig_type=std_logic lab=BPB}
C {lab_pin.sym} 1520 -100 0 0 {name=l46 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1460 -150 0 0 {name=l47 sig_type=std_logic lab=DNB}
C {lab_pin.sym} 1560 -150 0 1 {name=l48 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 1800 -400 0 0 {name=MTBn
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
C {lab_pin.sym} 1820 -450 0 0 {name=l49 sig_type=std_logic lab=BPB}
C {lab_pin.sym} 1820 -350 0 0 {name=l50 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 1760 -400 0 0 {name=l51 sig_type=std_logic lab=EBB}
C {lab_pin.sym} 1860 -400 0 1 {name=l52 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 2000 -400 2 1 {name=MTBp
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
C {lab_pin.sym} 2020 -350 2 1 {name=l53 sig_type=std_logic lab=VCM}
C {lab_pin.sym} 2020 -450 2 1 {name=l54 sig_type=std_logic lab=BPB}
C {lab_pin.sym} 1960 -400 2 1 {name=l55 sig_type=std_logic lab=EB}
C {lab_pin.sym} 2060 -400 2 0 {name=l56 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 2400 -300 0 0 {name=CA1 model=cap_mim_m3_2 W=4 L=4 MF=1 spiceprefix=X}
C {lab_pin.sym} 2560 -390 0 0 {name=l57 sig_type=std_logic lab=VX}
C {lab_pin.sym} 2490 -250 1 1 {name=l58 sig_type=std_logic lab=BPA}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 2540 -300 0 0 {name=CA2 model=cap_mim_m3_2 W=4 L=4 MF=1 spiceprefix=X}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 2680 -300 0 0 {name=CB model=cap_mim_m3_2 W=4 L=4 MF=1 spiceprefix=X}
C {lab_pin.sym} 2680 -250 0 0 {name=l62 sig_type=std_logic lab=BPB}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 2820 -300 0 0 {name=CD model=cap_mim_m3_2 W=3.7 L=3.7 MF=1 spiceprefix=X}
C {lab_pin.sym} 2820 -250 0 0 {name=l64 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 2400 50 0 0 {name=CR model=cap_mim_m3_2 W=8.0 L=8.0 MF=1 spiceprefix=X}
C {lab_pin.sym} 2400 0 0 0 {name=l65 sig_type=std_logic lab=VR}
C {lab_pin.sym} 2400 100 0 0 {name=l66 sig_type=std_logic lab=VSS}
C {ipin.sym} -400 -700 0 0 {name=p1 lab=VCC}
C {ipin.sym} -400 -670 0 0 {name=p2 lab=VSS}
C {ipin.sym} -400 -640 0 0 {name=p3 lab=VREF}
C {ipin.sym} -400 -610 0 0 {name=p4 lab=VCM}
C {ipin.sym} -400 -580 0 0 {name=p5 lab=VIN}
C {ipin.sym} -400 -550 0 0 {name=p6 lab=SMP}
C {ipin.sym} -400 -520 0 0 {name=p7 lab=UPA}
C {ipin.sym} -400 -490 0 0 {name=p8 lab=DNA}
C {ipin.sym} -400 -460 0 0 {name=p9 lab=EA}
C {ipin.sym} -400 -430 0 0 {name=p10 lab=EAB}
C {ipin.sym} -400 -400 0 0 {name=p11 lab=UPB}
C {ipin.sym} -400 -370 0 0 {name=p12 lab=DNB}
C {ipin.sym} -400 -340 0 0 {name=p13 lab=EB}
C {ipin.sym} -400 -310 0 0 {name=p14 lab=EBB}
C {opin.sym} -400 -280 0 0 {name=p15 lab=VX}
C {opin.sym} -400 -250 0 0 {name=p16 lab=VR}
