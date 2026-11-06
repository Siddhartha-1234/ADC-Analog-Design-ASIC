"""Minimum-size logic cells for the final SAR: same symbols and pins as your inverter / nor2,
but NMOS W = 0.42 um and PMOS W = 0.84 um (your cells use W = 1-2 um).  At 10 MS/s these are fast enough
and every switching node has about 3-4x less capacitance, so the logic uses about 3-4x less energy."""
import sys, shutil
sys.path.insert(0, "/tmp/claude-0/-home-claude/c0d59e56-37f5-5bec-bea7-85999f63d6d2/scratchpad/v2")
from xs import *

D = OUTDIR
WN, WP = 0.42, 0.84


def cells():
    # inverter: pins VDD IN out VSS (as your inverter.sym)
    s = Sch(f"inv_min: minimum-size inverter (PMOS {WP}/0.15, NMOS {WN}/0.15).  Same symbol and pins as inverter.sym.")
    s.mos("pfet_01v8", "M1", 200, -100, WP, 0.15, "out", "IN", "VDD", "VDD")
    s.mos("nfet_01v8", "M2", 200, 100, WN, 0.15, "out", "IN", "VSS", "VSS")
    s.pins(["IN"], ["out"], ["VDD", "VSS"])
    s.save(f"{D}/inv_min.sch")
    shutil.copy(BASE + "/inverter.sym", f"{D}/inv_min.sym")
    SYMS[f"{D}/inv_min.sym"] = SYMS[BASE + "/inverter.sym"]
    # nor2: pins A B Y VCC VSS
    s = Sch(f"nor2_min: minimum-size NOR2 (PMOS {WP}/0.15 in series, NMOS {WN}/0.15 in parallel).  Same symbol and pins as nor2.sym.")
    s.mos("pfet_01v8", "M1", 250, -250, WP, 0.15, "N1", "A", "VCC", "VCC")
    s.mos("pfet_01v8", "M2", 250, -50, WP, 0.15, "Y", "B", "N1", "VCC")
    s.mos("nfet_01v8", "M3", 100, 150, WN, 0.15, "Y", "A", "VSS", "VSS")
    s.mos("nfet_01v8", "M4", 400, 150, WN, 0.15, "Y", "B", "VSS", "VSS")
    s.pins(["A", "B"], ["Y"], ["VCC", "VSS"])
    s.save(f"{D}/nor2_min.sch")
    shutil.copy(BASE + "/nor2.sym", f"{D}/nor2_min.sym")
    SYMS[f"{D}/nor2_min.sym"] = SYMS[BASE + "/nor2.sym"]


if __name__ == "__main__":
    cells()
    print("min cells written")
