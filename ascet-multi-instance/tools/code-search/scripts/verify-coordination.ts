import assert from 'node:assert/strict';
import { spawn } from 'node:child_process';
import { mkdir, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { createInterface } from 'node:readline';
import { Bridge, NativeBridgeError, ROOT } from '../src/bridge.js';

const directory = join(ROOT, 'experiments/coordination', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: '32631', ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0', ASCET_CODE_SEARCH_LOCK_WAIT_MS: '0' };
const lockPath = join(process.env.LOCALAPPDATA!, 'AscetBdeTools/local-ascet-32631.lock');
const source = `$ErrorActionPreference='Stop'; $f=[System.IO.File]::Open('${lockPath.replaceAll("'","''")}',[System.IO.FileMode]::OpenOrCreate,[System.IO.FileAccess]::ReadWrite,[System.IO.FileShare]::ReadWrite); try {$f.Lock(0,1); [Console]::WriteLine('LOCKED'); [Console]::ReadLine() | Out-Null; $f.Unlock(0,1)} finally {$f.Dispose()}`;
const holder = spawn('powershell.exe', ['-NoProfile', '-Command', source], { windowsHide: true });
let diagnostics = ''; holder.stderr.on('data', c => diagnostics += c);
const ended = new Promise(resolve => holder.once('close', resolve));
const lines = createInterface({ input: holder.stdout });
const bridge = new Bridge(30, { env });
const report: Record<string, unknown> = { status: 'running', directory };
try {
  await new Promise<void>((resolve, reject) => { const timer = setTimeout(() => reject(new Error('Lock holder timeout: ' + diagnostics)), 5000); lines.once('line', line => { clearTimeout(timer); line === 'LOCKED' ? resolve() : reject(new Error(line)); }); });
  await assert.rejects(bridge.request({ mode: 'catalog' }), error => { assert.ok(error instanceof NativeBridgeError); assert.equal(error.code, 'ASCET_BUSY'); assert.equal(error.recoverable, true); return true; });
  holder.stdin.end('\n'); assert.equal(await ended, 0, diagnostics);
  const recovered = await bridge.request({ mode: 'catalog' }); assert.equal(recovered.status, 'ok');
  report.database = recovered.database; report.ascet_pid = recovered.ascet_pid;
  report.busy_did_not_poison_connection = true;
  await new Promise(resolve => setTimeout(resolve, 600));
  // Another OS process can take the same byte-range lock after the idle lease ends.
  const follower = spawn('powershell.exe', ['-NoProfile', '-Command', source], { windowsHide: true });
  follower.stdin.end('\n'); let output = ''; follower.stdout.on('data', c => output += c);
  const followerCode = await new Promise(resolve => follower.once('close', resolve));
  assert.equal(followerCode, 0); assert.match(output, /LOCKED/); report.idle_lock_released = true;
  assert.equal((await bridge.request({ mode: 'catalog' })).status, 'ok'); report.status = 'passed';
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally { holder.kill(); await ended; lines.close(); await bridge.close(); await writeFile(join(directory, 'report.json'), JSON.stringify(report,null,2)); console.log(JSON.stringify(report,null,2)); }
