import assert from 'node:assert/strict';
import { mkdtemp, readFile, writeFile, rm } from 'node:fs/promises';
import { tmpdir } from 'node:os';
import { dirname, join, resolve } from 'node:path';
import { performance } from 'node:perf_hooks';
import { createAgentSession, DefaultResourceLoader, SessionManager, SettingsManager } from '@earendil-works/pi-coding-agent';
import { validateToolArguments } from '@earendil-works/pi-ai';
import { createAscetExtension } from '../src/pi-extension.js';
import { ROOT } from '../src/bridge.js';

assert.ok(process.argv[2], 'Provide the existing live report directory');
const directory = resolve(process.argv[2]);
const acceptance = JSON.parse(await readFile(join(directory, 'report.json'), 'utf8'));
const instance = JSON.parse(await readFile(acceptance.manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(acceptance.manifest), 'process.json'), 'utf8'));
assert.equal(identity.pid, acceptance.ascet_pid); assert.equal(instance.port, 32631);
const count = Number(process.env.ASCET_PI_BATCH_ROUNDS ?? 100);
assert.ok(Number.isInteger(count) && count > 0 && count <= 200);
const temporary = await mkdtemp(join(tmpdir(), 'ascet-pi-batch-'));
const settings = SettingsManager.inMemory();
const loader = new DefaultResourceLoader({ cwd: temporary, agentDir: temporary, settingsManager: settings,
  noExtensions: true, noSkills: true, noThemes: true, noPromptTemplates: true, noContextFiles: true,
  extensionFactories: [createAscetExtension({ client: { env: { ...process.env,
    ASCET_CODE_SEARCH_PORT: String(instance.port), ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' } } })] });
await loader.reload();
const { session } = await createAgentSession({ cwd: temporary, agentDir: temporary, resourceLoader: loader,
  settingsManager: settings, sessionManager: SessionManager.inMemory(temporary), noTools: 'builtin' });
const tool = session.agent.state.tools.find(tool => tool.name === 'ascet_code_search')!;
const samples: Record<string, any>[] = [];
const report: Record<string, any> = { status: 'running', directory, ascet_pid: identity.pid, rounds: count,
  boundary: 'Actual registered Pi tool; 100 normal saved-source batch searches and periodic separate debug searches. Debug timings are not substituted for normal timings. No LLM or writes.' };
let signature: string | undefined;
async function call(phase: string, round: number) {
  const request = { query: ['AEBLockTime', 'AEB_FxTarPT', 'C_AEB_AXCDeadZonePos'], mode: 'identifier', group_by: 'object', limit: 20,
    ...(phase === 'diagnostic' ? { debug: true } : {}) };
  const started = performance.now();
  const input = validateToolArguments(tool, { type: 'toolCall', id: 'batch-' + round, name: tool.name, arguments: request });
  const result = await tool.execute('batch-' + round, input), elapsed = performance.now() - started;
  const data = result.structuredContent as Record<string, any>;
  assert.equal(result.isError, false); assert.equal(data.status, 'ok');
  const current = JSON.stringify(data.searches.map((query: any) => [query.query, query.total_hits, query.returned_hits]));
  assert.equal(current, signature ?? current); signature = current;
  const model = result.content.filter(item => item.type === 'text').map(item => item.text).join('\n');
  assert.ok(Buffer.byteLength(model) <= 32768); assert.ok(Buffer.byteLength(JSON.stringify(data)) <= 32768);
  samples.push({ phase, round, elapsed_ms: elapsed, ...result.details as object,
    ...(data.debug ? { native_timings: data.debug.timings } : {}) });
}
try {
  await call('startup', -1); await call('warmup', -1);
  for (let round = 0; round < count; round++) {
    await call('normal', round);
    if (round % 5 === 0) await call('diagnostic', round);
    if ((round + 1) % 20 === 0) console.log(JSON.stringify({ phase: 'batch', completed: round + 1, count }));
  }
  const values = samples.filter(sample => sample.phase === 'normal').map(sample => sample.elapsed_ms).sort((a, b) => a - b);
  const overGoal = values.filter(value => value >= 500).length;
  Object.assign(report, { status: overGoal ? 'performance_failed' : 'passed', correctness_status: 'passed',
    goal_ms: 500, over_goal: overGoal, p50_ms: values[Math.floor(values.length / 2)],
    p95_ms: values[Math.ceil(values.length * .95) - 1], max_ms: values.at(-1), hit_counts_stable: true });
  if (overGoal) process.exitCode = 2;
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally {
  await session.abort(); await session.extensionRunner.emit({ type: 'session_shutdown', reason: 'quit' }); session.dispose();
  await rm(temporary, { recursive: true, force: true });
  report.samples = samples;
  await writeFile(join(directory, 'batch-latency.json'), JSON.stringify(report, null, 2) + '\n');
  console.log(JSON.stringify({ ...report, samples: undefined, root: ROOT }, null, 2));
}
