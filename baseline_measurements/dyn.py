import numpy as np, subprocess, gen_sar, analysis as A
N=128; M=11; amp=0.399; off=0.4
# ---- SAR: ideal sample&hold staircase, fs=0.5 MS/s (user's 2 us timing)
x=off+amp*np.sin(2*np.pi*M*np.arange(N)/N+0.1)
for c in range(0,N,8): gen_sar.tb(f'dyn/sar{c:03d}', list(np.round(x[c:c+8],6)))
# ---- Flash: continuous sine, sampled at fs
def flash_tb(name, fs, Mf):
    fin=Mf/N*fs; tstop=(N+1)/fs
    L=["* flash dynamic",".include common.inc","x1 VCC 0 VREF VIN EN_N ADJ D2 D1 D0 flash_adc3",
       f"VIN VIN 0 SIN({off} {amp} {fin} 0 0 {0.1*180/np.pi})",".control",f"tran 0.1n {tstop*1e9:.1f}n",
       "let code = 4*(v(D2) gt 0.9) + 2*(v(D1) gt 0.9) + (v(D0) gt 0.9)","linearize code",f"wrdata {name}_wave.txt code",".endc",".end"]
    open(f"{name}.sp","w").write("\n".join(L)+"\n"); return fin
cfg=[('dyn/fl10_low',10e6,11),('dyn/fl10_nyq',10e6,61),('dyn/fl20_nyq',20e6,61)]
for n,fs,Mf in cfg: flash_tb(n,fs,Mf)
