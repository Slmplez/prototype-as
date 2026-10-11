import test from 'node:test';
import assert from 'node:assert/strict';
import { AgentSession } from '../src/agent-session.js';
import { DiagramIndex, localRecords } from '../src/diagram-objects.js';
import { generatedGraph, graphResponse } from './diagram-generality-support.js';
import { localOracle } from './object-oracle.js';
import type { AgentCodeTarget, AgentFindResponse, AgentReadResponse, AgentSearchResponse } from '../src/agent-types.js';

for (const scope of ['root', 'root/h9000']) for (const depth of [0, 1, 2]) {
  for (const direction of ['incoming', 'outgoing', 'both'] as const) {
    test(`local graph identity includes hierarchy: ${scope}/${depth}/${direction}`, () => {
      const graph = generatedGraph(2, 8, 1), before = structuredClone(graph);
      const expected = localOracle(graph, scope, 3, depth, direction);
      for (const includeGraph of [false, true]) {
        const records = localRecords(new DiagramIndex(graph), { scope, node_id: 3 }, depth, direction, includeGraph);
        const edges = records.filter(r => r.type === 'connection').map(r => graph.connections[r.index]);
        assert.ok(edges.every(e => e.scope === scope), 'equal numeric IDs must not select another hierarchy');
        assert.deepEqual(edges.map(e => e.id).sort((a, b) => a - b), expected.edges);
        const nodes = records.filter(r => r.type === 'node').map(r => graph.nodes[r.index]);
        assert.ok(nodes.every(n => n.scope === scope));
        assert.deepEqual(nodes.map(n => n.id).sort((a, b) => a - b), expected.nodes);
        const pins = records.filter(r => r.type === 'pin').map(r => graph.pins[r.index]);
        const boundaries = records.filter(r => r.type === 'boundary').map(r => graph.boundaries[r.index]);
        const usedPins = new Set([...edges.flatMap(e => [e.from_pin, e.to_pin]),
          ...boundaries.map(b => b.scope === scope ? b.pin_id : b.child_pin_id)]);
        assert.deepEqual(pins, graph.pins.filter(p => p.scope === scope && expected.nodes.includes(p.node_id) &&
          (includeGraph || p.node_id === 3 || usedPins.has(p.id))));
      }
      assert.deepEqual(graph, before, 'local selection cannot mutate the source graph');
    });
  }
}

test('public local pages remain in their selected hierarchy after transport ID normalization', async () => {
  const graph = generatedGraph(2, 8, 1);
  for (const n of graph.nodes.filter(n => n.id === 3)) n.name = 'ScopedAnchor';
  const session = new AgentSession({ request: async () => graphResponse([graph]) }, { maxPageBytes: 3500 });
  try {
    const found = await session.execute({ query: 'ScopedAnchor', group_by: 'object' }) as AgentSearchResponse;
    const hits = found.searches[0].results[0].hits!;
    assert.equal(hits.length, 2);
    for (const hit of hits) for (const includeGraph of [false, true]) {
      let page = await session.execute({ operation: 'read', ref: hit.ref, depth: 2, include_graph: includeGraph }) as AgentReadResponse;
      const pages = [page];
      while (page.has_more) {
        assert.ok(pages.length < 100);
        const cursor = page.next_cursor!;
        page = await session.execute({ cursor }) as AgentReadResponse;
        assert.deepEqual(await session.execute({ cursor }), page);
        pages.push(page);
      }
      assert.ok(pages.length > 1, 'exercise local paging');
      for (const output of pages) {
        assert.ok(Buffer.byteLength(JSON.stringify(output)) <= 3500);
        assert.ok(output.nodes!.every(n => n.hierarchy === hit.hierarchy));
        assert.ok(output.connections!.every(e => e.from.hierarchy === hit.hierarchy && e.to.hierarchy === hit.hierarchy));
        if (includeGraph) assert.ok(output.graph!.connections.every(e => e.scope === (hit.hierarchy ?? 'root')));
      }
      assert.equal(pages.flatMap(p => p.connections!).length, localOracle(graph, hit.hierarchy ?? 'root', 3, 2, 'both').edges.length);
    }
  } finally { session.close(); }
});

function memberResponse() {
  const shared = generatedGraph(1, 8, 0), nameOnly = generatedGraph(2, 8, 0), module = generatedGraph(3, 8, 0);
  shared.visibility = 'public'; nameOnly.visibility = 'private'; module.visibility = 'public';
  nameOnly.name = 'Init'; nameOnly.scopes[0].name = 'Init';
  nameOnly.methods = [{ member_id: 'aabb', name: 'calc', kind: 'method' }];
  module.methods = [{ member_id: 'aabb', name: 'Init', kind: 'process' }, { member_id: 'ccdd', name: 'tick', kind: 'process' }];
  return graphResponse([shared, nameOnly, module], rows => {
    rows.unshift(['#DIAGRAM_SCOPE', '1']);
    rows.find(r => r[0] === '#COMPONENT' && r[1] === module.component_oid)![7] = 'SGModule';
    rows.push(['#COMPONENT', '4'.padStart(29, '0'), 'TextClass', '', '', '', '', 'SGClass']);
    rows.push(['method', '4'.padStart(29, '0'), 'TextClass', '', 'ASDL', 'text-init', 'init', 'esdl', 'value = 0.0;', '']);
    rows.push(['#COMPONENT', '5'.padStart(29, '0'), 'TextModule', '', '', '', '', 'SGModule']);
    rows.push(['process', '5'.padStart(29, '0'), 'TextModule', '', 'ASDL', 'process-init', 'init', 'esdl', 'value = 1.0;', '']);
    rows.find(r => r[0] === '#STATS')!.splice(1, 6, '5', '5', '2', '2', '24', '0');
  });
}

for (const field of ['name', 'member']) for (const condition of [
  { value: 'init', match: 'exact', count: 5 },
  { value: 'ni', match: 'contains', count: 5 },
  { value: 'init', match: 'exact', case_sensitive: true, count: 3 },
  { value: 'Init', match: 'exact', case_sensitive: true, count: 2 },
] as const) {
  test(`member find distinguishes text Init, BDE Init and Diagram name: ${field}/${JSON.stringify(condition)}`, async () => {
    let calls = 0;
    const session = new AgentSession({ request: async () => { calls++; return memberResponse(); } });
    try {
      let page = await session.execute({ operation: 'find', target: 'members', [field]: condition.value,
        match: condition.match, case_sensitive: 'case_sensitive' in condition && condition.case_sensitive, limit: 1 }) as AgentFindResponse;
      const results = [...page.results] as AgentCodeTarget[];
      assert.equal(page.total_count, condition.count);
      while (page.has_more) {
        const cursor = page.next_cursor!;
        page = await session.execute({ cursor }) as AgentFindResponse;
        assert.deepEqual(await session.execute({ cursor }), page);
        results.push(...page.results as AgentCodeTarget[]);
      }
      assert.equal(calls, 1, 'name pagination reuses its immutable snapshot');
      for (const result of results) {
        if (result.kind === 'diagram') {
          const caseSensitive = 'case_sensitive' in condition;
          const normalize = (s: string) => caseSensitive ? s : s.toLowerCase();
          const expected = result.diagram_methods!.filter(m => condition.match === 'exact'
            ? normalize(m.name) === normalize(condition.value) : normalize(m.name).includes(normalize(condition.value)));
          assert.deepEqual(result.matched_members, expected);
          if (result.diagram === 'Init') assert.deepEqual(result.matched_members, [], 'Diagram name alone does not establish an Init Method');
          else assert.equal(result.matched_members!.length, 1);
          assert.equal(result.method, undefined); assert.equal(result.process, undefined);
        } else {
          assert.equal(result.method ?? result.process, 'init');
          assert.equal(result.matched_members, undefined);
        }
        const read = await session.execute({ operation: 'read', ref: result.ref, if_unchanged: true }) as AgentReadResponse;
        assert.equal(read.status, 'ok', JSON.stringify(read)); assert.equal(read.matched_members, undefined, 'read returns fresh source facts, not query metadata');
        assert.deepEqual(read.diagram_methods, result.diagram_methods);
        assert.ok(read.code ?? read.diagram_text);
      }
    } finally { session.close(); }
  });
}

test('unfiltered member and Diagram directories omit query-only matched members', async () => {
  const session = new AgentSession({ request: async () => memberResponse() });
  try {
    for (const input of [{ target: 'members' }, { target: 'diagrams', name: 'Init' }]) {
      const found = await session.execute({ operation: 'find', ...input }) as AgentFindResponse;
      assert.ok(found.results.length > 0);
      assert.ok(found.results.every(r => !('matched_members' in r)));
    }
  } finally { session.close(); }
});
