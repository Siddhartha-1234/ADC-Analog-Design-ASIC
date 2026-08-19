v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 -120 -710 680 -310 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-11
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node=a
color=4
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 -110 -290 690 110 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-11
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color=4
node=y}
B 2 -110 140 690 540 {flags=graph
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=1e-11
x2=1e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0


dataset=-1
unitx=1
logx=0
logy=0
color="4 7"
node="y
y_parax"}
B 2 -980 -730 -180 -330 {flags=graph,unlocked
y1=0
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1


divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="a
y_parax"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
x1=1.99932e-07
x2=2.01044e-07}
T {Fast Transition} -730 -790 0 0 0.7 0.7 {}
T {Output y/y_parax is the inverse of input a,
it's an inverter! yay.} -960 100 0 0 0.7 0.7 {}
C {/home/ttuser/Documents/ADCAnalogDesign/lvtNOT.sym} -620 -80 0 0 {name=x1}
C {lab_pin.sym} -700 -60 0 0 {name=p1 lab=a}
C {lab_pin.sym} -480 -60 0 1 {name=p2 lab=y}
C {lab_pin.sym} -610 -140 0 0 {name=p3 lab=VCC}
C {lab_pin.sym} -610 10 0 0 {name=p4 lab=VSS}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/corner.sym} -990 -120 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {code.sym} -990 -270 0 0 {name=stimuli only_toplevel=false value="
** this experimental option enables mos model bin 
** selection based on W/NF instead of W
.option chgtol=4e-16 method=gear

.param VCCGAUSS = agauss(1.8, 0.05, 1)
.param VCC = 'VCCGAUSS'
** use following line to remove VCC variations
* .param VCC = 1.8
.param VDLGAUSS = agauss(0.9, 0.23, 1)
.param VDL = VDLGAUSS
** use following line to remove input common mode variations
* .param VDL =  0.9
.param TEMPGAUSS = agauss(40, 30, 1)
.option temp = 'TEMPGAUSS'
** use following line to remove temperature variations
* .option temp = 25
.param DELTA = 0.002

.include stimuli_tb_lvtnot.cir

.control
  setseed  8
  reset
  let run = 1
  save all
  op
  write tb_lvtnot.raw
  reset
  set appendwrite
  dowhile run < = 5
    save all
    tran 1n 1000n uic
    write tb_lvtnot.raw
    let run = run + 1
    reset
  end
  quit 0
.endc
"}
C {launcher.sym} -340 -240 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_lvtnot.raw tran"
}
C {/home/ttuser/Documents/ADCAnalogDesign/lvtNOT.sym} -340 -80 0 0 {name=x2
schematic=lvtnot_parax.sim
spice_sym_def="tcleval(.include [file normalize extracted/lvtnot.sim.spice])"
tclcommand="textwindow [file normalize extracted/lvtnot.sim.spice]"
}
C {lab_pin.sym} -420 -60 0 0 {name=p5 lab=a}
C {lab_pin.sym} -200 -60 0 1 {name=p6 lab=y_parax}
C {lab_pin.sym} -330 -140 0 0 {name=p7 lab=VCC}
C {lab_pin.sym} -330 10 0 0 {name=p8 lab=VSS}
C {title.sym} -860 600 0 0 {name=l1 author="Pat Deegan"}
