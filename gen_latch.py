"""Latch comparator: PMOS-input StrongARM latch + NAND SR latch (holds the decision while the latch resets)."""
import sys
sys.path.insert(0, "/tmp/claude-0/-home-claude/c0d59e56-37f5-5bec-bea7-85999f63d6d2/scratchpad/v2")
from xs import *

D = OUTDIR
SIZES = dict(tail=2, win=2, lin=0.5, wp=1, wn=0.5)   # chosen after latch_var.py (A: 4/4/2/1 used 139 fJ; B: 96 fJ, half the kickback)


def latch_comp(name="latch_comp", sz=None, outdir=None):
    z = dict(SIZES, **(sz or {}))
    d = outdir or D
    s = Sch(
        f"{name}: clocked latch comparator (PMOS-input StrongARM + SR latch).  CLK = 1: evaluate,  CLK = 0: reset.\n"
        "Reset (CLK = 0): tail M7 off, MR1-MR4 pull P, Q, X, Y to 0 V, so no current flows and the previous decision is erased.\n"
        "Evaluate (CLK = 1): M7 turns on; the input with the LOWER gate voltage (PMOS) charges its side (P or Q) faster,\n"
        "the cross-coupled pairs M3/M4 (PMOS) and M5/M6 (NMOS) regenerate: one of X, Y goes to VDD, the other to 0.  X high <=> INP < INN.\n"
        "No static current: in both states every path from VDD to VSS is broken (zero static power).\n"
        "Inverters + NAND SR latch: OUT = 1 when INP > INN; OUT keeps the last decision while the latch resets (OUTB = complement).")
    # clock inverter
    s.mos("pfet_01v8", "MCKP", -600, -300, 1, 0.15, "CLKB", "CLK", "VDD", "VDD")
    s.mos("nfet_01v8", "MCKN", -600, -100, 0.5, 0.15, "CLKB", "CLK", "VSS", "VSS")
    # tail + input pair
    s.mos("pfet_01v8", "M7", 300, -600, z["tail"], 0.15, "TAIL", "CLKB", "VDD", "VDD")
    s.mos("pfet_01v8", "M1", 100, -400, z["win"], z["lin"], "P", "INP", "TAIL", "VDD")
    s.mos("pfet_01v8", "M2", 500, -400, z["win"], z["lin"], "Q", "INN", "TAIL", "VDD")
    # cross-coupled PMOS (sources at P / Q) and NMOS
    s.mos("pfet_01v8", "M3", 100, -200, z["wp"], 0.15, "X", "Y", "P", "VDD")
    s.mos("pfet_01v8", "M4", 500, -200, z["wp"], 0.15, "Y", "X", "Q", "VDD")
    s.mos("nfet_01v8", "M5", 100, 0, z["wn"], 0.15, "X", "Y", "VSS", "VSS")
    s.mos("nfet_01v8", "M6", 500, 0, z["wn"], 0.15, "Y", "X", "VSS", "VSS")
    # reset switches
    for k, n in enumerate(("P", "Q", "X", "Y")):
        s.mos("nfet_01v8", f"MR{k+1}", 900 + 220 * k, -300, 0.5, 0.15, n, "CLKB", "VSS", "VSS")
    # output buffers (equal load on X and Y) and NAND SR latch
    s.mos("pfet_01v8", "MBXP", 900, 100, 1, 0.15, "XB", "X", "VDD", "VDD")
    s.mos("nfet_01v8", "MBXN", 900, 300, 0.5, 0.15, "XB", "X", "VSS", "VSS")
    s.mos("pfet_01v8", "MBYP", 1200, 100, 1, 0.15, "YB", "Y", "VDD", "VDD")
    s.mos("nfet_01v8", "MBYN", 1200, 300, 0.5, 0.15, "YB", "Y", "VSS", "VSS")
    s.inst(BASE + "/nand2.sym", "x1", 1700, 0, {"A": "YB", "B": "OUTB", "Y": "OUT", "VCC": "VDD", "VSS": "VSS"})
    s.inst(BASE + "/nand2.sym", "x2", 1700, 300, {"A": "XB", "B": "OUT", "Y": "OUTB", "VCC": "VDD", "VSS": "VSS"})
    s.pins(["VDD", "VSS", "CLK", "INP", "INN"], ["OUT", "OUTB"])
    s.save(f"{d}/{name}.sch")
    box_sym(f"{d}/{name}.sym", ["VDD", "VSS", "CLK", "INP", "INN"], ["OUT", "OUTB"], "StrongARM", width=160)


if __name__ == "__main__":
    latch_comp()
    print("latch written")
