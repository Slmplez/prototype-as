/** Render the already exported JSON sample for human inspection; never accesses ASCET. */
import { readFile, writeFile } from 'node:fs/promises';
import { join } from 'node:path';
import { ROOT } from '../src/bridge.js';
import type { ReadStateMachineResponse } from '../src/types.js';
import { graphicalStatements } from '../src/graphical.js';

const path = join(ROOT, 'samples/AEB_State_Machine.json');
const sample = JSON.parse(await readFile(path, 'utf8')) as ReadStateMachineResponse;
if (sample.operation !== 'read_state_machine') throw new Error('Not a state-machine bundle');
const output = [
  '# AEB_State_Machine：真实读取样本', '',
  `读取时间：${sample.observed_utc}（UTC）。这是该次请求的导出快照，后续模型修改不会自动更新此文件。`, '',
  `数据库：\`${sample.database}\`。`, '', `组件：\`${sample.component.path}\`。`, '',
  `组件 OID：\`${sample.component.oid}\`。`, '',
  `共 ${sample.coverage.states} 个状态、${sample.coverage.transitions} 条转移、${sample.coverage.state_source_documents} 段文本代码、${sample.coverage.state_binding_documents} 处方法绑定、${sample.coverage.graphical_method_documents ?? 0} 个图形方法文档。`, '',
  '## 完整性', '',
  `- 支持范围的源码读取完整：${sample.source_read_complete}。`,
  `- 槽位绑定解析完整：${sample.binding_resolution_complete}。`,
  `- 包含组件方法体的读取完整：${sample.complete}。`,
  '- 本样本的 trigger、init_trigger 是 ASCET 触发事件入口，其行为由状态机图定义。',
  '- Init/init 的图形节点、GET/SET 端口、连线及方法执行序号见 graphical_bodies；可读赋值是图形模型的派生表达，不是原始 ESDL 或生成 C。',
  '- complete 限定于 state_machine_source_bundle_v2；不含状态转移拓扑、外部组件实例连线、生成代码或未提交编辑缓冲。复杂图形将显式报告 partial。', '',
  '## 方法目录', '',
  '| 名称 | 所属 Specification | ASCET API 类型 | 读取状态 | 绑定位置数 |',
  '| --- | --- | --- | --- | --- |',
  ...sample.methods.map(m => `| ${m.member_name} | ${m.owner_specification} | ${m.api_class} | ${m.body_status} | ${m.binding_document_ids.length} |`), '',
  '## 完整正文与绑定', '',
  '以下按源码文档逐段列出；JSON 样本保留原始换行、哈希和完整定位信息。', '',
];
for (const doc of sample.documents) {
  output.push(`### ${doc.member_name} · ${doc.kind}`, '', `文档身份：\`${doc.document_id}\`。`, '',
    `位置：\`${doc.member_id}\`；逻辑行数：${doc.line_count}。`, '');
  if (doc.binding) {
    const target = sample.methods.find(m => m.member_id === doc.binding!.method_alias);
    output.push(`绑定：\`${doc.binding.method_name}\`，alias：\`${doc.binding.method_alias}\`，类型：\`${target?.api_class ?? 'unresolved'}\`。`, '');
  } else {
    const fence = '`'.repeat(Math.max(3, ...[...doc.text.matchAll(/`+/g)].map(m => m[0].length + 1)));
    output.push(fence + doc.language, doc.text.replace(/\r\n?/g, '\n'), fence, '');
  }
}
await writeFile(join(ROOT, 'samples/AEB_State_Machine.md'), output.join('\n'));
const graph = sample.graphical_bodies.find(g => g.specification_name === 'Init');
if (graph) {
  const init = graph.methods.find(m => m.member_name === 'init')!;
  const statements = graphicalStatements(graph, init.member_id);
  const detail = ['# AEB_State_Machine / Init', '', `只读实测：${sample.observed_utc}。`, '',
    `方法 alias：\`${init.member_id}\`。图源 OID：\`${graph.specification_source_oid}\`。`, '',
    `支持范围内完整：${graph.complete}。`, '', '## 从图形得到的可读赋值', '', '```c',
    ...statements.flatMap(s => [`// sequence ${s.sequence.number}`, s.text]), '```', '',
    '这是图形逻辑的派生表示，不是模型里存储的文本方法，也不是生成的 C。', '',
    '## 端口与连线', '', '| 节点 | 端口 ID | 方向 | 操作 | 参数/返回值 |', '| --- | --- | --- | --- | --- |',
    ...graph.ports.map(p => `| ${graph.nodes.find(n => n.id === p.node_id && n.scope === p.scope)?.element_name || p.node_id} | ${p.id} | ${p.direction} | ${p.operation} | ${p.parameter} |`), '',
    ...graph.connections.map(e => `- ${e.scope}：端口 ${e.from_port} → 端口 ${e.to_port}。`), '',
    '本图中 5 → 7 表示常量 0.0 写入 AEBLockTime；8 是该变量节点的 GET 返回端口，不参与这条赋值连线。', '',
    '组件对外的 getter/MemberGetPort 是另一层接口，可供父级组件图连线；内部变量节点存在 GET 端口，不代表它自动公开为外部接口。旧 AXL 导出的组件 Layout/Interfaces 中确有 AEBLockTime 的 MemberGetPort 和 init 的 MethodPort，但本次实时读取没有导出组件外部布局或所有调用它的父级连线。', '',
    '## 搜索', '', '```json', JSON.stringify({ query: 'AEBLockTime = 0.0;', case_sensitive: true, context_before: 1 }, null, 2), '```', '',
    '命中 kind=graphical_method、member_name=init；用返回的 component_oid/document_id/expected_database 调用 read 可回读同一图形表示。', '',
    '完整模型图、哈希与分段正文见同目录 AEB_State_Machine.json。未知运算节点、嵌套图、歧义连线等返回 partial，不会假造为完整代码。', ''];
  await writeFile(join(ROOT, 'samples/AEB_State_Machine.Init.md'), detail.join('\n'));
}
console.log(join(ROOT, 'samples/AEB_State_Machine.md'));
