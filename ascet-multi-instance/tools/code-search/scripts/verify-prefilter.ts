import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { Bridge, JsonLineClient, ROOT, validateNativeResponse } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';

const directory = join(ROOT, 'experiments/prefilter', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const report: Record<string, any> = { status: 'running', directory };
const snapshot = async () => { const b = new Bridge(90); try { const d = decodeResponse(await b.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true })); assert.deepEqual(d.errors, []); return d; } finally { await b.close(); } };
try {
  const before = await snapshot();
  if (process.env.ASCET_PREFILTER_GOLDEN) {
    const golden = JSON.parse(await readFile(process.env.ASCET_PREFILTER_GOLDEN, 'utf8'));
    assert.equal(fingerprint(before), fingerprint(golden.data), 'Production graph reader differs from saved golden snapshot');
    report.golden_snapshot = process.env.ASCET_PREFILTER_GOLDEN;
    report.golden_equivalent = true;
  }
  const prefilter = await readFile(join(ROOT, 'bde-prefilter.st'), 'utf8');
  const auditSource = await readFile(join(ROOT, 'bde-read-audit.st'), 'utf8');
  const copyFactory = auditSource.slice(0, auditSource.indexOf(' auditBefore :=')) + ' copySource\n]';
  const script = `[:pfDb :pfMode :pfInput | | pfStage | pfStage := 'begin'. pfDb handleExceptionsIn: [
    | pfOut pfReader pfFilter pfAudit pfDiagrams pfFields pfFailures pfRecords pfNeedle pfMatcher pfHex pfKeys pfCases pfCopy pfForeign pfFallbackCases |
    pfOut := WriteStream on: String new. pfDiagrams := 0. pfFields := 0. pfFailures := 0. pfCases := Set new.
    pfReader := @@BDE_READER@@. pfFilter := (${prefilter}). pfAudit := @@BDE_AUDIT@@.
    pfCopy := (${copyFactory} value: nil value: nil value: pfDb). pfFallbackCases := 0.
    pfMatcher := [:pfCandidate | pfCandidate asLowercase includesSubstring: pfNeedle].
    pfHex := [:pfBytes | | pfStream pfDigits | pfStream := WriteStream on: String new. pfDigits := '0123456789abcdef'.
     pfBytes do: [:pfByte | pfStream nextPut: (pfDigits at: pfByte // 16 + 1); nextPut: (pfDigits at: pfByte \\\\ 16 + 1)]. pfStream contents].
    pfKeys := (pfDb library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search.
    pfKeys do: [:pfKey | | pfClass | pfClass := pfKey getObjectIfUndefined: [:pfUnused | nil].
     (pfClass notNil and: [pfClass isValidObject and: [pfClass isContainer not]]) ifTrue: [
      pfClass specifications do: [:pfSpec | pfSpec isBdSpecification ifTrue: [
       pfStage := pfClass getAPIHandle getFolderPathName, '/', pfSpec specificationName.
       pfDiagrams := pfDiagrams + 1. pfRecords := OrderedCollection new.
       pfAudit value: pfSpec value: [pfReader valueWithArguments: (Array with: pfSpec getAPIHandle with: pfClass with: pfSpec with: pfHex with: [:pfRecord | pfRecords add: pfRecord] with: [true] with: pfSpec specSourceInternalOrNil)] value: pfDb.
       pfStage := pfStage, ' graph-read-done'.
       pfCases := Set new.
       pfRecords do: [:pfRecord | | pfTag | pfTag := pfRecord first.
        pfTag = '#BDE_NODE' ifTrue: [pfCases add: (pfRecord at: 5); add: (pfRecord at: 8)].
        (pfTag = '#BDE_PIN' or: [pfTag = '#BDE_SEQUENCE']) ifTrue: [pfCases add: (pfRecord at: 5)].
        (pfTag = '#BDE_SCOPE' or: [pfTag = '#BDE_COMMENT']) ifTrue: [pfCases add: (pfRecord at: 3)]
       ].
       "A whole get/get field bypasses the storage filter because of slash.
       Prefix/suffix probes must also exercise generated native connector names."
       pfCases asArray do: [:pfField |
        1 to: (pfField size min: 8) do: [:pfLength |
         pfCases add: (pfField copyFrom: 1 to: pfLength).
         pfCases add: (pfField copyFrom: pfField size - pfLength + 1 to: pfField size)]
       ].
       pfCases do: [:pfQuery | pfQuery isEmpty ifFalse: [
        pfNeedle := pfQuery asLowercase. pfFields := pfFields + 1. pfStage := pfClass getAPIHandle getFolderPathName, '/', pfSpec specificationName, ': ', pfQuery.
        ((pfNeedle includes: $/) or: [(pfMatcher value: pfSpec specificationName) or: [pfFilter value: pfSpec specSourceInternalOrNil value: pfClass value: pfMatcher]]) ifFalse: [
         pfFailures := pfFailures + 1. pfOut nextPutAll: pfClass getAPIHandle getFolderPathName; nextPutAll: '/'; nextPutAll: pfSpec specificationName; nextPutAll: ': '; nextPutAll: pfQuery; cr]
       ]]
       . pfDiagrams = 1 ifTrue: [
        pfNeedle := '__ABSENT_FALLBACK_CHECK__'.
        pfForeign := pfCopy value: pfSpec specSourceInternalOrNil.
        pfForeign instVarNamed: 'modelSettings' put: (Array with: Object new).
        (pfFilter value: pfForeign value: pfClass value: pfMatcher) ifFalse: [pfDb error: 'UNKNOWN_MUTABLE_TYPE_WAS_SKIPPED'].
        pfFallbackCases := pfFallbackCases + 1.
        pfForeign := pfCopy value: pfSpec specSourceInternalOrNil.
        pfForeign instVarNamed: 'attributedViewNames' put: (Dictionary new at: 'unknown' put: Object new; yourself).
        (pfFilter value: pfForeign value: pfClass value: pfMatcher) ifFalse: [pfDb error: 'UNKNOWN_DISPLAY_METADATA_WAS_SKIPPED'].
        pfFallbackCases := pfFallbackCases + 1.
        pfForeign := pfCopy value: pfSpec specSourceInternalOrNil.
        pfForeign instVarNamed: 'blocks' put: (Array with: pfForeign).
        (pfFilter value: pfForeign value: pfClass value: pfMatcher) ifFalse: [pfDb error: 'HIERARCHY_CYCLE_WAS_SKIPPED'].
        pfFallbackCases := pfFallbackCases + 1
       ]
      ]]
     ]].
    pfOut nextPutAll: 'DIAGRAMS='; nextPutAll: pfDiagrams printString; nextPutAll: ' FIELDS='; nextPutAll: pfFields printString; nextPutAll: ' FALLBACK_CASES='; nextPutAll: pfFallbackCases printString; nextPutAll: ' FAILURES='; nextPutAll: pfFailures printString. pfOut contents
   ] ifFail: [:pfError | 'PROBE_ERROR: ', pfStage, ' ', pfError printString, ' ', pfError messageText, ' ', pfError arguments printString]]`;
  const source = join(directory, 'oracle.st'), binary = join(directory, 'oracle.exe'); await writeFile(source, script);
  execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), ['/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll', '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', '/out:' + binary, '/resource:' + source + ',snapshot.st', ...['bde-source-reader.st,bde-reader.st','bde-read-audit.st,bde-audit.st','bde-load-factory.st,bde-load-factory.st'].map(s => '/resource:' + join(ROOT,s)), join(ROOT, 'CodeSearchBridge.cs')], { windowsHide: true });
  const c = new JsonLineClient({ command: binary, timeoutMs: 90000 });
  try { const raw = validateNativeResponse(await c.request({ mode: 'snapshot' })); await writeFile(join(directory, 'oracle.json'), JSON.stringify(raw)); report.oracle = raw.payload; assert.ok(/FAILURES=0$/.test(raw.payload), 'Prefilter rejected known searchable fields; see oracle.json'); } finally { await c.close(); }
  const bridge = new Bridge(90);
  try {
    const cases = ['AEBLockTime', 'return', '__ASCET_ABSENT_FAST_9d103__', 'aebloc', 'set', 'get', 'et', 'ge', 'aValue', '0.0', 'Init', 'input1', 'true', 'default', 'AEB_FxTarPT', 'C_AEB_AXCDeadZonePos', 'get\net'];
    report.comparisons = [];
    for (const query of cases) {
      const request = { mode: 'search_many' as const, needle: query.toLowerCase(), include_diagrams: true, audit_diagrams: true };
      const baseline = decodeResponse(await bridge.request({ ...request, disable_diagram_prefilter: true }));
      const optimized = decodeResponse(await bridge.request(request));
      assert.deepEqual(optimized.errors, baseline.errors); assert.equal(fingerprint(optimized), fingerprint(baseline), query);
      report.comparisons.push({ query, loaded_before: baseline.coverage.native_diagrams_loaded, loaded_after: optimized.coverage.native_diagrams_loaded });
    }
  } finally { await bridge.close(); }
  assert.equal(fingerprint(await snapshot()), fingerprint(before)); report.source_fingerprint_stable = true; report.status = 'passed';
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally { await writeFile(join(directory, 'report.json'), JSON.stringify(report,null,2)); console.log(JSON.stringify(report,null,2)); }
