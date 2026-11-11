v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {TB_SAR6_v3s (area-reduced sar_adc6_v3s, 2 x 2 um units, stacked replica): 6-bit SAR (6-bit version of the final v3: top-plate sampling, Vcm-based switching, latch comparator).  175 ns per conversion:
SMP (VIN sampled on VX, VCM on VR, 0-20 ns) -> then one 25 ns cycle per bit: Ck (decide Dk, 4 ns) -> Uk (move bit k's capacitor, 5 ns), k = 5 ... 1 -> C0 (decide D0).
CLK (comparator clock) pulses together with C5 ... C0.  Every time can be scaled by the same factor (tested down to 0.2x).
VIN steps through the centre of every code: (k + 0.5) x 12.5 mV, k = 0 ... 63 -> expected codes 0 ... 63.  The control block prints every code and counts wrong ones.
Energy per conversion = energy from VCC + VREF + VCM / 64 (energy taken from VIN printed separately).} 290 -630 0 0 0.3 0.3 {}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/sar_adc6_v3s.sym} 500 -350 0 0 {name=x1}
N 390 -520 370 -520 {}
C {lab_pin.sym} 370 -520 0 0 {name=l1 sig_type=std_logic lab=VCC}
N 390 -500 370 -500 {}
C {lab_pin.sym} 370 -500 0 0 {name=l2 sig_type=std_logic lab=0}
N 390 -480 370 -480 {}
C {lab_pin.sym} 370 -480 0 0 {name=l3 sig_type=std_logic lab=VREF}
N 390 -460 370 -460 {}
C {lab_pin.sym} 370 -460 0 0 {name=l4 sig_type=std_logic lab=VCM}
N 390 -440 370 -440 {}
C {lab_pin.sym} 370 -440 0 0 {name=l5 sig_type=std_logic lab=VIN}
N 390 -420 370 -420 {}
C {lab_pin.sym} 370 -420 0 0 {name=l6 sig_type=std_logic lab=SMP}
N 390 -400 370 -400 {}
C {lab_pin.sym} 370 -400 0 0 {name=l7 sig_type=std_logic lab=CLK}
N 390 -380 370 -380 {}
C {lab_pin.sym} 370 -380 0 0 {name=l8 sig_type=std_logic lab=C5}
N 390 -360 370 -360 {}
C {lab_pin.sym} 370 -360 0 0 {name=l9 sig_type=std_logic lab=U5}
N 390 -340 370 -340 {}
C {lab_pin.sym} 370 -340 0 0 {name=l10 sig_type=std_logic lab=C4}
N 390 -320 370 -320 {}
C {lab_pin.sym} 370 -320 0 0 {name=l11 sig_type=std_logic lab=U4}
N 390 -300 370 -300 {}
C {lab_pin.sym} 370 -300 0 0 {name=l12 sig_type=std_logic lab=C3}
N 390 -280 370 -280 {}
C {lab_pin.sym} 370 -280 0 0 {name=l13 sig_type=std_logic lab=U3}
N 390 -260 370 -260 {}
C {lab_pin.sym} 370 -260 0 0 {name=l14 sig_type=std_logic lab=C2}
N 390 -240 370 -240 {}
C {lab_pin.sym} 370 -240 0 0 {name=l15 sig_type=std_logic lab=U2}
N 390 -220 370 -220 {}
C {lab_pin.sym} 370 -220 0 0 {name=l16 sig_type=std_logic lab=C1}
N 390 -200 370 -200 {}
C {lab_pin.sym} 370 -200 0 0 {name=l17 sig_type=std_logic lab=U1}
N 390 -180 370 -180 {}
C {lab_pin.sym} 370 -180 0 0 {name=l18 sig_type=std_logic lab=C0}
N 610 -520 630 -520 {}
C {lab_pin.sym} 630 -520 0 1 {name=l19 sig_type=std_logic lab=D5}
N 610 -500 630 -500 {}
C {lab_pin.sym} 630 -500 0 1 {name=l20 sig_type=std_logic lab=D4}
N 610 -480 630 -480 {}
C {lab_pin.sym} 630 -480 0 1 {name=l21 sig_type=std_logic lab=D3}
N 610 -460 630 -460 {}
C {lab_pin.sym} 630 -460 0 1 {name=l22 sig_type=std_logic lab=D2}
N 610 -440 630 -440 {}
C {lab_pin.sym} 630 -440 0 1 {name=l23 sig_type=std_logic lab=D1}
N 610 -420 630 -420 {}
C {lab_pin.sym} 630 -420 0 1 {name=l24 sig_type=std_logic lab=D0}
C {vsource.sym} -300 200 0 0 {name=V1 value="1.8" savecurrent=false}
N -300 170 -300 150 {}
C {lab_pin.sym} -300 150 0 0 {name=l25 sig_type=std_logic lab=VCC}
N -300 230 -300 250 {}
C {lab_pin.sym} -300 250 0 0 {name=l26 sig_type=std_logic lab=0}
C {vsource.sym} -130 200 0 0 {name=V2 value="0.8" savecurrent=false}
N -130 170 -130 150 {}
C {lab_pin.sym} -130 150 0 0 {name=l27 sig_type=std_logic lab=VREF}
N -130 230 -130 250 {}
C {lab_pin.sym} -130 250 0 0 {name=l28 sig_type=std_logic lab=0}
C {vsource.sym} 40 200 0 0 {name=V3 value="0.4" savecurrent=false}
N 40 170 40 150 {}
C {lab_pin.sym} 40 150 0 0 {name=l29 sig_type=std_logic lab=VCM}
N 40 230 40 250 {}
C {lab_pin.sym} 40 250 0 0 {name=l30 sig_type=std_logic lab=0}
C {vsource.sym} 210 200 0 0 {name=V5 value="PWL(0 0.00625 177n 0.00625 177.5n 0.01875 352n 0.01875 352.5n 0.03125 527n 0.03125 527.5n 0.04375 702n 0.04375 702.5n 0.05625 877n 0.05625 877.5n 0.06875 1052n 0.06875 1052.5n 0.08125 1227n 0.08125 1227.5n 0.09375 1402n 0.09375 1402.5n 0.10625 1577n 0.10625 1577.5n 0.11875 1752n 0.11875 1752.5n 0.13125 1927n 0.13125 1927.5n 0.14375 2102n 0.14375 2102.5n 0.15625 2277n 0.15625 2277.5n 0.16875 2452n 0.16875 2452.5n 0.18125 2627n 0.18125 2627.5n 0.19375 2802n 0.19375 2802.5n 0.20625 2977n 0.20625 2977.5n 0.21875 3152n 0.21875 3152.5n 0.23125 3327n 0.23125 3327.5n 0.24375 3502n 0.24375 3502.5n 0.25625 3677n 0.25625 3677.5n 0.26875 3852n 0.26875 3852.5n 0.28125 4027n 0.28125 4027.5n 0.29375 4202n 0.29375 4202.5n 0.30625 4377n 0.30625 4377.5n 0.31875 4552n 0.31875 4552.5n 0.33125 4727n 0.33125 4727.5n 0.34375 4902n 0.34375 4902.5n 0.35625 5077n 0.35625 5077.5n 0.36875 5252n 0.36875 5252.5n 0.38125 5427n 0.38125 5427.5n 0.39375 5602n 0.39375 5602.5n 0.40625 5777n 0.40625 5777.5n 0.41875 5952n 0.41875 5952.5n 0.43125 6127n 0.43125 6127.5n 0.44375 6302n 0.44375 6302.5n 0.45625 6477n 0.45625 6477.5n 0.46875 6652n 0.46875 6652.5n 0.48125 6827n 0.48125 6827.5n 0.49375 7002n 0.49375 7002.5n 0.50625 7177n 0.50625 7177.5n 0.51875 7352n 0.51875 7352.5n 0.53125 7527n 0.53125 7527.5n 0.54375 7702n 0.54375 7702.5n 0.55625 7877n 0.55625 7877.5n 0.56875 8052n 0.56875 8052.5n 0.58125 8227n 0.58125 8227.5n 0.59375 8402n 0.59375 8402.5n 0.60625 8577n 0.60625 8577.5n 0.61875 8752n 0.61875 8752.5n 0.63125 8927n 0.63125 8927.5n 0.64375 9102n 0.64375 9102.5n 0.65625 9277n 0.65625 9277.5n 0.66875 9452n 0.66875 9452.5n 0.68125 9627n 0.68125 9627.5n 0.69375 9802n 0.69375 9802.5n 0.70625 9977n 0.70625 9977.5n 0.71875 10152n 0.71875 10152.5n 0.73125 10327n 0.73125 10327.5n 0.74375 10502n 0.74375 10502.5n 0.75625 10677n 0.75625 10677.5n 0.76875 10852n 0.76875 10852.5n 0.78125 11027n 0.78125 11027.5n 0.79375)" savecurrent=false}
N 210 170 210 150 {}
C {lab_pin.sym} 210 150 0 0 {name=l31 sig_type=std_logic lab=VIN}
N 210 230 210 250 {}
C {lab_pin.sym} 210 250 0 0 {name=l32 sig_type=std_logic lab=0}
C {vsource.sym} 380 200 0 0 {name=V4 value="PWL(0 0 24n 0 24.1n 1.8 28n 1.8 28.1n 0 49n 0 49.1n 1.8 53n 1.8 53.1n 0 74n 0 74.1n 1.8 78n 1.8 78.1n 0 99n 0 99.1n 1.8 103n 1.8 103.1n 0 124n 0 124.1n 1.8 128n 1.8 128.1n 0 149n 0 149.1n 1.8 153n 1.8 153.1n 0 175n 0) r=0" savecurrent=false}
N 380 170 380 150 {}
C {lab_pin.sym} 380 150 0 0 {name=l33 sig_type=std_logic lab=CLK}
N 380 230 380 250 {}
C {lab_pin.sym} 380 250 0 0 {name=l34 sig_type=std_logic lab=0}
C {vsource.sym} 550 200 0 0 {name=V6 value="PULSE(0 1.8 0n 0.1n 0.1n 19.9n 175n)" savecurrent=false}
N 550 170 550 150 {}
C {lab_pin.sym} 550 150 0 0 {name=l35 sig_type=std_logic lab=SMP}
N 550 230 550 250 {}
C {lab_pin.sym} 550 250 0 0 {name=l36 sig_type=std_logic lab=0}
C {vsource.sym} 720 200 0 0 {name=V7 value="PULSE(0 1.8 24n 0.1n 0.1n 3.9n 175n)" savecurrent=false}
N 720 170 720 150 {}
C {lab_pin.sym} 720 150 0 0 {name=l37 sig_type=std_logic lab=C5}
N 720 230 720 250 {}
C {lab_pin.sym} 720 250 0 0 {name=l38 sig_type=std_logic lab=0}
C {vsource.sym} 890 200 0 0 {name=V8 value="PULSE(0 1.8 30n 0.1n 0.1n 4.9n 175n)" savecurrent=false}
N 890 170 890 150 {}
C {lab_pin.sym} 890 150 0 0 {name=l39 sig_type=std_logic lab=U5}
N 890 230 890 250 {}
C {lab_pin.sym} 890 250 0 0 {name=l40 sig_type=std_logic lab=0}
C {vsource.sym} -300 420 0 0 {name=V9 value="PULSE(0 1.8 49n 0.1n 0.1n 3.9n 175n)" savecurrent=false}
N -300 390 -300 370 {}
C {lab_pin.sym} -300 370 0 0 {name=l41 sig_type=std_logic lab=C4}
N -300 450 -300 470 {}
C {lab_pin.sym} -300 470 0 0 {name=l42 sig_type=std_logic lab=0}
C {vsource.sym} -130 420 0 0 {name=V10 value="PULSE(0 1.8 55n 0.1n 0.1n 4.9n 175n)" savecurrent=false}
N -130 390 -130 370 {}
C {lab_pin.sym} -130 370 0 0 {name=l43 sig_type=std_logic lab=U4}
N -130 450 -130 470 {}
C {lab_pin.sym} -130 470 0 0 {name=l44 sig_type=std_logic lab=0}
C {vsource.sym} 40 420 0 0 {name=V11 value="PULSE(0 1.8 74n 0.1n 0.1n 3.9n 175n)" savecurrent=false}
N 40 390 40 370 {}
C {lab_pin.sym} 40 370 0 0 {name=l45 sig_type=std_logic lab=C3}
N 40 450 40 470 {}
C {lab_pin.sym} 40 470 0 0 {name=l46 sig_type=std_logic lab=0}
C {vsource.sym} 210 420 0 0 {name=V12 value="PULSE(0 1.8 80n 0.1n 0.1n 4.9n 175n)" savecurrent=false}
N 210 390 210 370 {}
C {lab_pin.sym} 210 370 0 0 {name=l47 sig_type=std_logic lab=U3}
N 210 450 210 470 {}
C {lab_pin.sym} 210 470 0 0 {name=l48 sig_type=std_logic lab=0}
C {vsource.sym} 380 420 0 0 {name=V13 value="PULSE(0 1.8 99n 0.1n 0.1n 3.9n 175n)" savecurrent=false}
N 380 390 380 370 {}
C {lab_pin.sym} 380 370 0 0 {name=l49 sig_type=std_logic lab=C2}
N 380 450 380 470 {}
C {lab_pin.sym} 380 470 0 0 {name=l50 sig_type=std_logic lab=0}
C {vsource.sym} 550 420 0 0 {name=V14 value="PULSE(0 1.8 105n 0.1n 0.1n 4.9n 175n)" savecurrent=false}
N 550 390 550 370 {}
C {lab_pin.sym} 550 370 0 0 {name=l51 sig_type=std_logic lab=U2}
N 550 450 550 470 {}
C {lab_pin.sym} 550 470 0 0 {name=l52 sig_type=std_logic lab=0}
C {vsource.sym} 720 420 0 0 {name=V15 value="PULSE(0 1.8 124n 0.1n 0.1n 3.9n 175n)" savecurrent=false}
N 720 390 720 370 {}
C {lab_pin.sym} 720 370 0 0 {name=l53 sig_type=std_logic lab=C1}
N 720 450 720 470 {}
C {lab_pin.sym} 720 470 0 0 {name=l54 sig_type=std_logic lab=0}
C {vsource.sym} 890 420 0 0 {name=V16 value="PULSE(0 1.8 130n 0.1n 0.1n 4.9n 175n)" savecurrent=false}
N 890 390 890 370 {}
C {lab_pin.sym} 890 370 0 0 {name=l55 sig_type=std_logic lab=U1}
N 890 450 890 470 {}
C {lab_pin.sym} 890 470 0 0 {name=l56 sig_type=std_logic lab=0}
C {vsource.sym} -300 640 0 0 {name=V17 value="PULSE(0 1.8 149n 0.1n 0.1n 3.9n 175n)" savecurrent=false}
N -300 610 -300 590 {}
C {lab_pin.sym} -300 590 0 0 {name=l57 sig_type=std_logic lab=C0}
N -300 670 -300 690 {}
C {lab_pin.sym} -300 690 0 0 {name=l58 sig_type=std_logic lab=0}
C {code_shown.sym} -900 -1050 0 0 {name=s1 only_toplevel=false value=".lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.option method=gear reltol=1e-4
.control
save all
tran 0.05n 11200n
let code = 0*v(D0)
let code = code + 32*ceil((v(D5)-0.9)/10)
let code = code + 16*ceil((v(D4)-0.9)/10)
let code = code + 8*ceil((v(D3)-0.9)/10)
let code = code + 4*ceil((v(D2)-0.9)/10)
let code = code + 2*ceil((v(D1)-0.9)/10)
let code = code + 1*ceil((v(D0)-0.9)/10)
let nwrong = 0
let k = 0
while k < 64
  let tr = k*175e-9 + 165e-9
  meas tran ck find code at=$&tr
  print k ck
  if abs(ck - k) > 0.5
    let nwrong = nwrong + 1
  end
  let k = k + 1
end
print nwrong
let ptot = 1.8*(-i(V1)) + 0.8*(-i(V2)) + 0.4*(-i(V3))
let pin = v(VIN)*(-i(V5))
meas tran etot integ ptot from=0 to=11200n
meas tran ein integ pin from=0 to=11200n
let e_conv_pJ = etot/64*1e12
let e_from_vin_pJ = ein/64*1e12
let p_uW = etot/11200e-9*1e6
print e_conv_pJ p_uW e_from_vin_pJ
plot v(VIN) v(x1.VX) v(x1.VR)
plot v(SMP) v(CLK)+2 v(x1.COM)+4
plot v(x1.x2.BP5) v(x1.x2.BP4) v(x1.x2.BP3) v(x1.x2.BP2) v(x1.x2.BP1)
plot v(D5)+0 v(D4)+2 v(D3)+4 v(D2)+6 v(D1)+8 v(D0)+10
plot code
.endc"}
