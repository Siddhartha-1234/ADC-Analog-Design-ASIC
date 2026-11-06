"""Step 2 (energy): replace the always-on comparator with the latch comparator; smaller CDAC becomes possible."""
import sys
sys.path.insert(0, "/tmp/claude-0/-home-claude/c0d59e56-37f5-5bec-bea7-85999f63d6d2/scratchpad/v2")
from xs import *
import gen_v1, gen_latch

D = OUTDIR
UNIT2 = int(sys.argv[1]) if len(sys.argv) > 1 else 4
DUMMY2 = (float(sys.argv[2]), float(sys.argv[3])) if len(sys.argv) > 3 else None   # trimmed dummy W, L (um)
CP2 = float(sys.argv[4]) if len(sys.argv) > 4 else None


def sar_top_v2(name, cdac_name, unit):
    cu = 2 * unit * unit + 0.33 * 2 * unit      # simulated cap_mim_m3_2: 2.0 fF/um2 x W.L + 0.33 fF/um x (W + L)
    s = Sch(f"STEP 2 (energy): 3-bit SAR ADC with the clocked latch comparator (latch_comp) instead of the always-on comparator.\n"
            f"Unit capacitor {unit} x {unit} um (about {cu:.0f} fF, total 8C = {8*cu:.0f} fF): the latch has a smaller input capacitance than the old comparator (35 fF), so the CDAC can shrink further.\n"
            "Phases per bit: TRYi sets bit i (REF settles), then one CLK pulse makes the comparator decide (OUT = 1 if VIN > REF, held by its SR latch),\n"
            "then DECi clears bit i if OUT = 0.  The comparator only draws current during the 3 CLK pulses: no static power.")
    s.inst(f"{D}/latch_comp.sym", "x1", 600, -300, {"VDD": "VCC", "VSS": "VSS", "CLK": "CLK", "INP": "VIN", "INN": "REF", "OUT": "COM", "OUTB": "COMB_unused"})
    s.inst(f"{D}/{cdac_name}.sym", "x2", 1250, -300,
           {"VSS": "VSS", "VREF": "VREF", "RST": "RST", "B2N": "B2N", "B1N": "B1N", "B0N": "B0N", "REF": "REF"})
    s.inst(BASE + "/sar_logic3_simple.sym", "x3", 1900, -300,
           {"VCC": "VCC", "VSS": "VSS", "RST": "RST", "TRY2": "TRY2", "DEC2": "DEC2", "TRY1": "TRY1", "DEC1": "DEC1",
            "TRY0": "TRY0", "DEC0": "DEC0", "COM": "COM", "D2": "D2", "D1": "D1", "D0": "D0", "B2N": "B2N", "B1N": "B1N", "B0N": "B0N"})
    ins = ["VCC", "VSS", "VREF", "VIN", "CLK", "RST", "TRY2", "DEC2", "TRY1", "DEC1", "TRY0", "DEC0"]
    s.pins(ins, ["D2", "D1", "D0"])
    s.save(f"{D}/{name}.sch")
    box_sym(f"{D}/{name}.sym", ins, ["D2", "D1", "D0"], "3-bit SAR, latch")


if __name__ == "__main__":
    gen_latch.latch_comp()
    gen_v1.cdac("cdac3_v2", UNIT2, [(4, 1), (2, 0.5), (1, 0.5)], DUMMY2, CP2)   # bit 2 drives 4C: strong switch so REF settles in ~10 ns
    sar_top_v2("sar_adc3_v2", "cdac3_v2", UNIT2)
    print("v2 written, unit", UNIT2)
