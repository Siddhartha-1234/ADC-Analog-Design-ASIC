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
L=1
W=0.5
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
N 950 -470 1010 -470 {
lab=EN_N}
N 1050 -560 1050 -500 {
lab=VCC}
N 1050 -470 1210 -470 {
lab=VCC}
N 1050 -440 1050 -400 {
lab=Inhigh}
N 1050 -400 1180 -400 {
lab=Inhigh}
N 1180 -400 1250 -400 {
lab=Inhigh}
N 1250 -400 1250 -330 {
lab=Inhigh}
N 1140 -300 1250 -300 {
lab=VCC}
N 1290 -300 1360 -300 {
lab=PLUS}
N 940 -400 1050 -400 {
lab=Inhigh}
N 940 -400 940 -310 {
lab=Inhigh}
N 940 -280 1020 -280 {
lab=VCC}
N 830 -280 900 -280 {
lab=MINUS}
N 1250 -270 1250 -210 {
lab=G2}
N 940 -250 940 -200 {
lab=G1}
N 1210 -230 1210 -180 {
lab=G2}
N 940 -140 940 -60 {
lab=VSS}
N 940 -60 1250 -60 {
lab=VSS}
N 1250 -150 1250 -60 {
lab=VSS}
N 980 -220 980 -170 {
lab=G1}
N 940 -220 980 -220 {
lab=G1}
N 790 -170 940 -170 {
lab=VSS}
N 1110 -60 1110 -30 {
lab=VSS}
N 1210 -230 1230 -230 {
lab=G2}
N 1230 -230 1250 -230 {
lab=G2}
N 1250 -180 1320 -180 {
lab=VSS}
N 1250 -60 1710 -60 {
lab=VSS}
N 1250 -250 1670 -250 {
lab=G2}
N 1710 -220 1710 -60 {
lab=VSS}
N 1710 -250 1830 -250 {
lab=VSS}
N 1710 -400 1710 -280 {
lab=DIFFOUT}
N 1710 -400 1860 -400 {
lab=DIFFOUT}
N 1860 -180 1930 -180 {
lab=EN_N}
N 1970 -180 2120 -180 {
lab=VSS}
N 1710 -60 1970 -60 {
lab=VSS}
N 1970 -150 1970 -60 {
lab=VSS}
N 1860 -400 2160 -400 {
lab=DIFFOUT}
N 1970 -400 1970 -210 {
lab=DIFFOUT}
N 1710 -590 1710 -400 {
lab=DIFFOUT}
N 1560 -620 1670 -620 {
lab=pg2g}
N 1520 -740 1520 -650 {
lab=mirhigh}
N 1520 -740 1710 -740 {
lab=mirhigh}
N 1710 -740 1710 -650 {
lab=mirhigh}
N 1710 -800 1710 -740 {
lab=mirhigh}
N 1710 -830 1790 -830 {
lab=VCC}
N 1710 -930 1710 -860 {
lab=VCC}
N 1620 -830 1670 -830 {
lab=EN_N}
N 1520 -590 1520 -560 {
lab=pg2g}
N 1520 -560 1590 -560 {
lab=pg2g}
N 1590 -620 1590 -560 {
lab=pg2g}
N 1520 -560 1520 -540 {
lab=pg2g}
N 1520 -480 1520 -450 {
lab=VSS}
N 1520 -510 1610 -510 {
lab=VSS}
N 1450 -510 1480 -510 {
lab=G1}
N 1410 -620 1520 -620 {
lab=VCC}
N 1710 -620 1790 -620 {
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
C {lab_pin.sym} 950 -470 0 0 {name=p11 sig_type=std_logic lab=EN_N}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1030 -470 0 0 {name=M7
L=8
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
C {lab_pin.sym} 1050 -560 0 0 {name=p12 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1210 -470 0 1 {name=p13 sig_type=std_logic lab=VCC}
C {lab_wire.sym} 1180 -400 0 0 {name=p14 sig_type=std_logic lab=Inhigh}
C {lab_pin.sym} 1140 -300 0 0 {name=p15 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1360 -300 0 1 {name=p16 sig_type=std_logic lab=PLUS}
C {lab_pin.sym} 1020 -280 0 1 {name=p17 sig_type=std_logic lab=VCC}
C {lab_wire.sym} 940 -230 0 0 {name=p18 sig_type=std_logic lab=G1}
C {lab_pin.sym} 830 -280 0 0 {name=p19 sig_type=std_logic lab=MINUS}
C {lab_pin.sym} 790 -170 0 0 {name=p20 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 1110 -30 0 0 {name=p21 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 1230 -230 0 0 {name=p22 sig_type=std_logic lab=G2}
C {lab_pin.sym} 1320 -180 0 1 {name=p23 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 1830 -250 0 1 {name=p24 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 1860 -180 0 0 {name=p25 sig_type=std_logic lab=EN_N}
C {lab_pin.sym} 2120 -180 0 1 {name=p26 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 2160 -400 0 1 {name=p27 sig_type=std_logic lab=DIFFOUT}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 1690 -830 0 0 {name=M16
L=0.15
W=5
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
C {lab_pin.sym} 1790 -830 0 1 {name=p28 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1710 -930 0 1 {name=p29 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1620 -830 0 0 {name=p30 sig_type=std_logic lab=EN_N}
C {lab_pin.sym} 1520 -450 0 1 {name=p31 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 1610 -510 0 1 {name=p32 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 1450 -510 0 0 {name=p33 sig_type=std_logic lab=G1
}
C {lab_wire.sym} 1620 -620 0 0 {name=p34 sig_type=std_logic lab=pg2g}
C {lab_wire.sym} 1610 -740 0 0 {name=p35 sig_type=std_logic lab=mirhigh}
C {lab_pin.sym} 1790 -620 0 1 {name=p36 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 1410 -620 0 0 {name=p37 sig_type=std_logic lab=VCC}
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 410 -480 0 0 {name=M4
L=1
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
L=1
W=0.5
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
L=8
W=0.5
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 920 -280 0 0 {name=M9
L=2
W=8
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 1270 -300 0 1 {name=M8
L=2
W=8
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 1230 -180 0 0 {name=M11
L=4
W=2
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 960 -170 0 1 {name=M10
L=4
W=2
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 1690 -250 0 0 {name=M12
L=4
W=2
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 1950 -180 0 0 {name=M13
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8_lvt.sym} 1500 -510 0 0 {name=M17
L=4
W=2
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 1540 -620 0 1 {name=M15
L=4
W=4
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
C {/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8_lvt.sym} 1690 -620 0 0 {name=M2
L=4
W=4
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
C {ipin.sym} 60 -260 0 0 {name=p38 lab=VCC}
C {ipin.sym} 60 -230 0 0 {name=p39 lab=VSS
}
C {ipin.sym} 70 -200 0 0 {name=p40 lab=EN_N

}
C {ipin.sym} 80 -170 0 0 {name=p41 lab=MINUS


}
C {ipin.sym} 80 -140 0 0 {name=p42 lab=PLUS


}
C {ipin.sym} 80 -110 0 0 {name=p43 lab=ADJ


}
C {opin.sym} 10 -90 0 0 {name=p44 lab=DIFFOUT


}
