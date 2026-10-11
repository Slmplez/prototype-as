import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { execFile } from 'node:child_process';
import { promisify } from 'node:util';
const run = promisify(execFile);
export async function retainAgentInstance(manifest: string, identity: { pid: number; start_time_utc: string }): Promise<boolean> {
  let raw: string;
  try { raw = await readFile(join(dirname(manifest), 'keep-running.json'), 'utf8'); }
  catch (error: any) { if (error.code === 'ENOENT') return false; throw error; }
  const retain = JSON.parse(raw.replace(/^\uFEFF/, ''));
  return retain.pid === identity.pid && retain.start_time_utc === identity.start_time_utc;
}
/** Reuse only the recorded process and endpoint, never another ASCET installation. */
export async function verifyRunningAgentInstance(identity: { pid: number; port: number; runtime: string; start_time_utc: string }): Promise<void> {
  assert.ok(Number.isSafeInteger(identity.pid) && identity.pid > 0);
  assert.ok(Number.isSafeInteger(identity.port) && identity.port > 0 && identity.port <= 65535);
  const quote = (s: string) => "'" + s.replaceAll("'", "''") + "'";
  await run('pwsh', ['-NoProfile', '-Command', `$p = Get-Process -Id ${identity.pid} -ErrorAction Stop
    if ($p.Path -ne ${quote(join(identity.runtime, 'ASCET.exe'))} -or $p.StartTime.ToUniversalTime().ToString('o') -ne ${quote(identity.start_time_utc)}) { throw 'ASCET process identity changed' }
    $listener = Get-NetTCPConnection -State Listen -LocalPort ${identity.port} -ErrorAction Stop
    if ($listener.OwningProcess -ne ${identity.pid}) { throw 'ASCET endpoint owner changed' }`], { windowsHide: true, timeout: 30000 });
}
