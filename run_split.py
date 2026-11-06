"""Energy breakdown of steps 2 and 3 at 100 ns per conversion: comparator, logic and the rest on separate 1.8 V supplies."""
import sys, json
sys.path.insert(0, "/tmp/claude-0/-home-claude/c0d59e56-37f5-5bec-bea7-85999f63d6d2/scratchpad/v2")
from simlib import SIM
import test_v2, test_v3
res = {}
which = sys.argv[1:] or ["v2", "v3"]
for w in which:
    if w == "v2":
        r = test_v2.run_v2(1.0, tag="v2split", split={"x1": "VCMP", "x3": "VLOG"})
    else:
        r = test_v3.run_v3(1.0, tag="v3split", split={"x1": "VCMP", "x3": "VLOG"})
    res[w] = {k: r[k] for k in r if k.startswith("E_") or k in ("ok", "nwrong", "split_pJ")}
    print(w, res[w], flush=True)
json.dump(res, open(f"{SIM}/split_{'_'.join(which)}.json", "w"), indent=1)
