v {xschem version=3.4.5 file_version=1.2
* Copyright 2021 Stefan Frederik Schippers
* 
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     https://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.

}
G {}
K {type=pmos
lvs_format="@spiceprefix@name @pinlist sky130_fd_pr__@model L=@L W=@W nf=@nf m=@mult"
format="@spiceprefix@name @pinlist @body sky130_fd_pr__@model L=@L W=@W
+ nf=@nf ad=@ad as=@as pd=@pd ps=@ps
+ nrd=@nrd nrs=@nrs sa=@sa sb=@sb sd=@sd 
+ mult=@mult m=@mult"
template="name=M1
L=0.15
W=1
body=VDD
nf=1
mult=1
ad=\\"'int((nf+1)/2) * W/nf * 0.29'\\" 
pd=\\"'2*int((nf+1)/2) * (W/nf + 0.29)'\\"
as=\\"'int((nf+2)/2) * W/nf * 0.29'\\" 
ps=\\"'2*int((nf+2)/2) * (W/nf + 0.29)'\\"
nrd=\\"'0.29 / W'\\" nrs=\\"'0.29 / W'\\"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
"}
V {}
S {}
E {}
N 430 -540 430 -510 {
lab=#net1}
N 430 -450 430 -390 {
lab=G1}
N 430 -330 430 -300 {
lab=#net2}
N 430 -630 430 -600 {
lab=VCC}
N 430 -570 530 -570 {
lab=VCC}
N 430 -480 530 -480 {
lab=VCC}
N 330 -270 390 -270 {
lab=VCC}
N 430 -360 540 -360 {
lab=VSS}
N 430 -270 540 -270 {
lab=VSS}
N 430 -240 430 -200 {
lab=VSS}
N 350 -360 390 -360 {
lab=ADJ}
N 350 -480 390 -480 {
lab=ADJ}
N 350 -480 350 -430 {
lab=ADJ}
N 350 -430 350 -360 {
lab=ADJ}
N 430 -420 550 -420 {
lab=G1}
N 300 -570 390 -570 {
lab=EN_N}
N 980 -330 1040 -330 {
lab=EN_N}
N 1080 -420 1080 -360 {
lab=VCC}
N 1080 -330 1240 -330 {
lab=VCC}
N 1080 -300 1080 -260 {
lab=Inhigh}
N 1080 -260 1210 -260 {
lab=Inhigh}
N 1210 -260 1280 -260 {
lab=Inhigh}
N 1280 -260 1280 -190 {
lab=Inhigh}
N 1170 -160 1280 -160 {
lab=VCC}
N 1320 -160 1390 -160 {
lab=PLUS}
N 970 -260 1080 -260 {
lab=Inhigh}
N 970 -260 970 -170 {
lab=Inhigh}
N 970 -140 1050 -140 {
lab=VCC}
N 860 -140 930 -140 {
lab=MINUS}
N 1280 -130 1280 -70 {
lab=G2}
N 970 -110 970 -60 {
lab=G1}
N 1240 -90 1240 -40 {
lab=G2}
N 970 0 970 80 {
lab=VSS}
N 970 80 1280 80 {
lab=VSS}
N 1280 -10 1280 80 {
lab=VSS}
N 1010 -80 1010 -30 {
lab=G1}
N 970 -80 1010 -80 {
lab=G1}
N 820 -30 970 -30 {
lab=VSS}
N 1140 80 1140 110 {
lab=VSS}
N 1240 -90 1260 -90 {
lab=G2}
N 1260 -90 1280 -90 {
lab=G2}
N 1280 -40 1350 -40 {
lab=VSS}
N 1280 80 1740 80 {
lab=VSS}
N 1280 -110 1700 -110 {
lab=G2}
N 1740 -80 1740 80 {
lab=VSS}
N 1740 -110 1860 -110 {
lab=VSS}
N 1740 -260 1740 -140 {
lab=DIFFOUT}
N 1740 -260 1890 -260 {
lab=DIFFOUT}
N 1890 -40 1960 -40 {
lab=EN_N}
N 2000 -40 2150 -40 {
lab=VSS}
N 1740 80 2000 80 {
lab=VSS}
N 2000 -10 2000 80 {
lab=VSS}
N 1890 -260 2190 -260 {
lab=DIFFOUT}
N 2000 -260 2000 -70 {
lab=DIFFOUT}
N 1740 -450 1740 -260 {
lab=DIFFOUT}
N 1590 -480 1700 -480 {
lab=pg2g}
N 1550 -600 1550 -510 {
lab=mirhigh}
N 1550 -600 1740 -600 {
lab=mirhigh}
N 1740 -600 1740 -510 {
lab=mirhigh}
N 1740 -660 1740 -600 {
lab=mirhigh}
N 1740 -690 1820 -690 {
lab=VCC}
N 1740 -790 1740 -720 {
lab=VCC}
N 1650 -690 1700 -690 {
lab=EN_N}
N 1550 -450 1550 -420 {
lab=pg2g}
N 1550 -420 1620 -420 {
lab=pg2g}
N 1620 -480 1620 -420 {
lab=pg2g}
N 1550 -420 1550 -400 {
lab=pg2g}
N 1550 -340 1550 -310 {
lab=VSS}
N 1550 -370 1640 -370 {
lab=VSS}
N 1480 -370 1510 -370 {
lab=G1}
N 1440 -480 1550 -480 {
lab=VCC}
N 1740 -480 1820 -480 {
lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 410 -570 0 0 {name=M3
L=8
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
C {lab_pin.sym} 530 -570 0 1 {name=p1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 430 -630 1 0 {name=p2 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 330 -270 0 0 {name=p4 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 530 -480 0 1 {name=p5 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 540 -360 0 1 {name=p3 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 540 -270 0 1 {name=p6 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 430 -200 0 0 {name=p7 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 350 -430 3 0 {name=p8 sig_type=std_logic lab=ADJ}
C {lab_pin.sym} 550 -420 0 1 {name=p9 sig_type=std_logic lab=G1
}
C {lab_pin.sym} 300 -570 0 0 {name=p10 sig_type=std_logic lab=EN_N}
C {lab_pin.sym} 980 -330 0 0 {name=p11 sig_type=std_logic lab=EN_N}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1060 -330 0 0 {name=M7
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
C {lab_pin.sym} 1080 -420 0 0 {name=p12 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1240 -330 0 1 {name=p13 sig_type=std_logic lab=VCC}
C {lab_wire.sym} 1210 -260 0 0 {name=p14 sig_type=std_logic lab=Inhigh}
C {lab_pin.sym} 1170 -160 0 0 {name=p15 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1390 -160 0 1 {name=p16 sig_type=std_logic lab=PLUS}
C {lab_pin.sym} 1050 -140 0 1 {name=p17 sig_type=std_logic lab=VCC}
C {lab_wire.sym} 970 -90 0 0 {name=p18 sig_type=std_logic lab=G1}
C {lab_pin.sym} 860 -140 0 0 {name=p19 sig_type=std_logic lab=MINUS}
C {lab_pin.sym} 820 -30 0 0 {name=p20 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 1140 110 0 0 {name=p21 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 1260 -90 0 0 {name=p22 sig_type=std_logic lab=G2}
C {lab_pin.sym} 1350 -40 0 1 {name=p23 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 1860 -110 0 1 {name=p24 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 1890 -40 0 0 {name=p25 sig_type=std_logic lab=EN_N}
C {lab_pin.sym} 2150 -40 0 1 {name=p26 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 2190 -260 0 1 {name=p27 sig_type=std_logic lab=DIFFOUT}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1720 -690 0 0 {name=M16
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
C {lab_pin.sym} 1820 -690 0 1 {name=p28 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1740 -790 0 1 {name=p29 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1650 -690 0 0 {name=p30 sig_type=std_logic lab=EN_N}
C {lab_pin.sym} 1550 -310 0 1 {name=p31 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 1640 -370 0 1 {name=p32 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 1480 -370 0 0 {name=p33 sig_type=std_logic lab=G1
}
C {lab_wire.sym} 1650 -480 0 0 {name=p34 sig_type=std_logic lab=pg2g}
C {lab_wire.sym} 1640 -600 0 0 {name=p35 sig_type=std_logic lab=mirhigh}
C {lab_pin.sym} 1820 -480 0 1 {name=p36 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1440 -480 0 0 {name=p37 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 410 -480 0 0 {name=M4
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 410 -360 0 0 {name=M5
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 410 -270 0 0 {name=M6
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 950 -140 0 0 {name=M9
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 1300 -160 0 1 {name=M8
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 1260 -40 0 0 {name=M11
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 990 -30 0 1 {name=M10
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 1720 -110 0 0 {name=M12
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 1980 -40 0 0 {name=M13
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 1530 -370 0 0 {name=M17
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
model=nfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 1570 -480 0 1 {name=M15
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 950 -140 0 0 {name=M1
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 1720 -480 0 0 {name=M2
L=0.35
W=1
nf=1
mult=1
ad="'int((nf+1)/2) * W/nf * 0.29'" 
pd="'2*int((nf+1)/2) * (W/nf + 0.29)'"
as="'int((nf+2)/2) * W/nf * 0.29'" 
ps="'2*int((nf+2)/2) * (W/nf + 0.29)'"
nrd="'0.29 / W'" nrs="'0.29 / W'"
sa=0 sb=0 sd=0
model=pfet_01v8_lvt
spiceprefix=X
}
