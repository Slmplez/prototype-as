import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { readFile, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { performance } from 'node:perf_hooks';
import { JsonLineClient, ROOT, validateNativeResponse } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import type { NativeRequest } from '../src/types.js';

/** Runs production selection/getAPIHandle/BDE extraction inside ASCET using detached
 * shallow copies of Specifications. Source OIDs are supplied by a fixture map to
 * avoid allocating 500 persistent DB identities. Saved graphical sources are borrowed
 * read-only; no fixture is stored. This is not a persisted 500-Diagram model test. */
export async function verifyDetachedDiagrams(directory: string) {
  let production = await readFile(join(ROOT, 'native-snapshot.st'), 'utf8');
  const once = (pattern: RegExp, replacement: string) => {
    assert.equal([...production.matchAll(new RegExp(pattern.source, 'g'))].length, 1); production = production.replace(pattern, replacement);
  };
  once(/keys := targetOids isNil[\s\S]*?directoryMs :=/, 'keys := Array with: fixtureKey.\n        directoryMs :=');
  once(/component := key getObjectIfUndefined: \[:unused \| nil\]\./, 'component := fixtureComponent.');
  once(/api := component getAPIHandle\./, 'api := fixtureOriginal getAPIHandle.');
  // Only substitute transport identity provisioning, not production selection/getters.
  production = production.replaceAll('spec sourceKey globalIdString', '(fixtureIDs at: spec)');
  const script = `[:fixtureDb :fixtureMode :fixtureInput |
    fixtureDb handleExceptionsIn: [
    | fixtureKey fixtureOriginal fixtureComponent fixtureSpec fixtureIDs fixturePublic fixturePrivate fixtureCount fixtureNeedle fixtureHeaders fixtureText fixtureSource fixtureBad run |
    fixtureNeedle := (ReadStream on: fixtureInput) upToEnd.
    fixtureHeaders := fixtureInput copyFrom: 1 to: (fixtureInput lastIndexOf: (Character value: 10)).
    fixtureNeedle := fixtureInput copyFrom: fixtureHeaders size + 1 to: fixtureInput size.
    fixtureCount := (#('1' '10' '100' '500') includes: fixtureNeedle) ifTrue: [fixtureNeedle asNumber] ifFalse: [100].
    fixtureBad := fixtureNeedle = 'failure'.
    fixtureKey := ((fixtureDb library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search)
      detect: [:key | | c | c := key getObjectIfUndefined: [:unused | nil].
        c notNil and: [c isValidObject and: [c isContainer not and: [c isSmClass not and: [c specifications anySatisfy: [:spec |
          spec isBdSpecification and: [spec specSourceInternalOrNil notNil and: [spec specSourceInternalOrNil blocks size = 0]]]]]]]].
    fixtureOriginal := fixtureKey getObjectIfUndefined: [:unused | nil].
    fixtureSource := fixtureOriginal specifications detect: [:spec | spec isBdSpecification and: [spec specSourceInternalOrNil notNil and: [spec specSourceInternalOrNil blocks size = 0]]].
    fixtureComponent := fixtureOriginal shallowCopy. fixtureIDs := IdentityDictionary new.
    fixturePublic := OrderedCollection new. fixturePrivate := OrderedCollection new.
    1 to: fixtureCount do: [:i |
      fixtureSpec := fixtureSource shallowCopy.
      fixtureSpec instVarNamed: 'specificationName' put: (i <= 2 ifTrue: ['SameName'] ifFalse: ['Diagram ', i printString]).
      fixtureSpec instVarNamed: 'instanceMethods' put: #().
      fixtureText := '00000000000000000000000000000' copy.
      fixtureText replaceFrom: 30 - i printString size to: 29 with: i printString startingAt: 1.
      fixtureIDs at: fixtureSpec put: fixtureText.
      (i even ifTrue: [fixturePrivate] ifFalse: [fixturePublic]) add: fixtureSpec
    ].
    fixtureComponent instVarNamed: 'publicSpecifications' put: fixturePublic asArray.
    fixtureNeedle = 'conflict' ifTrue: [fixturePrivate add: fixturePublic first].
    fixtureComponent instVarNamed: 'privateSpecifications' put: fixturePrivate asArray.
    run := ${production.replace("spec specSourceInternalOrNil isNil ifTrue:", "(fixtureBad and: [(fixtureIDs at: spec) = '00000000000000000000000000001']) ifTrue: [dbAPI error: 'FIXTURE_SOURCE_UNAVAILABLE'].\n                                    spec specSourceInternalOrNil isNil ifTrue:")}.
    run value: fixtureDb value: 'snapshot' value: fixtureHeaders
    ] ifFail: [:fixtureError | 'PROBE_ERROR: fixture ', fixtureError printString, ' ', fixtureError arguments printString]
]`;
  const source = join(directory, 'detached-diagrams.st'), binary = join(directory, 'detached-diagrams.exe');
  await writeFile(source, script);
  execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
    '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
    '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
    '/resource:' + source + ',snapshot.st',
    ...['state-source-reader.st,state-reader.st', 'graph-source-reader.st,graph-reader.st', 'bde-source-reader.st,bde-reader.st', 'bde-read-audit.st,bde-audit.st', 'bde-prefilter.st,bde-prefilter.st', 'bde-load-factory.st,bde-load-factory.st'].map(s => '/resource:' + join(ROOT, s)),
    join(ROOT, 'CodeSearchBridge.cs'),
  ], { windowsHide: true });
  const client = new JsonLineClient({ command: binary, timeoutMs: 90_000 }), observations: any[] = [];
  const request = async (input: NativeRequest) => {
    const start = performance.now(); const raw = validateNativeResponse(await client.request({ ...input, include_diagrams: true, audit_diagrams: true }));
    const decoded = decodeResponse(raw); observations.push({ input, elapsed_ms: performance.now() - start, decoded }); return decoded;
  };
  try {
    for (const size of [1, 10, 100, 500]) {
      const data = await request({ mode: 'snapshot', needle: String(size), filters: { kinds: ['diagram'] } });
      assert.deepEqual(data.errors, []); assert.equal(data.diagrams!.length, size); assert.equal(data.coverage.native_diagrams_loaded, size);
      assert.equal(data.diagrams!.filter(g => g.visibility === 'private').length, Math.floor(size / 2));
      assert.ok(data.diagrams!.every(g => g.methods.length === 0));
    }
    const hundred = observations[2].decoded, component = hundred.components[0].oid;
    const ids = hundred.diagrams.slice(0, 2).map((g: any) => component + '/' + g.source_oid);
    for (const selection of [{ filters: { kinds: ['diagram'], diagram_ids: ids } }, { read_diagram_ids: ids, filters: { kinds: ['diagram'] } }]) {
      const selected = await request({ mode: 'snapshot', needle: '100', ...selection }); assert.deepEqual(selected.errors, []);
      assert.equal(selected.diagrams!.length, 2); assert.equal(selected.coverage.native_diagrams_loaded, 2);
    }
    const privateOnly = await request({ mode: 'snapshot', needle: '100', filters: { kinds: ['diagram'], diagram_visibilities: ['private'] } });
    assert.equal(privateOnly.diagrams!.length, 50); assert.equal(privateOnly.coverage.native_diagrams_loaded, 50); assert.deepEqual(privateOnly.errors, []);
    const named = await request({ mode: 'snapshot', needle: '100', filters: { kinds: ['diagram'] }, diagram_name: { text: 'samename', match: 'exact', case_sensitive: false } });
    assert.equal(named.diagrams!.length, 2); assert.equal(named.coverage.native_diagrams_loaded, 2); assert.deepEqual(named.errors, []);
    const failed = await request({ mode: 'snapshot', needle: 'failure', filters: { kinds: ['diagram'], diagram_ids: ids } });
    assert.equal(failed.diagrams!.length, 1); assert.equal(failed.errors.length, 1); assert.equal(failed.errors[0].diagram_oid, ids[0].split('/')[1]);
    const conflict = await request({ mode: 'snapshot', needle: 'conflict', filters: { kinds: ['diagram'], diagram_ids: ids } });
    assert.equal(conflict.diagrams!.length, 2, 'Duplicate membership must not duplicate a Diagram');
    assert.equal(conflict.diagrams![0].visibility, undefined); assert.ok(conflict.errors.length > 0);
    assert.ok(conflict.errors.every(e => e.diagram_oid === ids[0].split('/')[1]));
    const conflictFiltered = await request({ mode: 'snapshot', needle: 'conflict', filters: { kinds: ['diagram'], diagram_ids: ids, diagram_visibilities: ['private'] } });
    assert.equal(conflictFiltered.diagrams!.length, 1); assert.ok(conflictFiltered.errors.length > 0, 'Unknown membership must not silently disappear');
    return { cases: observations.length, passed: true, scaling: observations.slice(0, 4).map(o => ({ diagrams: o.decoded.diagrams.length, elapsed_ms: o.elapsed_ms })),
      selection: observations.slice(4, 6).map(o => ({ available: 100, loaded: o.decoded.coverage.native_diagrams_loaded, elapsed_ms: o.elapsed_ms })),
      boundary: 'Detached Specifications with synthetic source OIDs; production filters, wrapper identity and extraction unchanged. Borrowed empty saved graph read under audit. No fixtures persisted. Failure injected before source getter.' };
  } finally { await client.close(); await writeFile(join(directory, 'detached-diagrams.json'), JSON.stringify(observations, null, 2) + '\n'); }
}
