/** Run only via verify-paging.ps1: one serial session under the shared BDE lock. */
import assert from 'node:assert/strict';
import { mkdir, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { performance } from 'node:perf_hooks';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';
import { normalizeAgentSearch } from '../src/agent-validation.js';
import { validateSearch } from '../src/validation.js';
import { filterDocuments } from '../src/filters.js';
import { matchQueries } from '../src/match-queries.js';
import { matchesOf, linesOf } from '../test/agent-output.js';
import type { AgentCodeTarget, AgentFindResponse, AgentReadResponse, AgentSearchRequest, AgentSearchResponse } from '../src/agent-types.js';

const directory = join(ROOT, 'experiments/diagrams', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const save = (name: string, value: unknown) => writeFile(join(directory, name + '.json'), JSON.stringify(value, null, 2) + '\n');
const report: Record<string, any> = { status: 'running', directory,
  timing_boundary: 'Persistent Agent JSONL request to fully parsed response. Startup separate. Current loaded database; shared lock held throughout. No UI, listeners or persistent source index.',
  audit_boundary: 'Each successful graphical API read is bracketed by a bounded typed deep copy/comparison of its stored specification source. No editor UI/undo inspection.' };
const observations: { name: string; ms: number; bytes: number }[] = [];
async function snapshot(audit = false) {
  const bridge = new Bridge(90);
  try {
    const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: audit });
    const decoded = decodeResponse(raw); assert.deepEqual(decoded.errors, []);
    await save(audit ? 'source-before-audited' : 'source-after', { raw, decoded });
    return { raw, decoded };
  } finally { await bridge.close(); }
}
const client = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js'), '--agent'], timeoutMs: 90_000 });
async function request<T>(name: string, input: unknown): Promise<T> {
  const start = performance.now(), output: any = await client.request(input), ms = performance.now() - start;
  observations.push({ name, ms, bytes: Buffer.byteLength(JSON.stringify(output)) });
  await save(String(observations.length).padStart(3, '0') + '-' + name, { request: input, response: output, ms });
  assert.equal(output.status, 'ok', JSON.stringify(output)); return output;
}
const metrics = (values: number[]) => { const a = [...values].sort((x, y) => x - y); return { count: a.length, median_ms: a[Math.floor(a.length / 2)], p95_ms: a[Math.ceil(a.length * .95) - 1], max_ms: a.at(-1) }; };
try {
  const before = await snapshot(true), data = before.decoded;
  Object.assign(report, { database: before.raw.database, ascet_pid: before.raw.ascet_pid, coverage: data.coverage,
    source_fingerprint: fingerprint(data), audited_diagrams: data.diagrams!.length });
  const initComponent = data.components.find(c => c.path.endsWith('\\AEB_Core\\AEB_State_Machine'))!;
  const bdeComponent = data.components.find(c => c.path.endsWith('\\AutomaticBraking\\AEB_dFxTar'))!;
  assert.ok(initComponent && bdeComponent);
  await request('startup', { operation: 'find', target: 'components', component: 'AEB_State_Machine', match: 'exact' });
  const targets: AgentCodeTarget[] = [];
  for (const [label, component, member] of [['init', initComponent.oid, 'init'], ['ordinary-bde', bdeComponent.oid, 'calc']] as const) {
    const found = await request<AgentFindResponse>(label + '-find', { operation: 'find', in: { component, kind: 'diagram' }, member, match: 'exact' });
    assert.equal(found.total_count, 1); const target = found.results[0] as AgentCodeTarget; targets.push(target);
    assert.equal(target.method, undefined); assert.ok(target.diagram_methods?.some(m => m.name === member));
    const read = await request<AgentReadResponse>(label + '-read', { operation: 'read', ref: target.ref, include_graph: true, if_unchanged: true });
    const original = data.diagrams!.find(g => g.component_oid === component && g.source_oid === read.diagram_oid)!;
    const { issues: _issues, ...graph } = original;
    assert.deepEqual(read.graph, { ...graph, scope: 'diagram' });
    assert.equal(read.code, undefined); assert.doesNotMatch(read.diagram_text!, /AEBLockTime = 0\.0;/);
    if (label === 'init') { assert.equal(graph.nodes.length, 2); assert.equal(graph.connections.length, 1); }
    report[label] = { component: read.component_path, diagram: read.diagram, methods: read.diagram_methods,
      nodes: graph.nodes.length, pins: graph.pins.length, connections: graph.connections.length, lines: read.line_count };
  }
  const stateMembers = await request<AgentFindResponse>('state-members', { operation: 'find', in: { component: initComponent.oid }, limit: 200 });
  assert.equal(stateMembers.total_count, 25);
  await request('state-batch-read', { operation: 'read', ref: stateMembers.results.map(d => d.ref), if_unchanged: true });
  const textMethod = await request<AgentFindResponse>('text-method-find', { operation: 'find', component: 'AEB_AxCtrlConfigFF_Modify', member: 'calc_pre', match: 'exact' });
  await request('text-method-read', { operation: 'read', ref: textMethod.results[0].ref, if_unchanged: true });
  const paged = await request<AgentSearchResponse>('graph-pagination', { query: ['AEBLockTime', '0.0'], in: { component: initComponent.oid, kind: 'diagram' }, limit: 1 });
  assert.equal(paged.has_more, true);
  const continued = await request<AgentSearchResponse>('graph-pagination-next', { cursor: paged.next_cursor });
  assert.equal(continued.has_more, false);
  assert.equal(paged.searches[0].results[0].ref, continued.searches[1].results[0].ref);
  const hierarchy = data.diagrams!.find(g => g.scopes.length > 1 && g.boundaries.length > 0);
  assert.ok(hierarchy, 'Need an existing nested BDE sample; never create or edit another task fixture');
  const hf = await request<AgentFindResponse>('hierarchy-find', { operation: 'find', in: { component: hierarchy.component_oid, kind: 'diagram' } });
  const ht = hf.results.find(t => (t as AgentCodeTarget).diagram_oid === hierarchy.source_oid)!;
  const hr = await request<AgentReadResponse>('hierarchy-read', { operation: 'read', ref: ht.ref, include_graph: true, if_unchanged: true });
  assert.deepEqual(hr.graph?.boundaries, hierarchy.boundaries);
  assert.deepEqual(hr.graph?.scopes, hierarchy.scopes);
  report.hierarchy = { component: hr.component_path, scopes: hierarchy.scopes, boundary_count: hierarchy.boundaries.length };
  for (let i = 0; i < 7; i++) for (const [name, target] of [['warm-init-read', targets[0]], ['warm-bde-read', targets[1]]] as const) {
    await request(name, { operation: 'read', ref: target.ref, if_unchanged: true });
  }
  const cases: { name: string; input: AgentSearchRequest }[] = [
    { name: 'global-identifier', input: { query: 'AEBLockTime', mode: 'identifier', limit: 200 } },
    { name: 'global-no-hit', input: { query: '__NO_SUCH_MODEL_NAME_6100281__', limit: 200 } },
    { name: 'global-batch', input: { query: ['AEBLockTime', 'AEB_FxTarPT', 'calc.target'], limit: 200 } },
    { name: 'scoped-bde', input: { query: 'AEB', in: { component: bdeComponent.oid, kind: 'diagram' }, limit: 200 } },
    { name: 'init-method-scope', input: { query: 'AEBLockTime', in: { component: initComponent.oid, member: 'init', kind: 'diagram' } } },
    { name: 'graph-noise', input: { query: ['element_alias', 'n6', 'type 0', 'AEBLockTime = 0.0;'], in: { component: initComponent.oid, kind: 'diagram' } } },
    { name: 'regex-fallback', input: { query: 'AEBLockTime|AEB_FxTarPT', mode: 'regex', limit: 200 } },
    { name: 'saved-multiline', input: { query: 'AEB_FxTarPT = 250000;\nAEB_LDMSelectedControllerPT = LDMSelectedController_None;', limit: 200 } },
  ];
  const lookup = (t: AgentCodeTarget) => data.documents.find(d => d.component_path === t.component_path && d.kind === t.kind && d.variant === t.variant &&
    d.implementation_oid === (t.implementation ?? '') && (d.kind === 'diagram' ? d.graphical_location?.specification_source_oid === t.diagram_oid :
      d.member_name === (t.method ?? t.process ?? t.state ?? t.transition ?? '')))!;
  for (const c of cases) {
    const normal = normalizeAgentSearch(c.input, () => { throw Error('No scope refs in oracle'); }).request;
    const { operation: _op, limit: _limit, ...query } = normal;
    const expected = matchQueries({ documents: filterDocuments(data.documents, normal.filters), request: validateSearch(query) });
    for (let round = 0; round < 5; round++) {
      let page = await request<AgentSearchResponse>(c.name, c.input);
      assert.deepEqual(page.searches.map(q => q.total_hits), expected.map(q => q.total_occurrences));
      const actual: string[] = [];
      for (;;) {
        for (const q of page.searches) for (const hit of q.results) {
          const doc = lookup(hit); assert.ok(doc, JSON.stringify(hit));
          for (const m of matchesOf(hit)) for (const col of m.columns) actual.push(JSON.stringify([q.index, doc.document_id, m.line, col]));
          for (const line of linesOf(hit)) {
            const original = doc.text.replace(/\r\n?/g, '\n').split('\n')[line.line - 1], lo = (line.start_column ?? 1) - 1;
            assert.equal(line.text, [...original].slice(lo, lo + [...line.text].length).join(''));
          }
        }
        if (!page.has_more) break;
        page = await request<AgentSearchResponse>(c.name + '-next', { cursor: page.next_cursor });
      }
      const wanted = expected.flatMap((q, i) => q.results.flatMap(d => d.matches!.flatMap(m => m.columns.map(col => JSON.stringify([i, d.document_id, m.line, col])))));
      assert.deepEqual(actual.sort(), wanted.sort(), 'Native prefilter must equal full unfiltered snapshot for ' + c.name);
    }
  }
  await client.close();
  const after = await snapshot();
  assert.equal(fingerprint(after.decoded), fingerprint(data));
  Object.assign(report, { status: 'passed', model_stable: true, jsonl_requests: observations.length, observations,
    timings: Object.fromEntries([...new Set(observations.map(o => o.name))].map(name => [name, metrics(observations.filter(o => o.name === name).map(o => o.ms))])) });
  await save('report', report);
  console.log(JSON.stringify({ directory, status: report.status, audited_diagrams: report.audited_diagrams, requests: report.jsonl_requests, timings: report.timings }, null, 2));
} catch (error) { report.status = 'failed'; report.error = String(error); report.observations = observations; await save('report', report); throw error; }
finally { await client.close(); }
