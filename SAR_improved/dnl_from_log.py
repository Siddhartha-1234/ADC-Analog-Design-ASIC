"""DNL / INL of the 6-bit SAR from the ngspice log of TB_SAR6_ramp (lines 'RAMP k vin code').
usage: python3 dnl_from_log.py ramp_log.txt
Code edge = midpoint between the last input that gave a code below c and the first that gave c or above
(resolution LSB/8, so edges are known to +-LSB/16)."""
import sys, re
import numpy as np

NB, VREF = 6, 0.8
LSB = VREF / 2 ** NB
pts = [(float(m[1]), int(round(float(m[2])))) for m in re.finditer(r"^RAMP \S+ (\S+) (\S+)", open(sys.argv[1]).read(), re.M)]
pts.sort()
v = np.array([p[0] for p in pts]); c = np.array([p[1] for p in pts])
print(f"{len(pts)} conversions, codes {c.min()} ... {c.max()}, non-monotonic steps: {int((np.diff(c) < 0).sum())}")
missing = sorted(set(range(2 ** NB)) - set(c.tolist()))
print("missing codes:", missing or "none")
edges = []
for code in range(1, 2 ** NB):
    i = np.argmax(c >= code)
    edges.append(0.5 * (v[i - 1] + v[i]) if i > 0 else np.nan)
e = np.array(edges)
ideal = LSB * np.arange(1, 2 ** NB)
dnl = np.diff(e) / LSB - 1                    # codes 1 ... 62
inl = (e - ideal) / LSB
lsb_ep = (e[-1] - e[0]) / (2 ** NB - 2)
inl_ep = (e - e[0] - lsb_ep * np.arange(2 ** NB - 1)) / lsb_ep
print(f"offset (first edge - 12.5 mV): {(e[0] - LSB) * 1e3:+.2f} mV    gain error: {(lsb_ep / LSB - 1) * 100:+.2f} %")
print(f"max |DNL| = {np.nanmax(np.abs(dnl)):.3f} LSB   max |INL| vs ideal = {np.nanmax(np.abs(inl)):.3f} LSB   "
      f"max |INL| end-point = {np.nanmax(np.abs(inl_ep)):.3f} LSB   (resolution +-{1 / 16:.3f} LSB)")
print("code  edge_mV  DNL   INL_ep")
for k in range(2 ** NB - 1):
    print(f"{k + 1:4d} {e[k] * 1e3:8.2f} {dnl[k] if k < len(dnl) else float('nan'):+.3f} {inl_ep[k]:+.3f}")
