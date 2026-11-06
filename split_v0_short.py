"""Energy breakdown of the original SAR from 4 conversions (comparator and logic on their own 1.8 V supplies)."""
import sys, json
sys.path.insert(0, "/tmp/claude-0/-home-claude/c0d59e56-37f5-5bec-bea7-85999f63d6d2/scratchpad/v2")
import simlib, test_tryde
simlib.ORDER[:] = [0.025, 0.775, 0.375, 0.425]
test_tryde.ORDER[:] = simlib.ORDER
test_tryde.EXP = [0, 7, 3, 4]
r = test_tryde.run_tryde("/home/ttuser/Documents/ADCAnalogDesign/sar_adc3.sch", "sar_adc3", 1.0, "v0split4",
                         split={"x1": "VCMP", "x4": "VLOG"})
print({k: r[k] for k in ("ok", "codes", "E_vcc_pJ", "E_ref_pJ", "E_tot_pJ", "split_pJ")}, flush=True)
json.dump(r, open(f"{simlib.SIM}/split_v0_short.json", "w"), indent=1)
