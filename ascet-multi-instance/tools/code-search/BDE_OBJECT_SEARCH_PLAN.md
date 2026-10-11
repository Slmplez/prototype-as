# BDE 对象命中、连接上下文与局部读取方案

状态：已实现并通过离线及当前数据库实机验证（2026-10-02）。本文保留设计依据，最终 API 以 AGENT_SIMPLE.md、工具 schema 和 BDE_OBJECT_JSON_EXAMPLES.json 为准；测试与限制见 experiments/object-search/REPORT.md。

## 目标与边界

让 Agent 看见“命中了哪个 Diagram 对象、命中什么字段、直接连接到哪里”，并能够按实际身份读取局部图。支持 Element、Operator、Control、Literal、Conversion、Hierarchy、Hierarchy Pin、Comment，以及普通 Diagram 和 State Machine Init。

使用原生采集事实与通用结构规则，不根据组件名称、变量前缀或连线形状推导 ESDL。多跳展开表示图上的连接邻域，不表示数据依赖、调用展开或执行顺序。

本方案不增加持久源码索引、变更监听或实时同步。新查询与首次 read 仍实时读取 ASCET；续页使用带期限的请求快照。实机访问继续串行，调用方继续持有共享锁。

## 已完成的内部改动

1. `diagrams.ts::diagramListing` 生成与 search_spans 对齐的私有 diagram_fields，保留每个可搜索字段所属的 Hierarchy、节点、Pin 和字段名称。
2. `matcher.ts` 在对象模式下保留 field_indices；分组直接使用字段来源，不从渲染字符串猜对象。
3. `search.ts::searchWithSources` 在内部传递候选 diagrams，供对象投影和连接预览使用。
4. `object-pages.ts` 在分页前完成对象归并，复用已有分页选择器；occurrence 行为保留。
5. `agent-session.ts::Reference` 增加 scope/node_id 选择器及发现分组，局部读取检查整张 Diagram 版本。

## 1. 字段来源与对象归并

内部字段元数据如下；start/end 在同序号 search_spans 中：

```ts
interface DiagramField {
  scope: string;
  owner:
    | { type: 'node'; node_id: number; pin_id?: number }
    | { type: 'diagram' }
    | { type: 'comment'; snapshot_ordinal: number };
  field: 'name' | 'component_path' | 'pin' | 'sequence_method' | 'comment';
}
```

Component/Diagram 身份由所属文档提供，避免每个字段重复存储。匹配器在扫描字段时记录 field_index，与 columns/ranges 同步；对象投影用当前文档的字段表解析它。不要把 Component/节点身份放进可跨文档复用的文字匹配缓存，避免同文本文档串错对象。

分组键为 `(query_index, document_id, scope, node_id)`，根 Diagram 或无节点注释使用各自的类型分支。document_id 已区分 Component 与 Diagram。

归并规则：

- 一个节点的 name、component_path、所属 Pin 名称和 Sequence Method 命中合并为一个对象结果，保留 matched_fields、原始命中数量以及命中的 Pin 身份。
- matched_fields 只概括命中原因；命中的值必须可见。name 命中复用对象名称；路径/Pin/Sequence/Comment 命中提供对应原始值或围绕命中的有界摘录，避免只返回字段名却看不到关键词。长字段缩短时明确说明，并可通过原有 occurrence 模式取得逐位置证据。
- 同名节点、同一个 Element alias 的多个图形放置实例、不同 Hierarchy 中相同的 node_id 均分别返回。
- 非根 scope 的名称对应拥有它的 Hierarchy 节点，其名称命中和该节点名称命中归并；根 scope 名称归属 Diagram。
- 同一个对象被多个 query 命中，在每个 query 中分别返回，保持当前批量查询语义；它们可以共用同一对象 ref。
- 缺少原生 ID 的 Comment 只在本次快照内按 scope/序号区分，保留重复注释。它返回父 Diagram/Hierarchy 的读取 ref，不把排序号当成跨版本节点身份。
- 已有未知节点保留类型和可读字段，响应继续为 partial；本地投影不能将未知结构包装成完整结果。

## 2. 对象分页与兼容

已新增显式参数 `group_by:"object"`；未提供时沿用当前 occurrence 行为。Agent prompt 已建议 BDE 定位优先使用 object。

对象模式定义：

- BDE 的一个命中单位是“一个 query 命中的一个图形对象”；同一对象的所有字段命中作为整体分页。
- 文本代码仍以文字出现位置为单位，保持其 snippets 行为。混合文本/BDE 查询的 total_hits 是这两种显示单元之和，不能当作纯文字出现次数。
- limit 仍是整批共享预算，默认 50、最大 200；在对象模式下按上述显示单元分配。查询间继续轮流分配。
- `total_hits/returned_hits` 在对象模式下按显示单元计数；图形 hit 的 `occurrences` 记录归并前次数，仅大于 1 时需要显示。
- 模式保存在快照中，cursor 续页不允许更换；同一个对象在同一个 query 的页序列里只出现一次。
- 128 KiB 页面预算继续生效。先缩减连接预览和非命中字段，再减少对象数量；保留对象身份、命中证据及必要的截断说明。最小可读结果仍放不下时明确报错。

这样显式选择新模式后才改变计数单位，旧调用不会悄悄从“50 次文字命中”变成“50 个对象”。不要增加大量必填参数或重复的完整性状态。

## 3. 连接上下文

使用已经采集的 DiagramBody，在本次请求内构建：

- `(scope,node_id) → node/pins`
- `(scope,pin_id) → owner/input_edges/output_edges`
- Hierarchy boundary 两端的明确映射

索引建立成本为 O(nodes + pins + connections + boundaries)。使用 Map 同时替代现有 renderer 中反复 filter/find 的查找。连接索引只在本次请求或其续页快照内存在，不做跨请求源码缓存。

默认规则：

- 节点名称或组件路径命中：展示该节点直接相连的边。
- 只有 Pin/Sequence 字段命中：优先展示命中 Pin 的边，避免整实例所有接口涌入。
- 每个对象默认最多展示 6 条连接；incoming/outgoing 交替取样，最终按稳定身份排序。缺失部分明确返回 `omitted_connections`。
- 连接端点显示对象名、原始 Pin 名称和可继续读取的 ref。非根层级显示 hierarchy；同名对象由 ref 区分。
- 同一页中两个命中对象共享一条边时，节点身份与邻接表可以内部共用；不要以“避免重复”为由让任意一个对象失去必要连接证据。
- boundary 作为单独的层级映射展示，不压平成一条推测的直接连接。首次实现只展开当前层级内的邻域；Agent 可沿 boundary 对端 ref 继续读取。
- Sequence 是具体 Pin 的 Method/number 注解，不能当成完整执行顺序。数字 connection type 只在详细结构中保留，未确认含义时不改写成语义标签。
- 注释不根据画面距离猜测关联节点。孤立节点返回空连接集合，而不是读取失败。

搜索响应中，完整 Component 路径、Diagram 名称与 diagram_methods 放在 Diagram 外层一次；图形对象结果放在 hits。文本结果继续使用 snippets。

## 4. 局部 ref 与 read

现有文档 ref 保留整份文本或整张 Diagram 的含义。新增对象 ref 的内部身份为：

`Database + ASCET PID + Component OID + Diagram source OID + source_sha256 + scope + node_id`

可为有原生 ID 的 Pin 增加带 pin_id 的选择器。对外 ref 继续是不可解释的临时字符串，Agent 无需拼接 ID。

对象读取调用：

```json
{
  "operation": "read",
  "ref": "<搜索返回的对象 ref>",
  "depth": 1,
  "direction": "both",
  "if_unchanged": true
}
```

- depth 默认 1，可取 0/1/2；0 读取对象及其 Pin，1 加直接邻接对象，2 再扩展一层。
- direction 为 incoming/outgoing/both，默认 both，仅指原生连接方向。多跳展开不推断某个输入对实例内部输出的影响。
- Diagram ref 仍读取整图；文本 ref 使用已有 code 返回。depth/direction 对文本或整图 ref 不适用时明确拒绝，不静默忽略。
- 局部对象 ref 始终校验发现时的整张 Diagram 版本。即使同编号仍存在，版本改变也返回 SOURCE_CHANGED 并要求重新发现，避免误读删除后重用的 node_id。`if_unchanged` 的可选宽松行为只保留给原有文档 ref。
- 缺少原生 ID 的注释不发放这种局部身份；其父级 ref 用于继续读取。
- 第一期继续使用 `readDocuments`，同 Component 的批量对象 ref 共用一次新鲜 read_component。取得 Diagram 后在 TypeScript 中裁出邻域；**返回局部不意味着原生层已经局部读取**。
- 默认局部返回可读对象、Pin、连接和必要的 boundary；`include_graph:true` 增加相同局部范围的原始结构，scope 为 local。返回父级 diagram_ref，供需要整图时使用。
- 局部读取也受输出预算约束，建议每页最多 100 个节点、200 条边及 128 KiB。超出时提供 next_cursor；续页只复用此次 read 的版本快照，不重新混入变化后的模型。
- read cursor 与 search cursor 必须在已验证签名/所属会话后按用途分派。更新 read 的工具 schema 允许 cursor 续页；批量读取项可各自给出局部续页 token，仍只保留一个顶层 status。
- 队列、TTL、淘汰、引用数预算、快照字节预算必须覆盖新增节点/邻居 refs 和图数据。将来只有性能剖析确认 read_component 是主要成本时，再考虑新增 Smalltalk 局部读取入口。

## 5. 返回结构示意

下例展示精简的 Diagram 结果项；完整真实响应见 BDE_OBJECT_JSON_EXAMPLES.json。连接事实为 AEB_dFxTar 的 node 39/pin 79 连接 node 17/pin 27。实际结果还带 Pin ID 等字段；占位 ref 不能实际调用。

```json
{
  "ref": "<diagram-ref>",
  "kind": "diagram",
  "component_path": "PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Private\\AutomaticBraking\\AEB_dFxTar",
  "diagram": "Main",
  "diagram_methods": [
    { "name": "AEBdFxTar", "kind": "method" },
    { "name": "calc", "kind": "method" }
  ],
  "hits": [
    {
      "ref": "<node-39-ref>",
      "kind": "element",
      "name": "C_AEB_AXCDeadZonePos",
      "matched_fields": ["name"],
      "connections": [
        {
          "from_pin": "get/get",
          "to": {
            "ref": "<node-17-ref>",
            "kind": "element",
            "name": "AxCtrlDevDeadZone",
            "pin": "calc/AxCtrlDevDeadZonePos"
          }
        }
      ]
    }
  ]
}
```

命中对象是 source 时使用 from_pin/to；是 target 时使用 from/to_pin。方向不能仅靠自然语言隐含。端点名称重复时 ref 始终区分身份。

## 6. 实现与验收顺序

1. 字段来源、matcher field_index、图结构内部传递。保证现有 occurrence 模式的结果和数量不变；只增加内部信息。
2. 对象归并与分页。验证每个原始命中恰好归属一个组，同名/同 alias 不误合并；cursor 重放和跨页读取保持身份一致。
3. 连接索引和有界预览。对比未筛选图：每条返回边必须在原图中存在，所有未返回的候选边都计入遗漏数；避免引入无关 Pin 的连线。
4. 局部 ref、实时读取、层级边界和续页。验证邻域与独立 BFS 结果相同，版本变化、删除/ID 重用、超限及过期不产生错误对象。
5. 同步工具 schema、Agent prompt、完整 JSON 示例和测试报告；调用方再启用 group_by:object。

复用本轮 65 张 Diagram 的真实采集与 120 组生成图，补充：同节点多字段/多 query、Pin 专属命中、根/子 Hierarchy 名称归并、重复无 ID 注释、宽泛正则、高扇出续页、局部图修改、跨页版本一致性和内存淘汰。

分别报告匹配正确性、返回字节数、Agent 为定位同一事实需要的读取次数、原生读取耗时、TypeScript 投影耗时、总时延。输出缩短与搜索提速是不同验收项；本方案不能预先保证全库低于 0.5 秒。

## 最终实现补充

- 私有 DiagramField 与 search_spans 按序对齐，字段跨度不重复存储。matcher 的 field_indices 仅内部传递。
- group_by 默认 occurrence；对象模式已可显式启用。Agent prompt 建议 BDE 定位优先 object。
- 有原生 ID 的节点及连接端点使用节点 ref；Pin 通过所属节点与 pin_id 定位，不额外增加 Pin ref 类型。
- 局部输出每页同时受 100 节点、200 连接、300 总记录、128 KiB 限制；graph.scope:local 是该页片段。
- 同一批来自不同搜索的 ref 分别保留其发现身份、到期时间和局部快照。read 不新建发现分组，也不延长 TTL。
- 宽泛词命中归并后对象数会下降，但连接预览可能使输出字节数上升；不把命中数减少等同于响应更小。
- 首次实机审计出现一次保存图形结构变化异常，增强诊断后未复现。详见报告中的审计限制，不能以之后通过覆盖首次失败。
