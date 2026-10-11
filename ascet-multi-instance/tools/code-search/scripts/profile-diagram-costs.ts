import assert from 'node:assert/strict';
import { execFileSync } from 'node:child_process';
import { mkdir, readFile, writeFile } from 'node:fs/promises';
import { dirname, join } from 'node:path';
import { Bridge, ROOT } from '../src/bridge.js';

const manifest = join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json');
const instance = JSON.parse(await readFile(manifest, 'utf8'));
const identity = JSON.parse(await readFile(join(dirname(manifest), 'process.json'), 'utf8'));
assert.notEqual(instance.port, 32503);
const directory = join(ROOT, 'experiments/diagram-costs', new Date().toISOString().replace(/[:.]/g, '-'));
await mkdir(directory, { recursive: true });
let fixture = await readFile(join(ROOT, 'native-snapshot.st'), 'utf8');
const replacements: [string, string][] = [['@@STATE_READER@@', 'state-source-reader.st'], ['@@GRAPH_READER@@', 'graph-source-reader.st'],
  ['@@BDE_READER@@', 'bde-source-reader.st'], ['@@BDE_AUDIT@@', 'bde-read-audit.st'], ['@@BDE_PREFILTER@@', 'bde-prefilter.st']];
for (const [token, file] of replacements) fixture = fixture.replaceAll(token, await readFile(join(ROOT, file), 'utf8'));
fixture = fixture.replace('graphMatches := selectDiagram value.', `graphMatches := selectDiagram value.
  graphRecords isEmpty ifFalse: [row value: (OrderedCollection new add: '#PROFILE'; add: path; add: spec specificationName;
    add: (diagramPhases at: 1) printString; add: (diagramPhases at: 2) printString; add: (diagramPhases at: 3) printString;
    add: graphMatches printString; add: graphRecords size printString; add: ''; add: ''; yourself)].`);
assert.ok(fixture.includes("add: '#PROFILE'"));
const source = join(directory, 'probe.st'), binary = join(directory, 'probe.exe');
await writeFile(source, fixture);
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
  '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
  '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'), '/out:' + binary,
  '/resource:' + source + ',snapshot.st', join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });
const bridge = new Bridge(90, { command: binary, env: { ...process.env, ASCET_CODE_SEARCH_PORT: String(instance.port) } });
const rounds: unknown[] = [];
try {
  for (let round = 0; round < 5; round++) {
    const raw = await bridge.request({ mode: 'search_insensitive', needle: 'set', include_diagrams: true });
    assert.equal(raw.ascet_pid, identity.pid);
    const fields = raw.payload.split('|'), profiles: unknown[] = [];
    for (let i = 0; i < fields.length - 1; i += 10) if (fields[i] === '#PROFILE') profiles.push({
      path: fields[i + 1], diagram: fields[i + 2], copy_ms: Number(fields[i + 3]), load_ms: Number(fields[i + 4]),
      walk_ms: Number(fields[i + 5]), matches: fields[i + 6] === 'true', records: Number(fields[i + 7]),
    });
    rounds.push({ round, timings: raw.timings, profiles });
  }
  await writeFile(join(directory, 'report.json'), JSON.stringify({ status: 'passed', rounds }, null, 2));
  console.log(JSON.stringify({ directory, rounds }, null, 2));
} finally { await bridge.close(); }
