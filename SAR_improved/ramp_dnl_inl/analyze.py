import json, numpy as np
LSB=0.1; N=8; k=np.arange(1,N)
C=json.load(open('/tmp/ramp/coarse.json')); F=json.load(open('/tmp/ramp/fine.json'))
def edges_count(vv,cc,step):
    return np.array([vv[0]-step/2+np.sum(cc<j)*step for j in k])
out={}
for v in sorted(C):
    a=np.array(sorted(C[v])); vv,cc=a[:,0],a[:,1].astype(int)
    Tc=edges_count(vv,cc,0.0025)
    nonmono=int(np.sum(np.diff(cc)<0)); missing=[j for j in range(N) if j not in set(cc)]
    bad=[(round(x*1e3,2),int(y)) for x,y in zip(vv,cc) if y<0]
    f=np.array(sorted(F[v])); fv,fc=f[:,0],f[:,1].astype(int)
    T=[]; fine_ok=[]
    for j,tc in zip(k,Tc):
        m=(fv>tc-0.0042)&(fv<tc+0.0042); x,y=fv[m],fc[m]
        ok = len(x)>3 and y[0]<j and y[-1]>=j and np.all(np.diff((y>=j).astype(int))>=0)
        fine_ok.append(bool(ok))
        T.append(x[0]-0.000125+np.sum(y<j)*0.00025 if ok else tc)
    T=np.array(T); W=np.diff(T)
    dnl=W/LSB-1; inl=(T-k*LSB)/LSB
    lep=(T[-1]-T[0])/(N-2); inl_ep=(T-(T[0]+(k-1)*lep))/lep; dnl_ep=W/lep-1
    out[v]=dict(T_mV=(T*1e3).tolist(),T_coarse_mV=(Tc*1e3).tolist(),W_mV=(W*1e3).tolist(),dnl=dnl.tolist(),inl=inl.tolist(),
        dnl_ep=dnl_ep.tolist(),inl_ep=inl_ep.tolist(),offset_mV=float((T[0]-LSB)*1e3),gain_err_LSB=float((T[-1]-T[0])/LSB-6),
        nonmono_coarse=nonmono,missing=missing,failed_sims=bad,fine_ok=fine_ok,
        maxDNL=float(abs(dnl).max()),maxINL=float(abs(inl).max()),maxINLep=float(abs(inl_ep).max()))
    print(f"\n=== {v}  coarse non-monotonic {nonmono}, missing {missing}, failed sims {bad[:5]}, fine edges ok {fine_ok}")
    print("edges mV ",np.round(T*1e3,3)); print("coarse   ",np.round(Tc*1e3,2))
    print("width mV ",np.round(W*1e3,3))
    print("DNL      ",np.round(dnl,4)); print("INL      ",np.round(inl,4)); print("INL ep   ",np.round(inl_ep,4))
    print(f"offset {out[v]['offset_mV']:.2f} mV gain {out[v]['gain_err_LSB']:.4f} LSB | max|DNL| {out[v]['maxDNL']:.4f} max|INL| {out[v]['maxINL']:.4f} max|INLep| {out[v]['maxINLep']:.4f}")
json.dump(out,open('/tmp/ramp/sar_improved_dnl_inl.json','w'),indent=1)
