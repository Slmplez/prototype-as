import assert from 'node:assert/strict';
import { mkdir, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { Broker } from '../src/broker.js';
import { ROOT } from '../src/bridge.js';

const manifest = process.env.ASCET_EXPERIMENT_MANIFEST;
assert.ok(manifest, 'Set ASCET_EXPERIMENT_MANIFEST to the isolated repaired AEB database.');
const componentPath = 'PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Component\\AEB_iBooster\\AEBiBooster_ECU_CSW_BB00001';
const artifactRoot = join(ROOT, 'artifacts', 'aeb-behavior-' + new Date().toISOString().replaceAll(/[:.]/g, '-'));
const broker = new Broker({ artifactRoot });
const report: any = { started: new Date().toISOString(), componentPath, manifest, scope: 'offline algorithm; sampled checkpoints, no vehicle plant or HIL', scenarios: [], calls: [] };
let sessionId = '';
const signals = new Map<string, any>();
const light = 'AEBiBooster_ECU_CSW_BB00001\\AEB5ms\\AEB_light_class\\';
const core = light + 'AEB_Core\\';
const state = core + 'AEB_State_Machine\\';
const braking = core + 'AEB_AutomaticBraking\\AEB_axControlCover\\AEB_AutomaticBraking_SM\\';
const driver = light + 'AEB_DriverAccelerates\\';
const labels: Record<string, string> = {
 state: state + 'AEBState', lock: state + 'AEBLockTime', time: state + 'tAEB',
 active: 'ESPAEBDecAct', ib: 'AEBIBActive', ba: 'ESPAEBBAAct',
 brakeState: braking + 'AEB_BrakeToStandstillState', automatic: braking + 'AEB_AutomaticBraking',
 hold: braking + 'AEB_AutomaticBrakingSSM', holdTime: braking + 'AEB_tVehicleHold', axEnable: braking + 'AEB_EnableAxCtrl',
 holdReq: 'CSMHoldReq_AEB', controller: 'LDMCor_AEB_Id', force: 'LDMCor_AEB_FxTar', forceRate: 'AEBdFxTar', pressure: 'AEBpPedal',
 pedalState: driver + 'AEB_AccPedalState', pedalCount: driver + 'AEB_AccPedalPressCnt', override: driver + 'AEB_DriverAccelerates',
};
let scenario: any;
async function call(name: string, args: any = {}) {
 const r = await broker.call(name, name === 'exp_attach' ? args : { sessionId, ...args });
 report.calls.push({ name, args, ...r }); assert.equal(r.ok, true, JSON.stringify(r)); return r;
}
function ref(label: string) { const s = signals.get(label); assert.ok(s, 'Missing signal ' + label); return s.signalRef; }
async function write(values: Record<string, number | boolean | string>) {
 const r = await call('exp_write', { writes: Object.entries(values).map(([label, value]) => ({ signalRef: ref(label), value })) });
 for (const w of r.writes) if (typeof values[w.label] !== 'number') assert.equal(w.matchesRequested, true, 'Typed scalar readback ' + w.label);
 scenario?.inputs.push({ time: r.observedState.simTimeSeconds, requested: values, readback: r.writes }); return r;
}
async function read(names: Record<string, string>) {
 const keys = Object.keys(names); const r = await call('exp_read', { signalRefs: Object.values(names).map(ref) });
 return Object.fromEntries(r.values.map((v: any, i: number) => [keys[i], v.numericValue ?? v.value]));
}
async function sample(label: string, seconds: number) {
 const step = await call('exp_step', { mode: 'duration', value: seconds });
 const values = await read(labels); const point = { label, time: step.timeAfter, advancedSeconds: step.advancedSeconds, values };
 scenario.points.push(point); console.log(JSON.stringify({ scenario: scenario.name, ...point })); return values;
}
async function until(label: string, signal: string, threshold: number) {
 const step = await call('exp_step', { mode: 'condition', signalRef: ref(signal), operator: '>=', threshold, maxEvents: 100 });
 assert.equal(step.termination, 'condition_met', `${scenario.name}: ${label}`);
 const values = await read(labels); scenario.points.push({ label, time: step.timeAfter, eventsExecuted: step.eventsExecuted, values });
 console.log(JSON.stringify({ scenario: scenario.name, label, values })); return values;
}
function expect(v: any, expected: Record<string, number | string>) {
 for (const [key, value] of Object.entries(expected)) assert.equal(v[key], value, `${scenario.name}: ${key}`);
 scenario.checks.push(expected);
}
async function reset(name: string) {
 scenario = { name, inputs: [], points: [], checks: [] }; report.scenarios.push(scenario);
 await call('exp_control', { action: 'stop' });
 await call('exp_parameters', { action: 'reset_variables' });
 await call('exp_parameters', { action: 'reset_parameters' });
 await call('exp_parameters', { action: 'update_dependent' });
 await call('exp_step', { mode: 'events', value: 1 });
 await write({ TargetStateAEB_Arb: 'AEB_On', CM_AebDecCtrlAct: false, CM_AebIbReleaseCus: true,
  CM_AebBaReleaseCus: true, CM_AebBaAct: false, CM_AebBaExtended: false, CM_AebDeactivateCus: false,
  CM_Ena_AEBStandStill: true, CSMVehStandstillLikely: false, CSMHoldState: 'CSMHoldState_NotActive',
  LDMvWhlAvrgF: 10, LDMAx: 0, LDMAxRaw: 0, CM_AebAxTar: -3, LDM_nDrvUnit: 1500,
  LDMFxTotalAct: 0, LDMFxTotalActMax: 0, LDMFxTotalDriver: 0,
  LDMSelectedControllerT5: 'LDMSelectedController_AEB', sDrvPedalRaw: 0,
  BrakePedalIsAppliedQualifier: 'BrakePedalIsAppliedQualifier_Redundant' });
}
async function activate() { await write({ CM_AebDecCtrlAct: true }); return sample('request enabled', .03); }
try {
 const a = await call('exp_attach', { instanceRef: manifest }); sessionId = a.sessionId;
 if (a.observedState.open) await call('exp_control', { action: 'close', discardUnsaved: true });
 const opened = await call('exp_open', { componentPath, configuration: 'Default' });
 if (opened.observedState.recording?.available) await call('exp_record', { action: 'stop' });
 for (let offset = 0;;offset += 200) { const r = await call('exp_signals', { offset, limit: 200 }); for (const s of r.signals) signals.set(s.label, s); if (r.nextOffset === null) break; }
 const config = await call('exp_configure', { action: 'read' }); report.configuration = config.configuration;
 for (const [name, period] of [['TaskBaseCtrlx1', .005], ['TaskBaseCtrlx4', .02]] as const) {
  const e = config.configuration.events.EventSimChannels[name]; assert.equal(e.enabled, true); assert.equal(e.Delay, period);
 }
 await reset('request gates and IB trigger/maintain/cancel');
 report.parameters = await read({ minVelocity: core + 'AEB_Release\\C_AEB_vMin', lock: state + 'C_AEB_LockTime',
  maxHold: braking + 'C_AEB_MaxHoldTime', deadTime: driver + 'C_AEB_DeadTimeAccelerateReq', nominalDeadTime: 'P_AEB_DeadTimeAccelerateReq',
  pressureOn: 'P_AEB_BA_pMCActThresh', pressureOff: 'P_AEB_BA_pMCDeactThresh', accelOn: 'P_AEB_BA_AxVehActivateThresh', rateOn: 'P_AEB_BA_pPedalRateActThresh' });
 expect(await sample('no request', .03), { active: 0, ib: 0, ba: 0, state: 11, automatic: 0, force: 0 });
 await write({ TargetStateAEB_Arb: 'AEB_Off', CM_AebDecCtrlAct: true });
 expect(await sample('arbiter blocks request', .03), { active: 0, state: 11 });
 await write({ TargetStateAEB_Arb: 'AEB_On', CM_AebIbReleaseCus: false, CM_AebBaReleaseCus: false });
 expect(await sample('customer release blocks request', .03), { active: 0, state: 11 });
 await write({ CM_AebIbReleaseCus: true, CM_AebBaReleaseCus: true });
 let v = await sample('IB activated', .03); expect(v, { active: 1, ib: 1, ba: 0, state: 21, automatic: 1, brakeState: 21 });
 assert.ok(v.force < 0, 'Active deceleration request must produce a negative brake force');
 v = await sample('IB maintained', .1); expect(v, { active: 1, ib: 1, state: 21 }); assert.ok(v.time > .1);
 await write({ CM_AebDecCtrlAct: false }); expect(await sample('request cancelled', .03), { active: 0, ib: 0, ba: 0, state: 11, automatic: 0 });
 await write({ CM_AebDecCtrlAct: true }); v = await sample('lock prevents immediate reactivation', .05); expect(v, { active: 0, state: 11 }); assert.ok(v.lock > 0);
  await sample('lock countdown first half', 10);
  await sample('lock countdown second half', Math.max(.005, v.lock - 10));
  expect(await sample('lock expires and request reactivates', .03), { active: 1, ib: 1, state: 21, lock: 0 });

 await reset('BA acceleration guard, activation, sustain and pressure release');
 await write({ CM_AebIbReleaseCus: false, LDMFxTotalDriver: -8000, LDMAx: 0 });
 await sample('driver pressure settled before request', .15);
 await write({ CM_AebDecCtrlAct: true }); expect(await sample('BA acceleration guard blocks trigger', .03), { active: 0, state: 11 });
  await write({ LDMAx: report.parameters.accelOn, LDMAxRaw: report.parameters.accelOn });
  expect(await sample('BA strict acceleration threshold equality', .03), { active: 0, state: 11 });
 await write({ LDMAx: -4, LDMAxRaw: -4 });
 v = await sample('BA trigger', .03); expect(v, { active: 1, ba: 1, ib: 0, state: 31 }); assert.ok(v.pressure > report.parameters.pressureOn);
 expect(await sample('BA maintained', .1), { active: 1, ba: 1, state: 31 });
 await write({ LDMFxTotalDriver: 0 }); expect(await sample('BA pressure released', .15), { active: 0, ba: 0, state: 11 });

  await reset('BA pressure rate triggers below static pressure threshold');
  await write({ CM_AebIbReleaseCus: false, LDMAx: -4, LDMAxRaw: -4, CM_AebDecCtrlAct: true });
  expect(await sample('no pressure means no BA', .03), { active: 0, state: 11 });
  await write({ LDMFxTotalDriver: -1000 });
  v = await until('rising driver pressure triggers BA', labels.ba, 1);
  expect(v, { active: 1, ba: 1, ib: 0, state: 30 });
  assert.ok(v.pressure < report.parameters.pressureOn && v.pressure > report.parameters.pressureOff);
  expect(await sample('below-static-threshold BA sustained', .03), { ba: 1, state: 31 });

 await reset('IB to BA transition through driver pressure');
 expect(await activate(), { ib: 1, ba: 0 });
 await write({ LDMFxTotalDriver: -8000 }); expect(await sample('IB becomes BA', .15), { ib: 0, ba: 1, state: 31 });

 await reset('standstill hold and hold disable'); expect(await activate(), { ib: 1 });
 await write({ LDMvWhlAvrgF: 0, CSMVehStandstillLikely: true });
 expect(await sample('hold entered and sustained', .03), { hold: 1, brakeState: 41, holdReq: 'CSMHoldReq_Hold' });
 expect(await sample('hold beyond ax extension', .1), { hold: 1, axEnable: 0, brakeState: 41 });
 await write({ CM_Ena_AEBStandStill: false }); expect(await sample('hold disabled', .03), { hold: 0, automatic: 0, holdReq: 'CSMHoldReq_None' });

  await reset('hold timeout requests release'); expect(await activate(), { ib: 1 });
  await write({ LDMvWhlAvrgF: 0, CSMVehStandstillLikely: true });
  expect(await sample('hold before timeout', report.parameters.maxHold - .05), { hold: 1, brakeState: 41 });
  v = await until('observe timeout release transition', labels.brakeState, 50);
  expect(v, { brakeState: 50, holdReq: 'CSMHoldReq_Release', axEnable: 0 });
  assert.ok(v.holdTime > report.parameters.maxHold, 'Release transition requires hold time strictly above its calibrated maximum');
  expect(await sample('release completes without external hold acknowledgement', .03), { hold: 0, brakeState: 11, holdReq: 'CSMHoldReq_None' });

 await reset('accelerator double press exits IB'); expect(await activate(), { ib: 1 });
 await sample('past accelerator dead time', Math.max(.45, report.parameters.deadTime + .05));
 await write({ sDrvPedalRaw: 25 }); expect(await sample('first press', .03), { pedalState: 1, pedalCount: 1, ib: 1 });
 await write({ sDrvPedalRaw: 0 }); expect(await sample('release between presses', .03), { pedalState: 2, pedalCount: 1, ib: 1 });
  await write({ sDrvPedalRaw: 25 });
  expect(await until('second press detected and cancels IB', labels.override, 1), { pedalState: 3, pedalCount: 2, override: 1, ib: 0, active: 0 });
  expect(await sample('override clears after IB exit', .03), { override: 0, pedalState: 0, ib: 0, active: 0 });

  await reset('disabled accelerator override ignores double press'); expect(await activate(), { ib: 1 });
  await write({ FS_AEB_DisableAccOverride: true });
  for (const pedal of [25, 0, 25]) {
   await write({ sDrvPedalRaw: pedal });
   expect(await sample('override disabled pedal ' + pedal, .03), { ib: 1, active: 1, override: 0, pedalState: 0, pedalCount: 0 });
  }
 report.passed = true;
} catch (error) { report.passed = false; report.error = String(error); process.exitCode = 1; }
finally {
 if (sessionId) {
  const inspected = await broker.call('exp_inspect', { sessionId });
  report.cleanupInspection = inspected;
  if (!inspected.ok) { report.passed = false; process.exitCode = 1; }
  if (inspected.ok && inspected.observedState.open) {
   report.cleanup = [];
   for (const [name, args] of [
    ['exp_control', { action: 'stop' }], ['exp_parameters', { action: 'reset_variables' }],
    ['exp_parameters', { action: 'reset_parameters' }], ['exp_control', { action: 'close', discardUnsaved: true }],
   ] as const) {
    const result = await broker.call(name, { sessionId, ...args }); report.cleanup.push({ name, ...result });
    if (!result.ok) { report.passed = false; process.exitCode = 1; }
   }
  }
 }
 await broker.close(); await mkdir(artifactRoot, { recursive: true });
 const file = join(artifactRoot, 'report.json'); await writeFile(file, JSON.stringify(report, null, 2));
 console.log(JSON.stringify({ passed: report.passed, scenarios: report.scenarios.length, parameters: report.parameters, error: report.error, report: file }, null, 2));
}
