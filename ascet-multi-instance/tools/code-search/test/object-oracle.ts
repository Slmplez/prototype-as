import type { DiagramBody } from '../src/types.js';
import type { AgentQuery } from '../src/agent-types.js';
import { fieldHits } from './diagram-generality-support.js';

/** Independent oracle: enumerate raw model fields and owners, not rendered spans. */
export function objectOracle(g: DiagramBody, query: AgentQuery): Map<string, number> {
  const result = new Map<string, number>();
  const add = (owner: string, value: string) => { if (!value) return; const n = fieldHits(value, query); if (n) result.set(owner, (result.get(owner) ?? 0) + n); };
  const node = (scope: string, id: number) => JSON.stringify([scope, id]);
  for (const s of g.scopes) {
    const parts = s.path.split('/'), last = parts.pop()!;
    add(parts.length ? node(parts.join('/'), Number(last.slice(1))) : 'diagram', s.name);
  }
  for (const n of g.nodes) { add(node(n.scope, n.id), n.name); add(node(n.scope, n.id), n.component_path ?? ''); }
  for (const p of g.pins) add(node(p.scope, p.node_id), p.name);
  for (const s of g.sequences) { const p = g.pins.find(p => p.scope === s.scope && p.id === s.pin_id)!; add(node(s.scope, p.node_id), s.method); }
  g.comments.forEach((c, i) => add('comment:' + i, c.text));
  return result;
}

/** Separate breadth-first oracle traverses raw edge arrays and never crosses a hierarchy. */
export function localOracle(g: DiagramBody, scope: string, id: number, depth: number, direction: string) {
  const visited = new Set([id]), edges = new Set<number>();
  let frontier = new Set([id]);
  for (let level = 0; level < depth; level++) {
    const next = new Set<number>();
    for (const edge of g.connections.filter(e => e.scope === scope)) {
      const from = g.pins.find(p => p.scope === scope && p.id === edge.from_pin)!.node_id;
      const to = g.pins.find(p => p.scope === scope && p.id === edge.to_pin)!.node_id;
      if ((direction !== 'incoming' && frontier.has(from)) || (direction !== 'outgoing' && frontier.has(to))) {
        edges.add(edge.id);
        for (const n of [from, to]) if (!visited.has(n)) next.add(n);
      }
    }
    for (const n of next) visited.add(n); frontier = next;
  }
  return { nodes: [...visited].sort((a, b) => a - b), edges: [...edges].sort((a, b) => a - b) };
}
