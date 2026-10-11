# ASCET Block Diagram agent 工具设计 v0.1

> 对外接口已由 [v0.2：参考 Simulink Agentic Toolkit](E:/Repo/ASCET/docs/block-diagram-agent-tools-v0.2.md) 替代。本文件保留为底层身份、保存、diff 与回撤机制设计；plan/apply 不再是 agent 必须显式执行的流程。

日期：2026-09-28。状态：设计提案，基于本地 ASCET API 包装层与恢复代码的静态分析；尚未进行在线编辑、保存、重开和回撤验证。示例中的对象、ID 和 revision 均为虚构。

## 1. 核心决策

采用 **本地完整保留已读取数据 + agent 按需读取 + 条件补丁 + 修改日志**。不要把原生对象树直接序列化给模型，也不要让模型生成整个图的替换 JSON。

“精确”需要分别定义：

| 保证 | 含义 | 实现条件 |
|---|---|---|
| 精确定位 | 修改的是指定图中的指定图元，而非同名对象 | 作用域、可验证身份、唯一命中 |
| 精确字段修改 | 只接受指定旧值到指定新值的替换 | 写前校验、明确字段白名单、写后读取 |
| 精确 diff | 完整记录声明范围内可观测字段的变化 | 同一覆盖范围、稳定匹配、无读取错误 |
| 精确回撤 | 恢复指定字段的原值，同时保留无关后续修改 | 逆补丁、冲突检查、身份仍有效 |
| 原子批量修改 | 要么全部成功，要么完全不变 | 原生事务或经过验证的替代机制；目前未确认 |
| 身份保持的结构回撤 | 删除后恢复的节点/边仍具有原来的身份和引用 | 原生支持或实测证明；目前未确认 |

默认只提供达到能力要求的操作。接口存在、静态代码支持、在线探针验证通过是三个不同状态。

## 2. 分层与数据规模

```text
Agent
  → 小响应工具：search / read / plan / apply / diff / revert
  → 快照、索引、补丁校验、执行日志（SQLite + 内容寻址文件）
  → .NET Tool API 适配器（单会话串行执行、身份注册表）
  → ASCET 数据库与编辑器

AXL/AMD → 离线只读适配器 → 同一查询/展示模型
```

优先 .NET 适配器，保留原生 long；跨 JSON 边界把标识写为十进制字符串。不要经过可能截断为 int 的 COM dispatch 路径。最终进程位数和运行时由现场 ASCET 安装决定。

SQLite 保存实体版本、邻接表、字段状态、快照、计划与日志；大文本及完整原始响应放内容寻址文件，结果返回 `blob_ref`。仅保存已成功观察到的内容，不能把公共 API 没暴露的字段称为“完整恢复”。现有 `axl_decoder` 可提供离线原始资料和检索索引，但不具备已验证的无损写回能力。

两种性能问题分别处理：

1. **模型上下文体积**：字段投影、局部邻域、分页、长字段独立读取。
2. **原生 RPC 成本**：按图/层级懒加载、一次枚举后建索引、缓存对象关系、批量调度读取。工具分页不代表底层 API 支持分页；第一次仍可能需要完整枚举一个层级。

禁止一次遍历全部数据库作为默认行为。首次返回组件/图概要；用户选择一个图后才枚举图层级。慢扫描返回 `job_ref`，通过状态查询获取进展，不能把未完成扫描报告为空结果。

## 3. 对象模型和身份

图数据拆为 diagram、hierarchy、node、pin、edge、comment、sequence 和 model_ref。图形出现位置与模型定义分开：两个图元可能引用同一个模型元素；修改图元与修改共享定义必须是不同操作。

每个实体至少保存：

```json
{
  "ref": "node:session7:142",
  "kind": "literal",
  "scope": {"database_ref": "db:1", "diagram_ref": "diagram:7", "hierarchy_ref": "hierarchy:root"},
  "identity": {"strength": "session", "graphical_id": "4294967391", "epoch": "session7"},
  "fields": {"literal_text": "10.0"},
  "field_state": {"literal_text": "known", "position": "unread"},
  "entity_revision": "rev:entity:17",
  "provenance": {"source": "ascet_tool_api", "adapter_version": "0.1"}
}
```

- `ref` 是服务生成的不可解释句柄；agent 不应拼接。原生身份、数据库实例、组件、图、层级全部在服务端绑定。
- 数据库实例不能仅凭名称或路径识别：复制、重新打开、恢复备份须换 epoch。图 OID、图元 graphical ID 的范围和跨重开稳定性需要探针验证。
- `identity.strength`：`persistent_verified`、`session`、`snapshot_only`、`ambiguous`。会话断开后 `session` ref 失效；仅快照身份和歧义身份不能用于在线修改。
- pin/comment/edge 没有通用已确认持久 ID。会话对象注册表只有经过身份验证才可写；端点、名称、位置和指纹仅辅助重定位。重复引脚、平行边、相同注释均不能“取第一个”。
- 不以数组下标、名称、坐标或文本行号作为修改身份。重定位返回多个候选时，返回 `AMBIGUOUS_TARGET`。
- `field_state` 区分 `known`、`absent`、`unread`、`unsupported`、`error`。真实 null 只有 `known` 时才是已读值。
- literal 保留原始字符串；`10`、`10.0`、`1e1` 不自动合并。数值解释可另作派生字段，不能替代写前原值。
- sequence 的激活方法、序号和引脚关系独立建模；只读取数据连线不足以判断执行语义。

## 4. 大响应约束

默认每页 30 条、最大 100 条、完整 UTF-8 JSON 响应目标上限 16 KiB、硬上限 64 KiB。邻域默认一跳且限制返回实体数；显式展开最多两跳，更多通过继续查询完成。

读取视图：

| view | 返回内容 | 典型用途 |
|---|---|---|
| `overview` | 层级、已观察数量、覆盖状态 | 初次查看 |
| `entities` | 指定实体和字段 | 编辑前读取 |
| `neighbors` | 指定图元的上下游/引脚/边界引用 | 局部逻辑理解 |
| `text` | 服务端生成的紧凑文本投影 | 类似代码 read 的体验 |
| `blob` | 长文本的分段精确内容 | 大注释或原始详情 |

推荐文本投影：

```text
snapshot=snap:41  diagram=diagram:7  coverage=partial
node:session7:142 literal text="10.0" rev=rev:entity:17
node:session7:155 operator type="ADD" rev=rev:entity:22
edge:session7:31 node:session7:142/pin:1 -> node:session7:155/pin:2
```

它是可读投影，不能反向解析成整图覆盖写入。修改时引用对象 ref 和字段。

所有分页结果带 `snapshot_id`、`scope`、`coverage`、`returned_count`、`has_more`、`next_cursor`、`bytes`。总数尚未确定则返回 `total: null` 和 `total_status: unknown`；不要伪造精确总数。游标绑定快照、查询和字段投影，翻页期间数据不漂移。快照过期返回 `SNAPSHOT_EXPIRED`，不悄悄切到最新数据。

长字段返回长度、hash、`blob_ref` 和明确标记的 preview；预览不允许作为旧值。blob 读取按 Unicode 标量位置分页，返回下一 offset，避免切坏字符；原始字节另存。响应预算裁剪只删除完整记录，并提供后续游标，不截断 JSON。

**查询分页与匹配完整性分离**：plan 的唯一性检查必须遍历其完整候选范围，不能因页面只显示一个结果就声称唯一。搜索未覆盖全部对象时 `coverage.complete=false`。

## 5. 对外工具契约

核心工具六个；session/history/save 是辅助工具，可在 MCP 使用 `bd_search` 等合法工具名注册，文档用点号表示逻辑名称。

| 工具 | 主要输入 | 默认小响应 | 副作用 |
|---|---|---|---|
| `bd.search` | session、scope、query、kind、cursor | 候选 ref、摘要、匹配原因 | 无写入 |
| `bd.read` | snapshot 或 session、refs/scope、view、fields、budget、cursor | 投影、revision、覆盖状态 | 无写入 |
| `bd.plan` | session、base_snapshot、changes、save_policy | plan_id、摘要 diff、前置条件、回撤等级 | 无原生写入 |
| `bd.apply` | plan_id、plan_digest、idempotency_key | change_id、实际 diff 摘要、状态 | 执行计划 |
| `bd.diff` | before_snapshot、after_snapshot 或 change_id、scope、fields、cursor | 字段/拓扑/布局变化 | 无写入 |
| `bd.revert` | change_id、base_snapshot、mode=plan | 逆补丁的 plan_id 与冲突 | 默认只规划；仍由 apply 执行 |
| `bd.session` | action=open/status/refresh/close、数据库/组件/图引用 | 会话、能力、job 状态、脏状态、执行状态 | open/close 不隐式保存 |
| `bd.history` | session、scope、cursor | 修改记录、状态、可回撤性 | 无写入 |
| `bd.save` | action=plan、session、base_snapshot、保存范围 | 保存计划及潜在影响 | 由 apply 执行保存计划 |

`bd.session.status` 必须支持按 change_id / idempotency_key 查询执行结果，解决超时重试。`read(view=blob)` 复用读取工具，不额外暴露全量 dump 工具。搜索可使用模糊匹配；计划必须用已解析的精确 ref。

`read` 中 `snapshot` 和 `session+freshness` 二选一。前者读取不可变快照；后者 `freshness=live` 触发原生读取，`cached` 只读索引并报告采集时间。没有外部写入隔离时，多次 RPC 采集不是一致性快照，必须标记 `consistency=best_effort`。

### 5.1 条件补丁

v0 只开放 `set_field`，白名单为 literal 的 `literal_text` 和图注释的 `comment_text`。不能把模型定义上的 comment 当作图注释。

每个 target 在其绑定作用域必须恰好命中一个存活实体。一个计划最多 50 个字段操作，同一 `(target, field)` 不可重复；相同 before/after 是 no-op，规划时剔除并说明，全部为 no-op 则不产生可执行计划。请求体另设 UTF-8 字节上限（建议 256 KiB），Schema 的字符串长度上限不替代字节限制。

```json
{
  "session_id": "session7",
  "base_snapshot": "snap:41",
  "require": {"isolation": "verified_exclusive", "undo": "exact_fields"},
  "save_policy": "deferred",
  "changes": [{
    "op": "set_field",
    "target": "node:session7:142",
    "expected_entity_revision": "rev:entity:17",
    "field": "literal_text",
    "before": {"value": "10.0"},
    "after": {"value": "12.0"}
  }]
}
```

这是类似代码 edit 的 old/new 替换，但定位粒度是“对象 + 字段”。长文本可用不可变 blob_ref 与 hash 替代完整文本；hash 必须由服务对已知快照值计算。新值 blob 必须预先在服务中注册且完整；禁止用任意文件路径/URL让适配器隐式读取内容。

可在后续加入 `replace_text`：明确字段、old_text、new_text、expected_occurrences=1，同时校验完整字段 hash；不使用模糊匹配和自动纠错。v0 先使用整字段替换。

结构操作另设 `create_node`、`delete_node`、`connect`、`disconnect`，参数是类型化模型关系，不能允许任意 JSON Pointer 修改内部数据。尚未验证的操作在 capabilities 中禁用，不能以“删了再建”冒充移动、改算子或精确回撤。

### 5.2 plan 结果

```json
{
  "status": "ready",
  "plan_id": "plan:52",
  "plan_digest": "digest:example52",
  "base_snapshot": "snap:41",
  "summary": {"entities": 1, "fields": 1, "native_calls": 1},
  "diff": [{"target": "node:session7:142", "field": "literal_text", "before": "10.0", "after": "12.0"}],
  "guarantees": {"identity": "session", "isolation": "verified_exclusive", "undo": "exact_fields", "atomic_batch": false},
  "save_policy": "deferred",
  "next_action": "bd.apply"
}
```

以上 ready 示例假设独占与 setter 行为探针已通过；当前静态调查无法返回这些在线保证。条件不满足时返回 `blocked` 和明确原因，而不是降级后执行。

计划不可变、有限期、绑定会话 epoch。digest 覆盖完整操作、新旧值/内容 hash、读取集、写入集、依赖集、保存策略、能力版本和保证等级，不能只 hash 摘要。用户/agent 修改计划内容就生成新 plan。

### 5.3 apply 与 diff

```json
{
  "plan_id": "plan:52",
  "plan_digest": "digest:example52",
  "idempotency_key": "client-request-0001"
}
```

返回实际状态，不只返回 `success=true`：

```json
{
  "change_id": "change:53",
  "status": "verified_memory",
  "before_snapshot": "snap:41",
  "after_snapshot": "snap:42",
  "observed_diff": [{"target": "node:session7:142", "field": "literal_text", "before": "10.0", "after": "12.0"}],
  "persistence": {"cache_updated": false, "database_committed": false, "reopen_verified": false},
  "undo": {"level": "exact_fields", "requires_conflict_check": true}
}
```

`verified_memory` 只表示写后已读到字段变化；不证明保存、代码生成或模型运行正确。若 setter 存在未确认的自动提交行为，不能返回上述 false，应该返回 unknown 并阻止 deferred 执行，直到行为探针完成。

diff 包含 `field_changed`、`entity_added`、`entity_removed`、`connection_changed`、`sequence_changed`、`geometry_changed`、`identity_changed`、`unresolved_match`。字段白名单可筛选展示，但完整 diff 存在本地。内容太长以 before_blob/after_blob 表示，按页读取。

diff 只比较两侧均已观察的字段；未读变为已读标为 `coverage_changed`，不是用户修改。跨会话不能可靠匹配时标记 unresolved，不用相似度把不同节点认成同一个。结构 diff 必须带作用域、覆盖率和 `complete`；“没有观察到变化”不等于“全图未变”。

## 6. revision、并发和执行

服务 revision 不是 ASCET 原生事务版本。快照每次采集分配新的单调序号；entity revision 则由 session epoch、该实体的已观察变更序号、规范化内容摘要组成。重复读取相同状态保留 entity revision，避免写前读取本身制造冲突；观察到 A → B → A 时必须生成新 revision，不能复用第一次 A 的版本。未被观察到的原生外部 ABA 无法仅靠内容 hash 检出，需要独占或原生变更序号。

规范化 hash 包含 schema_version、作用域、身份、字段状态和覆盖信息。键和无序实体集合确定排序；引脚语义次序、执行顺序和连线折点次序保持不变。区分 absent、null、false、0 和空字符串；文本保留 Unicode 与换行，不做隐式规范化。

计划计算：

- write_set：直接写入的对象字段。
- read_set：选中目标所依赖的身份、旧值、类型、层级与共享引用。
- dependency_set：操作可能影响的引脚、边、sequence、模型引用以及保存触发的派生数据。

v0 保守校验目标完整 entity revision 及依赖；允许无关对象变化。若保存会重建逻辑模型，则依赖/验证范围可能扩大至组件，不能继续宣称只影响一个字符串。

执行顺序：

1. 持久化幂等键与请求摘要。同一键同一请求返回已有状态；同一键不同请求报 `IDEMPOTENCY_CONFLICT`。
2. 进入该数据库写队列，并取得已验证能排除 UI/其他客户端写入的独占条件。
3. 从原生对象重新读取 read_set/dependency_set，校验 ref、旧值、revision、覆盖和能力。冲突则零写入退出。
4. 写入执行前日志，包含操作、新旧值、逆操作及完整证据，并确保持久化后才调用 setter。
5. 对每一步先记录 intent，调用原生方法，记录结果并重新读取。false、null、异常或异常默认值均不能算成功。
6. 比较实际 diff 与计划效果。发生额外改变或 normalization 时返回 `UNEXPECTED_EFFECT`，保留真实结果；不改写 before 来伪装符合计划。
7. 根据已验证的保存策略执行缓存/提交，重新读取依赖范围，再记录最终 receipt。

服务自身的 mutex、写队列和“写前再读”不能封闭 UI 写入的 TOCTOU 窗口。当前 LockTool/LockDatabase 的名字不能证明隔离能力。严格写入要求已验证独占，或一个确实仅本服务使用的数据库副本。若另行开放 best-effort 模式，必须显式返回 `atomic_compare_and_set=false`；v0 默认不开放。

没有确认原生事务时，`atomic_batch=false`。中途失败停止后续操作；状态可能为 `partial_applied`、`compensated_verified` 或 `needs_recovery`。补偿成功不代表没有产生外部副作用；不要标为“事务回滚”。

崩溃落在 native call 和日志 receipt 之间时，标记该步 `outcome_unknown`。重连后核对身份与状态；无法确定则 `needs_recovery`，不盲目重放创建、删除或提交。单凭字段等于期望值，不足以证明是谁写入，恢复判断也需要隔离与会话证据。

## 7. 保存边界

恢复代码显示 `StoreToCache → endModifications → saveGraphics / recreateLogicModel / autoCommitDatabase`。因此 StoreToCache 可能跨越逻辑重建与自动提交边界，具体效果取决于运行环境，不能作为无副作用 flush。

`DisableAutoCommit()` 返回 void 且会吞异常；`IsAutoCommit()` 失败也可返回 false。仅靠两次调用不足以证明关闭成功。`DataBase.Save()` 调用 commitDatabase，应按数据库范围评估，不当作单图保存。不要自动调用 SaveChangesInAllEditors。

保存策略：

| 策略 | 条件及行为 |
|---|---|
| `deferred` | 已验证 setter 不隐式保存，且可延迟 finalize；不调用 StoreToCache/Save |
| `finalize` | 已验证 StoreToCache 的影响、自动提交配置与重建行为；执行并核对 |
| `commit_database` | 保存计划明确绑定整个数据库的影响范围；执行并核对 |

无法满足策略则规划阶段拒绝。后续 `bd.save(action=plan)` 生成独立保存计划，仍由 apply 执行。存在其他编辑器未保存修改而无法枚举影响范围时，不宣称只提交本工具变更；严格模式拒绝这种范围不明的数据库提交。

持久化状态独立记录 `memory_verified`、`cache_updated`、`database_committed`、`reopen_verified`，每项使用 true/false/unknown。不因 Save 返回 true 就自动标记 reopen_verified。重开验证要在可控副本上进行，并使旧会话 ref 失效。

## 8. 回撤

`bd.revert(change_id, base_snapshot, mode=plan)` 读取原日志，产生逆计划；执行仍通过 `bd.apply`。回撤是一条新的修改记录，可再对它回撤以实现 redo。

字段修改 `10.0 → 12.0` 的逆操作是 **当前值必须仍等于 12.0，才写回 10.0**。同时核对目标身份、类型、共享关系和必要依赖。当前变为 15.0 时返回 `REVERT_CONFLICT`；不默认 force。无关对象已修改时保留无关修改。

回撤等级：

- `exact_fields`：经过验证的字段逆补丁，恢复原始字符串和已声明依赖，不承诺数据库字节完全一致。
- `semantic_rebuild`：删除/重建后语义可能相同，但 ID、引用、次序和布局可能不同。严格 exact 模式拒绝。
- `checkpoint_restore`：独立数据库备份恢复，会覆盖备份以后的其他变化，是单独的恢复流程，不能藏在字段 undo 内。
- `unavailable`：原值/身份/能力不足，禁止执行要求精确回撤的计划。

原生导出/导入不自动等于 checkpoint_restore；需验证完整性、库外引用、ID 和恢复过程。不能保证运行中数据库目录直接复制就是一致性备份。

## 9. API 能力证据与限制

下表是静态证据，不是在线验收结果。源码位于 `E:/Repo/ASCET/unpacked/dotnet/2c75ef3e9bbcd831_Etas.AscetNET.dll/`。

| 需求 | 已找到的接口/代码 | v0 处置 |
|---|---|---|
| 枚举图 | CodeComponent.GetAllDiagrams/GetDiagramWithName | 懒加载 |
| 节点、层级、边、注释 | BlockDiagram/BlockDiagramHierarchy/AscetDiagram 的 GetAll… | 建索引，保留覆盖状态 |
| 图元 ID | BlockDiagramElement.GetGraphicalObjectIdentifier 返回 long，失败 -99 | 保留字符串；验证身份范围和稳定性 |
| literal 文本 | BlockDiagramLiteral.GetContents/SetContents | 首个字段编辑候选 |
| 图注释 | BlockDiagramComment.GetComment/SetComment | 第二个字段编辑候选 |
| 引脚、层级名称 | BlockDiagramElementPin/HierarchyPin/Hierarchy.SetName | 后续验证共享影响及引用 |
| 增删图元、连线 | Place…、ConnectDiagramElementPins、Remove… | 后续结构能力，默认关闭 |
| 布局 | GetPosition/GetSize/GetSegmentCoordinatesXY | 读取；未确认公共 move/resize/route setter |
| 执行顺序 | pin.GetSequenceCall；SequenceCall.GetSequenceActivator/GetSequenceNumber | 读取与 diff；写入待验证 |
| 保存 | AscetDiagram.StoreToCache；Common.DataBase.Save | 独立保存策略及验证 |
| 原子事务/rollback | 未确认 | 不承诺 |

**覆盖漏洞**：BlockDiagram.GetAllDiagramElements 会忽略 identifyBlockDiagramElement 不认识的类型。包装层只列出六类映射；“正常返回数组”不能证明没有隐藏对象。未补充低层类型计数/原始采集或独立交叉证据前，整图 coverage.complete 必须保持 false/unknown。单个字段读取和修改可在其局部依赖已充分验证时开放，不得据此承诺完整结构编辑。

证据入口：

- [BlockDiagram 枚举与类型识别](E:/Repo/ASCET/unpacked/dotnet/2c75ef3e9bbcd831_Etas.AscetNET.dll/de.etas.cebra.toolAPI.Ascet/BlockDiagram.cs:86)
- [图元 ID](E:/Repo/ASCET/unpacked/dotnet/2c75ef3e9bbcd831_Etas.AscetNET.dll/de.etas.cebra.toolAPI.Ascet/BlockDiagramElement.cs:41)
- [literal setter](E:/Repo/ASCET/unpacked/dotnet/2c75ef3e9bbcd831_Etas.AscetNET.dll/de.etas.cebra.toolAPI.Ascet/BlockDiagramLiteral.cs:95)
- [图注释 setter](E:/Repo/ASCET/unpacked/dotnet/2c75ef3e9bbcd831_Etas.AscetNET.dll/de.etas.cebra.toolAPI.Ascet/BlockDiagramComment.cs:93)
- [数据库提交](E:/Repo/ASCET/unpacked/dotnet/2c75ef3e9bbcd831_Etas.AscetNET.dll/de.etas.cebra.toolAPI.Common/DataBase.cs:658)
- [endModifications 恢复代码](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/EtasAPIDiagram.st:1316)
- [现有离线解包/只读工作台](E:/Repo/ASCET/axl_decoder/README.md)

## 10. 错误返回

统一格式：`code`、`message`、`retryable`、`native_writes_started`、`change_id`、`conflicts`、`next_action`。conflicts 受响应预算限制，完整记录通过 blob/分页读取。

建议错误码：`AMBIGUOUS_TARGET`、`STALE_REFERENCE`、`PRECONDITION_FAILED`、`INCOMPLETE_COVERAGE`、`UNSUPPORTED_OPERATION`、`ISOLATION_UNVERIFIED`、`PERSISTENCE_UNVERIFIED`、`NATIVE_READ_FAILED`、`UNEXPECTED_EFFECT`、`REVERT_CONFLICT`、`IDEMPOTENCY_CONFLICT`、`OUTCOME_UNKNOWN`、`SNAPSHOT_EXPIRED`。

“无匹配”与“读取失败”是不同结果。过期/冲突要求重新 read → plan；结果未知要求查 status/recovery，不提示直接重新 apply。

## 11. 落地顺序与验收

1. **只读 MVP**：会话、能力报告、单图/单层级枚举、对象索引、read/search、分页、离线快照 diff。先证明大图可查询且覆盖缺口可见。
2. **字段编辑 MVP**：在副本上验证身份、隔离、literal/comment setter、保存策略；实现 plan/apply、日志与 inverse patch。未验证前 live adapter 保持只读。
3. **结构编辑**：引脚/层级改名、连接、增删图元；逐项确认类型、层级边界、fan-in/fan-out、sequence、模型共享引用、布局和回撤等级。
4. **布局编辑**：找到并验证原生移动/尺寸/路由 API 后再开放；不以删除重建替代。

必须通过的行为验收：

| 场景 | 预期 |
|---|---|
| 同名节点、重复引脚、平行边 | 精确命中或拒绝歧义；绝不挑第一个 |
| 大于 32 位/JS 安全整数的 ID | 字符串全程保真 |
| 保存、重开、重连、恢复副本 | 身份强度符合实测；过期 ref 被拒绝 |
| 一个模型元素多个图形出现位置 | 区分实例与共享定义的影响范围 |
| UI 在 plan 后修改目标或依赖 | apply 无写入地报告冲突；隔离未验证则先拒绝 |
| setter 规范化数值/注释、产生额外副作用 | 实际 diff 明确报告，不伪装符合计划 |
| 包装层返回 null/false/-99、未知类型被过滤 | 不误报空图或完整读取 |
| 第 N 步失败、native commit 后进程崩溃 | 标记部分/未知结果，幂等重试不重复写 |
| 分页期间原图变化、长注释与 Unicode | 同一快照分页稳定、响应有界、无隐式截断 |
| 回撤前目标已变，无关对象也已变 | 目标冲突则拒绝；可安全回撤时保留无关修改 |
| 删除再重建 ID 改变 | 不能标为 exact_fields 或身份保持的回撤 |
| StoreToCache 重建逻辑并可能提交 | 日志记录阶段与实际状态，扩大写后验证范围 |

性能用真实数据测量：原生 RPC 数、首次索引耗时、缓存命中率、read p50/p95、每次返回字节、局部 diff 大小。不要预先宣称毫秒级速度或固定压缩倍数。

配套 [字段补丁 JSON Schema](E:/Repo/ASCET/docs/block-diagram-field-patch.schema.json) 仅约束 v0 `bd.plan` 请求语法；身份、旧值、隔离、回撤和保存能力必须由服务校验。Schema 通过不表示计划可以执行。
