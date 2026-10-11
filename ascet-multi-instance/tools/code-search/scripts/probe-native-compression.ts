import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { inflateSync, inflateRawSync, unzipSync } from 'node:zlib';
import { JsonLineClient, ROOT, validateNativeResponse } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';

const manifest = join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json');
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.notEqual(instance.port, 32503);
const directory = join(ROOT, 'experiments/native-compression', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const native = await readFile(join(ROOT, 'native-snapshot.st'), 'utf8');
const zlib = process.env.ASCET_NATIVE_COMPRESSION === 'zlib';
const compression = zlib ? `
 zipStage := 'library'. zipLibrary := 'zlib1'.
 zipStage := 'compress binding'.
 zipCompress := PlatformFunction callingConvention: 'cdecl' function: 'compress2' library: zipLibrary
  parameterTypes: #('pointer' 'pointer' 'pointer' 'uint32' 'int32') returnType: 'int32'.
 zipStage := 'bound binding'. zipBound := PlatformFunction callingConvention: 'cdecl' function: 'compressBound' library: zipLibrary
  parameterTypes: #('uint32') returnType: 'uint32'.
 zipStage := 'bound call'. zipCapacity := zipBound callWith: zipPayload size.
 zipBuffer := nil. zipSource := nil. zipAscii := nil.
 [zipBuffer := EtasOSByteArray callocStruct: zipCapacity.
 zipSource := EtasOSByteArray callocStruct: zipPayload size.
 zipPayload memcpyFrom: 0 to: zipPayload size - 1 into: zipSource startingAt: 0.
 zipStage := 'size buffer'. zipSize := ByteArray new: 4. zipSize uint32At: 0 put: zipCapacity.
 zipStarted := Time millisecondClockValue.
 zipStage := 'compress call'. zipResult := zipCompress callWith: zipBuffer with: zipSize with: zipSource with: zipPayload size with: 1.
 zipElapsed := Time millisecondClockValue - zipStarted.
 zipResult = 0 ifFalse: [zipDb error: 'ZLIB_STATUS ', zipResult printString].
 zipStage := 'compressed copy'. zipCompressed := ByteArray new: (zipSize uint32At: 0).
 zipBuffer memcpyFrom: 0 to: zipCompressed size - 1 into: zipCompressed startingAt: 0.
 zipStage := 'base64 binding'. zipEncode := PlatformFunction callingConvention: 'C' function: 'CryptBinaryToStringA' library: 'crypt32.dll'
  parameterTypes: #('pointer' 'uint32' 'uint32' 'pointer' 'pointer') returnType: 'bool'.
 zipAscii := EtasOSByteArray callocStruct: (zipCompressed size + 2) // 3 * 4 + 1.
 zipSize uint32At: 0 put: (zipCompressed size + 2) // 3 * 4 + 1.
 zipStage := 'base64 call'. (zipEncode callWith: zipBuffer with: zipCompressed size with: 1073741825 with: zipAscii with: zipSize)
  ifFalse: [zipDb error: 'BASE64_ENCODING_FAILED'].
 zipText := String new: (zipSize uint32At: 0).
 zipAscii memcpyFrom: 0 to: zipText size - 1 into: zipText startingAt: 0.
 ] ensure: [zipSource notNil ifTrue: [zipSource free]. zipBuffer notNil ifTrue: [zipBuffer free]. zipAscii notNil ifTrue: [zipAscii free]].
 ` : `zipCompressor := RBLzssDLL32 new. zipStarted := Time millisecondClockValue.
 zipCompressed := zipCompressor zipIntoMemory: zipPayload. zipElapsed := Time millisecondClockValue - zipStarted.
 zipDecoded := zipCompressor unzipFromMemory: zipCompressed.
 zipDecoded = zipPayload asByteArray ifFalse: [zipDb error: 'COMPRESSION_ROUNDTRIP_FAILED'].`;
const source = `[:zipDb :zipMode :zipInput | | zipStage | zipStage := 'read'. zipDb handleExceptionsIn: [
 | zipNative zipPayload zipStarted zipCompressed zipCompressor zipDigits zipDecoded zipElapsed zipStream zipLibrary zipCompress zipBound zipBuffer zipSize zipResult zipSource zipCapacity zipAscii zipEncode zipText |
 zipNative := ${native}.
 zipPayload := zipNative value: zipDb value: zipMode value: zipInput.
 ${compression}
 ${zlib ? '' : `zipDigits := '0123456789abcdef'. zipStream := WriteStream on: (String new: zipCompressed size * 2).
 zipCompressed do: [:zipByte | zipStream nextPut: (zipDigits at: zipByte // 16 + 1); nextPut: (zipDigits at: zipByte \\\\ 16 + 1)].
 zipText := zipStream contents.`}
 zipElapsed printString, '|', zipPayload size printString, '|', zipText
 ] ifFail: [:zipError | 'PROBE_ERROR: native compression ', zipStage, ' ', zipError class name, ' ', zipError messageText, ' ', zipError arguments printString]]`;
const file = join(directory, 'probe.st'), binary = join(directory, 'probe.exe');
await writeFile(file, source);
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
  '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
  '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
  '/resource:' + file + ',snapshot.st',
  ...['bde-source-reader.st,bde-reader.st', 'bde-load-factory.st,bde-load-factory.st', 'state-source-reader.st,state-reader.st',
    'graph-source-reader.st,graph-reader.st', 'bde-read-audit.st,bde-audit.st', 'bde-prefilter.st,bde-prefilter.st'].map(s => '/resource:' + join(ROOT, s)), join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });
const client = new JsonLineClient({ command: binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) }, timeoutMs: 30_000 });
const report: Record<string, unknown> = { status: 'running', directory };
const samples: Record<string, unknown>[] = [];
try {
  const raw = validateNativeResponse(await client.request({ mode: 'snapshot', include_diagrams: true }));
  assert.equal(raw.ascet_pid, identity.pid);
  await writeFile(join(directory, 'raw.json'), JSON.stringify(raw));
  const [ms, length, hex] = raw.payload.split('|');
  const bytes = Buffer.from(hex, zlib ? 'base64' : 'hex');
  Object.assign(report, { compression_ms: Number(ms), length: Number(length), bytes: bytes.length, prefix: bytes.subarray(0, 32).toString('hex') });
  let decoded: string | undefined;
  const zipOffset = bytes.subarray(5, 9).toString('hex') === '504b0304' ? 35 + bytes.readUInt16LE(31) + bytes.readUInt16LE(33) : 0;
  for (const offset of [0, 5, 9, 4, zipOffset]) for (const [name, decompress] of [['inflate', inflateSync], ['raw', inflateRawSync], ['unzip', unzipSync]] as const) {
    try {
      const text = decompress(bytes.subarray(offset), { maxOutputLength: 16 * 1024 * 1024 }).toString('ascii');
      if (text.length === Number(length) && text.startsWith('#BDE_ENABLED|1|')) { decoded = text; report.decoder = { name, offset }; }
    } catch { /* Try the next standard container. */ }
  }
  assert.ok(decoded, 'Native roundtrip passed, but no standard Node decompressor matched');
  const data = decodeResponse({ payload: decoded }); assert.deepEqual(data.errors, []);
  const control = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T16-42-30-875Z/before-snapshot.json'), 'utf8')).data;
  assert.equal(fingerprint(data), fingerprint(control)); assert.deepEqual(data.diagrams, control.diagrams);
  await client.close();
  for (let round = 0; round < 6; round++) {
    for (const phase of round % 2 ? ['compressed', 'plain'] : ['plain', 'compressed']) {
      const reader = new JsonLineClient({ command: phase === 'plain' ? join(ROOT, 'CodeSearchBridge.exe') : binary,
        env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) }, timeoutMs: 30_000 });
      try {
        for (let i = -1; i < 5; i++) {
          const result = validateNativeResponse(await reader.request({ mode: 'search_insensitive', needle: 'set', include_diagrams: true }));
          assert.equal(result.ascet_pid, identity.pid);
          let plain = result.payload;
          if (phase === 'compressed') {
            const fields = plain.split('|');
            assert.ok(zlib, 'Timing comparison uses the standard zlib container');
            plain = inflateSync(Buffer.from(fields[2], 'base64')).toString('ascii');
            assert.equal(plain.length, Number(fields[1]));
          }
          const found = decodeResponse({ payload: plain }); assert.deepEqual(found.errors, []);
          if (i >= 0) samples.push({ round, phase, timings: result.timings, payload_chars: result.payload.length });
        }
      } finally { await reader.close(); }
    }
  }
  report.samples = samples;
  report.metrics = Object.fromEntries(['plain', 'compressed'].map(phase => {
    const times = samples.filter(s => s.phase === phase).map(s => (s.timings as Record<string, number>).native_read_transport_ms).sort((a, b) => a - b);
    return [phase, { count: times.length, median_ms: times[Math.floor(times.length / 2)], max_ms: times.at(-1) }];
  }));
  report.status = 'passed';
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally { await client.close(); await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2)); console.log(JSON.stringify({ ...report, samples: undefined }, null, 2)); }
