import numpy as np, subprocess, mc
NS=200; rng=np.random.default_rng(1)
txt=open('adc_subs.spice').read()
sub,devs=mc.mc_subckt(txt,'comparator','comparator_mc')
open('comparator_mc.spice','w').write(sub+'\n')
L=["* comparator offset MC", ".include common.inc", ".include comparator_mc.spice",
   "VM MINUS 0 0.4", "VP PLUS 0 0.4"]
for i in range(NS): L.append(f"xc{i} VCC 0 EN_N MINUS PLUS ADJ o{i} comparator_mc {mc.draw(devs,rng)}")
L+=[".control","dc VP 0.25 0.55 0.2m", "wrdata cmp_mc.txt "+" ".join(f"v(o{i})" for i in range(NS)), ".endc",".end"]
open('cmp_mc.sp','w').write("\n".join(L)+"\n")
subprocess.run("ngspice -b cmp_mc.sp > cmp_mc.log 2>&1", shell=True)
d=np.loadtxt('cmp_mc.txt'); vp=d[:,0]; outs=d[:,1::2]
off=[]
for i in range(NS):
    y=outs[:,i]; j=np.argmax(y>0.9)
    off.append(np.interp(0.9,[y[j-1],y[j]],[vp[j-1],vp[j]])-0.4 if j>0 else np.nan)
off=np.array(off)*1e3; np.savetxt('cmp_mc_offsets_mV.txt',off)
print(f"n={np.sum(~np.isnan(off))} mean={np.nanmean(off):.2f} mV sigma={np.nanstd(off):.2f} mV min={np.nanmin(off):.1f} max={np.nanmax(off):.1f}")
