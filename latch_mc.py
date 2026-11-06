"""Monte Carlo offset of the latch comparator with the sky130 PDK's own threshold-mismatch numbers.
sigma(Vth) = slope / sqrt(W*L)  (W, L in um), slope from sky130_fd_pr models/parameters/invariant.spice for the model bin:
  M1, M2  pfet 2/0.5   slope  = 5.856 mV.um -> 5.86 mV
  M3, M4  pfet 1/0.15  slope1 = 7.356 mV.um -> 19.0 mV
  M5, M6  nfet 0.5/0.15 slope = 3.356 mV.um -> 12.3 mV
Each shift is a voltage source in series with that transistor's gate.  NRUN copies of the latch share one netlist."""
import sys, json, re
import numpy as np
sys.path.insert(0, "/tmp/claude-0/-home-claude/c0d59e56-37f5-5bec-bea7-85999f63d6d2/scratchpad/v2")
from simlib import *

NRUN = int(sys.argv[1]) if len(sys.argv) > 1 else 40
SIG = {1: 5.856 / np.sqrt(2 * 0.5), 2: 5.856 / np.sqrt(2 * 0.5), 3: 7.356 / np.sqrt(1 * 0.15), 4: 7.356 / np.sqrt(1 * 0.15),
       5: 3.356 / np.sqrt(0.5 * 0.15), 6: 3.356 / np.sqrt(0.5 * 0.15)}    # mV
GATE = {1: "INP", 2: "INN", 3: "Y", 4: "X", 5: "Y", 6: "X"}

lib = subckts(netlist("/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/latch_comp.sch"))
blk = re.search(r"^\.subckt latch_comp .*?^\.ends", lib, re.M | re.S)[0]
mc = blk.replace(".subckt latch_comp VDD VSS CLK INP INN OUT OUTB",
                 ".subckt latch_mc VDD VSS CLK INP INN OUT OUTB d1=0 d2=0 d3=0 d4=0 d5=0 d6=0")
for k, g in GATE.items():
    mc, n = re.subn(rf"^(XM{k} \S+) {g} ", rf"\1 g{k} ", mc, flags=re.M)
    assert n == 1, k
    mc = mc.replace("\n.ends", f"\nVOS{k} g{k} {g} {{d{k}}}\n.ends")

rng = np.random.default_rng(2026)
D = rng.standard_normal((NRUN, 6)) * np.array([SIG[k] for k in range(1, 7)]) * 1e-3
D[0] = 0                                   # copy 0 = no mismatch (reference)
TCK, NCYC, SPAN = 5e-9, 100, 0.05          # 200 MHz clock, INP ramps 0.35 -> 0.45 V (1 mV per decision)
T = NCYC * TCK
cir = [MODELS, ".option method=gear reltol=1e-4", lib, mc, "VDD VDD 0 1.8", f"VCLK CLK 0 PULSE(0 1.8 {TCK/2:.3e} 50p 50p {TCK/2-50e-12:.4e} {TCK:.3e})",
       "VINN INN 0 0.4", f"VINP INP 0 PWL(0 {0.4-SPAN} {T:.4e} {0.4+SPAN})"]
for i in range(NRUN):
    cir.append(f"xm{i} VDD 0 CLK INP INN OUT{i} OUTB{i} latch_mc " + " ".join(f"d{k}={D[i, k-1]:.5f}" for k in range(1, 7)))
cir += [".control", f"tran 20p {T:.4e}"]
cir += [f"meas tran v{i} find v(INP) when v(OUT{i})=0.9 rise=1 td={3*TCK:.3e}" for i in range(NRUN)]
cir += [".endc", ".end"]
out = run("\n".join(cir), "latch_mc")
m = meas(out)
os_mV = np.array([(m.get(f"v{i}", np.nan) - 0.4) * 1e3 for i in range(NRUN)])
mm = os_mV[1:] - os_mV[0]                  # offset caused by mismatch (copy 0 removes the ramp-step quantisation bias)
res = dict(nrun=NRUN - 1, nominal_mV=round(float(os_mV[0]), 2), mean_mV=round(float(np.nanmean(mm)), 2),
           sigma_mV=round(float(np.nanstd(mm, ddof=1)), 2), worst_mV=round(float(np.nanmax(np.abs(mm))), 2),
           sigma_input_pair_only_mV=round(float(np.sqrt(2) * SIG[1]), 2), offsets_mV=[round(float(x), 2) for x in mm], err=errors(out))
print(json.dumps({k: v for k, v in res.items() if k != "offsets_mV"}))
json.dump(res, open(f"{SIM}/latch_mc.json", "w"), indent=1)
