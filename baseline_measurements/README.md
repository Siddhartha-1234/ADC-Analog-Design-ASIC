# Baseline measurements: sar_adc3 vs flash_adc3 (30 Oct 2026)

3-bit, VREF = 0.8 V (LSB = 100 mV), VCC = 1.8 V, ADJ = 0.765 V (zero comparator offset), sky130 tt, 27 C.

| Metric | SAR | Flash |
|---|---|---|
| Max abs DNL / INL, nominal | 0.025 / 0.025 LSB | 0.005 / 0.006 LSB |
| Max abs DNL / INL, mismatch (99.7%) | ~0 / 0.19 LSB (offset only) | 0.33 / 0.24 LSB |
| ENOB, low-frequency sine | 2.96 (ideal 2.96) | 2.96 |
| ENOB near Nyquist | - | 2.74 @10 MS/s, 2.66 @20 MS/s |
| Latency | 1.45 us (1.09 us fastest error-free) | 47 ns (67 ns at 5 mV overdrive) |
| Power | 21.7 uW | 125 uW |
| Energy / conversion | 43.5 pJ @2 us | 8.4 pJ @67 ns, 12.5 pJ @10 MS/s |
| Comparator offset (MC, 200) | sigma 6.2 mV (0.06 LSB) | same comparator |

## Run
    bash run_all.sh
Needs ngspice and python3 + numpy. `common.inc` points at
`/home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice`.
`adc_subs.spice` is the xschem netlist of your sar_adc3 / flash_adc3 / comparator / cdac3 /
sar_logic3_simple / therm2bin3. Re-export it after changing a schematic.

## Files
- `cmp_adj.sp` - comparator offset vs ADJ and input level
- `flash_dc.sp` + `analysis.py` - flash code edges, DNL, INL (analysis.py also holds the metric functions)
- `gen_sar.py` - SAR testbench generator (your TB_SAR3 timing; `s` scales all phases)
- `sar_static.py` - SAR DNL/INL from 320 conversions (2.5 mV steps) + energy per conversion
- `speed_an.py` - SAR timing sweep (16 inputs incl. 5 mV from an edge)
- `flash_step.py` - flash latency for large and small steps
- `dyn.py` / `dyn_an.py` - coherent sine tests, SNDR/ENOB (128 samples)
- `mc.py`, `run_cmp_mc.py`, `sens.py` - comparator Monte Carlo (Pelgrom Vth mismatch as a gate
  offset source per transistor, sigma = Avt/sqrt(W*L*m), SkyWater Avt) and per-transistor sensitivity
- `flash_mc.py` - 10,000 flash chips from comparator offsets + ladder resistor mismatch (1.31 %)
- `flash_val.py` - checks flash_mc against full SPICE flash Monte Carlo (agrees within 0.8 mV)

## Notes
- Run with `set num_threads=1` in .spiceinit (run_all.sh does it): two parallel ngspice runs
  with OpenMP threads each were ~30x slower.
- TB_Flash3 uses ADJ = 0.9 V, which adds +52 mV offset (half an LSB). Use 0.765 V.
- These numbers were simulated with sky130 tt models rebuilt from SkyWater's sky130_fd_pr files
  and a simplified MIM cap (2 fF/um^2 + 0.19 fF/um). Re-running on your PDK may shift them slightly.
