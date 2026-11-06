"""Test the step-2 SAR (latch comparator + TRY/DEC logic). Timing for scale = 1: 100 ns per conversion."""
import sys, json
sys.path.insert(0, "/tmp/claude-0/-home-claude/c0d59e56-37f5-5bec-bea7-85999f63d6d2/scratchpad/v2")
from simlib import *

SCH = "/home/ttuser/Documents/ADCAnalogDesign/SAR_improved/sar_adc3_v2.sch"
# phase windows in ns (scale 1 = 100 ns conversion)
PH = dict(RST=(0, 10), TRY2=(12, 22), C2=(24, 28), DEC2=(30, 35), TRY1=(37, 47), C1=(49, 53), DEC1=(55, 60),
          TRY0=(62, 72), C0=(74, 78), DEC0=(80, 85))
PERIOD, T_READ = 100, 90


def pwl_pulses(windows, period, n, edge=0.1e-9):
    """PWL with one 0 -> 1.8 V pulse per window and conversion; a window starting at t = 0 starts high."""
    pts = []
    for i in range(n):
        for a, b in windows:
            t0, t1 = i * period + a, i * period + b
            if t0 == 0:
                pts += ["0 1.8", f"{t1:.4e} 1.8", f"{t1+edge:.4e} 0"]
            else:
                if not pts:
                    pts.append("0 0")
                pts += [f"{t0:.4e} 0", f"{t0+edge:.4e} 1.8", f"{t1:.4e} 1.8", f"{t1+edge:.4e} 0"]
    return "PWL(" + " ".join(pts) + ")"


def run_v2(sc, tag="v2", sch=SCH, top="sar_adc3_v2", save=None, vref=0.8, split=None):
    lib = subckts(netlist(sch))
    nets = []
    if split:
        lib, nets = split_supply(lib, top, split)
    P = PERIOD * 1e-9 * sc
    N = len(ORDER)
    T = N * P
    w = lambda k: (PH[k][0] * 1e-9 * sc, PH[k][1] * 1e-9 * sc)
    src = lambda k: pwl_pulses([w(k)], P, N)
    cir = [MODELS, ".option method=gear reltol=1e-4", lib, "V1 VCC 0 1.8", f"V2 VREF 0 {vref}",
           f"V5 VIN 0 {pwl_steps(ORDER, P, 2e-9 * sc)}",
           f"V6 RST 0 {src('RST')}", f"VCLK CLK 0 {pwl_pulses([w('C2'), w('C1'), w('C0')], P, N)}"]
    for k in ("TRY2", "DEC2", "TRY1", "DEC1", "TRY0", "DEC0"):
        cir.append(f"V{k} {k} 0 {src(k)}")
    cir += [f"V_{n} {n} 0 1.8" for n in nets]
    cir += [f"x1 VCC 0 VREF VIN CLK RST TRY2 DEC2 TRY1 DEC1 TRY0 DEC0 D2 D1 D0 " + " ".join(nets) + f" {top}",
            ".control", "set noaskquit", f"tran {P/1000:.3e} {T:.4e}", CODE,
            "let pvcc = 1.8*(-i(V1))", "let pref = 0.8*(-i(V2))",
            f"meas tran e_vcc integ pvcc from=0 to={T:.4e}", f"meas tran e_ref integ pref from=0 to={T:.4e}"]
    for i in range(N):
        cir.append(f"meas tran c{i} find code at={i * P + T_READ * 1e-9 * sc:.4e}")
    # REF at the end of TRY0 of conversion 1 (VIN = 0.775 V, code 7): ideal 0.7 V -> gain of the CDAC
    cir.append(f"meas tran ref7 find v(x1.REF) at={P + (PH['TRY0'][1] - 0.5) * 1e-9 * sc:.4e}")
    for n in nets:
        cir += [f"let p_{n.lower()} = 1.8*(-i(V_{n}))", f"meas tran e_{n.lower()} integ p_{n.lower()} from=0 to={T:.4e}"]
    if save:
        cir.append(f"wrdata {save} v(VIN) v(x1.REF) v(x1.COM) v(CLK) v(D2) v(D1) v(D0) code pvcc pref")
    cir += [".endc", ".end"]
    out = run("\n".join(cir), f"{tag}_{sc}")
    m = meas(out)
    codes = [round(m.get(f"c{i}", -9)) for i in range(N)]
    ev, er = m.get("e_vcc", float("nan")) / N, m.get("e_ref", float("nan")) / N
    return dict(scale=sc, conv_time=P, ok=codes == EXP, nwrong=sum(a != b for a, b in zip(codes, EXP)), codes=codes,
                E_vcc_pJ=ev * 1e12, E_ref_pJ=er * 1e12, ref7=m.get('ref7', float('nan')), E_tot_pJ=(ev + er) * 1e12, P_uW=(ev + er) / P * 1e6, err=errors(out), split_pJ={n: m.get(f'e_{n.lower()}', float('nan')) / N * 1e12 for n in nets})


if __name__ == "__main__":
    allr = []
    tag = sys.argv[1]
    for sc in [float(x) for x in sys.argv[2:]]:
        r = run_v2(sc, tag=tag)
        allr.append(r)
        print(f"{tag} scale {sc}: conv {r['conv_time']*1e9:.0f} ns ok={r['ok']} wrong={r['nwrong']} codes={r['codes']} "
              f"REF(7)={r['ref7']*1e3:.1f} mV E={r['E_tot_pJ']:.3f} pJ (VCC {r['E_vcc_pJ']:.3f}, VREF {r['E_ref_pJ']:.3f}) P={r['P_uW']:.1f} uW {r['err'][:2]}", flush=True)
    json.dump(allr, open(f"{SIM}/res_{tag}_{'_'.join(sys.argv[2:])}.json", "w"), indent=1)
