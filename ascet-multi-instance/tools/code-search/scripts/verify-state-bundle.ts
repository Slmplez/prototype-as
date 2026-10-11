/** Serial, read-only live validation against independent native storage iterators. */
import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { createHash } from 'node:crypto';
import { readFile, writeFile, mkdir } from 'node:fs/promises';
import { join } from 'node:path';
import { performance } from 'node:perf_hooks';
import { JsonLineClient, ROOT } from '../src/bridge.js';
import { sha256, STATE_SOURCE_KINDS, STATE_BINDING_KINDS } from '../src/protocol.js';
import type { ErrorResponse, GraphicalBody, NativeResponse, ReadResponse, ReadStateMachineResponse, SearchResponse } from '../src/types.js';

const componentOID = '040qm00100001m8714ag81ugur0dk';
const directory = join(ROOT, 'experiments/state-machine-read-20261001');
const sampleDirectory = join(ROOT, 'samples');
await mkdir(directory, { recursive: true }); await mkdir(sampleDirectory, { recursive: true });
const reportPath = join(directory, 'validation-v2-' + new Date().toISOString().replace(/[:.]/g, '-') + '.json');
const attempts: Record<string, unknown>[] = [];
const report: Record<string, unknown> = { started_utc: new Date().toISOString(), runtime: process.version,
  scope: 'Read-only state bundle v2 with Init graph, independent native slot/graph storage inspection, search/read compatibility and complete JSON requests',
  timing_boundary: 'Before client request until complete JSON has been received and parsed; first CLI request includes startup',
  ascet_state: 'Already running; no restart or writes. Native reference reads precede bundle measurements; this is not a cold-model test.',
  target_ms: 500, attempts };
const save = () => writeFile(reportPath, JSON.stringify(report, null, 2) + '\n');
const referenceExe = join(directory, 'NativeReference.exe');
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
  '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
  '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'),
  '/out:' + referenceExe, '/resource:' + join(ROOT, 'native-state-reference.st') + ',snapshot.st', join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });

// The probe uses blockDo:/connectionDo: rather than the production tree walker.
async function nativeReference() {
  const client = new JsonLineClient({ command: referenceExe });
  try {
    const raw = await client.request({ mode: 'snapshot' }) as NativeResponse | ErrorResponse;
    if (raw.status !== 'ok') throw new Error(JSON.stringify(raw));
    const fields = raw.payload.split('|');
    assert.equal(fields.pop(), ''); assert.equal(fields.length % 5, 0);
    const decoded = fields.map(v => v.replace(/%(\d+);/g, (_, n) => String.fromCodePoint(Number(n))));
    const rows = Array.from({ length: decoded.length / 5 }, (_, i) => decoded.slice(i * 5, i * 5 + 5))
      .filter(r => r[0] === componentOID).map(r => JSON.stringify(r)).sort();
    assert.ok(rows.length, 'Sample is absent from the live database');
    return { database: raw.database, ascet_pid: raw.ascet_pid, rows };
  } finally { await client.close(); }
}
const slotRows = (r: ReadStateMachineResponse) => r.documents.filter(d => STATE_SOURCE_KINDS.has(d.kind) || STATE_BINDING_KINDS.has(d.kind))
  .map(d => JSON.stringify([d.component_oid, d.location!.diagram_source_oid, d.kind, String(d.location!.element_id), d.text])).sort();
const fingerprint = (r: ReadStateMachineResponse) => sha256(JSON.stringify({ documents: r.documents, methods: r.methods, diagrams: r.diagrams, graphical_bodies: r.graphical_bodies }));

async function graphReference(phase: string): Promise<string[][]> {
  // Independent instance-variable dump, using neither production graph reader nor decoder.
  execFileSync(process.execPath, [join(ROOT, 'dist/scripts/probe-state-graph.js'), componentOID], { windowsHide: true });
  const raw = await readFile(join(directory, 'graph-inventory.json'), 'utf8');
  const reference = JSON.parse(raw) as { records: string[][]; database: string; ascet_pid: number };
  assert.equal(reference.database, report.database); assert.equal(reference.ascet_pid, report.ascet_pid);
  await writeFile(join(directory, 'graph-reference-' + phase + '.json'), raw);
  return reference.records;
}

function checkGraph(graph: GraphicalBody, reference: string[][]): void {
  assert.ok(graph.complete); assert.deepEqual(graph.issues, []);
  assert.equal(graph.specification_name, 'Init');
  const field = (path: string, name: string) => reference.find(r => r[0] === path && r[2] === name)![4];
  const literalID = Number(field('Init/blocks/1', 'own').match(/^#\((\d+) /)![1]);
  const dataID = Number(field('Init/blocks/2', 'own').match(/^#\((\d+) /)![1]);
  const literal = graph.nodes.find(n => n.id === literalID)!;
  assert.equal("'" + literal.literal + "'", field('Init/blocks/1', 'literalString'));
  const data = graph.nodes.find(n => n.id === dataID)!;
  assert.equal('hex:' + data.element_alias, field('Init/blocks/2', 'aliasName'));
  assert.equal(data.element_name, reference.find(r => r[0] === 'element' && r[2] === 'hex:' + data.element_alias)![3]);
  const outputID = Number(field('Init/blocks/1', 'connectors').match(/^#\((\d+) /)![1]);
  const setterID = Number(field('Init/blocks/2', 'selectorPorts').match(/'set' => \{'aValue' => #\((\d+) /)![1]);
  const getterID = Number(field('Init/blocks/2', 'returnPorts').match(/'get' => \{'return' => #\((\d+) /)![1]);
  assert.deepEqual(graph.ports.map(p => [p.id, p.direction, p.operation]), [[outputID, 'return', 'literal'], [setterID, 'selector', 'set'], [getterID, 'return', 'get']]);
  assert.equal(field('Init/connections/1', 'info'), `#(nil nil ${outputID} ${setterID} #(Point ) nil nil nil )`);
  assert.deepEqual(graph.connections.map(e => [e.from_port, e.to_port]), [[outputID, setterID]]);
  const seq = field('Init/blocks/2', 'sequenceDescription').match(/'set' => #\((\d+) nil Point true #\(hex:([0-9a-f]+) (\d+) nil \) false/)!;
  assert.deepEqual(graph.sequences.map(s => [s.id, s.method_alias, s.number, s.operation, s.storage_flags]), [[Number(seq[1]), seq[2], Number(seq[3]), 'set', 'nil/false']]);
  assert.deepEqual([graph.nodes.length, graph.ports.length, graph.methods.length], [3, 3, 1]);
}

try {
  const names = ['src/read-state-machine.ts', 'src/protocol.ts', 'src/types.ts', 'src/validation.ts', 'native-snapshot.st',
    'state-source-reader.st', 'graph-source-reader.st', 'src/graphical.ts', 'CodeSearchBridge.cs', 'CodeSearchBridge.exe',
    'scripts/verify-state-bundle.ts', 'native-state-reference.st', 'scripts/probe-state-graph.ts', 'experiments/state-machine-read-20261001/inspect-graph.st'];
  report.source_hashes = Object.fromEntries(await Promise.all(names.map(async name => [name, createHash('sha256').update(await readFile(join(ROOT, name))).digest('hex')])));
  const before = await nativeReference();
  report.database = before.database; report.ascet_pid = before.ascet_pid;
  const graphBefore = await graphReference('before');
  const client = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js')], timeoutMs: 40_000 });
  const request = { operation: 'read_state_machine', component_oid: componentOID, expected_database: before.database };
  const bundles: ReadStateMachineResponse[] = [];
  try {
    for (let i = 0; i < 31; i++) {
      const started = performance.now();
      const value = await client.request(request) as ReadStateMachineResponse | ErrorResponse;
      const elapsed = performance.now() - started;
      const attempt: Record<string, unknown> = { group: 'bundle', first_cli_request: i === 0, elapsed_ms: elapsed, status: value.status };
      attempts.push(attempt);
      if (value.status === 'error') { attempt.error = value.message; throw new Error(value.message); }
      assert.equal(value.operation, 'read_state_machine');
      assert.equal(value.database, before.database); assert.equal(value.ascet_pid, before.ascet_pid);
      assert.equal(value.source_read_complete, true); assert.equal(value.binding_resolution_complete, true);
      assert.deepEqual(value.errors, []);
      assert.deepEqual(slotRows(value), before.rows);
      // This real sample has trigger events and a graphical Init, no stored method text.
      assert.equal(value.coverage.state_source_documents, 16); assert.equal(value.coverage.state_binding_documents, 8);
      assert.equal(value.documents.length, 25); assert.equal(value.coverage.returned_documents, 25);
      assert.equal(value.status, 'ok'); assert.equal(value.complete, true);
      assert.deepEqual(value.unread_method_bodies, []);
      assert.equal(value.methods.find(m => m.member_name === 'init')!.body_status, 'graphical');
      assert.equal(value.graphical_bodies.length, 1); checkGraph(value.graphical_bodies[0], graphBefore);
      assert.match(value.documents.find(d => d.kind === 'graphical_method')!.text, /\/\/ sequence 10\nAEBLockTime = 0\.0;/);
      assert.deepEqual(value.methods.filter(m => m.category === 'trigger').map(m => m.member_name).sort(), ['init_trigger', 'trigger']);
      assert.ok(value.methods.filter(m => m.category === 'trigger').every(m => m.body_status === 'state_machine_event' && m.source_document_ids.length === 0));
      for (const doc of value.documents) {
        assert.equal(doc.source_sha256, sha256(doc.text));
        assert.equal(doc.line_count, doc.text.replace(/\r\n?/g, '\n').split('\n').length);
      }
      if (bundles.length) assert.equal(fingerprint(value), fingerprint(bundles[0]));
      bundles.push(value); attempt.correct = true; attempt.timings = value.timings;
    }
    for (const doc of bundles[0].documents) {
      const started = performance.now();
      const single = await client.request({ operation: 'read', target: { component_oid: componentOID, document_id: doc.document_id },
        expected_database: before.database, expected_source_sha256: doc.source_sha256 }) as ReadResponse | ErrorResponse;
      const attempt: Record<string, unknown> = { group: 'legacy_single_read', elapsed_ms: performance.now() - started, status: single.status };
      attempts.push(attempt);
      if (single.status === 'error') { attempt.error = single.message; throw new Error(single.message); }
      const { line_count, ...source } = doc;
      assert.deepEqual(single.document, source); assert.equal(single.line_count, line_count); attempt.correct = true;
    }
    const init = bundles[0].documents.find(d => d.kind === 'graphical_method')!;
    for (let i = 0; i < 12; i++) {
      const query = i === 10 ? { query: 'AEBLockTime\\s*=\\s*0\\.0;', mode: 'regex' }
        : i === 11 ? { query: '// sequence 10\nAEBLockTime = 0.0;', multiline: true }
        : { query: 'AEBLockTime = 0.0;', case_sensitive: true };
      const started = performance.now();
      const found = await client.request({ ...query, context_before: 1, expected_database: before.database }) as SearchResponse | ErrorResponse;
      const attempt: Record<string, unknown> = { group: 'init_global_search', query, elapsed_ms: performance.now() - started, status: found.status };
      attempts.push(attempt);
      if (found.status === 'error') { attempt.error = found.message; throw new Error(found.message); }
      assert.equal(found.complete, true); assert.ok('results' in found);
      const hit = found.results.find(d => d.document_id === init.document_id)!;
      assert.ok(hit); assert.equal(hit.member_name, 'init'); assert.equal(hit.source_sha256, init.source_sha256);
      assert.ok(hit.context!.some(c => c.lines.includes('AEBLockTime = 0.0;')));
      attempt.correct = true; attempt.timings = found.timings;
    }
    for (const [input, code] of [
      [{ ...request, component_oid: 'nonexistent-state-machine-sample' }, 'COMPONENT_NOT_FOUND'],
      [{ ...request, component_oid: '' }, undefined],
    ] as const) {
      const result = await client.request(input) as ErrorResponse;
      assert.equal(result.status, 'error'); assert.equal(result.code, code);
      attempts.push({ group: 'expected_error', correct: true, code: result.code ?? 'input_validation' });
    }
    const recovered = await client.request(request) as ReadStateMachineResponse;
    assert.equal(fingerprint(recovered), fingerprint(bundles[0]));
    report.connection_usable_after_errors = true;
    report.sample_fingerprint = fingerprint(bundles[0]);
    report.sample_coverage = bundles[0].coverage;
    report.sample_status = { complete: bundles[0].complete, source_read_complete: true, binding_resolution_complete: true,
      unread_method_bodies: bundles[0].unread_method_bodies };
    await writeFile(join(sampleDirectory, 'AEB_State_Machine.json'), JSON.stringify(bundles[0], null, 2) + '\n');
  } finally { await client.close(); }
  const after = await nativeReference();
  assert.equal(after.database, before.database); assert.equal(after.ascet_pid, before.ascet_pid); assert.deepEqual(after.rows, before.rows);
  report.independent_reference = { equal: true, documents: before.rows.length, before_after_stable: true };
  const graphAfter = await graphReference('after');
  assert.deepEqual(graphAfter.map(r => JSON.stringify(r)).sort(), graphBefore.map(r => JSON.stringify(r)).sort());
  report.independent_graph_reference = { equal: true, records: graphBefore.length, before_after_stable: true };
  const resident = attempts.filter(a => a.group === 'bundle' && !a.first_cli_request).map(a => a.elapsed_ms as number).sort((a, b) => a - b);
  report.resident_timings = { samples: resident.length, median_ms: (resident[14] + resident[15]) / 2,
    p95_ms: resident[Math.ceil(resident.length * .95) - 1], max_ms: resident.at(-1), over_500ms: resident.filter(n => n >= 500).length };
  report.first_cli_request_ms = attempts.find(a => a.group === 'bundle')!.elapsed_ms;
  const searches = attempts.filter(a => a.group === 'init_global_search').map(a => a.elapsed_ms as number).sort((a, b) => a - b);
  report.init_search_timings = { samples: searches.length, median_ms: (searches[5] + searches[6]) / 2, max_ms: searches.at(-1), over_500ms: searches.filter(n => n >= 500).length };
  report.correctness_passed = true;
  report.latency_target_passed = attempts.filter(a => a.elapsed_ms !== undefined).every(a => (a.elapsed_ms as number) < 500);
  await save();
  await writeFile(join(directory, 'validation-v2.json'), JSON.stringify(report, null, 2) + '\n');
  console.log(JSON.stringify({ report: reportPath, sample: join(sampleDirectory, 'AEB_State_Machine.json'),
    correctness_passed: report.correctness_passed, latency_target_passed: report.latency_target_passed,
    first_cli_request_ms: report.first_cli_request_ms, resident_timings: report.resident_timings,
    init_search_timings: report.init_search_timings, sample_status: report.sample_status }, null, 2));
} catch (error) {
  report.correctness_passed = false; report.error = String(error); await save(); throw error;
}
