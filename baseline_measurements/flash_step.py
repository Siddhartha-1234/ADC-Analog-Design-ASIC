import numpy as np, subprocess
seq=[0.05,0.75,0.05,0.35,0.45,0.35,0.15,0.65,0.25,0.55,0.05,0.105,0.05,0.395,0.405,0.395,0.75,0.695,0.705]
T=600e-9
pts=["0 %g"%seq[0]]
for n,v in enumerate(seq[1:],1): pts+=["%.12g %g"%(n*T,seq[n-1]),"%.12g %g"%(n*T+1e-9,v)]
L=["* flash step latency",".include common.inc",
   "x1 VCC 0 VREF VIN EN_N ADJ D2 D1 D0 flash_adc3","VIN VIN 0 PWL("+" ".join(pts)+")",
   ".control",f"tran 0.1n {len(seq)*T*1e9:.0f}n","let code = 4*(v(D2) gt 0.9) + 2*(v(D1) gt 0.9) + (v(D0) gt 0.9)",
   "let pvcc=-i(V1)*1.8","let pvref=-i(V2)*0.8","linearize code pvcc pvref","wrdata flash_step_wave.txt code pvcc pvref",".endc",".end"]
open('flash_step.sp','w').write("\n".join(L)+"\n")
subprocess.run("ngspice -b flash_step.sp > flash_step.log 2>&1",shell=True)
d=np.loadtxt('flash_step_wave.txt'); t=d[:,0]; c=d[:,1]
print("step            final  latency(ns)")
for n in range(1,len(seq)):
    m=(t>=n*T)&(t<(n+1)*T); tt=t[m]; cc=c[m]; fin=int(np.floor(seq[n]/0.1+1e-9))
    wrong=np.where(cc!=fin)[0]
    lat=(tt[wrong[-1]+1]-n*T-1e-9)*1e9 if len(wrong) else 0.0
    ok = cc[-1]==fin
    print(f"{seq[n-1]:.3f}->{seq[n]:.3f}   {fin}  {lat:7.1f} {'OK' if ok else 'WRONG final='+str(cc[-1])}")
E=np.trapezoid(d[:,3]+d[:,5],t)/t[-1]; print('avg power uW %.1f'%(E*1e6))
