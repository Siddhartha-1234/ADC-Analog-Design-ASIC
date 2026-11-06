"""Step 1 (area): same SAR architecture, CDAC unit capacitor shrunk from 1 pF to ~140 fF."""
import sys
sys.path.insert(0, "/tmp/claude-0/-home-claude/c0d59e56-37f5-5bec-bea7-85999f63d6d2/scratchpad/v2")
from xs import *

UNIT = 8          # unit MIM cap W = L = 8 um, MF = 1  ->  133 fF  (was 10 x 10 x 5 = 1.03 pF)
DUMMY1 = (6.9, 6.9)   # dummy = C - Cp: 100 fF, so REF sees 8C although the comparator adds Cp = 33 fF
CP1 = 33
D = OUTDIR

SYMS[BASE + "/sar_logic3_simple.sym"] = {p: (x, y, "l" if x < 0 else "r") for p, x, y in [
    ("VCC", -100, -90), ("VSS", -100, -70), ("RST", -100, -50), ("TRY2", -100, -30), ("DEC2", -100, -10), ("TRY1", -100, 10),
    ("DEC1", -100, 30), ("TRY0", -100, 50), ("DEC0", -100, 70), ("COM", -100, 90),
    ("D2", 100, -50), ("D1", 100, -30), ("D0", 100, -10), ("B2N", 100, 10), ("B1N", 100, 30), ("B0N", 100, 50)]}


def cdac(name, unit, drivers, dummy=None, cp=None):
    """3-bit binary CDAC: 4C, 2C, C + dummy on the floating top plate REF (same circuit as cdac3, new sizes).
    dummy = (W, L) of the dummy cap; if it is smaller than C by the parasitic Cp, REF sees exactly 8C in total."""
    cu = 2 * unit * unit + 0.33 * 2 * unit      # simulated cap_mim_m3_2: 2.0 fF/um2 x W.L + 0.33 fF/um x (W + L)
    dw, dl = dummy or (unit, unit)
    cd = 2 * dw * dl + 0.33 * (dw + dl)
    s = Sch(f"{name}: 3-bit capacitive DAC, unit C = cap_mim_m3_2 {unit} x {unit} um (about {cu:.0f} fF), total 8C = {8*cu/1000:.2f} pF.\n"
            "RST = 1 grounds REF.  After RST, REF floats and REF = VREF.(4.D2 + 2.D1 + D0)/8 x 8C/(8C + Cp), Cp = parasitic on REF.\n"
            "Bottom plates are driven by inverters powered from VREF (BiN = 0 -> plate at VREF -> bit = 1).\n"
            + (f"Dummy CD = {dw} x {dl} um (about {cd:.0f} fF) = C - Cp: the parasitic Cp (about {cp:.0f} fF, mostly the comparator input) completes the dummy, so REF is not attenuated."
               if dummy else "Dummy CD = C (bottom plate grounded)."))
    (wp2, wn2), (wp1, wn1), (wp0, wn0) = drivers
    for i, (wp, wn) in zip((2, 1, 0), drivers):
        x = (2 - i) * 300
        s.mos("pfet_01v8", f"MP{i}", x, -300, wp, 0.15, f"BP{i}", f"B{i}N", "VREF", "VREF")
        s.mos("nfet_01v8", f"MN{i}", x, -100, wn, 0.15, f"BP{i}", f"B{i}N", "VSS", "VSS")
    caps = [("C2a", "BP2"), ("C2b", "BP2"), ("C2c", "BP2"), ("C2d", "BP2"), ("C1a", "BP1"), ("C1b", "BP1"), ("C0", "BP0"), ("CD", "VSS")]
    for k, (n, bp) in enumerate(caps):
        w, l = (dw, dl) if n == "CD" else (unit, unit)
        s.cap(n, 1000 + 140 * k, -250, w, l, 1, "REF", bp)
    s.mos("nfet_01v8", "MRST", 2300, -250, 1, 0.15, "REF", "RST", "VSS", "VSS")
    s.pins(["VSS", "VREF", "RST", "B2N", "B1N", "B0N"], ["REF"])
    s.save(f"{D}/{name}.sch")
    box_sym(f"{D}/{name}.sym", ["VSS", "VREF", "RST", "B2N", "B1N", "B0N"], ["REF"], f"unit {unit}x{unit}um")


def sar_top(name, cdac_name, note):
    s = Sch(note)
    s.inst(BASE + "/comparator.sym", "x1", 600, -300,
           {"VCC": "VCC", "PLUS": "VIN", "MINUS": "REF", "VSS": "VSS", "EN_N": "EN_N", "ADJ": "ADJ", "DIFFOUT": "COM"})
    s.inst(f"{D}/{cdac_name}.sym", "x2", 1250, -300,
           {"VSS": "VSS", "VREF": "VREF", "RST": "RST", "B2N": "B2N", "B1N": "B1N", "B0N": "B0N", "REF": "REF"})
    s.inst(BASE + "/sar_logic3_simple.sym", "x3", 1900, -300,
           {"VCC": "VCC", "VSS": "VSS", "RST": "RST", "TRY2": "TRY2", "DEC2": "DEC2", "TRY1": "TRY1", "DEC1": "DEC1",
            "TRY0": "TRY0", "DEC0": "DEC0", "COM": "COM", "D2": "D2", "D1": "D1", "D0": "D0", "B2N": "B2N", "B1N": "B1N", "B0N": "B0N"})
    ins = ["VCC", "VSS", "VREF", "VIN", "EN_N", "ADJ", "RST", "TRY2", "DEC2", "TRY1", "DEC1", "TRY0", "DEC0"]
    s.pins(ins, ["D2", "D1", "D0"])
    s.save(f"{D}/{name}.sch")
    box_sym(f"{D}/{name}.sym", ins, ["D2", "D1", "D0"], "3-bit SAR")


if __name__ == "__main__":
    cdac("cdac3_v1", UNIT, [(2, 1), (1, 0.5), (1, 0.5)], DUMMY1, CP1)
    sar_top("sar_adc3_v1", "cdac3_v1",
            "STEP 1 (area): 3-bit SAR ADC, same architecture as sar_adc3 but the CDAC unit capacitor is 8 x 8 um (133 fF) instead of 10 x 10 um x MF 5 (1.03 pF).\n"
            "MIM area 7 x 64 + 47.6 = 496 um2 instead of 4000 um2.  The comparator puts Cp = 33 fF on REF, which would give REF = VREF.code/8 x 8C/(8C + Cp) (21 mV low at code 7).\n"
            "So the dummy is made smaller by exactly Cp: 6.9 x 6.9 um (100 fF).  Total capacitance on REF is again 8C and the levels are right.")
    print("v1 written")
