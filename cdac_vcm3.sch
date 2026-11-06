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
MUx is an NMOS: with its gate at 1.8 V it has 1 V of drive at 0.8 V, so the bottom plate stays put while the comparator kicks VX.} -400 -1000 0 0 0.3 0.3 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 -300 0 0 {name=MS1
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
N 20 -330 20 -350 {}
C {lab_pin.sym} 20 -350 0 0 {name=l1 sig_type=std_logic lab=VX}
N 20 -270 20 -250 {}
C {lab_pin.sym} 20 -250 0 0 {name=l2 sig_type=std_logic lab=VIN}
N -20 -300 -40 -300 {}
C {lab_pin.sym} -40 -300 0 0 {name=l3 sig_type=std_logic lab=SMP}
N 20 -300 60 -300 {}
C {lab_pin.sym} 60 -300 0 1 {name=l4 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 300 -300 0 0 {name=MS2
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
N 320 -330 320 -350 {}
C {lab_pin.sym} 320 -350 0 0 {name=l5 sig_type=std_logic lab=VIN}
N 320 -270 320 -250 {}
C {lab_pin.sym} 320 -250 0 0 {name=l6 sig_type=std_logic lab=VX}
N 280 -300 260 -300 {}
C {lab_pin.sym} 260 -300 0 0 {name=l7 sig_type=std_logic lab=SMPB}
N 320 -300 360 -300 {}
C {lab_pin.sym} 360 -300 0 1 {name=l8 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 0 0 0 {name=MR1
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
N 20 -30 20 -50 {}
C {lab_pin.sym} 20 -50 0 0 {name=l9 sig_type=std_logic lab=VR}
N 20 30 20 50 {}
C {lab_pin.sym} 20 50 0 0 {name=l10 sig_type=std_logic lab=VCM}
N -20 0 -40 0 {}
C {lab_pin.sym} -40 0 0 0 {name=l11 sig_type=std_logic lab=SMP}
N 20 0 60 0 {}
C {lab_pin.sym} 60 0 0 1 {name=l12 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 300 0 0 0 {name=MR2
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
N 320 -30 320 -50 {}
C {lab_pin.sym} 320 -50 0 0 {name=l13 sig_type=std_logic lab=VCM}
N 320 30 320 50 {}
C {lab_pin.sym} 320 50 0 0 {name=l14 sig_type=std_logic lab=VR}
N 280 0 260 0 {}
C {lab_pin.sym} 260 0 0 0 {name=l15 sig_type=std_logic lab=SMPB}
N 320 0 360 0 {}
C {lab_pin.sym} 360 0 0 1 {name=l16 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} -400 -350 0 0 {name=MSIP
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
N -380 -380 -380 -400 {}
C {lab_pin.sym} -380 -400 0 0 {name=l17 sig_type=std_logic lab=VCC}
N -380 -320 -380 -300 {}
C {lab_pin.sym} -380 -300 0 0 {name=l18 sig_type=std_logic lab=SMPB}
N -420 -350 -440 -350 {}
C {lab_pin.sym} -440 -350 0 0 {name=l19 sig_type=std_logic lab=SMP}
N -380 -350 -340 -350 {}
C {lab_pin.sym} -340 -350 0 1 {name=l20 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} -400 -150 0 0 {name=MSIN
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
N -380 -180 -380 -200 {}
C {lab_pin.sym} -380 -200 0 0 {name=l21 sig_type=std_logic lab=SMPB}
N -380 -120 -380 -100 {}
C {lab_pin.sym} -380 -100 0 0 {name=l22 sig_type=std_logic lab=VSS}
N -420 -150 -440 -150 {}
C {lab_pin.sym} -440 -150 0 0 {name=l23 sig_type=std_logic lab=SMP}
N -380 -150 -340 -150 {}
C {lab_pin.sym} -340 -150 0 1 {name=l24 sig_type=std_logic lab=VSS}
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
N 720 -430 720 -450 {}
C {lab_pin.sym} 720 -450 0 0 {name=l25 sig_type=std_logic lab=VREF}
N 720 -370 720 -350 {}
C {lab_pin.sym} 720 -350 0 0 {name=l26 sig_type=std_logic lab=BPA}
N 680 -400 660 -400 {}
C {lab_pin.sym} 660 -400 0 0 {name=l27 sig_type=std_logic lab=UPA}
N 720 -400 760 -400 {}
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
N 720 -180 720 -200 {}
C {lab_pin.sym} 720 -200 0 0 {name=l29 sig_type=std_logic lab=BPA}
N 720 -120 720 -100 {}
C {lab_pin.sym} 720 -100 0 0 {name=l30 sig_type=std_logic lab=VSS}
N 680 -150 660 -150 {}
C {lab_pin.sym} 660 -150 0 0 {name=l31 sig_type=std_logic lab=DNA}
N 720 -150 760 -150 {}
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
N 1020 -430 1020 -450 {}
C {lab_pin.sym} 1020 -450 0 0 {name=l33 sig_type=std_logic lab=BPA}
N 1020 -370 1020 -350 {}
C {lab_pin.sym} 1020 -350 0 0 {name=l34 sig_type=std_logic lab=VCM}
N 980 -400 960 -400 {}
C {lab_pin.sym} 960 -400 0 0 {name=l35 sig_type=std_logic lab=EAB}
N 1020 -400 1060 -400 {}
C {lab_pin.sym} 1060 -400 0 1 {name=l36 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1000 -150 0 0 {name=MTAp
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
N 1020 -180 1020 -200 {}
C {lab_pin.sym} 1020 -200 0 0 {name=l37 sig_type=std_logic lab=VCM}
N 1020 -120 1020 -100 {}
C {lab_pin.sym} 1020 -100 0 0 {name=l38 sig_type=std_logic lab=BPA}
N 980 -150 960 -150 {}
C {lab_pin.sym} 960 -150 0 0 {name=l39 sig_type=std_logic lab=EA}
N 1020 -150 1060 -150 {}
C {lab_pin.sym} 1060 -150 0 1 {name=l40 sig_type=std_logic lab=VCC}
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
N 1520 -430 1520 -450 {}
C {lab_pin.sym} 1520 -450 0 0 {name=l41 sig_type=std_logic lab=VREF}
N 1520 -370 1520 -350 {}
C {lab_pin.sym} 1520 -350 0 0 {name=l42 sig_type=std_logic lab=BPB}
N 1480 -400 1460 -400 {}
C {lab_pin.sym} 1460 -400 0 0 {name=l43 sig_type=std_logic lab=UPB}
N 1520 -400 1560 -400 {}
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
N 1520 -180 1520 -200 {}
C {lab_pin.sym} 1520 -200 0 0 {name=l45 sig_type=std_logic lab=BPB}
N 1520 -120 1520 -100 {}
C {lab_pin.sym} 1520 -100 0 0 {name=l46 sig_type=std_logic lab=VSS}
N 1480 -150 1460 -150 {}
C {lab_pin.sym} 1460 -150 0 0 {name=l47 sig_type=std_logic lab=DNB}
N 1520 -150 1560 -150 {}
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
N 1820 -430 1820 -450 {}
C {lab_pin.sym} 1820 -450 0 0 {name=l49 sig_type=std_logic lab=BPB}
N 1820 -370 1820 -350 {}
C {lab_pin.sym} 1820 -350 0 0 {name=l50 sig_type=std_logic lab=VCM}
N 1780 -400 1760 -400 {}
C {lab_pin.sym} 1760 -400 0 0 {name=l51 sig_type=std_logic lab=EBB}
N 1820 -400 1860 -400 {}
C {lab_pin.sym} 1860 -400 0 1 {name=l52 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1800 -150 0 0 {name=MTBp
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
N 1820 -180 1820 -200 {}
C {lab_pin.sym} 1820 -200 0 0 {name=l53 sig_type=std_logic lab=VCM}
N 1820 -120 1820 -100 {}
C {lab_pin.sym} 1820 -100 0 0 {name=l54 sig_type=std_logic lab=BPB}
N 1780 -150 1760 -150 {}
C {lab_pin.sym} 1760 -150 0 0 {name=l55 sig_type=std_logic lab=EB}
N 1820 -150 1860 -150 {}
C {lab_pin.sym} 1860 -150 0 1 {name=l56 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 2400 -300 0 0 {name=CA1 model=cap_mim_m3_2 W=4 L=4 MF=1 spiceprefix=X}
N 2400 -330 2400 -350 {}
C {lab_pin.sym} 2400 -350 0 0 {name=l57 sig_type=std_logic lab=VX}
N 2400 -270 2400 -250 {}
C {lab_pin.sym} 2400 -250 0 0 {name=l58 sig_type=std_logic lab=BPA}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 2540 -300 0 0 {name=CA2 model=cap_mim_m3_2 W=4 L=4 MF=1 spiceprefix=X}
N 2540 -330 2540 -350 {}
C {lab_pin.sym} 2540 -350 0 0 {name=l59 sig_type=std_logic lab=VX}
N 2540 -270 2540 -250 {}
C {lab_pin.sym} 2540 -250 0 0 {name=l60 sig_type=std_logic lab=BPA}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 2680 -300 0 0 {name=CB model=cap_mim_m3_2 W=4 L=4 MF=1 spiceprefix=X}
N 2680 -330 2680 -350 {}
C {lab_pin.sym} 2680 -350 0 0 {name=l61 sig_type=std_logic lab=VX}
N 2680 -270 2680 -250 {}
C {lab_pin.sym} 2680 -250 0 0 {name=l62 sig_type=std_logic lab=BPB}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 2820 -300 0 0 {name=CD model=cap_mim_m3_2 W=3.7 L=3.7 MF=1 spiceprefix=X}
N 2820 -330 2820 -350 {}
C {lab_pin.sym} 2820 -350 0 0 {name=l63 sig_type=std_logic lab=VX}
N 2820 -270 2820 -250 {}
C {lab_pin.sym} 2820 -250 0 0 {name=l64 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 2400 50 0 0 {name=CR model=cap_mim_m3_2 W=8.0 L=8.0 MF=1 spiceprefix=X}
N 2400 20 2400 0 {}
C {lab_pin.sym} 2400 0 0 0 {name=l65 sig_type=std_logic lab=VR}
N 2400 80 2400 100 {}
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
