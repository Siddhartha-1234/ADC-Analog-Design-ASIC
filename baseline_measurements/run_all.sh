#!/bin/bash
# Baseline measurement suite for sar_adc3 and flash_adc3 (3-bit, VREF=0.8 V, LSB=100 mV)
# Run from this folder:  bash run_all.sh      (needs ngspice >= 40, python3 with numpy)
# adc_subs.spice is the netlist of your schematics exported by xschem; regenerate it if you change them.
set -e
cd "$(dirname "$0")"
echo 'set num_threads=1' > .spiceinit          # avoids OpenMP slow-down when two ngspice runs in parallel
export SPICE_INIT_DIR=$PWD
ngspice -b cmp_adj.sp | grep ADJ=              # comparator offset vs ADJ (pick ADJ for zero offset)
ngspice -b flash_dc.sp > /dev/null; python3 analysis.py            # flash DNL/INL (DC sweep)
mkdir -p ramp speed dyn
python3 -c "
import gen_sar,numpy as np
v=np.round(np.arange(0.00125,0.8,0.0025),6)
for c in range(0,len(v),8): gen_sar.tb(f'ramp/r{c:03d}', list(v[c:c+8]))
vals=[0.05,0.15,0.25,0.35,0.45,0.55,0.65,0.75,0.105,0.195,0.305,0.395,0.405,0.495,0.605,0.695]
for s in [1.0,0.75,0.6,0.5,0.4,0.3]: gen_sar.tb(f'speed/s{int(s*100):03d}', vals, s=s, T=2e-6*s, step='0.5n')
"
ls ramp/*.sp | xargs -P2 -I{} sh -c 'ngspice -b {} > {}.log 2>&1'
python3 sar_static.py                          # SAR DNL/INL + energy per conversion
ls speed/*.sp | xargs -P2 -I{} sh -c 'ngspice -b {} > {}.log 2>&1'; python3 speed_an.py   # SAR timing limit
python3 flash_step.py                          # flash latency
python3 dyn.py; ls dyn/*.sp | xargs -P2 -I{} sh -c 'ngspice -b {} > {}.log 2>&1'; python3 dyn_an.py   # ENOB
python3 run_cmp_mc.py; python3 sens.py         # comparator offset Monte Carlo + per-transistor sensitivity
python3 flash_mc.py; python3 flash_val.py      # flash DNL/INL under mismatch, and SPICE check
