import assert from 'node:assert/strict';
import { randomUUID } from 'node:crypto';
import { mkdir, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { setTimeout as delay } from 'node:timers/promises';
import { Broker } from '../src/broker.js';
import { ROOT } from '../src/bridge.js';

const manifest = process.env.ASCET_EXPERIMENT_MANIFEST;
assert.ok(manifest, 'Set ASCET_EXPERIMENT_MANIFEST to the repaired isolated AEB database. This test changes its Default experiment.');
const componentPath = 'PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Component\\AEB_iBooster\\AEBiBooster_ECU_CSW_BB00001';
const artifactRoot = join(ROOT, 'artifacts', 'aeb-live-' + new Date().toISOString().replaceAll(/[:.]/g, '-'));
const broker = new Broker({ artifactRoot });
const report: any = { manifest, componentPath, started: new Date().toISOString(), calls: [], checks: [], modelResponseVerified: false };
let sessionId = '';
async function call(name: string, args: any = {}) {
  const independent = ['exp_attach', 'exp_job', 'exp_results'].includes(name);
  const result = await broker.call(name, independent ? args : { sessionId, ...args });
  report.calls.push({ name, ...result });
  assert.equal(result.ok, true, JSON.stringify(result));
  return result;
}
async function finish(jobId: string) {
  const deadline = performance.now() + 60_000;
  while (true) {
    const job = await call('exp_job', { jobId, action: 'get' });
    if (!['queued', 'running'].includes(job.status)) {
      assert.equal(job.status, 'completed', JSON.stringify(job));
      return call('exp_results', { runId: job.runId });
    }
    if (performance.now() > deadline) {
      await call('exp_job', { jobId, action: 'cancel' });
      throw new Error('AEB case exceeded the verification deadline; cancellation requested between steps.');
    }
    await delay(25);
  }
}
try {
  const attached = await call('exp_attach', { instanceRef: manifest }); sessionId = attached.sessionId;
  if (attached.observedState.open) {
    if (attached.observedState.recording?.available) await call('exp_record', { action: 'stop' });
    await call('exp_control', { action: 'close', discardUnsaved: true });
  }
  const catalog = await call('exp_catalog', { query: componentPath });
  assert.ok(catalog.components.some((item: any) => item.path === componentPath));
  report.catalogMs = catalog.elapsedMs;
  const opened = await call('exp_open', { componentPath, configuration: 'Default' });
  report.identity = opened.observedState;
  if (opened.observedState.recording?.available) await call('exp_record', { action: 'stop' });
  let config = await call('exp_configure', { action: 'read' });
  report.configurationBefore = config.configuration;
  const existingEvents = config.configuration.events.EventSimChannels;
  for (const name of ['TaskInit', 'TaskBaseCtrlx1', 'TaskBaseCtrlx4'])
    assert.ok(existingEvents[name], 'PC.Generic must contain the existing AEB task schedule before this test.');
  if (process.env.ASCET_AEB_REQUIRE_SAVED === '1') {
    assert.equal(existingEvents.TaskInit.enabled, true);
    assert.equal(existingEvents.TaskBaseCtrlx1.Delay, .005); assert.equal(existingEvents.TaskBaseCtrlx1.enabled, true);
    assert.equal(existingEvents.TaskBaseCtrlx4.Delay, .02); assert.equal(existingEvents.TaskBaseCtrlx4.enabled, true);
    report.checks.push('schedule was already persisted before any event edits');
  }
  for (const event of [
    { name: 'TaskInit', enabled: true, mode: 'singleShot', phase: 0 },
    { name: 'TaskBaseCtrlx1', enabled: true, mode: 'timeSynchron', delay: .005, phase: 0 },
    { name: 'TaskBaseCtrlx4', enabled: true, mode: 'timeSynchron', delay: .02, phase: 0 },
  ]) {
    config = await call('exp_configure', { action: 'apply', section: 'event', expectedRevision: config.revision, event });
  }
  const readConfig = await call('exp_configure', { action: 'read' });
  assert.equal(config.revision, readConfig.revision, 'Last mutation must return the current revision.');
  report.configurationApplied = readConfig.configuration;
  const savedConfig = await call('exp_configure', { action: 'save', expectedRevision: readConfig.revision, commitDatabase: true });
  assert.equal(savedConfig.databaseCommitted, true);
  report.checks.push('chained event edits, exact readback and explicit configuration save');

  const driver = 'AEBiBooster_ECU_CSW_BB00001\\AEB5ms\\AEB_light_class\\AEB_DriverAccelerates\\';
  const labels = ['sDrvPedalRaw', 'MotPedalPosDriver_20ms', driver + 'AEB_ThrottlePosK1'];
  const signals = [];
  for (const label of labels) {
    const discovered = await call('exp_signals', { query: label.split('\\').at(-1), limit: 200 });
    const signal = discovered.signals.find((item: any) => item.label === label);
    assert.ok(signal, `Missing witness signal: ${label}`); signals.push(signal);
  }
  report.signals = signals;
  const signalRefs = signals.map(signal => signal.signalRef);
  await call('exp_step', { mode: 'events', value: 1 });
  report.afterInitialization = await call('exp_read', { signalRefs });
  await call('exp_write', { writes: [{ signalRef: signalRefs[0], value: 75 }] });
  report.responseStep = await call('exp_step', { mode: 'duration', value: .05 });
  report.response = await call('exp_read', { signalRefs });
  assert.ok(report.responseStep.advancedSeconds > 0);
  assert.deepEqual(report.response.values.map((value: any) => value.numericValue), [75, 75, 75]);
  report.checks.push('75 percent pedal input reaches both 20 ms output and 5 ms driver history');

  for (const [initialization, value, chunks] of [['preserve', 0, 5], ['reset', 25, 3]] as const) {
    const submitted = await call('exp_run_case', { requestId: randomUUID(), caseSpec: {
      initialization, stepSeconds: .02, chunks, signalRefs,
      writes: [{ signalRef: signalRefs[0], value }],
      assertions: signalRefs.map(signalRef => ({ signalRef, min: value, max: value })),
    } });
    const results = await finish(submitted.jobId);
    assert.equal(results.totalSamples, chunks);
    assert.ok(results.assertions.every((check: any) => check.passed));
    assert.ok(results.samples.every((sample: any) => sample.advancedSeconds > 0));
    report[initialization + 'Case'] = results;
  }
  report.checks.push('five preserve segments and three reset segments with task-output assertions');
  await call('exp_write', { writes: [{ signalRef: signalRefs[0], value: 0 }] });
  await call('exp_step', { mode: 'duration', value: .05 });
  await call('exp_control', { action: 'stop' });
  if (opened.observedState.recording?.available) await call('exp_record', { action: 'stop' });
  await call('exp_control', { action: 'close', discardUnsaved: true });
  await call('exp_open', { componentPath, configuration: 'Default' });
  const saved = await call('exp_configure', { action: 'read' });
  const events = saved.configuration.events.EventSimChannels;
  assert.equal(events.TaskInit.enabled, true);
  assert.equal(events.TaskBaseCtrlx1.Delay, .005); assert.equal(events.TaskBaseCtrlx1.enabled, true);
  assert.equal(events.TaskBaseCtrlx4.Delay, .02); assert.equal(events.TaskBaseCtrlx4.enabled, true);
  report.configurationReopened = saved.configuration;
  report.checks.push('saved schedule survives experiment close and reopen');
  report.modelResponseVerified = true; report.passed = true;
} catch (error) {
  report.passed = false; report.error = String(error); process.exitCode = 1;
} finally {
  if (sessionId) {
    const state = await broker.call('exp_inspect', { sessionId });
    if (state.ok && state.observedState.open) {
      if (state.observedState.recording?.available) await broker.call('exp_record', { sessionId, action: 'stop' });
      report.cleanup = await broker.call('exp_control', { sessionId, action: 'close', discardUnsaved: true });
      if (!report.cleanup.ok) { report.passed = false; process.exitCode = 1; }
    }
  }
  await broker.close();
  await mkdir(artifactRoot, { recursive: true });
  const file = join(artifactRoot, 'report.json');
  await writeFile(file, JSON.stringify(report, null, 2));
  console.log(JSON.stringify({ passed: report.passed, modelResponseVerified: report.modelResponseVerified,
    checks: report.checks, catalogMs: report.catalogMs, batchReadMs: report.response?.elapsedMs, report: file, error: report.error }, null, 2));
}
