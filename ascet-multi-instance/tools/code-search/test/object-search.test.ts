import test from 'node:test';
import assert from 'node:assert/strict';
import { AgentSession } from '../src/agent-session.js';
import { generatedGraph, graphResponse, fieldHits } from './diagram-generality-support.js';
import { objectOracle, localOracle } from './object-oracle.js';
import { decodeResponse } from '../src/protocol.js';
import type { AgentSearchResponse, AgentReadResponse, AgentBatchReadResponse, AgentReadContent, AgentQuery } from '../src/agent-types.js';
import { encode } from './fixtures.js';

async function pages(session: AgentSession, input: unknown) {
  const all: AgentSearchResponse[] = []; let r = await session.execute(input) as AgentSearchResponse;
  for (;;) { all.push(r); if (!r.has_more) return all; assert.ok(all.length < 2000); r = await session.execute({ cursor: r.next_cursor }) as AgentSearchResponse; }
}

for (let seed = 1; seed <= 120; seed++) test('object oracle seed ' + seed + ': every field occurrence has exactly one object owner', async () => {
  const graph = generatedGraph(seed), raw = graphResponse([graph]), canonical = decodeResponse(raw).diagrams![0];
  const queries: AgentQuery[] = [{ text: 'Signal' }, { text: 'get', mode: 'identifier' }, { text: 'Stage' }, { text: 'calc', mode: 'identifier' },
    { text: '中文🙂\nsecond', multiline: true }, { text: 'Signal|0\\.0', mode: 'regex' }, { text: '(?=Signal)', mode: 'regex' }, { text: 'Missing' }];
  let calls = 0; const session = new AgentSession({ request: async () => { calls++; return raw; } });
  try {
    const result = await pages(session, { query: queries, group_by: 'object', context: 0, limit: seed % 2 ? 7 : 50 });
    assert.equal(calls, 1);
    const expected = queries.map(q => objectOracle(canonical, q));
    assert.deepEqual(result[0].searches.map(q => q.total_hits), expected.map(m => m.size));
    for (let i = 0; i < queries.length; i++) {
      const hits = result.flatMap(p => p.searches[i].results.flatMap(r => r.hits ?? []));
      assert.equal(hits.length, expected[i].size);
      assert.equal(hits.reduce((n, h) => n + (h.occurrences ?? 1), 0), [...expected[i].values()].reduce((a, b) => a + b, 0));
      const nodeHits = hits.filter(h => h.kind !== 'comment' && h.kind !== 'diagram');
      assert.equal(new Set(nodeHits.map(h => h.ref)).size, nodeHits.length, 'an object cannot be repeated across pages for one query');
      for (const hit of hits) for (const c of hit.connections) {
        const scope = hit.hierarchy ?? 'root', from = 'from_pin_id' in c ? c.from_pin_id : c.from.pin_id, to = 'to_pin_id' in c ? c.to_pin_id : c.to.pin_id;
        assert.ok(canonical.connections.some(e => e.scope === scope && e.from_pin === from && e.to_pin === to));
      }
    }
    assert.ok(result.every(p => Buffer.byteLength(JSON.stringify(p)) <= 128 * 1024));
    assert.ok(!JSON.stringify(result).includes('field_indices')); assert.ok(!JSON.stringify(result).includes('diagram_fields'));
  } finally { session.close(); }
});

test('node name/path/Pin matches merge, repeated placements and query refs remain distinct and stable', async () => {
  const graph = generatedGraph(1, 8, 0);
  graph.nodes.forEach(n => { n.name = 'Signal'; n.component_path = 'Lib\\Signal'; });
  const session = new AgentSession({ request: async () => graphResponse([graph]) });
  try {
    const r = await session.execute({ query: ['Signal', 'calc/Signal'], group_by: 'object', limit: 200 }) as AgentSearchResponse;
    assert.equal(r.searches[0].total_hits, 9); // Eight nodes plus one scope comment.
    const first = r.searches[0].results[0].hits!.filter(h => h.matched_fields.includes('name'));
    const pins = r.searches[1].results[0].hits!;
    assert.equal(first.length, 8); assert.equal(new Set(first.map(h => h.ref)).size, 8);
    assert.deepEqual(first.map(h => h.ref), pins.map(h => h.ref));
    assert.ok(first.every(h => h.occurrences === 3 && h.matched_fields.includes('component_path') && h.matched_fields.includes('pin')));
    const read = await session.execute({ operation: 'read', ref: first.map(h => h.ref), depth: 0, include_graph: true }) as AgentBatchReadResponse;
    assert.equal(read.status, 'ok');
    assert.deepEqual((read.results as AgentReadContent[]).map(r => r.graph!.nodes[0].id), [1, 2, 3, 4, 5, 6, 7, 8]);
  } finally { session.close(); }
});

test('Pin-only evidence excludes unrelated Pin edges; name hits expose the whole node adjacency', async () => {
  const g = generatedGraph(1, 8, 0); g.nodes[0].name = 'SourceUnique'; g.pins[0].name = 'OnlyInput';
  const session = new AgentSession({ request: async () => graphResponse([g]) });
  try {
    const r = await session.execute({ query: ['OnlyInput', 'SourceUnique'], group_by: 'object' }) as AgentSearchResponse;
    const pin = r.searches[0].results[0].hits![0], node = r.searches[1].results[0].hits![0];
    assert.equal(pin.ref, node.ref); assert.ok(pin.connections.every(c => 'to_pin_id' in c && c.to_pin_id === 2));
    assert.ok(node.connections.some(c => 'from_pin_id' in c && c.from_pin_id === 3)); assert.ok(pin.evidence!.some(e => e.text === 'OnlyInput'));
  } finally { session.close(); }
});

for (const depth of [0, 1, 2] as const) for (const direction of ['incoming', 'outgoing', 'both'] as const) {
  test('compact local Pins preserve target interface and every selected endpoint: ' + depth + '/' + direction, async () => {
    const g = generatedGraph(2, 8, 1); g.nodes[0].name = 'CompactAnchorUnique';
    const neighbor = g.nodes.find(n => n.scope === 'root' && n.id === 2)!;
    neighbor.component_path = 'Library\\ReferencedNeighbor';
    for (let i = 0; i < 80; i++) g.pins.push({ scope: 'root', node_id: 2, id: 20000 + i, name: 'unused_' + i, input: true, output: false });
    g.connections.push({ scope: 'root', id: 10000, from_pin: 3, to_pin: 19000, type: '2' });
    const session = new AgentSession({ request: async () => graphResponse([g]) });
    try {
      const found = await session.execute({ query: 'CompactAnchorUnique', group_by: 'object' }) as AgentSearchResponse;
      const ref = found.searches[0].results[0].hits![0].ref;
      const compact = await session.execute({ operation: 'read', ref, depth, direction }) as AgentReadResponse;
      const raw = await session.execute({ operation: 'read', ref, depth, direction, include_graph: true }) as AgentReadResponse;
      assert.equal(compact.has_more, false); assert.equal(raw.has_more, false);
      assert.deepEqual(compact.nodes, raw.nodes); assert.deepEqual(compact.connections, raw.connections);
      assert.deepEqual(compact.boundaries, raw.boundaries);
      assert.equal(compact.object!.component_path, g.nodes[0].component_path);
      const endpointKeys = new Set([...compact.connections!.flatMap(c => [c.from, c.to]),
        ...compact.boundaries!.flatMap(b => [b.outer, b.inner])].map(e => e.ref + ':' + e.pin_id));
      const expected = raw.pins!.filter(p => p.object_ref === ref || endpointKeys.has(p.object_ref + ':' + p.id));
      assert.deepEqual(compact.pins, expected);
      assert.deepEqual(compact.pins!.filter(p => p.object_ref === ref), raw.pins!.filter(p => p.object_ref === ref));
      assert.equal(compact.graph, undefined);
      if (depth && direction !== 'incoming') {
        assert.ok(raw.pins!.some(p => p.name === 'unused_0'));
        assert.ok(!compact.pins!.some(p => p.name.startsWith('unused_')));
        assert.ok(compact.nodes!.some(n => n.component_path === neighbor.component_path));
        assert.ok(compact.boundaries!.length > 0, 'boundary remains readable without extra neighboring Pins');
        assert.ok(Buffer.byteLength(JSON.stringify(compact)) < Buffer.byteLength(JSON.stringify(raw)));
      }
      const neighborRef = compact.nodes!.find(n => n.component_path === neighbor.component_path)?.ref;
      if (neighborRef) {
        const own = await session.execute({ operation: 'read', ref: neighborRef, depth: 0 }) as AgentReadResponse;
        assert.equal(own.pins!.filter(p => p.name.startsWith('unused_')).length, 80, 'reading a neighbor as the target returns its full interface');
      }
    } finally { session.close(); }
  });
}

test('Component path scope errors explain how to resolve the name before search', async () => {
  let calls = 0; const session = new AgentSession({ request: async () => { calls++; return graphResponse([generatedGraph(1)]); } });
  try {
    await assert.rejects(session.execute({ query: 'Signal', in: { component: 'Library\\Component' } }),
      error => error instanceof Error && /in\.component.*same-session.*find.*name or path/.test(error.message));
    assert.equal(calls, 0);
  } finally { session.close(); }
});

for (const depth of [0, 1, 2] as const) for (const direction of ['incoming', 'outgoing', 'both'] as const) {
  test('local read matches raw BFS at depth ' + depth + ', direction ' + direction, async () => {
    const g = generatedGraph(2, 32, 1); g.nodes.find(n => n.scope === 'root' && n.id === 3)!.name = 'AnchorUnique';
    let calls = 0; const session = new AgentSession({ request: async () => { calls++; return graphResponse([g]); } });
    try {
      const r = await session.execute({ query: 'AnchorUnique', group_by: 'object' }) as AgentSearchResponse;
      const ref = r.searches[0].results[0].hits![0].ref;
      const read = await session.execute({ operation: 'read', ref: [ref, ref], depth, direction, include_graph: true }) as AgentBatchReadResponse;
      assert.equal(calls, 2, 'same Component is freshly read once for the whole batch');
      assert.equal(read.status, 'ok'); const local = read.results[0] as AgentReadContent;
      const expected = localOracle(decodeResponse(graphResponse([g])).diagrams![0], 'root', 3, depth, direction);
      assert.deepEqual(local.graph!.nodes.map(n => n.id).sort((a, b) => a - b), expected.nodes);
      assert.deepEqual(local.graph!.connections.map(e => e.id).sort((a, b) => a - b), expected.edges);
      assert.equal(local.scope, 'local'); assert.equal(local.has_more, false); assert.equal('status' in local, false);
      assert.equal(local.code, undefined); assert.equal(local.diagram_text, undefined);
    } finally { session.close(); }
  });
}

test('high fanout is bounded and local cursors replay immutable records through model changes', async () => {
  const g = generatedGraph(1, 250, 0); g.nodes[0].name = 'FanoutUnique';
  let calls = 0; const session = new AgentSession({ request: async () => { calls++; return graphResponse([g]); } });
  try {
    const r = await session.execute({ query: 'FanoutUnique', group_by: 'object' }) as AgentSearchResponse;
    const hit = r.searches[0].results[0].hits![0]; assert.equal(hit.connections.length, 6); assert.ok(hit.omitted_connections! > 200);
    let page = await session.execute({ operation: 'read', ref: hit.ref, include_graph: true }) as AgentReadResponse;
    assert.equal(page.has_more, true); const next = page.next_cursor!;
    const all = [page]; g.nodes[0].name = 'Changed';
    while (page.has_more) { page = await session.execute({ cursor: page.next_cursor }) as AgentReadResponse; all.push(page); }
    assert.equal(calls, 2);
    assert.deepEqual(await session.execute({ cursor: next }), all[1]);
    assert.ok(all.every(p => p.nodes!.length <= 100 && p.connections!.length <= 200 && Buffer.byteLength(JSON.stringify(p)) <= 128 * 1024));
    const edges = all.flatMap(p => p.graph!.connections.map(e => e.id));
    assert.equal(new Set(edges).size, edges.length);
    assert.deepEqual([...edges].sort((a, b) => a - b), localOracle(decodeResponse(graphResponse([g])).diagrams![0], 'root', 1, 1, 'both').edges);
    await assert.rejects(session.execute({ operation: 'read', ref: hit.ref, if_unchanged: false }), { code: 'SOURCE_CHANGED' });
  } finally { session.close(); }
});

test('Hierarchy name is grouped with its owning node and boundary refs lead to the real child', async () => {
  const g = generatedGraph(1); const session = new AgentSession({ request: async () => graphResponse([g]) });
  try {
    const r = await session.execute({ query: 'Stage', group_by: 'object' }) as AgentSearchResponse;
    assert.equal(r.total_hits, 1); const hit = r.searches[0].results[0].hits![0]; assert.equal(hit.occurrences, 2);
    assert.equal(hit.kind, 'hierarchy'); assert.equal(hit.boundaries!.length, 1);
    const local = await session.execute({ operation: 'read', ref: hit.boundaries![0].inner.ref, depth: 0, include_graph: true }) as AgentReadResponse;
    assert.equal(local.graph!.nodes[0].scope, 'root/h9000'); assert.equal(local.graph!.nodes[0].id, 7);
  } finally { session.close(); }
});

test('duplicate comments without native IDs stay separate and use a parent Diagram ref', async () => {
  const g = generatedGraph(1, 8, 0); g.comments = [{ scope: 'root', text: 'CommentUnique' }, { scope: 'root', text: 'CommentUnique' }];
  const session = new AgentSession({ request: async () => graphResponse([g]) });
  try {
    const r = await session.execute({ query: 'CommentUnique', group_by: 'object' }) as AgentSearchResponse, d = r.searches[0].results[0];
    assert.equal(r.total_hits, 2); assert.ok(d.hits!.every(h => h.ref === d.ref && h.connections.length === 0));
    const read = await session.execute({ operation: 'read', ref: d.hits![0].ref }) as AgentReadResponse;
    assert.equal(read.scope, undefined); assert.ok(read.diagram_text);
  } finally { session.close(); }
});

test('object validation, cursor signature, expiry and failed cache admission are explicit', async () => {
  const g = generatedGraph(1); let now = 1000, calls = 0;
  const session = new AgentSession({ request: async () => { calls++; return graphResponse([g]); } }, { now: () => now, ttlMs: 10 });
  const other = new AgentSession({ request: async () => graphResponse([g]) });
  try {
    await assert.rejects(session.execute({ query: 'Signal', group_by: 'invalid' }), { code: 'INVALID_REQUEST' }); assert.equal(calls, 0);
    const r = await session.execute({ query: 'Signal', group_by: 'object', limit: 1 }) as AgentSearchResponse;
    await assert.rejects(other.execute({ cursor: r.next_cursor }), { code: 'INVALID_CURSOR' });
    await assert.rejects(session.execute({ operation: 'read', ref: r.searches[0].results[0].ref, depth: 1 }), { code: 'INVALID_REQUEST' });
    now += 11; await assert.rejects(session.execute({ cursor: r.next_cursor }), { code: 'CURSOR_EXPIRED' });
    await assert.rejects(session.execute({ operation: 'read', ref: r.searches[0].results[0].hits![0].ref }), { code: 'REF_EXPIRED' });
  } finally { session.close(); other.close(); }
  const small = new AgentSession({ request: async () => graphResponse([g]) }, { maxSnapshotBytes: 1 });
  try {
    await assert.rejects(small.execute({ query: 'Signal', group_by: 'object', limit: 1 }), { code: 'SNAPSHOT_TOO_LARGE' });
    assert.equal((await small.execute({ query: 'NoSuch', group_by: 'object' }) as AgentSearchResponse).total_hits, 0);
  } finally { small.close(); }
});

test('long matched field keeps visible evidence and unknown nodes remain partial', async () => {
  const g = generatedGraph(1, 8, 0); g.nodes[0].kind = 'vendor'; g.nodes[0].name = 'x'.repeat(3000) + 'NeedleUnique';
  const session = new AgentSession({ request: async () => graphResponse([g]) });
  try {
    const r = await session.execute({ query: 'NeedleUnique', group_by: 'object' }) as AgentSearchResponse;
    assert.equal(r.status, 'partial'); const hit = r.searches[0].results[0].hits![0];
    assert.equal(hit.name_truncated, true); assert.ok(hit.evidence!.some(e => fieldHits(e.text, { text: 'NeedleUnique' }) === 1));
    assert.equal((await session.execute({ operation: 'read', ref: hit.ref }) as AgentReadResponse).status, 'partial');
  } finally { session.close(); }
});

test('mixed text and object pages preserve text CRLF context, occurrence counts and unit limits', async () => {
  const graph = generatedGraph(1, 8, 0);
  const raw = graphResponse([graph]);
  raw.payload = raw.payload.replace('#STATS|', encode([['method', graph.component_oid, 'Generated\\' + graph.component_oid, '', 'ASDL', 'method-id', 'calcText', 'esdl', 'before\r\nSignal Signal\rafter', '']]) + '#STATS|');
  const session = new AgentSession({ request: async () => raw });
  try {
    const result = await pages(session, { query: 'Signal', group_by: 'object', limit: 1 });
    assert.equal(result[0].total_hits, objectOracle(decodeResponse(raw).diagrams![0], { text: 'Signal' }).size + 2);
    const text = result.flatMap(p => p.searches[0].results).filter(r => r.kind === 'method');
    assert.equal(text.length, 2); assert.ok(text.every(r => r.snippets![0].text === 'before\nSignal Signal\nafter'));
    assert.ok(result.every(p => p.returned_hits === 1));
  } finally { session.close(); }
});

test('local read detects deletion and ID reuse, process restarts, and mixed batch failures', async () => {
  const g = generatedGraph(1, 8, 0); g.nodes[0].name = 'AnchorUnique'; let pid = 1;
  const session = new AgentSession({ request: async () => ({ ...graphResponse([g]), ascet_pid: pid }) });
  try {
    const r = await session.execute({ query: 'AnchorUnique', group_by: 'object' }) as AgentSearchResponse;
    const doc = r.searches[0].results[0], ref = doc.hits![0].ref;
    g.nodes[0].element_alias = 'cdcd';
    const batch = await session.execute({ operation: 'read', ref: [ref, doc.ref] }) as AgentBatchReadResponse;
    assert.equal(batch.status, 'partial'); assert.equal(batch.returned_count, 1);
    assert.equal((batch.results[0] as any).error.code, 'SOURCE_CHANGED');
    pid = 2; await assert.rejects(session.execute({ operation: 'read', ref }), { code: 'ASCET_RESTARTED' });
  } finally { session.close(); }
});

test('small object pages trim previews, preserve hits, and page/ref caches evict together', async () => {
  const g = generatedGraph(1, 40, 0);
  const session = new AgentSession({ request: async () => graphResponse([g]) }, { maxPageBytes: 3500, maxEntries: 1 });
  try {
    const result = await pages(session, { query: 'Signal', group_by: 'object', limit: 200 });
    assert.ok(result.length > 1); assert.ok(result.every(p => Buffer.byteLength(JSON.stringify(p)) <= 3500));
    assert.equal(result.reduce((n, p) => n + p.returned_hits, 0), result[0].total_hits);
    const old = result[0]; await session.execute({ query: 'NoSuch' });
    await assert.rejects(session.execute({ cursor: old.next_cursor }), { code: 'CURSOR_EXPIRED' });
    await assert.rejects(session.execute({ operation: 'read', ref: old.searches[0].results[0].hits![0].ref }), { code: 'REF_EXPIRED' });
  } finally { session.close(); }
});

test('same listing in two Components never shares object identity', async () => {
  const a = generatedGraph(1, 8, 0), b = structuredClone(a); b.component_oid = '2'.padStart(29, '0');
  const session = new AgentSession({ request: async () => graphResponse([a, b]) });
  try {
    const r = await session.execute({ query: 'Signal', group_by: 'object', limit: 200 }) as AgentSearchResponse;
    assert.equal(r.searches[0].results.length, 2);
    const [x, y] = r.searches[0].results;
    assert.equal(x.hits!.length, y.hits!.length); assert.ok(x.hits!.every(h => !y.hits!.some(j => j.ref === h.ref)));
  } finally { session.close(); }
});

test('many local reads reuse discovery refs instead of evicting the original search group', async () => {
  const g = generatedGraph(1, 8, 0); g.nodes[0].name = 'AnchorUnique';
  const session = new AgentSession({ request: async () => graphResponse([g]) }, { maxEntries: 1 });
  try {
    const r = await session.execute({ query: 'AnchorUnique', group_by: 'object' }) as AgentSearchResponse;
    const ref = r.searches[0].results[0].hits![0].ref;
    for (let i = 0; i < 40; i++) {
      const read = await session.execute({ operation: 'read', ref, depth: 0 }) as AgentReadResponse;
      assert.equal(read.object!.ref, ref); assert.equal(read.has_more, false);
    }
  } finally { session.close(); }
});

test('local batch refs and paged reads retain their own discovery identities and expiry', async () => {
  const g = generatedGraph(1, 250, 0); g.nodes[0].name = 'FanoutUnique'; let now = 1000;
  const session = new AgentSession({ request: async () => graphResponse([g]) }, { now: () => now, ttlMs: 100 });
  try {
    const first = await session.execute({ query: 'FanoutUnique', group_by: 'object' }) as AgentSearchResponse;
    now += 50;
    const second = await session.execute({ query: 'FanoutUnique', group_by: 'object' }) as AgentSearchResponse;
    const refs = [first, second].map(r => r.searches[0].results[0].hits![0].ref);
    const batch = await session.execute({ operation: 'read', ref: refs, include_graph: true }) as AgentBatchReadResponse;
    assert.equal(batch.status, 'ok');
    const items = batch.results as AgentReadContent[];
    assert.deepEqual(items.map(r => r.object!.ref), refs);
    assert.deepEqual(items.map(r => r.expires_utc), [first.expires_utc, second.expires_utc]);
    assert.ok(items.every(r => r.has_more));
    now += 51;
    await assert.rejects(session.execute({ cursor: items[0].next_cursor }), { code: 'CURSOR_EXPIRED' });
    const continued = await session.execute({ cursor: items[1].next_cursor }) as AgentReadResponse;
    assert.equal(continued.object!.ref, refs[1]); assert.equal(continued.expires_utc, second.expires_utc);
    const read = await session.execute({ operation: 'read', ref: refs[1], depth: 0 }) as AgentReadResponse;
    assert.equal(read.object!.ref, refs[1]);
  } finally { session.close(); }
});

test('local read debug data identifies the original object and persists through pagination', async () => {
  const g = generatedGraph(1, 250, 0); g.nodes[0].name = 'AnchorUnique';
  const session = new AgentSession({ request: async () => graphResponse([g]) });
  try {
    const found = await session.execute({ query: 'AnchorUnique', group_by: 'object' }) as AgentSearchResponse;
    const ref = found.searches[0].results[0].hits![0].ref;
    const plain = await session.execute({ operation: 'read', ref, depth: 0 }) as AgentReadResponse;
    assert.equal(plain.debug, undefined);
    const first = await session.execute({ operation: 'read', ref, debug: true }) as AgentReadResponse;
    const debug = first.debug as Record<string, unknown>;
    assert.deepEqual(debug.object, { scope: 'root', node_id: 1 });
    assert.equal(debug.component_oid, g.component_oid); assert.ok(first.next_cursor);
    const next = await session.execute({ cursor: first.next_cursor }) as AgentReadResponse;
    assert.deepEqual(next.debug, first.debug);
  } finally { session.close(); }
});
