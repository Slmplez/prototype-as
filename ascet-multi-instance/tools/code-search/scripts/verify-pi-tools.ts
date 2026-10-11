import assert from 'node:assert/strict';
import { mkdir, readFile, writeFile, mkdtemp, rm } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { tmpdir } from 'node:os';
import { performance } from 'node:perf_hooks';
import { Bridge, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';
import type { AgentFindResponse, AgentSearchResponse, AgentReadResponse } from '../src/agent-types.js';
import type { AgentToolName } from '../src/agent-tools.js';

const manifest = resolve(process.env.ASCET_PI_MANIFEST ?? join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json'));
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.ok(Number.isInteger(instance.port) && instance.port !== 32503, 'Use a manifested isolated endpoint');
const directory = resolve(process.env.ASCET_PI_REPORT ?? join(ROOT, 'experiments/pi-integration', new Date().toISOString().replace(/[:.]/g, '-')));
await mkdir(directory, { recursive: true });
const rounds = Number(process.env.ASCET_PI_ROUNDS ?? 20);
assert.ok(Number.isInteger(rounds) && rounds >= 1 && rounds <= 100);
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port), ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' };
const report: Record<string, unknown> = { status: 'running', directory, manifest, port: instance.port, rounds,
  boundary: 'Actual Pi SDK registered tool execution, including input validation, CLI JSONL parse, output validation and model projection. No LLM inference. New queries read saved ASCET content; no retained index. Isolated endpoint only. First calls, warm serial calls and parallel queue latency are separate.' };
const samples: Record<string, any>[] = [], examples: unknown[] = [];
const sessionDirectory = await mkdtemp(join(tmpdir(), 'ascet-pi-live-'));
let session: import('@earendil-works/pi-coding-agent').AgentSession | undefined;
const bytes = (value: unknown) => Buffer.byteLength(JSON.stringify(value));
const metrics = (values: number[]) => {
  const ordered = [...values].sort((a, b) => a - b);
  return { samples: ordered.length, p50_ms: ordered[Math.floor(ordered.length / 2)],
    p95_ms: ordered[Math.max(0, Math.ceil(ordered.length * .95) - 1)], max_ms: ordered.at(-1) };
};
async function snapshot() {
  const bridge = new Bridge(90, { env });
  try {
    const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
    assert.equal(raw.ascet_pid, identity.pid);
    const data = decodeResponse(raw); assert.deepEqual(data.errors, []);
    return { raw, data, hash: fingerprint(data) };
  } finally { await bridge.close(); }
}

try {
  let began = performance.now();
  const { createAscetExtension } = await import('../src/pi-extension.js');
  report.extension_import_ms = performance.now() - began;
  began = performance.now();
  const { createAgentSession, DefaultResourceLoader, SessionManager, SettingsManager } = await import('@earendil-works/pi-coding-agent');
  const { validateToolArguments } = await import('@earendil-works/pi-ai');
  report.sdk_import_ms = performance.now() - began;
  const settings = SettingsManager.inMemory();
  const loader = new DefaultResourceLoader({ cwd: sessionDirectory, agentDir: sessionDirectory, settingsManager: settings,
    noExtensions: true, noSkills: true, noThemes: true, noPromptTemplates: true, noContextFiles: true,
    extensionFactories: [createAscetExtension({ client: { env } })] });
  began = performance.now();
  await loader.reload();
  ({ session } = await createAgentSession({ cwd: sessionDirectory, agentDir: sessionDirectory, resourceLoader: loader,
    settingsManager: settings, sessionManager: SessionManager.inMemory(sessionDirectory), noTools: 'builtin' }));
  report.registration_ms = performance.now() - began;
  assert.equal(session.agent.state.tools.length, 3);
  report.model_declaration_bytes = bytes(session.agent.state.tools.map(tool => ({ name: tool.name, description: tool.description, parameters: tool.parameters })));
  report.system_prompt_bytes = Buffer.byteLength(session.systemPrompt);
  async function call<T>(name: string, toolName: AgentToolName, args: Record<string, any>, phase = 'task'): Promise<T> {
    const tool = session!.agent.state.tools.find(tool => tool.name === toolName)!;
    const started = performance.now();
    const input = validateToolArguments(tool, { type: 'toolCall', id: name, name: toolName, arguments: args });
    const result = await tool.execute(name, input);
    const elapsed = performance.now() - started;
    const data = result.structuredContent as Record<string, any>;
    assert.ok(data && typeof data.status === 'string');
    const modelText = result.content.filter(item => item.type === 'text').map(item => item.text).join('\n');
    assert.ok(Buffer.byteLength(modelText) <= 32 * 1024, 'Model budget');
    assert.ok(bytes(data) <= 32 * 1024, 'Structured budget');
    const sample = { name, tool: toolName, phase, elapsed_ms: elapsed, structured_bytes: bytes(data), model_bytes: Buffer.byteLength(modelText),
      status: data.status, ...result.details as object };
    samples.push(sample);
    if (phase !== 'warm' && phase !== 'parallel') examples.push({ name, tool: toolName, arguments: args, response: data, model_text: modelText, timing: sample });
    assert.equal(data.status, 'ok', JSON.stringify(data));
    assert.equal(result.isError, false);
    return data as T;
  }
  await call('first_catalog', 'ascet_code_find', { target: 'components', limit: 1 }, 'startup');
  await call('first_search', 'ascet_code_search', { query: 'AEBLockTime', mode: 'identifier', group_by: 'object', limit: 20 }, 'first_search');

  // Close the tool owner before obtaining a separate source fingerprint connection.
  await session.reload();
  const before = await snapshot();
  report.database = before.raw.database; report.ascet_pid = before.raw.ascet_pid;
  report.source_fingerprint = before.hash;
  report.corpus = { components: before.data.components.length, documents: before.data.documents.length, diagrams: before.data.diagrams?.length };
  await call('post_snapshot_catalog', 'ascet_code_find', { target: 'components', limit: 1 }, 'startup');
  const component = before.data.components.find(component => component.path.split(/[/\\]/).at(-1) === 'AEB_State_Machine');
  assert.ok(component);
  const cases = [
    { name: 'identifier', args: { query: 'AEBLockTime', mode: 'identifier' } },
    { name: 'literal', args: { query: 'return' } },
    { name: 'absent', args: { query: '__ASCET_PI_ABSENT_4ff29__' } },
    { name: 'batch', args: { query: ['AEBLockTime', 'AEB_FxTarPT', 'C_AEB_AXCDeadZonePos'], mode: 'identifier' } },
    { name: 'regex', args: { query: '\\bAEBLockTime\\b', mode: 'regex' } },
    { name: 'broad', args: { query: 'set' } },
    { name: 'scoped_identifier', args: { query: 'AEBLockTime', mode: 'identifier', in: { component: component.oid } } },
  ];
  const totals = new Map<string, string>();
  for (const item of cases) await call(item.name, 'ascet_code_search', { ...item.args, group_by: 'object', limit: 20 }, 'warmup');
  for (let round = 0; round < rounds; round++) {
    for (const item of round % 2 ? [...cases].reverse() : cases) {
      const data = await call<AgentSearchResponse>(item.name, 'ascet_code_search', { ...item.args, group_by: 'object', limit: 20 }, 'warm');
      const signature = JSON.stringify(data.searches.map(query => [query.query, query.mode, query.total_hits]));
      assert.equal(signature, totals.get(item.name) ?? signature); totals.set(item.name, signature);
    }
    console.log(JSON.stringify({ phase: 'warm', round: round + 1, rounds }));
  }
  const method = await call<AgentFindResponse>('find_method', 'ascet_code_find', { component: 'AEB_AxCtrlConfigFF_Modify', member: 'calc_pre', match: 'exact' });
  assert.equal(method.total_count, 1);
  const body = await call<AgentReadResponse>('read_method', 'ascet_code_read', { ref: method.results[0].ref, if_unchanged: true });
  assert.ok(body.code); assert.equal(body.line_count, 21);
  const lines = await call<AgentReadResponse>('read_lines', 'ascet_code_read', { ref: method.results[0].ref, lines: { start: 1, end: 5 } });
  assert.ok(lines.code && body.code.startsWith(lines.code));
  const multiline = await call<AgentSearchResponse>('multiline', 'ascet_code_search', { query: '\\n[^\\n]+\\n', mode: 'regex', multiline: true,
    in: { component: method.results[0].ref, member: 'calc_pre' }, limit: 2 });
  assert.ok(multiline.total_hits > 0);
  const objects = await call<AgentSearchResponse>('bde_object_search', 'ascet_code_search', { query: 'C_AEB_AXCDeadZonePos', mode: 'identifier', group_by: 'object', in: { kind: 'diagram' } });
  const hit = objects.searches.flatMap(query => query.results).flatMap(result => result.hits ?? [])[0]; assert.ok(hit);
  const local = await call<AgentReadResponse>('bde_local_read', 'ascet_code_read', { ref: hit.ref, depth: 1, direction: 'both' });
  assert.equal(local.scope, 'local'); assert.ok(local.object && local.nodes);
  const init = await call<AgentFindResponse>('find_init', 'ascet_code_find', { target: 'diagrams', component: 'AEB_State_Machine', diagram: 'Init', match: 'exact' });
  assert.equal(init.total_count, 1);
  const initBody = await call<AgentReadResponse>('read_init', 'ascet_code_read', { ref: init.results[0].ref });
  assert.match(initBody.diagram_text ?? '', /AEBLockTime/);
  const batch = await call<any>('mixed_batch_read', 'ascet_code_read', { ref: [method.results[0].ref, hit.ref] });
  assert.equal(batch.results.length, 2);
  const privateDiagram = await call<AgentFindResponse>('find_private', 'ascet_code_find', { target: 'diagrams', diagram: 'SearchToolsPrivateAcceptance', match: 'exact', in: { visibility: 'private' } });
  assert.equal(privateDiagram.total_count, 1);
  const privateBody = await call<AgentReadResponse>('read_private', 'ascet_code_read', { ref: privateDiagram.results[0].ref });
  assert.equal(privateBody.visibility, 'private'); assert.match(privateBody.diagram_text ?? '', /987654\.125/);
  const states = await call<AgentFindResponse>('find_states', 'ascet_code_find', { target: 'states', component: 'AEB_State_Machine', match: 'exact' });
  const off = states.results.find(item => 'state_id' in item && item.state_id === 0 && item.diagram === 'Main'); assert.ok(off);
  const state = await call<AgentReadResponse>('read_state', 'ascet_code_read', { ref: off.ref });
  assert.equal(state.initial, true); assert.ok(state.outgoing?.length);
  const transitions = await call<AgentFindResponse>('find_transitions', 'ascet_code_find', { target: 'transitions', component: 'AEB_State_Machine', match: 'exact' });
  const twenty = transitions.results.find(item => 'transition_id' in item && item.transition_id === 20 && item.diagram === 'Main'); assert.ok(twenty);
  const transition = await call<AgentReadResponse>('read_transition', 'ascet_code_read', { ref: twenty.ref });
  assert.equal(transition.start_state?.state_kind, 'junction'); assert.equal(transition.end_state?.state_id, 0); assert.equal(transition.priority, 1);
  assert.ok(transition.code_slots?.length);
  await call('read_code_slots', 'ascet_code_read', { ref: transition.code_slots.map(slot => slot.ref) });
  const page = await call<AgentSearchResponse>('first_page', 'ascet_code_search', { query: 'set', group_by: 'object', limit: 1 });
  assert.ok(page.has_more && page.next_cursor);
  const wrongTool = session.agent.state.tools.find(tool => tool.name === 'ascet_code_read')!;
  const wrong = await wrongTool.execute('wrong_cursor', { cursor: page.next_cursor });
  assert.equal(wrong.isError, true); assert.equal((wrong.structuredContent as { code: string }).code, 'CURSOR_TOOL_MISMATCH');
  const next = await call<AgentSearchResponse>('next_page', 'ascet_code_search', { cursor: page.next_cursor });
  assert.equal(next.total_hits, page.total_hits);
  await call('find_objects', 'ascet_code_find', { target: 'objects', in: { diagram: init.results[0].ref }, limit: 2 });

  let lastParallelRef = method.results[0].ref;
  for (let round = 0; round < 5; round++) {
    const fresh = await call<AgentFindResponse>('refresh_parallel_ref', 'ascet_code_find', {
      component: 'AEB_AxCtrlConfigFF_Modify', name: 'calc_pre', match: 'exact' }, 'setup');
    lastParallelRef = fresh.results[0].ref;
    const pending: Promise<unknown>[] = [call('parallel_find', 'ascet_code_find', { component: 'AEB_AxCtrlConfigFF_Modify', name: 'calc_pre', match: 'exact' }, 'parallel'),
      call('parallel_search', 'ascet_code_search', { query: 'AEBLockTime', mode: 'identifier', in: { component: component.oid }, limit: 20 }, 'parallel'),
      call('parallel_read', 'ascet_code_read', { ref: lastParallelRef }, 'parallel')];
    const results = await Promise.all(pending);
    assert.equal((results[0] as AgentFindResponse).total_count, 1);
    assert.equal((results[2] as AgentReadResponse).code, body.code);
  }
  began = performance.now(); await session.reload(); report.reload_ms = performance.now() - began;
  const newFind = await call<AgentFindResponse>('reload_find', 'ascet_code_find', { component: 'AEB_AxCtrlConfigFF_Modify', member: 'calc_pre', match: 'exact' }, 'reload');
  assert.equal(newFind.total_count, 1);
  const oldRef = await session.agent.state.tools.find(tool => tool.name === 'ascet_code_read')!.execute('old_ref', { ref: lastParallelRef });
  assert.equal(oldRef.isError, true);
  report.old_ref_after_reload = oldRef.structuredContent;
  await session.extensionRunner.emit({ type: 'session_shutdown', reason: 'quit' });
  const after = await snapshot(); assert.equal(after.hash, before.hash);
  const warm = samples.filter(sample => sample.phase === 'warm');
  const performanceMetrics = Object.fromEntries(cases.map(item => [item.name, metrics(warm.filter(sample => sample.name === item.name).map(sample => sample.elapsed_ms))]));
  const overGoal = warm.filter(sample => sample.elapsed_ms >= 500);
  Object.assign(report, { status: overGoal.length ? 'performance_failed' : 'passed', correctness_status: 'passed',
    source_fingerprint_stable: true, hit_counts_stable: true, measured_calls: samples.length, warm_calls: warm.length,
    performance: { goal_ms: 500, over_goal: overGoal.length, ...metrics(warm.map(sample => sample.elapsed_ms)), cases: performanceMetrics },
    parallel: { ...metrics(samples.filter(sample => sample.phase === 'parallel').map(sample => sample.elapsed_ms)),
      queue: metrics(samples.filter(sample => sample.phase === 'parallel').map(sample => sample.queue_ms)),
      execution: metrics(samples.filter(sample => sample.phase === 'parallel').map(sample => sample.execution_ms)) },
    projection: metrics(warm.map(sample => sample.projection_ms)), startup_calls: samples.filter(sample => ['startup', 'first_search', 'reload'].includes(sample.phase)),
    tasks: samples.filter(sample => sample.phase === 'task'), samples });
  if (overGoal.length) process.exitCode = 2;
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally {
  report.samples = samples;
  if (session) {
    await session.abort(); await session.extensionRunner.emit({ type: 'session_shutdown', reason: 'quit' }); session.dispose();
  }
  await rm(sessionDirectory, { recursive: true, force: true });
  await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
  await writeFile(join(directory, 'examples.json'), JSON.stringify(examples, null, 2) + '\n');
  console.log(JSON.stringify({ ...report, samples: undefined }, null, 2));
}
