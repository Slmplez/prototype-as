import assert from 'node:assert/strict';
import { execFile } from 'node:child_process';
import { promisify } from 'node:util';
import { createHash } from 'node:crypto';
import { createWriteStream } from 'node:fs';
import { appendFile, mkdir, readFile, writeFile } from 'node:fs/promises';
import { once } from 'node:events';
import { finished } from 'node:stream/promises';
import { createGzip } from 'node:zlib';
import { basename, join, resolve } from 'node:path';
import { performance } from 'node:perf_hooks';
import { JsonLineClient, ROOT } from '../src/bridge.js';
import { modelFields, escapePattern } from '../test/diagram-generality-support.js';
import { localOracle, objectOracle } from '../test/object-oracle.js';
import { assertSameRecords as same } from './bde-matrix-compare.js';
import { assertSearchHitSummary, type SearchRefIdentity } from './bde-search-summary-oracle.js';
import type { Snapshot, DiagramBody } from '../src/types.js';
import type { AgentQuery, AgentCodeTarget, AgentObjectTarget, AgentDiagramObject, AgentDiagramHit, AgentReadContent } from '../src/agent-types.js';

const runFile = promisify(execFile);
const archive = resolve(process.env.ASCET_CLI_ARCHIVE ?? join(ROOT, '../../dist/ascet-code-search-cli-0.2.0-20261004T032355104Z.zip'));
const directory = join(ROOT, 'experiments/bde-matrix', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const oracle: Snapshot = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T18-45-19-195Z/before-snapshot.json'), 'utf8')).data;
const graphs = oracle.diagrams!;
assert.equal(graphs.length, 71);
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: '32631', ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' };
const matrix: any[] = [], failures: any[] = [], observations: any[] = [], clients = new Set<JsonLineClient>();
const report: any = { status: 'running', directory, archive, started_utc: new Date().toISOString(), matrix, failures,
  scope: { diagrams: graphs.length, components: new Set(graphs.map(g => g.component_oid)).size,
    nodes: graphs.reduce((n, g) => n + g.nodes.length, 0), connections: graphs.reduce((n, g) => n + g.connections.length, 0),
    boundaries: graphs.reduce((n, g) => n + g.boundaries.length, 0) },
  boundary: 'Actual extracted CLI JSONL on isolated endpoint 32631, serial read-only access. Expected matches and neighborhoods use frozen raw model fields and a separate raw-edge BFS. Extraction is not independently reimplemented. Full wire responses are retained in wire.jsonl.gz; requests.jsonl is a bounded summary for lifecycle audit.',
  timing_boundary: 'Request send through parsed response, before assertion/logging. first_graph_read is after directory loading; cold_cli is a new CLI process, not necessarily a cold ASCET model. Startup is separate.',
  counters: { requests: 0, query_checks: 0, search_hit_refs_read: 0, local_combinations: 0, local_pages: 0,
    find_pages: 0, search_pages: 0, read_pages: 0, cursor_replays: 0, whole_graph_budget_fallbacks: 0, batch_budget_fallbacks: 0,
    search_endpoint_refs_read: 0, search_summary_checks: 0 } };
const save = () => writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
await writeFile(join(directory, 'requests.jsonl'), '');
const wire = createGzip(), sink = createWriteStream(join(directory, 'wire.jsonl.gz'));
wire.pipe(sink);
const wireDone = Promise.all([finished(wire), finished(sink)]);
wireDone.catch(() => {});
let packaged = '', launched = false, active: any;
const key = (scope: string, id: number) => JSON.stringify([scope, id]);
const graphKey = (g: DiagramBody) => g.component_oid + '/' + g.source_oid;
const pathOf = (g: DiagramBody) => oracle.components.find(c => c.oid === g.component_oid)!.path;
const chunks = <T>(items: T[], size: number) => Array.from({ length: Math.ceil(items.length / size) }, (_, i) => items.slice(i * size, (i + 1) * size));
function client() {
  const c = new JsonLineClient({ command: process.execPath, args: [join(packaged, 'dist/src/cli.js'), '--agent'], env, timeoutMs: 90_000 });
  clients.add(c); return c;
}
async function close(c: JsonLineClient) { await c.close(); clients.delete(c); }
async function call(c: JsonLineClient, phase: string, request: any): Promise<any> {
  const started = performance.now(), response: any = await c.request(request), ms = performance.now() - started;
  const index = ++report.counters.requests, bytes = Buffer.byteLength(JSON.stringify(response));
  const row = { index, diagram: active?.identity, phase, ms, bytes, request, response };
  if (!wire.write(JSON.stringify(row) + '\n')) await once(wire, 'drain');
  observations.push({ index, diagram: active?.identity, phase, ms, bytes, status: response.status });
  const summary = { ...row, response: { status: response.status, code: response.code, message: response.message,
    returned_count: response.returned_count, total_count: response.total_count,
    returned_hits: response.returned_hits, total_hits: response.total_hits, has_more: response.has_more,
    sha256: createHash('sha256').update(JSON.stringify(response)).digest('hex') } };
  await appendFile(join(directory, 'requests.jsonl'), JSON.stringify(summary) + '\n');
  assert.ok(bytes <= 128 * 1024, phase + ': response budget');
  return response;
}
async function check(name: string, work: () => Promise<void>) {
  const row: any = { name, status: 'running', first_request: report.counters.requests + 1 };
  active?.checks.push(row);
  try { await work(); row.status = 'passed'; }
  catch (error) {
    row.status = 'failed'; row.error = error instanceof Error ? error.stack : String(error);
    failures.push({ diagram: active?.identity, ...row, last_request: report.counters.requests });
  }
  row.requests = report.counters.requests - row.first_request + 1;
}
async function findAll(c: JsonLineClient, input: any, phase: string): Promise<any[]> {
  let page = await call(c, phase, { operation: 'find', ...input });
  assert.equal(page.status, 'ok', JSON.stringify(page));
  const total = page.total_count, values = [...page.results], cursors = new Set<string>();
  report.counters.find_pages++;
  while (page.has_more) {
    assert.ok(page.next_cursor && !cursors.has(page.next_cursor)); cursors.add(page.next_cursor);
    page = await call(c, 'find-page', { cursor: page.next_cursor });
    assert.equal(page.status, 'ok'); assert.equal(page.total_count, total);
    assert.equal(page.returned_count, page.results.length); values.push(...page.results); report.counters.find_pages++;
    if (cursors.size === 1) {
      assert.deepEqual(await call(c, 'find-replay', { cursor: [...cursors][0] }), page); report.counters.cursor_replays++;
    }
  }
  assert.equal(values.length, total); assert.equal(page.next_cursor, null);
  assert.equal(new Set(values.map(v => v.ref)).size, values.length, 'no duplicate directory refs');
  return values;
}
async function pages(c: JsonLineClient, first: AgentReadContent, phase: string) {
  const values = [first]; let page = first;
  const cursors = new Set<string>();
  while (page.has_more) {
    assert.ok(page.next_cursor && !cursors.has(page.next_cursor)); cursors.add(page.next_cursor!);
    const next = await call(c, phase + '-page', { cursor: page.next_cursor });
    assert.equal(next.status, 'ok', JSON.stringify(next)); assert.equal(next.ref, first.ref);
    if (cursors.size === 1) { assert.deepEqual(await call(c, 'read-replay', { cursor: page.next_cursor }), next); report.counters.cursor_replays++; }
    values.push(next); page = next;
  }
  assert.equal(page.next_cursor ?? null, null); return values;
}
async function fullRead(c: JsonLineClient, target: AgentCodeTarget, g: DiagramBody) {
  const raw = await call(c, 'first_graph_read', { operation: 'read', ref: target.ref, if_unchanged: true, include_graph: true });
  if (raw.status === 'error') {
    assert.equal(raw.code, 'PAGE_TOO_LARGE', JSON.stringify(raw)); report.counters.whole_graph_budget_fallbacks++;
    assert.ok(Buffer.byteLength(JSON.stringify(g)) > 100 * 1024, 'raw graph fallback is reserved for a large graph');
  } else {
    assert.equal(raw.status, 'ok'); const { issues: _issues, ...expected } = g;
    assert.deepEqual(raw.graph, { ...expected, scope: 'diagram' });
  }
  const text = await call(c, 'whole_diagram_text', { operation: 'read', ref: target.ref, if_unchanged: true });
  assert.equal(text.status, 'ok');
  const all = await pages(c, text, 'whole-text'), doc = oracle.documents.find(d => d.kind === 'diagram' && d.component_oid === g.component_oid && d.graphical_location?.specification_source_oid === g.source_oid)!;
  assert.equal(all.map(p => p.diagram_text).join(''), doc.text); report.counters.read_pages += all.length;
  if (doc.text) {
    const source = doc.text.split('\n'), start = Math.min(2, source.length), end = Math.min(start + 3, source.length);
    const range = await call(c, 'diagram_line_range', { operation: 'read', ref: target.ref, lines: { start, end } });
    assert.equal(range.status, 'ok');
    const selected = await pages(c, range, 'line-range');
    assert.equal(selected.map(p => p.diagram_text).join(''), source.slice(start - 1, end).join('\n') + (end < source.length ? '\n' : ''));
  }
  const duplicate = await call(c, 'duplicate_batch_read', { operation: 'read', ref: Array(8).fill(target.ref), if_unchanged: true });
  assert.equal(duplicate.status, 'ok'); assert.equal(duplicate.requested_count, 8); assert.equal(duplicate.returned_count, 8);
  for (const item of duplicate.results) {
    assert.equal(item.ref, target.ref); assert.equal('status' in item, false);
    const parts = await pages(c, item, 'duplicate-text');
    assert.equal(parts.map(p => p.diagram_text).join(''), doc.text); report.counters.read_pages += parts.length;
  }
}
function localExpected(g: DiagramBody, scope: string, id: number, depth: number, direction: string, includeGraph: boolean) {
  const bfs = localOracle(g, scope, id, depth, direction), selected = new Set(bfs.nodes.map(n => key(scope, n)));
  const nodes = g.nodes.filter(n => selected.has(key(n.scope, n.id)));
  const connections = g.connections.filter(e => e.scope === scope && bfs.edges.includes(e.id));
  const boundaries = g.boundaries.filter(b => selected.has(key(b.scope, b.node_id)) || selected.has(key(b.child_scope, b.child_node_id)));
  const usedPins = new Set(connections.flatMap(e => [key(e.scope, e.from_pin), key(e.scope, e.to_pin)]));
  for (const b of boundaries) { usedPins.add(key(b.scope, b.pin_id)); usedPins.add(key(b.child_scope, b.child_pin_id)); }
  const pins = g.pins.filter(p => selected.has(key(p.scope, p.node_id)) &&
    (includeGraph || p.node_id === id || usedPins.has(key(p.scope, p.id))));
  const sequences = g.sequences.filter(s => pins.some(p => p.scope === s.scope && p.id === s.pin_id));
  return { nodes, connections, boundaries, pins, sequences };
}
async function localCheck(c: JsonLineClient, initial: AgentReadContent, g: DiagramBody, target: AgentObjectTarget,
  refs: Map<string, string>, depth: number, direction: string, includeGraph: boolean) {
  const all = await pages(c, initial, 'local'); report.counters.local_pages += all.length;
  const scope = target.hierarchy ?? 'root', expected = localExpected(g, scope, target.node_id, depth, direction, includeGraph);
  const object = (s: string, id: number, alias = false) => {
    const n = g.nodes.find(n => n.scope === s && n.id === id)!; assert.ok(n);
    return { ref: refs.get(key(s, id)), kind: n.kind, name: n.name,
      ...(n.component_path ? { referenced_component_path: n.component_path, ...(alias ? { component_path: n.component_path } : {}) } : {}),
      ...(s !== 'root' ? { hierarchy: s } : {}) };
  };
  const endpoint = (s: string, pin: number) => {
    const p = g.pins.find(p => p.scope === s && p.id === pin)!; assert.ok(p);
    return { ...object(s, p.node_id), pin: p.name, pin_id: p.id };
  };
  for (const page of all) {
    assert.equal(page.scope, 'local'); assert.equal(page.depth, depth); assert.equal(page.direction, direction);
    assert.equal(page.diagram_oid, g.source_oid); assert.equal(page.component_path, pathOf(g));
    assert.deepEqual(page.object, object(scope, target.node_id, true));
    assert.ok(page.nodes!.length <= 100); assert.ok(page.connections!.length <= 200);
    if (!includeGraph) assert.equal(page.graph, undefined);
    else { assert.equal(page.graph!.scope, 'local'); assert.equal(page.graph!.source_oid, g.source_oid); assert.deepEqual(page.graph!.methods, g.methods); }
  }
  same(all.flatMap(p => p.nodes!), expected.nodes.map(n => object(n.scope, n.id, true)), 'local node identity and multiplicity');
  same(all.flatMap(p => p.pins!), expected.pins.map(p => {
    const s = expected.sequences.find(s => s.scope === p.scope && s.pin_id === p.id);
    return { object_ref: refs.get(key(p.scope, p.node_id)), id: p.id, name: p.name, input: p.input, output: p.output,
      ...(s ? { sequence: { method: s.method, number: s.number } } : {}) };
  }), 'local Pins and saved Sequence annotations');
  same(all.flatMap(p => p.connections!), expected.connections.map(e => ({ from: endpoint(e.scope, e.from_pin), to: endpoint(e.scope, e.to_pin) })), 'directed scoped connections');
  same(all.flatMap(p => p.boundaries!), expected.boundaries.map(b => ({ outer: endpoint(b.scope, b.pin_id), inner: endpoint(b.child_scope, b.child_pin_id) })), 'hierarchy boundaries');
  if (includeGraph) for (const field of ['nodes', 'pins', 'connections', 'boundaries', 'sequences'] as const) {
    same(all.flatMap<unknown>(p => p.graph![field]), expected[field], 'raw local ' + field);
  }
  report.counters.local_combinations++;
}
async function allLocal(c: JsonLineClient, g: DiagramBody) {
  const nodes = await findAll(c, { target: 'objects', in: { component: g.component_oid, diagram: g.source_oid }, limit: 37 }, 'object_directory') as AgentObjectTarget[];
  same(nodes.map(n => key(n.hierarchy ?? 'root', n.node_id)), g.nodes.map(n => key(n.scope, n.id)), 'complete node directory including unnamed objects');
  const refs = new Map(nodes.map(n => [key(n.hierarchy ?? 'root', n.node_id), n.ref]));
  active.nodes_discovered = nodes.length;
  for (const includeGraph of [false, true]) for (const depth of [0, 1, 2]) for (const direction of ['incoming', 'outgoing', 'both']) {
    for (const batch of chunks(nodes, 16)) {
      const read = await call(c, 'local_batch', { operation: 'read', ref: batch.map(n => n.ref), depth, direction, include_graph: includeGraph, if_unchanged: true });
      assert.ok(read.status === 'ok' || read.status === 'partial', JSON.stringify(read).slice(0, 2000));
      assert.equal(read.requested_count, batch.length); assert.equal(read.results.length, batch.length);
      for (let i = 0; i < batch.length; i++) {
        let item = read.results[i]; assert.equal(item.ref, batch[i].ref);
        if (item.error) {
          assert.equal(item.error.code, 'PAGE_TOO_LARGE', JSON.stringify(item)); report.counters.batch_budget_fallbacks++;
          item = await call(c, 'local_single_budget_fallback', { operation: 'read', ref: batch[i].ref, depth, direction, include_graph: includeGraph });
          assert.equal(item.status, 'ok');
        }
        await localCheck(c, item, g, batch[i], refs, depth, direction, includeGraph);
      }
    }
    active.local_combinations = (active.local_combinations ?? 0) + nodes.length;
    console.log(JSON.stringify({ event: 'local_progress', diagram: active.identity, include_graph: includeGraph, depth, direction, checked: active.local_combinations }));
  }
}
async function searchCheck(c: JsonLineClient, selected: DiagramBody[], queries: AgentQuery[], scope: any, phase: string, limit = 50) {
  const expected = queries.map(q => selected.map(g => objectOracle(g, q))), totals = expected.map(ms => ms.reduce((n, m) => n + m.size, 0));
  let page = await call(c, phase, { query: queries, in: { ...scope, kind: 'diagram' }, group_by: 'object', context: 0, limit });
  const hits: { query: number; graph: number; hit: AgentDiagramHit }[] = [], cursors = new Set<string>();
  for (;;) {
    assert.equal(page.status, 'ok', JSON.stringify(page).slice(0, 2000)); assert.deepEqual(page.searches.map((q: any) => q.total_hits), totals);
    assert.ok(page.returned_hits <= limit); assert.equal(page.total_hits, totals.reduce((n, x) => n + x, 0));
    let returned = 0;
    for (const q of page.searches) for (const result of q.results) {
      const gi = selected.findIndex(g => g.source_oid === result.diagram_oid && pathOf(g) === result.component_path); assert.ok(gi >= 0);
      assert.equal(result.kind, 'diagram'); assert.equal(result.method, undefined); assert.equal(result.process, undefined);
      assert.deepEqual(result.diagram_methods, selected[gi].methods.map(m => ({ name: m.name, kind: m.kind })));
      for (const hit of result.hits) { hits.push({ query: q.index, graph: gi, hit }); returned++; }
    }
    assert.equal(returned, page.returned_hits); report.counters.search_pages++;
    if (!page.has_more) { assert.equal(page.next_cursor, null); break; }
    assert.ok(page.next_cursor && !cursors.has(page.next_cursor)); cursors.add(page.next_cursor);
    page = await call(c, 'search-page', { cursor: page.next_cursor });
    if (cursors.size === 1) { assert.deepEqual(await call(c, 'search-replay', { cursor: [...cursors][0] }), page); report.counters.cursor_replays++; }
  }
  const nodeHits = [...new Map(hits.filter(h => !['comment', 'diagram'].includes(h.hit.kind)).map(h => [h.hit.ref, h])).values()];
  const identities = new Map<string, string>();
  const refIdentities = new Map<string, SearchRefIdentity>();
  const targets = new Map<string, { graph: number; object: AgentDiagramObject; hit: boolean }>(
    nodeHits.map(h => [h.hit.ref, { graph: h.graph, object: h.hit, hit: true }]));
  for (const h of hits) {
    const endpoints = [...h.hit.connections.map(e => 'from' in e ? e.from : e.to),
      ...(h.hit.boundaries ?? []).flatMap(b => [b.outer, b.inner])];
    for (const endpoint of endpoints) {
      const previous = targets.get(endpoint.ref);
      if (previous) assert.equal(previous.graph, h.graph, 'endpoint ref stays within its Diagram');
      else targets.set(endpoint.ref, { graph: h.graph, object: endpoint, hit: false });
    }
  }
  for (const batch of chunks([...targets.values()], 16)) {
    const read = await call(c, 'search_ref_identity_read', { operation: 'read', ref: batch.map(h => h.object.ref), depth: 0, include_graph: true, if_unchanged: true });
    assert.equal(read.status, 'ok');
    for (let i = 0; i < batch.length; i++) {
      const h = batch[i], item = read.results[i], all = await pages(c, item, 'search-ref');
      const raw = all.flatMap(p => p.graph!.nodes); assert.equal(raw.length, 1);
      const g = selected[h.graph], n = raw[0]; assert.deepEqual(n, g.nodes.find(v => v.scope === n.scope && v.id === n.id));
      assert.equal(h.object.name, h.hit ? [...n.name].slice(0, 240).join('') : n.name);
      assert.equal(n.kind, h.object.kind); assert.equal(item.object.ref, h.object.ref);
      assert.equal(item.diagram_oid, g.source_oid); identities.set(h.object.ref, key(n.scope, n.id));
      refIdentities.set(h.object.ref, { component_oid: g.component_oid, source_oid: g.source_oid, scope: n.scope, node_id: n.id });
      if (h.hit) report.counters.search_hit_refs_read++; else report.counters.search_endpoint_refs_read++;
    }
  }
  for (let qi = 0; qi < queries.length; qi++) for (let gi = 0; gi < selected.length; gi++) {
    const actual = hits.filter(h => h.query === qi && h.graph === gi), expectedMap = expected[qi][gi], g = selected[gi];
    assert.equal(actual.length, expectedMap.size); assert.equal(actual.reduce((n, h) => n + (h.hit.occurrences ?? 1), 0), [...expectedMap.values()].reduce((n, x) => n + x, 0));
    const visited = new Set<string>();
    for (const { hit } of actual.filter(h => !['comment', 'diagram'].includes(h.hit.kind))) {
      const identity = identities.get(hit.ref)!; assert.ok(identity); assert.ok(!visited.has(identity)); visited.add(identity);
      assert.equal(hit.occurrences ?? 1, expectedMap.get(identity));
      assertSearchHitSummary(g, queries[qi], identity, hit, refIdentities);
      report.counters.search_summary_checks++;
    }
    assert.equal(actual.filter(h => h.hit.kind === 'diagram').reduce((n, h) => n + (h.hit.occurrences ?? 1), 0), expectedMap.get('diagram') ?? 0);
    const expectedComments = [...expectedMap].filter(([k]) => k.startsWith('comment:')).map(([k, count]) => {
      const comment = g.comments[Number(k.slice(8))]; return [comment.scope, [...comment.text].slice(0, 240).join(''), count];
    });
    same(actual.filter(h => h.hit.kind === 'comment').map(h => [h.hit.hierarchy ?? 'root', h.hit.name, h.hit.occurrences ?? 1]), expectedComments, 'comment multiplicity');
  }
  report.counters.query_checks += queries.length;
}
async function allFields(c: JsonLineClient, g: DiagramBody) {
  const values = [...new Set(modelFields(g).map(f => [...f.value].slice(0, 128).join('')))];
  const queries: AgentQuery[] = values.flatMap(text => [{ text, case_sensitive: true, multiline: text.includes('\n') },
    { text: text.replace(/[A-Z]/g, s => s.toLowerCase()), multiline: text.includes('\n') },
    { text: escapePattern(text), mode: 'regex' as const, case_sensitive: true, multiline: text.includes('\n') },
    ...(/^[A-Za-z_][A-Za-z_0-9]*$/.test(text) ? [{ text, mode: 'identifier' as const, case_sensitive: true }] : [])]);
  queries.push({ text: '^', mode: 'regex' }, { text: '__BDE_MATRIX_ABSENT_84ab7__', mode: 'identifier' });
  for (const batch of chunks(queries, 16)) await searchCheck(c, [g], batch, { component: g.component_oid, diagram: g.source_oid }, 'scoped_field_search');
  active.field_values_checked = values.length; active.query_checks = queries.length;
}
async function names(c: JsonLineClient, g: DiagramBody) {
  for (const name of [...new Set(g.methods.map(m => m.name))]) {
    const found = await findAll(c, { target: 'members', name, match: 'exact', case_sensitive: true,
      in: { component: g.component_oid, kind: 'diagram' }, limit: 1 }, 'member_exact_name');
    const expected = graphs.filter(v => v.component_oid === g.component_oid && (v.name === name || v.methods.some(m => m.name === name)));
    same(found.map(v => v.diagram_oid), expected.map(v => v.source_oid), 'member selection respects shared Diagram membership');
    for (const result of found) {
      const actualGraph = expected.find(v => v.source_oid === result.diagram_oid)!;
      assert.deepEqual(result.matched_members, actualGraph.methods.filter(m => m.name === name).map(m => ({ name: m.name, kind: m.kind })));
    }
  }
  active.member_names_checked = new Set(g.methods.map(m => m.name)).size;
  const opposite = await findAll(c, { target: 'diagrams', name: g.name, match: 'exact', case_sensitive: true,
    in: { component: g.component_oid, visibility: g.visibility === 'public' ? 'private' : 'public' } }, 'opposite_visibility');
  const expected = graphs.filter(v => v.component_oid === g.component_oid && v.name === g.name && v.visibility !== g.visibility);
  same(opposite.map(v => v.diagram_oid), expected.map(v => v.source_oid), 'Public/Private membership');
}
async function lifecycle(action: 'start' | 'finish') {
  const output = await runFile(process.execPath, [join(ROOT, 'dist/scripts/agent-evaluation-lifecycle.js'), action, directory], { windowsHide: true, timeout: 90_000, env });
  await appendFile(join(directory, 'driver.log'), output.stdout + output.stderr);
}
try {
  const extracted = join(directory, 'release with spaces'), quote = (s: string) => "'" + s.replaceAll("'", "''") + "'";
  await runFile('pwsh', ['-NoProfile', '-Command', `Expand-Archive -LiteralPath ${quote(archive)} -DestinationPath ${quote(extracted)}`], { windowsHide: true, timeout: 60_000 });
  packaged = join(extracted, basename(archive, '.zip')); report.packaged_directory = packaged;
  const manifest = JSON.parse(await readFile(join(packaged, 'manifest.json'), 'utf8'));
  for (const file of manifest.files) {
    assert.ok(!file.path.split('/').includes('..'));
    const bytes = await readFile(join(packaged, file.path));
    assert.equal(bytes.length, file.bytes); assert.equal(createHash('sha256').update(bytes).digest('hex'), file.sha256);
  }
  report.package_hashes_verified = manifest.files.length;
  await save(); const startup = performance.now(); await lifecycle('start'); launched = true;
  report.startup_ms = performance.now() - startup;
  const inventory = client();
  await check('cold-global-diagram-directory', async () => {
    const found = await findAll(inventory, { target: 'diagrams', limit: 17 }, 'cold_cli_global_directory');
    same(found.map(v => [v.component_path, v.diagram_oid]), graphs.map(g => [pathOf(g), g.source_oid]), 'all 71 saved Diagrams');
  });
  await close(inventory);
  for (const [index, g] of graphs.entries()) {
    active = { index: index + 1, identity: graphKey(g), component_path: pathOf(g), diagram: g.name, visibility: g.visibility,
      nodes: g.nodes.length, pins: g.pins.length, connections: g.connections.length, hierarchy_scopes: g.scopes.length, checks: [] };
    matrix.push(active); const c = client();
    try {
      await check('diagram-name-and-whole-read', async () => {
        const found = await findAll(c, { target: 'diagrams', name: g.name, match: 'exact', case_sensitive: true,
          in: { component: g.component_oid }, limit: 1 }, 'cold_cli_scoped_directory') as AgentCodeTarget[];
        const expected = graphs.filter(v => v.component_oid === g.component_oid && v.name === g.name);
        same(found.map(v => v.diagram_oid), expected.map(v => v.source_oid), 'exact Diagram name discovery');
        const target = found.find(v => v.diagram_oid === g.source_oid)!; assert.ok(target);
        assert.equal(target.visibility, g.visibility); assert.deepEqual(target.diagram_methods, g.methods.map(m => ({ name: m.name, kind: m.kind })));
        await fullRead(c, target, g);
      });
      await check('member-names-and-visibility', () => names(c, g));
      await check('all-object-local-combinations', () => allLocal(c, g));
      await check('all-original-field-searches', () => allFields(c, g));
    } finally { await close(c); }
    active.status = active.checks.every((c: any) => c.status === 'passed') ? 'passed' : 'failed';
    console.log(JSON.stringify({ event: 'diagram_complete', index: index + 1, total: graphs.length, diagram: g.name,
      status: active.status, requests: report.counters.requests, nodes: report.counters.local_combinations, failures: failures.length }));
    await save();
  }
  active = undefined;
  const perf = client();
  await check('global-bde-search-and-pagination', async () => {
    const cases: AgentQuery[][] = [[{ text: 'AEBLockTime', mode: 'identifier' }], [{ text: 'get' }], [{ text: 'set' }],
      [{ text: '\\bAEBLockTime\\b', mode: 'regex' }], [{ text: '__BDE_MATRIX_ABSENT_84ab7__' }],
      [{ text: 'AEBLockTime', mode: 'identifier' }, { text: 'C_AEB_AXCDeadZonePos', mode: 'identifier' }]];
    for (let round = 0; round < 5; round++) for (let i = 0; i < cases.length; i++) {
      await searchCheck(perf, graphs, cases[i], {}, (round === 0 ? 'first_global_' : 'warm_global_') + i, 20);
    }
  });
  await close(perf);
} catch (error) { failures.push({ phase: 'driver', error: error instanceof Error ? error.stack : String(error) }); process.exitCode = 1; }
finally {
  for (const c of clients) await close(c);
  wire.end(); await wireDone;
  report.status = 'recorded'; report.correctness_status = failures.length || matrix.length !== graphs.length ? 'failed' : 'passed';
  report.diagrams_passed = matrix.filter(m => m.status === 'passed').length;
  const metrics = (items: any[]) => {
    const ms = items.map(r => r.ms).sort((a, b) => a - b);
    return { samples: ms.length, median_ms: ms[Math.floor(ms.length / 2)], p95_ms: ms[Math.ceil(ms.length * .95) - 1], max_ms: ms.at(-1), over_500ms: ms.filter(x => x >= 500).length };
  };
  report.timings = Object.fromEntries([...new Set(observations.map(r => r.phase))].map(phase => [phase, metrics(observations.filter(r => r.phase === phase))]));
  report.over_500ms = observations.filter(r => r.ms >= 500); report.completed_utc = new Date().toISOString();
  await writeFile(join(directory, 'observations.json'), JSON.stringify(observations, null, 2) + '\n'); await save();
  if (launched) {
    try { await lifecycle('finish'); report.closeout = JSON.parse(await readFile(join(directory, 'closeout.json'), 'utf8')); }
    catch (error) { report.cleanup_error = String(error); process.exitCode = 1; }
    await save();
  }
  if (report.correctness_status !== 'passed' || report.closeout?.status !== 'passed') process.exitCode = 1;
  console.log(JSON.stringify({ directory, correctness: report.correctness_status, diagrams_passed: report.diagrams_passed,
    failures, counters: report.counters, closeout: report.closeout?.status }, null, 2));
}
