import test from 'node:test';
import assert from 'node:assert/strict';
import { AgentSession } from '../src/agent-session.js';
import { decodeResponse } from '../src/protocol.js';
import { generatedGraph, graphResponse } from './diagram-generality-support.js';
import { assertSearchHitSummary, type SearchRefIdentity } from '../scripts/bde-search-summary-oracle.js';
import type { AgentBatchReadResponse, AgentDiagramHit, AgentReadContent, AgentSearchResponse, AgentQuery } from '../src/agent-types.js';

async function sample(query: AgentQuery = { text: 'Signal' }) {
  const graph = generatedGraph(7, 16, 1);
  for (const n of graph.nodes) if (n.kind === 'comment') n.kind = 'element';
  graph.nodes[0].name = 'Signal';
  graph.nodes[1].name = 'x'.repeat(300) + 'Signal🙂';
  for (let i = 0; i < 12; i++) graph.pins.push({ scope: 'root', node_id: 1, id: 30000 + i,
    name: 'Signal' + i, input: false, output: true });
  const raw = graphResponse([graph]), saved = decodeResponse(raw).diagrams![0];
  const session = new AgentSession({ request: async () => raw });
  try {
    const pages: AgentSearchResponse[] = [];
    let response = await session.execute({ query, group_by: 'object', context: 0, limit: 5 }) as AgentSearchResponse;
    for (;;) {
      pages.push(response);
      if (!response.has_more) break;
      response = await session.execute({ cursor: response.next_cursor }) as AgentSearchResponse;
    }
    const hits = pages.flatMap(p => p.searches[0].results.flatMap(r => r.hits ?? []));
    const refs = new Set(hits.filter(h => h.kind !== 'diagram' && !h.matched_fields.includes('comment')).map(h => h.ref));
    for (const hit of hits) {
      for (const connection of hit.connections) refs.add('from' in connection ? connection.from.ref : connection.to.ref);
      for (const boundary of hit.boundaries ?? []) { refs.add(boundary.outer.ref); refs.add(boundary.inner.ref); }
    }
    const identities = new Map<string, SearchRefIdentity>();
    for (const ref of refs) {
      const response = await session.execute({ operation: 'read', ref: [ref], depth: 0, include_graph: true }) as AgentBatchReadResponse;
      assert.equal(response.status, 'ok');
      const read = response.results[0] as AgentReadContent, n = read.graph!.nodes[0];
      assert.deepEqual(n, saved.nodes.find(v => v.scope === n.scope && v.id === n.id));
      identities.set(ref, { component_oid: saved.component_oid, source_oid: saved.source_oid, scope: n.scope, node_id: n.id });
    }
    const owner = (hit: AgentDiagramHit) => {
      if (hit.kind === 'diagram') return 'diagram';
      if (hit.matched_fields.includes('comment')) return 'comment:' + saved.comments.findIndex(c =>
        c.scope === (hit.hierarchy ?? 'root') && [...c.text].slice(0, 240).join('') === hit.name);
      const identity = identities.get(hit.ref)!;
      return JSON.stringify([identity.scope, identity.node_id]);
    };
    return { saved, hits, identities, query, owner };
  } finally { session.close(); }
}

for (const query of [{ text: 'Signal' }, { text: 'get', mode: 'identifier' as const }, { text: 'calc' },
  { text: 'Stage' }, { text: '中文🙂\nsecond', multiline: true }, { text: '^', mode: 'regex' as const }]) {
  test('search summary raw oracle: ' + JSON.stringify(query), async () => {
    const s = await sample(query);
    assert.ok(s.hits.length);
    for (const hit of s.hits) assertSearchHitSummary(s.saved, s.query, s.owner(hit), hit, s.identities);
  });
}

test('summary oracle rejects missing connections and unrelated same-Diagram connections', async () => {
  const s = await sample(), hit = s.hits.find(h => h.connections.length > 1)!;
  assert.ok(hit);
  const missing = structuredClone(hit); missing.connections = [];
  missing.omitted_connections = hit.connections.length + (hit.omitted_connections ?? 0);
  assert.throws(() => assertSearchHitSummary(s.saved, s.query, s.owner(hit), missing, s.identities), /complete search connections/);
  const replaced = structuredClone(hit); replaced.connections[0] = structuredClone(replaced.connections[1]);
  assert.throws(() => assertSearchHitSummary(s.saved, s.query, s.owner(hit), replaced, s.identities));
});

test('summary oracle rejects wrong endpoint ref, kind, name and Pin metadata', async () => {
  const s = await sample(), hit = s.hits.find(h => h.connections.length)!;
  for (const mutation of ['ref', 'kind', 'name', 'pin'] as const) {
    const changed = structuredClone(hit), connection = changed.connections[0];
    const endpoint = 'from' in connection ? connection.from : connection.to;
    endpoint[mutation] = 'wrong';
    assert.throws(() => assertSearchHitSummary(s.saved, s.query, s.owner(hit), changed, s.identities));
  }
});

test('summary oracle rejects missing evidence and incorrect omission counters', async () => {
  const s = await sample(), hit = s.hits.find(h => (h.omitted_evidence ?? 0) > 0)!;
  assert.ok(hit, 'fixture exercises the evidence cap');
  for (const mutate of [(h: AgentDiagramHit) => { h.evidence = []; },
    (h: AgentDiagramHit) => { h.omitted_evidence = 0; },
    (h: AgentDiagramHit) => { h.omitted_connections = 999; },
    (h: AgentDiagramHit) => { h.matched_fields = []; }]) {
    const changed = structuredClone(hit); mutate(changed);
    assert.throws(() => assertSearchHitSummary(s.saved, s.query, s.owner(hit), changed, s.identities));
  }
});

test('summary oracle rejects omitted boundaries and incorrect boundary endpoint identity', async () => {
  const s = await sample({ text: 'Stage' }), hit = s.hits.find(h => h.boundaries?.length)!;
  assert.ok(hit, 'fixture exercises a Hierarchy boundary');
  const missing = structuredClone(hit); missing.boundaries = [];
  assert.throws(() => assertSearchHitSummary(s.saved, s.query, s.owner(hit), missing, s.identities), /complete search boundaries/);
  const changed = structuredClone(hit); changed.boundaries![0].inner.ref = changed.boundaries![0].outer.ref;
  assert.throws(() => assertSearchHitSummary(s.saved, s.query, s.owner(hit), changed, s.identities), /endpoint ref identity/);
  const omitted = structuredClone(hit); omitted.omitted_boundaries = 999;
  assert.throws(() => assertSearchHitSummary(s.saved, s.query, s.owner(hit), omitted, s.identities), /omitted boundary count/);
});

test('summary oracle rejects incorrect Unicode preview offsets and name truncation', async () => {
  const s = await sample(), hit = s.hits.find(h => h.name_truncated)!;
  assert.ok(hit?.evidence?.some(e => e.truncated_before), 'fixture exercises a long matching name');
  const offset = structuredClone(hit); offset.evidence!.find(e => e.truncated_before)!.start_offset = 1;
  assert.throws(() => assertSearchHitSummary(s.saved, s.query, s.owner(hit), offset, s.identities), /search evidence preview/);
  const name = structuredClone(hit); delete name.name_truncated;
  assert.throws(() => assertSearchHitSummary(s.saved, s.query, s.owner(hit), name, s.identities), /name truncation/);
});
