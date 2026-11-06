"""Simulation helpers: netlist xschem schematics with xschem itself, then run ngspice."""
import os, re, subprocess, numpy as np

S = "/tmp/claude-0/-home-claude/c0d59e56-37f5-5bec-bea7-85999f63d6d2/scratchpad"
MODELS = f".include {S}/fdpr/models/mini_tt.spice\n"
SIM = f"{S}/v2/sim"
os.makedirs(SIM, exist_ok=True)
ENV = dict(os.environ, OMP_NUM_THREADS="1")


def netlist(sch):
    """Run xschem in batch mode; return the netlist text (subckts + top)."""
    out = f"{SIM}/net"
    os.makedirs(out, exist_ok=True)
    r = subprocess.run(["xschem", "-q", "-x", "-n", "-s", "-o", out, sch], capture_output=True, text=True)
    name = os.path.splitext(os.path.basename(sch))[0]
    p = f"{out}/{name}.spice"
    if not os.path.exists(p):
        raise RuntimeError("xschem failed: " + r.stdout + r.stderr)
    t = open(p).read()
    # a cell netlisted on its own has its top level written as a commented subckt: make it real
    t = re.sub(r"^\*\*\.subckt ", ".subckt ", t, count=1, flags=re.M)
    t = re.sub(r"^\*\*\.ends", ".ends", t, count=1, flags=re.M)
    return t


def subckts(netlist_text):
    """All .subckt ... .ends blocks of a netlist (drops the top level and control sections)."""
    t = netlist_text
    blocks = re.findall(r"^\.subckt .*?^\.ends", t, re.M | re.S)
    seen, out = set(), []
    for b in blocks:
        n = b.split()[1]
        if n not in seen:
            seen.add(n); out.append(b)
    return "\n".join(out) + "\n"


def top_block(netlist_text):
    """Lines of the top-level circuit of an xschem netlist (excluding subckts/controls)."""
    t = re.sub(r"^\.subckt .*?^\.ends", "", netlist_text, flags=re.M | re.S)
    return t


def run(cir, name):
    p = f"{SIM}/{name}.cir"
    open(p, "w").write(cir)
    r = subprocess.run(["ngspice", "-b", p], capture_output=True, text=True, cwd=SIM, env=ENV)
    return r.stdout + r.stderr


def meas(out):
    return {m[1].lower(): float(m[2]) for m in re.finditer(r"^(\w+)\s+=\s+([-\d.e+]+)", out, re.M)}


def errors(out):
    return [l for l in out.split("\n") if re.search(r"error|failed|singular|abort", l, re.I) and "Reference value" not in l][:6]


# 16 test inputs a quarter LSB (25 mV) from the nearest threshold, alternating low/high
LEVELS = [round(0.1 * k + d, 3) for k in range(8) for d in (0.025, 0.075)]
ORDER = []
_lo, _hi = 0, len(LEVELS) - 1
while _lo <= _hi:
    ORDER.append(LEVELS[_lo]); _lo += 1
    if _lo <= _hi:
        ORDER.append(LEVELS[_hi]); _hi -= 1
EXP = [int(v // 0.1) for v in ORDER]
CODE = "let code = 4*ceil((v(D2)-0.9)/10) + 2*ceil((v(D1)-0.9)/10) + ceil((v(D0)-0.9)/10)"


def pwl_steps(values, period, t_change, edge=0.5e-9):
    """PWL that holds values[i] during conversion i and changes at i*period + t_change."""
    pts = [f"0 {values[0]}"]
    for i in range(1, len(values)):
        t = i * period + t_change
        pts.append(f"{t:.4e} {values[i-1]}")
        pts.append(f"{t+edge:.4e} {values[i]}")
    return "PWL(" + " ".join(pts) + ")"


def pulse(t_on, width, period, v1=1.8, edge=0.1e-9):
    """Periodic pulse: high from t_on to t_on+width within each period."""
    return f"PULSE(0 {v1} {t_on:.4e} {edge:.2e} {edge:.2e} {width-edge:.4e} {period:.4e})"


def split_supply(lib, top, split):
    """Give some instances of subckt `top` their own supply pins, so their energy can be measured separately.
    split = {"x1": "VCMP", "x3": "VLOG"}: the first VCC of that instance line becomes the new net, which is
    appended to top's port list.  Returns the modified library text and the list of new nets (in port order)."""
    blk = re.search(rf"^\.subckt {top} .*?^\.ends", lib, re.M | re.S)[0]
    new = blk
    nets = []
    for inst, net in split.items():
        new, n = re.subn(rf"^({inst}) VCC ", rf"\1 {net} ", new, count=1, flags=re.M)
        assert n == 1, inst
        nets.append(net)
    first = new.split("\n", 1)
    new = first[0] + " " + " ".join(nets) + "\n" + first[1]
    return lib.replace(blk, new), nets
