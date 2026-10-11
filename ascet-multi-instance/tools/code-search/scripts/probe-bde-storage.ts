import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { Bridge, JsonLineClient, ROOT, validateNativeResponse } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';

const manifest = resolve(process.env.ASCET_AGENT_LATENCY_MANIFEST ?? join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json'));
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.ok(Number.isInteger(instance.port) && instance.port !== 32503);
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port), ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' };
const directory = join(ROOT, 'experiments/storage-probe', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
async function snapshot() {
  const bridge = new Bridge(90, { env });
  try {
    const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
    assert.equal(raw.ascet_pid, identity.pid); const data = decodeResponse(raw); assert.deepEqual(data.errors, []); return data;
  } finally { await bridge.close(); }
}
const before = await snapshot();
const binary = join(directory, 'probe.exe');
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
  '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
  '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
  '/resource:' + join(ROOT, 'native-storage-probe.st') + ',snapshot.st', join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });
const client = new JsonLineClient({ command: binary, env, timeoutMs: 90_000 });
try {
  const raw = validateNativeResponse(await client.request({ mode: 'snapshot' })); assert.equal(raw.ascet_pid, identity.pid);
  const fields = raw.payload.split('|'); assert.equal(fields.pop(), ''); assert.equal(fields.length % 10, 0);
  const rows = Array.from({ length: fields.length / 10 }, (_, i) => fields.slice(i * 10, (i + 1) * 10)
    .map(field => field.replace(/%(\d+);/g, (_, n) => String.fromCodePoint(Number(n)))));
  await writeFile(join(directory, 'fields.json'), JSON.stringify(rows, null, 2));
  await client.close();
  const after = await snapshot(); assert.equal(fingerprint(before), fingerprint(after)); assert.deepEqual(before.diagrams, after.diagrams);
  console.log(JSON.stringify({ directory, source_fingerprint_stable: true, counts: rows.filter(r => r[0] === 'COUNT'),
    fields: rows.filter(r => r[0] === 'FIELD' && ['connectors', 'returnPorts', 'selectorPorts', 'sequenceDescription', 'contents', 'literalString', 'opNumber', 'connectionType'].includes(r[2])) }, null, 2));
} finally { await client.close(); }
