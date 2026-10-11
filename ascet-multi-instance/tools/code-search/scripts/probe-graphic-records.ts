import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { Bridge, ROOT } from '../src/bridge.js';

const manifest = join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json');
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.equal(resolve(instance.runtime), join(dirname(manifest), 'runtime'));
assert.notEqual(instance.port, 32503);
const directory = join(ROOT, 'experiments/graphic-records', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const source = String.raw`[:api :mode :input | | stage | stage := 'begin'. api handleExceptionsIn: [
 | out hex | out := WriteStream on: String new.
 hex := [:bytes | | stream digits | stream := WriteStream on: String new. digits := '0123456789abcdef'.
  bytes do: [:b | stream nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)]. stream contents].
 (api library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search do: [:key | | c proxy record native |
  c := key getObjectIfUndefined: [:unused | nil].
  (c notNil and: [c isValidObject and: [c isKindOf: SGItemWithSpec]]) ifTrue: [
   stage := 'key ', c class name asString.
   proxy := c graphicRepresentationKey.
   proxy ifNotNil: [
    stage := 'record ', proxy printString. record := proxy dbInterface readRecord: proxy.
    record isError ifFalse: [stage := 'native'. native := proxy getObjectOrUndefined. stage := 'contents ', native class name asString.
     out nextPutAll: proxy globalIdString; nextPut: $|; nextPutAll: native class name asString; nextPut: $|;
      nextPutAll: native contents class name asString; nextPut: $|;
      nextPutAll: record class blobStart printString; nextPut: $|; nextPutAll: (hex value: record asByteArray); nextPut: $|
    ]
   ]
  ]
 ]. out contents
] ifFail: [:error | 'PROBE_ERROR: ', stage, ' ', error printString, ' ', error arguments printString]]`;
const file = join(directory, 'probe.st'), binary = join(directory, 'probe.exe');
await writeFile(file, source);
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
  '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
  '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
  '/resource:' + file + ',snapshot.st', join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });
const bridge = new Bridge(90, { command: binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) } });
try {
  const response = await bridge.request({ mode: 'snapshot' }); assert.equal(response.ascet_pid, identity.pid);
  const fields = response.payload.split('|'), records = [];
  for (let i = 0; i < fields.length - 1; i += 5) {
    assert.match(fields[i], /^[A-Za-z0-9]+$/); const file = fields[i] + '.bin';
    await writeFile(join(directory, file), Buffer.from(fields[i + 4], 'hex'));
    records.push({ oid: fields[i], class: fields[i + 1], contents: fields[i + 2], offset: Number(fields[i + 3]), file });
  }
  await writeFile(join(directory, 'records.json'), JSON.stringify(records, null, 2));
  console.log(JSON.stringify({ directory, count: records.length, classes: [...new Set(records.map(r => r.class))],
    contents: [...new Set(records.map(r => r.contents))] }, null, 2));
} finally { await bridge.close(); }
