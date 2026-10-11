import type { DiagramBody, NativeResponse, SourceDocument, MatchRange } from '../src/types.js';
import type { AgentQuery } from '../src/agent-types.js';
import { encode } from './fixtures.js';

/** Test oracle consumes model fields directly, never diagramListing/search_spans/matcher. */
export function modelFields(g: DiagramBody): { kind: string; value: string }[] {
  return [
    ...g.scopes.map(s => ({ kind: 'diagram', value: s.name })),
    ...g.nodes.flatMap(n => [{ kind: n.kind, value: n.name }, ...(n.component_path ? [{ kind: 'component_path', value: n.component_path }] : [])]),
    ...g.pins.map(p => ({ kind: 'pin', value: p.name })),
    ...g.sequences.map(s => ({ kind: 'sequence_method', value: s.method })),
    ...g.comments.map(c => ({ kind: 'comment', value: c.text })),
  ].filter(f => f.value.length > 0).map(f => ({ ...f, value: f.value.replace(/\r\n?/g, '\n') }));
}

export const escapePattern = (s: string) => s.replace(/[.*+?^${}()|[\]\\]/g, '\\$&');
const folded = (s: string) => [...s].map(c => c >= 'A' && c <= 'Z' ? c.toLowerCase() : c).join('');

export function fieldOccurrences(value: string, q: AgentQuery): { start: number; end: number }[] {
  value = value.replace(/\r\n?/g, '\n');
  const query = q.text.replace(/\r\n?/g, '\n');
  if (q.mode === 'regex') {
    const re = new RegExp(query, 'gmu' + (q.case_sensitive ? '' : 'i') + (q.dotall ? 's' : ''));
    let base = 0;
    return (q.multiline ? [value] : value.split('\n')).flatMap(part => {
      const matches = [...part.matchAll(re)].map(m => ({ start: base + m.index, end: base + m.index + m[0].length }));
      base += part.length + 1; return matches;
    });
  }
  const chars = [...(q.case_sensitive ? value : folded(value))];
  const term = [...(q.case_sensitive ? query : folded(query))];
  const word = (c: string | undefined) => c !== undefined && /^[A-Za-z_0-9]$/.test(c);
  const offsets = [0];
  for (const c of chars) offsets.push(offsets.at(-1)! + c.length);
  const matches: { start: number; end: number }[] = [];
  for (let i = 0; i <= chars.length - term.length;) {
    const equal = term.every((c, j) => c === chars[i + j]);
    const boundary = q.mode !== 'identifier' || (!word(chars[i - 1]) && !word(chars[i + term.length]));
    if (equal && boundary) { matches.push({ start: offsets[i], end: offsets[i + term.length] }); i += term.length; } else i++;
  }
  return matches;
}

export function fieldHits(value: string, q: AgentQuery): number {
  return fieldOccurrences(value, q).length;
}

/** Coordinates are derived by code-point slicing, independent of PreparedText's offset tables. */
export function fieldCoordinates(doc: SourceDocument, q: AgentQuery): MatchRange[] {
  const position = (offset: number) => {
    const lines = doc.text.slice(0, offset).split('\n');
    return { line: lines.length, column: [...lines.at(-1)!].length + 1 };
  };
  return doc.search_spans!.flatMap(s => fieldOccurrences(doc.text.slice(s.start, s.end), q).map(m => {
    const start = position(s.start + m.start), end = position(s.start + m.end);
    return { start_line: start.line, start_column: start.column, end_line: end.line, end_column: end.column };
  }));
}

export function graphHits(g: DiagramBody, q: AgentQuery): number {
  return modelFields(g).reduce((sum, f) => sum + fieldHits(f.value, q), 0);
}

export function graphRows(g: DiagramBody): string[][] {
  const rows: string[][] = [];
  const add = (tag: string, ...values: string[]) => rows.push([tag, g.component_oid, g.source_oid, ...values]);
  add('#BDE_DIAGRAM', g.name, g.visibility ?? '');
  for (const m of g.methods) add('#BDE_MEMBER', m.member_id, m.name, String(m.kind === 'process'));
  for (const s of g.scopes) add('#BDE_SCOPE', s.path, s.name);
  for (const n of g.nodes) add('#BDE_NODE', n.scope, String(n.id), n.kind, n.name, n.element_alias ?? '', n.element_type ?? '', n.component_path ?? '');
  for (const p of g.pins) add('#BDE_PIN', p.scope, String(p.node_id), String(p.id), p.name, String(p.input), String(p.output));
  for (const e of g.connections) add('#BDE_EDGE', e.scope, String(e.id), String(e.from_pin), String(e.to_pin), e.type);
  for (const s of g.sequences) add('#BDE_SEQUENCE', s.scope, String(s.pin_id), String(s.number), s.method);
  for (const b of g.boundaries) add('#BDE_BOUNDARY', b.scope, String(b.node_id), String(b.pin_id), b.child_scope, String(b.child_node_id), String(b.child_pin_id));
  for (const c of g.comments) add('#BDE_COMMENT', c.scope, c.text);
  for (const issue of g.issues) add('#BDE_ISSUE', issue);
  add('#BDE_END', String(rows.length));
  return rows;
}

export function graphResponse(graphs: DiagramBody[], transform?: (rows: string[][]) => void): NativeResponse {
  const components = [...new Set(graphs.map(g => g.component_oid))];
  const rows = [ ['#BDE_ENABLED', '1'],
    ...components.map(oid => ['#COMPONENT', oid, 'Generated\\' + oid, '', '', '', '', 'SGClass']),
    ...graphs.flatMap(graphRows), ['#STATS', String(components.length), String(components.length), '0', '0', '0', '0'] ];
  transform?.(rows);
  return { status: 'ok', database: 'synthetic-db', ascet_pid: 1, observed_utc: 'generated', timings: {},
    payload: encode(rows.map(r => [...r, ...Array(10 - r.length).fill('')])) };
}

/** Deterministic structural fixtures; these are not ASCET-created executable models. */
export function generatedGraph(seed: number, width = 24, depth = seed % 5): DiagramBody {
  let state = seed || 1;
  const next = () => { state = (Math.imul(state, 1664525) + 1013904223) >>> 0; return state; };
  const g: DiagramBody = { component_oid: seed.toString(36).padStart(29, '0'), source_oid: 'source-' + seed,
    name: 'Main', methods: [{ member_id: 'aabb', name: 'calc', kind: 'method' }, { member_id: 'ccdd', name: 'init', kind: 'method' },
      { member_id: 'eeff', name: 'tick', kind: 'process' }], scopes: [], nodes: [], pins: [], connections: [], boundaries: [], sequences: [], comments: [], issues: [] };
  let scope = 'root';
  const labels = ['Signal', 'Signal', 'signal', 'Signal_2', '中文🙂', 'a|b%59;', 'αβ', '0.0', '+', 'get/get', 'SGVariable'];
  const kinds = ['element', 'operator', 'control', 'literal', 'conversion', 'comment', 'hierarchy_pin'];
  for (let level = 0; level <= depth; level++) {
    g.scopes.push({ path: scope, name: level === 0 ? 'Main' : 'Stage' });
    for (let i = 1; i <= width; i++) {
      const kind = kinds[(i - 1) % kinds.length], name = labels[next() % labels.length];
      g.nodes.push({ scope, id: i, kind, name, ...(kind === 'element' ? { element_alias: 'abab', element_type: 'SGClass', component_path: 'Library\\Signal\\Same' } : {}) });
      g.pins.push({ scope, node_id: i, id: i * 2, name: 'calc/Signal', input: true, output: false },
        { scope, node_id: i, id: i * 2 + 1, name: 'get/get', input: false, output: true });
      if (i % 4 === 0) g.sequences.push({ scope, pin_id: i * 2, number: i - 8, method: i % 8 === 0 ? 'init' : 'calc' });
      if (i < width - 2) {
        // Cycles and fanout; last two nodes are isolated.
        g.connections.push({ scope, id: i, from_pin: i * 2 + 1, to_pin: (i % (width - 3) + 1) * 2, type: '2' });
        if (i > 2) g.connections.push({ scope, id: width + i, from_pin: 3, to_pin: i * 2, type: '2' });
      }
    }
    g.comments.push({ scope, text: 'Signal 中文🙂\r\nsecond Signal\rend' });
    if (level < depth) {
      const child = scope + '/h9000';
      g.nodes.push({ scope, id: 9000, kind: 'hierarchy', name: 'Stage' });
      g.pins.push({ scope, node_id: 9000, id: 19000, name: 'input', input: true, output: false });
      g.boundaries.push({ scope, node_id: 9000, pin_id: 19000, child_scope: child, child_node_id: 7, child_pin_id: 15 });
      scope = child;
    }
  }
  return g;
}
