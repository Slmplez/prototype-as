import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { readFile, writeFile, mkdir } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { JsonLineClient, ROOT, validateNativeResponse } from '../src/bridge.js';

const manifest = join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json');
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.notEqual(instance.port, 32503);
const directory = join(ROOT, 'experiments/native-costs', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const fixture = `[:db :mode :input |
 db handleExceptionsIn: [
  | out report library names query started keys sources ascii highChars loops queries sample compressed |
  out := WriteStream on: String new.
  report := [:name :value | out nextPutAll: name; nextPut: $|; nextPutAll: value printString; nextPut: $|].
  library := db library. names := RBTopFolder itemWithSpecClassNames.
  report value: 'library' value: library class name.
  report value: 'backend' value: library internalLibraryLegacy class name.
  report value: 'class_names' value: names size.
  query := library queryExactForClassNames: names.
  report value: 'query' value: query class name.
  1 to: 3 do: [:round |
   started := Time millisecondClockValue. keys := query search.
   report value: 'plural_ms' value: Time millisecondClockValue - started.
   report value: 'keys' value: keys size.
   started := Time millisecondClockValue. keys := Set new.
   names do: [:name | keys addAll: (library queryExactForClassName: name) search].
   report value: 'singular_ms' value: Time millisecondClockValue - started
  ].
  queries := query instVarNamed: 'oredQueries'.
  report value: 'modified_objects' value: queries first dbInterface getModifiedObjects size.
  started := Time millisecondClockValue.
  1 to: 5 do: [:round | queries do: [:entry | entry searchDatabase]].
  report value: 'query_disk_total_ms' value: Time millisecondClockValue - started.
  started := Time millisecondClockValue.
  1 to: 5 do: [:round | queries do: [:entry | entry searchModifiedObjects]].
  report value: 'query_modified_total_ms' value: Time millisecondClockValue - started.
  sources := Dictionary new.
  keys do: [:key | | component |
   component := key getObjectIfUndefined: [:unused | nil].
   (component notNil and: [component isValidObject and: [component isContainer not]]) ifTrue: [
    (Array with: component code), component handwrittenImplCode values do: [:archive |
    archive external do: [:entry | | cc | cc := entry value getObjectOrUndefined.
     cc isRBDBUndefinedObject ifFalse: [component methods do: [:method |
      | source | source := cc procSourceAt: method aliasName. sources at: source put: source
     ]. component isCClass ifTrue: [
      (cc instVarNamed: 'localHSource') ifNotNil: [:header | sources at: header put: header].
      sources at: cc cSource value put: cc cSource value.
      sources at: cc hSource value put: cc hSource value
     ]]
    ]]
   ]
  ].
  report value: 'sources' value: sources size.
  report value: 'characters' value: (sources keys inject: 0 into: [:sum :text | sum + text size]).
  highChars := (127 to: 255) collect: [:value | Character value: value]. loops := 10.
  started := Time millisecondClockValue.
  1 to: loops do: [:round | sources keys do: [:text | text asLowercase]].
  report value: 'lowercase_total_ms' value: Time millisecondClockValue - started.
  started := Time millisecondClockValue.
  1 to: loops do: [:round | sources keys do: [:text | text anySatisfy: [:ch | ch asInteger > 126]]].
  report value: 'ascii_scan_total_ms' value: Time millisecondClockValue - started.
  started := Time millisecondClockValue.
  1 to: loops do: [:round | sources keys do: [:text | (text copyReplaceAll: '%' with: '%37;') copyReplaceAll: '|' with: '%124;']].
  report value: 'replace_total_ms' value: Time millisecondClockValue - started.
  sample := WriteStream on: String new. sources keys do: [:text | sample nextPutAll: text]. sample := sample contents.
  started := Time millisecondClockValue. compressed := EmCompressor new compressString: sample.
  report value: 'compress_ms' value: Time millisecondClockValue - started.
  report value: 'compressed_size' value: compressed size.
  started := Time millisecondClockValue.
  report value: 'compress_roundtrip' value: (EmCompressor new decompressString: compressed) = sample.
  report value: 'decompress_ms' value: Time millisecondClockValue - started.
  out contents
 ] ifFail: [:error | 'PROBE_ERROR: native costs ', error printString, ' ', error arguments printString]
]`;
const source = join(directory, 'probe.st'), binary = join(directory, 'probe.exe');
await writeFile(source, fixture);
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
  '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
  '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
  '/resource:' + source + ',snapshot.st', join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });
const client = new JsonLineClient({ command: binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) }, timeoutMs: 90_000 });
try {
  const response = validateNativeResponse(await client.request({ mode: 'snapshot' }));
  assert.equal(response.ascet_pid, identity.pid);
  await writeFile(join(directory, 'report.json'), JSON.stringify(response, null, 2));
  console.log(JSON.stringify({ directory, ...response }, null, 2));
} finally { await client.close(); }
