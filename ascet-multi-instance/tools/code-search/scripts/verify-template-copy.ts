import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { JsonLineClient, ROOT, validateNativeResponse } from '../src/bridge.js';

const manifest = join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json');
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.ok(Number.isInteger(instance.port) && instance.port !== 32503);
const directory = join(ROOT, 'experiments/template-copy', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const aliasDescriptors = process.env.ASCET_ALIAS_DESCRIPTOR_COPY === '1';
const bitmapCopy = process.env.ASCET_BITMAP_COPY === '1';
assert.ok(!bitmapCopy || aliasDescriptors);
let factory = await readFile(join(ROOT, 'bde-load-factory.st'), 'utf8');
if (aliasDescriptors) factory = factory.replace(
  "#('Point' 'Rectangle' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor') includes: name",
  "#('Point' 'Rectangle' 'RBAreaStyle' 'RBLineStyle' 'CgRGBColor' 'SGAliasMethod' 'SGAliasMethodArgument' 'SGAliasMethodParameter') includes: name");
if (bitmapCopy) factory = factory.replace("'SGAliasMethodParameter') includes: name",
  "'SGAliasMethodParameter' 'CgDeviceIndependentImage' 'CgIndexedPalette' 'CgDirectPalette') includes: name");
const exposed = factory.replace('Array with: ownedClass with: createGraphic',
  'Array with: ownedClass with: createGraphic with: copyGraphic with: ownedGraphicClass');
assert.notEqual(factory, exposed);
const factoryPath = join(directory, 'fixture-factory.st'), source = join(directory, 'fixture.st');
await writeFile(factoryPath, exposed);
await writeFile(source, `[:fixtureDb :fixtureMode :fixtureInput | fixtureDb handleExceptionsIn: [
    | copyPlan graphicClass checks check root plan a b dictionary shared deep prototype scalar pairs walk |
    copyPlan := bdeLoadFactory at: 3. graphicClass := bdeLoadFactory at: 4.
    checks := WriteStream on: String new.
    check := [:name :condition | condition ifFalse: [Object error: name]. checks nextPutAll: name; cr].
    root := Array new: 2. root at: 1 put: root; at: 2 put: (ByteArray with: 7 with: 9).
    plan := copyPlan value: root. a := plan value. b := plan value.
    check value: 'array-cycle' value: ((a at: 1) == a and: [(b at: 1) == b]).
    check value: 'independent-byte-arrays' value: ((a at: 2) ~~ (b at: 2) and: [(a at: 2) ~~ (root at: 2)]).
    (a at: 2) at: 1 put: 42.
    check value: 'copy-mutation-isolated' value: ((b at: 2) first = 7 and: [(root at: 2) first = 7]).
    shared := OrderedCollection with: 'mutable' copy.
    dictionary := Dictionary new at: 'left' put: shared; at: 'right' put: shared; yourself.
    plan := copyPlan value: dictionary. a := plan value. b := plan value.
    check value: 'dictionary-sharing-preserved' value: ((a at: 'left') == (a at: 'right')).
    (a at: 'left') add: 'extra'.
    check value: 'dictionary-copies-isolated' value: ((b at: 'left') size = 1 and: [shared size = 1]).
    dictionary := Dictionary new at: #cycle put: nil; yourself. dictionary at: #cycle put: dictionary.
    a := (copyPlan value: dictionary) value.
    check value: 'dictionary-cycle' value: ((a at: #cycle) == a).
    plan := copyPlan value: (Set with: 'abc' copy with: #symbol). a := plan value. b := plan value.
    a remove: 'abc'. check value: 'set-copies-isolated' value: (b includes: 'abc').
    check value: 'nil-root-fallback' value: (copyPlan value: nil) isNil.
    check value: 'number-root-fallback' value: (copyPlan value: 2) isNil.
    check value: 'unknown-root-fallback' value: (copyPlan value: Object new) isNil.
    check value: 'unknown-child-fallback' value: (copyPlan value: (Array with: Object new)) isNil.
    check value: 'mutable-key-fallback' value: (copyPlan value: (Dictionary new at: (Set with: #key) put: 1; yourself)) isNil.
    check value: 'mutable-set-entry-fallback' value: (copyPlan value: (Set with: (Dictionary new at: #key put: 1; yourself))) isNil.
    deep := #end. 1 to: 66 do: [:i | deep := Array with: deep].
    check value: 'depth-limit-fallback' value: (copyPlan value: deep) isNil.
    root := Array new: 10002. 1 to: root size do: [:i | root at: i put: (ByteArray with: 1)].
    check value: 'node-limit-fallback' value: (copyPlan value: root) isNil.
    scalar := SGReal new.
    prototype := graphicClass createDefault: 'Scalar' procedures: scalar methods positions: scalar methodPositions.
    prototype manager: prototype.
    plan := copyPlan value: prototype. check value: 'native-scalar-supported' value: plan notNil.
    a := plan value. b := plan value.
    check value: 'native-scalar-independent' value: (a ~~ b and: [a ~~ prototype]).
    check value: 'native-scalar-structure' value: (a class == prototype class and: [b class == prototype class]).
    check value: 'native-manager-cycle' value: (a manager == a and: [b manager == b]).
    walk := [:original :copied |
        ((original isNil or: [original isNumber]) or: [(original isKindOf: Symbol) or: [
            (original isKindOf: CgFont) or: [original == true or: [original == false]]]])
            ifTrue: [check value: 'shared-immutable-or-font' value: (original == copied)] ifFalse: [
        (pairs includesKey: original) ifTrue: [
            check value: 'native-sharing-or-cycle' value: ((pairs at: original) == copied)
        ] ifFalse: [
            pairs at: original put: copied.
            check value: 'native-node-independent' value: (original ~~ copied and: [original class == copied class]).
            ((original isKindOf: String) or: [original isKindOf: ByteArray]) ifTrue: [
                check value: 'native-byte-content' value: (original = copied)
            ] ifFalse: [(original isKindOf: Dictionary) ifTrue: [
                check value: 'native-dictionary-size' value: (original size = copied size).
                original keysAndValuesDo: [:key :entry | walk value: entry value: (copied at: key)]
            ] ifFalse: [((original isKindOf: Array) or: [original isKindOf: OrderedCollection]) ifTrue: [
                1 to: original size do: [:i | walk value: (original at: i) value: (copied at: i)]
            ] ifFalse: [(original isKindOf: Set) ifTrue: [
                check value: 'native-set-content' value: (original = copied)
            ] ifFalse: [1 to: original class instSize do: [:i |
                walk value: (original instVarAt: i) value: (copied instVarAt: i)]
            ]]]]
        ]]
    ].
    pairs := IdentityDictionary new. walk value: prototype value: a.
    checks nextPutAll: 'native-all-mutable-nodes-verified'; cr.
    pairs := IdentityDictionary new. walk value: a value: b.
    checks nextPutAll: 'native-copies-share-no-mutable-nodes'; cr.
    prototype := graphicClass createDefault: 'Scalar' procedures: (Array with: scalar internalSetMethod)
        positions: (Dictionary new at: SGReservedNames setMethod put: #(350); yourself).
    plan := copyPlan value: prototype. check value: 'native-return-supported' value: plan notNil.
    pairs := IdentityDictionary new. walk value: prototype value: plan value.
    checks nextPutAll: 'native-return-all-mutable-nodes-verified'; cr.
    ${aliasDescriptors ? `prototype := SGLiteralGO createDefault: ''.
    plan := copyPlan value: prototype. check value: 'native-literal-supported' value: plan notNil.
    a := plan value. b := plan value.
    pairs := IdentityDictionary new. walk value: prototype value: a.
    pairs := IdentityDictionary new. walk value: a value: b.
    a literalString: '12345'.
    check value: 'native-literal-edit-isolated' value: (b literalString isEmpty and: [prototype literalString isEmpty]).
    prototype := SGCodeGO createUpdatedDisplay: 'Code' actualName: 'Code' icon: nil
      lineStyle: prototype lineStyle size: (Point x: 300 y: 300).
    prototype addSelfGet: scalar internalGetMethod set: scalar internalSetMethod.
    plan := copyPlan value: prototype.
    ${bitmapCopy ? "check value: 'native-code-with-self-supported' value: plan notNil." : ''}
    plan ifNil: [checks nextPutAll: 'native-code-with-self-conservative-fallback'; cr] ifNotNil: [
      a := plan value. b := plan value.
      pairs := IdentityDictionary new. walk value: prototype value: a.
      pairs := IdentityDictionary new. walk value: a value: b.
      checks nextPutAll: 'native-code-all-mutable-nodes-verified'; cr].
    checks nextPutAll: 'native-literal-all-mutable-nodes-verified'; cr.` : ''}
    checks contents
] ifFail: [:failure | 'PROBE_ERROR: ', failure printString, ' ', failure arguments printString]
]`);
const binary = join(directory, 'fixture.exe');
const report: Record<string, unknown> = { status: 'running', directory, manifest, pid: identity.pid, alias_descriptor_copy: aliasDescriptors, bitmap_copy: bitmapCopy,
  boundary: 'Detached synthetic objects and native scalar prototypes only. Production factory is unchanged by test exposure. No saved model writes; platform CgFont resources may be shared.' };
try {
  execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
    '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
    '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
    '/resource:' + source + ',snapshot.st', '/resource:' + factoryPath + ',bde-load-factory.st', join(ROOT, 'CodeSearchBridge.cs'),
  ], { windowsHide: true });
  const client = new JsonLineClient({ command: binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) }, timeoutMs: 60_000 });
  try {
    const raw = validateNativeResponse(await client.request({ mode: 'snapshot' }));
    assert.equal(raw.ascet_pid, identity.pid);
    const checks = raw.payload.trim().split(/[\r\n]+/);
    assert.ok(!raw.payload.startsWith('PROBE_ERROR:'), raw.payload);
    for (const name of ['node-limit-fallback', 'native-manager-cycle', 'native-all-mutable-nodes-verified',
      'native-copies-share-no-mutable-nodes', 'native-return-supported', 'native-return-all-mutable-nodes-verified']) assert.ok(checks.includes(name));
    Object.assign(report, { status: 'passed', assertions: checks.length, checks: [...new Set(checks)],
      assertion_counts: Object.fromEntries([...new Set(checks)].map(name => [name, checks.filter(check => check === name).length])) });
  } finally { await client.close(); }
} catch (error) { report.status = 'failed'; report.error = String(error); process.exitCode = 1; }
finally { await writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n'); console.log(JSON.stringify(report, null, 2)); }
