import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { Bridge, ROOT } from '../src/bridge.js';

const manifest = join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json');
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.equal(resolve(instance.runtime), join(dirname(manifest), 'runtime'));
assert.equal(identity.port, instance.port); assert.notEqual(instance.port, 32503);
const directory = join(ROOT, 'experiments/saved-diagram-records', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const source = String.raw`[:db :mode :input | | stage | stage := 'begin'. db handleExceptionsIn: [
 | out hex row initial | out := WriteStream on: String new.
 hex := [:bytes | | stream digits | stream := WriteStream on: String new. digits := '0123456789abcdef'.
  bytes do: [:b | stream nextPut: (digits at: (b // 16) + 1); nextPut: (digits at: (b \\ 16) + 1)]. stream contents].
 row := [:values | values do: [:v | out nextPutAll: v; nextPut: $|]].
 stage := 'classes'. initial := ObjectSwapper initialGroupOfEncodedClasses.
 1 to: initial size do: [:i | row value: (Array with: 'CLASS' with: i printString with: (initial at: i) name asString with: '')].
 stage := 'directory'.
 (db library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search do: [:key | | c |
  c := key getObjectIfUndefined: [:unused | nil].
  (c notNil and: [c isValidObject and: [c isContainer not]]) ifTrue: [
   (c publicSpecifications, c privateSpecifications) asSet do: [:spec |
    spec isBdSpecification ifTrue: [| record proxy | proxy := spec sourceKey. stage := 'record ', proxy printString.
     record := proxy dbInterface readRecord: proxy.
     record isError ifTrue: [db error: 'DIAGRAM_RECORD_READ_FAILED'].
     row value: (Array with: 'RECORD' with: proxy globalIdString with: record class blobStart printString with: (hex value: record asByteArray))
    ]]]]. out contents
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
  const response = await bridge.request({ mode: 'snapshot' });
  assert.equal(response.ascet_pid, identity.pid); assert.ok(!response.payload.startsWith('PROBE_ERROR'), response.payload);
  const fields = response.payload.split('|'), classes: unknown[] = [], records: unknown[] = [];
  for (let i = 0; i < fields.length - 1; i += 4) {
    if (fields[i] === 'CLASS') classes.push({ id: Number(fields[i + 1]) * 2 + 1, name: fields[i + 2] });
    else {
      assert.equal(fields[i], 'RECORD'); assert.match(fields[i + 1], /^[A-Za-z0-9]+$/);
      const filename = `${fields[i + 1]}.bin`;
      await writeFile(join(directory, filename), Buffer.from(fields[i + 3], 'hex'));
      records.push({ oid: fields[i + 1], offset: Number(fields[i + 2]), file: filename });
    }
  }
  await writeFile(join(directory, 'records.json'), JSON.stringify({ classes, records }, null, 2) + '\n');
  console.log(JSON.stringify({ directory, classes, records: records.length, timings: response.timings }, null, 2));
} finally { await bridge.close(); }
