/** Export complete, unedited real Agent captures from the latest passed generic Diagram run. */
import { readFile, writeFile, readdir } from 'node:fs/promises';
import { join, relative } from 'node:path';
import { ROOT } from '../src/bridge.js';
const json = (p: string) => readFile(p, 'utf8').then(JSON.parse);
const save = (p: string, v: unknown) => writeFile(p, JSON.stringify(v, null, 2) + '\n');
const parent = join(ROOT, 'experiments/diagrams');
let report: any, directory = '';
for (const e of (await readdir(parent, { withFileTypes: true })).filter(e => e.isDirectory()).sort((a, b) => b.name.localeCompare(a.name))) {
  const candidate = await json(join(parent, e.name, 'report.json')).catch(() => null);
  if (candidate?.status === 'passed') { report = candidate; directory = join(parent, e.name); break; }
}
if (!report) throw Error('No passed Diagram verification report');
const sourceReport = relative(ROOT, join(directory, 'report.json')).replaceAll('\\', '/');
const examples: any[] = [], seen = new Set<string>();
for (let i = 0; i < report.observations.length; i++) {
  const name = report.observations[i].name;
  if (seen.has(name) || name.startsWith('warm-') || name === 'startup') continue;
  seen.add(name);
  const record = await json(join(directory, String(i + 1).padStart(3, '0') + '-' + name + '.json'));
  examples.push({ scenario: name, tool: record.request.operation === 'find' ? 'ascet_code_find' : record.request.operation === 'read' ? 'ascet_code_read' : 'ascet_code_search',
    source_report: sourceReport, request: record.request, response: record.response });
}
await save(join(ROOT, 'AGENT_JSON_EXAMPLES.json'), {
  description: '当前通用 BDE 版本的完整实机请求/返回。图形返回 Diagram 事实清单，文本返回保存源码，无省略。',
  session_note: '已结束会话的原始返回；ref/cursor 不能在新会话中复用。前置 find/search 与后续 read 通过真实返回的 ref 关联。',
  source_report: sourceReport, examples,
});
const state = examples.find(e => e.scenario === 'state-batch-read');
await save(join(ROOT, 'samples/AEB_State_Machine.complete.agent.json'), state.response);
await save(join(ROOT, 'samples/AEB_State_Machine.complete.example.json'), {
  source_report: sourceReport, discovery: examples.find(e => e.scenario === 'state-members'), request: state.request, response: state.response,
});
console.log(JSON.stringify({ examples: examples.length, state_members: state.response.returned_count, source_report: sourceReport }));
