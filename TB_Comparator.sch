v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
B 2 200 -580 1000 -180 {flags=graph
y1=0.25
y2=1.7
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=4.5421e-06
x2=8.63809e-06
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="plus
minus"
color="4 7"
dataset=-1
unitx=1
logx=0
logy=0
}
B 2 200 -170 1000 230 {flags=graph
y1=-0.88
y2=2
ypos1=0
ypos2=2
divy=5
subdivy=1
unity=1
x1=2e-11
x2=1.02e-05
divx=5
subdivx=1
xlabmag=1.0
ylabmag=1.0
node="diffout_n
\\"input delta; plus minus -\\""
color="7 4"
dataset=-1
unitx=1
logx=0
logy=0
}
T {DUT} -310 -220 0 0 0.6 0.6 {}
T {External control signals} -440 -610 0 0 0.6 0.6 {}
T {We need a way to start calibration, 
that's the START signal, and it
needs to be inverted to use the 
passthrough and send the output
to the ADJ.} -130 -490 0 0 0.3 0.3 {}
T {Comparator output: 
tells us if PLUS side
is above MINUS input.
The 'delta' is just
"plus - minus", so 
comp should match
behaviour.} 20 -20 0 0 0.3 0.3 {}
T {Inputs} 200 -630 0 0 0.6 0.6 {}
N -390 -390 -350 -390 {
lab=DIFFOUT_N}
N -170 -330 -170 -300 {
lab=VSS}
N -270 -390 -170 -390 {
lab=ADJ}
N -170 -390 0 -390 {
lab=ADJ}
N -310 -450 -310 -420 {
lab=START}
N -310 -360 -310 -340 {
lab=START_N}
N -240 -520 -200 -520 {
lab=START_N}
N -340 -520 -320 -520 {
lab=START}
C {/home/ttuser/Documents/ADCAnalogDesign/comparator.sym} -210 -80 0 0 {name=x1}
C {lab_pin.sym} -310 -150 0 0 {name=p1 lab=VCC}
C {lab_pin.sym} -310 -10 0 0 {name=p2 lab=VSS}
C {lab_pin.sym} -210 0 0 0 {name=p3 lab=EN_N}
C {lab_pin.sym} -210 20 0 0 {name=p4 lab=ADJ}
C {lab_pin.sym} -50 -60 0 1 {name=p5 lab=DIFFOUT_N}
C {lab_pin.sym} -310 -100 0 0 {name=p6 lab=PLUS}
C {lab_pin.sym} -310 -50 0 0 {name=p7 lab=MINUS}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_tests/passgate.sym} -310 -390 0 0 {name=x2 W_N=1 L_N=0.2 W_P=0.5 L_P=0.15 VCCBPIN=VCC VSSBPIN=VSS m=1}
C {lab_pin.sym} -390 -390 2 1 {name=p8 lab=DIFFOUT_N}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/cap_mim_m3_2.sym} -170 -360 0 0 {name=C1 model=cap_mim_m3_2 W=10 L=10 MF=5 spiceprefix=X}
C {lab_pin.sym} -170 -300 0 0 {name=p9 lab=VSS}
C {lab_pin.sym} 0 -390 2 0 {name=p10 lab=ADJ}
C {lab_pin.sym} -310 -450 2 1 {name=p11 lab=START}
C {lab_pin.sym} -310 -340 2 1 {name=p12 lab=START_N}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_tests/not.sym} -280 -520 0 0 {name=x3 m=1 
+ W_N=1 L_N=0.15 W_P=2 L_P=0.15 
+ VCCPIN=VCC VSSPIN=VSS}
C {lab_pin.sym} -200 -520 0 1 {name=p13 lab=START_N}
C {lab_pin.sym} -340 -520 2 1 {name=p14 lab=START}
C {/home/ttuser/pdk/volare/sky130/versions/bdc9412b3e468c102d01b7cf6337be06ec6e9c9a/sky130A/libs.tech/xschem/sky130_fd_pr/corner.sym} -520 130 0 0 {name=CORNER only_toplevel=true corner=tt_mm}
C {code.sym} -380 130 0 0 {name=stimuli only_toplevel=false value="
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

.include stimuli_tb_comparator.cir

.control
  setseed  8
  reset
  let run = 1
  save all
  op
  write tb_comparator.raw
  reset
  set appendwrite
  dowhile run < = 20
    save all
    tran 2n 10.2u uic
    write tb_comparator.raw
    let run = run + 1
    reset
  end
  quit 0
.endc
"}
C {launcher.sym} -170 150 0 0 {name=h5
descr="load waves" 
tclcommand="xschem raw_read $netlist_dir/tb_comparator.raw tran"
}
