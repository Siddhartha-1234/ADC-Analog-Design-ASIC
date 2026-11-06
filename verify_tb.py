"""Netlist an xschem testbench and run it here (PDK .lib line -> local tt models, plots removed)."""
import sys, re, subprocess
sys.path.insert(0, "/tmp/claude-0/-home-claude/c0d59e56-37f5-5bec-bea7-85999f63d6d2/scratchpad/v2")
from simlib import *

def verify(sch, extra_sub=()):
    out = f"{SIM}/net"
    subprocess.run(["xschem", "-q", "-x", "-n", "-s", "-o", out, sch], capture_output=True, text=True)
    name = os.path.splitext(os.path.basename(sch))[0]
    t = open(f"{out}/{name}.spice").read()
    t = re.sub(r"^\.lib .*sky130\.lib\.spice.*$", MODELS.strip(), t, flags=re.M)
    t = "\n".join(l for l in t.split("\n") if not l.strip().startswith("plot"))
    for a, b in extra_sub:
        t = t.replace(a, b)
    r = run(t, "tb_" + name)
    vals = re.findall(r"^(\w+)\s+=\s+([-\d.e+]+)", r, re.M)
    return vals, errors(r), t

if __name__ == "__main__":
    vals, err, t = verify(sys.argv[1])
    print(vals)
    print(err)
