/** Export actual, independently verified requests/results for every supported search mode and option. */
import assert from 'node:assert/strict';
import { mkdir, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { performance } from 'node:perf_hooks';
import { Bridge, JsonLineClient, ROOT } from '../src/bridge.js';
import { decodeResponse } from '../src/protocol.js';
import type { ContextBlock, ErrorResponse, LineMatch, Query, SearchDocument, SearchRequest, SearchResponse } from '../src/types.js';
import { checkAdvanced } from './advanced-oracle.js';
import { fingerprint } from './oracle.js';

const text = 'AEB_FxTarPT = 250000;\nAEB_LDMSelectedControllerPT = LDMSelectedController_None;';
const dotPattern = 'AEB_FxTarPT = 250000;.*?LDMSelectedController_None;';
const prefix = '\\bAEB_EngTrqRedActive[A-Za-z_0-9]*\\b';
const cases: { id: string; title: string; note: string; request: SearchRequest; member?: string; empty?: boolean }[] = [
  { id: 'text', title: '普通文本子串搜索', note: '匹配输入的连续文字；可以命中长变量名中的一部分。',
    request: { query: 'AEB_FxTarPT', mode: 'text', case_sensitive: true }, member: 'calc' },
  { id: 'identifier', title: '完整标识符出现位置', note: '按 C/ESDL 标识符边界匹配；不把 C_AEB_FxTarPT 中的子串算作 AEB_FxTarPT。仍会搜索注释/字符串，不是语义引用分析。',
    request: { query: 'AEB_FxTarPT', mode: 'identifier_occurrence', case_sensitive: true }, member: 'calc' },
  { id: 'regex', title: '正则搜索多个指定名字', note: '| 表示二选一；\\b 限定词边界。JSON 中的反斜杠需要写成双反斜杠。',
    request: { query: '\\b(?:AEB_FxTarPT|C_AEB_FxTarPT)\\b', mode: 'regex', case_sensitive: true }, member: 'calc' },
  { id: 'regex_prefix', title: '正则实现通配式前缀匹配', note: '匹配 AEB_EngTrqRedActive 后跟任意个标识符字符，可同时找到 _B 和 K1_B 两个名字；不做拼写纠错。',
    request: { query: prefix, mode: 'regex', case_sensitive: true }, member: 'calc' },
  { id: 'multiline_text', title: '跨行代码片段：字面文本', note: 'multiline=true 允许换行；统一 CR/CRLF/LF 后匹配，其他空格必须一致。',
    request: { query: text, mode: 'text', multiline: true, case_sensitive: true }, member: 'init' },
  { id: 'multiline_regex', title: '跨行代码片段：允许不同空白', note: '\\s* 可匹配空格及换行；本查询不需要 dotall。',
    request: { query: 'AEB_FxTarPT\\s*=\\s*250000;\\s*AEB_LDMSelectedControllerPT\\s*=\\s*LDMSelectedController_None;', mode: 'regex', multiline: true, case_sensitive: true }, member: 'init' },
  { id: 'dotall', title: '跨行正则：点号跨越换行', note: 'multiline=true 允许跨行；dotall=true 使 .*? 里的点号也匹配换行。',
    request: { query: dotPattern, mode: 'regex', multiline: true, dotall: true, case_sensitive: true }, member: 'init' },
  { id: 'dotall_off', title: '对照：关闭 dotall', note: '同一真实库中，此表达式关闭 dotall 后没有命中。multiline 本身不会改变点号含义。',
    request: { query: dotPattern, mode: 'regex', multiline: true, dotall: false, case_sensitive: true }, empty: true },
  { id: 'context', title: '返回命中前后文', note: '这里要求前 2 行、后 1 行；窗口会在文档边界截齐，重叠窗口合并。',
    request: { query: 'C_AEB_FxTarPT', mode: 'identifier_occurrence', case_sensitive: true, context_before: 2, context_after: 1 }, member: 'calc' },
  { id: 'case_insensitive', title: '忽略大小写', note: '默认不区分大小写；本例明确设为 false，用小写输入查到实际大写变量。',
    request: { query: 'aeb_fxtarpt = 250000;', mode: 'text', case_sensitive: false }, member: 'init' },
  { id: 'case_sensitive', title: '对照：严格区分大小写', note: '同一小写查询开启 case_sensitive 后，在当前库没有命中。',
    request: { query: 'aeb_fxtarpt = 250000;', mode: 'text', case_sensitive: true }, empty: true },
  { id: 'batch', title: '一次请求搜索多个变量和代码片段', note: '每个 query 独立返回结果；可混用三种模式，不要求同一个方法同时包含所有 query。',
    request: { queries: [
      { id: 'variable', query: 'AEB_FxTarPT', mode: 'identifier_occurrence', case_sensitive: true },
      { id: 'prefix', query: prefix, mode: 'regex', case_sensitive: true },
      { id: 'init_graph', query: 'AEBLockTime = 0.0;', mode: 'text', case_sensitive: true },
    ], context_before: 1, context_after: 1 }, member: 'calc' },
  { id: 'shared', title: '共享结果格式', note: '搜索含义不变；results[i].match_set 指向 match_sets，前后文从同索引 context_sets 取。',
    request: { query: 'C_AEB_FxTarPT', mode: 'identifier_occurrence', case_sensitive: true, context_before: 2, context_after: 1, result_format: 'shared' }, member: 'calc' },
  { id: 'star_literal', title: '对照：普通文本中的星号', note: 'text 不将 * 当作通配符。此写法没有命中；要查这个前缀，使用上面的 regex_prefix。',
    request: { query: 'AEB_EngTrqRedActive*', mode: 'text', case_sensitive: true }, empty: true },
];

const directory = join(ROOT, 'samples');
await mkdir(directory, { recursive: true });
const observations: { id: string; title: string; note: string; request: SearchRequest; elapsed_ms: number; response: SearchResponse | ErrorResponse;
  selected?: { query_id: unknown; query: string; hit: SearchDocument; matches: LineMatch[]; context?: ContextBlock[] }[]; correct?: boolean }[] = [];
const report: Record<string, unknown> = { started_utc: new Date().toISOString(),
  scope: 'All three public search modes, multiline text/regex, dotall, context, case sensitivity, batch and shared format; real live ASCET data only',
  timing_boundary: 'Client request through complete response JSON received and parsed; first request includes Node/C# startup; already loaded ASCET',
  observations };
const stampedPath = join(directory, 'search-modes-' + new Date().toISOString().replace(/[:.]/g, '-') + '.json');
const save = () => writeFile(stampedPath, JSON.stringify(report, null, 2) + '\n');

async function snapshot() {
  const bridge = new Bridge();
  try { const raw = await bridge.request({ mode: 'snapshot' }); const decoded = decodeResponse(raw); assert.deepEqual(decoded.errors, []); return { raw, decoded }; }
  finally { await bridge.close(); }
}

try {
  const before = await snapshot();
  report.database = before.raw.database; report.ascet_pid = before.raw.ascet_pid;
  const client = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js')], timeoutMs: 40_000 });
  try {
    for (const item of cases) {
      const request: SearchRequest = { ...item.request, id: item.id, expected_database: before.raw.database };
      const started = performance.now(), response = await client.request(request) as SearchResponse | ErrorResponse;
      const row: typeof observations[number] = { ...item, request, response, elapsed_ms: performance.now() - started };
      observations.push(row); await save();
      assert.equal(response.status, 'ok', JSON.stringify(response));
      assert.equal(response.complete, true);
      assert.equal(response.database, before.raw.database); assert.equal(response.ascet_pid, before.raw.ascet_pid);
      const queries: Query[] = item.request.queries ?? [item.request as Query];
      const results = 'searches' in response ? response.searches : [response];
      assert.equal(queries.length, results.length);
      row.selected = [];
      for (let i = 0; i < results.length; i++) {
        const result = results[i];
        checkAdvanced(result, before.decoded.documents, queries[i], item.request.context_before ?? 0, item.request.context_after ?? 0);
        if (item.empty) { assert.equal(result.matched_documents, 0); continue; }
        const isGraph = queries[i].id === 'init_graph';
        const target = isGraph ? 'AEB_State_Machine' : 'AEB_RedEngTorque';
        const member = isGraph ? 'init' : item.member;
        const hit = result.results.find(d => d.component_path.endsWith('\\' + target) && d.member_name === member && d.implementation_oid === '' && ['ASDL', 'BD'].includes(d.variant));
        assert.ok(hit, 'Expected real example absent: ' + item.id);
        const matches = hit.matches ?? result.match_sets![hit.match_set!];
        const context = hit.context ?? result.context_sets?.[hit.match_set!];
        row.selected.push({ query_id: queries[i].id ?? null, query: queries[i].query, hit, matches, context });
      }
      row.correct = true; await save();
    }
  } finally { await client.close(); }
  const after = await snapshot();
  assert.equal(after.raw.database, before.raw.database); assert.equal(after.raw.ascet_pid, before.raw.ascet_pid);
  assert.equal(fingerprint(after.decoded), fingerprint(before.decoded));
  report.source_fingerprint = fingerprint(before.decoded); report.model_stable = true; report.correctness_passed = true;
  await save();
  await writeFile(join(directory, 'search-modes-live.json'), JSON.stringify(report, null, 2) + '\n');
  await writeFile(join(directory, 'search-modes-requests.jsonl'), observations.map(r => JSON.stringify(r.request)).join('\n') + '\n');
  const md = ['# ASCET 代码搜索：真实模式示例', '', `数据库：\`${before.raw.database}\`；验证时间：${report.started_utc}（UTC）。`, '',
    '真正的 mode 只有 text、identifier_occurrence、regex。其余是组合选项。本文件所有命中均由本次实时请求得到，并与独立全量正文扫描逐位置、正文、metadata、context 核对，前后模型指纹一致。', '',
    '各例列出一个真实命中文档，完整全库结果在 search-modes-live.json 中，没有截断实际返回。每个结果按文档/Implementation/Variant 分开计数；列号从 1 开始，按 Unicode 码点。', '',
    '样本组件完整路径：', '',
    '- `PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Private\\AutomaticBraking\\AEB_RedEngTorque`：ESDL 文本方法。',
    '- `PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Private\\AEB_Core\\AEB_State_Machine`：状态机，附带图形 Init。', ''];
  for (const [i, row] of observations.entries()) {
    md.push(`## ${i + 1}. ${row.title}`, '', row.note, '', '实际请求：', '', '```json', JSON.stringify(row.request, null, 2), '```', '');
    assert.ok(row.response.status !== 'error');
    const results = 'searches' in row.response ? row.response.searches : [row.response];
    md.push(`完整 JSON 请求耗时：${row.elapsed_ms.toFixed(2)} ms。`, '',
      '| 查询 | 命中文档 | 出现次数 |', '| --- | ---: | ---: |',
      ...results.map(r => `| ${String(r.id ?? row.id)} | ${r.matched_documents} | ${r.total_occurrences} |`), '');
    for (const example of row.selected ?? []) {
      const hit = example.hit;
      md.push(`实际命中：\`${hit.component_path}\` → \`${hit.member_name}\`；kind=\`${hit.kind}\`，variant=\`${hit.variant}\`。`, '',
        `document_id：\`${hit.document_id}\`。`, '', '命中行及位置：', '', '```json', JSON.stringify(example.matches, null, 2), '```', '');
      if (example.context) md.push('返回的上下文：', '', '```json', JSON.stringify(example.context, null, 2), '```', '');
      if (hit.match_set !== undefined) md.push(`本命中 match_set=${hit.match_set}，上文从 match_sets[${hit.match_set}] 和 context_sets[${hit.match_set}] 解引用得到。`, '');
    }
  }
  md.push('## 当前不支持的搜索能力', '',
    '- 独立 wildcard/glob 模式：未实现。text 的星号按普通字符匹配，可用 regex 明确表达前缀模式。',
    '- 拼写纠错/编辑距离 fuzzy、自然语言语义代码搜索、变量定义与真实引用解析：未实现。',
    '- 按组件/方法/Implementation/Variant 限定范围及独立名称 find：未实现；名称是命中元数据。',
    '- read 和 read_state_machine 是后续读取操作，不是 mode；Dataset 搜索也不属于本工具。', '',
    '复现：`npm.cmd --prefix tools/code-search run build:ts` 后执行 `node tools/code-search/dist/scripts/examples-search-modes.js`。', '',
    '也可把同目录 search-modes-requests.jsonl 输入常驻 `dist/src/cli.js`；请求固定 expected_database，切库后需要更新。', '');
  await writeFile(join(directory, 'search-modes-live.md'), md.join('\n'));
  console.log(JSON.stringify({ report: stampedPath, verified_requests: observations.length, model_stable: true,
    examples: observations.map(r => ({ id: r.id, elapsed_ms: r.elapsed_ms,
      counts: r.response.status === 'error' ? [] : ('searches' in r.response ? r.response.searches : [r.response]).map(s => ({ documents: s.matched_documents, occurrences: s.total_occurrences })),
      selected: r.selected?.map(e => ({ component: e.hit.component_path.split('\\').at(-1), method: e.hit.member_name, match_set: e.hit.match_set, matches: e.matches, context: e.context })) })) }, null, 2));
} catch (error) { report.correctness_passed = false; report.error = String(error); await save(); throw error; }
