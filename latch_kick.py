"""Effective offset of the latch comparator when INP is a floating capacitor (like the SAR top plate VX)
and INN is a stiff reference (VCM).  Kickback during evaluation then lands on INP only.
Each copy k: INP_k is precharged to 0.4 + delta_k through a switch that opens at 3 ns; first CLK edge at 5 ns."""
import sys, json
import numpy as np
sys.path.insert(0, "/tmp/claude-0/-home-claude/c0d59e56-37f5-5bec-bea7-85999f63d6d2/scratchpad/v2")
from simlib import *

OPT = ".option method=gear reltol=1e-4\n"
LIB = subckts(netlist("/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/latch_comp.sch"))
DEL = np.round(np.arange(-30, 30.1, 2) * 1e-3, 4)


def eff_offset(cfl, tag, replica=False):
    cir = [MODELS, OPT, LIB, "VDD VDD 0 1.8", "VCLK CLK 0 PULSE(0 1.8 5n 50p 50p 4.95n 10n)", "VINN INN 0 0.4",
           "VSW SWC 0 PWL(0 1.8 3n 1.8 3.1n 0)", ".model swm sw vt=0.9 vh=0.01 ron=100 roff=1e15"]
    for k, d in enumerate(DEL):
        if cfl is None:     # reference: INP driven by an ideal source
            cir.append(f"VP{k} INP{k} 0 {0.4 + d:.4f}")
        else:
            cir += [f"VP{k} PRE{k} 0 {0.4 + d:.4f}", f"S{k} PRE{k} INP{k} SWC 0 swm", f"C{k} INP{k} 0 {cfl}"]
        if replica:         # INN is also a floating capacitor, precharged to 0.4 V (the replica node of the final SAR)
            cir += [f"SN{k} INN INN{k} SWC 0 swm", f"CN{k} INN{k} 0 {cfl}"]
            cir.append(f"x{k} VDD 0 CLK INP{k} INN{k} OUT{k} OUTB{k} latch_comp")
        else:
            cir.append(f"x{k} VDD 0 CLK INP{k} INN OUT{k} OUTB{k} latch_comp")
    cir += [".control", "tran 10p 9.8n"]
    for k in range(len(DEL)):
        cir += [f"meas tran o{k} find v(OUT{k}) at=9.7n", f"meas tran pk{k} max v(INP{k}) from=4.9n to=6n",
                f"meas tran v0{k} find v(INP{k}) at=4.9n", f"meas tran vend{k} find v(INP{k}) at=9.7n"]
    cir += [".endc", ".end"]
    out = run("\n".join(cir), tag)
    m = meas(out)
    dec = [m.get(f"o{k}", np.nan) > 0.9 for k in range(len(DEL))]
    flip = [DEL[k] for k in range(1, len(DEL)) if dec[k] and not dec[k - 1]]
    kick = [m.get(f"pk{k}", np.nan) - m.get(f"v0{k}", np.nan) for k in range(len(DEL))]
    step = [m.get(f"vend{k}", np.nan) - m.get(f"v0{k}", np.nan) for k in range(len(DEL))]
    f = flip[0] if flip else None
    return dict(flip_between_mV=[round((f - 0.002) * 1e3, 1), round(f * 1e3, 1)] if flip else None,
                decisions=[int(x) for x in dec], kick_peak_mV=round(float(np.nanmean(kick)) * 1e3, 2),
                net_step_after_decision_mV=round(float(np.nanmean(step)) * 1e3, 2), err=errors(out)[:3])


res = {}
for cfl, name, rep in ((None, "ideal_source", False), (160e-15, "floating_160fF", False), (80e-15, "floating_80fF", False),
                       (160e-15, "floating_160fF_with_replica", True)):
    res[name] = eff_offset(cfl, "kick_" + name, rep)
    print(name, res[name], flush=True)
json.dump(res, open(f"{SIM}/latch_kick.json", "w"), indent=1)
