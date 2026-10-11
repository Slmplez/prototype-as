import assert from 'node:assert/strict';
import { execFile, execFileSync, spawn } from 'node:child_process';
import { promisify } from 'node:util';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { Bridge, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';

const manifest = join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json');
const instance = JSON.parse(await readFile(manifest, 'utf8'));
assert.notEqual(instance.port, 32503);
assert.equal(resolve(instance.runtime), join(dirname(manifest), 'runtime'));
const directory = join(ROOT, 'experiments/cold-scan-profile', new Date().toISOString().replace(/[:.]/g, '-'));
const inspectRecords = process.env.ASCET_COLD_RECORDS === '1';
const collectBefore = process.env.ASCET_COLD_GC === '1';
const dumpRecords = process.env.ASCET_COLD_DUMP === '1';
assert.ok(!dumpRecords || inspectRecords);
await mkdir(directory, { recursive: true });
let fixture = (await readFile(join(ROOT, 'native-snapshot.st'), 'utf8')).replaceAll('\r\n', '\n');
function change(before: string, after: string) {
  assert.ok(fixture.includes(before), before); fixture = fixture.replace(before, after);
}
change('containerReader |', 'containerReader probeFieldMs probeCcMs probeProcMs probeExternalMs |');
change('| text encoded |', '| text encoded probeBegan |');
change("text := value ifNil: [''].", "text := value ifNil: [''].\n            text size > 1000 ifTrue: [probeBegan := Time millisecondClockValue].");
change(']. out nextPutAll: encoded; nextPut: $|', ']. text size > 1000 ifTrue: [probeFieldMs := probeFieldMs + (Time millisecondClockValue - probeBegan)].\n            out nextPutAll: encoded; nextPut: $|');
change('encodedFields := Dictionary new.', 'probeFieldMs := 0. encodedFields := Dictionary new.');
if (collectBefore) change("        stage := 'directory'.", "        System globalGarbageCollect.\n        stage := 'directory'.");
change('| api |', '| api probeBegan probeModelMs probeArchiveMs probePrefilterMs probeBdeBefore probeSourceMs |');
change("stage := 'load'. oid := key printString.", "probeBegan := Time millisecondClockValue. probeSourceMs := 0. probePrefilterMs := 0. probeFieldMs := 0.\n                stage := 'load'. oid := key printString.");
change("probeFieldMs := 0.\n                stage := 'load'", "probeFieldMs := 0. probeCcMs := 0. probeProcMs := 0. probeExternalMs := 0.\n                stage := 'load'");
change('| cc |', '| cc probeCcBegin probeProcBegin probeExternalBegin |');
change('cc := nil.', 'probeCcBegin := Time millisecondClockValue. cc := nil.');
change('cc ifNil: [cc := entry value getObjectOrUndefined].', 'cc ifNil: [cc := entry value getObjectOrUndefined]. probeCcMs := probeCcMs + (Time millisecondClockValue - probeCcBegin).');
change('                component methods do: [:method |', '                probeProcBegin := Time millisecondClockValue.\n                component methods do: [:method |');
change('                component isCClass ifTrue: [\n                    member :=', '                probeProcMs := probeProcMs + (Time millisecondClockValue - probeProcBegin).\n                probeExternalBegin := Time millisecondClockValue.\n                component isCClass ifTrue: [\n                    member :=');
change("(acceptsSource value: 'external_h') ifTrue: [emit value: 'external_h' value: cc hSource value]\n                ]", "(acceptsSource value: 'external_h') ifTrue: [emit value: 'external_h' value: cc hSource value]\n                ].\n                probeExternalMs := probeExternalMs + (Time millisecondClockValue - probeExternalBegin)");
if (inspectRecords) {
  change('| cc probeCcBegin probeProcBegin probeExternalBegin |',
    '| cc probeCcBegin probeProcBegin probeExternalBegin probeRecord probeRecordBegin probeRecordMs probeRecordInterface probeRecordDecoder probeRawText probeRawHit probeSourceHit |');
  change('probeCcBegin := Time millisecondClockValue. cc := entry value getObjectOrUndefined.', `stage := 'cold record interface ', path.
                probeRecordInterface := entry value dbInterface getInterfaceForProxy: entry value.
                stage := 'cold record read ', path.
                probeRecordBegin := Time millisecondClockValue.
                probeRecord := probeRecordInterface readRecord: entry value.
                probeRecordMs := Time millisecondClockValue - probeRecordBegin.
                probeRecord isError ifTrue: [dbAPI error: 'COLD_RECORD_READ_FAILED'].
                probeRawText := probeRecord asString asLowercase.
                probeRawHit := (probeRawText includesSubstring: 'set') or: [
                    (probeRawText includesSubstring: ('s', (String with: (Character value: 0)), 'e', (String with: (Character value: 0)), 't')) or: [
                    probeRawText includesSubstring: ((String with: (Character value: 0)), 's', (String with: (Character value: 0)), 'e', (String with: (Character value: 0)), 't')]].
                stage := 'cold record decoder ', path.
                probeRecordDecoder := entry value dbInterface linDeLin loadMethodFromRecord: probeRecord.
                stage := 'cold record load ', path.
                probeCcBegin := Time millisecondClockValue. cc := entry value getObjectOrUndefined.`);
  change('probeCcMs := probeCcMs + (Time millisecondClockValue - probeCcBegin).', `probeCcMs := probeCcMs + (Time millisecondClockValue - probeCcBegin).
                probeSourceHit := component methods anySatisfy: [:method | (cc procSourceAt: method aliasName) asLowercase includesSubstring: 'set'].
                component isCClass ifTrue: [probeSourceHit := probeSourceHit or: [
                    ((cc instVarNamed: 'localHSource') notNil and: [cc localHSource asLowercase includesSubstring: 'set']) or: [
                    (cc cSource value asLowercase includesSubstring: 'set') or: [cc hSource value asLowercase includesSubstring: 'set']]]].
                row value: (OrderedCollection new add: '#COLD_RECORD_HIT'; add: path; add: entry value globalIdString;
                    add: probeRawHit printString; add: probeSourceHit printString; add: ''; add: ''; add: ''; add: ''; add: ''; yourself).
                row value: (OrderedCollection new add: '#COLD_RECORD'; add: path; add: entry value globalIdString; add: probeRecordDecoder asString;
                    add: probeRecord size printString; add: probeRecord blobSize printString; add: probeRecordMs printString;
                    add: (Time millisecondClockValue - probeCcBegin) printString; add: entry value className asString; add: variant; yourself).
                ${dumpRecords ? `row value: (OrderedCollection new add: '#COLD_BYTES'; add: path; add: entry value globalIdString;
                    add: probeRecord class blobStart printString; add: probeRecordDecoder asString; add: entry value className asString;
                    add: variant; add: probeRecord size printString; add: (hex value: probeRecord); add: ''; yourself).` : ''}`);
}
change("                    (component isCClass or: [component isASDLClass]) ifTrue: [", `                    probeModelMs := Time millisecondClockValue - probeBegan.
                    probeBegan := Time millisecondClockValue.
                    (component isCClass or: [component isASDLClass]) ifTrue: [`);
change('                    (includeDiagrams and:', `                    probeArchiveMs := Time millisecondClockValue - probeBegan.
                    probeBdeBefore := bdeReadMs.
                    probeBegan := Time millisecondClockValue.
                    (includeDiagrams and:`);
change("spec specSourceInternalOrNil isNil ifTrue: [dbAPI error: 'BDE_SOURCE_UNDEFINED: no saved Diagram source'].", `| probeSourceBegin |
                                    probeSourceBegin := Time millisecondClockValue.
                                    spec specSourceInternalOrNil isNil ifTrue: [dbAPI error: 'BDE_SOURCE_UNDEFINED: no saved Diagram source'].
                                    probeSourceMs := probeSourceMs + (Time millisecondClockValue - probeSourceBegin).`);
change('dbAPI handleExceptionsIn: [@@BDE_PREFILTER@@ value: spec specSourceInternalOrNil value: component value: bdeMatches]',
  `dbAPI handleExceptionsIn: [ | probePrefilterBegin probeDecision |
                                            probePrefilterBegin := Time millisecondClockValue.
                                            probeDecision := @@BDE_PREFILTER@@ value: spec specSourceInternalOrNil value: component value: bdeMatches.
                                            probePrefilterMs := probePrefilterMs + (Time millisecondClockValue - probePrefilterBegin). probeDecision]`);
change('                    ]\n                ]\n            ] ifFail: [:error |', `                    ].
                    row value: (OrderedCollection new add: '#COLD_ARCHIVE'; add: path; add: probeCcMs printString; add: probeProcMs printString;
                        add: probeExternalMs printString; add: ''; add: ''; add: ''; add: ''; add: ''; yourself).
                    row value: (OrderedCollection new add: '#COLD_PROFILE'; add: path; add: probeModelMs printString;
                        add: probeArchiveMs printString; add: (Time millisecondClockValue - probeBegan) printString;
                        add: probePrefilterMs printString; add: probeSourceMs printString;
                        add: (bdeReadMs - probeBdeBefore) printString; add: probeFieldMs printString; add: ''; yourself)
                ]
            ] ifFail: [:error |`);
// Move the extra local into the existing block declaration.
change('| graphRecords sourceId diagramAPI graphMatches readDiagram selectDiagram diagramStarted diagramPhases |',
  '| graphRecords sourceId diagramAPI graphMatches readDiagram selectDiagram diagramStarted diagramPhases probeSourceBegin |');
change('                                    | probeSourceBegin |\n', '');
const source = join(directory, 'profile.st'), binary = join(directory, 'profile.exe');
await writeFile(source, fixture);
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
  '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
  '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
  '/resource:' + source + ',snapshot.st',
  ...['state-source-reader.st,state-reader.st', 'graph-source-reader.st,graph-reader.st',
    'bde-source-reader.st,bde-reader.st', 'bde-read-audit.st,bde-audit.st', 'bde-prefilter.st,bde-prefilter.st',
    'bde-load-factory.st,bde-load-factory.st', 'native-transport.st,native-transport.st',
    'container-source-reader.st,container-source-reader.st', 'saved-container-reader.st,saved-container-reader.st'].map(value => '/resource:' + join(ROOT, value)),
  join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });
const runFile = promisify(execFile);
const report: Record<string, any> = { status: 'running', directory, inspect_records: inspectRecords,
  collect_before: collectBefore, dump_records: dumpRecords,
  boundary: 'Read-only experimental coarse phase clocks on a fresh isolated ASCET. Optional raw-record inspection adds a separate saved-record read before native loading. No deserializer replacement, production instrumentation or saved model writes.' };
const samples: unknown[] = [];
function unpack(payload: string) {
  const fields = payload.split('|'), rows: string[][] = [], costs: Record<string, number> = {}, components: unknown[] = [], archives: unknown[] = [], databaseLoads: unknown[] = [], records: unknown[] = [], recordHits: unknown[] = [], recordBytes: string[][] = [];
  const labels = ['model', 'archives', 'diagrams_and_state', 'prefilter', 'saved_source', 'bde_read', 'source_encode'];
  for (let i = 0; i < fields.length - 1; i += 10) {
    const row = fields.slice(i, i + 10);
    if (row[0] === '#COLD_PROFILE') {
      const values = Object.fromEntries(labels.map((label, index) => [label, Number(row[index + 2])]));
      for (const [key, value] of Object.entries(values)) costs[key] = (costs[key] ?? 0) + value;
      components.push({ path: row[1], ...values });
    } else if (row[0] === '#COLD_ARCHIVE') {
      archives.push({ path: row[1], container_ms: Number(row[2]), methods_ms: Number(row[3]), external_ms: Number(row[4]) });
    } else if (row[0] === '#COLD_RECORD_HIT') {
      recordHits.push({ path: row[1], oid: row[2], raw_hit: row[3] === 'true', source_hit: row[4] === 'true' });
    } else if (row[0] === '#COLD_BYTES') {
      recordBytes.push(row);
    } else if (row[0] === '#COLD_RECORD') {
      records.push({ path: row[1], oid: row[2], decoder: row[3], bytes: Number(row[4]), blob_bytes: Number(row[5]),
        read_ms: Number(row[6]), native_load_ms: Number(row[7]), class_name: row[8], variant: row[9] });
    } else if (row[0] === '#DB_PROFILE') {
      databaseLoads.push({ class_name: row[1], count: Number(row[2]), rebuild_ms: Number(row[3]) });
    } else rows.push(row);
  }
  return { data: decodeResponse({ payload: rows.flat().join('|') + '|' }), costs, components, archives, databaseLoads, records, recordHits, recordBytes };
}
try {
  await runFile('pwsh', ['-NoProfile', '-File', resolve(ROOT, '../multi-instance/stop.ps1'), '-Manifest', manifest], { windowsHide: true, timeout: 60_000 });
  await runFile('pwsh', ['-NoProfile', '-File', resolve(ROOT, '../multi-instance/launch.ps1'), '-Manifest', manifest, '-Background'], { windowsHide: true, timeout: 60_000 });
  const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
  assert.ok(Number.isInteger(identity.pid) && Number.isInteger(instance.port));
  await runFile('pwsh', ['-NoProfile', '-Command', `$deadline = [DateTime]::UtcNow.AddSeconds(30)
    do {
      $listener = Get-NetTCPConnection -State Listen -LocalPort ${instance.port} -ErrorAction SilentlyContinue
      if ($listener.OwningProcess -eq ${identity.pid}) { exit 0 }
      Start-Sleep -Milliseconds 100
    } while ([DateTime]::UtcNow -lt $deadline)
    throw 'Isolated API endpoint did not become ready'`], { windowsHide: true, timeout: 35_000 });
  const host = spawn(join(dirname(dirname(manifest)), 'EndpointHost.exe'), [String(instance.port), join(instance.logs, 'cold-profile-host'), instance.database, String(identity.pid)], { windowsHide: true });
  host.stdin.end('{"id":1,"op":"quit"}\n');
  let errors = '', output = ''; host.stderr.on('data', value => errors += value); host.stdout.on('data', value => output += value);
  const timer = setTimeout(() => host.kill(), 45_000);
  try {
    const code = await new Promise<number | null>((resolve, reject) => { host.once('error', reject); host.once('close', resolve); });
    assert.equal(code, 0, output + errors);
  } finally { clearTimeout(timer); }
  const bridge = new Bridge(90, { command: binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) } });
  try {
    assert.equal((await bridge.request({ mode: 'catalog' })).ascet_pid, identity.pid);
    let control: ReturnType<typeof unpack>['data'] | undefined;
    for (let round = 0; round < 3; round++) {
      const raw = await bridge.request({ mode: 'search_insensitive', needle: 'set', include_diagrams: true });
      const sample = unpack(raw.payload); assert.deepEqual(sample.data.errors, []);
      assert.equal(fingerprint(sample.data), fingerprint(control ?? sample.data)); control ??= sample.data;
      if (dumpRecords && round === 0) {
        const metadata = [];
        for (const row of sample.recordBytes) {
          assert.match(row[2], /^[A-Za-z0-9]+$/); assert.match(row[8], /^[0-9a-f]+$/);
          const bytes = Buffer.from(row[8], 'hex'); assert.equal(bytes.length, Number(row[7]));
          const file = `${row[2]}.bin`; await writeFile(join(directory, file), bytes);
          metadata.push({ path: row[1], oid: row[2], offset: Number(row[3]), decoder: row[4], class_name: row[5], variant: row[6], file });
        }
        await writeFile(join(directory, 'records.json'), JSON.stringify(metadata, null, 2) + '\n');
      }
      samples.push({ round, timings: raw.timings, coverage: sample.data.coverage, costs: sample.costs, components: sample.components,
        archives: sample.archives, databaseLoads: sample.databaseLoads, records: sample.records, recordHits: sample.recordHits });
    }
    const full = unpack((await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true })).payload);
    const expected = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T18-45-19-195Z/before-snapshot.json'), 'utf8')).data;
    assert.equal(fingerprint(full.data), fingerprint(expected)); assert.deepEqual(full.data.diagrams, expected.diagrams);
    report.status = 'passed'; report.pid = identity.pid;
  } finally { await bridge.close(); }
} catch (error) { report.status = 'failed'; report.error = String(error).slice(0, 5000); process.exitCode = 1; }
finally {
  Object.assign(report, { samples });
  await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
  console.log(JSON.stringify({ ...report, samples: samples.map((sample: any) => ({ ...sample, components: undefined, archives: undefined, records: undefined, recordHits: undefined })) }, null, 2));
}
