# Area-reduced 6-bit SAR (sar_adc6_v3s)

Same circuit as sar_adc6_v3 with three changes:
1. Unit capacitor 2 x 2 um (was 4 x 4): 4x less MIM. Dummy trimmed to 1.25 x 1.25 um (gain error -0.54% -> -0.03%).
2. Replica array (CR, CRD on VR) built in cap_mim_m3_1 (met3-met4) so it can be drawn directly UNDER the main array
   (cap_mim_m3_2, met4-met5): no extra footprint. Check the MIM stacking rules in your PDK before layout.
3. Bottom-plate switches scaled down with the caps (min 0.42 um); sampling switch 2x the 3-bit size (was 4x).
Logic and latch comparator unchanged. Min MIM width in sky130 is 1.0 um, so 2 um units and the 1.25 um dummy are legal.

Files: cdac_vcm6s, sar_logic_vcm6s, sar_adc6_v3s (.sch/.sym); TB_SAR6_v3s (64 codes), TB_SAR6s_ramp + TB_SAR6s_ramp_hi (DNL/INL).

## Results (my workspace: sky130 tt from SkyWater's model files, MIM simplified to its nominal 2.0 fF/um2 + 0.19 fF/um, 27 C)
| | sar_adc6_v3 | sar_adc6_v3s | paper, 6-bit SAR (40 nm, Table 1) |
|---|---|---|---|
| MIM plate area | 1015 um2 (half is the replica) | 126 um2 footprint (replica stacked under) | |
| MIM + transistor gate area | ~1054 um2 | ~155 um2 | 214.76 um2 |
| Layout estimate with spacing | ~2050 um2 | ~745 um2 (~490 um2 if caps sit over the logic) | |
| Codes right (64 code centres) | 64/64 | 64/64 | |
| Fastest timing, all codes right | 43.75 ns (35 ns fails) | 43.75 ns (35 ns fails) | |
| Energy per conversion | 1.62 pJ (your PDK run) | 1.40 pJ | |
| Max DNL, nominal | 0.125 LSB (your PDK ramp, +-0.06 LSB) | 0.125 LSB (bisection, +-0.03 LSB) | |
| Max INL, end-point fit | 0.125 LSB | 0.10 LSB | |
| Offset / gain error | 0 / 0 within +-0.06 LSB | -3.5 mV (-0.28 LSB) / +0.2% | |
| Cap-mismatch DNL, 99.7% of chips | 0.12 LSB | 0.23 LSB | |
| Total DAC cap / kT/C noise | 1.1 pF / 0.06 mV | 0.3 pF / 0.12 mV (LSB 12.5 mV) | |

The -3.5 mV offset is a constant shift of every code (no DNL): with 4x less capacitance, the sampling-switch charge
injection that is not cancelled by the replica moves VX 4x more. It is far below the comparator's own mismatch offset
(sigma ~10 mV) and can be trimmed out by VCM on the replica side if needed.
