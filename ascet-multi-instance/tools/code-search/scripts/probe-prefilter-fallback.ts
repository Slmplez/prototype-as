import { readFile, mkdir, writeFile } from 'node:fs/promises';
import { execFileSync } from 'node:child_process';
import { join } from 'node:path';
import { ROOT, JsonLineClient } from '../src/bridge.js';
const directory = join(ROOT, 'experiments/prefilter-fallback'); await mkdir(directory, { recursive: true });
let index = 0;
let source = (await readFile(join(ROOT, 'bde-prefilter.st'), 'utf8')).replaceAll('pfUncertain := true', () => `pfUncertain := true. prReasons add: '${++index}'`);
for (const expression of ['pfMethod methodName', 'pfMethodAlias', 'pfPortAlias', 'pfPortParameter methodName', 'pfPortParameter parameterName', 'pfPortParameter getAPIHandle getName', 'pfValue asString', 'pfParameter parameterName', 'pfAPI getName', 'pfRepresented getFolderPathName']) {
  source = source.replaceAll('pfMatches value: ' + expression, `pfMatches value: ([prOrigin := '${expression}'. ${expression}] value)`);
}
const script = `[:prDb :prMode :prInput | prDb handleExceptionsIn: [ | prOut prFilter prReasons prOrigin | prOut := WriteStream on: String new. prFilter := (${source}).
 (prDb library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search do: [:prKey | | prClass | prClass := prKey getObjectIfUndefined: [:unused | nil].
 (prClass notNil and: [prClass isValidObject and: [prClass isContainer not]]) ifTrue: [prClass specifications do: [:prSpec |
  prSpec isBdSpecification ifTrue: [prReasons := Set new.
   (prFilter value: prSpec specSourceInternalOrNil value: prClass value: [:candidate | | matched | matched := candidate asLowercase includesSubstring: 'return'. matched ifTrue: [prReasons add: 'HIT: ', candidate, ' FROM ', (prOrigin ifNil: ['special'])]. matched]) ifTrue: [
    prOut nextPutAll: prClass getAPIHandle getFolderPathName; nextPutAll: '/'; nextPutAll: prSpec specificationName; nextPutAll: ': '; nextPutAll: prReasons printString; cr]
  ]]]]. prOut contents] ifFail: [:prError | 'PROBE_ERROR: ', prError messageText]]`;
const file = join(directory, 'probe.st'), binary = join(directory, 'probe.exe'); await writeFile(file, script);
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), ['/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll', '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', '/out:' + binary, '/resource:' + file + ',snapshot.st', join(ROOT, 'CodeSearchBridge.cs')], { windowsHide: true });
const client = new JsonLineClient({ command: binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: '32631' }, timeoutMs: 90000 });
try { const result = await client.request({ mode: 'snapshot' }); await writeFile(join(directory, 'result.json'), JSON.stringify(result,null,2)); console.log((result as any).payload); } finally { await client.close(); }
