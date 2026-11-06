"""Count transistors, gate area and MIM area of a design by walking its netlist hierarchy."""
import sys, re, json
sys.path.insert(0, "/tmp/claude-0/-home-claude/c0d59e56-37f5-5bec-bea7-85999f63d6d2/scratchpad/v2")
from simlib import *

def stats(sch, top):
    lib = subckts(netlist(sch))
    blocks = {b.split()[1]: b for b in re.findall(r"^\.subckt .*?^\.ends", lib, re.M | re.S)}
    def walk(name):
        n = ga = mim = mimp = dev = 0.0
        for l in blocks[name].split("\n"):
            if l.startswith("XM") or (l.startswith("X") and "fet_01v8" in l):
                w = float(re.search(r"\bW=([\d.]+)", l).group(1)); L = float(re.search(r"\bL=([\d.]+)", l).group(1))
                m = re.search(r"\bmult=([\d.]+)", l); mult = float(m.group(1)) if m else 1
                n += mult; ga += w * L * mult; dev += (w + 1.0) * (L + 1.0) * mult
            elif "cap_mim" in l:
                w = float(re.search(r"\bW=([\d.]+)", l).group(1)); L = float(re.search(r"\bL=([\d.]+)", l).group(1))
                mf = float(re.search(r"\bMF=([\d.]+)", l).group(1))
                mim += w * L * mf; mimp += (w + 0.84) * (L + 0.84) * mf
            elif l.startswith("x"):
                sub = l.split()[-1]
                if sub in blocks:
                    a = walk(sub); n += a[0]; ga += a[1]; mim += a[2]; mimp += a[3]; dev += a[4]
        return n, ga, mim, mimp, dev
    n, ga, mim, mimp, dev = walk(top)
    return dict(transistors=int(n), gate_area_um2=round(ga, 1), mim_plate_um2=round(mim, 1), mim_with_spacing_um2=round(mimp, 1), transistor_footprint_um2=round(dev, 1),
                total_estimate_um2=round(dev + mimp, 0))

if __name__ == "__main__":
    B = "/home/ttuser/Documents/ADCAnalogDesign"
    res = {}
    for tag, sch, top in (("v0", f"{B}/sar_adc3.sch", "sar_adc3"), ("v1", f"{B}/SAR_improved/sar_adc3_v1.sch", "sar_adc3_v1"),
                          ("v2", f"{B}/SAR_improved/sar_adc3_v2.sch", "sar_adc3_v2"), ("v3", f"{B}/SAR_improved/sar_adc3_v3.sch", "sar_adc3_v3"),
                          ("latch", f"{B}/SAR_improved/latch_comp.sch", "latch_comp"), ("old_comp", f"{B}/comparator.sch", "comparator")):
        try:
            res[tag] = stats(sch, top)
        except Exception as e:
            res[tag] = str(e)
        print(tag, res[tag])
    json.dump(res, open(f"{SIM}/area.json", "w"), indent=1)
