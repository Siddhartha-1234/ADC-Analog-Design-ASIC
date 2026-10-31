v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
C {/home/ttuser/Documents/ADCAnalogDesign/flash_adc3.sym} 500 -300 0 0 {name=x1}
C {lab_pin.sym} 400 -350 0 0 {name=p1 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 400 -330 0 0 {name=p2 sig_type=std_logic lab=0}
C {lab_pin.sym} 400 -310 0 0 {name=p3 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 400 -290 0 0 {name=p4 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 400 -270 0 0 {name=p5 sig_type=std_logic lab=EN_N}
C {lab_pin.sym} 400 -250 0 0 {name=p6 sig_type=std_logic lab=ADJ}
C {lab_pin.sym} 600 -320 0 1 {name=p7 sig_type=std_logic lab=D2}
C {lab_pin.sym} 600 -300 0 1 {name=p8 sig_type=std_logic lab=D1}
C {lab_pin.sym} 600 -280 0 1 {name=p9 sig_type=std_logic lab=D0}
C {vsource.sym} 100 100 0 0 {name=V1 value=1.8}
C {lab_pin.sym} 100 70 0 0 {name=p10 sig_type=std_logic lab=VCC}
C {lab_pin.sym} 100 130 0 0 {name=p11 sig_type=std_logic lab=0}
C {vsource.sym} 300 100 0 0 {name=V2 value=0.8}
C {lab_pin.sym} 300 70 0 0 {name=p12 sig_type=std_logic lab=VREF}
C {lab_pin.sym} 300 130 0 0 {name=p13 sig_type=std_logic lab=0}
C {vsource.sym} 500 100 0 0 {name=V3 value=0}
C {lab_pin.sym} 500 70 0 0 {name=p14 sig_type=std_logic lab=EN_N}
C {lab_pin.sym} 500 130 0 0 {name=p15 sig_type=std_logic lab=0}
C {vsource.sym} 700 100 0 0 {name=V4 value=0.9}
C {lab_pin.sym} 700 70 0 0 {name=p16 sig_type=std_logic lab=ADJ}
C {lab_pin.sym} 700 130 0 0 {name=p17 sig_type=std_logic lab=0}
C {vsource.sym} 900 100 0 0 {name=V5 value="PWL(0 0.05 0.99u 0.05 1u 0.15 1.99u 0.15 2u 0.25 2.99u 0.25 3u 0.35 3.99u 0.35 4u 0.45 4.99u 0.45 5u 0.55 5.99u 0.55 6u 0.65 6.99u 0.65 7u 0.75 7.99u 0.75 8u 0 9u 0 25u 0.8 26u 0.8)"}
C {lab_pin.sym} 900 70 0 0 {name=p18 sig_type=std_logic lab=VIN}
C {lab_pin.sym} 900 130 0 0 {name=p19 sig_type=std_logic lab=0}
C {code_shown.sym} -300 -760 0 0 {name=s1 only_toplevel=false value="
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt

.control
save all
tran 2n 26u
* digital code from the three output bits (bit = 1 when its voltage is above 0.9 V)
let code = 4*ceil((v(D2)-0.9)/10) + 2*ceil((v(D1)-0.9)/10) + ceil((v(D0)-0.9)/10)
* ramp phase (second rise of each thermometer line): VIN at which each comparator trips
meas tran vth1 find v(VIN) when v(x1.T1)=0.9 rise=2
meas tran vth2 find v(VIN) when v(x1.T2)=0.9 rise=2
meas tran vth3 find v(VIN) when v(x1.T3)=0.9 rise=2
meas tran vth4 find v(VIN) when v(x1.T4)=0.9 rise=2
meas tran vth5 find v(VIN) when v(x1.T5)=0.9 rise=2
meas tran vth6 find v(VIN) when v(x1.T6)=0.9 rise=2
meas tran vth7 find v(VIN) when v(x1.T7)=0.9 rise=2
plot code v(VIN)
plot v(x1.T1) v(x1.T2)+2 v(x1.T3)+4 v(x1.T4)+6 v(x1.T5)+8 v(x1.T6)+10 v(x1.T7)+12
plot v(D2) v(D1)+2 v(D0)+4
.endc
"}
