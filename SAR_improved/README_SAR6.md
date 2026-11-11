# 6-bit SAR ADC (6-bit version of the final v3)

Same architecture as sar_adc3_v3: top-plate sampling, Vcm-based switching, the same latch_comp,
and the same inv_min / nor2_min logic slices. All files go in SAR_improved/, next to the v3 files.

| File | What it is |
|---|---|
| cdac_vcm6.sch/.sym | CDAC: 16C, 8C, 4C, 2C, C + dummy (32C, about 1.1 pF), unit C = 4x4 um MIM. Replica VR = 31C + dummy |
| sar_logic_vcm6.sch/.sym | 6 bit slices (SR latch per bit, update flag + UP/DN for bits 5..1) |
| sar_adc6_v3.sch/.sym | Top cell: latch_comp + cdac_vcm6 + sar_logic_vcm6 |
| TB_SAR6_v3.sch | 64 conversions, VIN at the centre of every code; prints every code, nwrong, e_conv_pJ |

Changes from v3 beyond adding bits:
- Switch widths grow with the capacitor: MUk = n um, MDk = n/2 um, VCM switches max(0.5, n/4) / 2x that (n = unit caps).
- Sampling switches 4x wider (NMOS 4 um, PMOS 8 um) for the 8x larger CDAC.
- Dummy cap 3.4 x 3.4 um (was 3.7 x 3.7): trims out the extra parasitic of the wider sampling switch (gain 0.9964 -> 1.0005).

Timing (TB, 1x): 175 ns per conversion. SMP 0-20 ns, then 25 ns per bit: Ck at 24+25(5-k) ns for 4 ns,
Uk at 30+25(5-k) ns for 5 ns, read at 165 ns.

Results (my workspace: sky130 tt from SkyWater's model files, simplified MIM, 27 C, VCC 1.8, VREF 0.8, VCM 0.4, no mismatch):
- All 64 codes correct at 175, 87.5, 52.5 and 43.75 ns per conversion. 35 ns fails; a longer sample phase
  does not fix it, so the limit is the 5 ns bit cycle, not sampling.
- Energy per conversion 1.62 pJ (VCC 1.46, VREF 0.14, VCM 0.02); 9.3 uW at 175 ns.
- 239 transistors, 38.5 um2 gate area, 1015 um2 MIM (half of it is the replica). v3: 125 / 16.7 / 126.
- Capacitor mismatch (behavioural MC, PDK MIM matching 0.7 % per 4x4 unit, 10,000 runs):
  max |DNL| 0.12 LSB and max |INL| 0.13 LSB for 99.7 % of chips, no missing codes.
- Comparator offset (earlier latch_comp Monte Carlo): sigma 10 mV = 0.8 LSB at 6 bits. It shifts every code
  equally (offset error, not DNL), but at 6 bits it is now the largest error.
