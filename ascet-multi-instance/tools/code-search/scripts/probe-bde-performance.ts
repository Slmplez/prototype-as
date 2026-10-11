import { execFileSync } from 'node:child_process';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { ROOT, JsonLineClient, validateNativeResponse } from '../src/bridge.js';

const directory = join(ROOT, 'experiments/bde-performance', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
const reader = (await readFile(join(ROOT, 'bde-source-reader.st'), 'utf8'))
 .replace('| bdeRecord ', '| pfClock bdeRecord ')
 .replace('bdeDetachedSource := bdeCopySource', 'pfClock := Time millisecondClockValue. bdeDetachedSource := bdeCopySource')
 .replace('bdeHierarchy := bdeComponent', 'pfCopy := pfCopy + (Time millisecondClockValue - pfClock). pfClock := Time millisecondClockValue. bdeHierarchy := bdeComponent')
 .replace('bdeRecord := [:bdeTag', 'pfBuild := pfBuild + (Time millisecondClockValue - pfClock). bdeRecord := [:bdeTag')
 .replace("bdeWalk valueWithArguments: (Array with: bdeDiagram", "pfClock := Time millisecondClockValue. bdeWalk valueWithArguments: (Array with: bdeDiagram")
 .replace('bdeSelect value ifTrue: [bdePlans', 'pfWalk := pfWalk + (Time millisecondClockValue - pfClock). pfClock := Time millisecondClockValue. bdeSelect value ifTrue: [bdePlans')
 .replace('    ]]\n]', '    ]]. pfEdges := pfEdges + (Time millisecondClockValue - pfClock)\n]');
const script = `[:db :mode :input | db handleExceptionsIn: [
 | pfCopy pfBuild pfWalk pfEdges pfReader pfFilter pfDiagrams pfFields pfHex |
 pfCopy := 0. pfBuild := 0. pfWalk := 0. pfEdges := 0. pfDiagrams := 0. pfFields := 0.
 pfReader := (${reader}). pfFilter := (${await readFile(join(ROOT, 'bde-prefilter.st'), 'utf8')}).
 pfHex := [:bytes | bytes printString].
 (db library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search do: [:key | | component | component := key getObjectIfUndefined: [:unused | nil].
  (component notNil and: [component isValidObject and: [component isContainer not]]) ifTrue: [component specifications do: [:spec |
   (spec isBdSpecification and: [pfFilter value: spec specSourceInternalOrNil value: component value: [:value | value asLowercase includesSubstring: 'set']]) ifTrue: [
    pfDiagrams := pfDiagrams + 1.
    pfReader valueWithArguments: (Array with: spec getAPIHandle with: component with: spec with: pfHex with: [:record | pfFields := pfFields + 1] with: [true] with: spec specSourceInternalOrNil)
   ]]]].
 'DIAGRAMS=', pfDiagrams printString, ' RECORDS=', pfFields printString, ' COPY_MS=', pfCopy printString, ' BUILD_MS=', pfBuild printString, ' WALK_MS=', pfWalk printString, ' EDGES_MS=', pfEdges printString
 ] ifFail: [:error | 'PROBE_ERROR: ', error messageText]]`;
const source = join(directory, 'probe.st'), binary = join(directory, 'probe.exe'); await writeFile(source, script);
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), ['/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll', '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', '/out:' + binary, '/resource:' + source + ',snapshot.st', join(ROOT, 'CodeSearchBridge.cs')], { windowsHide: true });
const client = new JsonLineClient({ command: binary, timeoutMs: 90000 });
try {
 const results = [];
 for (let i = 0; i < 3; i++) results.push(validateNativeResponse(await client.request({ mode: 'snapshot' })));
 await writeFile(join(directory, 'report.json'), JSON.stringify(results, null, 2));
 console.log(JSON.stringify({ directory, results: results.map(r => r.payload) }));
} finally { await client.close(); }
