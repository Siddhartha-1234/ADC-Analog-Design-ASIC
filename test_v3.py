"""Test the step-3 SAR (top-plate sampling, Vcm-based switching, latch comparator).
Timing for scale = 1: 100 ns per conversion, comparator clocks at the same instants as in step 2."""
import sys, json
sys.path.insert(0, "/tmp/claude-0/-home-claude/c0d59e56-37f5-5bec-bea7-85999f63d6d2/scratchpad/v2")
from simlib import *
from test_v2 import pwl_pulses

SCH = "/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/sar_adc3_v3.sch"
PH = dict(SMP=(0, 20), C2=(24, 28), U2=(30, 35), C1=(49, 53), U1=(55, 60), C0=(74, 78))
CLKW = ("C2", "C1", "C0")   # the comparator clock pulses with the three decision phases
PERIOD, T_READ = 100, 90


def run_v3(sc, tag="v3", sch=SCH, top="sar_adc3_v3", save=None, vref=0.8, vcm=0.4, extra="", split=None):
    lib = subckts(netlist(sch))
    nets = []
    if split:
        lib, nets = split_supply(lib, top, split)
    P = PERIOD * 1e-9 * sc
    N = len(ORDER)
    T = N * P
    w = lambda k: (PH[k][0] * 1e-9 * sc, PH[k][1] * 1e-9 * sc)
    cir = [MODELS, ".option method=gear reltol=1e-4", lib, "V1 VCC 0 1.8", f"V2 VREF 0 {vref}", f"V3 VCM 0 {vcm}",
           f"V5 VIN 0 {pwl_steps(ORDER, P, 2e-9 * sc)}", extra]
    for k in PH:
        cir.append(f"V{k} {k} 0 {pwl_pulses([w(k)], P, N)}")
    cir.append(f"VCLK CLK 0 {pwl_pulses([w(k) for k in CLKW], P, N)}")
    cir += [f"V_{n} {n} 0 1.8" for n in nets]
    cir += [f"x1 VCC 0 VREF VCM VIN SMP CLK C2 U2 C1 U1 C0 D2 D1 D0 " + " ".join(nets) + f" {top}",
            ".control", "set noaskquit", f"tran {P/1000:.3e} {T:.4e}", CODE,
            "let pvcc = 1.8*(-i(V1))", f"let pref = {vref}*(-i(V2))", f"let pcm = {vcm}*(-i(V3))", "let pin = v(VIN)*(-i(V5))",
            f"meas tran e_vcc integ pvcc from=0 to={T:.4e}", f"meas tran e_ref integ pref from=0 to={T:.4e}",
            f"meas tran e_cm integ pcm from=0 to={T:.4e}", f"meas tran e_in integ pin from=0 to={T:.4e}"]
    for i in range(N):
        cir.append(f"meas tran c{i} find code at={i * P + T_READ * 1e-9 * sc:.4e}")
        # top-plate voltage just before / after the first capacitor move (gives the real step size)
        cir.append(f"meas tran va{i} find v(x1.VX) at={i * P + 29e-9 * sc:.4e}")
        cir.append(f"meas tran vb{i} find v(x1.VX) at={i * P + 48e-9 * sc:.4e}")
    for n in nets:
        cir += [f"let p_{n.lower()} = 1.8*(-i(V_{n}))", f"meas tran e_{n.lower()} integ p_{n.lower()} from=0 to={T:.4e}"]
    if save:
        cir.append(f"wrdata {save} v(VIN) v(x1.VX) v(x1.VR) v(CLK) v(SMP) v(D2) v(D1) v(D0) code v(x1.x2.BPA) v(x1.x2.BPB) v(x1.COM) pvcc pref pcm")
    cir += [".endc", ".end"]
    out = run("\n".join(cir), f"{tag}_{sc}")
    m = meas(out)
    codes = [round(m.get(f"c{i}", -9)) for i in range(N)]
    steps = [abs(m.get(f"vb{i}", np.nan) - m.get(f"va{i}", np.nan)) for i in range(N)]
    E = {k: m.get(f"e_{k}", float("nan")) / N * 1e12 for k in ("vcc", "ref", "cm", "in")}
    tot = E["vcc"] + E["ref"] + E["cm"]
    return dict(scale=sc, conv_time=P, ok=codes == EXP, nwrong=sum(a != b for a, b in zip(codes, EXP)), codes=codes,
                E_vcc_pJ=E["vcc"], E_ref_pJ=E["ref"], E_cm_pJ=E["cm"], E_in_pJ=E["in"], E_tot_pJ=tot, P_uW=tot * 1e-12 / P * 1e6,
                step_gain=float(np.nanmean(steps)) / (vref / 4), err=errors(out), split_pJ={n: m.get(f'e_{n.lower()}', float('nan')) / N * 1e12 for n in nets})


if __name__ == "__main__":
    allr = []
    tag = sys.argv[1]
    for sc in [float(x) for x in sys.argv[2:]]:
        r = run_v3(sc, tag=tag)
        allr.append(r)
        print(f"{tag} scale {sc}: conv {r['conv_time']*1e9:.0f} ns ok={r['ok']} wrong={r['nwrong']} codes={r['codes']} "
              f"E={r['E_tot_pJ']:.3f} pJ (VCC {r['E_vcc_pJ']:.3f}, VREF {r['E_ref_pJ']:.3f}, VCM {r['E_cm_pJ']:.3f}; from VIN {r['E_in_pJ']:.3f}) "
              f"P={r['P_uW']:.2f} uW gain={r['step_gain']:.4f} {r['err'][:2]}", flush=True)
    json.dump(allr, open(f"{SIM}/res_{tag}_{'_'.join(sys.argv[2:])}.json", "w"), indent=1)
