import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { Bridge, ROOT } from '../src/bridge.js';

const manifest = join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json');
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.equal(resolve(instance.runtime), join(dirname(manifest), 'runtime'));
assert.notEqual(instance.port, 32503); assert.equal(instance.port, identity.port);
const directory = join(ROOT, 'experiments/saved-reader-boundaries', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const reader = await readFile(join(ROOT, 'saved-container-reader.st'), 'utf8');
const tableEnd = reader.indexOf(" rrPhase value: 'root pointer'."); assert.ok(tableEnd > 0);
const tableReader = reader.slice(0, tableEnd) + `
 rrResult := Dictionary new. rrResult at: #record put: rrRecord; at: #word put: rrWord;
  at: #lookup put: rrLookup; at: #string put: rrString; at: #pointers put: rrPointers; at: #root put: rrRootBase.
 rrResult ]`;
const diagramReader = (await readFile(join(ROOT, 'scripts/saved-diagram-reader.st'), 'utf8'))
  .replace('@@SAVED_TABLE_READER@@', `(${tableReader})`);
const source = String.raw`[:db :mode :input | | stage | stage := 'begin'. db handleExceptionsIn: [
 | out check reject containers diagrams recordReader diagramReader firstRecord firstOffset assertions tables lookup word pointers fields root dictionary associations assoc aliasObj textObj patchChecksum mutate header sourceCopies |
 out := WriteStream on: String new. containers := 0. diagrams := 0. assertions := 0.
 recordReader := (${reader}). diagramReader := (${diagramReader}).
 check := [:condition :name | condition ifFalse: [db error: 'SAVED_READER_ASSERTION ', name].
  assertions := assertions + 1. out nextPutAll: 'PASS|'; nextPutAll: name; nextPut: $|].
 reject := [:bytes :offset :name :expected |
  | failed | failed := false.
  db handleExceptionsIn: [recordReader valueWithArguments: (Array with: db with: bytes with: offset with: [:phase | stage := name, '/', phase])]
   ifFail: [:error | failed := error arguments printString includesSubstring: expected].
  check value: failed value: name
 ].
 (db library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search do: [:key | | component |
  component := key getObjectIfUndefined: [:unused | nil].
  (component notNil and: [component isValidObject and: [component isContainer not]]) ifTrue: [
   ((component isCClass or: [component isASDLClass]) or: [component isSmClass]) ifTrue: [
   (Array with: component code), component handwrittenImplCode values do: [:archive | archive external do: [:entry |
    | record before saved cached | record := entry value dbInterface readRecord: entry value.
    record isError ifFalse: [
     before := record asByteArray copy. stage := 'container ', entry value printString.
     saved := recordReader valueWithArguments: (Array with: db with: record with: record class blobStart with: [:phase | stage := phase]).
     check value: (record asByteArray = before) value: 'container input unchanged'.
     cached := entry value getObjectOrUndefined.
     check value: (entry value getCachedDBObject == cached) value: 'cached Container identity'.
     containers := containers + 1.
     (firstRecord isNil and: [(saved at: #procedures) isEmpty not]) ifTrue: [firstRecord := before. firstOffset := record class blobStart]
    ]]]].
   (component publicSpecifications, component privateSpecifications) asSet do: [:spec | spec isBdSpecification ifTrue: [
    | record before candidate | record := spec sourceKey dbInterface readRecord: spec sourceKey.
    record isError ifFalse: [
     before := record asByteArray copy. stage := 'Diagram ', spec specificationName.
     candidate := diagramReader valueWithArguments: (Array with: db with: record with: record class blobStart with: [:phase | stage := phase]).
     check value: (candidate class == SGTopGraphicsBlockDB) value: 'Diagram exact root'.
     check value: (record asByteArray = before) value: 'Diagram input unchanged'. diagrams := diagrams + 1
    ]]]
  ]].
 check value: (containers = 214 and: [diagrams = 71]) value: 'corpus coverage ', containers printString, '/', diagrams printString.
 tables := (${tableReader}) valueWithArguments: (Array with: db with: firstRecord with: firstOffset with: [:phase | stage := phase]).
 lookup := tables at: #lookup. word := tables at: #word. pointers := tables at: #pointers.
 root := lookup value: ((pointers value: (tables at: #root) value: 33) first).
 dictionary := lookup value: (word value: (root at: 4) + 32).
 associations := pointers value: (word value: (dictionary at: 4) + 4) value: 7.
 assoc := lookup value: (associations detect: [:address | address ~= 14]).
 aliasObj := lookup value: (word value: (assoc at: 4)). textObj := lookup value: (word value: (assoc at: 4) + 4).
 patchChecksum := [:bytes | | segment length begin end last |
  segment := firstOffset + 21. last := false.
  [last not] whileTrue: [length := bytes eswIntelLongAt: segment + 4. begin := segment + 20. end := begin + length - 1.
   bytes eswIntelLongAt: segment + 8 put: (bytes copyFrom: begin to: end) crcValue.
   last := (bytes at: segment + 1) = 1. segment := end + 1]. bytes
 ].
 mutate := [:position :value :name :expected | | bytes | bytes := firstRecord copy.
  bytes eswIntelLongAt: position put: value. patchChecksum value: bytes.
  reject valueWithArguments: (Array with: bytes with: firstOffset with: name with: expected)
 ].
 reject valueWithArguments: (Array with: firstRecord with: -1 with: 'negative offset' with: 'record bounds').
 reject valueWithArguments: (Array with: firstRecord with: firstRecord size with: 'offset past end' with: 'record bounds').
 reject valueWithArguments: (Array with: (firstRecord copyFrom: 1 to: firstOffset + 30) with: firstOffset with: 'truncated header' with: 'record bounds').
 header := firstRecord copy. header at: firstOffset + 1 put: 1.
 reject valueWithArguments: (Array with: header with: firstOffset with: 'wrong version' with: 'swapper header').
 header := firstRecord copy. header at: firstOffset + 21 put: 0.
 reject valueWithArguments: (Array with: header with: firstOffset with: 'wrong segment kind' with: 'segment header').
 header := firstRecord copy. header at: firstOffset + 22 put: 2.
 reject valueWithArguments: (Array with: header with: firstOffset with: 'invalid final flag' with: 'segment header').
 header := firstRecord copy. header eswIntelLongAt: firstOffset + 25 put: 4294967292.
 reject valueWithArguments: (Array with: header with: firstOffset with: 'overflow segment length' with: 'segment bounds').
 header := firstRecord copy. header at: firstOffset + 42 put: ((header at: firstOffset + 42) bitXor: 1).
 reject valueWithArguments: (Array with: header with: firstOffset with: 'CRC corruption' with: 'segment checksum').
 header := ByteArray new: firstRecord size + 1. header replaceFrom: 1 to: firstRecord size with: firstRecord startingAt: 1.
 reject valueWithArguments: (Array with: header with: firstOffset with: 'trailing bytes' with: 'trailing record bytes').
 mutate valueWithArguments: (Array with: firstOffset + 45 with: 1 with: 'segment prefix' with: 'segment prefix').
 mutate valueWithArguments: (Array with: (root at: 4) - 8 with: 9 with: 'invalid root format' with: 'instance format').
 mutate valueWithArguments: (Array with: (root at: 4) + 32 with: 4294967292 with: 'missing Dictionary address' with: 'missing object').
 mutate valueWithArguments: (Array with: (root at: 4) + 28 with: 5 with: 'unknown encryption' with: 'encryption version').
 mutate valueWithArguments: (Array with: (aliasObj at: 4) - 4 with: 19 with: 'alias length' with: 'Method alias').
 mutate valueWithArguments: (Array with: (textObj at: 4) - 12 with: 23 with: 'unknown source class' with: 'string class').
 mutate valueWithArguments: (Array with: (dictionary at: 4) with: 0 with: 'invalid Dictionary count' with: 'dictionary size').
 mutate valueWithArguments: (Array with: (dictionary at: 4) with: ((word value: (dictionary at: 4)) + 2) with: 'inconsistent Dictionary count' with: 'dictionary entry count').
 out nextPutAll: 'COUNTS|'; nextPutAll: assertions printString; nextPut: $|; nextPutAll: containers printString;
  nextPut: $|; nextPutAll: diagrams printString; nextPut: $|. out contents
 ] ifFail: [:error | 'PROBE_ERROR: ', stage, ' ', error printString, ' ', error arguments printString]]`;
const file = join(directory, 'verify.st'), binary = join(directory, 'verify.exe');
await writeFile(file, source);
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
  '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
  '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
  '/resource:' + file + ',snapshot.st', join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });
const bridge = new Bridge(90, { command: binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) } });
const report: Record<string, unknown> = { status: 'running', directory,
  boundary: 'Read-only native parser tests on copied saved records. No model edits, cache writes or production reader replacement.' };
try {
  const response = await bridge.request({ mode: 'snapshot' }); assert.equal(response.ascet_pid, identity.pid);
  report.status = 'passed'; report.payload = response.payload;
  console.log(JSON.stringify({ ...report, payload: response.payload.slice(response.payload.lastIndexOf('COUNTS|')) }, null, 2));
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; console.log(JSON.stringify(report, null, 2)); }
finally { await bridge.close(); await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n'); }
