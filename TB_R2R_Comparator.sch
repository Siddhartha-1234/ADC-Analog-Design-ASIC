v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {Counter-type test of the R-2R DAC + comparator.
b0..b7 form a binary counter, one code every 200 ns (256 codes, 51.2 us), bit high level 0.8 V -> LSB = 0.8/256 = 3.125 mV.
DACOUT is a staircase 0 -> 0.8 V and goes to the comparator MINUS input; PLUS = VIN = 0.3 V.
DIFFOUT starts high (DACOUT < VIN) and falls when DACOUT passes VIN: expected code = 0.3/3.125 mV = 96 (t about 19.2 us).
code_est printed by ngspice is the code at the flip; its difference from 96 comes from comparator offset and delay.
ADJ = 0.9 V is a placeholder: use the ADJ value from your comparator trip-point test.} 100 -140 0 0 0.3 0.3 {}
C {/home/ttuser/Documents/ADCAnalogDesign/r2r.sym} 400 -300 0 0 {name=x1}
C {lab_pin.sym} 250 -370 0 0 {name=p1 sig_type=std_logic lab=b0}
C {lab_pin.sym} 250 -350 0 0 {name=p2 sig_type=std_logic lab=b1}
C {lab_pin.sym} 250 -330 0 0 {name=p3 sig_type=std_logic lab=b2}
C {lab_pin.sym} 250 -310 0 0 {name=p4 sig_type=std_logic lab=b3}
C {lab_pin.sym} 250 -290 0 0 {name=p5 sig_type=std_logic lab=b4}
C {lab_pin.sym} 250 -270 0 0 {name=p6 sig_type=std_logic lab=b5}
C {lab_pin.sym} 250 -250 0 0 {name=p7 sig_type=std_logic lab=b6}
C {lab_pin.sym} 250 -230 0 0 {name=p8 sig_type=std_logic lab=b7}
C {lab_pin.sym} 550 -380 0 1 {name=p9 sig_type=std_logic lab=DACOUT}
C {lab_pin.sym} 550 -360 0 1 {name=p10 sig_type=std_logic lab=0}
C {lab_pin.sym} 550 -340 0 1 {name=p11 sig_type=std_logic lab=0}
C {/home/ttuser/Documents/ADCAnalogDesign/comparator.sym} 1000 -300 0 0 {name=x2}
C {lab_pin.sym} 900 -370 0 0 {name=p12 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 900 -320 0 0 {name=p13 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 900 -270 0 0 {name=p14 sig_type=std_logic lab=DACOUT}
C {lab_pin.sym} 900 -230 0 0 {name=p15 sig_type=std_logic lab=0}
C {lab_pin.sym} 1000 -220 0 0 {name=p16 sig_type=std_logic lab=EN_N}
C {lab_pin.sym} 1000 -200 0 0 {name=p17 sig_type=std_logic lab=ADJ}
C {lab_pin.sym} 1160 -280 0 1 {name=p18 sig_type=std_logic lab=DIFFOUT}
C {capa.sym} 1300 -250 0 0 {name=CL m=1 value=20f footprint=1206 device="ceramic capacitor"}
C {lab_pin.sym} 1300 -280 0 1 {name=p19 sig_type=std_logic lab=DIFFOUT}
C {lab_pin.sym} 1300 -220 0 1 {name=p20 sig_type=std_logic lab=0}
C {vsource.sym} 100 100 0 0 {name=V1 value=1.8}
C {lab_pin.sym} 100 70 0 0 {name=p21 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 100 130 0 0 {name=p22 sig_type=std_logic lab=0}
C {vsource.sym} 250 100 0 0 {name=V2 value=0.3}
C {lab_pin.sym} 250 70 0 0 {name=p23 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 250 130 0 0 {name=p24 sig_type=std_logic lab=0}
C {vsource.sym} 400 100 0 0 {name=V3 value=0}
C {lab_pin.sym} 400 70 0 0 {name=p25 sig_type=std_logic lab=EN_N}
C {lab_pin.sym} 400 130 0 0 {name=p26 sig_type=std_logic lab=0}
C {vsource.sym} 550 100 0 0 {name=V4 value=0.9}
C {lab_pin.sym} 550 70 0 0 {name=p27 sig_type=std_logic lab=ADJ}
C {lab_pin.sym} 550 130 0 0 {name=p28 sig_type=std_logic lab=0}
C {vsource.sym} 660 10 0 0 {name=V5 value="PULSE(0 0.8 200n 0.1n 0.1n 199.9n 400n)"}
C {lab_pin.sym} 660 -20 0 0 {name=p29 sig_type=std_logic lab=b0}
C {lab_pin.sym} 660 40 0 0 {name=p30 sig_type=std_logic lab=0}
C {vsource.sym} 720 180 0 0 {name=V6 value="PULSE(0 0.8 400n 0.1n 0.1n 399.9n 800n)"}
C {lab_pin.sym} 720 150 0 0 {name=p31 sig_type=std_logic lab=b1}
C {lab_pin.sym} 720 210 0 0 {name=p32 sig_type=std_logic lab=0}
C {vsource.sym} 1010 30 0 0 {name=V7 value="PULSE(0 0.8 800n 0.1n 0.1n 799.9n 1600n)"}
C {lab_pin.sym} 1010 0 0 0 {name=p33 sig_type=std_logic lab=b2}
C {lab_pin.sym} 1010 60 0 0 {name=p34 sig_type=std_logic lab=0}
C {vsource.sym} 1080 190 0 0 {name=V8 value="PULSE(0 0.8 1600n 0.1n 0.1n 1599.9n 3200n)"}
C {lab_pin.sym} 1080 160 0 0 {name=p35 sig_type=std_logic lab=b3}
C {lab_pin.sym} 1080 220 0 0 {name=p36 sig_type=std_logic lab=0}
C {vsource.sym} 1300 100 0 0 {name=V9 value="PULSE(0 0.8 3200n 0.1n 0.1n 3199.9n 6400n)"}
C {lab_pin.sym} 1300 70 0 0 {name=p37 sig_type=std_logic lab=b4}
C {lab_pin.sym} 1300 130 0 0 {name=p38 sig_type=std_logic lab=0}
C {vsource.sym} 1420 30 0 0 {name=V10 value="PULSE(0 0.8 6400n 0.1n 0.1n 6399.9n 12800n)"}
C {lab_pin.sym} 1420 0 0 0 {name=p39 sig_type=std_logic lab=b5}
C {lab_pin.sym} 1420 60 0 0 {name=p40 sig_type=std_logic lab=0}
C {vsource.sym} 1600 100 0 0 {name=V11 value="PULSE(0 0.8 12800n 0.1n 0.1n 12799.9n 25600n)"}
C {lab_pin.sym} 1600 70 0 0 {name=p41 sig_type=std_logic lab=b6}
C {lab_pin.sym} 1600 130 0 0 {name=p42 sig_type=std_logic lab=0}
C {vsource.sym} 1730 180 0 0 {name=V12 value="PULSE(0 0.8 25600n 0.1n 0.1n 25599.9n 51200n)"}
C {lab_pin.sym} 1730 150 0 0 {name=p43 sig_type=std_logic lab=b7}
C {lab_pin.sym} 1730 210 0 0 {name=p44 sig_type=std_logic lab=0}
C {code_shown.sym} -300 -760 0 0 {name=s1 only_toplevel=false value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt

.control
save all
tran 1n 51.2u
meas tran tflip when v(DIFFOUT)=0.9 fall=1
let code_est = floor(tflip/200e-9)
print code_est
plot v(DACOUT) v(VIN)
plot v(DACOUT) v(VIN) v(DIFFOUT) xlimit 18e-6 21e-6
.endc
"}
