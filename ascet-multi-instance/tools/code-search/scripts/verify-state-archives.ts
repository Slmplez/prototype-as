import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { readFile, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import type { NativeRequest, NativeResponse } from '../src/types.js';

/** Exercise the production snapshot on a detached copy; no source setter, dbObject,
 * commit or store is called on any fixture. Borrowed live Methods are only read. */
export async function verifyStateArchives(directory: string) {
  let production = await readFile(join(ROOT, 'native-snapshot.st'), 'utf8');
  const replaceOnce = (pattern: RegExp, value: string) => {
    assert.equal([...production.matchAll(new RegExp(pattern.source, 'g'))].length, 1);
    production = production.replace(pattern, value);
  };
  replaceOnce(/keys := targetOids isNil[\s\S]*?directoryMs :=/, 'keys := Array with: fixtureKey.\n        directoryMs :=');
  replaceOnce(/component := key getObjectIfUndefined: \[:unused \| nil\]\./, 'component := fixtureComponent.');
  replaceOnce(/api := component getAPIHandle\./, 'api := fixtureOriginal getAPIHandle.');
  const source = `[:fixtureDb :fixtureMode :fixtureInput |
    | fixtureKey fixtureOriginal fixtureComponent fixtureArchive fixtureContainer fixtureSources fixtureMethods run |
    fixtureKey := ((fixtureDb library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search)
      detect: [:key | | c | c := key getObjectIfUndefined: [:unused | nil].
        c notNil and: [c isValidObject and: [c isContainer not and: [c isSmClass and: [c methods size >= 3]]]]].
    fixtureOriginal := fixtureKey getObjectIfUndefined: [:unused | nil].
    fixtureComponent := fixtureOriginal shallowCopy. fixtureMethods := fixtureOriginal methods.
    fixtureSources := Dictionary new.
    fixtureSources at: fixtureMethods first aliasName put: 'FixtureLookup := InputSignal;'.
    fixtureSources at: (fixtureMethods at: 2) aliasName put: ''.
    fixtureContainer := SGCodeContainerExternal basicNew.
    fixtureContainer instVarNamed: 'cProcedureSources' put: fixtureSources.
    fixtureArchive := SGCodeArchive basicNew.
    fixtureArchive external: (Array with: (SGASDLCodeVariantKey basicNew -> fixtureContainer) with: (SGDefaultCodeVariantKey basicNew -> fixtureContainer)).
    fixtureComponent instVarNamed: 'code' put: fixtureArchive.
    fixtureComponent instVarNamed: 'handwrittenImplCode' put: (Dictionary new at: fixtureKey put: fixtureArchive; yourself).
    run := ${production}.
    run value: fixtureDb value: fixtureMode value: fixtureInput
]`;
  const script = join(directory, 'detached-state-archives.st'), binary = join(directory, 'detached-state-archives.exe');
  await writeFile(script, source);
  execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
    '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
    '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
    '/resource:' + script + ',snapshot.st',
    ...['state-source-reader.st,state-reader.st', 'graph-source-reader.st,graph-reader.st', 'bde-source-reader.st,bde-reader.st', 'bde-read-audit.st,bde-audit.st', 'bde-prefilter.st,bde-prefilter.st', 'bde-load-factory.st,bde-load-factory.st'].map(s => '/resource:' + join(ROOT, s)),
    join(ROOT, 'CodeSearchBridge.cs'),
  ], { windowsHide: true });
  const client = new JsonLineClient({ command: binary, timeoutMs: 90_000 });
  const observations: unknown[] = [];
  try {
    const cases: { request: NativeRequest; count: number }[] = [
      { request: { mode: 'snapshot' }, count: 8 },
      { request: { mode: 'search_sensitive', needle: 'FixtureLookup' }, count: 4 },
      { request: { mode: 'search_insensitive', needle: 'fixturelookup' }, count: 4 },
      { request: { mode: 'search_many', needle: 'fixturelookup\nabsent' }, count: 4 },
      { request: { mode: 'read_component', needle: 'fixture' }, count: 8 },
      { request: { mode: 'read_state_machine', needle: 'fixture' }, count: 8 },
      { request: { mode: 'search_sensitive', needle: '__MISSING__' }, count: 0 },
      { request: { mode: 'snapshot', filters: { variants: ['ASDL'], implementation_oids: [''] } }, count: 2 },
    ];
    for (const c of cases) {
      c.request.filters = { kinds: ['method', 'process'], ...c.request.filters };
      const raw = await client.request(c.request) as NativeResponse;
      observations.push({ request: c.request, raw });
      await writeFile(join(directory, 'detached-state-archives.json'), JSON.stringify(observations, null, 2) + '\n');
      assert.equal(raw.status, 'ok', JSON.stringify(raw));
      const data = decodeResponse(raw); assert.deepEqual(data.errors, []);
      assert.equal(data.documents.length, c.count, 'Detached archive mode ' + c.request.mode);
      assert.ok(data.documents.every(d => d.text === '' || d.text === 'FixtureLookup := InputSignal;'));
      if (c.count === 8) {
        assert.equal(data.documents.filter(d => d.text === '').length, 4, 'Absent Methods must not get fabricated empty bodies');
        assert.equal(new Set(data.documents.map(d => d.member_id)).size, 2);
        assert.equal(new Set(data.documents.map(d => d.variant)).size, 2);
        assert.equal(new Set(data.documents.map(d => d.implementation_oid)).size, 2);
      }
    }
    return { cases: cases.length, passed: true, boundary: 'Detached SGClass shallow copy and new code/archive containers; production scan/filter/emit code unchanged. Fixture bodies are synthetic and not compiled or stored in ASCET.' };
  } finally { await client.close(); }
}
