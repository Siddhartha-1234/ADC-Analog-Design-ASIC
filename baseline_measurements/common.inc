.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.include adc_subs.spice
.param adjv=0.765
V1 VCC 0 1.8
V2 VREF 0 0.8
V3 EN_N 0 0
V4 ADJ 0 {adjv}
