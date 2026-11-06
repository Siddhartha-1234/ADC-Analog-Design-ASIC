"""Build the docs chart module (energy share per part for each version) from measured rows."""
import json, sys

def module(rows, title, subtitle, note):
    data = ",".join("{version:'%s', slug:'%s', part:'%s', pJ:%.4f}" % (r["version"], r["slug"], r["part"], r["pJ"]) for r in rows)
    return ("export default () => <claude.Visualize data-claude-component='energy-split' sources={{rows:{kind:'data', data:[" + data + "]}}}>"
        "{({rows, datum}) => { "
        "const versions = [...new Set(rows.map(r => r.version))]; const parts = [...new Set(rows.map(r => r.part))]; "
        "const x0 = 190, w = 430, h = 34, gap = 26, y0 = 112; "
        "const fillOf = p => p === 'Comparator' ? 'var(--cds-chart-categorical-1)' : 'var(--cds-chart-muted)'; "
        "const opOf = p => p === 'Comparator' ? 0.85 : (p === 'Logic' ? 0.75 : 0.35); "
        "const H = y0 + versions.length * (h + gap) + 30; "
        "return <svg viewBox={`0 0 760 ${H}`} role='img' aria-label='" + title + "' fontSize='12'>"
        "<text data-claude-text-id='title' x='16' y='26' fontSize='15' fill='var(--cds-text-primary)'>" + title + "</text>"
        "<text data-claude-text-id='subtitle' x='16' y='47' fill='var(--cds-text-secondary)'>" + subtitle + "</text>"
        "<g data-claude-anchor='legend'>{parts.map((p, i) => <g key={p}><rect x={16 + i * 190} y='66' width='12' height='12' fill={fillOf(p)} fillOpacity={opOf(p)}/>"
        "<text x={34 + i * 190} y='76' fill='var(--cds-text-secondary)'>{p}</text></g>)}</g>"
        "{versions.map((v, j) => { const rs = rows.filter(r => r.version === v); const tot = rs.reduce((s, r) => s + r.pJ, 0); let acc = 0; const y = y0 + j * (h + gap); "
        "return <g key={v} data-claude-anchor={`bar-${rs.at(0).slug}`}><text x='16' y={y + 22} fill='var(--cds-text-primary)'>{v}</text>"
        "{rs.map(r => { const xs = x0 + acc / tot * w; const ww = r.pJ / tot * w; acc += r.pJ; const pct = Math.round(100 * r.pJ / tot); "
        "return <g key={r.part}><rect x={xs} y={y} width={ww} height={h} fill={fillOf(r.part)} fillOpacity={opOf(r.part)} stroke='var(--cds-chart-grid)' strokeWidth='0.5' {...datum(r, 'pJ')}>"
        "<title>{`${v}, ${r.part}: ${r.pJ < 1 ? r.pJ.toFixed(3) : r.pJ.toFixed(1)} pJ (${pct}%)`}</title></rect>"
        "{pct >= 9 ? <text x={xs + 6} y={y + 22} fill='var(--cds-text-primary)' {...datum(r, 'pJ')}>{`${pct}%`}</text> : null}</g>; })}"
        "<text x={x0 + w + 12} y={y + 22} fontSize='13' fill='var(--cds-text-primary)' {...datum(rs.at(0))}>{`${tot < 1 ? tot.toFixed(2) : tot.toFixed(1)} pJ`}</text></g>; })}"
        "<text data-claude-text-id='note' x='16' y={H - 10} fill='var(--cds-text-secondary)'>" + note + "</text>"
        "</svg>; }}</claude.Visualize>;")

if __name__ == "__main__":
    rows = json.load(open(sys.argv[1]))
    print(module(rows, sys.argv[2], sys.argv[3], sys.argv[4]))
