v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {cdac3_v2: 3-bit capacitive DAC, unit C = cap_mim_m3_2 4 x 4 um (about 35 fF), total 8C = 0.28 pF.
RST = 1 grounds REF.  After RST, REF floats and REF = VREF.(4.D2 + 2.D1 + D0)/8 x 8C/(8C + Cp), Cp = parasitic on REF.
Bottom plates are driven by inverters powered from VREF (BiN = 0 -> plate at VREF -> bit = 1).
Dummy CD = C (bottom plate grounded).} -400 -1000 0 0 0.3 0.3 {}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 0 -300 0 0 {name=MP2
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
N 20 -330 20 -350 {}
C {lab_pin.sym} 20 -350 0 0 {name=l1 sig_type=std_logic lab=VREF}
N 20 -270 20 -250 {}
C {lab_pin.sym} 20 -250 0 0 {name=l2 sig_type=std_logic lab=BP2}
N -20 -300 -40 -300 {}
C {lab_pin.sym} -40 -300 0 0 {name=l3 sig_type=std_logic lab=B2N}
N 20 -300 60 -300 {}
C {lab_pin.sym} 60 -300 0 1 {name=l4 sig_type=std_logic lab=VREF}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 0 -100 0 0 {name=MN2
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
N 20 -130 20 -150 {}
C {lab_pin.sym} 20 -150 0 0 {name=l5 sig_type=std_logic lab=BP2}
N 20 -70 20 -50 {}
C {lab_pin.sym} 20 -50 0 0 {name=l6 sig_type=std_logic lab=VSS}
N -20 -100 -40 -100 {}
C {lab_pin.sym} -40 -100 0 0 {name=l7 sig_type=std_logic lab=B2N}
N 20 -100 60 -100 {}
C {lab_pin.sym} 60 -100 0 1 {name=l8 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 300 -300 0 0 {name=MP1
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
C {lab_pin.sym} 320 -350 0 0 {name=l9 sig_type=std_logic lab=VREF}
N 320 -270 320 -250 {}
C {lab_pin.sym} 320 -250 0 0 {name=l10 sig_type=std_logic lab=BP1}
N 280 -300 260 -300 {}
C {lab_pin.sym} 260 -300 0 0 {name=l11 sig_type=std_logic lab=B1N}
N 320 -300 360 -300 {}
C {lab_pin.sym} 360 -300 0 1 {name=l12 sig_type=std_logic lab=VREF}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 300 -100 0 0 {name=MN1
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
N 320 -130 320 -150 {}
C {lab_pin.sym} 320 -150 0 0 {name=l13 sig_type=std_logic lab=BP1}
N 320 -70 320 -50 {}
C {lab_pin.sym} 320 -50 0 0 {name=l14 sig_type=std_logic lab=VSS}
N 280 -100 260 -100 {}
C {lab_pin.sym} 260 -100 0 0 {name=l15 sig_type=std_logic lab=B1N}
N 320 -100 360 -100 {}
C {lab_pin.sym} 360 -100 0 1 {name=l16 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 600 -300 0 0 {name=MP0
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
N 620 -330 620 -350 {}
C {lab_pin.sym} 620 -350 0 0 {name=l17 sig_type=std_logic lab=VREF}
N 620 -270 620 -250 {}
C {lab_pin.sym} 620 -250 0 0 {name=l18 sig_type=std_logic lab=BP0}
N 580 -300 560 -300 {}
C {lab_pin.sym} 560 -300 0 0 {name=l19 sig_type=std_logic lab=B0N}
N 620 -300 660 -300 {}
C {lab_pin.sym} 660 -300 0 1 {name=l20 sig_type=std_logic lab=VREF}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 600 -100 0 0 {name=MN0
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
N 620 -130 620 -150 {}
C {lab_pin.sym} 620 -150 0 0 {name=l21 sig_type=std_logic lab=BP0}
N 620 -70 620 -50 {}
C {lab_pin.sym} 620 -50 0 0 {name=l22 sig_type=std_logic lab=VSS}
N 580 -100 560 -100 {}
C {lab_pin.sym} 560 -100 0 0 {name=l23 sig_type=std_logic lab=B0N}
N 620 -100 660 -100 {}
C {lab_pin.sym} 660 -100 0 1 {name=l24 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1000 -250 0 0 {name=C2a model=cap_mim_m3_2 W=4 L=4 MF=1 spiceprefix=X}
N 1000 -280 1000 -300 {}
C {lab_pin.sym} 1000 -300 0 0 {name=l25 sig_type=std_logic lab=REF}
N 1000 -220 1000 -200 {}
C {lab_pin.sym} 1000 -200 0 0 {name=l26 sig_type=std_logic lab=BP2}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1140 -250 0 0 {name=C2b model=cap_mim_m3_2 W=4 L=4 MF=1 spiceprefix=X}
N 1140 -280 1140 -300 {}
C {lab_pin.sym} 1140 -300 0 0 {name=l27 sig_type=std_logic lab=REF}
N 1140 -220 1140 -200 {}
C {lab_pin.sym} 1140 -200 0 0 {name=l28 sig_type=std_logic lab=BP2}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1280 -250 0 0 {name=C2c model=cap_mim_m3_2 W=4 L=4 MF=1 spiceprefix=X}
N 1280 -280 1280 -300 {}
C {lab_pin.sym} 1280 -300 0 0 {name=l29 sig_type=std_logic lab=REF}
N 1280 -220 1280 -200 {}
C {lab_pin.sym} 1280 -200 0 0 {name=l30 sig_type=std_logic lab=BP2}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1420 -250 0 0 {name=C2d model=cap_mim_m3_2 W=4 L=4 MF=1 spiceprefix=X}
N 1420 -280 1420 -300 {}
C {lab_pin.sym} 1420 -300 0 0 {name=l31 sig_type=std_logic lab=REF}
N 1420 -220 1420 -200 {}
C {lab_pin.sym} 1420 -200 0 0 {name=l32 sig_type=std_logic lab=BP2}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1560 -250 0 0 {name=C1a model=cap_mim_m3_2 W=4 L=4 MF=1 spiceprefix=X}
N 1560 -280 1560 -300 {}
C {lab_pin.sym} 1560 -300 0 0 {name=l33 sig_type=std_logic lab=REF}
N 1560 -220 1560 -200 {}
C {lab_pin.sym} 1560 -200 0 0 {name=l34 sig_type=std_logic lab=BP1}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1700 -250 0 0 {name=C1b model=cap_mim_m3_2 W=4 L=4 MF=1 spiceprefix=X}
N 1700 -280 1700 -300 {}
C {lab_pin.sym} 1700 -300 0 0 {name=l35 sig_type=std_logic lab=REF}
N 1700 -220 1700 -200 {}
C {lab_pin.sym} 1700 -200 0 0 {name=l36 sig_type=std_logic lab=BP1}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1840 -250 0 0 {name=C0 model=cap_mim_m3_2 W=4 L=4 MF=1 spiceprefix=X}
N 1840 -280 1840 -300 {}
C {lab_pin.sym} 1840 -300 0 0 {name=l37 sig_type=std_logic lab=REF}
N 1840 -220 1840 -200 {}
C {lab_pin.sym} 1840 -200 0 0 {name=l38 sig_type=std_logic lab=BP0}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} 1980 -250 0 0 {name=CD model=cap_mim_m3_2 W=4 L=4 MF=1 spiceprefix=X}
N 1980 -280 1980 -300 {}
C {lab_pin.sym} 1980 -300 0 0 {name=l39 sig_type=std_logic lab=REF}
N 1980 -220 1980 -200 {}
C {lab_pin.sym} 1980 -200 0 0 {name=l40 sig_type=std_logic lab=VSS}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 2300 -250 0 0 {name=MRST
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
N 2320 -280 2320 -300 {}
C {lab_pin.sym} 2320 -300 0 0 {name=l41 sig_type=std_logic lab=REF}
N 2320 -220 2320 -200 {}
C {lab_pin.sym} 2320 -200 0 0 {name=l42 sig_type=std_logic lab=VSS}
N 2280 -250 2260 -250 {}
C {lab_pin.sym} 2260 -250 0 0 {name=l43 sig_type=std_logic lab=RST}
N 2320 -250 2360 -250 {}
C {lab_pin.sym} 2360 -250 0 1 {name=l44 sig_type=std_logic lab=VSS}
C {ipin.sym} -400 -700 0 0 {name=p1 lab=VSS}
C {ipin.sym} -400 -670 0 0 {name=p2 lab=VREF}
C {ipin.sym} -400 -640 0 0 {name=p3 lab=RST}
C {ipin.sym} -400 -610 0 0 {name=p4 lab=B2N}
C {ipin.sym} -400 -580 0 0 {name=p5 lab=B1N}
C {ipin.sym} -400 -550 0 0 {name=p6 lab=B0N}
C {opin.sym} -400 -520 0 0 {name=p7 lab=REF}
