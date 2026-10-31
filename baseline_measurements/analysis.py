import numpy as np
LSB=0.1; NB=3
def transitions(vin, code, step):
    o=np.argsort(vin); vin=np.asarray(vin)[o]; code=np.asarray(code)[o]
    T=[]
    for k in range(1,2**NB):
        n=int(np.sum(code<k))
        T.append(vin[0]-step/2 + n*step)
    return np.array(T)
def static_metrics(T):
    k=np.arange(1,2**NB)
    dnl=np.diff(T)/LSB-1                     # codes 1..6
    inl=(T-k*LSB)/LSB                        # vs ideal transitions k*LSB
    # end-point fit (removes offset and gain error)
    lsb_ep=(T[-1]-T[0])/(2**NB-2)
    inl_ep=(T-(T[0]+(k-1)*lsb_ep))/lsb_ep
    return dict(T=T, dnl=dnl, inl=inl, inl_ep=inl_ep, offset_mV=(T[0]-LSB)*1e3,
                gain_err_LSB=(T[-1]-T[0])/LSB-(2**NB-2))
def quantize(v, T):
    return np.searchsorted(T, v, side='right')
def sndr_enob(codes, M):
    x=(np.asarray(codes,float)+0.5)*LSB; x-=x.mean(); N=len(x)
    X=np.abs(np.fft.rfft(x))**2
    ps=X[M]; pn=X[1:].sum()-ps
    sndr=10*np.log10(ps/pn); return sndr,(sndr-1.76)/6.02
if __name__=="__main__":
    d=np.loadtxt('flash_dc.txt'); m=static_metrics(transitions(d[:,0],d[:,1],0.25e-3))
    for k,v in m.items(): print(k, np.round(v,4))
