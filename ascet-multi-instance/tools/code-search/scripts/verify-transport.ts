import assert from 'node:assert/strict';
import { mkdir, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { performance } from 'node:perf_hooks';
import { ROOT, JsonLineClient, validateNativeResponse } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';

const directory = join(ROOT, 'experiments/transport', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const client = new JsonLineClient({ command: join(ROOT, 'CodeSearchBridge.exe'), timeoutMs: 90000 });
const report: Record<string, unknown> = { status: 'running', directory };
try {
 const samples = [];
 for (const query of ['set', 'return']) for (let round = 0; round < 3; round++) {
  let expected: string | undefined;
  for (const compressed of round % 2 ? [true, false] : [false, true]) {
   const start = performance.now();
   const raw = await client.request({ mode: 'search_many', needle: query, include_diagrams: true,
    ...(compressed ? { transport_encoding: 'gzip-base64' } : {}) }) as any;
   const decoded = decodeResponse(validateNativeResponse(raw)); assert.deepEqual(decoded.errors, []);
   const digest = fingerprint(decoded); if (expected) assert.equal(digest, expected); else expected = digest;
   if (compressed) assert.equal(raw.payload_encoding, 'gzip-base64');
   samples.push({ query, round, compressed, elapsed_ms: performance.now() - start, wire_bytes: Buffer.byteLength(JSON.stringify(raw)), timings: raw.timings });
  }
 }
 Object.assign(report, { status: 'passed', samples, source_equivalent: true });
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally { await client.close(); await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2)); console.log(JSON.stringify(report, null, 2)); }
