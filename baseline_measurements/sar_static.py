import numpy as np, glob, analysis as A
vins=[];codes=[];E=[]
for f in sorted(glob.glob('ramp/r*_wave.txt')):
    d=np.loadtxt(f); t=d[:,0]
    for n in range(8):
        i=np.searchsorted(t,n*2e-6+1.6e-6); vins.append(d[i,7]); codes.append(d[i,1])
        m=(t>=n*2e-6)&(t<(n+1)*2e-6)
        E.append((np.trapezoid(d[m,3],t[m]), np.trapezoid(d[m,5],t[m])))
vins=np.array(vins); codes=np.array(codes); E=np.array(E)
np.savetxt('sar_static_codes.txt', np.c_[vins,codes])
o=np.argsort(vins); bad=np.sum(np.diff(codes[o])<0); print('non-monotonic steps:',bad)
m=A.static_metrics(A.transitions(vins,codes,0.0025))
for k,v in m.items(): print(k,np.round(v,4))
print('energy per conversion (2 us) VCC pJ mean %.2f  VREF pJ mean %.2f  total %.2f'%(E[:,0].mean()*1e12,E[:,1].mean()*1e12,E.sum(1).mean()*1e12))
print('VREF energy range pJ', E[:,1].min()*1e12, E[:,1].max()*1e12)
np.save('sar_energy.npy',np.c_[vins,E])
