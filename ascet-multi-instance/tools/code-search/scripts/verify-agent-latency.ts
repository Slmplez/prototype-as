import assert from 'node:assert/strict';
import { spawn } from 'node:child_process';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { performance } from 'node:perf_hooks';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import type { AgentFindResponse, AgentReadResponse, AgentSearchRequest, AgentSearchResponse } from '../src/agent-types.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';

const manifest = resolve(process.env.ASCET_AGENT_LATENCY_MANIFEST ?? join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json'));
const instance = JSON.parse(await readFile(manifest, 'utf8'));
assert.ok(Number.isInteger(instance.port) && instance.port !== 32503, 'This verifier requires a manifested isolated endpoint');
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port), ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' };
const directory = join(ROOT, 'experiments/agent-latency', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const rounds = Number(process.env.ASCET_AGENT_LATENCY_ROUNDS ?? 7);
const diagnostics = process.env.ASCET_AGENT_LATENCY_DEBUG === '1';
assert.ok(Number.isInteger(rounds) && rounds >= 1 && rounds <= 50);
const report: Record<string, unknown> = {
  status: 'running', directory, manifest, port: instance.port, rounds, diagnostics,
  boundary: 'Serial persistent CLI JSONL call until the client parses the complete response. Search limit=20 and group_by=object; default omits context (10 each side), compact uses context=0. Startup catalog and first search are recorded separately. No LLM reasoning, model writes, retained source index, or production SLA claim.',
};
const samples: Record<string, unknown>[] = [];
const examples: Record<string, unknown>[] = [];
const totals = new Map<string, string>();
const payloadBytes = (value: unknown) => Buffer.byteLength(JSON.stringify(value));

async function openDatabase(): Promise<void> {
  const child = spawn(join(dirname(dirname(manifest)), 'EndpointHost.exe'),
    [String(instance.port), join(instance.logs, 'agent-latency-host'), instance.database, String(identity.pid)], { windowsHide: true });
  child.stdin.end('{"id":1,"op":"quit"}\n');
  let output = '', errors = '';
  child.stdout.on('data', data => output += data);
  child.stderr.on('data', data => errors += data);
  const timer = setTimeout(() => child.kill(), 45_000);
  try {
    const code = await new Promise<number | null>((resolve, reject) => {
      child.once('error', reject); child.once('close', resolve);
    });
    assert.equal(code, 0, output + errors);
    report.open_output = output;
  } finally { clearTimeout(timer); }
}

async function snapshot() {
  const bridge = new Bridge(90, { env });
  try {
    const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
    assert.equal(raw.ascet_pid, identity.pid, 'The isolated process must match its manifest identity');
    const data = decodeResponse(raw); assert.deepEqual(data.errors, []);
    return { raw, data };
  } finally { await bridge.close(); }
}

interface Channel {
  call(tool: string, input: Record<string, unknown>): Promise<{ value: unknown; envelope: unknown }>;
  close(): Promise<void>;
}

async function channel(): Promise<Channel> {
    const client = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js'), '--agent'], env, timeoutMs: 90_000 });
    return {
      call: async (tool, input) => {
        const operation = tool === 'ascet_code_find' ? 'find' : tool === 'ascet_code_read' ? 'read' : undefined;
        const value = await client.request('cursor' in input ? input : { ...input, ...(operation ? { operation } : {}) });
        return { value, envelope: value };
      },
      close: () => client.close(),
    };
}

try {
  await openDatabase();
  const before = await snapshot();
  const scoped = before.data.components.find(component => component.path.split(/[/\\]/).at(-1) === 'AEB_State_Machine');
  assert.ok(scoped);
  Object.assign(report, { database: before.raw.database, ascet_pid: before.raw.ascet_pid,
    corpus: { components: before.data.components.length, documents: before.data.documents.length, diagrams: before.data.diagrams?.length },
    source_fingerprint: fingerprint(before.data) });
  const cases: { name: string; request: AgentSearchRequest }[] = [
    { name: 'identifier', request: { query: 'AEBLockTime', mode: 'identifier' } },
    { name: 'literal', request: { query: 'return' } },
    { name: 'absent', request: { query: '__ASCET_ABSENT_FAST_9d103__' } },
    { name: 'batch', request: { query: ['AEBLockTime', 'AEB_FxTarPT', 'C_AEB_AXCDeadZonePos'], mode: 'identifier' } },
    { name: 'regex', request: { query: '\\bAEBLockTime\\b', mode: 'regex' } },
    { name: 'broad', request: { query: 'set' } },
    { name: 'scoped_identifier', request: { query: 'AEBLockTime', mode: 'identifier', in: { component: scoped.oid } } },
  ];
  for (const kind of ['jsonl'] as const) {
    const start = performance.now();
    const client = await channel();
    try {
      const startup = await client.call('ascet_code_find', { target: 'components', limit: 1 });
      const startupMs = performance.now() - start;
      assert.equal((startup.value as AgentFindResponse).status, 'ok');
      examples.push({ transport: kind, name: 'startup_catalog', elapsed_ms: startupMs, response_bytes: payloadBytes(startup.envelope) });

      async function search(name: string, request: AgentSearchRequest, context: 'default' | 'compact', round: number) {
        const input = { ...request, group_by: 'object', limit: 20, ...(context === 'compact' ? { context: 0 } : {}), ...(diagnostics ? { debug: true } : {}) };
        const began = performance.now(), response = await client.call('ascet_code_search', input);
        const elapsed = performance.now() - began;
        const value = response.value as AgentSearchResponse;
        assert.equal(value.status, 'ok', JSON.stringify(value));
        assert.ok(value.returned_hits <= 20);
        const signature = JSON.stringify(value.searches.map(result => [result.query, result.mode, result.total_hits]));
        assert.equal(signature, totals.get(name) ?? signature, 'Hit counts must agree across contexts and transports: ' + name);
        totals.set(name, signature);
        const sample = { transport: kind, name, context, round, elapsed_ms: elapsed, response_bytes: payloadBytes(response.envelope),
          structured_bytes: payloadBytes(value), total_hits: value.total_hits, returned_hits: value.returned_hits, has_more: value.has_more,
          limited_by: value.limited_by ?? null, ...(diagnostics ? { debug: value.debug } : {}) };
        if (round < 0) examples.push({ ...sample, request: input });
        else samples.push(sample);
      }

      for (const item of cases) await search(item.name, item.request, 'default', -1);
      for (let round = 0; round < rounds; round++) {
        for (const item of round % 2 ? [...cases].reverse() : cases) {
          for (const context of round % 2 ? ['compact', 'default'] as const : ['default', 'compact'] as const) {
            await search(item.name, item.request, context, round);
          }
        }
        console.log(JSON.stringify({ progress: kind, round: round + 1, rounds }));
      }

      async function taskCall<T>(name: string, tool: string, input: Record<string, unknown>): Promise<T> {
        const began = performance.now(), response = await client.call(tool, input), elapsed = performance.now() - began;
        assert.equal((response.value as { status: string }).status, 'ok', JSON.stringify(response.value));
        examples.push({ transport: kind, name, tool, request: input, response: response.value,
          elapsed_ms: elapsed, response_bytes: payloadBytes(response.envelope) });
        return response.value as T;
      }
      const method = await taskCall<AgentFindResponse>('find_method', 'ascet_code_find', {
        component: 'AEB_AxCtrlConfigFF_Modify', member: 'calc_pre', match: 'exact' });
      assert.equal(method.total_count, 1);
      const code = await taskCall<AgentReadResponse>('read_method', 'ascet_code_read', { ref: method.results[0].ref, if_unchanged: true });
      assert.equal(code.method, 'calc_pre'); assert.ok(code.code); assert.equal(code.line_count, 21);
      const bde = await taskCall<AgentSearchResponse>('search_bde_object', 'ascet_code_search', {
        query: 'C_AEB_AXCDeadZonePos', mode: 'identifier', group_by: 'object', in: { kind: 'diagram' }, limit: 20 });
      const object = bde.searches.flatMap(result => result.results).flatMap(result => result.hits ?? [])[0];
      assert.ok(object);
      const local = await taskCall<AgentReadResponse>('read_bde_local', 'ascet_code_read', { ref: object.ref, depth: 1, direction: 'both' });
      assert.equal(local.scope, 'local'); assert.ok(local.object); assert.ok(local.nodes);
      const init = await taskCall<AgentFindResponse>('find_state_init', 'ascet_code_find', {
        target: 'diagrams', component: 'AEB_State_Machine', diagram: 'Init', match: 'exact' });
      assert.equal(init.total_count, 1);
      const initBody = await taskCall<AgentReadResponse>('read_state_init', 'ascet_code_read', { ref: init.results[0].ref });
      assert.match(initBody.diagram_text ?? '', /AEBLockTime/);
      const privateDiagram = await taskCall<AgentFindResponse>('find_private', 'ascet_code_find', {
        target: 'diagrams', diagram: 'SearchToolsPrivateAcceptance', match: 'exact', in: { visibility: 'private' } });
      assert.equal(privateDiagram.total_count, 1);
      const privateBody = await taskCall<AgentReadResponse>('read_private', 'ascet_code_read', { ref: privateDiagram.results[0].ref });
      assert.equal(privateBody.visibility, 'private'); assert.match(privateBody.diagram_text ?? '', /987654\.125/);
      await taskCall<AgentSearchResponse>('default_identifier_request', 'ascet_code_search', { query: 'AEBLockTime', mode: 'identifier' });
      const page = await taskCall<AgentSearchResponse>('search_first_page', 'ascet_code_search', { query: 'set', group_by: 'object', limit: 20 });
      assert.ok(page.has_more && page.next_cursor);
      const next = await taskCall<AgentSearchResponse>('search_next_page', 'ascet_code_search', { cursor: page.next_cursor });
      assert.equal(next.total_hits, page.total_hits);
      const firstRefs = new Set(page.searches.flatMap(result => result.results).flatMap(result => result.hits ?? []).map(hit => hit.ref));
      assert.ok(next.searches.flatMap(result => result.results).flatMap(result => result.hits ?? []).every(hit => !firstRefs.has(hit.ref)));
    } finally { await client.close(); }
  }
  const after = await snapshot();
  assert.equal(fingerprint(after.data), fingerprint(before.data));
  const metrics = Object.fromEntries([...new Set(samples.map(sample => `${sample.transport}/${sample.context}/${sample.name}`))].map(key => {
    const selected = samples.filter(sample => `${sample.transport}/${sample.context}/${sample.name}` === key);
    const timings = selected.map(sample => sample.elapsed_ms as number).sort((a, b) => a - b);
    return [key, { samples: selected.length, median_ms: timings[Math.floor(timings.length / 2)], max_ms: timings.at(-1),
      max_response_bytes: Math.max(...selected.map(sample => sample.response_bytes as number)),
      over_500ms: timings.filter(ms => ms >= 500).length }];
  }));
  const overGoal = samples.filter(sample => (sample.elapsed_ms as number) >= 500).length;
  Object.assign(report, { status: overGoal ? 'performance_failed' : 'passed', correctness_status: 'passed', source_fingerprint_stable: true, hit_counts_stable: true, query_count: samples.length,
    scripted_tasks_passed: ['find/read method', 'BDE search/local read', 'State Machine Init', 'Private Diagram', 'default request', 'search pagination'],
    metrics, samples, performance: { goal_ms: 500, measured_requests: samples.length,
      over_goal: overGoal, all_under_goal: overGoal === 0 } });
  if (overGoal) process.exitCode = 2;
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally {
  await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
  await writeFile(join(directory, 'examples.json'), JSON.stringify(examples, null, 2) + '\n');
  console.log(JSON.stringify({ ...report, samples: undefined }, null, 2));
}
