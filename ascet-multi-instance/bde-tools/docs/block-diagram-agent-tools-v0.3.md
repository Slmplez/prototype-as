# ASCET Block Diagram Agent Tools v0.3

总体需求与读取成本设计已补充为 [BDE tools v0.4](E:/Repo/ASCET/docs/bde-tools-architecture-v0.4.md)，包含高效 read、精确编辑/删除、edit 自动 diff、原有 BDE 展示及回退。v0.4 为目标规格，并不表示这些能力已实现。

2026-09-29。设计规格，尚非已发布 MCP。依据 Doge Read/Edit 工具实现及 AEB_dFxTar 在线 API 读取验证编写。本文替代 v0.2 的对外工具划分与默认读取策略；旧实现、旧 schema、`scripts/build_bd_tool_contracts.py` 未自动同步，不能用它们证明本版契约已经实现。

实现更新：Doge 原生工具已接通 read/find/inspect/diff 的首版子集，edit/revert 明确禁用；实际支持范围、依赖、使用方法和测试见 [Doge 接入说明](E:/Repo/ASCET/docs/doge-block-diagram-tools.md)。下文是目标设计，其中逐实体/字段交付覆盖、精细预演和编辑恢复等尚未实现。

需求修正：自动记录的核心是 `bd_edit` 内部记录实际修改，通过局部写前/写后读取完成，不能要求每次修改都全量 `bd_read`。已有读取观察历史没有完成这一需求；详细成本约束、局部日志格式与验收见 [编辑自动记录契约](E:/Repo/ASCET/docs/block-diagram-edit-journal.md)。

## 1. 产品目标与边界

agent 应能像阅读、修改源代码一样操作框图：读到完整且可追溯的逻辑，用精确身份和旧值条件修改，看到实际差异，并按修改记录恢复。接口面向模型任务，不暴露任意 Smalltalk selector、远程对象句柄或整个原生对象树。

“完整”必须声明范围。完整读取组件逻辑包括组件接口、全部指定图及子层级、全部节点/引脚/连接、执行顺序、状态、公式及绑定、递归引用的模型定义和方法正文。项目调度、导入参数实际值、实例配置覆盖、数值 implementation 分别报告，未解析时不能宣称完整运行行为已知。

不把节点个数或字符数当作理解完成的证明。服务端只能证明哪些记录已经采集和交付，不能证明 agent 已理解它们。

## 2. 架构：完整数据在服务内，agent 看可读模型

```text
Agent
  │ 六个领域工具：find / read / inspect / edit / diff / revert
  ▼
Tool adapter：schema、格式化、结果预算、错误恢复指引
  ▼
Model service
  ├─ Immutable observations：图、定义、配置、读取覆盖
  ├─ Identity registry：数据库/会话、组件、模型、图形、引脚身份
  ├─ Change journal：请求、before、actual after、恢复记录
  ├─ Semantic diff / integrity checks
  └─ Capability registry：版本、字段类型、读写路径、副作用、恢复等级
  ▼
ASCET adapter：公开 .NET API + 经核对的内部 Cebra 调用
  ▼
运行中的 ASCET
```

服务端结果 `data`、agent 的 `content`、用户 UI 独立。`data` 可以保存大图和 diff，但 MCP 的 `content` 与 `structuredContent` 都应按可能进入模型上下文来控制；不能把完整大 JSON 放到 structuredContent 后假定它对 agent 隐藏。大对象保存到服务端，通过不可猜测的会话内引用访问。

ASCET 活体连接先串行调度；基于已保存不可变观察的 search/render/diff 可以并发。`isReadOnly=true` 不代表 `isConcurrencySafe=true`。Doge 的本地文件读取可以并发，不足以证明 Cebra 接口可以并发。

## 3. 身份与版本

| 名称 | 意义 | 规则 |
|---|---|---|
| component | 用户输入路径，解析后返回组件身份 | 校验完整路径及 OID；拒绝歧义，不静默选择同名项 |
| snapshot | 服务端持久化的一次不可变观察 | 不是 ASCET 原生 revision；只标识当时取得的数据 |
| node/pin ref | 如 `Main/n259.p265` | 在 snapshot 的数据库/组件/层级作用域中解析 |
| model ref | 如 `m19` | 文档内别名，后台关联原生模型 OID；与图形 occurrence 分开 |
| change_id | 一次编辑尝试及其结果 | 即使发生部分修改或结果不确定，也保留 |
| request_id | 编辑/回撤的幂等键 | 同一键相同请求返回原记录；不同请求报冲突 |

数据库切换、进程重启等使活体句柄失效。历史 snapshot 仍可阅读和比较，但不能沿用句柄直接编辑；需重新解析并验证对象身份。无法确认同一对象时报 `IDENTITY_UNRESOLVED`。

原生 graphical ID 只在验证过的作用域内使用，不默认承诺跨重建、跨数据库稳定。主图 API OID 在样本中为全 0，不可作为唯一键；连接枚举序号也不是持久边 ID。相同端点的多重边必须额外定位，否则拒绝修改。

内容哈希分语义、布局、配置来源等域，排除采集时间和远程句柄。保留原始记录 SHA256 用于溯源；不能用包含时间戳的 JSON 哈希判断模型是否变化，也不能将本地哈希当作服务端原子 CAS。

## 4. 六个核心工具

| 工具 | 简化输入 | agent 返回 |
|---|---|---|
| `bd_find` | component/snapshot、query、kind、cursor | 匹配身份、名称、所在作用域、少量上下文、后续游标 |
| `bd_read` | component 或 snapshot 或 cursor；可选 scope/view/budget | 可读模型正文、snapshot、覆盖情况、分页信息 |
| `bd_inspect` | snapshot、query、targets、fields 等 | 精确字段/定义/引用/配置来源/检查结果/修改历史 |
| `bd_edit` | snapshot、request_id、operations、可选 preview | change_id、局部 before/after 及覆盖范围、实际 diff、恢复与保存状态 |
| `bd_diff` | before+after 或 change_id；可选 domain/scope/cursor | 语义变化及未比较项，必要时分页 |
| `bd_revert` | change_id、request_id、可选 preview | 冲突或恢复后的验证结果；新的恢复操作记录 |

工具 schema 使用明确类型的对象/数组和 operation 判别联合，不把 operations 编码成 JSON 字符串。常用路径只需 `bd_read → bd_edit`；无需 agent 手动创建快照、准备日志或调用多个事务步骤。

### 4.1 bd_find：只负责发现

支持组件、图形、模型元素、方法、参数、连接的名称/类型/文字搜索；返回 ref 和命中字段。搜索默认从已指定 snapshot 查询；数据库范围发现须说明 `source=live_catalog`。查询结果不是完整语义读取，也不自动授予目标全部字段的读取覆盖。

### 4.2 bd_read：默认完整逻辑，可连续读完

初次调用：

```json
{
  "component": "\\PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Private\\AutomaticBraking\\AEB_dFxTar",
  "view": "logic"
}
```

`view` 仅设三个常用选项：`logic`（默认）、`overview`、`layout`。`logic` 默认采集组件内全部图和递归引用定义，按定义身份去重；引用循环返回回边，不无限展开。预算限制交付量，不暗中降低语义采集深度。达采集时限则返回明确缺口，绝不以成功摘要取代未完成记录。

正文采用确定性生成的模型文本，不使用 LLM 总结作为唯一结果：

```text
snapshot=s1 component=AEB_dFxTar section=Main

n259 AEB_AxCtrlConfigKp_Modify : AEB_AxCtrlConfigFF_Modify
  out p265 AEB_AXCKpMassFreq/AEB_AXCKpMassFreq
n15 AxCtrldFxDtPropFF : AxCtrldFxDtPropFF
  in p72 calc/AxCtrlKMassFreq <- n259.p265
  call calc sequence=321 activator=calc

m19 b0_AxRaw = 1.0-(TimeConstant/(TimeConstant+dT))
  TimeConstant -> P_AEBfiaxRaw
  dT -> P_AEBdT
```

以上为样本节选，`s1` 是示意。正式正文包含全部节点与引脚、所有边、sequence、字面量、模型类型/作用域/状态，以及全部引用方法正文。已知纯算子可附加表达式，但不得用表达式替代原始有向边和状态更新信息；未知类型保留原生名称及未解析原因。

固定输出顺序：接口 → 模型声明/公式 → 分图节点及连接 → 执行顺序 → 去重类定义和方法 → 未解析依赖。顺序稳定，但不能把排序顺序当成执行顺序。

建议默认 12 KiB 文本预算，上限 64 KiB，统计为实际 UTF-8 字节；不是 token 等价。按完整记录/方法分页，单个方法超限时使用带行号及 continuation 的 source chunk。游标绑定 snapshot、视图和页位置；后续调用：

```json
{"cursor":"opaque-next-page"}
```

游标不能和新 component/filter 混用；分页期间不重新读取活体模型。读取新版本必须发起新的 component 读取。缓存丢失报 `SNAPSHOT_EXPIRED`，不静默拼接另一次观察。

每页都返回轻量结构化 envelope：

```json
{
  "snapshot":"s1",
  "consistency":"non_atomic_observation",
  "coverage":{
    "graph":{"collected":"complete","delivered":"partial"},
    "method_bodies":{"collected":"complete","delivered":"not_yet"},
    "formula_bindings":{"collected":"complete","delivered":"partial"},
    "effective_configuration":{"collected":"unresolved"},
    "numeric_implementation":{"collected":"unresolved"}
  },
  "page":{"has_more":true,"next_cursor":"opaque-next-page"}
}
```

累计 delivered 覆盖绑定客户端/session，重试页不重复计数；内部记录交付的实体/字段/正文区间，不能只有一个“读过组件”的布尔值。`has_more=false` 只表示所请求视图交付结束，不代表所有运行依赖都已解析。

同一客户端已读过、明确仍可复用的 snapshot 页可返回 `unchanged` 引用。上下文重置后不假设旧正文仍可见；显式重读已有 snapshot 时允许再次交付。不能只依据组件名称或总数相同去重。

### 4.3 bd_inspect：精确字段与语义关系

采用 `query` 判别联合，避免一个任意字段函数：

- `fields`：targets + 已注册字段名，返回准确值、类型、可写能力、来源、观察指纹。
- `definition`：实例引用的类/方法，默认从同一 snapshot 读；共享定义和实例区别展示。
- `references`：模型的图形出现、参数使用、上下游和调用者。
- `configuration`：默认/实例/项目生效来源链；未解析不能回退为 0。
- `checks`：结构、连接方向、sequence、一致性或原生诊断；列出实际执行项和不支持项。
- `changes`：按组件返回 change_id、before/after、状态及可恢复性，用于找历史版本。

值状态严格区分 `known/absent/not_collected/unsupported/error`；未知不是 null，也不是零。公式正文、依赖绑定、缓存值、生效值分开。只拿到 class default 时显式标注。

`fields` 获得的读取覆盖可支持局部编辑。机械编辑不要求重新读完所有方法；涉及行为理解时 agent 应读完逻辑覆盖。服务端只强制编辑所需的目标字段及校验依赖已经读取，避免把“完整理解”伪装成可以机械判断的授权条件。

## 5. bd_edit：身份 + 旧值条件 + 类型明确的操作

下例仅展示协议，用样本中真实存在的字面量 n176；不是对 AEB 模型提出修改建议，也未执行。

```json
{
  "snapshot":"s1",
  "request_id":"req-001",
  "operations":[
    {
      "op":"set_literal",
      "target":"Main/n176",
      "expect":{"text":"0.0"},
      "value":{"text":"0.1"}
    }
  ]
}
```

`expect` 按字段定义比较：字面量源文本按精确字符比较，枚举/整数按类型，集合按声明的集合语义；不使用自然语言、模糊名称、隐式数值容差或通用引号修正匹配。格式归一化只用于明确声明的展示/比较域，不能暗改表达式文本。

候选操作白名单及其语义：

| 操作 | 必需的旧值条件/约束 |
|---|---|
| `set_literal` | literal 文本、节点类型、目标身份 |
| `set_sequence` | 方法调用身份 + activator + 原顺序；不能独立改同一调用某一个 pin 的标注 |
| `connect_data` | 数据连接：输入当前无连接、端点方向/类型匹配；不自动覆盖旧边 |
| `disconnect_data` | 数据连接：精确已有边、类型、端点；多重边需判歧义 |
| `rewire_data` | 数据连接：目标输入的完整旧连接集合、新输出身份及兼容性；明确替换语义。不得用于状态机 transition |
| `create_transition/update_transition/retarget_transition/delete_transition` | 状态机专用操作，身份、层级端点、condition/action/trigger/priority 和恢复闭包要求见第 11 节；当前全部禁用 |
| `move` | 原位置、坐标系及层级；单独审计布局及相关连线变化 |
| `set_parameter` | 参数可赋值性、具体配置/实例作用域、原值；计算参数拒绝当普通常量写入 |
| `set_formula` / `bind_formula` | 公式及绑定旧值、形参身份、依赖与类型校验 |
| `edit_method` | 共享定义身份、旧正文、影响实例列表及调用接口；独立能力，首版不开启 |
| `add/delete` | 引用、连接、sequence、配置等闭包，且恢复路径已验证；后期开启 |

这些是目标契约，不是现有可用操作。能力注册表必须按 ASCET 版本和对象类型标明 `source_confirmed/runtime_verified`。当前只有读路径在线验证，写能力默认 disabled，调用返回 `CAPABILITY_UNAVAILABLE`；不能因找到了 selector 就启用。

内部一次完成：

1. 解析 snapshot 与身份，校验目标字段的读取覆盖、操作能力和作用域。
2. 取得适配器写锁，重读目标及影响闭包，检查 expected 字段、连接、签名和配置来源。对其他进程/编辑器是否隔离单独判断。
3. 在内存模型上预演所有操作，检查类型、端点、sequence 和依赖；得到预期 diff。
4. 写前持久化 request_id、before、操作及可用恢复材料。要求可恢复的操作若备份失败必须拒绝执行。
5. 调用经验证的写接口；每步记录 started/verified，遇错停止后续操作。
6. 重读实际目标及预期副作用范围，校验实际 diff；归类 requested/native_derived/external_or_unknown。
7. 保存局部 after 和回执，返回简短实际 diff、覆盖范围、保存状态。不为了日志再次调用全量 `bd_read`，局部状态不能冒充全量新 snapshot。

`preview=true` 只做无模型写入的解析/校验/预演，不创建可回撤修改。默认实际执行时仍做全部检查，用户不必多走一次 preview。预演不能通过真实 setter 然后 undo 实现。

示意成功回执（只有能力验证完成才可产生）：

```text
change=c1 status=verified
before=s1b after=s2
~ Main/n176.literal: "0.0" -> "0.1"
verification=target_and_declared_impact
revert=verified_field_restore
persistence=memory_verified; database_committed=unknown
```

`s1` 是 agent 原读取，`s1b` 是真正写前观察；无关外部变化可被保留，两者不能混为一谈。操作不得返回尚未观察到的 after 值。预期副作用范围外没有检查时不能声称“其他地方完全未变”。

没有原生事务，批量不是原子操作。对外状态为 `no_change/verified/partial_applied/outcome_unknown/restored_verified/needs_recovery`，每项附逐步状态。超时不等于失败且无变化；先用 journal + 重读恢复判定，不能直接重试 setter。严格原子请求仅在能力证据支持时接受，否则报不支持。

写锁只隔离本工具请求，不自动隔离 ASCET GUI。无可验证的原生 CAS/排他锁时，标注 `optimistic_rechecked`，明确仍有检查与写入间的竞争窗口；不能把这称为并发安全的条件写入。

## 6. bd_diff：两个明确观察之间比较

```json
{"before":"s1","after":"s2","domain":"semantic"}
```

或：

```json
{"change_id":"c1"}
```

第二种使用该次真实写前与写后记录。历史通过 `bd_inspect(query="changes")` 查找。比较当前状态时先 `bd_read(component=...)` 获取明确新 snapshot，避免 `latest` 在调用期间漂移。历史不足时报 `SNAPSHOT_NOT_FOUND`，不能从当前模型“推算”旧版本。

diff 分类：节点/模型新增删除、字面量和参数变化、接线变化、执行顺序、方法正文、公式/绑定、布局变化、身份无法匹配、覆盖变化。

状态机额外比较独立 transition 身份、带层级及边界侧的端点、condition/action 的模式和引用、trigger、priority，以及状态 initial/entry/exit/static 行为。当前实现不采集这些内容，不支持状态机 diff。

先核对数据库/组件/身份域，再按原生身份匹配，最后按字段比较。名字仅作辅助提示，不静默认作相同对象。连接集合按端点+连接类型比较，考虑多重边计数。配置来源即使当前值相同也属于语义变化。sequence 或 activator 变化即使连线不变也必须报告。

只比较双方均采集的字段；`not_collected` 不视为删除。输出 `compared/uncompared` 和未解析匹配数，完整性不足时不能给“完全相同”。一方实例配置覆盖缺失时，不能声称运行行为没有变化。

## 7. bd_revert：按修改记录恢复

```json
{"change_id":"c1","request_id":"req-revert-001"}
```

目标是恢复该修改实际触及的状态，保留无关后续改动。恢复前确认目标仍等于 c1.after，且结构依赖仍成立。若目标已被后续修改，返回 `REVERT_CONFLICT` 和冲突字段；不提供默认 force 覆盖。

持久化恢复意图 → 执行已验证恢复动作 → 重读校验 → 产生新的 change 记录。恢复失败返回逐项状态及 remaining，不能只说“已回撤”。恢复记录关联原 change，但不删除历史。

反向字段操作、重连、原生 memento 分别评估。盲调一次 Undo 可能撤掉 GUI 中其他人的操作，不允许作为通用实现。删除后重建通常不能保证原身份，因此没有身份恢复证明就不能承诺 exact revert，也不开放相应可回撤操作。

本版核心六工具不暗含数据库保存。保存作为独立生命周期能力后续开放 `bd_save`，必须明确组件/数据库范围、最新状态、实际提交和重新打开验证状态。`memory_verified`、`database_committed`、`reopen_verified` 分别记录；setter 若自带持久化副作用须在能力和回执中说明，无法确定则禁用相应“仅内存修改”承诺。

## 8. 错误契约与输出预算

失败不能只有堆栈。返回 code、target、expected/actual 摘要、是否已有副作用、change_id（如有）、可执行的恢复方式。常用错误：

| code | agent 下一步 |
|---|---|
| `AMBIGUOUS_TARGET` | 使用精确返回的身份，或补充作用域 |
| `READ_REQUIRED` | 用 read/inspect 读取指定字段和依赖 |
| `STALE_TARGET` | 重读并重新决定修改，不自动覆盖 |
| `SNAPSHOT_EXPIRED` | 重新读取，旧游标/编辑引用不再可用 |
| `CAPABILITY_UNAVAILABLE` | 查看实际支持项，不尝试猜 selector 绕过 |
| `TYPE_MISMATCH` / `DEPENDENT_PARAMETER` | 修正操作类型/配置对象 |
| `PARTIAL_APPLIED` / `OUTCOME_UNKNOWN` | 查询已有 change，禁止盲目重试 |
| `REVERT_CONFLICT` | 检查后续修改与冲突目标 |

大 edit/diff 回执保留状态、change_id、计数和首批完整差异，余量通过绑定 change/snapshot 的游标获取。落盘文件只是兜底，不以“去读 160 KB JSON”作为常用交互。

## 9. 当前证据和实施顺序

在线样本已读取 56 节点/120 pins/60 连接，7 类/21 方法，19 个计算参数/24 项绑定。原始 JSON 161,363 字节，逻辑视图 32,767 字节。证明可以完整读取已声明的图与方法信息并显著消除冗余，尚未证明项目生效配置完整，也未验证任何编辑/回撤路径。

实施按闭环推进：

1. 将现有读取器封装为 `bd_read`，加入不可变观察存储、稳定逻辑文本、分页和字段交付覆盖。
2. 从同一规范化数据构建 find/inspect/diff；用相同观察重排枚举、局部字段缺失等用例验证差异算法。
3. 在隔离测试组件验证一种最小修改：literal 读取 → 修改 → 重读 diff → 恢复 → 再重读。连同超时、旧值冲突、备份失败和无关修改保留一起验证。
4. 再扩展 rewire、sequence、layout，每个操作单独验证类型约束、原生副作用和恢复等级。
5. 最后处理新增/删除、公式写入、共享方法和项目配置；不能因为读取支持就推定修改支持。

状态机作为独立适配分支实施：先证明安全读取、transition 身份和层级端点，再证明 condition/action/trigger/priority 的修改及恢复。不得通过复用 data rewire 提前启用。

验收必须包含：重复名称不会改错 occurrence；分页不能丢边；不同 activator 的相同 sequence 不混淆；旧值变化会拒绝；批量第二步失败不宣称全成功；超时重试不重复写；回撤保留无关变化并报告冲突；缺失字段不会在 diff 中变成删除；UI diff 不被当作恢复指令。

## 10. 依据

- [在线 ASCET 读取验证](E:/Repo/ASCET/docs/ascet-live-api-AEB_dFxTar.md)
- [AEB_dFxTar 逻辑视图](E:/Repo/ASCET/analysis/live-api/AEB_dFxTar.logic.md)
- [Doge Tool 接口](E:/Repo/ASCET/Doge/src/Tool.ts:362)：执行数据、agent 文本和 UI 分离。
- [Doge Read](E:/Repo/ASCET/Doge/src/tools/FileReadTool/FileReadTool.ts:1032)：读取状态；本设计额外增加字段/记录交付覆盖。
- [Doge Edit](E:/Repo/ASCET/Doge/src/tools/FileEditTool/FileEditTool.ts:275)：旧内容检查、唯一匹配、写前再次检查。
- [Doge 展示 diff](E:/Repo/ASCET/Doge/src/tools/FileEditTool/utils.ts:258)：展示 patch 与实际恢复材料分开。
- [Doge 文件历史](E:/Repo/ASCET/Doge/src/utils/fileHistory.ts:86)：独立备份/恢复；本设计对要求可恢复的写操作不允许备份失败后继续。

## 当前实现补充：自动观察历史（2026-09-29）

Doge 原生工具现已在每次 `bd_read(component=...)` 时自动提交前后 snapshot 引用及已采集语义 diff，返回 `recording.change_id`。`bd_inspect(query="changes")` 查看持久历史，`bd_diff(change_id=...)` 查看已保存差异；不会把完整模型和所有差异塞入每次工具返回。

观察记录区分 baseline、changed、unchanged、continuity_gap；按数据库/组件分链。跨会话或 ASCET 重启不强行匹配图形 ID。在线锁覆盖探针和记录提交，不可变 journal 的发布作为提交点，避免半提交快照推进比较基线。仅在线读取触发，不启动后台监控，历史浏览及分页不触发新观察。

这是已实现的观察历史，尚不是前文目标设计中的 edit 事务记录。写入/回撤及状态机仍禁用；不能由观察时间推断准确编辑时间、操作者或完整中间操作。实际调用和持久化说明见 [Doge 工具文档](E:/Repo/ASCET/docs/doge-block-diagram-tools.md)。

## 11. 子 agent 审查修订：连接必须按图类型建模

独立审查发现五项 P1 契约缺口和一项 P2 几何缺口，详见 [精确连线与状态机审查](E:/Repo/ASCET/docs/block-diagram-connections-review.md)。以下修订优先于前文任何笼统的“连接”描述。

1. 六个工具外壳可以共用，reader、checker、edit executor 必须按 `diagram_kind` 分派。数据流的单输入源约束不能套在状态机入边上。
2. 数据连接身份来自已验证的边身份或完整端点/类型及多重边判歧义；transition 必须有自己的独立身份，相同两端允许表达不同条件和行为，禁止仅凭端点合并。
3. transition 端点是判别联合：state 或 state_machine_pin。每端记录所属层级；state 记录几何锚点与坐标系，边界 pin 记录 internal/external 侧。无法确认层级侧别时拒绝精确编辑。
4. condition/action 都区分 `none/esdl/method`。源码、方法身份、调用绑定进入 expected 和恢复记录。trigger 未读出就是 unknown，不是 none；priority 不等于 BD sequence，竞争转移范围及排序规则必须验证。
5. 修改 condition/action 可能创建/替换 alias 方法与 SGMethodCall。恢复相同文本不代表恢复原生身份。未验证恢复闭包时禁用相应写能力。
6. `retarget_transition` 暂无已确认公开端点 setter，禁止默认删除重建。native Undo 仍需证明精确对应本次修改。
7. 部分状态机 getter 有惰性修复写入，连 `IsConditionDefined/IsActionDefined` 也可能间接经过这些路径。只读桥必须审计原始字段路径，不因名字为 Get/Is 就当无副作用。
8. 语义端点与视觉路由独立。连线创建后重读实际锚点和折点，不能用坐标代替对象身份；自动路由不代表返回值与请求坐标完全一致。

建议内部类型：

```typescript
type Field<T> =
  | { status: 'known'; value: T }
  | { status: 'unknown'; reason: string }

type Behavior =
  | { mode: 'none' }
  | { mode: 'esdl'; source: string }
  | { mode: 'method'; method_ref: string; call_binding_ref: string }

type Endpoint =
  | { kind: 'state'; state_ref: string; hierarchy_ref: string;
      anchor: Field<{ x: number; y: number; coordinate_space: string }> }
  | { kind: 'state_machine_pin'; pin_ref: string; hierarchy_ref: string;
      side: Field<'internal' | 'external'> }

type DiagramConnection =
  | { kind: 'data'; ref: string; source_pin: string; target_pin: string;
      native_connection_type: number; hierarchy_ref: string;
      route: Field<{ coordinate_space: string; points: { x: number; y: number }[] }> }
  | { kind: 'transition'; ref: string;
      identity_status: 'verified' | 'observation_only'; hierarchy_ref: string;
      source: Endpoint; target: Endpoint;
      condition: Field<Behavior>; action: Field<Behavior>;
      trigger: Field<{ mode: 'none' } | { mode: 'method'; trigger_ref: string; call_binding_ref: string }>;
      priority: Field<number>;
      competition_scope: Field<{ hierarchy_ref: string; source_ref: string; transition_refs: string[] }> }
```

以上仍为目标类型。trigger 表示方式、transition 原生 ID 和同优先级规则均待在线验证。不能把未验证的原生 connection_type 整数自行解释为 data/control/sequence；保留原始类型并按能力白名单开放操作。其他未知图类返回 unsupported，不强制塞进这两个分支。
