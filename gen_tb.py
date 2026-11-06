"""xschem testbenches (same style as TB_SAR3.sch) for the latch comparator and the improved SARs.
Each SAR testbench converts 8 inputs at the middle of each code (0.05, 0.15 ... 0.75 V -> codes 0..7),
prints the codes and the energy per conversion, and plots the important nodes."""
import sys, json
sys.path.insert(0, "/tmp/claude-0/-home-claude/c0d59e56-37f5-5bec-bea7-85999f63d6d2/scratchpad/v2")
from xs import *

D = OUTDIR
LIB = ".lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt"
OPT = ".option method=gear reltol=1e-4"
MID = [round(0.05 + 0.1 * k, 2) for k in range(8)]
CODE = "let code = 4*ceil((v(D2)-0.9)/10) + 2*ceil((v(D1)-0.9)/10) + ceil((v(D0)-0.9)/10)"
# conversion period in ns for each version (set from the simulation results; see the working notes)
TIMING = json.load(open("/tmp/claude-0/-home-claude/c0d59e56-37f5-5bec-bea7-85999f63d6d2/scratchpad/v2/tb_timing.json")) if len(sys.argv) < 2 else json.loads(sys.argv[1])


def f(x):
    return f"{x:.6g}"


def pulse(a, b, P):
    """0 -> 1.8 V pulse from a to b (ns), repeating every P ns."""
    return f"PULSE(0 1.8 {f(a)}n 0.1n 0.1n {f(b - a - 0.1)}n {f(P)}n)"


def vin_pwl(P, tchg, edge=0.5):
    pts = [f"0 {MID[0]}"]
    for k in range(1, len(MID)):
        t = k * P + tchg
        pts += [f"{f(t)}n {MID[k-1]}", f"{f(t + edge)}n {MID[k]}"]
    return "PWL(" + " ".join(pts) + ")"


def code_meas(P, tread):
    return "\n".join(f"meas tran code{k+1} find code at={f(k * P + tread)}n" for k in range(len(MID)))


def sources(s, srcs, x0=-300, y0=200, dx=170, per_row=7):
    for i, (name, value, p) in enumerate(srcs):
        s.vsrc(name, x0 + dx * (i % per_row), y0 + 160 * (i // per_row), value, p)


# ---------------------------------------------------------------- latch comparator
def tb_latch():
    s = Sch("TB_latch_comp: two copies of the latch comparator, CLK = 100 MHz (evaluate while CLK = 1), INN = 0.4 V.\n"
            "x1: INP ramps 0.38 -> 0.42 V over 2 us (0.2 mV per decision) -> offset = INP when OUT1 first goes high, minus 0.4 V.\n"
            "x2: INP = 0.41 V (10 mV overdrive) -> decision time (CLK edge to Y at VDD/2) and energy per decision from its own supply VDD2.\n"
            "Expected (tt): offset ~0 mV, decision ~0.54 ns, ~96 fJ per decision, no current between decisions.")
    load_sym(f"{D}/latch_comp.sym")
    s.inst(f"{D}/latch_comp.sym", "x1", 500, -350, {"VDD": "VDD1", "VSS": "0", "CLK": "CLK", "INP": "INP1", "INN": "INN", "OUT": "OUT1", "OUTB": "OUTB1"})
    s.inst(f"{D}/latch_comp.sym", "x2", 900, -350, {"VDD": "VDD2", "VSS": "0", "CLK": "CLK", "INP": "INP2", "INN": "INN", "OUT": "OUT2", "OUTB": "OUTB2"})
    sources(s, [("V1", "1.8", "VDD1"), ("V2", "1.8", "VDD2"), ("V3", "PULSE(0 1.8 5n 50p 50p 4.95n 10n)", "CLK"),
                ("V4", "0.4", "INN"), ("V5", "PWL(0 0.38 2u 0.42)", "INP1"), ("V6", "0.41", "INP2")])
    s.code(-900, -950, f"""{LIB}
{OPT}
.control
save all
tran 10p 2u
* offset of x1: input where the decision changes (ramp 0.2 mV per clock)
meas tran vtrip find v(INP1) when v(OUT1)=0.9 rise=1 td=30n
let offset_mV = (vtrip - 0.4)*1000
print offset_mV
* decision time of x2 at the 10th clock edge
meas tran tck when v(CLK)=0.9 rise=10
meas tran ty when v(x2.Y)=0.9 rise=10
let tdecide_ps = (ty - tck)*1e12
print tdecide_ps
* energy per decision of x2: 100 clock cycles
let p2 = 1.8*(-i(V2))
meas tran e100 integ p2 from=5n to=1.005u
let e_fJ = e100/100*1e15
print e_fJ
plot v(CLK) v(x2.X)+2 v(x2.Y)+2 v(OUT2)+4
plot v(INP1) v(INN)
plot v(OUT1)
.endc""")
    s.save(f"{D}/TB_latch_comp.sch")


def tb_latch_mc():
    s = Sch("TB_latch_mc: Monte Carlo offset of the latch comparator (sky130 mismatch models, corner tt_mm), same method as montecarloFlash.sch.\n"
            "Every run: CLK = 200 MHz, INN = 0.4 V, INP ramps 0.35 -> 0.45 V in 500 ns (1 mV per decision); offset = INP where OUT first rises - 0.4 V.\n"
            "Results go to mc_latch.txt (one offset in mV per run).  My estimate with the PDK mismatch numbers: sigma ~10 mV.")
    load_sym(f"{D}/latch_comp.sym")
    s.inst(f"{D}/latch_comp.sym", "x1", 500, -350, {"VDD": "VDD", "VSS": "0", "CLK": "CLK", "INP": "INP", "INN": "INN", "OUT": "OUT", "OUTB": "OUTB"})
    sources(s, [("V1", "1.8", "VDD"), ("V3", "PULSE(0 1.8 2.5n 50p 50p 2.45n 5n)", "CLK"), ("V4", "0.4", "INN"),
                ("V5", "PWL(0 0.35 500n 0.45)", "INP")])
    s.code_raw(-900, -950, f"""{LIB}_mm
{OPT}
.control
  setseed 42
  let mc_runs = 50
  let run = 0
  setplot new
  set scratch = $curplot
  let os = unitvec(mc_runs)
  dowhile run < mc_runs
    reset
    tran 20p 500n
    meas tran vt find v(INP) when v(OUT)=0.9 rise=1 td=15n
    let {{$scratch}}.os[run] = (vt - 0.4)*1000
    let run = run + 1
  end
  setplot $scratch
  let avg = mean(os)
  let sd = sqrt(mean((os - avg)^2))
  print avg sd
  set width=200
  print os > mc_latch.txt
.endc""")
    s.save(f"{D}/TB_latch_mc.sch")


# ---------------------------------------------------------------- step 1 (your TB_SAR3 phases, scaled)
def tb_v1(P):
    k = P / 2000.0
    ph = dict(TRY2=(150, 400), DEC2=(450, 550), TRY1=(600, 850), DEC1=(900, 1000), TRY0=(1050, 1300), DEC0=(1350, 1450))
    s = Sch(f"TB_SAR3_v1: step-1 SAR (unit capacitor 8 x 8 um).  Same phases as TB_SAR3 scaled to {f(P)} ns per conversion.\n"
            "VIN = 0.05, 0.15 ... 0.75 V (middle of each code), changing during RST -> expected codes 0 ... 7 (code1 ... code8).\n"
            "Energy per conversion = energy from VCC + VREF + ADJ over the 8 conversions / 8.  ADJ = 0.75 V as in your SAR test.")
    load_sym(f"{D}/sar_adc3_v1.sym")
    s.inst(f"{D}/sar_adc3_v1.sym", "x1", 500, -350, {p: p for p in ["VCC", "VREF", "VIN", "EN_N", "ADJ", "RST", "TRY2", "DEC2", "TRY1",
                                                                     "DEC1", "TRY0", "DEC0", "D2", "D1", "D0"]} | {"VSS": "0"})
    srcs = [("V1", "1.8", "VCC"), ("V2", "0.8", "VREF"), ("V3", "0", "EN_N"), ("V4", "0.75", "ADJ"),
            ("V5", vin_pwl(P, 15 * k), "VIN"), ("V6", f"PULSE(1.8 0 {f(100*k)}n 0.1n 0.1n {f(P - 100*k - 0.2)}n {f(P)}n)", "RST")]
    for i, (n, (a, b)) in enumerate(ph.items()):
        srcs.append((f"V{7+i}", pulse(a * k, b * k, P), n))
    sources(s, srcs)
    T = 8 * P
    s.code(-900, -1050, f"""{LIB}
{OPT}
.control
save all
tran {f(P/4000)}n {f(T)}n
{CODE}
{code_meas(P, 1600 * k)}
let ptot = 1.8*(-i(V1)) + 0.8*(-i(V2)) + 0.75*(-i(V4))
meas tran etot integ ptot from=0 to={f(T)}n
let e_conv_pJ = etot/8*1e12
let p_uW = etot/{f(T)}e-9*1e6
print e_conv_pJ p_uW
plot v(VIN) v(x1.REF)
plot v(D2) v(D1)+2 v(D0)+4
plot code v(VIN)
.endc""")
    s.save(f"{D}/TB_SAR3_v1.sch")


# ---------------------------------------------------------------- step 2 (latch comparator, 100 ns phases scaled)
PH2 = dict(RST=(0, 10), TRY2=(12, 22), C2=(24, 28), DEC2=(30, 35), TRY1=(37, 47), C1=(49, 53), DEC1=(55, 60),
           TRY0=(62, 72), C0=(74, 78), DEC0=(80, 85))


def tb_v2(P):
    k = P / 100.0
    s = Sch(f"TB_SAR3_v2: step-2 SAR (latch comparator).  {f(P)} ns per conversion: RST, then for each bit TRYi -> one CLK pulse (decision) -> DECi.\n"
            "CLK has three pulses per conversion (PWL repeated with r=0).  VIN = 0.05 ... 0.75 V -> expected codes 0 ... 7.\n"
            "Energy per conversion = energy from VCC + VREF / 8.")
    load_sym(f"{D}/sar_adc3_v2.sym")
    s.inst(f"{D}/sar_adc3_v2.sym", "x1", 500, -350, {p: p for p in ["VCC", "VREF", "VIN", "CLK", "RST", "TRY2", "DEC2", "TRY1",
                                                                     "DEC1", "TRY0", "DEC0", "D2", "D1", "D0"]} | {"VSS": "0"})
    clk = []
    for n in ("C2", "C1", "C0"):
        a, b = PH2[n]
        clk += [f"{f(a*k)}n 0", f"{f(a*k + 0.1)}n 1.8", f"{f(b*k)}n 1.8", f"{f(b*k + 0.1)}n 0"]
    srcs = [("V1", "1.8", "VCC"), ("V2", "0.8", "VREF"), ("V5", vin_pwl(P, 2 * k), "VIN"),
            ("V6", "PWL(0 0 " + " ".join(clk) + f" {f(P)}n 0) r=0", "CLK")]
    for i, n in enumerate(["RST", "TRY2", "DEC2", "TRY1", "DEC1", "TRY0", "DEC0"]):
        a, b = PH2[n]
        srcs.append((f"V{7+i}", pulse(a * k, b * k, P), n))
    sources(s, srcs)
    T = 8 * P
    s.code(-900, -1050, f"""{LIB}
{OPT}
.control
save all
tran {f(P/4000)}n {f(T)}n
{CODE}
{code_meas(P, 90 * k)}
let ptot = 1.8*(-i(V1)) + 0.8*(-i(V2))
meas tran etot integ ptot from=0 to={f(T)}n
let e_conv_pJ = etot/8*1e12
let p_uW = etot/{f(T)}e-9*1e6
print e_conv_pJ p_uW
plot v(VIN) v(x1.REF)
plot v(CLK) v(x1.COM)+2
plot v(D2) v(D1)+2 v(D0)+4
plot code v(VIN)
.endc""")
    s.save(f"{D}/TB_SAR3_v2.sch")


# ---------------------------------------------------------------- step 3 (final)
PH3 = dict(SMP=(0, 20), C2=(24, 28), U2=(30, 35), C1=(49, 53), U1=(55, 60), C0=(74, 78))


def tb_v3(P):
    k = P / 100.0
    s = Sch(f"TB_SAR3_v3: final SAR (top-plate sampling, Vcm-based switching, latch comparator).  {f(P)} ns per conversion:\n"
            "SMP (VIN sampled on VX, VCM on VR) -> C2 (decide D2) -> U2 (move cap A) -> C1 (decide D1) -> U1 (move cap B) -> C0 (decide D0).\n"
            "CLK (comparator clock) pulses together with C2, C1 and C0.  The same design works down to 20 ns per conversion (scale every time by the same factor).\n"
            "VIN = 0.05 ... 0.75 V -> expected codes 0 ... 7.  Energy per conversion = energy from VCC + VREF + VCM / 8 (energy taken from VIN printed separately).")
    load_sym(f"{D}/sar_adc3_v3.sym")
    s.inst(f"{D}/sar_adc3_v3.sym", "x1", 500, -350, {p: p for p in ["VCC", "VREF", "VCM", "VIN", "SMP", "CLK", "C2", "U2", "C1", "U1", "C0",
                                                                     "D2", "D1", "D0"]} | {"VSS": "0"})
    clk = []
    for n in ("C2", "C1", "C0"):
        a, b = PH3[n]
        clk += [f"{f(a*k)}n 0", f"{f(a*k + 0.1)}n 1.8", f"{f(b*k)}n 1.8", f"{f(b*k + 0.1)}n 0"]
    srcs = [("V1", "1.8", "VCC"), ("V2", "0.8", "VREF"), ("V3", "0.4", "VCM"), ("V5", vin_pwl(P, 2 * k), "VIN"),
            ("V4", "PWL(0 0 " + " ".join(clk) + f" {f(P)}n 0) r=0", "CLK")]
    for i, (n, (a, b)) in enumerate(PH3.items()):
        srcs.append((f"V{6+i}", pulse(a * k, b * k, P), n))
    sources(s, srcs)
    T = 8 * P
    s.code(-900, -1050, f"""{LIB}
{OPT}
.control
save all
tran {f(P/4000)}n {f(T)}n
{CODE}
{code_meas(P, 90 * k)}
let ptot = 1.8*(-i(V1)) + 0.8*(-i(V2)) + 0.4*(-i(V3))
let pin = v(VIN)*(-i(V5))
meas tran etot integ ptot from=0 to={f(T)}n
meas tran ein integ pin from=0 to={f(T)}n
let e_conv_pJ = etot/8*1e12
let e_from_vin_pJ = ein/8*1e12
let p_uW = etot/{f(T)}e-9*1e6
print e_conv_pJ p_uW e_from_vin_pJ
plot v(VIN) v(x1.VX) v(x1.VR)
plot v(SMP) v(CLK)+2 v(x1.COM)+4
plot v(x1.x2.BPA) v(x1.x2.BPB)
plot v(D2) v(D1)+2 v(D0)+4
plot code v(VIN)
.endc""")
    s.save(f"{D}/TB_SAR3_v3.sch")


if __name__ == "__main__":
    tb_latch()
    tb_latch_mc()
    tb_v1(TIMING["v1"])
    tb_v2(TIMING["v2"])
    tb_v3(TIMING["v3"])
    print("testbenches written", TIMING)
