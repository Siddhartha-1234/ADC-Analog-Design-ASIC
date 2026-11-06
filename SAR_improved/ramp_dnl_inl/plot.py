import json, numpy as np, matplotlib; matplotlib.use('Agg'); import matplotlib.pyplot as plt
R=json.load(open('sar_improved_dnl_inl.json'))
B=json.load(open('/tmp/claude-0/-home-claude/5531ddd4-39f8-5047-85cc-b50cb2122047/scratchpad/dnl/dnl_inl_results.json'))['SAR']
S=[('Baseline SAR',B,'#2a78d6'),('v1',R['v1'],'#eb6834'),('v2',R['v2'],'#1baf7a'),('v3n',R['v3'],'#eda100')]
INK='#0b0b0b'; INK2='#52514e'; GRID='#e4e3df'; BG='#fcfcfb'
plt.rcParams.update({'font.size':10,'axes.edgecolor':GRID,'axes.labelcolor':INK2,'xtick.color':INK2,'ytick.color':INK2})
fig,ax=plt.subplots(1,2,figsize=(11,4),dpi=200,facecolor=BG)
w=0.2
for a,key,xs,title,xl in [(ax[0],'dnl',np.arange(1,7),'DNL per code','code k'),(ax[1],'inl',np.arange(1,8),'INL per edge (vs ideal k × 100 mV)','edge into code k')]:
    a.set_facecolor(BG)
    for i,(n,d,c) in enumerate(S):
        a.bar(xs+(i-1.5)*w,d[key],width=w-0.03,color=c,label=n,zorder=3)
    a.axhline(0,color=INK2,lw=0.8,zorder=4); a.set_xticks(xs); a.set_xlabel(xl); a.set_ylabel('LSB  (1 LSB = 100 mV)')
    a.grid(axis='y',color=GRID,lw=0.6); a.set_axisbelow(True)
    for s in ['top','right']: a.spines[s].set_visible(False)
    a.set_title(title,loc='left',color=INK,fontsize=11)
ax[1].legend(frameon=False,loc='upper right',ncol=2)
fig.suptitle('SAR static linearity: baseline vs improved v1 / v2 / v3n  (sky130 tt, 27 °C, your TB_SAR3 timing)',x=0.01,ha='left',color=INK,fontsize=12)
fig.text(0.01,0.01,'Edges to ±0.00125 LSB (0.25 mV) for v1–v3n; baseline SAR ±0.0125 LSB (2.5 mV sweep).',fontsize=8,color=INK2)
fig.tight_layout(rect=(0,0.03,1,1)); fig.savefig('sar_improved_dnl_inl.png',facecolor=BG)
