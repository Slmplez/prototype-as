import assert from 'node:assert/strict';
import { mkdir, writeFile, readFile } from 'node:fs/promises';
import { join } from 'node:path';
import { randomUUID } from 'node:crypto';
import { setTimeout as delay } from 'node:timers/promises';
import { Broker } from '../src/broker.js';
import { ROOT } from '../src/bridge.js';

const manifest = process.env.ASCET_EXPERIMENT_MANIFEST;
assert.ok(manifest, 'Set the isolated repaired AEB manifest.');
const root = join(ROOT, 'artifacts', 'enhanced-' + new Date().toISOString().replaceAll(/[:.]/g, '-'));
const broker = new Broker({ artifactRoot: root });
const report: any = { checks: [], calls: [], started: new Date().toISOString() };
let sessionId = '', saved = false;
const signals = new Map<string, any>();
const dcm = join(root, 'baseline.dcm');
async function call(name: string, args: any = {}, success = true) {
  const r = await broker.call(name, ['exp_attach', 'exp_job', 'exp_results', 'exp_waveform'].includes(name) ? args : { sessionId, ...args });
  report.calls.push({ name, args, ...r }); if (success) assert.equal(r.ok, true, JSON.stringify(r)); return r;
}
function ref(label: string) { assert.ok(signals.has(label), label); return signals.get(label).signalRef; }
const stateLabel = 'AEBiBooster_ECU_CSW_BB00001\\AEB5ms\\AEB_light_class\\AEB_Core\\AEB_State_Machine\\AEBState';
const base: Record<string, number | boolean | string> = { TargetStateAEB_Arb: 'AEB_On', CM_AebDecCtrlAct: false, CM_AebIbReleaseCus: true,
  CM_AebBaReleaseCus: true, CM_AebBaAct: false, CM_AebBaExtended: false, CM_AebDeactivateCus: false,
  CM_Ena_AEBStandStill: true, CSMVehStandstillLikely: false, CSMHoldState: 'CSMHoldState_NotActive',
  LDMvWhlAvrgF: 10, LDMAx: 0, LDMAxRaw: 0, CM_AebAxTar: -3, LDM_nDrvUnit: 1500,
  LDMFxTotalAct: 0, LDMFxTotalActMax: 0, LDMFxTotalDriver: 0,
  LDMSelectedControllerT5: 'LDMSelectedController_AEB', sDrvPedalRaw: 0,
  BrakePedalIsAppliedQualifier: 'BrakePedalIsAppliedQualifier_Redundant' };
const writes = (values: Record<string, any>) => Object.entries(values).map(([label, value]) => ({ signalRef: ref(label), value }));
try {
  await mkdir(root, { recursive: true });
  const a = await call('exp_attach', { instanceRef: manifest }); sessionId = a.sessionId;
  report.identity = a.observedState;
  await call('exp_open', { componentPath: 'PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Component\\AEB_iBooster\\AEBiBooster_ECU_CSW_BB00001', configuration: 'Default' });
  await call('exp_record', { action: 'stop' });
  for (let offset = 0;; offset += 200) { const r = await call('exp_signals', { offset, limit: 200 }); for (const s of r.signals) signals.set(s.label, s); if (r.nextOffset === null) break; }
  await call('exp_control', { action: 'stop' }); await call('exp_step', { mode: 'events', value: 1 });
  const curve = ref('P_AEB_IB_MaxActivationTime_Curve');
  const before = (await call('exp_read_data', { signalRef: curve })).data;
  assert.equal(signals.get('P_AEB_IB_MaxActivationTime_Curve').scalar, false);
  const changed = await call('exp_write_data', { signalRef: curve, shape: before.shape, cells: [{ part: 'values', index: [0], value: 9.5 }, { part: 'xAxis', index: [1], value: 8.32 }] });
  assert.equal(changed.data.values[0], 9.5); assert.equal(changed.cells[1].matchesRequested, false);
  const reject = await call('exp_write_data', { signalRef: curve, shape: before.shape, cells: [{ part: 'values', index: [0], value: 9 }, { part: 'xAxis', index: [1], value: -1 }] }, false);
  assert.equal(reject.error.code, 'PRECONDITION_FAILED'); assert.equal((await call('exp_read_data', { signalRef: curve })).data.values[0], 9.5);
  for (const cells of [[{ part: 'values', index: [0], value: 11 }], [{ part: 'values', index: [0], value: 9 }, { part: 'xAxis', index: [1], value: 8.35 }]]) {
    const invalid = await call('exp_write_data', { signalRef: curve, shape: before.shape, cells }, false);
    assert.equal(invalid.error.code, 'PRECONDITION_FAILED'); assert.equal((await call('exp_read_data', { signalRef: curve })).data.values[0], 9.5);
  }
  await call('exp_write_data', { signalRef: curve, shape: before.shape, cells: [{ part: 'values', index: [0], value: before.values[0] }, { part: 'xAxis', index: [1], value: before.axes.xAxis[1] }] });
  report.checks.push('live curve value/axis writes, quantization readback, complete invalid-batch rejection and restoration');
  const scalar = ref('P_AEB_DeadTimeAccelerateReq');
  const original = (await call('exp_read', { signalRefs: [scalar] })).values[0].numericValue;
  const exported = await call('exp_parameters', { action: 'save', path: dcm }); saved = true;
  assert.ok(exported.artifact.bytes > 100);
  const map = ref('P_AEB_AXCKpVxAxPartMod_table');
  const mapBefore = (await call('exp_read_data', { signalRef: map })).data;
  assert.equal(mapBefore.kind, 'map'); assert.deepEqual(mapBefore.shape, [20, 10]);
  const mapChanged = await call('exp_write_data', { signalRef: map, shape: mapBefore.shape, cells: [
    { part: 'values', index: [0, 0], value: .125 }, { part: 'values', index: [19, 9], value: .25 },
    { part: 'xAxis', index: [1], value: 1.25 }, { part: 'yAxis', index: [1], value: 1.25 }
  ] });
  assert.equal(mapChanged.data.values[0][0], .125); assert.equal(mapChanged.data.values[19][9], .25);
  assert.equal(mapChanged.data.axes.xAxis[1], 1.25); assert.equal(mapChanged.data.axes.yAxis[1], 1.25);
  for (const bad of [
    [{ part: 'values', index: [0, 0], value: .5 }, { part: 'yAxis', index: [1], value: -1 }],
    [{ part: 'values', index: [20, 0], value: .5 }],
    [{ part: 'values', index: [0, 0], value: .5 }, { part: 'xAxis', index: [1], value: mapChanged.data.axes.xAxis[2] }]
  ]) {
    const rejected = await call('exp_write_data', { signalRef: map, shape: mapBefore.shape, cells: bad }, false);
    assert.equal(rejected.error.code, 'PRECONDITION_FAILED');
    assert.deepEqual((await call('exp_read_data', { signalRef: map })).data, mapChanged.data);
  }
  await call('exp_write_data', { signalRef: map, shape: mapBefore.shape, cells: [
    { part: 'values', index: [0, 0], value: mapBefore.values[0][0] }, { part: 'values', index: [19, 9], value: mapBefore.values[19][9] },
    { part: 'xAxis', index: [1], value: mapBefore.axes.xAxis[1] }, { part: 'yAxis', index: [1], value: mapBefore.axes.yAxis[1] }
  ] });
  assert.deepEqual((await call('exp_read_data', { signalRef: map })).data, mapBefore);
  report.characteristicMap = { before: mapBefore, changed: mapChanged.data, restored: true };
  report.checks.push('live 20x10 characteristic map first/last cells and both axes, invalid-batch rejection before writes, full restoration');
  await call('exp_write', { writes: [{ signalRef: scalar, value: original + .1 }] });
  await call('exp_write_data', { signalRef: curve, shape: before.shape, cells: [{ part: 'values', index: [0], value: 8.5 }] });
  const imported = await call('exp_parameters', { action: 'load', path: dcm, audit: true, strictAudit: true, expected: [{ signalRef: scalar, value: original }] });
  assert.equal(imported.verification[0].passed, true);
  assert.equal(imported.audit.inputEntries, 697); assert.equal(imported.audit.allMatched, true);
  assert.deepEqual((await call('exp_read_data', { signalRef: curve })).data, before);
  const second = await call('exp_parameters', { action: 'save', path: join(root, 'roundtrip.dcm') });
  const content = (bytes: Buffer) => bytes.toString('latin1').split('KONSERVIERUNG_FORMAT')[1].replace(/\r\n/g, '\n');
  assert.equal(content(await readFile(dcm)), content(await readFile(second.artifact.path)), 'All exported DCM blocks must round-trip unchanged.');
  report.dcm = { export: exported.artifact, import: imported.verification };
  report.dcm.roundtrip = second.artifact;
  report.dcm.audit = imported.audit;
  report.checks.push('native DCM save -> change scalar and curve -> load -> scalar/curve readback and all re-exported DCM blocks identical');
  const unknownPath = join(root, 'with-unknown.dcm');
  await writeFile(unknownPath, Buffer.concat([await readFile(dcm), Buffer.from('\nFESTWERT Agent_UnknownParameter_20261011\n WERT 1\nEND\n')]));
  const unknown = await call('exp_parameters', { action: 'load', path: unknownPath, audit: true, strictAudit: true }, false);
  assert.equal(unknown.ok, false);
  assert.ok(['DCM_AUDIT_MISMATCH', 'ASCET_OPERATION_FAILED'].includes(unknown.error.code), JSON.stringify(unknown));
  const unknownAudit = unknown.error.evidence.audit;
  assert.equal(unknownAudit.inputEntries, 698); assert.equal(unknownAudit.counts.not_exported, 1); assert.equal(unknownAudit.counts.matched, 697);
  const fullAudit = JSON.parse(await readFile(unknownAudit.rawArtifact, 'utf8'));
  assert.equal(fullAudit.entries.find((e: any) => e.name === 'Agent_UnknownParameter_20261011').status, 'not_exported');
  report.dcm.unknownEntry = unknown; report.checks.push('full DCM per-entry audit and strict rejection for unknown input parameter');
  const active = ref('ESPAEBDecAct'), state = ref(stateLabel);
  const submitted = await call('exp_run_case', { requestId: randomUUID(), caseSpec: {
    initialization: 'reset', signalRefs: [active, state], writes: writes(base),
    recording: { path: join(root, 'staged-capture.dat'), signalRefs: [active, state, ref('LDMCor_AEB_FxTar')], maxPoints: 5 },
    stages: [
      { name: 'idle', durationSeconds: .05, sampleSeconds: .01 },
      { name: 'activate', durationSeconds: .1, sampleSeconds: .01, writes: writes({ CM_AebDecCtrlAct: true }) },
      { name: 'cancel', durationSeconds: .05, sampleSeconds: .01, writes: writes({ CM_AebDecCtrlAct: false }) }
    ], assertions: [
      { signalRef: active, kind: 'range', fromSeconds: 0, toSeconds: .045, condition: { equals: false } },
      { signalRef: active, kind: 'eventually', fromSeconds: .05, toSeconds: .15, condition: { equals: true } },
      { signalRef: active, kind: 'hold', fromSeconds: .06, toSeconds: .15, durationSeconds: .05, condition: { equals: true } },
      { signalRef: state, kind: 'transition', states: [11, 21, 11] },
      { signalRef: active, kind: 'final', condition: { equals: false } }
    ]
  } });
  let job; do { await delay(50); job = await call('exp_job', { jobId: submitted.jobId, action: 'get' }); } while (['queued', 'running'].includes(job.status));
  assert.equal(job.status, 'completed', JSON.stringify(job));
  const result = await call('exp_results', { runId: submitted.runId });
  assert.equal(result.stages.length, 3); assert.ok(result.assertions.every((a: any) => a.passed));
  assert.equal(result.nativeRecording.status, 'parsed'); assert.equal(result.nativeRecording.restoration.restored, true);
  const caseActivity = result.nativeRecording.waveform.channels.find((c: any) => c.name === 'ESPAEBDecAct');
  assert.ok(caseActivity.metrics.count > 5); assert.ok(caseActivity.transitions.some((t: any) => t.from === 0 && t.to === 1));
  assert.ok(caseActivity.transitions.some((t: any) => t.from === 1 && t.to === 0));
  report.stagedCase = result; report.checks.push('three real AEB stages and five temporal/state assertions');
  report.checks.push('multi-stage case automatically records native waveform, parses all records and restores logger channels/output');
  const cancelled = await call('exp_run_case', { requestId: randomUUID(), caseSpec: { initialization: 'preserve', signalRefs: [active, state],
    stages: [{ name: 'cancel-live', durationSeconds: 2, sampleSeconds: .01 }], recording: { path: join(root, 'cancelled-capture.dat'), maxPoints: 5 } } });
  let partial; do { await delay(25); partial = await call('exp_job', { jobId: cancelled.jobId, action: 'get' }); } while (partial.completedChunks < 1 && ['queued', 'running'].includes(partial.status));
  await call('exp_job', { jobId: cancelled.jobId, action: 'cancel' });
  do { await delay(25); partial = await call('exp_job', { jobId: cancelled.jobId, action: 'get' }); } while (['queued', 'running'].includes(partial.status));
  assert.equal(partial.status, 'cancelled', JSON.stringify(partial));
  report.cancelledCase = await call('exp_results', { runId: cancelled.runId });
  assert.equal(report.cancelledCase.nativeRecording.status, 'parsed'); assert.equal(report.cancelledCase.nativeRecording.restoration.restored, true);
  report.checks.push('live cooperative cancellation finalizes and parses partial recording, then restores recorder');
  await call('exp_control', { action: 'stop' }); await call('exp_step', { mode: 'events', value: 1 }); await call('exp_write', { writes: writes(base) });
  const configured = await call('exp_record', { action: 'configure', signalRefs: [active, state, ref('LDMCor_AEB_FxTar')] });
  assert.equal(configured.recording.channelCount, 3);
  await call('exp_record', { action: 'set_output', path: join(root, 'capture.dat') });
  await call('exp_record', { action: 'start' });
  await call('exp_step', { mode: 'duration', value: .05 });
  await call('exp_write', { writes: writes({ CM_AebDecCtrlAct: true }) });
  await call('exp_step', { mode: 'duration', value: .1 });
  const stopped = await call('exp_record', { action: 'stop' });
  const waveform = await call('exp_waveform', { path: stopped.artifact.path, maxPoints: 5 });
  assert.equal(waveform.version, '2.00'); assert.equal(waveform.channels.length, 4);
  const activity = waveform.channels.find((c: any) => c.name === 'ESPAEBDecAct'); assert.ok(activity); assert.equal(activity.metrics.max, 1); assert.equal(activity.metrics.min, 0); assert.ok(activity.metrics.count > 5);
  assert.ok(activity.transitions.some((t: any) => t.from === 0 && t.to === 1));
  report.waveform = waveform; report.checks.push('native configured capture, all MDF records parsed, full metrics and transition evidence before preview reduction');
  report.passed = true;
} catch (e) { report.passed = false; report.error = String(e); process.exitCode = 1; }
finally {
  if (sessionId) {
    report.cleanup = [];
    report.cleanup.push(await broker.call('exp_record', { sessionId, action: 'stop' }));
    if (saved) report.cleanup.push(await broker.call('exp_parameters', { sessionId, action: 'load', path: dcm }));
    if (['CtrlMode_FL', 'CtrlMode_FR', 'CtrlMode_RL', 'CtrlMode_RR'].every(n => signals.has(n))) report.cleanup.push(await broker.call('exp_record', { sessionId, action: 'configure', signalRefs: ['CtrlMode_FL', 'CtrlMode_FR', 'CtrlMode_RL', 'CtrlMode_RR'].map(ref) }));
    report.cleanup.push(await broker.call('exp_control', { sessionId, action: 'stop' }));
    report.cleanup.push(await broker.call('exp_control', { sessionId, action: 'close', discardUnsaved: true }));
  }
  await broker.close(); await mkdir(root, { recursive: true }); await writeFile(join(root, 'report.json'), JSON.stringify(report, null, 2));
  console.log(JSON.stringify({ passed: report.passed, checks: report.checks, error: report.error, report: join(root, 'report.json') }));
}
