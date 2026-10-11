import assert from 'node:assert/strict';
import { mkdir, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { Broker } from '../src/broker.js';
import { ROOT } from '../src/bridge.js';

const manifest = process.env.ASCET_EXPERIMENT_MANIFEST;
assert.ok(manifest, 'Set ASCET_EXPERIMENT_MANIFEST to an isolated ASCET fixture instance.');
const componentPath = process.env.ASCET_TEST_COMPONENT ?? 'BDE_Tool_Experiments\\Trial_data_20260930_012026';
const configuration = process.env.ASCET_TEST_CONFIGURATION ?? 'Default';
const enableEvent = process.env.ASCET_TEST_ENABLE_EVENT;
const artifactRoot = join(ROOT, 'artifacts', 'class-live-' + new Date().toISOString().replaceAll(/[:.]/g, '-'));
const broker = new Broker({ artifactRoot });
const report: any = { manifest, componentPath, configuration, started: new Date().toISOString() };
let sessionId = '';
try {
  const attached = await broker.call('exp_attach', { instanceRef: manifest });
  assert.equal(attached.ok, true, JSON.stringify(attached));
  sessionId = attached.sessionId;
  if (attached.observedState.open) {
    const closed = await broker.call('exp_control', { sessionId, action: 'close', discardUnsaved: true });
    assert.equal(closed.ok, true, JSON.stringify(closed));
  }
  const opened = await broker.call('exp_open', { sessionId, componentPath, configuration });
  assert.equal(opened.ok, true, JSON.stringify(opened));
  report.open = opened.observedState;
  const inspected = await broker.call('exp_inspect', { sessionId });
  assert.equal(inspected.ok, true, JSON.stringify(inspected));
  report.inspect = inspected.observedState;
  const signals = await broker.call('exp_signals', { sessionId, query: '', kind: 'all', offset: 0, limit: 200 });
  assert.equal(signals.ok, true, JSON.stringify(signals));
  report.signals = signals.signals;
  const config = await broker.call('exp_configure', { sessionId, action: 'read' });
  assert.equal(config.ok, true, JSON.stringify(config));
  report.configuration = config.configuration;
  if (signals.signals.length) {
    const read = await broker.call('exp_read', { sessionId, signalRefs: [signals.signals[0].signalRef] });
    assert.equal(read.ok, true, JSON.stringify(read));
    report.read = read;
  }
  const enabled = Object.entries(config.configuration.events?.EventSimChannels ?? {}).some(([, value]: [string, any]) => value.enabled === true);
  if (enabled) {
    const stepped = await broker.call('exp_step', { sessionId, mode: 'events', value: 1 });
    assert.equal(stepped.ok, true, JSON.stringify(stepped));
    report.step = stepped;
  } else if (enableEvent) {
    const candidate = config.configuration.events?.EventSimChannels?.[enableEvent];
    assert.ok(candidate, `Event ${enableEvent} was not found in the selected configuration.`);
    const applied = await broker.call('exp_configure', { sessionId, action: 'apply', section: 'event', expectedRevision: config.revision, event: { name: enableEvent, enabled: true } });
    assert.equal(applied.ok, true, JSON.stringify(applied));
    const stepped = await broker.call('exp_step', { sessionId, mode: 'events', value: 1 });
    assert.equal(stepped.ok, true, JSON.stringify(stepped));
    report.eventEnabled = applied.actual;
    report.step = stepped;
    if (signals.signals.length) {
      const afterRead = await broker.call('exp_read', { sessionId, signalRefs: [signals.signals[0].signalRef] });
      assert.equal(afterRead.ok, true, JSON.stringify(afterRead));
      report.afterEventRead = afterRead.values;
    }
    const afterStep = await broker.call('exp_configure', { sessionId, action: 'read' });
    const restored = await broker.call('exp_configure', { sessionId, action: 'apply', section: 'event', expectedRevision: afterStep.revision, event: { name: enableEvent, enabled: false } });
    assert.equal(restored.ok, true, JSON.stringify(restored));
    report.eventRestored = restored.actual;
  } else {
    const rejected = await broker.call('exp_step', { sessionId, mode: 'events', value: 1 });
    assert.equal(rejected.ok, false, JSON.stringify(rejected));
    assert.equal(rejected.error.code, 'PRECONDITION_FAILED');
    assert.equal(rejected.error.message, 'NO_ENABLED_EVENTS');
    report.step = { expected: 'NO_ENABLED_EVENTS', observed: rejected.error };
  }
  const closed = await broker.call('exp_control', { sessionId, action: 'close', discardUnsaved: true });
  assert.equal(closed.ok, true, JSON.stringify(closed));
  report.passed = true;
} catch (error) {
  report.passed = false;
  report.error = String(error);
  process.exitCode = 1;
} finally {
  if (sessionId) await broker.call('exp_detach', { sessionId });
  await broker.close();
  await mkdir(artifactRoot, { recursive: true });
  const file = join(artifactRoot, 'report.json');
  await writeFile(file, JSON.stringify(report, null, 2));
  console.log(JSON.stringify({ passed: report.passed, componentPath, configuration, report: file, error: report.error }, null, 2));
}
