v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}

C {/home/ttuser/Documents/ADCAnalogDesign/cim_reram_4x4.sym} 500 -300 0 0 {name=x1}
C {lab_pin.sym} 400 -340 0 0 {name=p1 sig_type=std_logic lab=0}
C {lab_pin.sym} 400 -320 0 0 {name=p2 sig_type=std_logic lab=RIN0}
C {lab_pin.sym} 400 -300 0 0 {name=p3 sig_type=std_logic lab=RIN1}
C {lab_pin.sym} 400 -280 0 0 {name=p4 sig_type=std_logic lab=RIN2}
C {lab_pin.sym} 400 -260 0 0 {name=p5 sig_type=std_logic lab=RIN3}
C {lab_pin.sym} 600 -330 0 1 {name=p6 sig_type=std_logic lab=CL0}
C {lab_pin.sym} 600 -310 0 1 {name=p7 sig_type=std_logic lab=CL1}
C {lab_pin.sym} 600 -290 0 1 {name=p8 sig_type=std_logic lab=CL2}
C {lab_pin.sym} 600 -270 0 1 {name=p9 sig_type=std_logic lab=CL3}
C {vsource.sym} 100 100 0 0 {name=V1 value="PWL(0 0 249n 0 250n 0.4 349n 0.4 350n 0.4 449n 0.4 450n 0.4 549n 0.4 550n 0 600n 0)"}
C {lab_pin.sym} 100 70 0 0 {name=p10 sig_type=std_logic lab=RIN0}
C {lab_pin.sym} 100 130 0 0 {name=p11 sig_type=std_logic lab=0}
C {vsource.sym} 270 100 0 0 {name=V2 value="PWL(0 0 249n 0 250n 0 349n 0 350n 0.4 449n 0.4 450n 0 549n 0 550n 0 600n 0)"}
C {lab_pin.sym} 270 70 0 0 {name=p12 sig_type=std_logic lab=RIN1}
C {lab_pin.sym} 270 130 0 0 {name=p13 sig_type=std_logic lab=0}
C {vsource.sym} 440 100 0 0 {name=V3 value="PWL(0 0 249n 0 250n 0 349n 0 350n 0.4 449n 0.4 450n 0.4 549n 0.4 550n 0 600n 0)"}
C {lab_pin.sym} 440 70 0 0 {name=p14 sig_type=std_logic lab=RIN2}
C {lab_pin.sym} 440 130 0 0 {name=p15 sig_type=std_logic lab=0}
C {vsource.sym} 610 100 0 0 {name=V4 value="PWL(0 0 249n 0 250n 0 349n 0 350n 0.4 449n 0.4 450n 0.4 549n 0.4 550n 0 600n 0)"}
C {lab_pin.sym} 610 70 0 0 {name=p16 sig_type=std_logic lab=RIN3}
C {lab_pin.sym} 610 130 0 0 {name=p17 sig_type=std_logic lab=0}
C {code_shown.sym} -300 -760 0 0 {name=s1 only_toplevel=false value="
.control
save all
tran 0.2n 600n
meas tran v0_x1 find v(CL0) at=340n
meas tran v1_x1 find v(CL1) at=340n
meas tran v2_x1 find v(CL2) at=340n
meas tran v3_x1 find v(CL3) at=340n
meas tran v0_x2 find v(CL0) at=440n
meas tran v1_x2 find v(CL1) at=440n
meas tran v2_x2 find v(CL2) at=440n
meas tran v3_x2 find v(CL3) at=440n
meas tran v0_x3 find v(CL0) at=540n
meas tran v1_x3 find v(CL1) at=540n
meas tran v2_x3 find v(CL2) at=540n
meas tran v3_x3 find v(CL3) at=540n
plot v(RIN0) v(RIN1)+1 v(RIN2)+2 v(RIN3)+3
plot v(CL0) v(CL1) v(CL2) v(CL3)
.endc
"}
T {Same input sequence as the SRAM testbench (inputs from 250 ns), weights hard-wired as resistor values.  No transistors, so no .lib is needed.
Weights (row i, column j): [[1, 0, 1, 1], [0, 1, 1, 0], [1, 1, 0, 1], [0, 0, 1, 1]]
Input vectors (1 = 0.4 V on the row), 100 ns each from 250 ns:
x = [1, 0, 0, 0]: MAC = [1, 0, 1, 1], ideal VCL0..3 = 67 mV, 0 mV, 57 mV, 57 mV
x = [1, 1, 1, 1]: MAC = [2, 2, 3, 3], ideal VCL0..3 = 133 mV, 133 mV, 171 mV, 171 mV
x = [1, 0, 1, 1]: MAC = [2, 1, 2, 3], ideal VCL0..3 = 133 mV, 67 mV, 114 mV, 171 mV
The ideal values above include the HRS leakage (0.1 uS) and the resistor-divider compression (1/RL = 4 mS).} 100 -200 0 0 0.25 0.25 {}
