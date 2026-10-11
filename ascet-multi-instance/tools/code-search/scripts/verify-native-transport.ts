import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { randomBytes } from 'node:crypto';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { JsonLineClient, ROOT, validateNativeResponse } from '../src/bridge.js';

const manifest = join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json');
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.ok(Number.isInteger(instance.port) && instance.port !== 32503);
const directory = join(ROOT, 'experiments/native-transport', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const source = join(directory, 'echo.st');
await writeFile(source, '[:echoDb :echoMode :echoInput | echoInput copyFrom: 2 to: echoInput size]');
const codec = await readFile(join(ROOT, 'native-transport.st'), 'utf8');
const noise = Array.from(randomBytes(100_000), byte => String.fromCharCode(32 + byte % 95)).join('');
const cases = [
  { name: 'small', text: '#DIAGRAM_SCOPE|1|||||||||', encoding: null },
  { name: 'compressed', text: '#SOURCE|percent %37;|Unicode %20013;%25991;%128578;|\r\n'.repeat(2500), encoding: 'zlib-base64' },
  { name: 'incompressible', text: noise, encoding: null },
  { name: 'compressed_repeat', text: '#BDE_CONTEXT|retained graph metadata|'.repeat(3000), encoding: 'zlib-base64' },
];
const report: Record<string, unknown> = { status: 'running', directory, manifest, pid: identity.pid };
const results: unknown[] = [];
try {
  for (const phase of ['normal', 'unavailable'] as const) {
    const transport = join(directory, phase + '.st'), binary = join(directory, phase + '.exe');
    await writeFile(transport, phase === 'normal' ? codec : codec.replaceAll("library: 'zlib1'", "library: '__ASCET_TRANSPORT_MISSING__'"));
    execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
      '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
      '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
      '/resource:' + source + ',snapshot.st', '/resource:' + transport + ',native-transport.st', join(ROOT, 'CodeSearchBridge.cs'),
    ], { windowsHide: true });
    const open = () => new JsonLineClient({ command: binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) }, timeoutMs: 30_000 });
    const client = open();
    try {
      for (const sample of cases) {
        const raw = await client.request({ mode: 'snapshot', needle: sample.text }) as Record<string, unknown>;
        const decoded = validateNativeResponse(raw);
        assert.equal(decoded.ascet_pid, identity.pid); assert.equal(decoded.payload, sample.text);
        assert.equal(raw.payload_encoding, phase === 'normal' ? sample.encoding : null);
        results.push({ phase, name: sample.name, encoding: raw.payload_encoding, original_bytes: sample.text.length,
          wire_chars: (raw.payload as string).length });
      }
    } finally { await client.close(); }
    const errors = open();
    try {
      const raw = await errors.request({ mode: 'snapshot', needle: 'PROBE_ERROR:' + 'original error '.repeat(5000) }) as Record<string, unknown>;
      assert.equal(raw.status, 'error'); assert.equal(raw.code, 'ASCET_READ_FAILED');
      assert.ok((raw.message as string).startsWith('PROBE_ERROR:')); results.push({ phase, name: 'native_error_preserved' });
    } finally { await errors.close(); }
  }
  Object.assign(report, { status: 'passed', cases: results, boundary: 'Echo reader only, compression and unavailable-library fallback; no model writes. Native protocol fields are ASCII escaped before compression.' });
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally { await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n'); console.log(JSON.stringify(report, null, 2)); }
