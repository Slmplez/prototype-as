import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { Bridge, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import { fingerprint } from './oracle.js';

const manifest = join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json');
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.notEqual(instance.port, 32503);
const metadata = process.env.ASCET_SCALAR_METADATA === '1';
const directory = join(ROOT, metadata ? 'experiments/scalar-metadata' : 'experiments/scalar-template-copy', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const baselineRoot = process.env.ASCET_SCALAR_BASELINE ?? join(ROOT, 'experiments/scalar-baseline-20261003T1835');
const factory = (await readFile(join(baselineRoot, 'bde-load-factory.st'), 'utf8')).replace(/\r\n/g, '\n');
const copy = await readFile(join(ROOT, 'experiments/scalar-template-copy.st'), 'utf8');
let candidate = factory.replace('displayMethod createGraphic |', 'displayMethod createGraphic copyGraphic |');
candidate = candidate.replace('createGraphic := [:represented :element :model |', `copyGraphic := (${copy}).
    createGraphic := [:templates | [:represented :element :model |`);
candidate = candidate.replace('| graphic positions |', `| graphic positions isReturn template key |
        isReturn := element isMethodParameter and: [element isReturn].
        key := Array with: represented class with: represented typeID with: isReturn.`);
candidate = candidate.replace('(represented goClass == SGDataGO and: [', `(represented goClass == SGDataGO and: [
            (represented class whichClassIncludesSelector: #internalSetMethod) == SGModelDataType and: [
            (represented class whichClassIncludesSelector: #internalGetMethod) == SGModelDataType and: [
            (represented class whichClassIncludesSelector: #methods) == SGModelDataType and: [
            (represented class whichClassIncludesSelector: #methodPositions) == SGModelDataType and: [`);
candidate = candidate.replace(') == SGModelDataType]]) ifTrue:', ') == SGModelDataType]]]]]]) ifTrue:');
candidate = candidate.replace('(element isMethodParameter and: [element isReturn]) ifTrue: [', `template := templates at: key ifAbsentPut: [
                isReturn ifTrue: [`);
candidate = candidate.replace(`                graphic aliasName: element aliasName.
                graphic actualNameVisibility: true.
                graphic sequenceVisibility: model isCTContext.
                graphic
            ] ifFalse: [ownedGraphicClass createDefault: 'Scalar' procedures: represented methods positions: represented methodPositions]`,
`            ] ifFalse: [graphic := ownedGraphicClass createDefault: 'Scalar' procedures: represented methods positions: represented methodPositions].
                copyGraphic value: graphic
            ].
            template isNil ifTrue: [nil] ifFalse: [
                graphic := template value.
                isReturn ifTrue: [graphic aliasName: element aliasName.
                    graphic actualNameVisibility: true. graphic sequenceVisibility: model isCTContext]. graphic]`);
candidate = candidate.replace('] ifFalse: [nil]\n    ].', '] ifFalse: [nil]\n    ]].');
assert.ok(candidate.includes('template value'));
if (metadata) {
 candidate = factory.replace('createGraphic := [:represented :element :model |', 'createGraphic := [:definitions | [:represented :element :model |');
 candidate = candidate.replace('| graphic positions |', '| graphic positions definition isReturn |\n        isReturn := element isMethodParameter and: [element isReturn].');
 candidate = candidate.replace('(element isMethodParameter and: [element isReturn]) ifTrue: [', `definition := definitions at: (Array with: represented with: isReturn) ifAbsentPut: [
                isReturn ifTrue: [Array with: (Array with: represented internalSetMethod)
                    with: (Dictionary new at: SGReservedNames setMethod put: #(350); yourself)]
                    ifFalse: [Array with: represented methods with: represented methodPositions]
            ].
            isReturn ifTrue: [`);
 candidate = candidate.replace("positions := Dictionary new at: SGReservedNames setMethod put: #(350); yourself.\n                graphic := ownedGraphicClass createDefault: 'Scalar' procedures: (Array with: represented internalSetMethod) positions: positions.",
 "graphic := ownedGraphicClass createDefault: 'Scalar' procedures: definition first positions: definition last.");
 candidate = candidate.replace("ownedGraphicClass createDefault: 'Scalar' procedures: represented methods positions: represented methodPositions",
 "ownedGraphicClass createDefault: 'Scalar' procedures: definition first positions: definition last");
 candidate = candidate.replace('] ifFalse: [nil]\n    ].', '] ifFalse: [nil]\n    ]].');
}
let reader = (await readFile(join(baselineRoot, 'bde-source-reader.st'), 'utf8')).replace(/\r\n/g, '\n');
reader = reader.replace('| bdeElementMetadata bdeReferencePaths |', `| bdeElementMetadata bdeReferencePaths bdeTemplateCreator |
    bdeTemplateCreator := (bdeLoadFactory at: 2) value: Dictionary new.`);
reader = reader.replace('put: (bdeLoadFactory at: 2)', 'put: bdeTemplateCreator');
await writeFile(join(directory, 'candidate-factory.st'), candidate);
await writeFile(join(directory, 'candidate-reader.st'), reader);
const phases = ['baseline', 'candidate'].map(name => ({ name, binary: join(directory, name + '.exe') }));
for (const phase of phases) execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
 '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
 '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + phase.binary,
 '/resource:' + (phase.name === 'candidate' ? join(directory, 'candidate-factory.st') : join(baselineRoot, 'bde-load-factory.st')) + ',bde-load-factory.st',
 '/resource:' + (phase.name === 'candidate' ? join(directory, 'candidate-reader.st') : join(baselineRoot, 'bde-source-reader.st')) + ',bde-reader.st',
 ...['native-snapshot.st,snapshot.st', 'state-source-reader.st,state-reader.st', 'graph-source-reader.st,graph-reader.st',
  'bde-read-audit.st,bde-audit.st', 'bde-prefilter.st,bde-prefilter.st', 'native-transport.st,native-transport.st'].map(s => '/resource:' + join(ROOT, s)), join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });
const report: Record<string, unknown> = { status: 'running', directory }, samples: Record<string, any>[] = [];
const controls = new Map<string, ReturnType<typeof decodeResponse>>();
try {
 for (let round = 0; round < 6; round++) {
  for (const phase of round % 2 ? [...phases].reverse() : phases) {
   const bridge = new Bridge(90, { command: phase.binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) } });
   try {
    const raw = await bridge.request({ mode: 'snapshot', include_diagrams: true, audit_diagrams: true });
    assert.equal(raw.ascet_pid, identity.pid);
    const data = decodeResponse(raw); assert.deepEqual(data.errors, []);
    const control = controls.get('snapshot') ?? data; controls.set('snapshot', control);
    assert.equal(fingerprint(data), fingerprint(control)); assert.deepEqual(data.diagrams, control.diagrams);
    for (let i = 0; i < 5; i++) {
     const result = await bridge.request({ mode: 'search_insensitive', needle: 'set', include_diagrams: true });
     const decoded = decodeResponse(result); assert.deepEqual(decoded.errors, []);
     const expected = controls.get('set') ?? decoded; controls.set('set', expected);
     assert.equal(fingerprint(decoded), fingerprint(expected)); assert.deepEqual(decoded.diagrams, expected.diagrams);
     samples.push({ phase: phase.name, round, timings: result.timings, coverage: decoded.coverage });
    }
   } finally { await bridge.close(); }
  }
  console.log(JSON.stringify({ progress: round + 1, rounds: 6 }));
 }
 Object.assign(report, { status: 'passed', full_snapshot_equivalent: true, search_equivalent: true, samples,
  metrics: Object.fromEntries(phases.map(phase => {
   const times = samples.filter(s => s.phase === phase.name).map(s => s.timings.native_read_transport_ms).sort((a, b) => a - b);
   return [phase.name, { count: times.length, median_ms: times[Math.floor(times.length / 2)], max_ms: times.at(-1) }];
  })) });
} catch (error) { report.status = 'failed'; report.error = String(error).slice(0, 4000); process.exitCode = 1; }
finally { await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n'); console.log(JSON.stringify({ ...report, samples: undefined }, null, 2)); }
