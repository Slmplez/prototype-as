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
test('scalar writes accept booleans and enum identifiers and reject expression text', async () => {
  const f = await fixture(); const original = f.fake.request.bind(f.fake); const writes: string[][] = [];
  f.fake.request = async (op, args = []) => {
    const reply = await original(op, args);
    if (op === 'write') writes.push(args);
    if (op === 'read') reply.result.values = [{ label: 'P', value: 'true', code: 0 }];
    return reply;
  };
  for (const value of [true, false, 'AEB_On']) {
    const result = await f.invoke('exp_write', { writes: [{ signalRef: f.signals[0].signalRef, value }] });
    assert.equal(result.ok, true); assert.equal(result.writes[0].matchesRequested, true);
  }
  assert.deepEqual(writes.map(args => args[2]), ['true', 'false', 'AEB_On']);
  const read = await f.invoke('exp_read', { signalRefs: [f.signals[0].signalRef] });
  assert.equal(read.values[0].numericValue, 1);
  for (const value of ['self halt', '1+2', 'true.', 'AEB_On\n', 'NaN', 'Infinity', '', {}, null]) {
    const invalid = await f.invoke('exp_write', { writes: [{ signalRef: f.signals[0].signalRef, value }] });
    assert.equal(invalid.error.code, 'INVALID_ARGUMENT');
  }
  assert.equal(writes.length, 3, 'Rejected text must never reach native write dispatch');
  await f.broker.close();
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

test('full component paths fit catalog contracts; invalid event modes and negative delays fail', () => {
  assert.doesNotThrow(() => validate('exp_catalog', { sessionId: 'x', query: 'Folder/'.repeat(30) + 'Component' }));
  for (const event of [{ name: 'compute', mode: 'unknown' }, { name: 'compute', delay: -1 }])
    assert.throws(() => validate('exp_configure', { sessionId: 'x', action: 'apply', section: 'event', expectedRevision: 'v1', event }));
});

test('rooted component paths are normalized for open and catalog', async () => {
  const f = await fixture(); const original = f.fake.request.bind(f.fake); const queries: string[][] = [];
  f.fake.request = async (op, args = []) => {
    if (op === 'catalog') queries.push(args);
    const reply = await original(op, args);
    if (op === 'catalog') reply.result.components = [];
    return reply;
  };
  await f.invoke('exp_control', { action: 'close', discardUnsaved: true });
  const opened = await f.invoke('exp_open', { componentPath: '\\Folder/Component', configuration: 'test' });
  assert.equal(opened.ok, true); assert.equal(opened.observedState.componentPath, 'Folder\\Component');
  assert.equal((await f.invoke('exp_catalog', { query: '\\Folder/Component' })).ok, true);
  assert.deepEqual(queries, [['Folder\\Component']]);
  await f.broker.close();
});

test('event mutations return a usable revision, reject zero periods and detect ignored changes', async () => {
  const f = await fixture(); const original = f.fake.request.bind(f.fake);
  const event: any = { enabled: true, Mode: 'timeSynchron', Delay: .01 };
  let version = 1, ignore = false;
  f.fake.request = async (op, args = []) => {
    const reply = await original(op, args);
    if (op === 'event' && !ignore) {
      for (let i = 2; i < args.length; i += 2) event[args[i]] = args[i] === 'enabled' ? args[i + 1] === 'true' : Number(args[i + 1]);
      version++;
    }
    reply.result.events = { EventSimChannels: { compute: structuredClone(event) } };
    reply.result.stimuli = []; reply.result.configurationStamp = String(version);
    return reply;
  };
  const config = await f.invoke('exp_configure', { action: 'read' });
  const invalid = await f.invoke('exp_configure', { action: 'apply', section: 'event', expectedRevision: config.revision, event: { name: 'compute', delay: 0 } });
  assert.equal(invalid.error.code, 'INVALID_ARGUMENT'); assert.equal(f.fake.operations.includes('event'), false);
  const applied = await f.invoke('exp_configure', { action: 'apply', section: 'event', expectedRevision: config.revision, event: { name: 'compute', delay: .005 } });
  assert.equal(applied.ok, true); assert.notEqual(applied.revision, config.revision);
  const chained = await f.invoke('exp_configure', { action: 'apply', section: 'event', expectedRevision: applied.revision, event: { name: 'compute', enabled: false } });
  assert.equal(chained.ok, true);
  ignore = true;
  const ignored = await f.invoke('exp_configure', { action: 'apply', section: 'event', expectedRevision: chained.revision, event: { name: 'compute', enabled: true } });
  assert.equal(ignored.error.code, 'CONFIG_READBACK_MISMATCH');
  await f.broker.close();
});

test('reset cases initialize after resetting data and before calibration; inactive loggers are allowed', async () => {
  const f = await fixture(); f.fake.state.recording = { available: true, logging: false };
  const submitted = await f.invoke('exp_run_case', { requestId: 'reset', caseSpec: { initialization: 'reset', chunks: 1, stepSeconds: .1, signalRefs: [f.signals[0].signalRef], writes: [{ signalRef: f.signals[0].signalRef, value: 4 }] } });
  assert.equal(submitted.ok, true);
  let job;
  do { await delay(5); job = await f.broker.call('exp_job', { jobId: submitted.jobId, action: 'get' }); } while (['running', 'queued'].includes(job.status));
  assert.equal(job.status, 'completed', JSON.stringify(job));
  assert.deepEqual(f.fake.operations.slice(f.fake.operations.indexOf('stop')), ['stop', 'parameters', 'parameters', 'step', 'write', 'step', 'read']);
  await f.broker.close();
});

test('snapshot cases reject active or unknown logger state before stepping', async () => {
  for (const logging of [true, undefined]) {
    const f = await fixture(); f.fake.state.recording = { available: true, logging };
    const submitted = await f.invoke('exp_run_case', { requestId: 'logger', caseSpec: { initialization: 'preserve', chunks: 1, stepSeconds: .1, signalRefs: [f.signals[0].signalRef] } });
    let job;
    do { await delay(5); job = await f.broker.call('exp_job', { jobId: submitted.jobId, action: 'get' }); } while (['running', 'queued'].includes(job.status));
    assert.equal(job.error.code, 'LOGGER_CASE_UNSUPPORTED'); assert.equal(f.fake.operations.includes('step'), false);
    await f.broker.close();
  }
});

test('database commit is explicit and both saves and stimulus creation have durable intent records', async () => {
  const f = await fixture(); const original = f.fake.request.bind(f.fake); const saves: string[][] = [];
  f.fake.request = async (op, args = []) => {
    const reply = await original(op, args);
    reply.result.configurationStamp = 'stamp'; reply.result.stimuli = [];
    if (op === 'save') { saves.push(args); reply.result.databaseCommitted = args[1] === 'commit_database'; }
    if (op === 'create_stimulus') reply.result.stimuli = [{ channel: args[1] }];
    return reply;
  };
  const config = await f.invoke('exp_configure', { action: 'read' });
  const saved = await f.invoke('exp_configure', { action: 'save', expectedRevision: config.revision });
  assert.equal(saved.ok, true); assert.equal(saved.databaseCommitted, false);
  const committed = await f.invoke('exp_configure', { action: 'save', expectedRevision: saved.revision, commitDatabase: true });
  assert.equal(committed.ok, true); assert.equal(committed.databaseCommitted, true);
  assert.deepEqual(saves, [['stamp', 'environment_only'], ['stamp', 'commit_database']]);
  const created = await f.invoke('exp_configure', { action: 'create', expectedRevision: committed.revision,
    stimulus: { channel: 'agent', signalRef: f.signals[1].signalRef, mode: 'constant', offset: 1, amplitude: 0, frequencyHz: 1, phase: 0 } });
  assert.equal(created.ok, true);
  const rows = (await readFile(join(f.root, f.sessionId, 'operations.jsonl'), 'utf8')).trim().split('\n').map(line => JSON.parse(line));
  assert.deepEqual(rows.filter(row => row.phase === 'before_dispatch').map(row => row.op), ['save', 'save', 'create_stimulus']);
  assert.equal(rows.filter(row => row.phase === 'observed').length, 3);
  await f.broker.close();
});

test('staged cases apply inputs in order, run actual durations and persist temporal evidence', async () => {
  const f = await fixture();
  const ref = f.signals[0].signalRef;
  const submitted = await f.invoke('exp_run_case', { requestId: 'stages', caseSpec: {
    initialization: 'preserve', signalRefs: [ref], writes: [{ signalRef: ref, value: 0 }],
    stages: [{ name: 'on', durationSeconds: .03, sampleSeconds: .01, writes: [{ signalRef: ref, value: 1 }] }, { name: 'off', durationSeconds: .02, sampleSeconds: .01, writes: [{ signalRef: ref, value: 0 }] }],
    assertions: [{ signalRef: ref, kind: 'hold', condition: { equals: 1 }, durationSeconds: .03 }, { signalRef: ref, kind: 'transition', states: [0, 1, 0] }]
  } });
  assert.equal(submitted.ok, true);
  let job; do { await delay(5); job = await f.broker.call('exp_job', { jobId: submitted.jobId, action: 'get' }); } while (['running', 'queued'].includes(job.status));
  assert.equal(job.status, 'completed', JSON.stringify(job));
  const run = await f.broker.call('exp_results', { runId: submitted.runId });
  assert.equal(run.stages.length, 2); assert.ok(run.assertions.every((c: any) => c.passed));
  assert.equal(f.fake.value, 0); assert.equal(f.fake.operations.filter(op => op === 'step').length, 5);
  assert.equal(run.completeWaveform, false); assert.equal(run.sampling.assertionsEstablishContinuousBehavior, false);
  await f.broker.close();
});
