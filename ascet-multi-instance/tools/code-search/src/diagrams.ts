import type { DiagramBody, DiagramField } from './types.js';

const id = (s: string): number => {
  if (!/^(0|[1-9][0-9]*)$/.test(s) || !Number.isSafeInteger(Number(s))) throw new Error('Invalid BDE identity');
  return Number(s);
};
const bool = (s: string): boolean => {
  if (s !== 'true' && s !== 'false') throw new Error('Invalid BDE boolean');
  return s === 'true';
};
const key = (scope: string, n: number) => scope + ':' + n;
const compare = (a: string, b: string) => a < b ? -1 : a > b ? 1 : 0;

/** Decode facts from fresh ASCET API wrappers. No behavior or Method ownership inference. */
export function decodeDiagrams(rows: string[][]): DiagramBody[] {
  const graphs = new Map<string, DiagramBody>();
  const rowCounts = new Map<string, number>(), ended = new Set<string>();
  for (const r of rows) {
    const k = JSON.stringify([r[1], r[2]]);
    if (ended.has(k)) throw new Error('BDE record after end marker');
    if (r[0] === '#BDE_DIAGRAM') {
      if (graphs.has(k) || !r[1] || !r[2]) throw new Error('Missing or duplicate BDE diagram identity');
      if (r[4] && !['public', 'private', 'unknown'].includes(r[4])) throw new Error('Invalid Diagram visibility');
      graphs.set(k, { component_oid: r[1], source_oid: r[2], name: r[3], ...(r[4] === 'public' || r[4] === 'private' ? { visibility: r[4] } : {}), methods: [], scopes: [],
        comments: [], nodes: [], pins: [], connections: [], sequences: [], boundaries: [], issues: [] });
      rowCounts.set(k, 1); continue;
    }
    const g = graphs.get(k);
    if (!g) throw new Error('BDE record without diagram');
    if (r[0] === '#BDE_END') {
      if (id(r[3]) !== rowCounts.get(k)) throw new Error('Incomplete BDE record count');
      ended.add(k); continue;
    }
    rowCounts.set(k, rowCounts.get(k)! + 1);
    switch (r[0]) {
      case '#BDE_MEMBER':
        if (!/^(?:[a-f0-9]{2})+$/.test(r[3])) throw new Error('Invalid BDE Method alias');
        g.methods.push({ member_id: r[3], name: r[4], kind: bool(r[5]) ? 'process' : 'method' }); break;
      case '#BDE_COMMENT': g.comments.push({ scope: r[3], text: r[4] }); break;
      case '#BDE_SCOPE': g.scopes.push({ path: r[3], name: r[4] }); break;
      case '#BDE_NODE':
        g.nodes.push({ scope: r[3], id: id(r[4]), kind: r[5], name: r[6],
          ...(r[7] ? { element_alias: r[7] } : {}), ...(r[8] ? { element_type: r[8] } : {}),
          ...(r[9] ? { component_path: r[9] } : {}) }); break;
      case '#BDE_PIN': g.pins.push({ scope: r[3], node_id: id(r[4]), id: id(r[5]), name: r[6], input: bool(r[7]), output: bool(r[8]) }); break;
      case '#BDE_SEQUENCE':
        if (!/^-?[0-9]+$/.test(r[5]) || !Number.isSafeInteger(Number(r[5]))) throw new Error('Invalid BDE sequence');
        g.sequences.push({ scope: r[3], pin_id: id(r[4]), number: Number(r[5]), method: r[6] }); break;
      case '#BDE_EDGE': g.connections.push({ scope: r[3], id: id(r[4]), from_pin: id(r[5]), to_pin: id(r[6]), type: r[7] }); break;
      case '#BDE_BOUNDARY': g.boundaries.push({ scope: r[3], node_id: id(r[4]), pin_id: id(r[5]), child_scope: r[6], child_node_id: id(r[7]), child_pin_id: id(r[8]) }); break;
      case '#BDE_ISSUE': g.issues.push(r[3]); break;
      default: throw new Error('Unknown BDE record: ' + r[0]);
    }
  }
  if (ended.size !== graphs.size) throw new Error('Missing BDE end marker');
  for (const g of graphs.values()) {
    const scopes = new Set<string>(), nodes = new Map<string, DiagramBody['nodes'][number]>(), pins = new Map<string, DiagramBody['pins'][number]>();
    for (const s of g.scopes) {
      if (!/^root(?:\/h[0-9]+){0,16}$/.test(s.path) || scopes.has(s.path)) throw new Error('Invalid or duplicate BDE scope');
      scopes.add(s.path);
    }
    if (!scopes.has('root')) throw new Error('Missing BDE root');
    for (const n of g.nodes) {
      if (!scopes.has(n.scope) || nodes.has(key(n.scope, n.id))) throw new Error('Invalid or duplicate BDE node');
      nodes.set(key(n.scope, n.id), n);
      if (!['element', 'operator', 'control', 'literal', 'comment', 'hierarchy', 'hierarchy_pin', 'conversion'].includes(n.kind)) {
        g.issues.push('Unsupported node ' + key(n.scope, n.id) + ' (' + n.kind + ')');
      }
    }
    for (const s of g.scopes) if (s.path !== 'root') {
      const at = s.path.lastIndexOf('/h'), owner = nodes.get(key(s.path.slice(0, at), id(s.path.slice(at + 2))));
      if (owner?.kind !== 'hierarchy') throw new Error('BDE hierarchy has no owning node');
    }
    for (const n of g.nodes) if (n.kind === 'hierarchy' && !scopes.has(n.scope + '/h' + n.id)) throw new Error('Missing BDE hierarchy contents');
    for (const p of g.pins) {
      if (!nodes.has(key(p.scope, p.node_id)) || pins.has(key(p.scope, p.id))) throw new Error('Invalid or duplicate BDE pin');
      pins.set(key(p.scope, p.id), p);
    }
    const edges = new Set<string>();
    for (const e of g.connections) {
      if (!pins.has(key(e.scope, e.from_pin)) || !pins.has(key(e.scope, e.to_pin)) || edges.has(key(e.scope, e.id))) throw new Error('Invalid BDE connection');
      if (!pins.get(key(e.scope, e.from_pin))!.output || !pins.get(key(e.scope, e.to_pin))!.input) throw new Error('Invalid BDE connection direction');
      edges.add(key(e.scope, e.id));
    }
    const boundaryParents = new Set<string>(), boundaryChildren = new Set<string>();
    for (const b of g.boundaries) {
      const parent = key(b.scope, b.pin_id), child = key(b.child_scope, b.child_pin_id);
      if (boundaryParents.has(parent) || boundaryChildren.has(child)) throw new Error('Duplicate BDE hierarchy boundary');
      boundaryParents.add(parent); boundaryChildren.add(child);
      if (nodes.get(key(b.scope, b.node_id))?.kind !== 'hierarchy' || b.child_scope !== b.scope + '/h' + b.node_id ||
          nodes.get(key(b.child_scope, b.child_node_id))?.kind !== 'hierarchy_pin' ||
          pins.get(key(b.scope, b.pin_id))?.node_id !== b.node_id || pins.get(key(b.child_scope, b.child_pin_id))?.node_id !== b.child_node_id) {
        throw new Error('Invalid BDE hierarchy boundary');
      }
      const outer = pins.get(parent)!, inner = pins.get(child)!;
      if (outer.input !== inner.output || outer.output !== inner.input || (!outer.input && !outer.output)) {
        throw new Error('Invalid BDE hierarchy boundary direction');
      }
    }
    if (new Set(g.methods.map(m => m.member_id)).size !== g.methods.length) throw new Error('Duplicate BDE Method');
    if (new Set(g.sequences.map(s => key(s.scope, s.pin_id))).size !== g.sequences.length) throw new Error('Duplicate BDE sequence');
    for (const s of g.sequences) if (!pins.has(key(s.scope, s.pin_id))) throw new Error('BDE sequence without pin');
    // Wrapper iteration order is not a source revision. Edge IDs are local ordinals, not stored ASCET IDs.
    if (g.comments.some(c => !scopes.has(c.scope))) throw new Error('BDE comment without scope');
    g.comments.sort((a, b) => compare(a.scope, b.scope) || compare(a.text, b.text));
    g.scopes.sort((a, b) => compare(a.path, b.path));
    for (const items of [g.nodes, g.pins]) items.sort((a, b) => compare(a.scope, b.scope) || a.id - b.id);
    g.methods.sort((a, b) => compare(a.member_id, b.member_id));
    g.sequences.sort((a, b) => compare(a.scope, b.scope) || a.pin_id - b.pin_id);
    g.connections.sort((a, b) => compare(a.scope, b.scope) || a.from_pin - b.from_pin || a.to_pin - b.to_pin || compare(a.type, b.type));
    g.connections.forEach((e, i) => { e.id = i + 1; });
    g.boundaries.sort((a, b) => compare(a.scope, b.scope) || a.pin_id - b.pin_id);
    g.issues = [...new Set(g.issues)].sort(compare);
  }
  return [...graphs.values()].sort((a, b) => compare(a.component_oid, b.component_oid) || compare(a.source_oid, b.source_oid));
}

/** Render facts; spans keep transport keys, IDs and boilerplate out of search hits. */
export function diagramListing(g: DiagramBody): { text: string; search_spans: { start: number; end: number }[]; diagram_fields: DiagramField[] } {
  let text = '';
  const spans: { start: number; end: number }[] = [];
  const fields: DiagramField[] = [];
  const add = (s: string) => { text += s; };
  const value = (s: string, field: DiagramField) => { const start = text.length; text += s.replace(/\r\n?/g, '\n'); if (text.length > start) { spans.push({ start, end: text.length }); fields.push(field); } };
  const nodes = new Map<string, DiagramBody['nodes']>(), pins = new Map<string, DiagramBody['pins']>();
  const sequences = new Map(g.sequences.map(s => [key(s.scope, s.pin_id), s]));
  for (const n of g.nodes) { const a = nodes.get(n.scope) ?? []; a.push(n); nodes.set(n.scope, a); }
  for (const p of g.pins) { const k = key(p.scope, p.node_id), a = pins.get(k) ?? []; a.push(p); pins.set(k, a); }
  for (const scope of g.scopes) {
    const at = scope.path.lastIndexOf('/h');
    const scopeField: DiagramField = at < 0 ? { scope: 'root', owner: { type: 'diagram' }, field: 'name' }
      : { scope: scope.path.slice(0, at), owner: { type: 'node', node_id: Number(scope.path.slice(at + 2)) }, field: 'name' };
    add('Diagram ' + scope.path + ' '); value(scope.name, scopeField); add('\n');
    for (const n of nodes.get(scope.path) ?? []) {
      const owner = { type: 'node' as const, node_id: n.id };
      add('n' + n.id + ' ' + n.kind + ': '); value(n.name, { scope: n.scope, owner, field: 'name' });
      if (n.component_path) { add(' -> '); value(n.component_path, { scope: n.scope, owner, field: 'component_path' }); } add('\n');
      for (const p of pins.get(key(n.scope, n.id)) ?? []) {
        const seq = sequences.get(key(p.scope, p.id)), pinOwner = { ...owner, pin_id: p.id };
        add('  p' + p.id + ' ' + (p.input ? 'in' : '') + (p.input && p.output ? '/' : '') + (p.output ? 'out' : '') + ': '); value(p.name, { scope: n.scope, owner: pinOwner, field: 'pin' });
        if (seq) { add(' ['); value(seq.method, { scope: n.scope, owner: pinOwner, field: 'sequence_method' }); add(' #' + seq.number + ']'); } add('\n');
      }
    }
    for (const [i, c] of g.comments.entries()) if (c.scope === scope.path) { add('comment: '); value(c.text, { scope: c.scope, owner: { type: 'comment', snapshot_ordinal: i }, field: 'comment' }); add('\n'); }
    for (const e of g.connections.filter(e => e.scope === scope.path)) add('p' + e.from_pin + ' -> p' + e.to_pin + ' (type ' + e.type + ')\n');
    for (const b of g.boundaries.filter(b => b.scope === scope.path)) add('p' + b.pin_id + ' <-> ' + b.child_scope + '/p' + b.child_pin_id + '\n');
  }
  return { text: text.slice(0, -1), search_spans: spans, diagram_fields: fields };
}
