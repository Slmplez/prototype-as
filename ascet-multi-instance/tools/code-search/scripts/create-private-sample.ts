import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { mkdir, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { ROOT, JsonLineClient, validateNativeResponse } from '../src/bridge.js';

const directory = join(ROOT, 'experiments/private-sample'); await mkdir(directory, { recursive: true });
const script = `[:sampleDb :sampleMode :sampleInput | sampleDb handleExceptionsIn: [
 | sampleKey sampleComponent sampleDiagram sampleExisting sampleComment sampleLiteral |
 sampleDb location asLowercase = 'e:\\repo\\ascet\\analysis\\search-tools-acceptance\\2026-10-02\\agent-a\\data\\database\\agent-a' ifFalse: [sampleDb error: 'PRIVATE_SAMPLE_DATABASE_GUARD'].
 sampleKey := ((sampleDb library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search) detect: [:candidate |
  | item | item := candidate getObjectIfUndefined: [:unused | nil].
  item notNil and: [item isValidObject and: [item isContainer not and: [item isSmClass not and: [item specifications anySatisfy: [:spec | spec isBdSpecification]]]]]].
 sampleComponent := sampleKey getObjectIfUndefined: [:unused | nil].
 sampleExisting := sampleComponent privateSpecifications detect: [:s | s specificationName = 'SearchToolsPrivateAcceptance'] ifNone: [nil].
 sampleExisting isNil ifTrue: [
  sampleDiagram := sampleComponent getAPIHandle addPrivateDiagram: 'SearchToolsPrivateAcceptance'.
  sampleComment := sampleDiagram placeComment: 'SearchToolsPrivateMarker_20261002' location: (Point x: 20 y: 20) hierarchy: nil.
  sampleLiteral := sampleDiagram placeLiteralString: '987654.125' location: (Point x: 40 y: 60) hierarchy: nil.
  sampleDiagram storeToCache. sampleDb commitDatabase.
 ] ifFalse: [sampleDiagram := sampleExisting getAPIHandle].
 sampleComponent getAPIHandle getOID, '/', sampleDiagram specification sourceKey globalIdString
 ] ifFail: [:sampleError | 'PROBE_ERROR: ', sampleError printString, ' ', sampleError messageText]]`;
const source = join(directory, 'create-private.st'), binary = join(directory, 'create-private.exe'); await writeFile(source, script);
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), ['/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll', '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', '/out:' + binary, '/resource:' + source + ',snapshot.st', join(ROOT, 'CodeSearchBridge.cs')], { windowsHide: true });
const client = new JsonLineClient({ command: binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: '32631' }, timeoutMs: 90000 });
try { const raw = validateNativeResponse(await client.request({ mode: 'snapshot' })); assert.match(raw.payload, /^[0-9a-z]{29}\/[0-9a-z]{29}$/i); await writeFile(join(directory, 'created.json'), JSON.stringify(raw,null,2)); console.log(raw.payload); } finally { await client.close(); }
