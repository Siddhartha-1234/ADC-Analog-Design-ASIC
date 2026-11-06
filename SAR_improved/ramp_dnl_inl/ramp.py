"""Ramp test for the improved SARs using the user's own TB_SAR3_v*.sch netlists.
Only VIN and the .control block are replaced; all clocks/supplies/circuit stay exactly as in the testbench."""
import re, sys, json, subprocess, numpy as np
from multiprocessing import Pool
CFG = {  # period, VIN change time inside the period, code read time, tran step  (all from the TBs)
 'v1': dict(P=2000e-9, tch=15e-9, trd=1600e-9, step='0.5n'),
 'v2': dict(P=100e-9, tch=2e-9, trd=90e-9, step='0.025n'),
 'v3': dict(P=100e-9, tch=2e-9, trd=90e-9, step='0.025n'),
}
def base(v):
    t = open(f'/tmp/tb/TB_SAR3_{v}.spice').read()
    t = re.sub(r'^V5 VIN 0 [^\n]*\n(\+[^\n]*\n)*', 'V5 VIN 0 @VIN@\n', t, flags=re.M)   # drop old PWL (+ continuation)
    t = re.sub(r'^\.control.*?^\.endc', '@CTRL@', t, flags=re.M | re.S)
    return t
def chunk(args):
    v, idx, vins = args; c = CFG[v]; P = c['P']; N = len(vins)
    pts = [f"0 {vins[0]}"]
    for i in range(1, N):
        t = i * P + c['tch']; pts += [f"{t:.5e} {vins[i-1]}", f"{t+0.5e-9:.5e} {vins[i]}"]
    pwl = "PWL(" + " ".join(pts) + ")"
    ctrl = [".control", f"tran {c['step']} {N*P:.5e}",
            "let code = 4*ceil((v(D2)-0.9)/10) + 2*ceil((v(D1)-0.9)/10) + ceil((v(D0)-0.9)/10)"]
    ctrl += [f"meas tran c{i} find code at={i*P+c['trd']:.5e}" for i in range(N)]
    ctrl += [".endc"]
    net = base(v).replace('@VIN@', pwl).replace('@CTRL@', "\n".join(ctrl))
    f = f"/tmp/ramp/{v}_{idx}.cir"; open(f, 'w').write(net)
    out = subprocess.run(['ngspice', '-b', f], capture_output=True, text=True, cwd='/tmp/ramp').stdout
    m = {k: float(x) for k, x in re.findall(r'^(c\d+)\s+=\s+([-\d.e+]+)', out, re.M)}
    codes = [round(m.get(f'c{i}', -1)) for i in range(N)]
    return v, list(zip(vins, codes))
def run(jobs, tag):
    res = {}
    with Pool(2) as p:
        for v, pairs in p.imap_unordered(chunk, jobs):
            res.setdefault(v, []).extend(pairs); print(tag, v, len(res[v]), flush=True)
    return res
if __name__ == '__main__':
    designs = sys.argv[1:] or ['v1', 'v2', 'v3']
    stage = 'coarse'
    vins = np.round(np.arange(0.00125, 0.8, 0.0025), 6)          # 320 points, 2.5 mV, same grid as baseline
    jobs = [(v, f'c{k}', list(vins[k:k+40])) for v in designs for k in range(0, len(vins), 40)]
    R = run(jobs, 'coarse')
    json.dump(R, open('coarse.json', 'w'))
    # fine pass: 0.25 mV steps, +-4 mV around each coarse edge
    jobs = []
    for v in designs:
        a = np.array(sorted(R[v])); vv, cc = a[:, 0], a[:, 1]
        for k in range(1, 8):
            e = vv[0] - 0.00125 + np.sum(cc < k) * 0.0025
            fv = list(np.round(np.arange(e - 0.004, e + 0.004001, 0.00025), 6))
            jobs.append((v, f'f{k}', fv))
    F = run(jobs, 'fine')
    json.dump(F, open('fine.json', 'w'))
    print('DONE')
