v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 320 -230 320 -200 {lab=VSSBPIN}
N 320 -470 320 -440 {lab=VCCBPIN}
N 270 -470 290 -470 { lab=A}
N 270 -340 270 -200 { lab=A}
N 270 -200 290 -200 { lab=A}
N 350 -200 370 -200 { lab=Z}
N 370 -340 370 -200 { lab=Z}
N 350 -470 370 -470 { lab=Z}
N 210 -340 270 -340 { lab=A}
N 370 -340 430 -340 { lab=Z}
N 320 -550 320 -510 { lab=GP}
N 280 -550 320 -550 { lab=GP}
N 320 -160 320 -120 { lab=#net1}
N 280 -120 320 -120 { lab=#net1}
N 270 -470 270 -340 { lab=A}
N 370 -470 370 -340 { lab=Z}
C {iopin.sym} 210 -340 0 1 {name=p1 lab=A}
C {iopin.sym} 430 -340 0 0 {name=p2 lab=Z}
C {ipin.sym} 280 -550 0 0 {name=p3 lab=GP}
C {ipin.sym} 280 -120 0 0 {name=p4 lab=GN}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/nfet_01v8.sym} 320 -180 1 1 {name=M1
L=0.2
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
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/pfet_01v8.sym} 320 -490 3 1 {name=M2
L=0.2
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
v \{xschem version=3.1.0 file_version=1.2
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

\}
G \{\}
K \{type=pmos
lvs_format="@spiceprefix@name @pinlist sky130_fd_pr__@model L=@L W=@W nf=@nf m=@mult"
format="@spiceprefix@name @pinlist sky130_fd_pr__@model L=@L W=@W
+ nf=@nf ad=@ad as=@as pd=@pd ps=@ps
+ nrd=@nrd nrs=@nrs sa=@sa sb=@sb sd=@sd 
+ mult=@mult m=@mult"
template="name=M1
L=0.15
W=1
nf=1
mult=1
ad=\\\\"'int((nf+1)/2) * W/nf * 0.29'\\\\" 
pd=\\\\"'2*int((nf+1)/2) * (W/nf + 0.29)'\\\\"
as=\\\\"'int((nf+2)/2) * W/nf * 0.29'\\\\" 
ps=\\\\"'2*int((nf+2)/2) * (W/nf + 0.29)'\\\\"
nrd=\\\\"'0.29 / W'\\\\" nrs=\\\\"'0.29 / W'\\\\"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
"\}
V \{\}
S \{\}
E \{\}
L 4 7.5 -22.5 7.5 22.5 \{\}
L 4 20 -30 20 -17.5 \{\}
L 4 20 17.5 20 30 \{\}
L 4 2.5 -15 2.5 15 \{\}
L 4 7.5 17.5 20 17.5 \{\}
L 4 12.5 -17.5 20 -17.5 \{\}
L 4 -20 0 -7.5 0 \{\}
B 5 17.5 27.5 22.5 32.5 \{name=D dir=inout\}
B 5 -22.5 -2.5 -17.5 2.5 \{name=G dir=in\}
B 5 17.5 -32.5 22.5 -27.5 \{name=S dir=inout\}
B 5 19.921875 -0.078125 20.078125 0.078125 \{name=B dir=in\}
A 4 -2.5 0 5 180 360 \{\}
P 4 4 12.5 -20 7.5 -17.5 12.5 -15 12.5 -20 \{fill=true\}
P 5 4 15 -2.5 20 0 15 2.5 15 -2.5 \{fill=true\}
T \{@name\} 5 -30 0 1 0.2 0.2 \{\}
T \{D\} 22.5 17.5 0 0 0.15 0.15 \{layer=7\}
T \{S\} 22.5 -17.5 2 1 0.15 0.15 \{layer=7\}
T \{B\} 20 -10 0 0 0.15 0.15 \{layer=7\}
T \{G\} -10 -10 0 1 0.15 0.15 \{layer=7\}
T \{@model\} 30 -8.75 2 1 0.2 0.2 \{\}
T \{@mult x @W / @L\} 31.25 13.75 0 0 0.2 0.2 \{ layer=13\}
T \{nf=@nf\} 31.25 1.25 0 0 0.2 0.2 \{ layer=13\}
T \{tcleval(gm=[to_eng [ngspice::get_node [subst -nocommand \\\{\\\\@m.$\\\{path\\\}@spiceprefix@name\\\\.msky130_fd_pr__@model\\\\[gm]\\\}]]] )\} 32.5 -8.75 0 0 0.15 0.15 \{layer=15
hide=true\}
T \{tcleval(id=[to_eng [ngspice::get_node [subst -nocommand \\\{i(\\\\@m.$\\\{path\\\}@spiceprefix@name\\\\.msky130_fd_pr__@model\\\\[id])\\\}]]] )\} 32.5 -30 0 0 0.15 0.15 \{layer=15
hide=true\}
}
C {lab_pin.sym} 320 -230 3 1 {name=p179 lab=VSSBPIN}
C {lab_pin.sym} 320 -440 3 0 {name=p180 lab=VCCBPIN}
C {ipin.sym} 590 -410 0 0 {name=p5 lab=VCCBPIN}
C {ipin.sym} 590 -390 0 0 {name=p6 lab=VSSBPIN}
