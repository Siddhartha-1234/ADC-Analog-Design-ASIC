import numpy as np, subprocess, mc, re
txt=open('adc_subs.spice').read(); sub,devs=mc.mc_subckt(txt,'comparator','comparator_mc')
L=["* offset sensitivity",".include common.inc",".include comparator_mc.spice","VM MINUS 0 0.4","VP PLUS 0 0.4"]
L.append("xc0 VCC 0 EN_N MINUS PLUS ADJ o0 comparator_mc")
for i,(p,sig,inst,*_ ) in enumerate(devs,1): L.append(f"xc{i} VCC 0 EN_N MINUS PLUS ADJ o{i} comparator_mc {p}={sig}")
n=len(devs)+1
L+=[".control","dc VP 0.33 0.47 0.1m","wrdata sens.txt "+" ".join(f"v(o{i})" for i in range(n)),".endc",".end"]
open('sens.sp','w').write("\n".join(L)+"\n"); subprocess.run("ngspice -b sens.sp > sens.log 2>&1",shell=True)
d=np.loadtxt('sens.txt'); vp=d[:,0]; o=d[:,1::2]
def trip(y): j=np.argmax(y>0.9); return np.interp(0.9,[y[j-1],y[j]],[vp[j-1],vp[j]])
t0=trip(o[:,0]); rows=[]
for i,(p,sig,inst,model,W,L_) in enumerate(devs,1): rows.append((abs(trip(o[:,i])-t0)*1e3,inst,model,W,L_,sig*1e3))
rows.sort(reverse=True); tot=np.sqrt(sum(r[0]**2 for r in rows))
print(f"predicted sigma from 1-sigma shifts: {tot:.2f} mV")
for r in rows: print(f"{r[1]:5s} {r[2]:14s} W={r[3]:<4} L={r[4]:<5} sigVth={r[5]:5.2f} mV -> offset shift {r[0]:5.2f} mV ({100*r[0]**2/tot**2:4.1f}% of variance)")
