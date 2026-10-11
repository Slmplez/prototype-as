import { execFileSync } from 'node:child_process';
import { writeFileSync } from 'node:fs';
import { join } from 'node:path';
import { JsonLineClient, ROOT } from '../src/bridge.js';
import type { NativeResponse } from '../src/types.js';

const directory = join(ROOT, 'experiments/state-machine-read-20261001');
const executable = join(directory, 'InspectGraph.exe');
const xml = process.argv[3] === '--xml';
execFileSync(join(process.env.WINDIR!, 'Microsoft.NET/Framework/v4.0.30319/csc.exe'), [
  '/nologo', '/target:exe', '/platform:x86', '/r:System.Core.dll', '/r:System.Web.Extensions.dll',
  '/r:' + (process.env.ASCET_API_DLL ?? 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'),
  '/out:' + executable, '/resource:' + join(directory, xml ? 'inspect-graph-xml.st' : 'inspect-graph.st') + ',snapshot.st', join(ROOT, 'CodeSearchBridge.cs'),
], { windowsHide: true });
const client = new JsonLineClient({ command: executable });
try {
  const raw = await client.request({ mode: 'snapshot', needle: process.argv[2] ?? '040qm00100001m8714ag81ugur0dk' }) as NativeResponse;
  if (raw.status !== 'ok') throw new Error(JSON.stringify(raw));
  const fields = raw.payload.split('|').slice(0, -1).map(v => v.replace(/%(\d+);/g, (_, n) => String.fromCodePoint(Number(n))));
  if (fields.length % 6) throw new Error('Invalid probe records');
  const records = Array.from({ length: fields.length / 6 }, (_, i) => fields.slice(i * 6, i * 6 + 6));
  const report = { database: raw.database, ascet_pid: raw.ascet_pid, observed_utc: raw.observed_utc, records };
  writeFileSync(join(directory, xml ? 'graph-xml.json' : 'graph-inventory.json'), JSON.stringify(report, null, 2));
  console.log(JSON.stringify({ rows: records.length, records: records.filter(r =>
    !['boundingBox', 'namePosition', 'drawingOrder', 'backgroundColor', 'foregroundColor', 'lineStyle'].includes(r[2])) }, null, 2));
} finally { await client.close(); }
