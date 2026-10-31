import re, numpy as np
SLOPE={'nfet_01v8':3.356e-3,'pfet_01v8':5.856e-3,'nfet_01v8_lvt':5.456e-3,'pfet_01v8_lvt':1.389e-2}
def join_lines(txt):
    return re.sub(r'\n\+', ' ', txt)
def mc_subckt(subs_txt, name, newname):
    """copy subckt `name` with a gate offset source on every MOSFET; offsets are subckt params"""
    body=re.search(rf'(?ms)^\.subckt {name}\b.*?^\.ends', join_lines(subs_txt)).group(0)
    lines=body.split('\n'); devs=[]; out=[]
    for ln in lines[1:]:
        m=re.match(r'^(XM\w+)\s+(\S+)\s+(\S+)\s+(\S+)\s+(\S+)\s+sky130_fd_pr__(\S+)\s+(.*)$', ln)
        if m:
            inst,d,g,s,b,model,rest=m.groups()
            W=float(re.search(r'\bW=([\d.]+)',rest).group(1)); L=float(re.search(r'\bL=([\d.]+)',rest).group(1))
            mult=float(re.search(r'\bm=([\d.]+)',rest).group(1)) if re.search(r'\bm=([\d.]+)',rest) else 1
            sig=SLOPE[model]/np.sqrt(W*L*mult)
            p='dv_'+inst.lower(); devs.append((p,sig,inst,model,W,L))
            out.append(f"{inst} {d} g_{inst} {s} {b} sky130_fd_pr__{model} {rest}")
            out.append(f"Vmc_{inst} g_{inst} {g} {{{p}}}")
        else: out.append(ln)
    head=lines[0].replace(f'.subckt {name}', f'.subckt {newname}')+' '+' '.join(f'{p}=0' for p,*_ in devs)
    return head+'\n'+'\n'.join(out), devs
def draw(devs, rng):
    return ' '.join(f"{p}={rng.normal(0,sig):.6g}" for p,sig,*_ in devs)
if __name__=="__main__":
    txt=open('adc_subs.spice').read()
    sub,devs=mc_subckt(txt,'comparator','comparator_mc')
    for d in devs: print(d[2], d[3], d[4], d[5], f"sigma={d[1]*1e3:.2f} mV")
