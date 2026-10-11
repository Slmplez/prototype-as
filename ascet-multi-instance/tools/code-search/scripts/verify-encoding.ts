import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { ROOT, JsonLineClient, validateNativeResponse } from '../src/bridge.js';

const directory = join(ROOT, 'experiments/encoding', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const native = await readFile(join(ROOT, 'native-snapshot.st'), 'utf8');
const field = native.slice(native.indexOf('field := [:value |'), native.indexOf('row := [:values |'));
const script = `[:db :mode :input | db handleExceptionsIn: [
 | field encodedFields out cases old expected actual failures chars |
 encodedFields := Dictionary new. failures := 0.
 ${field}
 old := [:text | | stream | stream := WriteStream on: String new.
  text do: [:ch | | n | n := ch asInteger.
   ((n > 126) or: [(n = 37) or: [n = 124]]) ifTrue: [stream nextPut: $%; nextPutAll: n printString; nextPut: $;] ifFalse: [stream nextPut: ch]]. stream contents, '|'].
 cases := OrderedCollection new add: ''; add: 'return a | b % 37;'; add: '%37;|%124;'; add: '%%|||'; yourself.
 chars := WriteStream on: DBString new.
 #(0 9 10 13 37 65 124 126 127 233 20013 25991 65535) do: [:n | chars nextPut: (Character value: n)].
 cases add: chars contents.
 cases add: ((String new: 300000) atAllPut: $r; yourself).
 cases do: [:text | out := WriteStream on: String new. field value: text. expected := old value: text. actual := out contents.
  actual = expected ifFalse: [failures := failures + 1]].
 'CASES=', cases size printString, ' FAILURES=', failures printString
 ] ifFail: [:error | 'PROBE_ERROR: ', error messageText]]`;
const source = join(directory, 'oracle.st'), binary = join(directory, 'oracle.exe');
await writeFile(source, script);
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), ['/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll', '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', '/out:' + binary, '/resource:' + source + ',snapshot.st', join(ROOT, 'CodeSearchBridge.cs')], { windowsHide: true });
const client = new JsonLineClient({ command: binary, timeoutMs: 90000 });
try {
 const response = validateNativeResponse(await client.request({ mode: 'snapshot' }));
 await writeFile(join(directory, 'report.json'), JSON.stringify(response, null, 2));
 assert.equal(response.payload, 'CASES=6 FAILURES=0');
 console.log(JSON.stringify({ status: 'passed', directory, result: response.payload }));
} finally { await client.close(); }
