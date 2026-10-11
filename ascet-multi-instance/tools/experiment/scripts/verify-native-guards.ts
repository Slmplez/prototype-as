import assert from 'node:assert/strict';
import { Bridge, ROOT } from '../src/bridge.js';
import { mkdir, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
const manifest = process.env.ASCET_EXPERIMENT_MANIFEST;
assert.ok(manifest, 'Set ASCET_EXPERIMENT_MANIFEST to the isolated PID fixture.');
const b = new Bridge(manifest);
const report: any = { at: new Date().toISOString(), manifest, checks: [] };
try {
  const ready = await b.ready;
  assert.equal(ready.result.open, false, 'Fixture experiment must be closed before this test.');
  await assert.rejects(b.request('configuration'), (e: any) => e.code === 'PRECONDITION_FAILED' && e.message === 'NO_EXPERIMENT' && !e.outcomeUnknown);
  assert.equal((await b.request('inspect')).result.open, false);
  await assert.rejects(b.request('step', ['Condition', 'true']), (e: any) => e.code === 'INVALID_ARGUMENT');
  for (const value of ['self halt', 'AEB_On\n', 'true.', 'NaN', 'Infinity'])
    await assert.rejects(b.request('write', ['physical', 'unused', value]), (e: any) => e.code === 'INVALID_ARGUMENT' && !e.outcomeUnknown);
  assert.equal((await b.request('inspect')).result.open, false);
  report.checks.push('raw host rejects expression text, trailing newline and nonfinite scalar text before native dispatch');
  const opened = await b.request('open', ['ETAS_SystemLib\\Transferfunction\\Control\\PID', 'test'], 120_000);
  assert.equal(opened.result.nativeError.code, 0);
  const configuration = (await b.request('configuration')).result;
  const stamp = configuration.configurationStamp;
  const a = await b.request('stimulus', ['in/compute', 'constant', '.75', '1', '1', '0', stamp]);
  assert.equal(a.result.stimuli.find((x: any) => x.channel === 'in/compute').offset, .75);
  assert.notEqual(a.result.configurationStamp, stamp, 'A mutation must return the updated stamp.');
  await assert.rejects(b.request('stimulus', ['in/compute', 'constant', '.25', '1', '1', '0', stamp]), (e: any) => e.code === 'PRECONDITION_FAILED' && e.message === 'CONFIGURATION_CHANGED' && !e.outcomeUnknown);
  const actual = (await b.request('configuration')).result;
  assert.equal(actual.stimuli.find((x: any) => x.channel === 'in/compute').offset, .75);
  assert.equal(a.result.configurationStamp, actual.configurationStamp);
  const chained = await b.request('stimulus', ['in/compute', 'constant', '.5', '1', '1', '0', a.result.configurationStamp]);
  assert.equal(chained.result.stimuli.find((x: any) => x.channel === 'in/compute').offset, .5);
  await assert.rejects(b.request('save', [stamp, 'environment_only']), (e: any) => e.code === 'PRECONDITION_FAILED' && e.message === 'CONFIGURATION_CHANGED' && !e.outcomeUnknown);
  const saved = await b.request('save', [chained.result.configurationStamp, 'environment_only']);
  assert.equal(saved.result.databaseCommitted, false);
  report.checks.push('save compares the native stamp and commits the database only when explicitly requested');
  report.checks.push('updated native stamp supports chained mutations');
  report.checks.push('native precondition rejection retains connection', 'raw host rejects condition stepping', 'configuration compare-and-apply rejects stale native stamp without writing');
  report.passed = true;
} finally {
  try { await b.request('close'); } finally { await b.close(); }
  await mkdir(join(ROOT, 'artifacts'), { recursive: true });
  await writeFile(join(ROOT, 'artifacts', 'native-guard-report.json'), JSON.stringify(report, null, 2));
  console.log(JSON.stringify(report));
}
