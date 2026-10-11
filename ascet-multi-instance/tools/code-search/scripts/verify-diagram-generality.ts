/** Run via verify-paging.ps1. All live calls are serial and share the BDE lock. */
import assert from 'node:assert/strict';
import { appendFile, mkdir, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { performance } from 'node:perf_hooks';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';
import { modelFields, graphHits, escapePattern, fieldCoordinates } from '../test/diagram-generality-support.js';
import { linesOf, matchesOf } from '../test/agent-output.js';
import type { AgentCodeTarget, AgentErrorResponse, AgentFindResponse, AgentQuery, AgentReadResponse, AgentSearchRequest, AgentSearchResponse } from '../src/agent-types.js';
import type { DiagramBody } from '../src/types.js';

const directory = join(ROOT, 'experiments/diagram-generality', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const report: Record<string, any> = { status: 'running', started_utc: new Date().toISOString(), directory,
  scope: 'Native generic BDE extraction, field occurrence search, full Diagram reads, pagination and revisions. Object grouping, connection previews and local reads have a separate verify-object-search suite.',
  oracle: 'Counts independently scanned from unfiltered native model fields; no production matcher/prefilter used for expected counts. Regex uses the JS standard RegExp engine. Coordinates, previews and graph reads checked against the full captured snapshot.',
  timing_boundary: 'Persistent JSONL request through parsed response, database already loaded by audited snapshot. Startup and continuation pages separate. All live calls serial under shared local-ascet.lock.',
  audit_boundary: 'Read-only API. Audited snapshot uses typed stored-source deep copy/compare around native getters. Whole-run source fingerprint checked; no UI/undo validation, model edits or restarts.',
  query_checks: 0, compared_hit_coordinates: 0, checked_preview_lines: 0, diagrams_read: 0, graph_reads: 0, oversized_graph_rejections: 0,
  diagram_read_pages: 0, searchable_fields: 0, long_fields_queried_by_prefix: 0 };
const observations: { name: string; ms: number; bytes: number; returned?: number; total?: number }[] = [];
const save = (name: string, value: unknown) => writeFile(join(directory, name + '.json'), JSON.stringify(value, null, 2) + '\n');
const key = (g: { component_oid: string; source_oid: string }) => JSON.stringify([g.component_oid, g.source_oid]);
const chunks = <T>(values: T[], size: number): T[][] => Array.from({ length: Math.ceil(values.length / size) }, (_, i) => values.slice(i * size, (i + 1) * size));
const client = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js'), '--agent'], timeoutMs: 90_000 });
async function snapshot(audit: boolean) {
  const bridge = new Bridge(90);
  try {
    const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: audit });
    const decoded = decodeResponse(raw); assert.deepEqual(decoded.errors, []);
    await save(audit ? 'source-before-audited' : 'source-after', { raw, decoded }); return { raw, decoded };
  } finally { await bridge.close(); }
}
async function request<T>(name: string, input: unknown, allowError = false): Promise<T> {
  const start = performance.now(), output: any = await client.request(input), ms = performance.now() - start;
  observations.push({ name, ms, bytes: Buffer.byteLength(JSON.stringify(output)),
    ...(output.returned_hits !== undefined ? { returned: output.returned_hits, total: output.total_hits } : {}) });
  await appendFile(join(directory, 'requests.jsonl'), JSON.stringify({ index: observations.length, name, ms, input, output }) + '\n');
  if (!allowError) assert.equal(output.status, 'ok', JSON.stringify(output).slice(0, 3000));
  return output;
}
const metrics = (values: number[]) => {
  const a = [...values].sort((x, y) => x - y);
  return { count: a.length, median: a[Math.floor(a.length / 2)], p95: a[Math.ceil(a.length * .95) - 1], max: a.at(-1) };
};
try {
  const before = await snapshot(true), data = before.decoded, graphs = data.diagrams!;
  assert.ok(graphs.length > 0, 'Loaded database must contain BDE Diagrams');
  const byKey = new Map(graphs.map(g => [key(g), g]));
  const byPath = new Map(data.documents.filter(d => d.kind === 'diagram').map(d => [JSON.stringify([d.component_path, d.graphical_location!.specification_source_oid]), d]));
  Object.assign(report, { database: before.raw.database, ascet_pid: before.raw.ascet_pid, coverage: data.coverage,
    source_fingerprint: fingerprint(data), audited_diagrams: graphs.length,
    node_kinds: Object.fromEntries([...new Set(graphs.flatMap(g => g.nodes.map(n => n.kind)))].map(kind => [kind, graphs.reduce((sum, g) => sum + g.nodes.filter(n => n.kind === kind).length, 0)])),
    hierarchy_diagrams: graphs.filter(g => g.scopes.length > 1).length, shared_method_diagrams: graphs.filter(g => g.methods.length > 1).length });
  // Confirm all real fields, including duplicates, are represented by searchable spans exactly once.
  for (const g of graphs) {
    const d = data.documents.find(d => d.component_oid === g.component_oid && d.graphical_location?.specification_source_oid === g.source_oid)!;
    assert.deepEqual(d.search_spans!.map(s => d.text.slice(s.start, s.end)).sort(), modelFields(g).map(f => f.value).sort());
    report.searchable_fields += modelFields(g).length;
  }
  await request('startup', { operation: 'find', in: { component: graphs[0].component_oid, kind: 'diagram' } });

  async function checkSearch(name: string, input: AgentSearchRequest, selected: DiagramBody[]) {
    const queries = (Array.isArray(input.query) ? input.query : [input.query]).map(q => ({
      mode: input.mode, case_sensitive: input.case_sensitive, multiline: input.multiline, dotall: input.dotall,
      ...(typeof q === 'string' ? { text: q } : q),
    }));
    const expected = queries.map(q => new Map(selected.map(g => [key(g), graphHits(g, q)])));
    const totals = expected.map(m => [...m.values()].reduce((a, b) => a + b, 0));
    const expectedCoordinates = new Set<string>();
    const expectedRanges = new Map<string, unknown>();
    for (const [index, q] of queries.entries()) for (const g of selected) {
      const doc = data.documents.find(d => d.component_oid === g.component_oid && d.graphical_location?.specification_source_oid === g.source_oid)!;
      for (const c of fieldCoordinates(doc, q)) {
        const occurrence = JSON.stringify([index, key(g), c.start_line, c.start_column]);
        expectedCoordinates.add(occurrence); expectedRanges.set(occurrence, c);
      }
    }
    const counts = queries.map(() => new Map<string, number>()), seen = new Set<string>(), cursors = new Set<string>(), refs = new Map<string, string>();
    let page = await request<AgentSearchResponse>(name, input), pages = 0;
    for (;;) {
      assert.deepEqual(page.searches.map(q => q.total_hits), totals, 'field count mismatch: ' + name);
      assert.equal(page.total_hits, totals.reduce((a, b) => a + b, 0));
      assert.ok(page.returned_hits <= (input.limit ?? 50));
      assert.ok(Buffer.byteLength(JSON.stringify(page)) <= 128 * 1024);
      let returned = 0;
      for (const q of page.searches) {
        let queryReturned = 0;
        for (const hit of q.results) {
          const doc = byPath.get(JSON.stringify([hit.component_path, hit.diagram_oid])); assert.ok(doc, 'Unexpected Diagram identity');
          const id = key({ component_oid: doc.component_oid, source_oid: hit.diagram_oid! });
          assert.ok(expected[q.index].has(id), 'Out-of-scope result');
          const prior = refs.get(id); if (prior) assert.equal(hit.ref, prior); else refs.set(id, hit.ref);
          assert.equal(hit.method, undefined, 'A shared Diagram must not be attributed to one Method');
          assert.deepEqual(hit.diagram_methods, byKey.get(id)!.methods.map(m => ({ name: m.name, kind: m.kind })));
          for (const m of matchesOf(hit)) for (const [columnIndex, column] of m.columns.entries()) {
            const occurrence = JSON.stringify([q.index, id, m.line, column]);
            assert.ok(!seen.has(occurrence), 'Repeated page occurrence'); seen.add(occurrence);
            assert.ok(expectedCoordinates.has(occurrence), 'Wrong query match coordinate');
            if (m.ranges) assert.deepEqual(m.ranges[columnIndex], expectedRanges.get(occurrence), 'Wrong match end coordinate');
            const lines = doc.text.split('\n'), line = lines[m.line - 1]; assert.ok(line !== undefined);
            const offset = lines.slice(0, m.line - 1).reduce((n, s) => n + s.length + 1, 0) + [...line].slice(0, column - 1).join('').length;
            assert.ok(doc.search_spans!.some(s => offset >= s.start && offset <= s.end), 'Coordinate outside raw searchable fields');
            counts[q.index].set(id, (counts[q.index].get(id) ?? 0) + 1); returned++; queryReturned++; report.compared_hit_coordinates++;
          }
          for (const l of linesOf(hit)) {
            const original: string = doc.text.split('\n')[l.line - 1];
            const start = (l.start_column ?? 1) - 1;
            assert.equal(l.text, [...original].slice(start, start + [...l.text].length).join('')); report.checked_preview_lines++;
          }
        }
        assert.equal(q.returned_hits, queryReturned);
      }
      assert.equal(returned, page.returned_hits);
      if (!page.has_more) { assert.equal(page.next_cursor, null); break; }
      assert.ok(page.next_cursor && !cursors.has(page.next_cursor)); cursors.add(page.next_cursor);
      assert.ok(++pages < 10000, 'Pagination must make bounded progress');
      page = await request<AgentSearchResponse>(name + '-page', { cursor: page.next_cursor });
    }
    assert.deepEqual([...seen].sort(), [...expectedCoordinates].sort(), 'Missing or extra match coordinates');
    for (let i = 0; i < queries.length; i++) for (const [id, expectedCount] of expected[i]) assert.equal(counts[i].get(id) ?? 0, expectedCount, 'Per-Diagram count mismatch');
    report.query_checks += queries.length;
  }

  const components = [...new Set(graphs.map(g => g.component_oid))];
  for (const [index, component] of components.entries()) {
    const selected = graphs.filter(g => g.component_oid === component);
    let found = await request<AgentFindResponse>('find-diagrams', { operation: 'find', in: { component, kind: 'diagram' }, limit: 200 });
    const targets: AgentCodeTarget[] = [];
    for (;;) {
      targets.push(...found.results as AgentCodeTarget[]);
      if (!found.has_more) break;
      found = await request<AgentFindResponse>('find-diagrams-page', { cursor: found.next_cursor });
    }
    assert.equal(targets.length, selected.length);
    for (const target of targets) {
      const g = selected.find(g => g.source_oid === target.diagram_oid)!; assert.ok(g);
      const { issues: _issues, ...facts } = g;
      const expectedGraph = { ...facts, scope: 'diagram' };
      let first = await request<AgentReadResponse | AgentErrorResponse>('read-diagram-graph',
        { operation: 'read', ref: target.ref, include_graph: true, if_unchanged: true }, true);
      assert.ok(Buffer.byteLength(JSON.stringify(first)) <= 128 * 1024);
      if (first.status === 'error') {
        assert.equal(first.code, 'PAGE_TOO_LARGE');
        assert.ok(Buffer.byteLength(JSON.stringify(expectedGraph)) > 128 * 1024, 'A small graph must fit a single-ref response');
        report.oversized_graph_rejections++;
        first = await request<AgentReadResponse>('read-diagram-text', { operation: 'read', ref: target.ref, if_unchanged: true });
      } else {
        assert.equal(first.status, 'ok'); assert.deepEqual(first.graph, expectedGraph); report.graph_reads++;
      }
      let page = first as AgentReadResponse, text = page.diagram_text!;
      const cursors = new Set<string>();
      for (;;) {
        assert.equal(page.status, 'ok'); assert.equal(page.ref, target.ref);
        assert.equal(page.diagram_oid, target.diagram_oid); assert.equal(page.component_path, target.component_path);
        assert.ok(Buffer.byteLength(JSON.stringify(page)) <= 128 * 1024); report.diagram_read_pages++;
        if (page.graph) assert.deepEqual(page.graph, expectedGraph);
        if (!page.has_more) { assert.equal(page.next_cursor ?? null, null); break; }
        assert.ok(page.next_cursor && !cursors.has(page.next_cursor) && cursors.size < 10000);
        cursors.add(page.next_cursor);
        page = await request<AgentReadResponse>('read-diagram-page', { cursor: page.next_cursor });
        assert.equal(typeof page.diagram_text, 'string'); text += page.diagram_text;
      }
      assert.equal(text, byPath.get(JSON.stringify([target.component_path, target.diagram_oid]))!.text);
      report.diagrams_read++;
    }
    const fields = selected.flatMap(modelFields), values = [...new Set(fields.map(f => [...f.value].slice(0, 256).join('')))];
    report.long_fields_queried_by_prefix += fields.filter(f => [...f.value].length > 256).length;
    const terms: AgentQuery[] = values.flatMap(text => [
      { text, case_sensitive: true, multiline: text.includes('\n') },
      { text: text.replace(/[A-Z]/g, c => c.toLowerCase()), case_sensitive: false, multiline: text.includes('\n') },
      { text: escapePattern(text), mode: 'regex' as const, case_sensitive: true, multiline: text.includes('\n') },
      ...(/^[A-Za-z_][A-Za-z_0-9]*$/.test(text) ? [{ text, mode: 'identifier' as const, case_sensitive: true }] : []),
    ]);
    for (const group of chunks(terms, 32)) await checkSearch('scoped-field-matrix', { query: group, in: { component, kind: 'diagram' }, context: 0, limit: 200 }, selected);
    // Shared Methods select their owning Diagram, regardless of whether they occur in node text.
    for (const member of [...new Set(selected.flatMap(g => g.methods.map(m => m.name)))]) {
      const scoped = selected.filter(g => g.name === member || g.methods.some(m => m.name === member));
      await checkSearch('method-ownership', { query: scoped.map(g => modelFields(g)[0].value), in: { component, member, kind: 'diagram' }, context: 0, limit: 200 }, scoped);
    }
    if ((index + 1) % 8 === 0 || index + 1 === components.length) console.log(JSON.stringify({ progress: index + 1, components: components.length, query_checks: report.query_checks, requests: observations.length }));
  }

  const sample = graphs.find(g => g.nodes.length > 20 && g.nodes.some(n => n.kind === 'element' && /^[A-Za-z_][A-Za-z_0-9]*$/.test(n.name)))!;
  assert.ok(sample);
  const identifier = sample.nodes.find(n => n.kind === 'element' && /^[A-Za-z_][A-Za-z_0-9]*$/.test(n.name))!.name;
  const sampleGraphs = graphs.filter(g => g.component_oid === sample.component_oid);
  const timingCases: { name: string; input: AgentSearchRequest; graphs: DiagramBody[] }[] = [
    { name: 'global-identifier', input: { query: identifier, mode: 'identifier', in: { kind: 'diagram' }, context: 0, limit: 200 }, graphs },
    { name: 'global-no-hit', input: { query: '__GENERALITY_ABSENT_20261002__', in: { kind: 'diagram' }, context: 0, limit: 200 }, graphs },
    { name: 'global-batch', input: { query: [identifier, 'init', 'Main'], in: { kind: 'diagram' }, context: 0, limit: 200 }, graphs },
    { name: 'global-regex-fallback', input: { query: escapePattern(identifier) + '|__ABSENT__', mode: 'regex', in: { kind: 'diagram' }, context: 0, limit: 200 }, graphs },
    { name: 'scoped-context', input: { query: identifier, in: { component: sample.component_oid, kind: 'diagram' }, context: 10, limit: 50 }, graphs: sampleGraphs },
  ];
  for (let round = 0; round < 15; round++) {
    for (const c of timingCases) await checkSearch(c.name, c.input, c.graphs);
    if ((round + 1) % 5 === 0) console.log(JSON.stringify({ timing_round: round + 1, requests: observations.length }));
  }
  for (const limit of [1, 7, 50, 200]) await checkSearch('explicit-pagination-' + limit,
    { query: ['get', identifier, '__ABSENT__'], in: { component: sample.component_oid, kind: 'diagram' }, context: 10, limit }, sampleGraphs);
  await client.close();
  const after = await snapshot(false);
  assert.equal(fingerprint(after.decoded), fingerprint(data), 'Saved model changed during verification');
  Object.assign(report, { status: 'passed', completed_utc: new Date().toISOString(), model_stable: true, jsonl_requests: observations.length, observations,
    timings_ms: Object.fromEntries([...new Set(observations.map(o => o.name))].map(name => [name, metrics(observations.filter(o => o.name === name).map(o => o.ms))])),
    response_bytes: Object.fromEntries([...new Set(observations.map(o => o.name))].map(name => [name, metrics(observations.filter(o => o.name === name).map(o => o.bytes))])),
    timing_queries: timingCases.map(c => ({ name: c.name, input: c.input })) });
  await save('report', report);
  console.log(JSON.stringify({ status: report.status, directory, diagrams_read: report.diagrams_read, fields: report.searchable_fields,
    queries: report.query_checks, requests: report.jsonl_requests, coordinates: report.compared_hit_coordinates, timings_ms: report.timings_ms }, null, 2));
} catch (error) {
  Object.assign(report, { status: 'failed', error: error instanceof Error ? error.stack : String(error), observations });
  await save('report', report); throw error;
} finally { await client.close(); }
