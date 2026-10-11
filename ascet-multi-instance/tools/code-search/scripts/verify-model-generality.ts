/** Run via verify-paging.ps1; all live access is serialized under the shared ASCET lock. */
import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { mkdir, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse, STATE_SOURCE_KINDS, STATE_BINDING_KINDS } from '../src/protocol.js';
import { fingerprint } from './oracle.js';
import type { NativeResponse } from '../src/types.js';
import { verifyModelAgent } from './model-generality-agent.js';
import { verifyStateArchives } from './verify-state-archives.js';

const directory = join(ROOT, 'experiments/model-generality', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const report: Record<string, any> = { status: 'running', started_utc: new Date().toISOString(), directory };
const save = (name: string, data: unknown) => writeFile(join(directory, name + '.json'), JSON.stringify(data, null, 2) + '\n');
async function nativeProbe(name: string, script: string, extra: string[] = []) {
  const binary = join(directory, name + '.exe');
  execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
    '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
    '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'),
    '/out:' + binary, '/resource:' + join(ROOT, script) + ',snapshot.st', ...extra,
    join(ROOT, 'CodeSearchBridge.cs'),
  ], { windowsHide: true });
  const client = new JsonLineClient({ command: binary, timeoutMs: 90_000 });
  try {
    const raw = await client.request({ mode: 'snapshot' }) as NativeResponse;
    await save(name, raw); assert.equal(raw.status, 'ok', JSON.stringify(raw)); assert.ok(!raw.payload.startsWith('PROBE_ERROR'), raw.payload);
    return raw;
  } finally { await client.close(); }
}
function rows(payload: string, width: number): string[][] {
  const fields = payload.split('|'); assert.equal(fields.pop(), ''); assert.equal(fields.length % width, 0);
  const values = fields.map(v => v.replace(/%(\d+);/g, (_, n) => String.fromCodePoint(Number(n))));
  return Array.from({ length: values.length / width }, (_, i) => values.slice(i * width, (i + 1) * width));
}
async function snapshot(name = 'production-snapshot') {
  const bridge = new Bridge(90);
  try {
    const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
    const decoded = decodeResponse(raw); await save(name, { raw, decoded });
    assert.deepEqual(decoded.errors, []); return { raw, decoded };
  } finally { await bridge.close(); }
}
try {
  const reference = await nativeProbe('stored-before', 'native-model-reference.st');
  const storage = rows(reference.payload, 10); assert.equal(storage.at(-1)![0], 'END');
  assert.equal(Number(storage.at(-1)![1]), storage.length - 1);
  await save('stored-records-before', storage);
  const data = await snapshot();
  assert.equal(data.raw.database, reference.database); assert.equal(data.raw.ascet_pid, reference.ascet_pid);
  Object.assign(report, { database: reference.database, ascet_pid: reference.ascet_pid, source_fingerprint: fingerprint(data.decoded),
    stored_classes: Object.fromEntries([...new Set(storage.filter(r => r[0] === 'N').map(r => r[5]))].map(type => [type, storage.filter(r => r[0] === 'N' && r[5] === type).length])),
    other_classes: Object.fromEntries([...new Set(storage.filter(r => r[0] === 'O').map(r => r[4]))].map(type => [type, storage.filter(r => r[0] === 'O' && r[4] === type).length])) });
  const differences: unknown[] = [];
  const sorted = (items: unknown[]) => items.map(v => JSON.stringify(v)).sort();
  const equal = (kind: string, component: string, diagram: string, actual: unknown[], expected: unknown[]) => {
    if (JSON.stringify(sorted(actual)) !== JSON.stringify(sorted(expected))) differences.push({ kind, component, diagram, actual, expected });
  };
  const category = new Map(storage.filter(r => r[0] === 'C').map(r => [r[1], r[2]]));
  report.component_categories = Object.fromEntries([...new Set(category.values())].map(kind => [kind, [...category.values()].filter(v => v === kind).length]));
  report.stored_edges_without_owner = storage.filter(r => r[0] === 'E' && (r[6] === 'nil' || r[7] === 'nil')).length;
  report.oracle_boundary = 'BDE scopes, nodes, literals, aliases, comments and connection endpoint multisets independently read from saved storage. Non-nil saved edge owners checked; Output/Input and boundary direction checked against API Pin flags. This is not a compiler or execution-semantics oracle.';
  equal('diagram-inventory', '', '', data.decoded.diagrams!.map(g => [g.component_oid, g.source_oid]), storage.filter(r => r[0] === 'D').map(r => [r[1], r[2]]));
  const coverage: Record<string, { components: Set<string>; diagrams: number; nodes: number; edges: number }> = {};
  for (const graph of data.decoded.diagrams!) {
    const stored = storage.filter(r => r[1] === graph.component_oid && r[2] === graph.source_oid);
    assert.ok(stored.some(r => r[0] === 'D'), 'Diagram missing from independent storage inventory');
    assert.equal(graph.visibility, stored.find(r => r[0] === 'D')![5], 'Public/Private membership differs from native isPublicSpec/isPrivateSpec');
    const kind = category.get(graph.component_oid)!;
    const c = coverage[kind] ??= { components: new Set(), diagrams: 0, nodes: 0, edges: 0 };
    c.components.add(graph.component_oid); c.diagrams++; c.nodes += graph.nodes.length; c.edges += graph.connections.length;
    equal('scopes', graph.component_oid, graph.name, graph.scopes.map(s => s.path), stored.filter(r => r[0] === 'S').map(r => r[3]));
    equal('node-identities', graph.component_oid, graph.name, graph.nodes.map(n => [n.scope, n.id]), stored.filter(r => r[0] === 'N').map(r => [r[3], Number(r[4])]));
    // Saved start/end encode drawing order, not signal direction. Preserve duplicate edges.
    // Legacy sources may leave startBlock/endBlock nil; validate owners only when stored.
    const endpointPair = (scope: string, a: number, b: number) => [scope, Math.min(a, b), Math.max(a, b)];
    const pin = (scope: string, id: number) => graph.pins.find(p => p.scope === scope && p.id === id)!;
    equal('edge-endpoints', graph.component_oid, graph.name,
      graph.connections.map(e => endpointPair(e.scope, e.from_pin, e.to_pin)),
      stored.filter(r => r[0] === 'E').map(r => endpointPair(r[3], Number(r[4]), Number(r[5]))));
    for (const e of stored.filter(r => r[0] === 'E')) {
      for (const [connector, owner] of [[4, 6], [5, 7]]) if (e[owner] !== 'nil') {
        assert.equal(pin(e[3], Number(e[connector])).node_id, Number(e[owner]), 'Stored Pin owner mismatch');
      }
    }
    for (const e of graph.connections) {
      assert.ok(pin(e.scope, e.from_pin).output && pin(e.scope, e.to_pin).input, 'Output/Input direction mismatch');
    }
    equal('literal-values', graph.component_oid, graph.name, graph.nodes.filter(n => n.kind === 'literal').map(n => [n.scope, n.id, n.name]), stored.filter(r => r[0] === 'N' && r[5] === 'SGLiteralGODB').map(r => [r[3], Number(r[4]), r[6]]));
    equal('element-aliases', graph.component_oid, graph.name, graph.nodes.filter(n => n.element_alias).map(n => [n.scope, n.id, n.element_alias]), stored.filter(r => r[0] === 'N' && r[7]).map(r => [r[3], Number(r[4]), r[7]]));
    equal('comments', graph.component_oid, graph.name, graph.comments.map(c => [c.scope, c.text]), stored.filter(r => r[0] === 'O' && r[4] === 'SGCommentGODB').map(r => [r[3], r[5]]));
  }
  report.coverage = Object.fromEntries(Object.entries(coverage).map(([kind, c]) => [kind, { ...c, components: c.components.size }]));
  report.storage_differences = differences; await save('report', report);
  assert.deepEqual(differences, [], 'Native BDE projection differs from independent stored-source records; see report');
  const sm = await nativeProbe('state-reference', 'native-state-reference.st');
  const smRows = rows(sm.payload, 5);
  equal('state-slot-text', '', '', data.decoded.documents.filter(d => STATE_SOURCE_KINDS.has(d.kind) || STATE_BINDING_KINDS.has(d.kind))
    .map(d => [d.component_oid, d.location!.diagram_source_oid, d.kind, String(d.location!.element_id), d.text]), smRows);
  assert.deepEqual(differences, []); report.state_slots = smRows.length;
  const heap = await nativeProbe('detached-state-tests', 'verify-state-reader.st', ['/resource:' + join(ROOT, 'state-source-reader.st') + ',state-reader.st']);
  assert.ok(heap.payload.startsWith('PASS:'), heap.payload); report.detached_native_state_tests = heap.payload;
  report.detached_state_archives = await verifyStateArchives(directory);
  report.agent = await verifyModelAgent(data.decoded, category, directory);
  const after = await nativeProbe('stored-after', 'native-model-reference.st');
  assert.deepEqual(sorted(rows(after.payload, 10)), sorted(storage)); report.stored_facts_stable = true;
  const final = await snapshot('production-after');
  assert.equal(final.raw.database, data.raw.database); assert.equal(final.raw.ascet_pid, data.raw.ascet_pid);
  assert.equal(fingerprint(final.decoded), fingerprint(data.decoded)); report.all_source_facts_stable = true;
  report.status = 'passed'; report.completed_utc = new Date().toISOString(); await save('report', report);
  console.log(JSON.stringify({ ...report, agent: { ...report.agent, observations: undefined } }, null, 2));
} catch (error) {
  report.status = 'failed'; report.error = error instanceof Error ? error.stack : String(error); await save('report', report); throw error;
}
