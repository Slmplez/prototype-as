import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { JsonLineClient, ROOT, validateNativeResponse } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';

const manifest = join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json');
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.ok(Number.isInteger(instance.port) && instance.port !== 32503);
const directory = join(ROOT, 'experiments/modified-directory', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const native = await readFile(join(ROOT, 'native-snapshot.st'), 'utf8');
const begin = native.indexOf('        keys := targetOids isNil'), end = native.indexOf('        directoryMs :=', begin);
assert.ok(begin >= 0 && end > begin);
const baseline = native.slice(0, begin) + `        keys := targetOids isNil
            ifTrue: [(dbAPI library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search]
            ifFalse: [targetOids collect: [:targetOid | dbAPI dbInterface getNewDBProxyFromAlphaNumString: targetOid]].\n` + native.slice(end);
const results: unknown[] = [];
const report: Record<string, unknown> = { status: 'running', directory, manifest, pid: identity.pid,
  boundary: 'Nonempty held modified-object input built from real DBObject proxies in the isolated database. Original holdModified is restored in ensure. No source setter, dirty flag, model save or cache registration. This verifies the query branch, not unsaved-new/deleted-model workflows.' };
try {
  for (const phase of ['baseline', 'shared'] as const) {
    const fixture = `[:fixtureDb :fixtureMode :fixtureInput | | fixtureStage | fixtureStage := 'reader setup'. fixtureDb handleExceptionsIn: [
      | fixtureReader fixtureKeys fixtureInterface fixtureOriginal fixtureTable fixtureValue fixtureVariant |
      fixtureReader := ${phase === 'baseline' ? baseline : native}.
      fixtureStage := 'directory'. fixtureKeys := (fixtureDb library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search.
      fixtureInterface := ((fixtureDb library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) instVarNamed: 'oredQueries') first dbInterface.
      fixtureStage := 'interface ', fixtureInterface class name.
      fixtureOriginal := fixtureInterface instVarNamed: 'holdModified'.
      fixtureVariant := fixtureMode. fixtureStage := 'table'.
      fixtureTable := fixtureVariant = 'catalog' ifTrue: [(fixtureKeys asArray copyFrom: 1 to: 20) asOrderedCollection] ifFalse: [
        fixtureVariant = 'reference' ifTrue: [fixtureKeys asOrderedCollection] ifFalse: [
          fixtureKeys asOrderedCollection addAll: fixtureKeys; yourself]].
      fixtureTable isEmpty ifTrue: [fixtureDb error: 'EMPTY_MODIFIED_FIXTURE'].
      [fixtureStage := 'hold input'. fixtureInterface instVarNamed: 'holdModified' put: fixtureTable.
       fixtureStage := 'native read'.
       fixtureValue := fixtureReader value: fixtureDb value: 'snapshot' value: fixtureInput.
       (fixtureInterface instVarNamed: 'holdModified') == fixtureTable ifFalse: [fixtureDb error: 'HELD_TABLE_REPLACED']
      ] ensure: [fixtureInterface instVarNamed: 'holdModified' put: fixtureOriginal].
      (fixtureInterface instVarNamed: 'holdModified') == fixtureOriginal ifFalse: [fixtureDb error: 'HELD_TABLE_NOT_RESTORED'].
      fixtureTable size printString, (Character value: 10) asString, fixtureValue
    ] ifFail: [:fixtureError | 'PROBE_ERROR: modified directory ', fixtureStage, ' ', fixtureError printString, ' ', fixtureError arguments printString]]`;
    const source = join(directory, phase + '.st'), binary = join(directory, phase + '.exe');
    await writeFile(source, fixture);
    execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
      '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
      '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
      '/resource:' + source + ',snapshot.st',
      ...['bde-source-reader.st,bde-reader.st', 'bde-load-factory.st,bde-load-factory.st', 'state-source-reader.st,state-reader.st',
        'graph-source-reader.st,graph-reader.st', 'bde-read-audit.st,bde-audit.st', 'bde-prefilter.st,bde-prefilter.st'].map(s => '/resource:' + join(ROOT, s)),
      join(ROOT, 'CodeSearchBridge.cs'),
    ], { windowsHide: true });
    const client = new JsonLineClient({ command: binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) }, timeoutMs: 30_000 });
    try {
      for (const mode of ['catalog', 'reference', 'snapshot'] as const) {
        const raw = validateNativeResponse(await client.request({ mode, include_diagrams: true, audit_diagrams: true }));
        await writeFile(join(directory, phase + '-' + mode + '-raw.json'), JSON.stringify(raw));
        assert.equal(raw.ascet_pid, identity.pid);
        const split = raw.payload.indexOf('\n'), entries = Number(raw.payload.slice(0, split));
        assert.ok(entries > 0);
        assert.ok(!raw.payload.slice(split + 1).startsWith('PROBE_ERROR:'), raw.payload.slice(split + 1));
        const data = decodeResponse({ payload: raw.payload.slice(split + 1) }); assert.deepEqual(data.errors, []);
        await writeFile(join(directory, phase + '-' + mode + '.json'), JSON.stringify(data));
        if (phase === 'shared') {
          const control = JSON.parse(await readFile(join(directory, 'baseline-' + mode + '.json'), 'utf8'));
          assert.equal(fingerprint(data), fingerprint(control)); assert.deepEqual(data.diagrams, control.diagrams);
        }
        results.push({ phase, input: mode, held_entries: entries, components: data.components.length,
          source_fingerprint: fingerprint(data), table_restored: true });
      }
    } finally { await client.close(); }
  }
  Object.assign(report, { status: 'passed', cases: results, full_snapshot_equivalent: true });
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally { await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n'); console.log(JSON.stringify(report, null, 2)); }
