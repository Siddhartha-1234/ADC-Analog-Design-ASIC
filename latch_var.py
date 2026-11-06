"""Compare latch sizings: decision time, energy per decision, kickback on a floating 160 fF input."""
import sys, json
import numpy as np
sys.path.insert(0, "/tmp/claude-0/-home-claude/c0d59e56-37f5-5bec-bea7-85999f63d6d2/scratchpad/v2")
from simlib import *
import gen_latch

OPT = ".option method=gear reltol=1e-4\n"
VAR = {"A_4um": dict(tail=4, win=4, lin=0.5, wp=2, wn=1),
       "B_2um": dict(tail=2, win=2, lin=0.5, wp=1, wn=0.5),
       "C_1um": dict(tail=1, win=1, lin=0.5, wp=1, wn=0.5)}
TCK = 10e-9
CLK = f"PULSE(0 1.8 {TCK/2:.3e} 50p 50p {TCK/2-50e-12:.4e} {TCK:.3e})"
res = {}
for name, sz in VAR.items():
    d = f"{S}/v2/var/{name}"
    gen_latch.latch_comp("latch_comp", sz, d)
    lib = subckts(netlist(f"{d}/latch_comp.sch"))
    r = {}
    # delay + energy, 10 mV overdrive, 10 cycles
    ncyc = 10
    cir = [MODELS, OPT, lib, "VDD VDD 0 1.8", f"VCLK CLK 0 {CLK}", "VINN INN 0 0.4", "VINP INP 0 0.41",
           "x1 VDD 0 CLK INP INN OUT OUTB latch_comp", ".control", f"tran 5p {ncyc*TCK:.4e}",
           "meas tran tck when v(CLK)=0.9 rise=5", "meas tran ty when v(x1.Y)=0.9 rise=5",
           "let p = 1.8*(-i(VDD))", f"meas tran e9 integ p from={TCK/2:.3e} to={TCK/2 + 9*TCK:.4e}", ".endc", ".end"]
    m = meas(run("\n".join(cir), f"var_dly_{name}"))
    r["t_decide_ps_10mV"] = round((m.get("ty", np.nan) - m.get("tck", np.nan)) * 1e12, 1)
    r["E_per_decision_fJ"] = round(m.get("e9", np.nan) / 9 * 1e15, 1)
    # kick on a floating 160 fF input (precharged 0.41 V, switch opens at 3 ns), one decision at 5 ns
    cir = [MODELS, OPT, lib, "VDD VDD 0 1.8", "VCLK CLK 0 PULSE(0 1.8 5n 50p 50p 4.95n 10n)", "VINN INN 0 0.4",
           "VSW SWC 0 PWL(0 1.8 3n 1.8 3.1n 0)", ".model swm sw vt=0.9 vh=0.01 ron=100 roff=1e15",
           "VP PRE 0 0.41", "S1 PRE INP SWC 0 swm", "C1 INP 0 160f", "x1 VDD 0 CLK INP INN OUT OUTB latch_comp",
           ".control", "tran 10p 19.8n", "meas tran v0 find v(INP) at=4.9n", "meas tran pk max v(INP) from=4.9n to=9.9n",
           "meas tran vr find v(INP) at=19.7n", ".endc", ".end"]
    m = meas(run("\n".join(cir), f"var_kick_{name}"))
    r["kick_peak_mV_160fF"] = round((m.get("pk", np.nan) - m.get("v0", np.nan)) * 1e3, 2)
    r["kick_left_after_reset_mV"] = round((m.get("vr", np.nan) - m.get("v0", np.nan)) * 1e3, 2)
    r["sigma_offset_input_pair_mV"] = round(np.sqrt(2) * 5.856 / np.sqrt(sz["win"] * sz["lin"]), 2)
    res[name] = r
    print(name, r, flush=True)
json.dump(res, open(f"{SIM}/latch_var.json", "w"), indent=1)
