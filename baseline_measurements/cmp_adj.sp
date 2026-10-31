comparator offset vs ADJ and common mode
.lib /home/ttuser/pdk/sky130A/libs.tech/combined/sky130.lib.spice tt
.include cmp_sub.spice
x1 VCC 0 0 MINUS PLUS ADJ OUT comparator
V1 VCC 0 1.8
VM MINUS 0 0.4
VP PLUS 0 0.4
VA ADJ 0 0.75
.control
foreach adj 0.6 0.7 0.75 0.8 0.9 1.0
 alter VA dc=$adj
 foreach vm 0.05 0.15 0.35 0.55 0.75
  alter VM dc=$vm
  dc VP 0 0.8 0.5m
  meas dc trip find v(PLUS) when v(OUT)=0.9 cross=1
  let off = (trip - $vm)*1000
  echo "ADJ=$adj VM=$vm offset_mV=$&off"
  destroy all
 end
end
.endc
.end
