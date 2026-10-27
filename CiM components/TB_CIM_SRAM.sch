v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Phase 1 (0-200 ns): write the 4x4 weights row by row (WL0..WL3 one after another, BL / BLB carry data and complement).
Phase 2 (250-550 ns): apply the input vectors on RIN0..3 and read the column voltages VCL0..3 (vj_xk measured at the end of each window).
Weights (row i, column j): [[1, 0, 1, 1], [0, 1, 1, 0], [1, 1, 0, 1], [0, 0, 1, 1]]
Input vectors (1 = 0.4 V on the row), 100 ns each from 250 ns:
x = [1, 0, 0, 0]: MAC = [1, 0, 1, 1], ideal VCL0..3 = 67 mV, 0 mV, 57 mV, 57 mV
x = [1, 1, 1, 1]: MAC = [2, 2, 3, 3], ideal VCL0..3 = 133 mV, 133 mV, 171 mV, 171 mV
x = [1, 0, 1, 1]: MAC = [2, 1, 2, 3], ideal VCL0..3 = 133 mV, 67 mV, 114 mV, 171 mV
The SRAM read transistor (about 1 kohm when on) is close to, but not exactly, 1 mS, so the values will be a little different.} 820 -270 0 0 0.25 0.25 {}
C {/home/ttuser/Documents/ADCAnalogDesign/CiM components/cim_sram_4x4.sym} 500 -300 0 0 {name=x1}
C {lab_pin.sym} 400 -470 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 400 -450 0 0 {name=p2 sig_type=std_logic lab=0}
C {lab_pin.sym} 400 -430 0 0 {name=p3 sig_type=std_logic lab=WL0}
C {lab_pin.sym} 400 -410 0 0 {name=p4 sig_type=std_logic lab=WL1}
C {lab_pin.sym} 400 -390 0 0 {name=p5 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 400 -370 0 0 {name=p6 sig_type=std_logic lab=WL3}
C {lab_pin.sym} 400 -350 0 0 {name=p7 sig_type=std_logic lab=BL0}
C {lab_pin.sym} 400 -330 0 0 {name=p8 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 400 -310 0 0 {name=p9 sig_type=std_logic lab=BL2}
C {lab_pin.sym} 400 -290 0 0 {name=p10 sig_type=std_logic lab=BL3}
C {lab_pin.sym} 400 -270 0 0 {name=p11 sig_type=std_logic lab=BLB0}
C {lab_pin.sym} 400 -250 0 0 {name=p12 sig_type=std_logic lab=BLB1}
C {lab_pin.sym} 400 -230 0 0 {name=p13 sig_type=std_logic lab=BLB2}
C {lab_pin.sym} 400 -210 0 0 {name=p14 sig_type=std_logic lab=BLB3}
C {lab_pin.sym} 400 -190 0 0 {name=p15 sig_type=std_logic lab=RIN0}
C {lab_pin.sym} 400 -170 0 0 {name=p16 sig_type=std_logic lab=RIN1}
C {lab_pin.sym} 400 -150 0 0 {name=p17 sig_type=std_logic lab=RIN2}
C {lab_pin.sym} 400 -130 0 0 {name=p18 sig_type=std_logic lab=RIN3}
C {lab_pin.sym} 600 -330 0 1 {name=p19 sig_type=std_logic lab=CL0}
C {lab_pin.sym} 600 -310 0 1 {name=p20 sig_type=std_logic lab=CL1}
C {lab_pin.sym} 600 -290 0 1 {name=p21 sig_type=std_logic lab=CL2}
C {lab_pin.sym} 600 -270 0 1 {name=p22 sig_type=std_logic lab=CL3}
C {vsource.sym} 100 100 0 0 {name=V1 value=1.8}
C {lab_pin.sym} 100 70 0 0 {name=p23 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 100 130 0 0 {name=p24 sig_type=std_logic lab=0}
C {vsource.sym} 240 150 0 0 {name=V2 value="PULSE(0 1.8 20n 1n 1n 30n 1)"}
C {lab_pin.sym} 240 120 0 0 {name=p25 sig_type=std_logic lab=WL0}
C {lab_pin.sym} 240 180 0 0 {name=p26 sig_type=std_logic lab=0}
C {vsource.sym} 390 60 0 0 {name=V3 value="PULSE(0 1.8 70n 1n 1n 30n 1)"}
C {lab_pin.sym} 390 30 0 0 {name=p27 sig_type=std_logic lab=WL1}
C {lab_pin.sym} 390 90 0 0 {name=p28 sig_type=std_logic lab=0}
C {vsource.sym} 580 150 0 0 {name=V4 value="PULSE(0 1.8 120n 1n 1n 30n 1)"}
C {lab_pin.sym} 580 120 0 0 {name=p29 sig_type=std_logic lab=WL2}
C {lab_pin.sym} 580 180 0 0 {name=p30 sig_type=std_logic lab=0}
C {vsource.sym} 780 100 0 0 {name=V5 value="PULSE(0 1.8 170n 1n 1n 30n 1)"}
C {lab_pin.sym} 780 70 0 0 {name=p31 sig_type=std_logic lab=WL3}
C {lab_pin.sym} 780 130 0 0 {name=p32 sig_type=std_logic lab=0}
C {vsource.sym} 870 0 0 0 {name=V6 value="PWL(0 1.8 60n 1.8 61n 0.0 110n 0.0 111n 1.8 160n 1.8 161n 0.0 210n 0.0)"}
C {lab_pin.sym} 870 -30 0 0 {name=p33 sig_type=std_logic lab=BL0}
C {lab_pin.sym} 870 30 0 0 {name=p34 sig_type=std_logic lab=0}
C {vsource.sym} 1120 100 0 0 {name=V7 value="PWL(0 0.0 60n 0.0 61n 1.8 110n 1.8 111n 1.8 160n 1.8 161n 0.0 210n 0.0)"}
C {lab_pin.sym} 1120 70 0 0 {name=p35 sig_type=std_logic lab=BL1}
C {lab_pin.sym} 1120 130 0 0 {name=p36 sig_type=std_logic lab=0}
C {vsource.sym} 1290 170 0 0 {name=V8 value="PWL(0 1.8 60n 1.8 61n 1.8 110n 1.8 111n 0.0 160n 0.0 161n 1.8 210n 1.8)"}
C {lab_pin.sym} 1290 140 0 0 {name=p37 sig_type=std_logic lab=BL2}
C {lab_pin.sym} 1290 200 0 0 {name=p38 sig_type=std_logic lab=0}
C {vsource.sym} 1460 30 0 0 {name=V9 value="PWL(0 1.8 60n 1.8 61n 0.0 110n 0.0 111n 1.8 160n 1.8 161n 1.8 210n 1.8)"}
C {lab_pin.sym} 1460 0 0 0 {name=p39 sig_type=std_logic lab=BL3}
C {lab_pin.sym} 1460 60 0 0 {name=p40 sig_type=std_logic lab=0}
C {vsource.sym} 100 290 0 0 {name=V10 value="PWL(0 0.0 60n 0.0 61n 1.8 110n 1.8 111n 0.0 160n 0.0 161n 1.8 210n 1.8)"}
C {lab_pin.sym} 100 260 0 0 {name=p41 sig_type=std_logic lab=BLB0}
C {lab_pin.sym} 100 320 0 0 {name=p42 sig_type=std_logic lab=0}
C {vsource.sym} 270 400 0 0 {name=V11 value="PWL(0 1.8 60n 1.8 61n 0.0 110n 0.0 111n 0.0 160n 0.0 161n 1.8 210n 1.8)"}
C {lab_pin.sym} 270 370 0 0 {name=p43 sig_type=std_logic lab=BLB1}
C {lab_pin.sym} 270 430 0 0 {name=p44 sig_type=std_logic lab=0}
C {vsource.sym} 360 500 0 0 {name=V12 value="PWL(0 0.0 60n 0.0 61n 0.0 110n 0.0 111n 1.8 160n 1.8 161n 0.0 210n 0.0)"}
C {lab_pin.sym} 360 470 0 0 {name=p45 sig_type=std_logic lab=BLB2}
C {lab_pin.sym} 360 530 0 0 {name=p46 sig_type=std_logic lab=0}
C {vsource.sym} 600 310 0 0 {name=V13 value="PWL(0 0.0 60n 0.0 61n 1.8 110n 1.8 111n 0.0 160n 0.0 161n 0.0 210n 0.0)"}
C {lab_pin.sym} 600 280 0 0 {name=p47 sig_type=std_logic lab=BLB3}
C {lab_pin.sym} 600 340 0 0 {name=p48 sig_type=std_logic lab=0}
C {vsource.sym} 870 530 0 0 {name=V14 value="PWL(0 0 249n 0 250n 0.4 349n 0.4 350n 0.4 449n 0.4 450n 0.4 549n 0.4 550n 0 600n 0)"}
C {lab_pin.sym} 870 500 0 0 {name=p49 sig_type=std_logic lab=RIN0}
C {lab_pin.sym} 870 560 0 0 {name=p50 sig_type=std_logic lab=0}
C {vsource.sym} 780 400 0 0 {name=V15 value="PWL(0 0 249n 0 250n 0 349n 0 350n 0.4 449n 0.4 450n 0 549n 0 550n 0 600n 0)"}
C {lab_pin.sym} 780 370 0 0 {name=p51 sig_type=std_logic lab=RIN1}
C {lab_pin.sym} 780 430 0 0 {name=p52 sig_type=std_logic lab=0}
C {vsource.sym} 1120 280 0 0 {name=V16 value="PWL(0 0 249n 0 250n 0 349n 0 350n 0.4 449n 0.4 450n 0.4 549n 0.4 550n 0 600n 0)"}
C {lab_pin.sym} 1120 250 0 0 {name=p53 sig_type=std_logic lab=RIN2}
C {lab_pin.sym} 1120 310 0 0 {name=p54 sig_type=std_logic lab=0}
C {vsource.sym} 1290 400 0 0 {name=V17 value="PWL(0 0 249n 0 250n 0 349n 0 350n 0.4 449n 0.4 450n 0.4 549n 0.4 550n 0 600n 0)"}
C {lab_pin.sym} 1290 370 0 0 {name=p55 sig_type=std_logic lab=RIN3}
C {lab_pin.sym} 1290 430 0 0 {name=p56 sig_type=std_logic lab=0}
C {code_shown.sym} -300 -900 0 0 {name=s1 only_toplevel=false value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt

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
plot v(WL0) v(WL1)+2 v(WL2)+4 v(WL3)+6
plot v(BL0) v(BL1)+2 v(BL2)+4 v(BL3)+6
plot v(x1.x00.Q) v(x1.x01.Q)+2 v(x1.x02.Q)+4 v(x1.x03.Q)+6
plot v(RIN0) v(RIN1)+1 v(RIN2)+2 v(RIN3)+3
plot v(CL0) v(CL1)+0.2 v(CL2)+0.3 v(CL3)+0.6
.endc
"}
