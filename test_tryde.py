"""Test SAR versions that use the RST/TRY/DEC phase interface (baseline, step 1):
16 inputs a quarter LSB from a threshold, all phases scaled by 'scale' (1 = the original 2 us conversion)."""
import sys, json
sys.path.insert(0, "/tmp/claude-0/-home-claude/c0d59e56-37f5-5bec-bea7-85999f63d6d2/scratchpad/v2")
from simlib import *

BASE = "/home/ttuser/Documents/ADCAnalogDesign"


def run_tryde(sch, top, sc, tag, adj=0.75, save=None, split=None):
    lib = subckts(netlist(sch))
    nets = []
    if split:
        lib, nets = split_supply(lib, top, split)
    P = 2000e-9 * sc
    N = len(ORDER)
    T = N * P
    s = lambda t: t * sc
    cir = [MODELS, lib,
           "V1 VCC 0 1.8", "V2 VREF 0 0.8", "V3 EN_N 0 0", f"V4 ADJ 0 {adj}",
           f"V5 VIN 0 {pwl_steps(ORDER, P, s(15e-9))}",
           f"V6 RST 0 PULSE(1.8 0 {s(100e-9):.4e} 0.1n 0.1n {P - s(100e-9) - 0.2e-9:.4e} {P:.4e})",
           f"V7 TRY2 0 {pulse(s(150e-9), s(250e-9), P)}", f"V8 DEC2 0 {pulse(s(450e-9), s(100e-9), P)}",
           f"V9 TRY1 0 {pulse(s(600e-9), s(250e-9), P)}", f"V10 DEC1 0 {pulse(s(900e-9), s(100e-9), P)}",
           f"V11 TRY0 0 {pulse(s(1050e-9), s(250e-9), P)}", f"V12 DEC0 0 {pulse(s(1350e-9), s(100e-9), P)}",
           *[f"V_{n} {n} 0 1.8" for n in nets],
           f"x1 VCC 0 VREF VIN EN_N ADJ RST TRY2 DEC2 TRY1 DEC1 TRY0 DEC0 D2 D1 D0 " + " ".join(nets) + f" {top}",
           ".control", "set noaskquit", f"tran {min(0.1e-9, P/4000):.3e} {T:.4e}", CODE,
           "let pvcc = 1.8*(-i(V1))", "let pref = 0.8*(-i(V2))", "let padj = 0.75*(-i(V4))",
           f"meas tran e_vcc integ pvcc from=0 to={T:.4e}", f"meas tran e_ref integ pref from=0 to={T:.4e}",
           f"meas tran e_adj integ padj from=0 to={T:.4e}"]
    for i in range(N):
        cir.append(f"meas tran c{i} find code at={i * P + s(1600e-9):.4e}")
    for n in nets:
        cir += [f"let p_{n.lower()} = 1.8*(-i(V_{n}))", f"meas tran e_{n.lower()} integ p_{n.lower()} from=0 to={T:.4e}"]
    if save:
        cir.append(f"wrdata {save} v(VIN) v(x1.REF) v(x1.COM) v(D2) v(D1) v(D0) code pvcc pref")
    cir += [".endc", ".end"]
    out = run("\n".join(cir), f"{tag}_{sc}")
    m = meas(out)
    codes = [round(m.get(f"c{i}", -9)) for i in range(N)]
    e = {k: m.get(k, float("nan")) / N for k in ("e_vcc", "e_ref", "e_adj")}
    res = dict(scale=sc, conv_time=P, ok=codes == EXP, nwrong=sum(a != b for a, b in zip(codes, EXP)), codes=codes,
               E_vcc_pJ=e["e_vcc"] * 1e12, E_ref_pJ=e["e_ref"] * 1e12, E_tot_pJ=(e["e_vcc"] + e["e_ref"] + e["e_adj"]) * 1e12,
               P_uW=(e["e_vcc"] + e["e_ref"] + e["e_adj"]) / P * 1e6, err=errors(out),
               split_pJ={n: m.get(f'e_{n.lower()}', float('nan')) / N * 1e12 for n in nets})
    return res


if __name__ == "__main__":
    which = sys.argv[1]
    split = None
    if which.endswith("split"):
        which = which[:-5]
        split = {"x1": "VCMP", ("x4" if which == "v0" else "x3"): "VLOG"}
    scales = [float(x) for x in sys.argv[2:]]
    sch, top = {"v0": (BASE + "/sar_adc3.sch", "sar_adc3"),
                "v1": (BASE + "/SAR_improved/sar_adc3_v1.sch", "sar_adc3_v1")}[which]
    allr = []
    for sc in scales:
        r = run_tryde(sch, top, sc, which + ('split' if split else ''), split=split)
        allr.append(r)
        print(which, f"scale {sc}: conv {r['conv_time']*1e9:.0f} ns ok={r['ok']} wrong={r['nwrong']} "
              f"E={r['E_tot_pJ']:.2f} pJ (VCC {r['E_vcc_pJ']:.2f}, VREF {r['E_ref_pJ']:.2f})  P={r['P_uW']:.1f} uW split={r['split_pJ']} {r['err'][:2]}", flush=True)
    json.dump(allr, open(f"{SIM}/res_{sys.argv[1]}_{'_'.join(sys.argv[2:])}.json", "w"), indent=1)
