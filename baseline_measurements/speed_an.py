import numpy as np
vals=[0.05,0.15,0.25,0.35,0.45,0.55,0.65,0.75,0.105,0.195,0.305,0.395,0.405,0.495,0.605,0.695]
exp=[int(np.floor(v/0.1+1e-9)) for v in vals]
for s in [1.0,0.75,0.6,0.5,0.4,0.3]:
    d=np.loadtxt(f'speed/s{int(s*100):03d}_wave.txt'); t=d[:,0]; T=2e-6*s
    got=[int(d[np.searchsorted(t,n*T+1500e-9*s),1]) for n in range(len(vals))]
    errs=[(vals[i],exp[i],got[i]) for i in range(len(vals)) if got[i]!=exp[i]]
    E=np.trapezoid(d[:,3]+d[:,5],t)/len(vals)
    print(f"s={s}: conv time {1450*s:.0f} ns, period {2000*s:.0f} ns, wrong codes={len(errs)} {errs}  E/conv={E*1e12:.1f} pJ")
