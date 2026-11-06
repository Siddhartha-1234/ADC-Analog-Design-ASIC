"""Characterise the latch comparator: trip point vs common mode, delay vs overdrive, energy per decision,
kickback onto a floating input, and mismatch offset (Monte Carlo with Pelgrom Vth shifts)."""
import sys, json, re
import numpy as np
sys.path.insert(0, "/tmp/claude-0/-home-claude/c0d59e56-37f5-5bec-bea7-85999f63d6d2/scratchpad/v2")
from simlib import *

SCH = "/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/latch_comp.sch"
LIB = subckts(netlist(SCH))
OPT = ".option method=gear reltol=1e-4"   # avoids "timestep too small" at the clock edges
TCK = 10e-9      # 100 MHz clock
CLK = f"PULSE(0 1.8 {TCK/2:.3e} 50p 50p {TCK/2-50e-12:.4e} {TCK:.3e})"
res = {}


def ramp_trip(vcm, span=0.015, ncyc=150, lib=LIB, tag="trip"):
    T = ncyc * TCK
    cir = [MODELS, OPT, lib, "VDD VDD 0 1.8", f"VCLK CLK 0 {CLK}", f"VINN INN 0 {vcm}",
           f"VINP INP 0 PWL(0 {vcm-span} {T:.4e} {vcm+span})",
           "x1 VDD 0 CLK INP INN OUT OUTB latch_comp",
           ".control", f"tran 20p {T:.4e}", f"meas tran vtrip find v(INP) when v(OUT)=0.9 rise=1 td={3*TCK:.3e}", ".endc", ".end"]
    m = meas(run("\n".join(cir), tag))
    return m.get("vtrip", float("nan")) - vcm


# 1. trip point (systematic offset) vs input common mode
res["offset_vs_cm_mV"] = {}
for vcm in (0.05, 0.1, 0.2, 0.4, 0.6, 0.8):
    res["offset_vs_cm_mV"][vcm] = round(ramp_trip(vcm) * 1e3, 2)
print("offset vs CM (mV):", res["offset_vs_cm_mV"], flush=True)

# 2. delay vs overdrive and 3. energy per decision (VCM = 0.4 V)
res["delay"] = {}
for od in (0.001, 0.005, 0.01, 0.05, 0.1, 0.3):
    ncyc = 10
    T = ncyc * TCK
    cir = [MODELS, OPT, LIB, "VDD VDD 0 1.8", f"VCLK CLK 0 {CLK}", "VINN INN 0 0.4", f"VINP INP 0 {0.4+od}",
           "x1 VDD 0 CLK INP INN OUT OUTB latch_comp",
           ".control", f"tran 5p {T:.4e}",
           # 5th clock edge: decision time = Y crossing VDD/2 after CLK crosses VDD/2
           f"meas tran tck when v(CLK)=0.9 rise=5", "meas tran ty when v(x1.Y)=0.9 rise=5",
           "meas tran tout when v(OUT)=0.9 rise=1",
           "let p = 1.8*(-i(VDD))", f"meas tran e10 integ p from={TCK/2:.3e} to={TCK/2+ncyc*TCK - TCK:.4e}",
           ".endc", ".end"]
    m = meas(run("\n".join(cir), f"dly_{od}"))
    res["delay"][od] = dict(t_decide_ps=round((m.get("ty", np.nan) - m.get("tck", np.nan)) * 1e12, 1),
                            E_per_decision_fJ=round(m.get("e10", np.nan) / (ncyc - 1) * 1e15, 1))
    print("od", od, res["delay"][od], flush=True)

json.dump(res, open(f"{SIM}/latch_char.json", "w"), indent=1)
