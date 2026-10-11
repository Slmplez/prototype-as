import assert from 'node:assert/strict';
import { resolve, join } from 'node:path';
import { mkdir, writeFile } from 'node:fs/promises';
import { setTimeout as delay } from 'node:timers/promises';
import { randomUUID } from 'node:crypto';
import { Broker } from '../src/broker.js';
import { ROOT } from '../src/bridge.js';

const manifest = process.env.ASCET_EXPERIMENT_MANIFEST;
assert.ok(manifest, 'Set ASCET_EXPERIMENT_MANIFEST to an isolated fixture instance; this test changes its experiment.');
const artifactRoot = join(ROOT, 'artifacts', 'live-' + new Date().toISOString().replaceAll(/[:.]/g, '-'));
const broker = new Broker({ artifactRoot });
const report: any = { manifest: resolve(manifest), started: new Date().toISOString(), checks: [], timings: {} };
let sessionId = '';
const call = async (name: string, args: any = {}, success = true) => {
  const result = await broker.call(name, name === 'exp_attach' || name === 'exp_job' || name === 'exp_results' ? args : { sessionId, ...args });
  if (success) assert.equal(result.ok, true, JSON.stringify(result));
  return result;
};
const quantiles = (values: number[]) => { const v = [...values].sort((a, b) => a - b); return { n: v.length, min: v[0], median: v[Math.floor(v.length / 2)], p95: v[Math.min(v.length - 1, Math.floor(v.length * .95))], max: v.at(-1) }; };
try {
  const attached = await call('exp_attach', { instanceRef: manifest }); sessionId = attached.sessionId;
  report.identity = attached.observedState; report.timings.attachMs = attached.elapsedMs;
  if (attached.observedState.open) await call('exp_control', { action: 'close', discardUnsaved: true });
  const opened = await call('exp_open', { componentPath: 'ETAS_SystemLib/Transferfunction/Control/PID', configuration: 'test' });
  report.timings.openMs = opened.elapsedMs;
  assert.equal(opened.observedState.configuration, 'test');
  const found = await call('exp_signals');
  report.signals = found.signals;
  const byLabel = new Map<string, any>(found.signals.map((s: any) => [s.label, s]));
  const input = byLabel.get('in/compute')!, output = byLabel.get('return/out')!, memory = byLabel.get('PID\\memory1')!;
  assert.ok(input && output && memory);
  assert.notEqual(input.label, input.displayLabel);
  await call('exp_step', { mode: 'events', value: 1 });
  const written = await call('exp_write', { writes: [{ signalRef: memory.signalRef, value: 2.5 }] });
  assert.equal(written.writes[0].matchesRequested, true);
  const rejected = await call('exp_write', { writes: [{ signalRef: memory.signalRef, value: 9 }, { signalRef: input.signalRef, value: 1 }] }, false);
  assert.equal(rejected.ok, false);
  const afterRejected = await call('exp_read', { signalRefs: [memory.signalRef] });
  assert.equal(afterRejected.values[0].numericValue, 2.5);
  report.checks.push('invalid batch rejected before first write');
  await call('exp_parameters', { action: 'reset_variables' });
  const config = await call('exp_configure', { action: 'read' });
  const saved = await call('exp_configure', { action: 'save', expectedRevision: config.revision });
  assert.equal(saved.saved, true);
  report.checks.push('explicit environment save returned durable readback');
  const stimulus = { channel: 'in/compute', mode: 'constant', offset: 0.5, amplitude: 1, frequencyHz: 1, phase: 0 };
  const changed = await call('exp_configure', { action: 'apply', expectedRevision: config.revision, stimulus });
  assert.equal(changed.actual.offset, 0.5);
  const eventRead = await call('exp_configure', { action: 'read' });
  const event = eventRead.configuration.events.EventSimChannels.compute;
  assert.ok(event, JSON.stringify(eventRead));
  const eventDelay = Number(event.Delay);
  const eventChanged = await call('exp_configure', { action: 'apply', section: 'event', expectedRevision: eventRead.revision, event: { name: 'compute', delay: eventDelay + 0.0001 } });
  assert.equal(Number(eventChanged.actual.Delay), eventDelay + 0.0001);
  const eventRestore = await call('exp_configure', { action: 'read' });
  await call('exp_configure', { action: 'apply', section: 'event', expectedRevision: eventRestore.revision, event: { name: 'compute', delay: eventDelay } });
  report.checks.push('event delay compare-and-apply and readback');
  const createRead = await call('exp_configure', { action: 'read' });
  const createdStimulus = await call('exp_configure', { action: 'create', expectedRevision: createRead.revision, stimulus: { channel: 'agent/autoInput', signalRef: input.signalRef, mode: 'constant', offset: 0.25, amplitude: 1, frequencyHz: 1, phase: 0 } });
  assert.equal(createdStimulus.actual.channel, 'agent/autoInput');
  report.checks.push('created scalar stimulus channel and read it back');
  const stale = await call('exp_configure', { action: 'apply', expectedRevision: config.revision, stimulus }, false);
  assert.equal(stale.error.code, 'CONFIGURATION_CHANGED');
  report.checks.push('stimulus verified by readback and stale revision rejected');
  const stepped = await call('exp_step', { mode: 'duration', value: 0.05 });
  assert.equal(stepped.terminalState, 'paused'); assert.ok(stepped.advancedSeconds > 0);
  report.step = stepped;
  const values = await call('exp_read', { signalRefs: [input.signalRef, output.signalRef] });
  report.afterStep = values;
  assert.equal(values.values[0].numericValue, 0.5, 'native data generator must actually drive model input');
  assert.ok(values.values[1].numericValue > 0, 'model output must respond');
  const conditional = await call('exp_step', { mode: 'condition', signalRef: input.signalRef, operator: '>=', threshold: 0.5, maxEvents: 2 });
  assert.equal(conditional.termination, 'condition_met');
  report.checks.push('bounded condition step reached comparator');
  const readRefs = found.signals.map((s: any) => s.signalRef);
  for (const [name, action] of [
    ['inspect', () => call('exp_inspect')],
    ['read10Batch', () => call('exp_read', { signalRefs: readRefs })],
    ['read10Singles', async () => { const start = performance.now(); for (const ref of readRefs) await call('exp_read', { signalRefs: [ref] }); return { elapsedMs: performance.now() - start }; }],
  ] as const) {
    const times: number[] = [];
    for (let i = 0; i < 20; i++) times.push((await action()).elapsedMs);
    report.timings[name] = quantiles(times);
  }
  const caseArgs = { requestId: randomUUID(), caseSpec: { initialization: 'preserve', stepSeconds: .02, chunks: 5, signalRefs: [input.signalRef, output.signalRef], assertions: [{ signalRef: input.signalRef, min: .5, max: .5 }] } };
  const submitted = await call('exp_run_case', caseArgs);
  let job;
  do { await delay(30); job = await call('exp_job', { jobId: submitted.jobId, action: 'get' }); } while (['queued', 'running'].includes(job.status));
  assert.equal(job.status, 'completed', JSON.stringify(job));
  const results = await call('exp_results', { runId: submitted.runId, maxPoints: 3 });
  assert.equal(results.totalSamples, 5); assert.equal(results.samples.length, 3);
  assert.equal(results.completeWaveform, false);
  report.case = results;
  const duplicate = await call('exp_run_case', caseArgs);
  assert.equal(duplicate.reused, true);
  const pulseConfig = await call('exp_configure', { action: 'read' });
  await call('exp_configure', { action: 'apply', expectedRevision: pulseConfig.revision, stimulus: { ...stimulus, mode: 'pulse', offset: 0, frequencyHz: 10 } });
  const pulseCase = await call('exp_run_case', { requestId: randomUUID(), caseSpec: { initialization: 'preserve', stepSeconds: .02, chunks: 10, signalRefs: [input.signalRef] } });
  do { await delay(30); job = await call('exp_job', { jobId: pulseCase.jobId, action: 'get' }); } while (['queued', 'running'].includes(job.status));
  assert.equal(job.status, 'completed');
  const pulseResults = await call('exp_results', { runId: pulseCase.runId });
  assert.equal(pulseResults.metrics[0].min, 0); assert.equal(pulseResults.metrics[0].max, 1);
  report.pulseMetrics = pulseResults.metrics;
  report.checks.push('pulse stimulus produced both low and high levels in live samples');
  const restoreConfig = await call('exp_configure', { action: 'read' });
  await call('exp_configure', { action: 'apply', expectedRevision: restoreConfig.revision, stimulus });
  const staged = await call('exp_run_case', { requestId: randomUUID(), caseSpec: {
    initialization: 'preserve', signalRefs: [input.signalRef],
    stages: [{ name: 'low', durationSeconds: .03, sampleSeconds: .01, stimuli: [{ channel: 'in/compute', offset: .5 }] }, { name: 'high', durationSeconds: .03, sampleSeconds: .01, stimuli: [{ channel: 'in/compute', offset: .75 }] }],
    assertions: [{ signalRef: input.signalRef, kind: 'transition', states: [.5, .75] }, { signalRef: input.signalRef, kind: 'hold', durationSeconds: .02, condition: { equals: .75 } }]
  } });
  do { await delay(30); job = await call('exp_job', { jobId: staged.jobId, action: 'get' }); } while (['queued', 'running'].includes(job.status));
  assert.equal(job.status, 'completed', JSON.stringify(job));
  report.stagedStimuli = await call('exp_results', { runId: staged.runId });
  report.checks.push('generic stages update actual generator input; ordered transition and hold assertions pass');
  const stageRestore = await call('exp_configure', { action: 'read' });
  await call('exp_configure', { action: 'apply', expectedRevision: stageRestore.revision, stimulus });
  const cancelCase = await call('exp_run_case', { requestId: randomUUID(), caseSpec: { ...caseArgs.caseSpec, chunks: 100 } });
  await call('exp_job', { jobId: cancelCase.jobId, action: 'cancel' });
  do { await delay(20); job = await call('exp_job', { jobId: cancelCase.jobId, action: 'get' }); } while (['queued', 'running'].includes(job.status));
  assert.equal(job.status, 'cancelled'); assert.ok(job.completedChunks < 100);
  report.cancel = job;
  const dcm = join(artifactRoot, 'parameters.dcm');
  const emptyDcm = await call('exp_parameters', { action: 'save', path: dcm }, false);
  assert.equal(emptyDcm.error.code, 'NO_TRANSFERABLE_PARAMETERS');
  await call('exp_parameters', { action: 'reset_parameters' });
  await call('exp_parameters', { action: 'update_dependent' });
  await call('exp_control', { action: 'start' });
  await call('exp_control', { action: 'pause' });
  await call('exp_control', { action: 'stop' });
  const recording = await call('exp_record', { action: 'status' });
  assert.equal(recording.observedState.recording.available, false);
  const onlineRejected = await call('exp_control', { action: 'start_os' }, false);
  assert.equal(onlineRejected.error.code, 'PRECONDITION_FAILED');
  report.checks.push('PID rejects empty DCM export; reset parameters/update dependent; start/pause/stop');
  await call('exp_control', { action: 'close', discardUnsaved: true });
  const staleRef = await call('exp_read', { signalRefs: [memory.signalRef] }, false);
  assert.equal(staleRef.error.code, 'STALE_SIGNAL_REF');
  const mismatch = await call('exp_open', { componentPath: 'ETAS_SystemLib/Transferfunction/Control/PID', configuration: 'NotExisting_Agent_Test' }, false);
  assert.equal(mismatch.ok, false); report.missingConfiguration = mismatch;
  const actual = await call('exp_inspect');
  if (actual.observedState.open) await call('exp_control', { action: 'close', discardUnsaved: true });
  report.checks.push('closed epoch rejects old signalRef; nonexistent configuration never claimed successful');
  report.passed = true;
} catch (e) { report.passed = false; report.error = String(e); process.exitCode = 1; }
finally {
  await broker.close();
  await mkdir(artifactRoot, { recursive: true });
  const file = join(artifactRoot, 'report.json'); await writeFile(file, JSON.stringify(report, null, 2));
  console.log(JSON.stringify({ passed: report.passed, error: report.error, timings: report.timings, report: file }, null, 2));
}
