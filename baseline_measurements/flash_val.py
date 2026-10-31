import numpy as np, subprocess, mc, re, analysis as A
txt=open('adc_subs.spice').read(); sub,devs=mc.mc_subckt(txt,'comparator','comparator_mc')
fl=re.search(r'(?ms)^\.subckt flash_adc3\b.*?^\.ends',txt).group(0)
rng=np.random.default_rng(11); NS=3; L=["* flash MC validation",".include common.inc",".include comparator_mc.spice","VIN VIN 0 0"]
draws=[]
for s in range(NS):
    body=fl.replace('.subckt flash_adc3',f'.subckt flash_mc{s}')
    ds=[]
    for k in range(1,8):
        dr=mc.draw(devs,rng); ds.append(dr)
        body=re.sub(rf'^x{k} (.*) comparator$', rf'x{k} \1 comparator_mc {dr}', body, flags=re.M)
    L.append(body); L.append(f"xf{s} VCC 0 VREF VIN EN_N ADJ a{s} b{s} c{s} flash_mc{s}")
    # per-comparator trip offsets measured separately
    for k in range(7): L.append(f"xk{s}_{k} VCC 0 EN_N MK VK ADJ ok{s}_{k} comparator_mc {ds[k]}")
L+=["VMK MK 0 0.4","VK VK 0 0.4",".control","dc VIN 0 0.8 0.25m"]
L+=["let c%d = 4*(v(a%d) gt 0.9)+2*(v(b%d) gt 0.9)+(v(c%d) gt 0.9)"%(s,s,s,s) for s in range(NS)]
L+=["wrdata fval.txt "+" ".join(f"c{s}" for s in range(NS)),"destroy all","dc VK 0.33 0.47 0.1m",
    "wrdata fval_k.txt "+" ".join(f"v(ok{s}_{k})" for s in range(NS) for k in range(7)),".endc",".end"]
open('fval.sp','w').write("\n".join(L)+"\n"); subprocess.run("ngspice -b fval.sp > fval.log 2>&1",shell=True)
d=np.loadtxt('fval.txt'); dk=np.loadtxt('fval_k.txt'); vk=dk[:,0]; ok=dk[:,1::2]
dn=np.loadtxt('flash_dc.txt'); Tn=A.transitions(dn[:,0],dn[:,1],0.25e-3)
for s in range(NS):
    T=A.transitions(d[:,0],d[:,1+2*s],0.25e-3)
    offs=[]
    for k in range(7):
        y=ok[:,s*7+k]; j=np.argmax(y>0.9); offs.append(np.interp(0.9,[y[j-1],y[j]],[vk[j-1],vk[j]])-0.4)
    pred=Tn+np.array(offs)
    print('sample',s,'SPICE T(mV)',np.round(T*1e3,1),' predicted',np.round(pred*1e3,1),' max diff %.2f mV'%(np.max(np.abs(T-pred))*1e3))
    m=A.static_metrics(T); print('   DNL',np.round(m['dnl'],3),' INL',np.round(m['inl'],3))
