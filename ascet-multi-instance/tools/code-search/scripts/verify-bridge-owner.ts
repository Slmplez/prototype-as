import assert from 'node:assert/strict';
import { spawn, execFile } from 'node:child_process';
import { promisify } from 'node:util';
import { readFile, mkdir, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { performance } from 'node:perf_hooks';
import { setTimeout as delay } from 'node:timers/promises';
import { Bridge, ROOT } from '../src/bridge.js';

const manifest = resolve(process.env.ASCET_PI_MANIFEST ?? join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json'));
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.ok(Number.isInteger(instance.port) && instance.port !== 32503);
const directory = resolve(process.env.ASCET_PI_REPORT ?? join(ROOT, 'experiments/pi-integration/bridge-owner-' + Date.now()));
await mkdir(directory, { recursive: true });
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port), ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' };
const script = `import {Bridge} from ${JSON.stringify(new URL('../src/bridge.js', import.meta.url).href)};
  const bridge = new Bridge(30); const response = await bridge.request({mode:'catalog'});
  process.send({ascet_pid:response.ascet_pid,database:response.database});
  process.on('message',()=>process.exit(3)); setInterval(()=>{},1000);`;
const child = spawn(process.execPath, ['--input-type=module', '-e', script], { env, windowsHide: true, stdio: ['ignore', 'pipe', 'pipe', 'ipc'] });
const ended = new Promise<void>(resolve => child.once('exit', () => resolve()));
const runFile = promisify(execFile);
let bridgePid: number | undefined;
const report: Record<string, unknown> = { status: 'running', owner_pid: child.pid, ascet_pid: identity.pid, manifest,
  boundary: 'One read-only catalog in the manifested isolated ASCET endpoint, then deliberate abrupt exit of its owned Node process. Checks the C# Bridge process exits and a new connection can read the same Database.' };
const alive = (pid: number) => { try { process.kill(pid, 0); return true; } catch { return false; } };
try {
  const response = await Promise.race([new Promise<any>((resolve, reject) => {
    child.once('message', resolve); child.once('error', reject); child.once('exit', () => reject(new Error('Owner exited before catalog result')));
  }), delay(40_000, undefined, { ref: false }).then(() => { throw new Error('Owner fixture read timed out'); })]);
  assert.equal(response.ascet_pid, identity.pid); assert.equal(response.database, instance.database);
  const { stdout } = await runFile('pwsh', ['-NoProfile', '-Command',
    `Get-CimInstance Win32_Process -Filter "Name='CodeSearchBridge.exe' AND ParentProcessId=${child.pid}" | Select-Object ProcessId,ExecutablePath | ConvertTo-Json -Compress`], { windowsHide: true, timeout: 10_000 });
  const native = JSON.parse(stdout);
  assert.equal(resolve(native.ExecutablePath), join(ROOT, 'CodeSearchBridge.exe'));
  bridgePid = native.ProcessId; assert.ok(bridgePid && alive(bridgePid)); report.bridge_pid = bridgePid;
  const began = performance.now(); child.send('exit');
  await Promise.race([ended, delay(3000, undefined, { ref: false }).then(() => { throw new Error('Owner did not exit'); })]);
  while (alive(bridgePid) && performance.now() - began < 5000) await delay(20);
  assert.equal(alive(bridgePid), false, 'Native child must exit after its original owner exits');
  report.owner_exit_to_bridge_exit_ms = performance.now() - began;
  const replacement = new Bridge(30, { env });
  try {
    const next = await replacement.request({ mode: 'catalog' });
    assert.equal(next.ascet_pid, identity.pid); assert.equal(next.database, instance.database);
    report.next_connection_passed = true;
  } finally { await replacement.close(); }
  report.status = 'passed';
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally {
  if (child.pid && alive(child.pid)) { child.kill(); await ended; }
  if (bridgePid && alive(bridgePid)) process.kill(bridgePid);
  await writeFile(join(directory, 'bridge-owner.json'), JSON.stringify(report, null, 2) + '\n');
  console.log(JSON.stringify(report, null, 2));
}
