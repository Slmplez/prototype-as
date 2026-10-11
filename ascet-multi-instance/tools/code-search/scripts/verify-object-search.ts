/** Serial read-only live verification. Start only through verify-paging.ps1. */
import assert from 'node:assert/strict';
import { mkdir, writeFile, appendFile } from 'node:fs/promises';
import { join } from 'node:path';
import { performance } from 'node:perf_hooks';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';
import { modelFields, escapePattern } from '../test/diagram-generality-support.js';
import { objectOracle, localOracle } from '../test/object-oracle.js';
import type { AgentSearchResponse, AgentReadResponse, AgentBatchReadResponse, AgentReadContent, AgentQuery, AgentSearchRequest, AgentDiagramHit } from '../src/agent-types.js';
import type { DiagramBody } from '../src/types.js';

const directory = join(ROOT, 'experiments/object-search', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const report: Record<string, any> = { status: 'running', directory, started_utc: new Date().toISOString(),
  query_checks: 0, objects_checked: 0, connection_previews_checked: 0, local_reads_checked: 0,
  timing_boundary: 'Persistent JSONL request through parsed response; loaded database, serial shared lock. Startup separate. Read projections still read the whole Component; pages use immutable snapshots.',
  oracle_boundary: 'Expected grouping uses raw unfiltered fields and owners, without the production provenance/grouping implementation. Neighborhoods use an independent raw-edge BFS. Graph extraction itself is not independently reimplemented.' };
const observations: { name: string; ms: number; bytes: number }[] = [];
const examples: { scenario: string; input: unknown; response: unknown }[] = [];
const save = (name: string, value: unknown) => writeFile(join(directory, name + '.json'), JSON.stringify(value, null, 2) + '\n');
const client = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js'), '--agent'], timeoutMs: 90_000 });
async function request<T>(name: string, input: unknown): Promise<T> {
  const start = performance.now(), output: any = await client.request(input), ms = performance.now() - start;
  observations.push({ name, ms, bytes: Buffer.byteLength(JSON.stringify(output)) });
  await appendFile(join(directory, 'requests.jsonl'), JSON.stringify({ index: observations.length, name, ms, input, output }) + '\n');
  assert.equal(output.status, 'ok', JSON.stringify(output).slice(0, 4000)); return output;
}
async function snapshot(audit: boolean) {
  const bridge = new Bridge(90);
  try {
    const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: audit });
    const decoded = decodeResponse(raw);
    await save(audit ? 'source-before-audited' : 'source-after', { raw, decoded });
    assert.deepEqual(decoded.errors, []); return { raw, decoded };
  } finally { await bridge.close(); }
}
const chunks = <T>(a: T[], size: number) => Array.from({ length: Math.ceil(a.length / size) }, (_, i) => a.slice(i * size, (i + 1) * size));
const metrics = (values: number[]) => { const a = [...values].sort((x, y) => x - y); return { samples: a.length, median: a[Math.floor(a.length / 2)], p95: a[Math.ceil(a.length * .95) - 1], max: a.at(-1) }; };
try {
  const before = await snapshot(true), data = before.decoded, graphs = data.diagrams!;
  Object.assign(report, { database: before.raw.database, ascet_pid: before.raw.ascet_pid, coverage: data.coverage, audited_diagrams: graphs.length, source_fingerprint: fingerprint(data) });
  const pathOf = (g: DiagramBody) => data.components.find(c => c.oid === g.component_oid)!.path;
  await request('startup', { query: '__OBJECT_SEARCH_ABSENT__', group_by: 'object', in: { component: graphs[0].component_oid } });

  async function check(input: AgentSearchRequest, selected: DiagramBody[], name = 'object-field-matrix') {
    const queries = (Array.isArray(input.query) ? input.query : [input.query]).map(q => typeof q === 'string' ? { text: q, mode: input.mode } : q);
    const expected = queries.map(q => selected.map(g => objectOracle(g, q)));
    const hits: { graph: DiagramBody; query: number; hit: AgentDiagramHit }[] = [];
    const seen = new Set<string>(), totals = expected.map(items => items.reduce((n, m) => n + m.size, 0));
    let page = await request<AgentSearchResponse>(name, input), returned = 0;
    for (;;) {
      assert.deepEqual(page.searches.map(q => q.total_hits), totals); returned += page.returned_hits;
      assert.ok(page.returned_hits <= (input.limit ?? 50)); assert.ok(Buffer.byteLength(JSON.stringify(page)) <= 128 * 1024);
      assert.equal(page.total_hits, totals.reduce((a, b) => a + b, 0));
      for (const q of page.searches) for (const result of q.results) {
        const g = selected.find(g => g.source_oid === result.diagram_oid && pathOf(g) === result.component_path)!; assert.ok(g);
        assert.equal(result.snippets, undefined); assert.equal(result.method, undefined);
        assert.deepEqual(result.diagram_methods, g.methods.map(m => ({ name: m.name, kind: m.kind })));
        for (const hit of result.hits!) {
          if (hit.kind !== 'comment') { const identity = q.index + ':' + hit.ref; assert.ok(!seen.has(identity)); seen.add(identity); }
          assert.ok(hit.matched_fields.length > 0); hits.push({ graph: g, query: q.index, hit }); report.objects_checked++;
          for (const c of hit.connections) {
            const from = 'from_pin_id' in c ? c.from_pin_id : c.from.pin_id, to = 'to_pin_id' in c ? c.to_pin_id : c.to.pin_id;
            assert.ok(g.connections.some(e => e.scope === (hit.hierarchy ?? 'root') && e.from_pin === from && e.to_pin === to)); report.connection_previews_checked++;
          }
          for (const b of hit.boundaries ?? []) assert.ok(g.boundaries.some(raw => raw.scope === (b.outer.hierarchy ?? 'root') && raw.pin_id === b.outer.pin_id && raw.child_scope === b.inner.hierarchy && raw.child_pin_id === b.inner.pin_id));
        }
      }
      if (!page.has_more) break;
      page = await request<AgentSearchResponse>(name + '-page', { cursor: page.next_cursor });
    }
    assert.equal(returned, totals.reduce((a, b) => a + b, 0));
    for (let qi = 0; qi < queries.length; qi++) for (let gi = 0; gi < selected.length; gi++) {
      const actual = hits.filter(h => h.query === qi && h.graph === selected[gi]);
      assert.equal(actual.length, expected[qi][gi].size);
      assert.equal(actual.reduce((n, h) => n + (h.hit.occurrences ?? 1), 0), [...expected[qi][gi].values()].reduce((a, b) => a + b, 0));
    }
    report.query_checks += queries.length; return hits;
  }

  const components = [...new Set(graphs.map(g => g.component_oid))];
  for (const [i, component] of components.entries()) {
    const selected = graphs.filter(g => g.component_oid === component);
    const values = [...new Set(selected.flatMap(modelFields).map(f => [...f.value].slice(0, 256).join('')))];
    const terms: AgentQuery[] = values.flatMap(text => [
      { text, case_sensitive: true, multiline: text.includes('\n') },
      { text: text.replace(/[A-Z]/g, c => c.toLowerCase()), case_sensitive: false, multiline: text.includes('\n') },
      { text: escapePattern(text), mode: 'regex' as const, case_sensitive: true, multiline: text.includes('\n') },
      ...(/^[A-Za-z_][A-Za-z_0-9]*$/.test(text) ? [{ text, mode: 'identifier' as const, case_sensitive: true }] : []),
    ]);
    for (const query of chunks(terms, 32)) await check({ query, in: { component, kind: 'diagram' }, group_by: 'object', context: 0, limit: 200 }, selected);
    // Discover every named node in this Component and verify all readable node refs in batches.
    const discovered = await check({ query: '^', mode: 'regex', group_by: 'object', in: { component, kind: 'diagram' }, limit: 200 }, selected, 'discover-objects');
    const nodes = [...new Map(discovered.filter(h => h.hit.kind !== 'diagram' && h.hit.kind !== 'comment').map(h => [h.hit.ref, h])).values()];
    for (const batch of chunks(nodes, 8)) {
      const read = await request<AgentBatchReadResponse>('read-object-identities', { operation: 'read', ref: batch.map(h => h.hit.ref), depth: 0, include_graph: true });
      assert.equal(read.returned_count, batch.length);
      for (let j = 0; j < batch.length; j++) {
        const r = read.results[j] as AgentReadContent, raw = r.graph!.nodes[0];
        assert.equal(r.object!.ref, batch[j].hit.ref); assert.equal(r.scope, 'local'); assert.equal(r.depth, 0);
        const original = batch[j].graph.nodes.find(n => n.scope === raw.scope && n.id === raw.id); assert.deepEqual(raw, original);
        assert.equal(raw.name, batch[j].hit.name); assert.equal(raw.kind, batch[j].hit.kind);
        assert.equal(r.connections!.length, 0); assert.equal('status' in r, false); report.local_reads_checked++;
      }
    }
    if ((i + 1) % 8 === 0 || i === components.length - 1) console.log(JSON.stringify({ components: i + 1, total_components: components.length, queries: report.query_checks, requests: observations.length, read_nodes: report.local_reads_checked }));
  }

  const component = data.components.find(c => c.path.endsWith('\\AutomaticBraking\\AEB_dFxTar'))!; assert.ok(component);
  const graph = graphs.find(g => g.component_oid === component.oid)!;
  const exampleInput = { query: 'C_AEB_AXCDeadZonePos', mode: 'identifier', group_by: 'object', in: { component: component.oid, kind: 'diagram' }, limit: 20 };
  const found = await request<AgentSearchResponse>('example-object-search', exampleInput);
  examples.push({ scenario: 'search_parameter_connection', input: exampleInput, response: found });
  const target = found.searches[0].results[0], object = target.hits![0];
  const readInput = { operation: 'read', ref: object.ref, if_unchanged: true };
  const local = await request<AgentReadResponse>('example-local-read', readInput); examples.push({ scenario: 'read_parameter_neighborhood', input: readInput, response: local });
  assert.equal(local.connections!.length, 1); assert.equal(local.nodes!.length, 2);
  for (const depth of [0, 1, 2]) for (const direction of ['incoming', 'outgoing', 'both']) {
    const r = await request<AgentReadResponse>('directed-neighborhood', { operation: 'read', ref: object.ref, depth, direction, include_graph: true });
    const expected = localOracle(graph, 'root', 39, depth, direction);
    assert.equal(r.has_more, false);
    assert.deepEqual(r.graph!.nodes.map(n => n.id).sort((a, b) => a - b), expected.nodes);
    assert.deepEqual(r.graph!.connections.map(e => e.id).sort((a, b) => a - b), expected.edges);
  }
  const another = await request<AgentSearchResponse>('independent-discovery', exampleInput);
  const otherRef = another.searches[0].results[0].hits![0].ref;
  const across = await request<AgentBatchReadResponse>('read-across-discoveries', { operation: 'read', ref: [object.ref, otherRef], depth: 0 });
  assert.deepEqual((across.results as AgentReadContent[]).map(r => r.object!.ref), [object.ref, otherRef]);
  assert.deepEqual((across.results as AgentReadContent[]).map(r => r.expires_utc), [found.expires_utc, another.expires_utc]);
  const comparisons: { query: string; occurrence: { bytes: number; hits: number }; object: { bytes: number; hits: number } }[] = [];
  for (const query of ['C_AEB_AXCDeadZonePos', 'AEB', 'get']) {
    const record: any = { query };
    for (const group_by of ['occurrence', 'object']) {
      let r = await request<AgentSearchResponse>('size-' + group_by, { query, group_by, in: { component: component.oid, kind: 'diagram' }, limit: 200 });
      const measured = { bytes: 0, hits: r.total_hits };
      for (;;) { measured.bytes += Buffer.byteLength(JSON.stringify(r)); if (!r.has_more) break; r = await request<AgentSearchResponse>('size-' + group_by + '-page', { cursor: r.next_cursor }); }
      record[group_by] = measured;
    }
    comparisons.push(record);
  }
  report.size_comparisons = comparisons;
  // Alternate the two formats, measure search and full/local read separately.
  for (let round = 0; round < 10; round++) {
    for (const group_by of round % 2 ? ['object', 'occurrence'] : ['occurrence', 'object']) {
      const r = await request<AgentSearchResponse>('warm-search-' + group_by, { ...exampleInput, group_by });
      const d = r.searches[0].results[0];
      await request('warm-read-' + group_by, { operation: 'read', ref: group_by === 'object' ? d.hits![0].ref : d.ref, if_unchanged: true });
    }
  }
  for (let round = 0; round < 7; round++) for (const group_by of round % 2 ? ['object', 'occurrence'] : ['occurrence', 'object']) {
    await request('global-' + group_by, { query: 'AEBLockTime', mode: 'identifier', group_by, limit: 200 });
  }
  await client.close();
  const after = await snapshot(false); assert.equal(fingerprint(after.decoded), fingerprint(data));
  Object.assign(report, { status: 'passed', completed_utc: new Date().toISOString(), jsonl_requests: observations.length, model_stable: true, observations,
    timings_ms: Object.fromEntries([...new Set(observations.map(o => o.name))].map(name => [name, metrics(observations.filter(o => o.name === name).map(o => o.ms))])),
    response_bytes: Object.fromEntries([...new Set(observations.map(o => o.name))].map(name => [name, metrics(observations.filter(o => o.name === name).map(o => o.bytes))])) });
  await save('report', report); await save('examples', examples);
  await writeFile(join(ROOT, 'BDE_OBJECT_JSON_EXAMPLES.json'), JSON.stringify({ source: directory, examples }, null, 2) + '\n');
  console.log(JSON.stringify({ directory, status: report.status, requests: report.jsonl_requests, queries: report.query_checks, objects: report.objects_checked,
    nodes_read: report.local_reads_checked, sizes: comparisons, timings_ms: report.timings_ms }, null, 2));
} catch (error) {
  Object.assign(report, { status: 'failed', error: error instanceof Error ? error.stack : String(error), observations }); await save('report', report); throw error;
} finally { await client.close(); }
