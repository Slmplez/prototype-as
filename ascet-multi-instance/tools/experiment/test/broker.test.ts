import test from 'node:test';
import assert from 'node:assert/strict';
import { mkdtemp, readFile } from 'node:fs/promises';
import { join } from 'node:path';
import { tmpdir } from 'node:os';
import { setTimeout as delay } from 'node:timers/promises';
import { Broker } from '../src/broker.js';
import { ToolError, type Snapshot, type NativeClient } from '../src/bridge.js';
import { validate } from '../src/contracts.js';

class Fake implements NativeClient {
  state: Snapshot = { token: 'v1:test', database: 'fixture', pid: 1, open: true, componentPath: 'Fixture', configuration: 'test', state: 'paused', simTimeSeconds: 0, nativeError: { code: 0, message: '' }, recording: { available: false } };
  ready = Promise.resolve({ pid: 1, started: '1', database: 'fixture', result: structuredClone(this.state) });
  operations: string[] = []; value = 1; failWrite = false; stepDelay = 0;
  async request(op: string, args: string[] = []) {
    this.operations.push(op);
    if (op === 'step') { await delay(this.stepDelay); this.state.simTimeSeconds! += Number(args[1]); }
    if (op === 'close') { this.state.open = false; this.state.token = 'closed'; }
    if (op === 'open') { this.state.open = true; this.state.componentPath = args[0]; this.state.configuration = args[1]; this.state.token = 'v2:' + args[1]; }
    if (op === 'write' && this.failWrite) throw new ToolError('NATIVE_TIMEOUT', 'ambiguous write', true);
    const result = structuredClone(this.state);
    if (op === 'signals') { result.signals = [{ label: 'P', displayLabel: 'P', scalar: true, readable: true, calibratable: true }, { label: 'Input', displayLabel: 'Input', scalar: true, readable: true, calibratable: false }]; result.total = 2; }
    if (op === 'read') { result.timeBefore = result.simTimeSeconds; result.values = args.slice(1).map(label => ({ label, value: String(this.value), code: 0 })); }
    if (op === 'write') { result.validationPassed = true; this.value = Number(args[2]); result.writes = [{ label: args[1], status: 'applied', after: { value: args[2], code: 0 } }]; }
    if (op === 'configuration') { result.events = { EventSimChannels: { compute: { enabled: true } } }; result.stimuli = []; }
    return { result, nativeMs: 1 };
  }
  async close() {}
}
async function fixture() {
  const fake = new Fake(); const root = await mkdtemp(join(tmpdir(), 'experiment-test-'));
  const broker = new Broker({ artifactRoot: root, factory: () => fake });
  const sessionId = (await broker.call('exp_attach', { instanceRef: 'fixture.json' })).sessionId;
  const invoke = (name: string, args = {}) => broker.call(name, { sessionId, ...args });
  const signals = (await invoke('exp_signals')).signals;
  return { fake, broker, root, sessionId, invoke, signals };
}
test('contracts reject arbitrary selectors, malformed conditions, nonfinite numbers, and irrelevant fields', () => {
  assert.throws(() => validate('exp_step', { sessionId: 'x', mode: 'condition', value: 1 }));
  assert.doesNotThrow(() => validate('exp_step', { sessionId: 'x', mode: 'condition', signalRef: 'sig', operator: '>=', threshold: 1, maxEvents: 2 }));
  assert.throws(() => validate('exp_inspect', { sessionId: 'x', script: 'evaluate' }));
  assert.throws(() => validate('exp_write', { sessionId: 'x', writes: [{ signalRef: 'y', value: Infinity }] }));
  assert.throws(() => validate('exp_control', { sessionId: 'x', action: 'close' }));
});
test('bounded condition step stops at the first matching sampled event', async () => {
  const f = await fixture();
  const result = await f.invoke('exp_step', { mode: 'condition', signalRef: f.signals[1].signalRef, operator: '>=', threshold: 1, maxEvents: 3 });
  assert.equal(result.ok, true); assert.equal(result.termination, 'condition_met'); assert.equal(result.eventsExecuted, 1);
  await f.broker.close();
});
test('reject complete invalid batch before any write; stale references fail after reopen', async () => {
  const f = await fixture();
  const result = await f.invoke('exp_write', { writes: [{ signalRef: f.signals[0].signalRef, value: 9 }, { signalRef: f.signals[1].signalRef, value: 2 }] });
  assert.equal(result.error.code, 'NOT_CALIBRATABLE'); assert.equal(f.fake.operations.includes('write'), false);
  await f.invoke('exp_control', { action: 'close', discardUnsaved: true });
  await f.invoke('exp_open', { componentPath: 'Fixture', configuration: 'test' });
  const stale = await f.invoke('exp_read', { signalRefs: [f.signals[0].signalRef] });
  assert.equal(stale.error.code, 'STALE_SIGNAL_REF'); await f.broker.close();
});
test('dispatched timeout invalidates session and persists uncertain outcome without replay', async () => {
  const f = await fixture(); f.fake.failWrite = true;
  const result = await f.invoke('exp_write', { writes: [{ signalRef: f.signals[0].signalRef, value: 9 }] });
  assert.equal(result.error.outcomeUnknown, true);
  const again = await f.invoke('exp_inspect'); assert.equal(again.error.code, 'SESSION_INVALID');
  assert.equal(f.fake.operations.filter(x => x === 'write').length, 1);
  const rows = (await readFile(join(f.root, f.sessionId, 'operations.jsonl'), 'utf8')).trim().split('\n').map(x => JSON.parse(x));
  assert.equal(rows.at(-2).phase, 'before_dispatch'); assert.equal(rows.at(-1).phase, 'unknown');
  assert.equal((await f.invoke('exp_detach')).ok, true, 'Invalid sessions must remain detachable.');
  await f.broker.close();
});
test('an inspection failure after step dispatch still means unknown step outcome', async () => {
  const f = await fixture(); const original = f.fake.request.bind(f.fake);
  f.fake.request = async (op, args) => {
    if (op === 'inspect') throw new ToolError('NATIVE_TIMEOUT', 'read timed out', false);
    const reply = await original(op, args);
    if (op === 'step') reply.result.state = 'stepping';
    return reply;
  };
  const result = await f.invoke('exp_step', { mode: 'duration', value: .1 });
  assert.equal(result.error.code, 'STEP_MONITOR_FAILED'); assert.equal(result.error.outcomeUnknown, true);
  await f.broker.close();
});
test('cases serialize native operations, deduplicate request IDs, retain result limits', async () => {
  const f = await fixture();
  const args = { requestId: 'case1', caseSpec: { initialization: 'preserve', chunks: 3, stepSeconds: .1, signalRefs: [f.signals[0].signalRef] } };
  const submitted = await f.invoke('exp_run_case', args); assert.equal(submitted.ok, true);
  let job;
  do { await delay(5); job = await f.broker.call('exp_job', { jobId: submitted.jobId, action: 'get' }); } while (['running', 'queued'].includes(job.status));
  assert.equal(job.status, 'completed', JSON.stringify(job));
  const again = await f.invoke('exp_run_case', args); assert.equal(again.reused, true);
  assert.equal(f.fake.operations.filter(x => x === 'step').length, 3);
  const results = await f.broker.call('exp_results', { runId: submitted.runId, maxPoints: 1 });
  assert.equal(results.totalSamples, 3); assert.equal(results.samples.length, 1); assert.equal(results.completeWaveform, false);
  assert.equal((await f.invoke('exp_run_case', { ...args, caseSpec: { ...args.caseSpec, chunks: 4 } })).error.code, 'REQUEST_ID_REUSED');
  await f.broker.close();
});
test('cancel is cooperative, blocks competing tools, and stops before next chunk', async () => {
  const f = await fixture(); f.fake.stepDelay = 30;
  const submitted = await f.invoke('exp_run_case', { requestId: 'cancel1', caseSpec: { initialization: 'preserve', chunks: 100, stepSeconds: .1, signalRefs: [f.signals[0].signalRef] } });
  while (!f.fake.operations.includes('step')) await delay(3);
  const competing = await f.invoke('exp_inspect'); assert.equal(competing.error.code, 'SESSION_BUSY');
  const cancel = await f.broker.call('exp_job', { jobId: submitted.jobId, action: 'cancel' }); assert.equal(cancel.cancelRequested, true);
  await f.broker.close();
  const job = await f.broker.call('exp_job', { jobId: submitted.jobId, action: 'get' });
  assert.equal(job.status, 'cancelled'); assert.equal(job.completedChunks, 1);
});
