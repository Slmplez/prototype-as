/** Run through verify-paging.ps1. Cold fields are reset only in detached source copies. */
import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { Bridge, JsonLineClient, ROOT, validateNativeResponse } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';

const directory = join(ROOT, 'experiments/cold-read', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const report: Record<string, any> = { status: 'running', directory, started_utc: new Date().toISOString() };
const save = (name: string, value: unknown) => writeFile(join(directory, name + '.json'), JSON.stringify(value, null, 2) + '\n');
let client: JsonLineClient | undefined;
async function snapshot(name: string) {
  const bridge = new Bridge(90);
  try {
    const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
    const decoded = decodeResponse(raw); await save(name, { raw, decoded });
    assert.deepEqual(decoded.errors, []); return { raw, decoded };
  } finally { await bridge.close(); }
}
try {
  const before = await snapshot('before');
  report.database = before.raw.database; report.ascet_pid = before.raw.ascet_pid;
  const audit = await readFile(join(ROOT, 'bde-read-audit.st'), 'utf8');
  const sourceAudit = audit.replace(':auditSpec', ':auditSource').replaceAll('auditSpec specSourceInternalOrNil', 'auditSource');
  // Independent existing checkpoint copier retains every field. Production uses its own copier.
  const copyFactory = audit.slice(0, audit.indexOf(' auditBefore :=')) + ' copySource\n]';
  // Frozen pre-fix reader is a regression control, never the production implementation.
  const legacy = await readFile(join(ROOT, 'test/fixtures/legacy-bde-source-reader.st'), 'utf8');
  const fixture = `[:coldDb :coldMode :coldInput |
    coldDb handleExceptionsIn: [
      | out row field coldReader coldOldReader coldAudit coldCopy coldReset hex components diagrams cases originalCases rejectCases |
      out := WriteStream on: String new. components := 0. diagrams := 0. cases := 0. originalCases := 0. rejectCases := 0.
      field := [:value | value do: [:ch | | n | n := ch asInteger.
        (n > 126 or: [n = 37 or: [n = 124]]) ifTrue: [out nextPut: $%; nextPutAll: n printString; nextPut: $;] ifFalse: [out nextPut: ch]]. out nextPut: $|].
      row := [:label :values | field value: label. values do: [:v | field value: v]. values size + 1 to: 10 do: [:i | field value: '']].
      coldReader := @@BDE_READER@@. coldOldReader := ${legacy}.
      coldAudit := ${sourceAudit}.
      coldCopy := (${copyFactory} value: nil value: nil value: coldDb).
      hex := [:bytes | | stream digits | stream := WriteStream on: String new. digits := '0123456789abcdef'.
        bytes do: [:b | stream nextPut: (digits at: b // 16 + 1); nextPut: (digits at: b \\ 16 + 1)]. stream contents].
      coldReset := [:source |
        | seen visit | seen := IdentitySet new.
        visit := [:v |
          ((v notNil and: [(v isNumber or: [v isString or: [v isSymbol or: [v == true or: [v == false]]]]) not]) and: [(seen includes: v) not]) ifTrue: [
            seen add: v.
            (v isKindOf: SGGraphicObjectsDB) ifTrue: [
              (v class allInstVarNames includes: 'attributedViewNames') ifTrue: [v instVarNamed: 'attributedViewNames' put: nil].
              (v isKindOf: SGCodeGODB) ifTrue: [v codeGOExtensions at: 3 put: nil].
              1 to: v class instSize do: [:i | visit value: (v instVarAt: i)]
            ] ifFalse: [((v isKindOf: Array) or: [v isKindOf: OrderedCollection]) ifTrue: [v do: [:item | visit value: item]]
              ifFalse: [(v isKindOf: Dictionary) ifTrue: [v keysAndValuesDo: [:key :value | visit value: key. visit value: value]]]]
          ]
        ].
        source dbObject: nil. visit value: source. source
      ].
      #('legacy' 'fixed' 'repeat') do: [:label | row value: label value: #('#BDE_ENABLED' '1')].
      (coldDb library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search do: [:key |
        | component oid path |
        component := key getObjectIfUndefined: [:unused | nil].
        (component notNil and: [component isValidObject and: [component isContainer not]]) ifTrue: [
          components := components + 1. oid := key globalIdString. path := component getAPIHandle getFolderPathName.
          #('legacy' 'fixed' 'repeat') do: [:label | row value: label value: (Array with: '#COMPONENT' with: oid with: path with: '' with: '' with: '' with: '' with: component class name asString)].
          component specifications do: [:spec | spec isBdSpecification ifTrue: [
            | stored sourceID oldCold fixedCold mutated mutationMessage emitRecords oldRecords newRecords repeatRecords changedDefaults rejection |
            diagrams := diagrams + 1. stored := spec specSourceInternalOrNil. sourceID := spec sourceKey globalIdString.
            emitRecords := [:label :records |
              records add: (Array with: '#BDE_END' with: records size printString with: '' with: '' with: '' with: '' with: '' with: '').
              records do: [:r | | values | values := OrderedCollection new add: r first; add: oid; add: sourceID; yourself.
                2 to: r size do: [:i | values add: (r at: i)]. row value: label value: values]
            ].
            coldAudit value: stored value: [
              oldCold := coldReset value: (coldCopy value: stored). fixedCold := coldReset value: (coldCopy value: stored).
              mutated := false. mutationMessage := ''. oldRecords := OrderedCollection new.
              coldDb handleExceptionsIn: [coldAudit value: oldCold value: [
                | api hierarchy | api := spec getAPIHandle.
                "Same storage-to-GO conversion used by legacy initTopGraphicalHierarchy, with a cold detached input."
                hierarchy := component loadSourceForGraphicsDB: oldCold idTableBuilder: SGIdentifierTableBuilder createWithNewTable specification: spec.
                hierarchy controller: component. api topGraphicalHierarchy: hierarchy. api initGraphicalObjectServer.
                coldOldReader valueWithArguments: (Array with: api with: component with: spec with: hex with: [:r | oldRecords add: r] with: [true])
              ] value: coldDb] ifFail: [:error | mutated := true. mutationMessage := error arguments printString].
              (mutated and: [(mutationMessage includesSubstring: 'BDE_READ_CHANGED_SOURCE') not]) ifTrue: [coldDb error: 'Unexpected legacy failure ', mutationMessage].
              newRecords := OrderedCollection new. repeatRecords := OrderedCollection new.
              coldAudit value: fixedCold value: [coldReader valueWithArguments: (Array with: spec getAPIHandle with: component with: spec with: hex with: [:r | newRecords add: r] with: [true] with: fixedCold)] value: coldDb.
              coldAudit value: fixedCold value: [coldReader valueWithArguments: (Array with: spec getAPIHandle with: component with: spec with: hex with: [:r | repeatRecords add: r] with: [true] with: fixedCold)] value: coldDb.
              cases := cases + 2.
              "A new, unsupported mutable field must fail before conversion, with no live-reader fallback."
              diagrams = 1 ifTrue: [
                | unsupported | unsupported := coldCopy value: fixedCold.
                unsupported graphicBlock instVarNamed: 'attributedViewNames' put: (Set new add: 'unknown'; yourself).
                rejection := ''.
                coldDb handleExceptionsIn: [coldReader valueWithArguments: (Array with: spec getAPIHandle with: component with: spec with: hex with: [:r | coldDb error: 'UNEXPECTED_PARTIAL_OUTPUT'] with: [true] with: unsupported)]
                  ifFail: [:error | rejection := error arguments printString].
                (rejection includesSubstring: 'BDE_SOURCE_COPY_UNSUPPORTED') ifFalse: [coldDb error: 'Expected unsupported source rejection ', rejection].
                rejectCases := rejectCases + 1
              ].
              emitRecords value: 'legacy' value: oldRecords. emitRecords value: 'fixed' value: newRecords. emitRecords value: 'repeat' value: repeatRecords.
              row value: 'case' value: (Array with: oid with: sourceID with: (component isSmClass ifTrue: ['state_machine'] ifFalse: [component class name asString]) with: spec specificationName with: mutated printString with: mutationMessage with: 'unchanged')
            ] value: coldDb.
            originalCases := originalCases + 1
          ]]
        ]
      ].
      #('legacy' 'fixed' 'repeat') do: [:label | row value: label value: (Array with: '#STATS' with: components printString with: components printString with: '0' with: '0' with: '0' with: '0')].
      row value: 'summary' value: (Array with: diagrams printString with: cases printString with: originalCases printString with: rejectCases printString).
      out contents
    ] ifFail: [:error | 'PROBE_ERROR: cold fixture ', error printString, ' ', error arguments printString]
  ]`;
  const source = join(directory, 'cold-native.st'), binary = join(directory, 'cold-native.exe');
  // String.raw is not used above because the embedded resources contain literal Smalltalk code.
  await writeFile(source, fixture.replace('b \\ 16', 'b \\\\ 16'));
  execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
    '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
    '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
    '/resource:' + source + ',snapshot.st', '/resource:' + join(ROOT, 'bde-source-reader.st') + ',bde-reader.st',
    '/resource:' + join(ROOT, 'bde-load-factory.st') + ',bde-load-factory.st', join(ROOT, 'CodeSearchBridge.cs'),
  ], { windowsHide: true });
  client = new JsonLineClient({ command: binary, timeoutMs: 90_000 });
  const raw = validateNativeResponse(await client.request({ mode: 'snapshot' })); await save('cold-native-raw', raw);
  assert.equal(raw.database, before.raw.database); assert.equal(raw.ascet_pid, before.raw.ascet_pid);
  const fields = raw.payload.split('|'); assert.equal(fields.pop(), ''); assert.equal(fields.length % 11, 0);
  const records = Array.from({ length: fields.length / 11 }, (_, i) => fields.slice(i * 11, (i + 1) * 11));
  const unescape = (text: string) => text.replace(/%(\d+);/g, (_, n) => String.fromCodePoint(Number(n)));
  const decoded = Object.fromEntries(['legacy', 'fixed', 'repeat'].map(label => [label, decodeResponse({ payload: records.filter(r => r[0] === label).flatMap(r => r.slice(1)).join('|') + '|' })]));
  for (const value of Object.values(decoded)) assert.deepEqual(value.errors, []);
  assert.deepEqual(decoded.fixed.diagrams, decoded.legacy.diagrams, 'Cold fixed output must equal legacy graph facts');
  assert.deepEqual(decoded.repeat.diagrams, decoded.fixed.diagrams, 'Repeated reads remain deterministic');
  const cases = records.filter(r => r[0] === 'case').map(r => r.slice(1).map(unescape)); await save('cases', cases);
  report.diagrams = cases.length; report.legacy_mutations = cases.filter(r => r[4] === 'true').length;
  assert.ok(report.legacy_mutations > 0); assert.equal(report.diagrams, before.decoded.diagrams!.length);
  report.fixed_cold_reads_unchanged = Number(records.find(r => r[0] === 'summary')![2]);
  report.original_source_audits = Number(records.find(r => r[0] === 'summary')![3]);
  report.unsupported_rejected = Number(records.find(r => r[0] === 'summary')![4]);
  report.categories = Object.fromEntries([...new Set(cases.map(c => c[2]))].map(k => [k, cases.filter(c => c[2] === k).length]));
  await save('cold-graphs', decoded.fixed.diagrams);
  await client.close(); client = undefined;
  const after = await snapshot('after');
  assert.equal(after.raw.ascet_pid, before.raw.ascet_pid); assert.equal(after.raw.database, before.raw.database);
  assert.equal(fingerprint(after.decoded), fingerprint(before.decoded));
  report.source_fingerprint_stable = true; report.status = 'passed';
  report.boundary = 'All cold resets applied only to independent copies of actual saved BDE source trees. Production reader and strict before/after source audit executed in ASCET. Legacy storage conversion reproduced for comparison. No model setters/save/restart; not a full process-restart test or an exhaustive database-dirty audit.';
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally { await client?.close(); await save('report', report); console.log(JSON.stringify(report, null, 2)); }
