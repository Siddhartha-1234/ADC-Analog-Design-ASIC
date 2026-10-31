import numpy as np, analysis as A
rng=np.random.default_rng(7)
off=np.loadtxt('cmp_mc_offsets_mV.txt')*1e-3
d=np.loadtxt('flash_dc.txt'); Tnom=A.transitions(d[:,0],d[:,1],0.25e-3)
sig_r=0.0347/np.sqrt(0.35*20)   # res_high_po_0p35 body Pelgrom, W=0.35 L=20
NS=10000; res=[]
for _ in range(NS):
    R=1+rng.normal(0,sig_r,8); taps=0.8*np.cumsum(R)[:7]/R.sum()
    T=Tnom+(taps-0.1*np.arange(1,8))+rng.choice(off,7)-off.mean()
    m=A.static_metrics(np.sort(T)); res.append((np.max(np.abs(m['dnl'])),np.max(np.abs(m['inl'])),np.all(np.diff(T)>0)))
res=np.array(res)
print(f"res sigma={sig_r*100:.2f}%")
for name,col in [('|DNL|max',0),('|INL|max',1)]:
    print(name, 'mean %.3f  p95 %.3f  p99.7 %.3f LSB'%(res[:,col].mean(),np.percentile(res[:,col],95),np.percentile(res[:,col],99.7)))
print('missing-code/bubble-order prob', 1-res[:,2].mean())
