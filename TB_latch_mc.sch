v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
T {TB_latch_mc: Monte Carlo offset of the latch comparator (sky130 mismatch models, corner tt_mm), same method as montecarloFlash.sch.
Every run: CLK = 200 MHz, INN = 0.4 V, INP ramps 0.35 -> 0.45 V in 500 ns (1 mV per decision); offset = INP where OUT first rises - 0.4 V.
Results go to mc_latch.txt (one offset in mV per run).  My estimate with the PDK mismatch numbers: sigma ~10 mV.} -400 -1000 0 0 0.3 0.3 {}
C {/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/latch_comp.sym} 500 -350 0 0 {name=x1}
N 400 -390 380 -390 {}
C {lab_pin.sym} 380 -390 0 0 {name=l1 sig_type=std_logic lab=VDD}
N 400 -370 380 -370 {}
C {lab_pin.sym} 380 -370 0 0 {name=l2 sig_type=std_logic lab=0}
N 400 -350 380 -350 {}
C {lab_pin.sym} 380 -350 0 0 {name=l3 sig_type=std_logic lab=CLK}
N 400 -330 380 -330 {}
C {lab_pin.sym} 380 -330 0 0 {name=l4 sig_type=std_logic lab=INP}
N 400 -310 380 -310 {}
C {lab_pin.sym} 380 -310 0 0 {name=l5 sig_type=std_logic lab=INN}
N 600 -390 620 -390 {}
C {lab_pin.sym} 620 -390 0 1 {name=l6 sig_type=std_logic lab=OUT}
N 600 -370 620 -370 {}
C {lab_pin.sym} 620 -370 0 1 {name=l7 sig_type=std_logic lab=OUTB}
C {vsource.sym} -300 200 0 0 {name=V1 value="1.8" savecurrent=false}
N -300 170 -300 150 {}
C {lab_pin.sym} -300 150 0 0 {name=l8 sig_type=std_logic lab=VDD}
N -300 230 -300 250 {}
C {lab_pin.sym} -300 250 0 0 {name=l9 sig_type=std_logic lab=0}
C {vsource.sym} -130 200 0 0 {name=V3 value="PULSE(0 1.8 2.5n 50p 50p 2.45n 5n)" savecurrent=false}
N -130 170 -130 150 {}
C {lab_pin.sym} -130 150 0 0 {name=l10 sig_type=std_logic lab=CLK}
N -130 230 -130 250 {}
C {lab_pin.sym} -130 250 0 0 {name=l11 sig_type=std_logic lab=0}
C {vsource.sym} 40 200 0 0 {name=V4 value="0.4" savecurrent=false}
N 40 170 40 150 {}
C {lab_pin.sym} 40 150 0 0 {name=l12 sig_type=std_logic lab=INN}
N 40 230 40 250 {}
C {lab_pin.sym} 40 250 0 0 {name=l13 sig_type=std_logic lab=0}
C {vsource.sym} 210 200 0 0 {name=V5 value="PWL(0 0.35 500n 0.45)" savecurrent=false}
N 210 170 210 150 {}
C {lab_pin.sym} 210 150 0 0 {name=l14 sig_type=std_logic lab=INP}
N 210 230 210 250 {}
C {lab_pin.sym} 210 250 0 0 {name=l15 sig_type=std_logic lab=0}
C {code_shown.sym} -900 -950 0 0 {name=s1 only_toplevel=false value=".lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt_mm
.option method=gear reltol=1e-4
.control
  setseed 42
  let mc_runs = 50
  let run = 0
  setplot new
  set scratch = $curplot
  let os = unitvec(mc_runs)
  dowhile run < mc_runs
    reset
    tran 20p 500n
    meas tran vt find v(INP) when v(OUT)=0.9 rise=1 td=15n
    let \{$scratch\}.os[run] = (vt - 0.4)*1000
    let run = run + 1
  end
  setplot $scratch
  let avg = mean(os)
  let sd = sqrt(mean((os - avg)^2))
  print avg sd
  set width=200
  print os > mc_latch.txt
.endc"}
