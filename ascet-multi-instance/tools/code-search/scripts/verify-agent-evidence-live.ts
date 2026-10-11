import assert from 'node:assert/strict';
import { execFile } from 'node:child_process';
import { promisify } from 'node:util';
import { appendFile, mkdir, readFile, writeFile } from 'node:fs/promises';
import { join, resolve } from 'node:path';
import { pathToFileURL } from 'node:url';
import { performance } from 'node:perf_hooks';
import { ROOT } from '../src/bridge.js';
import { agentToolRequest, type AgentToolName } from '../src/agent-tools.js';

assert.ok(process.argv[2], 'Provide a candidate CLI package');
const packaged = resolve(process.argv[2]);
const directory = resolve(process.argv[3] ?? join(ROOT, 'experiments/agent-evidence-live', new Date().toISOString().replace(/[:.]/g, '-')));
const runFile = promisify(execFile);
const { AgentToolClient } = await import(pathToFileURL(join(packaged, 'dist/src/index.js')).href) as typeof import('../src/index.js');
await mkdir(directory, { recursive: true }); await writeFile(join(directory, 'requests.jsonl'), '');
const report: any = { status: 'running', packaged, directory, started_utc: new Date().toISOString(), steps: [],
  boundary: 'Fresh isolated ASCET restart, Database open only before first CLI call; no source snapshot or warmup before cold measurements. Serial packaged adapter calls through parsed JSONL. Debug timings identify native/setup/matching costs; cold model load and CLI startup remain separate from warm samples.' };
const save = () => writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
let launched = false;
const client = new AgentToolClient({ command: process.execPath, args: [join(packaged, 'dist/src/cli.js'), '--agent'], timeoutMs: 90_000,
  env: { ...process.env, ASCET_CODE_SEARCH_PORT: '32631', ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' } });
async function lifecycle(action: 'start' | 'finish') {
  const result = await runFile(process.execPath, [join(ROOT, 'dist/scripts/agent-evaluation-lifecycle.js'), action, directory],
    { windowsHide: true, timeout: 60_000, maxBuffer: 4 * 1024 * 1024 });
  await appendFile(join(directory, 'driver.log'), result.stdout + result.stderr);
}
async function call(name: string, tool: AgentToolName, args: Record<string, unknown>, expected = 'ok') {
  const start = performance.now(), response: any = await client.call(tool, args), ms = performance.now() - start;
  const row = { name, tool, request: agentToolRequest(tool, args), response, ms, bytes: Buffer.byteLength(JSON.stringify(response)) };
  await appendFile(join(directory, 'requests.jsonl'), JSON.stringify(row) + '\n');
  report.steps.push({ ...row, response: undefined, status: response.status, timings: response.debug?.timings }); await save();
  assert.equal(response.status, expected, JSON.stringify(response)); assert.ok(row.bytes <= 128 * 1024);
  return response;
}
const answer = (ref: string) => JSON.stringify({ outcome: 'located', answer: 'Complete saved implementation read', evidence_refs: [ref], missing_evidence: [] });
try {
  await lifecycle('start'); launched = true;
  const component = await call('cold_catalog', 'ascet_code_find', { target: 'components', name: 'AEB_State_Machine', match: 'exact', debug: true });
  assert.equal(component.total_count, 1);
  await call('cold_global_search', 'ascet_code_search', { query: 'AEBLockTime', mode: 'identifier', group_by: 'object', limit: 20, debug: true });
  await call('first_scoped_search', 'ascet_code_search', { query: 'AEBLockTime', mode: 'identifier', in: { component: component.results[0].ref }, debug: true });
  const cases = [
    { name: 'identifier', query: 'AEBLockTime', mode: 'identifier' },
    { name: 'literal', query: 'return' },
    { name: 'absent', query: '__ASCET_EVIDENCE_ABSENT_7db19__' },
    { name: 'batch', query: ['AEBLockTime', 'AEB_FxTarPT', 'C_AEB_AXCDeadZonePos'], mode: 'identifier' },
    { name: 'regex', query: '\\bAEBLockTime\\b', mode: 'regex' },
    { name: 'broad', query: 'set' },
    { name: 'scoped', query: 'AEBLockTime', mode: 'identifier', in: { component: component.results[0].ref } }
  ];
  for (let round = 0; round < 7; round++) {
    const freshScope = await call('scope_refresh', 'ascet_code_find', { target: 'components', name: 'AEB_State_Machine', match: 'exact' });
    for (const { name, ...query } of round % 2 ? [...cases].reverse() : cases) {
      await call((round === 0 ? 'first_query/' : 'warm/') + name, 'ascet_code_search', {
        ...query, ...(name === 'scoped' ? { in: { component: freshScope.results[0].ref } } : {}), group_by: 'object', limit: 20, debug: true
      });
    }
    console.log(JSON.stringify({ event: 'profile_round', round: round + 1 }));
  }
  client.beginTask();
  const found = await call('scoped_method', 'ascet_code_find', { component: 'DBR_Force2Pressure', name: 'init', match: 'exact' });
  assert.equal(found.total_count, 1);
  const ref = found.results[0].ref, requirements = { complete_text_read: true, scoped_text_read: true, complete_code_refs: [ref] };
  assert.equal(client.validateAnswer(answer(ref), requirements).valid, false);
  await call('partial_lines', 'ascet_code_read', { ref, lines: { start: 1, end: 1 }, if_unchanged: true });
  assert.equal(client.validateAnswer(answer(ref), requirements).valid, false);
  await call('complete_method', 'ascet_code_read', { ref, if_unchanged: true });
  assert.equal(client.validateAnswer(answer(ref), requirements).valid, true);
  const repaired = await client.completeAnswer('```json\n' + answer(ref) + '\n```', async () => answer(ref), requirements);
  assert.equal(repaired.status, 'accepted'); assert.equal(repaired.attempts.length, 2);
  report.scripted_repair = repaired;
  client.beginTask();
  assert.equal(client.validateAnswer(answer(ref)).valid, false);
  // Consume an oversized saved Header through the exported adapter and verify full-read proof.
  const oracle = JSON.parse(await readFile(join(ROOT, 'experiments/cli-optimization/2026-10-02T18-45-19-195Z/before-snapshot.json'), 'utf8')).data;
  const largest = oracle.documents.filter((d: any) => d.kind !== 'diagram').sort((a: any, b: any) => b.text.length - a.text.length)[0];
  assert.ok(Buffer.byteLength(largest.text) > 128 * 1024);
  const header = await call('header_find', 'ascet_code_find', { component: largest.component_path, match: 'exact',
    in: { kind: largest.kind, variant: largest.variant, ...(largest.member_name ? { member: largest.member_name } : {}),
      ...(largest.implementation_oid ? { implementation: largest.implementation_oid } : {}) } });
  assert.equal(header.results.length, 1);
  const headerRef = header.results[0].ref;
  let page = await call('header_read', 'ascet_code_read', { ref: headerRef, if_unchanged: true });
  assert.equal(page.has_more, true);
  let pages = 1, text = page.code;
  while (page.has_more) {
    assert.equal(client.evidence.get(headerRef)?.complete_text, false); assert.ok(pages < 100);
    page = await call('header_page', 'ascet_code_read', { cursor: page.next_cursor }); text += page.code; pages++;
  }
  assert.equal(text, largest.text);
  assert.equal(client.evidence.get(headerRef)?.complete_text, true); report.header_pages = pages;
  const warm = report.steps.filter((s: any) => s.name.startsWith('warm/'));
  report.performance = { goal_ms: 500, samples: warm.length, above_goal: warm.filter((s: any) => s.ms >= 500).length,
    metrics: Object.fromEntries(cases.map(c => {
      const times = warm.filter((s: any) => s.name === 'warm/' + c.name).map((s: any) => s.ms).sort((a: number, b: number) => a - b);
      return [c.name, { samples: times.length, median_ms: (times[2] + times[3]) / 2, max_ms: times.at(-1) }];
    })) };
  report.correctness_status = 'passed';
} catch (error) { report.correctness_status = 'failed'; report.error = error instanceof Error ? error.stack : String(error); process.exitCode = 1; }
finally {
  await client.close(); report.status = 'recorded'; report.completed_utc = new Date().toISOString(); await save();
  if (launched) {
    try { await lifecycle('finish'); report.closeout = JSON.parse(await readFile(join(directory, 'closeout.json'), 'utf8')); }
    catch (error) { report.cleanup_error = String(error); process.exitCode = 1; }
    await save();
  }
  console.log(JSON.stringify({ directory, correctness: report.correctness_status, error: report.error, performance: report.performance, closeout: report.closeout?.status }, null, 2));
}
