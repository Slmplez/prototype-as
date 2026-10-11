import assert from 'node:assert/strict';
import { execFile, spawn } from 'node:child_process';
import { promisify } from 'node:util';
import { createHash } from 'node:crypto';
import { appendFile, mkdir, readFile, writeFile } from 'node:fs/promises';
import { basename, dirname, join, resolve } from 'node:path';
import { performance } from 'node:perf_hooks';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';
import { fieldHits, escapePattern } from '../test/diagram-generality-support.js';
import { localOracle, objectOracle } from '../test/object-oracle.js';
import type { Snapshot, SourceDocument } from '../src/types.js';
import type { AgentCodeTarget, AgentComponentTarget, AgentQuery, AgentSearchRequest } from '../src/agent-types.js';

const runFile = promisify(execFile);
const manifest = resolve(process.env.ASCET_AGENT_LATENCY_MANIFEST ?? join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json'));
const instance = JSON.parse(await readFile(manifest, 'utf8'));
assert.equal(instance.port, 32631); assert.equal(resolve(instance.runtime), join(dirname(manifest), 'runtime'));
assert.equal(resolve(instance.data), join(dirname(manifest), 'data'));
assert.ok(resolve(instance.database).startsWith(resolve(instance.data) + '\\'));
await readFile(join(dirname(dirname(manifest)), 'experiment.json'));
const release = JSON.parse(await readFile(join(ROOT, 'experiments/full-regression/2026-10-03T00-40-39-086Z/report.json'), 'utf8')).package;
const archive = resolve(process.env.ASCET_CLI_ARCHIVE ?? release.archive);
const oracle: Snapshot = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T18-45-19-195Z/before-snapshot.json'), 'utf8')).data;
const directory = join(ROOT, 'experiments/cli-e2e', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: '32631', ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' };
const cases: any[] = [], steps: any[] = [], clients: JsonLineClient[] = [];
const report: any = { status: 'running', directory, archive, manifest, started_utc: new Date().toISOString(), cases,
  boundary: 'All workflow operations use the freshly extracted release CLI through actual JSONL stdin/stdout. Frozen native facts are independent expected values. A direct native read is used only for the final unchanged-source audit. No mock Reader, UI, production endpoint or model writes.',
  timing_boundary: 'Step time is before JSONL request until parsed stdout response; scenario time also includes assertions and trace writes. ASCET launch/open is separate. Correctness and 500 ms observations are separate.' };
const save = () => writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
let packaged = '', pid = 0, launched = false;
const sourceKey = (d: SourceDocument) => JSON.stringify([d.component_path, d.member_name, d.kind, d.variant, d.implementation_oid,
  d.location ? [d.location.diagram_source_oid, d.location.hierarchy_state_ids, d.location.element_id] : d.graphical_location?.specification_source_oid ?? null]);
const targetKey = (d: AgentCodeTarget) => JSON.stringify([d.component_path, d.method ?? d.process ?? d.state ?? d.transition ?? d.diagram ?? '', d.kind, d.variant, d.implementation ?? '',
  d.state !== undefined || d.transition !== undefined ? [d.diagram_oid, d.state_hierarchy_ids, d.state_id ?? d.transition_id] : d.diagram_oid ?? null]);
const byKey = new Map(oracle.documents.map(d => [sourceKey(d), d]));
assert.equal(byKey.size, oracle.documents.length);
const chunks = <T>(values: T[], size: number) => Array.from({ length: Math.ceil(values.length / size) }, (_, i) => values.slice(i * size, (i + 1) * size));
async function processes() {
  const { stdout } = await runFile('pwsh', ['-NoProfile', '-Command',
    'Get-CimInstance Win32_Process -Filter "Name=\'ASCET.exe\'" | Select-Object ProcessId,CreationDate,ExecutablePath | Sort-Object ProcessId | ConvertTo-Json -Compress'], { windowsHide: true, timeout: 30_000 });
  return JSON.parse(stdout || '[]');
}
async function lifecycle(action: 'stop' | 'launch') {
  const args = ['-NoProfile', '-File', resolve(ROOT, '../multi-instance/' + action + '.ps1'), '-Manifest', manifest];
  if (action === 'launch') args.push('-Background');
  const result = await runFile('pwsh', args, { windowsHide: true, timeout: 60_000 });
  await appendFile(join(directory, 'lifecycle.log'), action + '\n' + result.stdout + result.stderr);
  if (action === 'launch') launched = true;
}
async function openDatabase() {
  const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
  assert.equal(identity.port, 32631); assert.equal(identity.runtime, instance.runtime); assert.ok(Number.isInteger(identity.pid));
  await runFile('pwsh', ['-NoProfile', '-Command', `$deadline = [DateTime]::UtcNow.AddSeconds(30)
    do {
      $listener = Get-NetTCPConnection -State Listen -LocalPort 32631 -ErrorAction SilentlyContinue
      if ($listener.OwningProcess -eq ${identity.pid}) { exit 0 }
      Start-Sleep -Milliseconds 100
    } while ([DateTime]::UtcNow -lt $deadline)
    throw 'Isolated endpoint did not become ready'`], { windowsHide: true, timeout: 35_000 });
  const host = spawn(join(dirname(dirname(manifest)), 'EndpointHost.exe'),
    ['32631', join(instance.logs, 'cli-e2e-host'), instance.database, String(identity.pid)], { windowsHide: true });
  let stdout = '', stderr = '';
  host.stdout.on('data', c => stdout += c); host.stderr.on('data', c => stderr += c);
  const ended = new Promise<number | null>((accept, reject) => { host.once('error', reject); host.once('close', accept); });
  const timer = setTimeout(() => host.kill(), 45_000);
  host.stdin.end('{"id":1,"op":"quit"}\n');
  try { assert.equal(await ended, 0, stdout + stderr); }
  finally { clearTimeout(timer); await appendFile(join(directory, 'lifecycle.log'), stdout + stderr); }
  pid = identity.pid; return pid;
}
function client(extra: NodeJS.ProcessEnv = {}) {
  const value = new JsonLineClient({ command: process.execPath, args: [join(packaged, 'dist/src/cli.js'), '--agent'],
    env: { ...env, ...extra }, timeoutMs: 90_000 }); clients.push(value); return value;
}
async function call(cli: JsonLineClient, name: string, input: unknown, status = 'ok'): Promise<any> {
  const started = performance.now(), output: any = await cli.request(input), ms = performance.now() - started;
  const row = { scenario: cases.at(-1)?.name, name, input, output, ms, bytes: Buffer.byteLength(JSON.stringify(output)) };
  steps.push({ scenario: row.scenario, name, ms, bytes: row.bytes, status: output.status });
  await appendFile(join(directory, 'requests.jsonl'), JSON.stringify(row) + '\n');
  assert.equal(output.status, status, JSON.stringify(output).slice(0, 3000)); assert.ok(row.bytes <= 128 * 1024);
  return output;
}
async function scenario(name: string, work: () => Promise<void>) {
  const row: any = { name, status: 'running' }; cases.push(row); await save(); console.log(JSON.stringify(row));
  const started = performance.now(), offset = steps.length;
  try { await work(); row.status = 'passed'; }
  catch (error) { row.status = 'failed'; row.error = error instanceof Error ? error.stack : String(error); }
  row.elapsed_ms = performance.now() - started; row.cli_requests = steps.length - offset;
  await save(); console.log(JSON.stringify(row));
}
async function findAll(cli: JsonLineClient, input: any): Promise<any[]> {
  let page = await call(cli, 'find', input); const targets = [...page.results], seen = new Set<string>();
  const total = page.total_count;
  while (page.has_more) {
    assert.ok(page.next_cursor && !seen.has(page.next_cursor)); seen.add(page.next_cursor);
    page = await call(cli, 'find-page', { cursor: page.next_cursor }); assert.equal(page.total_count, total); targets.push(...page.results);
  }
  assert.equal(page.next_cursor, null); assert.equal(targets.length, total); return targets;
}
async function component(cli: JsonLineClient, name: string): Promise<AgentComponentTarget> {
  const targets = await findAll(cli, { operation: 'find', target: 'components', component: name, match: 'exact', limit: 1 });
  assert.equal(targets.length, 1, name); return targets[0];
}
async function fullText(cli: JsonLineClient, initial: any): Promise<string> {
  let page = initial, text = page.code ?? page.diagram_text ?? page.method_binding?.method;
  const identity = targetKey(page), cursors = new Set<string>(); assert.equal(typeof text, 'string');
  while (page.has_more) {
    assert.ok(page.next_cursor && !cursors.has(page.next_cursor) && cursors.size < 10000); cursors.add(page.next_cursor);
    page = await call(cli, 'read-page', { cursor: page.next_cursor }); assert.equal(targetKey(page), identity); assert.equal(page.ref, initial.ref);
    const part = page.code ?? page.diagram_text; assert.equal(typeof part, 'string'); text += part;
  }
  assert.equal(page.next_cursor ?? null, null); return text;
}
async function readFull(cli: JsonLineClient, target: AgentCodeTarget, options: any = {}) {
  const value = await call(cli, 'read', { operation: 'read', ref: target.ref, if_unchanged: true, ...options });
  const text = await fullText(cli, value), expected = byKey.get(targetKey(target)); assert.ok(expected);
  if (!options.lines) assert.equal(text, expected.text); return { value, text, expected };
}
async function searchAll(cli: JsonLineClient, input: AgentSearchRequest, docs: SourceDocument[]) {
  const queries: AgentQuery[] = (Array.isArray(input.query) ? input.query : [input.query]).map(q => ({
    mode: input.mode, case_sensitive: input.case_sensitive, multiline: input.multiline, dotall: input.dotall,
    ...(typeof q === 'string' ? { text: q } : q),
  })).map(q => ({ ...q, multiline: q.multiline ?? /[\r\n]/.test(q.text) }));
  const expected = queries.map(q => new Map(docs.map(d => {
    const g = d.kind === 'diagram' ? oracle.diagrams!.find(g => g.component_oid === d.component_oid && g.source_oid === d.graphical_location!.specification_source_oid)! : undefined;
    return [sourceKey(d), g ? objectOracle(g, q).size : fieldHits(d.text, q)];
  })));
  const totals = expected.map(items => [...items.values()].reduce((a, b) => a + b, 0)), counts = queries.map(() => new Map<string, number>());
  let page = await call(cli, 'search', input); const first = page, targets: any[] = [], seen = new Set<string>(), cursors = new Set<string>();
  for (;;) {
    assert.deepEqual(page.searches.map((q: any) => q.total_hits), totals); assert.equal(page.total_hits, totals.reduce((a, b) => a + b, 0));
    assert.ok(page.returned_hits <= (input.limit ?? 50)); let returned = 0;
    for (const q of page.searches) for (const hit of q.results) {
      const key = targetKey(hit); assert.ok(expected[q.index].has(key)); targets.push(hit);
      let n = 0;
      if (hit.hits) for (const object of hit.hits) {
        const identity = JSON.stringify([q.index, key, object.ref]); assert.ok(!seen.has(identity)); seen.add(identity); n++;
      } else for (const snippet of hit.snippets) for (const match of snippet.matches) for (const column of match.columns) {
        const identity = JSON.stringify([q.index, key, match.line, column]); assert.ok(!seen.has(identity)); seen.add(identity); n++;
      }
      counts[q.index].set(key, (counts[q.index].get(key) ?? 0) + n); returned += n;
    }
    assert.equal(returned, page.returned_hits);
    if (!page.has_more) { assert.equal(page.next_cursor, null); break; }
    assert.ok(page.next_cursor && !cursors.has(page.next_cursor) && cursors.size < 10000); cursors.add(page.next_cursor);
    page = await call(cli, 'search-page', { cursor: page.next_cursor });
  }
  for (const [i, query] of expected.entries()) for (const [key, n] of query) assert.equal(counts[i].get(key) ?? 0, n);
  return { first, targets };
}
async function batchRead(cli: JsonLineClient, targets: AgentCodeTarget[]) {
  for (const batch of chunks(targets, 16)) {
    const read = await call(cli, 'batch-read', { operation: 'read', ref: batch.map(d => d.ref), if_unchanged: true });
    assert.equal(read.requested_count, batch.length); assert.equal(read.returned_count, batch.length);
    for (let i = 0; i < batch.length; i++) {
      const value = read.results[i]; assert.ok(!('status' in value)); assert.equal(value.ref, batch[i].ref);
      assert.equal(await fullText(cli, value), byKey.get(targetKey(batch[i]))!.text);
    }
  }
}
try {
  report.protected_processes_before = await processes();
  if (!process.env.ASCET_CLI_ARCHIVE) assert.equal(createHash('sha256').update(await readFile(archive)).digest('hex'), release.sha256);
  const extracted = join(directory, 'release with spaces');
  const quote = (s: string) => "'" + s.replaceAll("'", "''") + "'";
  await runFile('pwsh', ['-NoProfile', '-Command', `Expand-Archive -LiteralPath ${quote(archive)} -DestinationPath ${quote(extracted)}`], { windowsHide: true, timeout: 60_000 });
  packaged = join(extracted, basename(archive, '.zip')); report.packaged_directory = packaged;
  const files = JSON.parse(await readFile(join(packaged, 'manifest.json'), 'utf8')).files;
  for (const file of files) {
    assert.ok(!file.path.split('/').includes('..'));
    const bytes = await readFile(join(packaged, file.path)); assert.equal(bytes.length, file.bytes);
    assert.equal(createHash('sha256').update(bytes).digest('hex'), file.sha256);
  }
  report.package_hashes_verified = files.length;
  const startup = performance.now(); await lifecycle('stop'); await lifecycle('launch'); await openDatabase();
  report.startup_elapsed_ms = performance.now() - startup; report.initial_pid = pid;
  const cli = client();
  await scenario('cold-name-to-method-and-line-read', async () => {
    const page = await call(cli, 'cold-find-method', { operation: 'find', component: 'AEB_AxCtrlConfigFF_Modify', member: 'calc_pre', match: 'exact', debug: true });
    assert.equal(page.total_count, 1); assert.equal(page.debug.ascet_pid, pid);
    const target = page.results[0], full = await readFull(cli, target);
    const lines = await readFull(cli, target, { lines: { start: 1, end: 8 } });
    const starts = [0]; for (const m of full.text.matchAll(/\r\n|\r|\n/g)) starts.push(m.index! + m[0].length);
    assert.equal(lines.text, full.text.slice(0, starts[8] ?? full.text.length));
  });
  await scenario('global-identifiers-to-all-pages-and-mixed-batch-read', async () => {
    const found = await searchAll(cli, { query: ['AEBLockTime', 'AEB_FxTarPT', 'C_AEB_AXCDeadZonePos'], mode: 'identifier', group_by: 'object', context: 10, limit: 2 }, oracle.documents);
    assert.equal(found.first.has_more, true);
    const targets = [...new Map(found.targets.map(t => [targetKey(t), t])).values()]; assert.ok(targets.length > 1);
    assert.ok(targets.some(t => t.kind === 'diagram') && targets.some(t => t.kind !== 'diagram'));
    await batchRead(cli, targets);
    const a = await call(cli, 'replay-page-a', { cursor: found.first.next_cursor });
    const b = await call(cli, 'replay-page-b', { cursor: found.first.next_cursor }); assert.deepEqual(a, b);
  });
  await scenario('scoped-regex-and-multiline-code-to-complete-method', async () => {
    const owner = await component(cli, 'AEB_AxCtrlConfigFF_Modify');
    const methods = await findAll(cli, { operation: 'find', in: { component: owner.ref }, member: 'calc_pre', match: 'exact' });
    assert.equal(methods.length, 1); const target = methods[0], full = await readFull(cli, target);
    const fragment = full.text.split(/\r\n|\r|\n/).slice(0, 3).join('\n'); assert.ok(fragment.includes('\n') && fragment.length <= 1024);
    const docs = [full.expected];
    const result = await searchAll(cli, { query: [{ text: fragment, multiline: true, case_sensitive: true },
      { text: escapePattern(fragment), mode: 'regex', multiline: true, case_sensitive: true }],
      group_by: 'object', in: { component: owner.ref, member: target.method, kind: target.kind, variant: target.variant,
        ...(target.implementation ? { implementation: target.implementation } : {}) }, limit: 1 }, docs);
    assert.ok(result.first.total_hits >= 2); await readFull(cli, result.targets[0]);
  });
  await scenario('bde-parameter-to-getter-and-directional-neighborhood', async () => {
    const owner = await component(cli, 'AEB_dFxTar');
    const docs = oracle.documents.filter(d => d.component_path === owner.component_path && d.kind === 'diagram');
    const found = await searchAll(cli, { query: 'C_AEB_AXCDeadZonePos', mode: 'identifier', group_by: 'object', in: { component: owner.ref, kind: 'diagram' }, limit: 1 }, docs);
    const target = found.targets[0], hit = target.hits[0]; assert.ok(hit.connections.length);
    const graph = oracle.diagrams!.find(g => g.source_oid === target.diagram_oid && oracle.components.find(c => c.oid === g.component_oid)!.path === target.component_path)!;
    const focus = await call(cli, 'read-object-identity', { operation: 'read', ref: hit.ref, depth: 0, include_graph: true, if_unchanged: true });
    assert.equal(focus.graph.nodes.length, 1); const node = focus.graph.nodes[0];
    assert.equal(focus.object.ref, hit.ref); assert.equal(node.name, hit.name);
    assert.deepEqual(focus.graph.pins, graph.pins.filter(p => p.scope === node.scope && p.node_id === node.id));
    assert.ok(focus.graph.pins.some((p: any) => p.output && p.name.split('/').includes('get')));
    for (const direction of ['incoming', 'outgoing', 'both']) {
      const value = await call(cli, 'read-neighborhood-' + direction, { operation: 'read', ref: hit.ref, depth: 1, direction, include_graph: true, if_unchanged: true });
      const expected = localOracle(graph, node.scope, node.id, 1, direction);
      assert.equal(value.has_more, false); assert.equal(value.scope, 'local');
      assert.deepEqual(value.graph.nodes.map((n: any) => n.id).sort((a: number, b: number) => a - b), expected.nodes);
      assert.deepEqual(value.graph.connections.map((e: any) => e.id).sort((a: number, b: number) => a - b), expected.edges);
      assert.deepEqual(value.graph.nodes, graph.nodes.filter(n => expected.nodes.includes(n.id) && n.scope === node.scope));
    }
  });
  await scenario('member-name-evidence-for-text-and-bde-init', async () => {
    const expected = oracle.documents.filter(d => d.member_name.toLowerCase() === 'init' || d.diagram_methods?.some(m => m.name.toLowerCase() === 'init'));
    const targets = await findAll(cli, { operation: 'find', target: 'members', name: 'init', match: 'exact', limit: 3 }) as AgentCodeTarget[];
    assert.deepEqual(targets.map(targetKey).sort(), expected.map(sourceKey).sort());
    for (const target of targets) {
      const doc = byKey.get(targetKey(target))!;
      if (target.kind === 'diagram') {
        assert.deepEqual(target.matched_members, doc.diagram_methods!.filter(m => m.name.toLowerCase() === 'init').map(m => ({ name: m.name, kind: m.kind })));
        assert.deepEqual(target.diagram_methods, doc.diagram_methods!.map(m => ({ name: m.name, kind: m.kind })));
      } else assert.equal(target.matched_members, undefined);
    }
    assert.ok(targets.some(t => t.diagram === 'Init' && t.matched_members?.length === 0), 'real Diagram-only name match');
    const samples = [targets.find(t => t.kind === 'method'),
      targets.find(t => t.diagram === 'Main' && t.matched_members?.some(m => m.kind === 'method')),
      targets.find(t => t.matched_members?.some(m => m.kind === 'process'))];
    for (const sample of samples) {
      assert.ok(sample, 'live text, shared Diagram Method and Module Process samples must exist');
      const read = await readFull(cli, sample);
      assert.equal(read.value.matched_members, undefined);
      assert.deepEqual(read.value.diagram_methods, sample.diagram_methods);
    }
  });
  await scenario('state-machine-init-to-parameter-input-logic', async () => {
    const owner = await component(cli, 'AEB_State_Machine');
    const targets = await findAll(cli, { operation: 'find', target: 'diagrams', diagram: 'Init', match: 'exact', in: { component: owner.ref } });
    assert.equal(targets.length, 1); const result = await readFull(cli, targets[0], { include_graph: true });
    const graph = oracle.diagrams!.find(g => g.source_oid === targets[0].diagram_oid && oracle.components.find(c => c.oid === g.component_oid)!.path === owner.component_path)!;
    const { issues: _issues, ...facts } = graph; assert.deepEqual(result.value.graph, { ...facts, scope: 'diagram' });
    const doc = byKey.get(targetKey(targets[0]))!;
    const found = await searchAll(cli, { query: 'AEBLockTime', mode: 'identifier', group_by: 'object', in: { component: owner.ref, diagram: targets[0].diagram_oid }, limit: 1 }, [doc]);
    const hit = found.targets[0].hits.find((h: any) => h.name === 'AEBLockTime'); assert.ok(hit);
    const incoming = await call(cli, 'read-init-input', { operation: 'read', ref: hit.ref, direction: 'incoming', include_graph: true });
    assert.ok(incoming.graph.nodes.some((n: any) => n.kind === 'literal' && Number(n.name) === 0));
    assert.ok(incoming.connections.length > 0);
  });
  await scenario('complete-state-machine-method-state-transition-read', async () => {
    const owner = await component(cli, 'AEB_State_Machine');
    const targets = await findAll(cli, { operation: 'find', in: { component: owner.ref }, limit: 3 });
    const expected = oracle.documents.filter(d => d.component_path === owner.component_path);
    assert.deepEqual(targets.map(targetKey).sort(), expected.map(sourceKey).sort());
    assert.ok(targets.some(t => t.state) && targets.some(t => t.transition) && targets.some(t => t.method_binding));
    await batchRead(cli, targets); report.state_machine_members_read = targets.length;
  });
  await scenario('private-diagram-discovery-read-and-public-exclusion', async () => {
    const targets = await findAll(cli, { operation: 'find', target: 'diagrams', diagram: 'SearchToolsPrivateAcceptance', match: 'exact', in: { visibility: 'private' } });
    assert.equal(targets.length, 1); assert.equal(targets[0].visibility, 'private'); await readFull(cli, targets[0]);
    const marker = 'SearchToolsPrivateMarker_20261002';
    const privateDocs = oracle.documents.filter(d => d.kind === 'diagram' && d.component_path === targets[0].component_path && d.graphical_location!.specification_source_oid === targets[0].diagram_oid);
    const hit = await searchAll(cli, { query: marker, group_by: 'object', in: { visibility: 'private' }, limit: 1 }, privateDocs); assert.equal(hit.first.total_hits, 1);
    const publicDocs = oracle.documents.filter(d => d.kind === 'diagram' && oracle.diagrams!.find(g => g.component_oid === d.component_oid && g.source_oid === d.graphical_location!.specification_source_oid)!.visibility === 'public');
    const absent = await searchAll(cli, { query: marker, group_by: 'object', in: { visibility: 'public' }, limit: 1 }, publicDocs); assert.equal(absent.first.total_hits, 0);
  });
  await scenario('large-source-full-read-pagination-and-replay', async () => {
    const expected = oracle.documents.filter(d => d.kind !== 'diagram').sort((a, b) => b.text.length - a.text.length)[0];
    assert.ok(Buffer.byteLength(expected.text) > 128 * 1024);
    const owner = await component(cli, expected.component_path);
    const targets = await findAll(cli, { operation: 'find', in: { component: owner.ref, kind: expected.kind,
      variant: expected.variant, ...(expected.member_name ? { member: expected.member_name } : {}),
      ...(expected.implementation_oid ? { implementation: expected.implementation_oid } : {}) } });
    const target = targets.find(t => targetKey(t) === sourceKey(expected)); assert.ok(target);
    const first = await call(cli, 'read-large-first-page', { operation: 'read', ref: target.ref, if_unchanged: true }); assert.equal(first.has_more, true);
    assert.equal(await fullText(cli, first), expected.text);
    const a = await call(cli, 'replay-large-a', { cursor: first.next_cursor }), b = await call(cli, 'replay-large-b', { cursor: first.next_cursor });
    assert.deepEqual(a, b); report.large_source = { target, bytes: Buffer.byteLength(expected.text) };
  });
  await scenario('oversized-graph-and-partial-batch-to-text-fallback', async () => {
    const graph = oracle.diagrams!.filter(g => Buffer.byteLength(JSON.stringify(g)) > 128 * 1024)[0]; assert.ok(graph);
    const path = oracle.components.find(c => c.oid === graph.component_oid)!.path, owner = await component(cli, path);
    const targets = await findAll(cli, { operation: 'find', target: 'diagrams', in: { component: owner.ref, diagram: graph.source_oid } });
    assert.equal(targets.length, 1);
    const rejected = await call(cli, 'oversized-graph', { operation: 'read', ref: targets[0].ref, include_graph: true }, 'error'); assert.equal(rejected.code, 'PAGE_TOO_LARGE');
    const small = await findAll(cli, { operation: 'find', component: 'AEB_AxCtrlConfigFF_Modify', member: 'calc_pre', match: 'exact' }); assert.equal(small.length, 1);
    const batch = await call(cli, 'partial-mixed-read', { operation: 'read', ref: [small[0].ref, targets[0].ref], include_graph: true, if_unchanged: true }, 'partial');
    assert.equal(batch.requested_count, 2); assert.equal(batch.returned_count, 1); assert.equal(batch.results.length, 2);
    assert.equal(await fullText(cli, batch.results[0]), byKey.get(targetKey(small[0]))!.text);
    assert.equal(batch.results[1].ref, targets[0].ref); assert.equal(batch.results[1].error.code, 'PAGE_TOO_LARGE');
    await readFull(cli, targets[0]);
  });
  await scenario('invalid-pattern-database-and-foreign-ref-recovery', async () => {
    const invalid = await call(cli, 'invalid-regex', { query: '[', mode: 'regex' }, 'error'); assert.match(invalid.message, /regular expression/i);
    const mismatch = await call(cli, 'wrong-database', { operation: 'find', target: 'components', database: '__E2E_WRONG_DATABASE__', limit: 1 }, 'error');
    assert.equal(mismatch.code, 'DATABASE_CHANGED');
    const fresh = await findAll(cli, { operation: 'find', component: 'AEB_AxCtrlConfigFF_Modify', member: 'calc_pre', match: 'exact' }); assert.equal(fresh.length, 1);
    const foreign = client();
    const bad = await call(foreign, 'foreign-ref', { operation: 'read', ref: fresh[0].ref }, 'error'); assert.equal(bad.code, 'REF_EXPIRED'); await foreign.close();
    const mixed = await call(cli, 'invalid-batch-ref', { operation: 'read', ref: [fresh[0].ref, 'unknown-ref'] }, 'error'); assert.equal(mixed.code, 'REF_EXPIRED');
    await readFull(cli, fresh[0]);
  });
  await cli.close();
  await scenario('persistent-cli-restart-error-recovery-and-stale-ref', async () => {
    const persistent = client({ ASCET_CODE_SEARCH_IDLE_MS: '60000' });
    try {
      const before = await findAll(persistent, { operation: 'find', component: 'AEB_AxCtrlConfigFF_Modify', member: 'calc_pre', match: 'exact' }); assert.equal(before.length, 1);
      const oldPid = pid; await lifecycle('stop'); await lifecycle('launch'); await openDatabase(); assert.notEqual(pid, oldPid);
      const detected = await call(persistent, 'restart-detected', { operation: 'find', target: 'components', limit: 1 }, 'error'); assert.equal(detected.code, 'ASCET_RESTARTED');
      const fresh = await findAll(persistent, { operation: 'find', component: 'AEB_AxCtrlConfigFF_Modify', member: 'calc_pre', match: 'exact' }); assert.equal(fresh.length, 1);
      await readFull(persistent, fresh[0]);
      const stale = await call(persistent, 'stale-ref', { operation: 'read', ref: before[0].ref }, 'error'); assert.equal(stale.code, 'ASCET_RESTARTED');
      await readFull(persistent, fresh[0]); report.restarted_pid = pid;
    } finally { await persistent.close(); }
  });
  const audit = new Bridge(90, { env });
  try {
    const raw = await audit.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
    assert.equal(raw.ascet_pid, pid); assert.equal(raw.database, instance.database);
    const current = decodeResponse(raw); assert.deepEqual(current.errors, []);
    assert.equal(fingerprint(current), fingerprint(oracle)); assert.deepEqual(current.diagrams, oracle.diagrams);
    report.final_snapshot = { components: current.components.length, documents: current.documents.length, diagrams: current.diagrams!.length, fingerprint: fingerprint(current) };
    report.sources_and_graphs_unchanged = true;
  } finally { await audit.close(); }
  report.status = cases.every(c => c.status === 'passed') ? 'passed' : 'failed';
} catch (error) { report.status = 'failed'; report.error = error instanceof Error ? error.stack : String(error); }
finally {
  for (const cli of clients) await cli.close().catch(error => { report.status = 'failed'; report.cleanup_error = String(error); });
  try {
    if (launched) { await lifecycle('stop'); report.isolated_instance_stopped = true; }
    report.protected_processes_after = await processes(); assert.deepEqual(report.protected_processes_after, report.protected_processes_before);
    report.protected_processes_unchanged = true;
  } catch (error) { report.status = 'failed'; report.cleanup_error = String(error); }
  const times = steps.map(s => s.ms).sort((a, b) => a - b);
  report.cli_requests = steps.length; report.scenarios_passed = cases.filter(c => c.status === 'passed').length;
  report.step_latency_ms = { median: times[Math.floor(times.length / 2)], p95: times[Math.ceil(times.length * .95) - 1], max: times.at(-1) };
  report.over_500ms = steps.filter(s => s.ms >= 500); report.steps = steps; report.completed_utc = new Date().toISOString();
  await save(); console.log(JSON.stringify({ ...report, steps: undefined, protected_processes_before: undefined, protected_processes_after: undefined }, null, 2));
  if (report.status !== 'passed') process.exitCode = 1;
}
