import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { Bridge, JsonLineClient, ROOT, validateNativeResponse } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';

const manifest = join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json');
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.ok(Number.isInteger(instance.port) && instance.port !== 32503);
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) };
const directory = join(ROOT, 'experiments/literal-gates', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const reader = (await readFile(join(ROOT, 'bde-source-reader.st'), 'utf8')).replaceAll('\r\n', '\n');
const begin = reader.indexOf('    bdeLiteralRows := [:lfSource');
const finishText = '] valueWithArguments: (Array with: bdeSavedSource with: bdeComponent with: bdeSpec with: bdeHex).';
const finish = reader.indexOf(finishText, begin) + finishText.length;
assert.ok(begin >= 0 && finish > begin);
const literal = reader.slice(begin + '    bdeLiteralRows := '.length, finish - finishText.length) + ']';
const native = reader.slice(0, begin) + '    bdeLiteralRows := nil.\n' + reader.slice(finish);
const audit = await readFile(join(ROOT, 'bde-read-audit.st'), 'utf8');
const copyFactory = audit.slice(0, audit.indexOf(' auditBefore :=')) + ' copySource\n]';
const sourceAudit = audit.replace(':auditSpec', ':auditSource').replaceAll('auditSpec specSourceInternalOrNil', 'auditSource');
const fixture = `[:gateDb :gateMode :gateInput |
 gateDb handleExceptionsIn: [
  | component spec stored gateClone fast nativeReader fixedReader gateAudit checks check hex probe gateCompare gateSource records expected fallback |
  component := (gateDb dbInterface getNewDBProxyFromAlphaNumString: '040ts00000001qg714eg8acgp8dg0') getObjectOrUndefined.
  spec := component publicSpecifications detect: [:entry | entry sourceKey globalIdString = '040ts00000001qg714eg8acgr8gg0'].
  stored := spec specSourceInternalOrNil.
  fast := ${literal}. nativeReader := ${native}. fixedReader := @@BDE_READER@@.
  gateClone := (${copyFactory} value: nil value: nil value: gateDb). gateAudit := ${sourceAudit}.
  checks := WriteStream on: String new.
  check := [:name :condition | condition ifFalse: [gateDb error: name]. checks nextPutAll: name; cr].
  hex := [:bytes | | stream digits | stream := WriteStream on: String new. digits := '0123456789abcdef'.
    bytes do: [:b | stream nextPut: (digits at: b // 16 + 1); nextPut: (digits at: b \\\\ 16 + 1)]. stream contents].
  probe := [:tree | fast valueWithArguments: (Array with: tree with: component with: spec with: hex)].
  gateCompare := [:label :tree |
   gateAudit value: tree value: [
    expected := OrderedCollection new. records := OrderedCollection new.
    nativeReader valueWithArguments: (Array with: spec getAPIHandle with: component with: spec with: hex
      with: [:record | expected add: record] with: [true] with: tree).
    fixedReader valueWithArguments: (Array with: spec getAPIHandle with: component with: spec with: hex
      with: [:record | records add: record] with: [true] with: tree).
    check value: label value: (records = expected)
   ] value: gateDb
  ].
  gateAudit value: stored value: [
   gateSource := gateClone value: stored.
   check value: 'actual-literal-tree-supported' value: (probe value: gateSource) notNil.
   gateCompare value: 'actual-literal-native-equivalent' value: gateSource.
   gateSource := gateClone value: stored. gateSource instVarNamed: 'blocks' put: #().
   check value: 'empty-tree-supported' value: (probe value: gateSource) notNil.
   gateCompare value: 'empty-tree-native-equivalent' value: gateSource.
   gateSource := gateClone value: stored.
   gateSource blocks first instVarNamed: 'literalString' put: ((DBString with: (Character value: 20013)), ' literal | % ', (String with: (Character value: 10)), 'get/set').
   gateCompare value: 'unicode-delimiter-multiline-equivalent' value: gateSource.
   gateSource := gateClone value: stored. (gateSource blocks first instVarNamed: 'own') at: 1 put: 0.
   gateCompare value: 'zero-node-id-equivalent' value: gateSource.
   gateSource := gateClone value: stored. gateSource blocks first instVarNamed: 'connectors' put: #(0).
   gateCompare value: 'zero-pin-id-equivalent' value: gateSource.
   fallback := [:label :change |
    gateSource := gateClone value: stored. change value: gateSource.
    check value: label value: (probe value: gateSource) isNil
   ].
   fallback value: 'connection-fallback' value: [:tree | tree instVarNamed: 'connections' put: (Array with: SGConnectionGODB basicNew)].
   fallback value: 'other-node-fallback' value: [:tree | tree instVarNamed: 'others' put: (Array with: SGCodeGODB basicNew)].
   fallback value: 'top-hidden-category-fallback' value: [:tree | tree instVarNamed: 'invisibleCategoryNames' put: #('get')].
   fallback value: 'non-code-root-fallback' value: [:tree | tree instVarNamed: 'graphicBlock' put: SGLiteralGODB basicNew].
   fallback value: 'operator-after-literal-atomic-fallback' value: [:tree | tree blocks at: tree blocks size put: SGOperatorGODB basicNew].
   fallback value: 'literal-hidden-category-fallback' value: [:tree | tree blocks last instVarNamed: 'invisibleCategoryNames' put: #('get')].
   gateCompare value: 'literal-hidden-category-native-equivalent' value: gateSource.
   fallback value: 'top-hidden-native-fallback' value: [:tree | tree instVarNamed: 'invisibleCategoryNames' put: #('get')].
   gateCompare value: 'top-hidden-category-native-equivalent' value: gateSource.
   fallback value: 'literal-operation-alias-fallback' value: [:tree | tree blocks last instVarNamed: 'opAliasName' put: (ByteArray with: 1)].
   fallback value: 'nontext-literal-fallback' value: [:tree | tree blocks last instVarNamed: 'literalString' put: 1].
   fallback value: 'missing-pin-fallback' value: [:tree | tree blocks last instVarNamed: 'connectors' put: #()].
   fallback value: 'extra-pin-fallback' value: [:tree | tree blocks last instVarNamed: 'connectors' put: #(40 41)].
   fallback value: 'pin-collection-fallback' value: [:tree | tree blocks last instVarNamed: 'connectors' put: (OrderedCollection with: 40)].
   fallback value: 'negative-node-fallback' value: [:tree | (tree blocks last instVarNamed: 'own') at: 1 put: -1].
   fallback value: 'fractional-node-fallback' value: [:tree | (tree blocks last instVarNamed: 'own') at: 1 put: 1.5].
   fallback value: 'negative-pin-fallback' value: [:tree | tree blocks last instVarNamed: 'connectors' put: #(-1)].
   fallback value: 'string-pin-fallback' value: [:tree | tree blocks last instVarNamed: 'connectors' put: #('40')].
   fallback value: 'node-pin-collision-fallback' value: [:tree | tree blocks last instVarNamed: 'connectors' put: (Array with: tree blocks last iD)].
   fallback value: 'duplicate-node-fallback' value: [:tree | (tree blocks last instVarNamed: 'own') at: 1 put: tree blocks first iD].
   fallback value: 'duplicate-pin-fallback' value: [:tree | tree blocks last instVarNamed: 'connectors' put: tree blocks first connectors copy].
   fallback value: 'cross-node-pin-collision-fallback' value: [:tree | (tree blocks last instVarNamed: 'own') at: 1 put: tree blocks first connectors first].
   fallback value: 'block-count-limit-fallback' value: [:tree | tree instVarNamed: 'blocks' put: (Array new: 100001)].
   check value: 'nil-root-fallback' value: (probe value: nil) isNil.
   check value: 'unknown-root-fallback' value: (probe value: Object new) isNil.
   checks nextPutAll: 'saved-source-audit-passed'; cr
  ] value: gateDb.
  checks contents
 ] ifFail: [:error | 'PROBE_ERROR: literal gates ', error printString, ' ', error arguments printString]
]`;
const source = join(directory, 'fixture.st'), binary = join(directory, 'fixture.exe');
await writeFile(source, fixture);
const report: Record<string, any> = { status: 'running', directory, manifest, pid: identity.pid,
  boundary: 'Production gate extracted without edits; detached source mutations only, with native-reader equivalence and saved-source audit. No stored model changes.' };
try {
  execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
    '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
    '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
    '/resource:' + source + ',snapshot.st', '/resource:' + join(ROOT, 'bde-source-reader.st') + ',bde-reader.st',
    '/resource:' + join(ROOT, 'bde-load-factory.st') + ',bde-load-factory.st', join(ROOT, 'CodeSearchBridge.cs'),
  ], { windowsHide: true });
  const client = new JsonLineClient({ command: binary, env, timeoutMs: 90_000 });
  try {
    const raw = validateNativeResponse(await client.request({ mode: 'snapshot' }));
    assert.equal(raw.ascet_pid, identity.pid);
    const checks = raw.payload.trim().split(/[\r\n]+/);
    assert.ok(checks.includes('saved-source-audit-passed'));
    report.checks = checks; report.assertions = checks.length;
  } finally { await client.close(); }
  const bridge = new Bridge(90, { env });
  try {
    const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
    assert.equal(raw.ascet_pid, identity.pid);
    const data = decodeResponse(raw);
    const expected = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T18-45-19-195Z/before-snapshot.json'), 'utf8')).data;
    assert.deepEqual(data.errors, []); assert.equal(fingerprint(data), fingerprint(expected));
    assert.deepEqual(data.diagrams, expected.diagrams);
    report.source_fingerprint = fingerprint(data); report.full_graphs_equal = true;
  } finally { await bridge.close(); }
  report.status = 'passed';
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally { await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n'); console.log(JSON.stringify(report, null, 2)); }
