"""Step 3 (final): charge-redistribution SAR with top-plate sampling and Vcm-based switching.

- VIN is sampled onto the CDAC top plate VX (no separate sample-and-hold).
- 3 bits need only 4 unit caps: 2C (moved by D2), C (moved by D1), C dummy.  (The MSB decision needs no capacitor.)
- Each switched capacitor moves ONCE per conversion, from VCM to VREF or to 0 (no 'set then reset' waste).
- The latch comparator compares VX with a replica node VR: a capacitor sampled to VCM at the same time as VX,
  so the comparator's kickback lands equally on both inputs and cancels.
usage: python3 gen_v3.py unit [dummyW dummyL replicaW replicaL Cp]"""
import sys
sys.path.insert(0, "/tmp/claude-0/-home-claude/c0d59e56-37f5-5bec-bea7-85999f63d6d2/scratchpad/v2")
from xs import *
import gen_latch, gen_cells

D = OUTDIR
A = sys.argv[1:]
UNIT3 = int(A[0]) if A else 4
DUMMY3 = (float(A[1]), float(A[2])) if len(A) > 2 else (UNIT3, UNIT3)
REPL3 = (float(A[3]), float(A[4])) if len(A) > 4 else (2 * UNIT3, 2 * UNIT3)
CP3 = float(A[5]) if len(A) > 5 else None
INV, NOR = OUTDIR + "/inv_min.sym", OUTDIR + "/nor2_min.sym"   # minimum-size cells (gen_cells.py)
cmim = lambda w, l: 2 * w * l + 0.33 * (w + l)      # cap_mim_m3_2 as simulated: 2.0 fF/um2 x W.L + 0.33 fF/um x (W + L)


def cdac_vcm(name, unit, dummy, repl, cp):
    cu, cd, cr = cmim(unit, unit), cmim(*dummy), cmim(*repl)
    s = Sch(f"{name}: sampling CDAC with Vcm-based switching.  Unit C = cap_mim_m3_2 {unit} x {unit} um (about {cu:.0f} fF).\n"
            "SMP = 1: transmission gate MS1/MS2 connects VX to VIN (VX tracks VIN); bottom plates of CA (2C) and CB (C) sit at VCM.\n"
            "SMP = 0: VX floats and holds VIN.  Later each bottom plate moves ONCE: to VREF (VX goes up) or to 0 V (VX goes down).\n"
            "dVX = (Vbottom - VCM) x Ci / Ctotal:  CA moves VX by +-VREF/4, CB by +-VREF/8, when Ctotal = 4C.\n"
            f"Dummy CD = {dummy[0]} x {dummy[1]} um (about {cd:.0f} fF) = C - Cp" + (f" (Cp = {cp:.0f} fF measured: comparator input + switch junctions), so Ctotal = 4C exactly.\n" if cp else ".\n") +
            f"Replica VR: CR = {repl[0]} x {repl[1]} um (about {cr:.0f} fF) is sampled to VCM by the same kind of switch, so VR has the same capacitance as VX:\n"
            "the comparator's kickback then moves VX and VR equally and cancels.  Switches: MUx to VREF (UPx = 1), MDx to 0 (DNx = 1), MTx to VCM (while Ex = 0).\n"
            "MUx is an NMOS: with its gate at 1.8 V it has 1 V of drive at 0.8 V, so the bottom plate stays put while the comparator kicks VX.")
    # sampling switches: VX <- VIN and VR <- VCM (identical, so their charge injection is also similar)
    s.mos("nfet_01v8", "MS1", 0, -300, 1, 0.15, "VX", "SMP", "VIN", "VSS")
    s.mos("pfet_01v8", "MS2", 300, -300, 2, 0.15, "VX", "SMPB", "VIN", "VCC")
    s.mos("nfet_01v8", "MR1", 0, 0, 1, 0.15, "VR", "SMP", "VCM", "VSS")
    s.mos("pfet_01v8", "MR2", 300, 0, 2, 0.15, "VR", "SMPB", "VCM", "VCC")
    s.mos("pfet_01v8", "MSIP", -400, -350, 1, 0.15, "SMPB", "SMP", "VCC", "VCC")
    s.mos("nfet_01v8", "MSIN", -400, -150, 0.5, 0.15, "SMPB", "SMP", "VSS", "VSS")
    # bottom-plate drivers
    # NMOS switches to VREF (gate 1.8 V -> 1 V of drive at 0.8 V): a PMOS from VREF has only 0.8 V of gate drive and is so
    # resistive that the bottom plate floats during the comparator's kick, which then lands on VX three times larger than on VR.
    for k, x, wu, wd in (("A", 700, 2, 1), ("B", 1500, 1, 0.5)):      # cap A is 2C: twice the switch width
        s.mos("nfet_01v8", f"MU{k}", x, -400, wu, 0.15, "VREF", f"UP{k}", f"BP{k}", "VSS")
        s.mos("nfet_01v8", f"MD{k}", x, -150, wd, 0.15, f"BP{k}", f"DN{k}", "VSS", "VSS")
        s.mos("nfet_01v8", f"MT{k}n", x + 300, -400, 0.5, 0.15, f"BP{k}", f"E{k}B", "VCM", "VSS")
        s.mos("pfet_01v8", f"MT{k}p", x + 300, -150, 1, 0.15, f"BP{k}", f"E{k}", "VCM", "VCC")
    caps = [("CA1", "BPA", unit, unit), ("CA2", "BPA", unit, unit), ("CB", "BPB", unit, unit), ("CD", "VSS", *dummy)]
    for k, (n, bp, w, l) in enumerate(caps):
        s.cap(n, 2400 + 140 * k, -300, w, l, 1, "VX", bp)
    s.cap("CR", 2400, 50, repl[0], repl[1], 1, "VR", "VSS")
    ins = ["VCC", "VSS", "VREF", "VCM", "VIN", "SMP", "UPA", "DNA", "EA", "EAB", "UPB", "DNB", "EB", "EBB"]
    s.pins(ins, ["VX", "VR"])
    s.save(f"{D}/{name}.sch")
    box_sym(f"{D}/{name}.sym", ins, ["VX", "VR"], f"Vcm CDAC {unit}x{unit}um")


def sar_logic_vcm(name):
    s = Sch(f"{name}: SAR logic for Vcm-based switching, built from minimum-size inverters and NOR2 gates (inv_min, nor2_min).\n"
            "Ck (k = 2, 1, 0) marks the comparator decision for bit k (the comparator clock CLK pulses at the same time).\n"
            "Bit latch (NOR SR):  Sk = Ck.COM,  Rk = Ck.COMB  ->  Dk = comparator decision taken during Ck (held afterwards).\n"
            "Update flag (NOR SR): Uk sets Ek = 1, SMP clears it.  Switch controls:  UPk = NOR(EkB, Dk) = Ek.(not Dk) (bottom plate to VREF when Dk = 0),\n"
            "DNk = NOR(EkB, DkB) = Ek.Dk (bottom plate to 0 when Dk = 1), and while Ek = 0 the plate stays at VCM.  D2 drives cap A (2C), D1 drives cap B (C).")
    caps = {2: "A", 1: "B", 0: None}
    for row, k in enumerate((2, 1, 0)):
        y = row * 700
        s.text(f"bit {k}" + (f"  (drives cap {caps[k]})" if caps[k] else "  (no capacitor: last decision)"), -100, y - 150, 0.4)
        s.inst(INV, f"xi{k}", 200, y, {"IN": f"C{k}", "out": f"C{k}B", "VDD": "VCC", "VSS": "VSS"})
        s.inst(NOR, f"xs{k}", 600, y - 100, {"A": f"C{k}B", "B": "COMB", "Y": f"S{k}", "VCC": "VCC", "VSS": "VSS"})
        s.inst(NOR, f"xr{k}", 600, y + 120, {"A": f"C{k}B", "B": "COM", "Y": f"R{k}", "VCC": "VCC", "VSS": "VSS"})
        s.inst(NOR, f"xd{k}", 1000, y - 100, {"A": f"R{k}", "B": f"D{k}B", "Y": f"D{k}", "VCC": "VCC", "VSS": "VSS"})
        s.inst(NOR, f"xdb{k}", 1000, y + 120, {"A": f"S{k}", "B": f"D{k}", "Y": f"D{k}B", "VCC": "VCC", "VSS": "VSS"})
        if caps[k]:
            c = caps[k]
            s.inst(NOR, f"xe{k}", 1450, y - 100, {"A": "SMP", "B": f"E{c}B", "Y": f"E{c}", "VCC": "VCC", "VSS": "VSS"})
            s.inst(NOR, f"xeb{k}", 1450, y + 120, {"A": f"U{k}", "B": f"E{c}", "Y": f"E{c}B", "VCC": "VCC", "VSS": "VSS"})
            s.inst(NOR, f"xu{k}", 1900, y - 100, {"A": f"E{c}B", "B": f"D{k}", "Y": f"UP{c}", "VCC": "VCC", "VSS": "VSS"})
            s.inst(NOR, f"xn{k}", 1900, y + 120, {"A": f"E{c}B", "B": f"D{k}B", "Y": f"DN{c}", "VCC": "VCC", "VSS": "VSS"})
    ins = ["VCC", "VSS", "SMP", "C2", "C1", "C0", "U2", "U1", "COM", "COMB"]
    outs = ["D2", "D1", "D0", "UPA", "DNA", "EA", "EAB", "UPB", "DNB", "EB", "EBB"]
    s.pins(ins, outs)
    s.save(f"{D}/{name}.sch")
    box_sym(f"{D}/{name}.sym", ins, outs, "SAR logic (Vcm)")


def sar_top_v3(name, unit, dummy, repl):
    cu = cmim(unit, unit)
    s = Sch(f"STEP 3 (final): 3-bit charge-redistribution SAR ADC: top-plate sampling + Vcm-based switching + latch comparator.\n"
            f"CDAC: 2C, C and a dummy with C = {unit} x {unit} um MIM (about {cu:.0f} fF).  The comparator compares VX with VR (a replica node sampled to VCM = VREF/2).\n"
            "Conversion: SMP (sample VIN on VX, VCM on VR)  ->  C2: decide D2 = (VIN > VREF/2)  ->  U2: move cap A to VREF (D2 = 0) or 0 V (D2 = 1)\n"
            "->  C1: decide D1  ->  U1: move cap B  ->  C0: decide D0.   Code = D2 D1 D0.  CLK (comparator clock) pulses during C2, C1, C0.\n"
            "All phases come from outside (a counter or the CiM controller in a real chip).")
    s.inst(f"{D}/latch_comp.sym", "x1", 600, -300, {"VDD": "VCC", "VSS": "VSS", "CLK": "CLK", "INP": "VX", "INN": "VR", "OUT": "COM", "OUTB": "COMB"})
    s.inst(f"{D}/cdac_vcm3.sym", "x2", 1300, -300,
           {p: p for p in ["VCC", "VSS", "VREF", "VCM", "VIN", "SMP", "UPA", "DNA", "EA", "EAB", "UPB", "DNB", "EB", "EBB", "VX", "VR"]})
    s.inst(f"{D}/sar_logic_vcm3.sym", "x3", 2100, -300,
           {p: p for p in ["VCC", "VSS", "SMP", "C2", "C1", "C0", "U2", "U1", "COM", "COMB", "D2", "D1", "D0",
                           "UPA", "DNA", "EA", "EAB", "UPB", "DNB", "EB", "EBB"]})
    ins = ["VCC", "VSS", "VREF", "VCM", "VIN", "SMP", "CLK", "C2", "U2", "C1", "U1", "C0"]
    s.pins(ins, ["D2", "D1", "D0"])
    s.save(f"{D}/{name}.sch")
    box_sym(f"{D}/{name}.sym", ins, ["D2", "D1", "D0"], "3-bit SAR, Vcm")


if __name__ == "__main__":
    gen_latch.latch_comp()
    gen_cells.cells()
    cdac_vcm("cdac_vcm3", UNIT3, DUMMY3, REPL3, CP3)
    sar_logic_vcm("sar_logic_vcm3")
    sar_top_v3("sar_adc3_v3", UNIT3, DUMMY3, REPL3)
    print("v3 written: unit", UNIT3, "dummy", DUMMY3, "replica", REPL3)
