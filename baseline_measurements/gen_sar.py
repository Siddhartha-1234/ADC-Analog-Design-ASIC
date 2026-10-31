import sys
# SAR testbench generator: one conversion per period T (default 2 us, user's timing), scale s compresses all phases
def phases(s=1.0, T=2e-6):
    # user's timing (ns): RST high 0..100 (reset low at 100), TRY2 150-400, DEC2 450-550, TRY1 600-850, DEC1 900-1000, TRY0 1050-1300, DEC0 1350-1450
    ph = dict(TRY2=(150,250),DEC2=(450,100),TRY1=(600,250),DEC1=(900,100),TRY0=(1050,250),DEC0=(1350,100))
    lines = []
    lines.append(f"VRST RST 0 PULSE(1.8 0 {100*s}n 1n 1n {T*1e9-100*s-2}n {T*1e9}n)")
    for k,(t0,w) in ph.items():
        lines.append(f"V{k} {k} 0 PULSE(0 1.8 {t0*s}n 1n 1n {w*s-1}n {T*1e9}n)")
    return lines
def vin_pwl(vals, T=2e-6, tchg=20e-9):
    pts = [f"0 {vals[0]}"]
    for n,v in enumerate(vals[1:],1):
        t = n*T + tchg
        pts.append(f"{t-1e-9:.12g} {vals[n-1]}"); pts.append(f"{t:.12g} {v}")
    return "VIN VIN 0 PWL(" + " ".join(pts) + ")"
def tb(name, vals, s=1.0, T=2e-6, adj=None, step="1n"):
    N=len(vals)
    out = [f"* {name}", ".include common.inc"]
    if adj is not None: out.append(f".param adjv={adj}")
    out += ["x1 VCC 0 VREF VIN EN_N ADJ RST TRY2 DEC2 TRY1 DEC1 TRY0 DEC0 D2 D1 D0 sar_adc3", vin_pwl(vals,T)] + phases(s,T)
    out += [".control", f"tran {step} {N*T*1e6:.6g}u",
            "let code = 4*(v(D2) gt 0.9) + 2*(v(D1) gt 0.9) + (v(D0) gt 0.9)",
            "let pvcc = -i(V1)*1.8", "let pvref = -i(V2)*0.8", "let vin=v(VIN)",
            f"linearize code pvcc pvref vin",
            f"wrdata {name}_wave.txt code pvcc pvref vin", ".endc", ".end"]
    open(f"{name}.sp","w").write("\n".join(out)+"\n")
if __name__=="__main__":
    pass
