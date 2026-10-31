flash static transfer
.include common.inc
x1 VCC 0 VREF VIN EN_N ADJ D2 D1 D0 flash_adc3
VIN VIN 0 0
.control
dc VIN 0 0.8 0.25m
let code = 4*(v(D2) gt 0.9) + 2*(v(D1) gt 0.9) + (v(D0) gt 0.9)
wrdata flash_dc.txt code
let ivcc = -i(V1)
let ivref = -i(V2)
wrdata flash_dc_i.txt ivcc ivref
.endc
.end
