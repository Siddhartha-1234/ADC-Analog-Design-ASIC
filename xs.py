"""Tiny xschem schematic/symbol writer used to generate the improved SAR ADC designs.

Every component is placed with short wire stubs ending in net labels, the same style as the
user's existing schematics, so the files open and netlist normally in xschem."""
import os

PDK = "/home/ttuser/pdk/sky130A/libs.tech/xschem/sky130_fd_pr"
BASE = "/home/ttuser/Documents/ADCAnalogDesign"          # user's project folder
OUTDIR = BASE + "/SAR_improved"                          # new designs live here
HDR = "v {xschem version=3.4.5 file_version=1.2\n}\nG {}\nK {}\nV {}\nS {}\nE {}"

# pin coordinates of symbols used as instances: name -> {pin: (x, y, side)}
# side = direction the wire stub leaves the pin: 'l', 'r', 'u', 'd'
SYMS = {
    BASE + "/nand2.sym": {"A": (-80, -20, "l"), "B": (-80, 20, "l"), "Y": (80, 0, "r"), "VCC": (0, -60, "u"), "VSS": (0, 60, "d")},
    BASE + "/nor2.sym": {"A": (-80, -20, "l"), "B": (-80, 20, "l"), "Y": (80, 0, "r"), "VCC": (0, -60, "u"), "VSS": (0, 60, "d")},
    BASE + "/inverter.sym": {"VDD": (-60, -100, "u"), "IN": (-150, -20, "l"), "out": (90, -10, "r"), "VSS": (-30, 50, "d")},
    BASE + "/comparator.sym": {"VCC": (-100, -70, "l"), "PLUS": (-100, -20, "l"), "MINUS": (-100, 30, "l"), "VSS": (-100, 70, "l"),
                               "EN_N": (0, 80, "l"), "ADJ": (0, 100, "d"), "DIFFOUT": (160, 20, "r")},
}
STUB = 20


class Sch:
    def __init__(self, title=None):
        self.l = [HDR]
        self.n = 0
        if title:
            self.text(title, -400, -1000, 0.3)

    # ---- primitives -------------------------------------------------------
    def wire(self, x1, y1, x2, y2):
        self.l.append(f"N {x1} {y1} {x2} {y2} {{}}")

    def lab(self, x, y, net, flip=0):
        self.n += 1
        self.l.append(f"C {{lab_pin.sym}} {x} {y} 0 {flip} {{name=l{self.n} sig_type=std_logic lab={net}}}")

    def stub(self, x, y, side, net):
        dx, dy = {"l": (-STUB, 0), "r": (STUB, 0), "u": (0, -STUB), "d": (0, STUB)}[side]
        self.wire(x, y, x + dx, y + dy)
        self.lab(x + dx, y + dy, net, flip=1 if side == "r" else 0)

    def text(self, t, x, y, size=0.3):
        t = t.replace("{", "(").replace("}", ")")
        self.l.append(f"T {{{t}}} {x} {y} 0 0 {size} {size} {{}}")

    def mos(self, model, name, x, y, W, L, d, g, s, b, mult=1):
        """sky130 fet; model e.g. nfet_01v8, pfet_01v8_lvt.  Pins: drain/source on top/bottom as in the PDK symbol."""
        pmos = model.startswith("p")
        top, bot = (s, d) if pmos else (d, s)          # PDK pfet symbol has S on top, nfet has D on top
        self.l.append(
            f"C {{{PDK}/{model}.sym}} {x} {y} 0 0 {{name={name}\nL={L}\nW={W}\nnf=1\nmult={mult}\n"
            "ad=\"'int((nf+1)/2) * W/nf * 0.29'\" \npd=\"'2*int((nf+1)/2) * (W/nf + 0.29)'\"\n"
            "as=\"'int((nf+2)/2) * W/nf * 0.29'\" \nps=\"'2*int((nf+2)/2) * (W/nf + 0.29)'\"\n"
            "nrd=\"'0.29 / W'\" nrs=\"'0.29 / W'\"\nsa=0 sb=0 sd=0\n"
            f"model={model}\nspiceprefix=X\n}}")
        self.stub(x + 20, y - 30, "u", top)
        self.stub(x + 20, y + 30, "d", bot)
        self.stub(x - 20, y, "l", g)
        self.wire(x + 20, y, x + 60, y)
        self.lab(x + 60, y, b, flip=1)

    def cap(self, name, x, y, W, L, MF, top, bot):
        self.l.append(f"C {{{PDK}/cap_mim_m3_2.sym}} {x} {y} 0 0 {{name={name} model=cap_mim_m3_2 W={W} L={L} MF={MF} spiceprefix=X}}")
        self.stub(x, y - 30, "u", top)
        self.stub(x, y + 30, "d", bot)

    def inst(self, sym, name, x, y, conn):
        pins = SYMS[sym]
        self.l.append(f"C {{{sym}}} {x} {y} 0 0 {{name={name}}}")
        for p, net in conn.items():
            px, py, side = pins[p]
            self.stub(x + px, y + py, side, net)

    def vsrc(self, name, x, y, value, p, m="0"):
        self.l.append(f'C {{vsource.sym}} {x} {y} 0 0 {{name={name} value="{value}" savecurrent=false}}')
        self.stub(x, y - 30, "u", p)
        self.stub(x, y + 30, "d", m)

    def capa(self, name, x, y, value, p, m="0"):
        self.l.append(f"C {{capa.sym}} {x} {y} 0 0 {{name={name} m=1 value={value} footprint=1206 device=capacitor}}")
        self.stub(x, y - 30, "u", p)
        self.stub(x, y + 30, "d", m)

    def res(self, name, x, y, value, p, m):
        self.l.append(f"C {{res.sym}} {x} {y} 0 0 {{name={name} value={value} footprint=1206 device=resistor m=1}}")
        self.stub(x, y - 30, "u", p)
        self.stub(x, y + 30, "d", m)

    def code(self, x, y, value, name="s1"):
        v = value.replace('"', "'").replace("{", "(").replace("}", ")")
        self.l.append(f'C {{code_shown.sym}} {x} {y} 0 0 {{name={name} only_toplevel=false value="{v}"}}')

    def code_raw(self, x, y, value, name="s1"):
        """code_shown block that keeps ngspice braces (escaped for xschem as \\{ \\})."""
        v = value.replace('"', "'").replace("{", "\\{").replace("}", "\\}")
        self.l.append(f'C {{code_shown.sym}} {x} {y} 0 0 {{name={name} only_toplevel=false value="{v}"}}')

    def pins(self, ins, outs, inouts=(), x=-400, y=-700):
        k = 0
        for kind, lst in (("ipin", ins), ("opin", outs), ("iopin", inouts)):
            for p in lst:
                k += 1
                self.l.append(f"C {{{kind}.sym}} {x} {y} 0 0 {{name=p{k} lab={p}}}")
                y += 30

    def save(self, fname):
        os.makedirs(os.path.dirname(fname), exist_ok=True)
        with open(fname, "w") as f:
            f.write("\n".join(self.l) + "\n")


def box_sym(fname, left, right, title, bottom=(), width=180):
    """Rectangular subcircuit symbol: pins on the left/right/bottom, 20 units apart.
    Registers pin coordinates in SYMS so the symbol can be instantiated with Sch.inst."""
    n = max(len(left), len(right))
    h = 20 * n + 20
    y0 = -h // 2 + 20
    w2 = width // 2
    s = [HDR.replace("K {}", 'K {type=subcircuit\nformat="@name @pinlist @symname"\ntemplate="name=x1"\n}')]
    pins = {}
    for i, p in enumerate(left):
        y = y0 + 20 * i
        s.append(f"L 4 {-w2-20} {y} {-w2} {y} {{}}")
        s.append(f"B 5 {-w2-22.5} {y-2.5} {-w2-17.5} {y+2.5} {{name={p} dir=in}}")
        s.append(f"T {{{p}}} {-w2+5} {y-6} 0 0 0.2 0.2 {{}}")
        pins[p] = (-w2 - 20, y, "l")
    for i, p in enumerate(right):
        y = y0 + 20 * i
        s.append(f"L 4 {w2} {y} {w2+20} {y} {{}}")
        s.append(f"B 5 {w2+17.5} {y-2.5} {w2+22.5} {y+2.5} {{name={p} dir=out}}")
        s.append(f"T {{{p}}} {w2-5} {y-6} 0 1 0.2 0.2 {{}}")
        pins[p] = (w2 + 20, y, "r")
    yb = y0 + 20 * n
    for i, p in enumerate(bottom):
        x = -w2 + 30 + 40 * i
        s.append(f"L 4 {x} {yb} {x} {yb+20} {{}}")
        s.append(f"B 5 {x-2.5} {yb+17.5} {x+2.5} {yb+22.5} {{name={p} dir=in}}")
        s.append(f"T {{{p}}} {x+4} {yb-16} 0 0 0.15 0.15 {{}}")
        pins[p] = (x, yb + 20, "d")
    s.append(f"P 4 5 {-w2} {y0-20} {w2} {y0-20} {w2} {yb} {-w2} {yb} {-w2} {y0-20} {{}}")
    s.append(f"T {{@symname}} {-w2} {y0-45} 0 0 0.3 0.3 {{}}")
    s.append(f"T {{@name}} {-w2} {yb+(25 if not bottom else 30)} 0 0 0.2 0.2 {{}}")
    s.append(f"T {{{title}}} {-w2+5} {yb-18} 0 0 0.15 0.15 {{layer=8}}" if title else "")
    os.makedirs(os.path.dirname(fname), exist_ok=True)
    with open(fname, "w") as f:
        f.write("\n".join(x for x in s if x) + "\n")
    SYMS[fname] = pins
    return pins


def load_sym(fname):
    """Read pin positions of an existing box symbol (B 5 ... {name=PIN ...}) into SYMS."""
    import re as _re
    pts = []
    for line in open(fname):
        m = _re.match(r"B 5 (\S+) (\S+) (\S+) (\S+) \{name=(\S+)", line)
        if m:
            x1, y1, x2, y2 = map(float, m.groups()[:4])
            pts.append((m.group(5), (x1 + x2) / 2, (y1 + y2) / 2))
    xmin, xmax = min(p[1] for p in pts), max(p[1] for p in pts)
    pins = {}
    for n, x, y in pts:
        side = "l" if x == xmin else "r" if x == xmax else "d"
        pins[n] = (int(round(x)), int(round(y)), side)
    SYMS[fname] = pins
    return pins
