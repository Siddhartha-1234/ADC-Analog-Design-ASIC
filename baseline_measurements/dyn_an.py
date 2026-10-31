import numpy as np, glob, analysis as A
N=128; M=11; amp=0.399; off=0.4
x=off+amp*np.sin(2*np.pi*M*np.arange(N)/N+0.1)
ideal=A.quantize(x, 0.1*np.arange(1,8)); si=A.sndr_enob(ideal,M)
print('ideal 3-bit (same test): SNDR %.2f dB ENOB %.2f'%si)
codes=[]
for f in sorted(glob.glob('dyn/sar*_wave.txt')):
    d=np.loadtxt(f); t=d[:,0]; codes+= [d[np.searchsorted(t,n*2e-6+1.6e-6),1] for n in range(8)]
codes=np.array(codes); print('SAR 0.5MS/s: SNDR %.2f dB ENOB %.2f  code errors vs ideal: %d'%(*A.sndr_enob(codes,M), np.sum(codes!=ideal)))
for name,fs,Mf in [('dyn/fl10_low',10e6,11),('dyn/fl10_nyq',10e6,61),('dyn/fl20_nyq',20e6,61)]:
    d=np.loadtxt(name+'_wave.txt'); t=d[:,0]
    ts=(np.arange(N)+1)/fs  # sample at end of each period
    c=np.array([d[np.searchsorted(t,tt)-1,1] for tt in ts])
    xin=off+amp*np.sin(2*np.pi*Mf/N*fs*ts+0.1)
    idl=A.quantize(xin,0.1*np.arange(1,8))
    print(f'Flash fs={fs/1e6:.0f}MS/s fin={Mf/N*fs/1e6:.2f}MHz: SNDR %.2f dB ENOB %.2f | ideal same samples: ENOB %.2f, code errors %d'%(*A.sndr_enob(c,Mf), A.sndr_enob(idl,Mf)[1], np.sum(c!=idl)))
