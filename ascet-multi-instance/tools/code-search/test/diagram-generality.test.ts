import test from 'node:test';
import assert from 'node:assert/strict';
import { AgentSession } from '../src/agent-session.js';
import { decodeResponse } from '../src/protocol.js';
import { ToolError } from '../src/patterns.js';
import { matchDocuments } from '../src/matcher.js';
import { generatedGraph, graphResponse, graphHits, modelFields, escapePattern, fieldCoordinates } from './diagram-generality-support.js';
import { matchesOf, linesOf } from './agent-output.js';
import type { AgentQuery, AgentSearchResponse, AgentReadResponse } from '../src/agent-types.js';
import type { DiagramBody } from '../src/types.js';

const queries: AgentQuery[] = ['Signal', 'signal', 'get', 'get/get', '中文🙂', 'a|b%59;', 'αβ', '0.0', '+', 'Stage',
  'Library\\Signal\\Same', 'SGVariable', 'Missing', 'n9000', 'type 2', 'element_alias'].flatMap(text => [
    { text, case_sensitive: false }, { text, case_sensitive: true },
    { text: escapePattern(text), mode: 'regex' as const, case_sensitive: true },
  ]);
queries.push(...['Signal', 'signal', 'get', 'calc', 'init', 'Signal_2'].flatMap(text => [
  { text, mode: 'identifier' as const }, { text, mode: 'identifier' as const, case_sensitive: true },
]), { text: '中文🙂\nsecond', multiline: true }, { text: 'Signal.*end', mode: 'regex', multiline: true, dotall: true },
{ text: '^Signal|end$', mode: 'regex' }, { text: '(?=Signal)', mode: 'regex' });

for (let seed = 1; seed <= 120; seed++) {
  test('generated graph seed ' + seed + ': field oracle, coordinates and canonical identity', () => {
    const graph = generatedGraph(seed);
    const decoded = decodeResponse(graphResponse([graph]));
    assert.deepEqual(decoded.errors, []);
    const doc = decoded.documents[0];
    assert.deepEqual(doc.search_spans!.map(s => doc.text.slice(s.start, s.end)).sort(), modelFields(graph).map(f => f.value).sort());
    for (const q of queries) {
      const actual = matchDocuments([doc], q.text, q.mode === 'identifier' ? 'identifier_occurrence' : q.mode ?? 'text',
        q.case_sensitive ?? false, 'expanded', undefined, q);
      assert.equal(actual.total_occurrences, graphHits(graph, q), JSON.stringify({ seed, q }));
      const coordinates = fieldCoordinates(doc, q);
      assert.deepEqual(actual.results.flatMap(d => d.matches!.flatMap(m => m.columns.map(c => [m.line, c]))),
        coordinates.map(c => [c.start_line, c.start_column]));
      if (q.mode === 'regex' || q.multiline) assert.deepEqual(actual.results.flatMap(d => d.matches!.flatMap(m => m.ranges!)), coordinates);
      for (const hit of actual.results) for (const line of hit.matches!) for (const column of line.columns) {
        const lines = doc.text.split('\n');
        const offset = lines.slice(0, line.line - 1).reduce((n, s) => n + s.length + 1, 0) + [...lines[line.line - 1]].slice(0, column - 1).join('').length;
        assert.ok(doc.search_spans!.some(s => offset >= s.start && offset <= s.end), 'hit must be inside a real model field');
        assert.equal(line.text, lines[line.line - 1]);
      }
    }
    const reordered = structuredClone(graph);
    for (const list of [reordered.nodes, reordered.pins, reordered.methods, reordered.scopes, reordered.comments, reordered.sequences, reordered.boundaries, reordered.connections]) list.reverse();
    reordered.connections.forEach((e, i) => { e.id = i + 10000; });
    assert.equal(decodeResponse(graphResponse([reordered])).documents[0].source_sha256, doc.source_sha256);
  });
}

for (const [width, depth] of [[0, 0], [24, 16], [1200, 0]]) {
  test('structural extremes: width ' + width + ', hierarchy depth ' + depth, async () => {
    const graph = generatedGraph(999, width, depth), raw = graphResponse([graph]);
    // The structural oracle opts into a larger host budget; default Agent pages remain bounded.
    const session = new AgentSession({ request: async () => raw }, { maxPageBytes: 2 * 1024 * 1024 });
    try {
      const found = await session.execute({ query: 'Main', context: 0 }) as AgentSearchResponse;
      const read = await session.execute({ operation: 'read', ref: found.searches[0].results[0].ref, include_graph: true, if_unchanged: true }) as AgentReadResponse;
      assert.equal(read.graph!.nodes.length, graph.nodes.length);
      assert.equal(read.graph!.connections.length, graph.connections.length);
      assert.equal(read.graph!.boundaries.length, graph.boundaries.length);
      assert.equal(read.graph!.scopes.length, depth + 1);
      const bounded = new AgentSession({ request: async () => raw });
      try {
        const small = await bounded.execute({ query: 'Main', context: 0 }) as AgentSearchResponse;
        const ref = small.searches[0].results[0].ref;
        if (Buffer.byteLength(JSON.stringify(read)) > 128 * 1024) {
          await assert.rejects(bounded.execute({ operation: 'read', ref, include_graph: true }),
            error => error instanceof ToolError && error.code === 'PAGE_TOO_LARGE');
        }
        let page = await bounded.execute({ operation: 'read', ref }) as AgentReadResponse, text = page.diagram_text!;
        while (page.has_more) { page = await bounded.execute({ cursor: page.next_cursor }) as AgentReadResponse; text += page.diagram_text; }
        assert.equal(text, decodeResponse(raw).documents[0].text);
      } finally { bounded.close(); }
    } finally { session.close(); }
  });
}

for (const limit of [1, 7, 50, 200]) {
  test('mixed batch pagination preserves all occurrences and context at limit ' + limit, async () => {
    const graphs = [generatedGraph(1), generatedGraph(2)], raw = graphResponse(graphs);
    let calls = 0;
    const session = new AgentSession({ request: async () => { calls++; return raw; } });
    const selected: AgentQuery[] = [{ text: 'Signal' }, { text: 'get', mode: 'identifier' }, { text: '中文🙂\nsecond', multiline: true },
      { text: '^Signal', mode: 'regex' }, { text: 'Missing' }];
    try {
      let page = await session.execute({ query: selected, context: 10, limit }) as AgentSearchResponse;
      const totals = selected.map(q => graphs.reduce((n, g) => n + graphHits(g, q), 0));
      const counts = selected.map(() => 0), seen = new Set<string>(), cursors = new Set<string>(), refs = new Map<string, string>();
      const docs = decodeResponse(raw).documents;
      for (;;) {
        assert.equal(page.status, 'ok'); assert.ok(page.returned_hits <= limit);
        assert.ok(Buffer.byteLength(JSON.stringify(page)) <= 128 * 1024);
        assert.deepEqual(page.searches.map(q => q.total_hits), totals);
        let returned = 0;
        for (const q of page.searches) for (const hit of q.results) {
          const doc = docs.find(d => d.graphical_location?.specification_source_oid === hit.diagram_oid)!;
          const prior = refs.get(hit.diagram_oid!); if (prior) assert.equal(hit.ref, prior); else refs.set(hit.diagram_oid!, hit.ref);
          for (const m of matchesOf(hit)) for (const c of m.columns) {
            const key = JSON.stringify([q.index, hit.diagram_oid, m.line, c]);
            assert.ok(!seen.has(key), 'no duplicate occurrence across pages'); seen.add(key); counts[q.index]++; returned++;
          }
          for (const l of linesOf(hit)) {
            const original = doc.text.split('\n')[l.line - 1];
            assert.equal(l.text, [...original].slice((l.start_column ?? 1) - 1, (l.start_column ?? 1) - 1 + [...l.text].length).join(''));
          }
        }
        assert.equal(returned, page.returned_hits);
        if (!page.has_more) { assert.equal(page.next_cursor, null); break; }
        assert.ok(page.next_cursor && !cursors.has(page.next_cursor)); cursors.add(page.next_cursor);
        page = await session.execute({ cursor: page.next_cursor }) as AgentSearchResponse;
      }
      assert.deepEqual(counts, totals); assert.equal(calls, 1, 'pagination reuses its immutable request snapshot');
    } finally { session.close(); }
  });
}

const mutations: Record<string, (g: DiagramBody) => void> = {
  node_name: g => { g.nodes[0].name += '_changed'; },
  element_alias: g => { g.nodes[0].element_alias = 'cdcd'; },
  element_type: g => { g.nodes[0].element_type = 'SGVariable'; },
  component_path: g => { g.nodes[0].component_path += '_changed'; },
  pin_name: g => { g.pins[0].name += '_changed'; },
  pin_direction: g => { g.pins[0].output = true; },
  edge_endpoint: g => { g.connections[0].to_pin = 6; },
  edge_type: g => { g.connections[0].type = '3'; },
  hierarchy_boundary: g => {
    const b = g.boundaries[0], p = g.pins.find(p => p.scope === b.child_scope && p.id === b.child_pin_id)!;
    g.pins.push({ ...p, id: 999 }); b.child_pin_id = 999;
  },
  sequence_number: g => { g.sequences[0].number++; },
  sequence_method: g => { g.sequences[0].method = 'tick'; },
  method_ownership: g => { g.methods.pop(); },
  process_kind: g => { g.methods[0].kind = 'process'; },
  scope_name: g => { g.scopes[1].name = 'NewStage'; },
  comment: g => { g.comments[0].text += 'changed'; },
};
for (const [name, mutate] of Object.entries(mutations)) {
  test('live reread revision rejects changed ' + name + ' even when the query still matches', async () => {
    const graph = generatedGraph(1), session = new AgentSession({ request: async () => graphResponse([graph]) });
    try {
      const r = await session.execute({ query: 'Main' }) as AgentSearchResponse, ref = r.searches[0].results[0].ref;
      mutate(graph);
      await assert.rejects(session.execute({ operation: 'read', ref, if_unchanged: true }), { code: 'SOURCE_CHANGED' });
      assert.equal((await session.execute({ operation: 'read', ref }) as AgentReadResponse).status, 'changed');
    } finally { session.close(); }
  });
}

const corruptions: Record<string, (g: DiagramBody) => void> = {
  reversed_edge: g => { const e = g.connections[0]; [e.from_pin, e.to_pin] = [e.to_pin, e.from_pin]; },
  output_to_output: g => { g.connections[0].to_pin = 5; },
  input_to_input: g => { g.connections[0].from_pin = 2; },
  boundary_to_ordinary_node: g => { const b = g.boundaries[0]; g.nodes.find(n => n.scope === b.child_scope && n.id === b.child_node_id)!.kind = 'element'; },
  boundary_same_direction: g => { const b = g.boundaries[0]; const p = g.pins.find(p => p.scope === b.scope && p.id === b.pin_id)!; p.input = false; p.output = true; },
  boundary_without_direction: g => { const b = g.boundaries[0]; for (const p of g.pins) if ((p.scope === b.scope && p.id === b.pin_id) || (p.scope === b.child_scope && p.id === b.child_pin_id)) { p.input = false; p.output = false; } },
  dangling_edge: g => { g.connections[0].to_pin = 888888; },
  duplicate_node: g => { g.nodes.push(structuredClone(g.nodes[0])); },
  duplicate_pin: g => { g.pins.push(structuredClone(g.pins[0])); },
  duplicate_scope: g => { g.scopes.push(structuredClone(g.scopes[0])); },
  duplicate_edge: g => { g.connections.push(structuredClone(g.connections[0])); },
  duplicate_boundary: g => { g.boundaries.push(structuredClone(g.boundaries[0])); },
  conflicting_boundary_parent: g => { g.boundaries.push({ ...g.boundaries[0], child_pin_id: 14 }); },
  conflicting_boundary_child: g => {
    g.pins.push({ ...g.pins.find(p => p.scope === 'root' && p.id === 19000)!, id: 19001 });
    g.boundaries.push({ ...g.boundaries[0], pin_id: 19001 });
  },
  duplicate_sequence: g => { g.sequences.push(structuredClone(g.sequences[0])); },
  wrong_pin_owner: g => { g.pins[0].node_id = 888888; },
  wrong_scope: g => { g.nodes[0].scope = 'root/h888'; },
  wrong_comment_scope: g => { g.comments[0].scope = 'root/h888'; },
  negative_node_id: g => { g.nodes[0].id = -1; },
  unsafe_node_id: g => { g.nodes[0].id = Number.MAX_SAFE_INTEGER + 1; },
  missing_child: g => { g.scopes.pop(); },
  wrong_boundary_owner: g => { g.boundaries[0].node_id = 1; },
  wrong_boundary_pin: g => { g.boundaries[0].child_pin_id = 2; },
  missing_sequence_pin: g => { g.sequences[0].pin_id = 888888; },
  invalid_method_alias: g => { g.methods[0].member_id = 'xyz'; },
  depth_limit: g => { Object.assign(g, generatedGraph(1, 24, 17)); },
};
for (const [name, corrupt] of Object.entries(corruptions)) {
  test('corrupt graph fails closed: ' + name, () => {
    const graph = generatedGraph(1); corrupt(graph);
    assert.throws(() => decodeResponse(graphResponse([graph])));
  });
}

test('unknown nodes preserve raw facts and mark search and read partial', async () => {
  const graph = generatedGraph(1); graph.nodes[0].kind = 'vendor_unknown'; graph.nodes[0].name = 'OpaqueNode';
  const session = new AgentSession({ request: async () => graphResponse([graph]) });
  try {
    const r = await session.execute({ query: ['OpaqueNode', 'Signal'] }) as AgentSearchResponse;
    assert.equal(r.status, 'partial'); assert.ok(r.issues?.length);
    const read = await session.execute({ operation: 'read', ref: r.searches[0].results[0].ref, include_graph: true }) as AgentReadResponse;
    assert.equal(read.status, 'partial'); assert.equal(read.graph!.nodes[0].kind, 'vendor_unknown');
  } finally { session.close(); }
});

test('same-named sibling Hierarchies preserve separate node, Pin and boundary identities', async () => {
  const graph = generatedGraph(1), sibling = generatedGraph(1);
  graph.nodes.push({ scope: 'root', id: 9001, kind: 'hierarchy', name: 'Stage' });
  graph.pins.push({ scope: 'root', node_id: 9001, id: 19001, name: 'input', input: true, output: false });
  graph.scopes.push({ path: 'root/h9001', name: 'Stage' });
  for (const list of ['nodes', 'pins', 'connections', 'sequences', 'comments'] as const) {
    (graph[list] as { scope: string }[]).push(...sibling[list].filter(item => item.scope === 'root/h9000').map(item => ({ ...item, scope: 'root/h9001' })));
  }
  graph.boundaries.push({ ...graph.boundaries[0], node_id: 9001, pin_id: 19001, child_scope: 'root/h9001' });
  const raw = graphResponse([graph]), decoded = decodeResponse(raw);
  assert.deepEqual(decoded.errors, []);
  assert.equal(decoded.diagrams![0].nodes.filter(n => n.id === 1).length, 3);
  const session = new AgentSession({ request: async () => raw });
  try {
    const r = await session.execute({ query: 'Stage', context: 0 }) as AgentSearchResponse;
    assert.equal(r.total_hits, 4);
    const read = await session.execute({ operation: 'read', ref: r.searches[0].results[0].ref, include_graph: true }) as AgentReadResponse;
    assert.deepEqual(read.graph!.boundaries.map(b => b.child_scope), ['root/h9000', 'root/h9001']);
  } finally { session.close(); }
});
