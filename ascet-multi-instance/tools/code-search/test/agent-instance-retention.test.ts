import test from 'node:test';
import assert from 'node:assert/strict';
import { mkdtemp, writeFile, rm } from 'node:fs/promises';
import { tmpdir } from 'node:os';
import { join } from 'node:path';
import { retainAgentInstance } from '../scripts/agent-instance-retention.js';
const identity = { pid: 123, start_time_utc: '2026-10-07T00:00:00.000Z' };
for (const [name, marker, expected] of [
  ['missing marker', undefined, false],
  ['exact process', JSON.stringify(identity), true],
  ['same PID reused later', JSON.stringify({ ...identity, start_time_utc: '2026-10-08T00:00:00.000Z' }), false],
  ['other PID', JSON.stringify({ ...identity, pid: 456 }), false],
  ['PowerShell UTF8 BOM', '\uFEFF' + JSON.stringify(identity), true],
] as const) test('instance retention: ' + name, async () => {
  const dir = await mkdtemp(join(tmpdir(), 'ascet-retention-test-'));
  try {
    if (marker !== undefined) await writeFile(join(dir, 'keep-running.json'), marker);
    assert.equal(await retainAgentInstance(join(dir, 'instance.json'), identity), expected);
  } finally { await rm(dir, { recursive: true, force: true }); }
});
test('malformed retention marker fails closed instead of silently permitting shutdown', async () => {
  const dir = await mkdtemp(join(tmpdir(), 'ascet-retention-test-'));
  try {
    await writeFile(join(dir, 'keep-running.json'), '{invalid');
    await assert.rejects(retainAgentInstance(join(dir, 'instance.json'), identity), SyntaxError);
  } finally { await rm(dir, { recursive: true, force: true }); }
});
