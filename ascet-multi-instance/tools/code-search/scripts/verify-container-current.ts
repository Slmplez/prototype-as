import assert from 'node:assert/strict';
import { execFile, execFileSync, spawn } from 'node:child_process';
import { promisify } from 'node:util';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join, resolve } from 'node:path';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';

const manifest = join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json');
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.equal(resolve(instance.runtime), join(dirname(manifest), 'runtime')); assert.notEqual(instance.port, 32503);
const directory = join(ROOT, 'experiments/container-current', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const marker = 'searchtools_dirty_cache_unique_marker_20261003';
const restoreOnly = process.env.ASCET_CONTAINER_RESTORE_ONLY === '1';
const savedReader = await readFile(join(ROOT, 'saved-container-reader.st'), 'utf8');
const reader = (await readFile(join(ROOT, 'container-source-reader.st'), 'utf8')).replace('@@SAVED_CONTAINER_READER@@', `(${savedReader})`);
const oracle = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T18-45-19-195Z/before-snapshot.json'), 'utf8')).data;
const target = oracle.documents.find((doc: any) => doc.kind === 'method' && doc.text.includes('AEBLockTime'));
assert.ok(target);
const source = String.raw`[:api :mode :input | | stage | stage := 'begin'. api handleExceptionsIn: [
 | readContainer check makeProxy proxyClasses assertions containers out chosen chosenAlias selected selectedMethods |
 assertions := 0. containers := 0. proxyClasses := IdentityDictionary new. out := WriteStream on: String new.
 readContainer := (${reader}).
 check := [:condition :name | condition ifFalse: [api error: 'CURRENT_CONTAINER_ASSERTION ', name]. assertions := assertions + 1].
 mode = 'reference' ifTrue: [
  (api library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search do: [:key | | component |
   component := key getObjectIfUndefined: [:unused | nil].
   (component notNil and: [component isValidObject and: [component getAPIHandle getOID = '${target.component_oid}']]) ifTrue: [
    component methods do: [:method | method methodName = '${target.member_name}' ifTrue: [
     component code external do: [:entry | | current body |
      current := entry value getObjectOrUndefined. body := current procSourceAt: method aliasName.
      ((body includesSubstring: '${marker}') or: [body = '${target.text.replaceAll("'", "''")}']) ifTrue: [
       current procSourceAt: method aliasName put: '${target.text.replaceAll("'", "''")}' modify: true.
       check value: ((entry value getObjectOrUndefined procSourceAt: method aliasName) = '${target.text.replaceAll("'", "''")}') value: 'explicit restoration'.
       check value: (entry value writeObject: current) isError not value: 'restored native working record'.
       containers := containers + 1]
     ]]
    ]
   ]
  ]. 'COUNTS|', assertions printString, '|', containers printString, '|'
 ] ifFalse: [
 makeProxy := [:proxy :dirty |
  | cls methods copied | cls := proxyClasses at: proxy class ifAbsentPut: [
   | owned compiled | owned := proxy class class basicNew.
   1 to: proxy class class instSize do: [:i | owned instVarAt: i put: (proxy class instVarAt: i)].
   owned superclass: proxy class. owned initializeMethodDictionary.
   #('getCachedDBObject ^nil' 'isModified ^(self instVarAt: self class instSize)') do: [:methodSource |
    compiled := EsCompiler compile: methodSource inClass: owned ifFail: [:failure | api error: failure printString].
    owned addSelector: compiled selector withMethod: compiled].
   owned instSize: proxy class instSize + 1. owned].
  copied := cls basicNew.
  1 to: proxy class instSize do: [:i | copied instVarAt: i put: (proxy instVarAt: i)].
  copied instVarAt: cls instSize put: dirty. copied
 ].
 (api library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search do: [:key | | component |
  component := key getObjectIfUndefined: [:unused | nil].
  (component notNil and: [component isValidObject and: [component isContainer not]]) ifTrue: [
   ((component isCClass or: [component isASDLClass]) or: [component isSmClass]) ifTrue: [
    (Array with: component code), component handwrittenImplCode values do: [:archive | archive external do: [:entry |
     | cached candidate forced blocked |
     stage := 'Container ', entry value printString. cached := entry value getObjectOrUndefined.
     check value: (readContainer value: api value: entry value value: component methods) isNil value: 'cached object falls back'.
     forced := makeProxy value: entry value value: false.
     candidate := readContainer value: api value: forced value: component methods.
     check value: (candidate notNil and: [candidate class == SGCodeContainerExternal]) value: 'saved projection accepted'.
     check value: (candidate cProcedureSources size = cached cProcedureSources size) value: 'stored Method count'.
     component methods do: [:method |
      check value: ((candidate procSourceAt: method aliasName) = (cached procSourceAt: method aliasName)) value: 'Method source equality'].
     check value: (candidate cSource value = cached cSource value) value: 'external C equality'.
     check value: (candidate hSource value = cached hSource value) value: 'external H equality'.
     check value: ((candidate instVarNamed: 'localHSource') isNil = (cached instVarNamed: 'localHSource') isNil) value: 'header presence'.
     (cached instVarNamed: 'localHSource') ifNotNil: [check value: (candidate localHSource = cached localHSource) value: 'header equality'].
     blocked := makeProxy value: entry value value: true.
     check value: (readContainer value: api value: blocked value: component methods) isNil value: 'dirty uncached object falls back'.
     containers := containers + 1.
     (component getAPIHandle getOID = '${target.component_oid}' and: [chosen isNil]) ifTrue: [
      component methods do: [:method | (((cached procSourceAt: method aliasName) includesSubstring: 'AEBLockTime') or: [(cached procSourceAt: method aliasName) includesSubstring: '${marker}']) ifTrue: [
       chosen := cached. chosenAlias := method aliasName. selected := entry value. selectedMethods := component methods]]]
    ]]]
  ]].
 check value: (containers = 214) value: 'Container coverage'.
 mode = 'snapshot' ifTrue: [
  check value: chosen notNil value: 'dirty target available'.
  chosen procSourceAt: chosenAlias put: '${marker};' modify: true.
  check value: chosen dbObject isModified value: 'native uncommitted state'.
  check value: (selected getCachedDBObject == chosen) value: 'edited cache identity'.
  check value: (readContainer value: api value: selected value: selectedMethods) isNil value: 'edited object falls back'.
  check value: ((selected getObjectOrUndefined procSourceAt: chosenAlias) includesSubstring: '${marker}') value: 'native Getter sees edit'
 ].
 out nextPutAll: 'COUNTS|'; nextPutAll: assertions printString; nextPut: $|; nextPutAll: containers printString; nextPut: $|. out contents]
 ] ifFail: [:error | 'PROBE_ERROR: ', stage, ' ', error printString, ' ', error arguments printString]]`;
const file = join(directory, 'verify.st'), binary = join(directory, 'verify.exe'); await writeFile(file, source);
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
  '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
  '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
  '/resource:' + file + ',snapshot.st', join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });
const env = { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port), ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' };
const report: Record<string, any> = { status: 'running', directory,
  boundary: 'Production Container projection forced on detached proxies for equivalence, then a native uncommitted Method edit in the isolated model cache. Cleanup restores only the oracle Method through the native working-record writer because a forced restart can replay that working record. No production access or whole-database commit. Restart the manifest process and verify all sources and graphs.' };
const bridge = new Bridge(90, { command: binary, env }); const runFile = promisify(execFile);
try {
  const checked = await bridge.request({ mode: restoreOnly ? 'reference' : 'snapshot' }); assert.equal(checked.ascet_pid, identity.pid);
  report.assertions = Number(checked.payload.split('|')[1]); await bridge.close();
  if (!restoreOnly) {
  const cli = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js'), '--agent'], env, timeoutMs: 90_000 });
  try {
    const found = await cli.request({ query: marker, limit: 20 }) as any;
    assert.equal(found.status, 'ok', JSON.stringify(found)); assert.ok(found.total_hits >= 1);
    report.live_dirty_hits = found.total_hits;
    const ref = found.searches[0].results[0].ref;
    const read = await cli.request({ operation: 'read', ref }) as any;
    assert.equal(read.status, 'ok', JSON.stringify(read)); assert.ok(JSON.stringify(read).includes(marker));
    report.live_dirty_read = true;
  } finally { await cli.close(); }
  }
  report.status = 'passed';
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally {
  await bridge.close();
  const cleanup = new Bridge(90, { command: binary, env });
  try { await cleanup.request({ mode: 'reference' }); report.explicit_restoration = true; }
  catch (error) { report.status = 'failed'; report.restoration_error = String(error); process.exitCode = 1; }
  finally { await cleanup.close(); }
  await runFile('pwsh', ['-NoProfile', '-File', resolve(ROOT, '../multi-instance/stop.ps1'), '-Manifest', manifest], { windowsHide: true, timeout: 60_000 });
  await runFile('pwsh', ['-NoProfile', '-File', resolve(ROOT, '../multi-instance/launch.ps1'), '-Manifest', manifest, '-Background'], { windowsHide: true, timeout: 60_000 });
  const fresh = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
  await runFile('pwsh', ['-NoProfile', '-Command', `$deadline = [DateTime]::UtcNow.AddSeconds(30)
    do { $listener = Get-NetTCPConnection -State Listen -LocalPort ${instance.port} -ErrorAction SilentlyContinue
      if ($listener.OwningProcess -eq ${fresh.pid}) { exit 0 }; Start-Sleep -Milliseconds 100
    } while ([DateTime]::UtcNow -lt $deadline); throw 'Isolated endpoint not ready'`], { windowsHide: true, timeout: 35_000 });
  const host = spawn(join(dirname(dirname(manifest)), 'EndpointHost.exe'), [String(instance.port), join(instance.logs, 'container-current-host'), instance.database, String(fresh.pid)], { windowsHide: true });
  host.stdin.end('{"id":1,"op":"quit"}\n'); host.stdout.resume(); let errors = ''; host.stderr.on('data', data => errors += data);
  const timer = setTimeout(() => host.kill(), 45_000);
  try { assert.equal(await new Promise((accept, reject) => { host.once('error', reject); host.once('close', accept); }), 0, errors); }
  finally { clearTimeout(timer); }
  const restored = new Bridge(90, { env });
  try {
    const data = decodeResponse(await restored.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true }));
    await writeFile(join(directory, 'restored-snapshot.json'), JSON.stringify({ data }));
    assert.deepEqual(data.errors, []); assert.equal(fingerprint(data), fingerprint(oracle)); assert.deepEqual(data.diagrams, oracle.diagrams);
    report.saved_sources_and_graphs_unchanged = true; report.restored_pid = fresh.pid;
  } catch (error) { report.status = 'failed'; report.verification_error = String(error); process.exitCode = 1; }
  finally { await restored.close(); }
  await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n'); console.log(JSON.stringify(report, null, 2));
}
