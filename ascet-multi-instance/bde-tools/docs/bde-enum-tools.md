# BDE Enum 创建与回退

已有定义 Enum 的原对象三方向历史之后，完整原状态收尾已在隔离实例通过：原声明/
配置/native/source/order/alias 和两组定义引用核对；allocator20→16，1次source primitive、
0次declaration primitive。153个当前声明对象保留126个原对象，字段未删减。
9次正式Tool.call，原材料/before witness释放，namespace generation28→29退休；
原witness pin拒绝提前退休，旧snapshot的实际写请求在修改前conflict。diff/重复请求
各0连接/0帧，finalization未重放，pending=false，sources_match=true。

81项相关离线检查及生产构建通过；新增6项v4 WAL回复丢失/重复请求/类型引用/终态
控制通过，仅离线模拟，不等于在线故障。原离线夹具失败和旧driver类型白名单拒绝
保留；白名单拒绝发生在0observer/0正式工具调用，修复后正式收尾仅dispatch一次。
该限定原状态收尾通过不提升Enum全部类型/配置、NEWENUM、冷重启或完整required case。
业务原件恢复hold与其余全部交付要求保留，full_delivery=false，性能不阻塞。
下一项为NEWENUM原库生命周期和message原声明/类型/配置/引用材料及完整历史。
[本轮真实证据、复算及边界](../analysis/bde-experiments/2026-10-06/bde-enum-finalization-status-01/README.md)。

下方“Enum收尾未完成/材料保留”为此前历史状态，以本次限定原状态收尾结果为准。


已有定义 Enum 已在隔离实例完成原对象 undo→redo→undo，三条回执均为 verified_local；
首次 unknown 经逐条件诊断、精确引用修复和正式 bd_inspect 恢复查询解除，未重发原 undo。
后续 13 次正式 Tool.call 包含查询/diff/重复请求，不等于 13 次模型写入。
完整 typed/native/source/configuration 目标及两组定义引用核对通过，pending=false，
临时 current/undo witness 已释放，sources_match=true；原失败 verdict 仍保留。

这还不是 Enum 完整生命周期完成：原创建材料和 before witness 保留，完整原声明/cache
基线和 allocator 尚未收尾，original_restored=false、complete_case_pass=false。
下一项为独立 Enum finalizer、原状态恢复、材料释放、namespace 退休与旧 snapshot 拒绝。
NEWENUM、其他类型/跨层模块消息通路、完整视觉、重启/故障、真实 Agent/AEB_Core、
业务原件恢复、最终包与 43 required 仍未全部达标；性能不阻塞交付，整体交付 false。
[最新已核对证据与边界](../analysis/bde-experiments/2026-10-06/bde-enum-history-status-02/README.md)。

以下首次 unknown 和准备状态为历史版本，以本条后续恢复与历史证据为准。

最新实际状态：已有定义 Enum 的创建及 actual diff 已通过；独立 enum_body_exact_v1
history 候选通过 96 项离线检查、生产构建和零写入 execution-profile preflight。
首次正式 undo 已执行 dispatch，但终态类型代理组合检查失败并返回 outcome_unknown；
redo 未执行，隔离 pending=true，原材料和失败 witness 保留，原状态未确认恢复。
这不是 Enum 撤销通过。下一步只读逐条件诊断和完整终态核对，不重发或删建原对象。
[最新失败原记录与后续步骤](../analysis/bde-experiments/2026-10-06/bde-enum-history-execution-status-01/README.md)。

以下“未执行 Enum 历史”是此前准备版本状态，以本条为当前执行状态。

最新Enum历史准备增量已实现并隔离在线通过：独立enum_prepare_exact_v1，严格
绑定原SGVariable alias、原SGEnumerationDB/SGEnumeration和DBProxy、完整原声明/
配置、CURRENT及原before目标。新版两次准备/8连接/1294request/1286response帧；
完整native/public/model/config前后相同，图形/source/顺序/alias见证未变，原forward
WAL不变。当前与创建head之间4条变化/9新对象仅属经完整图像核对的读取缓存。

反编译确认readReferences合并loaded对象，已另读readIsReferencedByOnly；本实例
数据库记录引用与CURRENT合并集合相同，但撤销后目标引用及重启持久化仍未验证。
80相关离线测试通过；首轮严格attached检查拒绝缓存变化的失败保留，不放宽该检查。
临时current witness已释放；原创建材料和before witness继续保留，未执行Enum历史，
原状态未恢复。下一项独立实际executor/WAL/终态query及两组引用目标核对，再原对象
undo/redo/undo与收尾。全部其他原交付要求、业务原件hold和全交付false保持。
[在线材料、静态接口依据与复算](../analysis/bde-experiments/2026-10-06/bde-enum-history-preparation-status-01/README.md)。

2026-10-06 最新在线结果：已有定义Enum已完成正式纯准备验证和一次真实Doge
创建，完整声明/配置/原类型引用及图形/source实际diff写入原WAL；bd_diff和重复
请求各0连接/0帧。声明原图像126→144对象，10条实际变更/18新增对象，当前SGClass
引用变化已记录。62相关离线测试通过，离线夹具不代替在线历史。

这仅是既有定义创建与实际diff捕获通过。Enum同对象undo/redo/undo、完整删除及
原状态收尾尚未验收；原创建材料与before witness仍保留，原状态未恢复。不得重发
创建或通过变量/仅图形inverse绕过类型和引用保护。NEWENUM原库生命周期仍待补。
下文早期API回退记录不等于最新原对象完整生命周期通过。
[最新真实工具证据和后续步骤](../analysis/bde-experiments/2026-10-06/bde-enum-create-capture-status-01/README.md)。

2026-10-06 最新候选：独立enum_body_v1/v3原材料路由已接，绑定typed generation、
实际prepare与精确定义请求。56相关离线控制及生产/评估C#构建通过；本轮没有live
调用，在线prepare纯性、实际类型/body/ref diff与原对象history仍未验证。变量history
规则不会授予enum inverse；NEWENUM原库生命周期仍需单独材料。
[候选实现与后续验证](../analysis/bde-experiments/2026-10-06/bde-enum-create-contract-offline-01/README.md)。

2026-10-06后续增量：已有定义的原owner/enum/config before材料研究已通过，126对象/
200槽、完整schema/定义外部引用集合跨连接一致；仅enum材料保留时namespace退休
实际拒绝，fresh核对后释放。32相关离线控制通过。当前为固定eval接口，仍未接正式
创建prepare/WAL，未创建enum或执行其原对象双向历史。
[最新原材料证据与正式接入任务](../analysis/bde-experiments/2026-10-06/bde-enum-before-status-01/README.md)。

2026-10-06 当前边界：下文是既有typed/API创建与首次回退流程，不能代表完整原对象
body/source及双向历史验收。最新只读探针确认SGEnumerationDB/SGEnumeration等六角色
58槽，完整current图形/source见证和collected模型/配置未变；enum完整body capture及
同对象undo/redo/undo尚未实现验证。NEWENUM的原文件夹/DB/定义身份生命周期也待补，
删除后同名重建不算原对象恢复。实验能力保持隔离使用；整体尚未交付。
[最新证据与下一步](../analysis/bde-experiments/2026-10-06/bde-enum-definition-status-01/README.md)。

普通 Main 框图支持两种 `create_block(kind="enumeration")`：引用已有库类型，或创建新库类型并放置枚举变量 block。当前写入限 `BDE_Tool_Experiments\Trial_*`，需启用 `ASCET_BD_STRUCTURAL_WRITES=1`。业务原件没有开放写入。

精确 hierarchy scope 也已接入同一创建合同：先读 `view=structure, scope={diagram:"Main/h<ID>/h<ID>"}`，再使用完整 scope snapshot。图形放入子图，变量声明仍属于组件。见 [子图节点用法](bde-hierarchy-edit-usage.md) 与对应在线证据；这不表示跨 Module message 通路或子图 diff 绘制已完成。

## 新建类型和 Block

先 `bd_read(component=..., view="structure")`，使用返回的完整 Main 结构观察引用：

```json
{
  "snapshot": "<bd_read 返回的 snapshot>",
  "request_id": "create-mode-001",
  "operations": [{
    "op": "create_block",
    "kind": "enumeration",
    "name": "BrakeMode",
    "position": [320, 240],
    "new_definition": {
      "name": "BrakeModeType",
      "items": ["Off", "On", "Fault"]
    },
    "initial_value": "On"
  }]
}
```

`name` 是组件内变量名，`new_definition.name` 是库类型名。新类型创建在 `BDE_Tool_Experiments`。名称和枚举项是最多 64 字符的 ASCII 标识符；枚举项有序、唯一，数量 1..256。指定的初值必须属于该类型。类型重名、变量重名、过期观察及身份变化会在写前拒绝。可先用相同操作加 `preview=true` 校验，preview 不创建类型或恢复记录。

引用已有类型时，将 `new_definition` 替换为：

```json
{"definition": "BDE_Tool_Experiments\\ExistingModeType"}
```

`definition` 和 `new_definition` 必须二选一。引用已有类型的回退只移除此次 block 与变量，不删除库类型。

## 自动实际 Diff

成功回执为 `applied_observed`，包含 `change_id`、`after_snapshot`、图形及声明的 `differences`。新类型另记实际库变更：

```json
{
  "library_effects": [{
    "kind": "enumeration_definition",
    "path": "BDE_Tool_Experiments\\BrakeModeType",
    "oid": "<实际原生 OID>",
    "before": null,
    "after": {"items": ["Off", "On", "Fault"]}
  }]
}
```

这些值来自同一次原生编辑中的观察，不由请求生成 after。`bd_diff(change_id)` 离线读取持久化记录，包含相同的 `library_effects`。`after_snapshot` 由已记录的实际结构观察发布，`additional_ASCET_reads=0`；这不表示 edit 本身没有原生校验和回读。

## 回退与引用保护

调用 `bd_revert(change_id=..., request_id=...)`。同一 ASCET 进程和原会话中，工具检查实际 after、原生对象身份、父节点顺序、类型身份、枚举项顺序及当前引用集合。出现其他组件引用时返回 `conflict`、`setter_called=false`。

移除后续引用后，用新的回退 request_id 再调用：先移除本次图形 occurrence 和变量声明，确认引用集合恢复到创建变量前，再删除本次新类型并核对其名称不存在。成功为 `verified_local`，库 diff 的 `before` 是原枚举项，`after=null`。类型原本被文件夹引用，该内部引用保留在比较基线内，不误判为外部使用。

重复相同请求 ID 返回原回执。`outcome_unknown` 不自动重发，也不能直接使用普通 revert。
可用 `bd_inspect(query="recovery",change_id=...,reconcile=true)` 对账：当前图形与保留终态一致，
且库类型的原生身份、有序枚举项和引用集合一致时，才发布实际创建回执并解除隔离。
inverse 的丢回执还要求原 prepared-before 已恢复、实际 library_effects 为精确反向，
且库中该名称已不存在，才能返回 `verified_local`。缺失终态或当前库变化保持
`RECOVERY_UNRESOLVED`，不重复 setter、不解除隔离。重复已完成对账零在线读取。
三组件三轮 apply/inverse 丢回执验证见 `bde-shared-enum-recovery-03/result.json`。
重启后不能声称保留对象式精确回退仍可用。

## 当前验证边界

已有类型的普通 Enum block 和新类型的小图完整链均有真实 Doge Tool.call 与独立公开 API 核对。三组件重复验证的证据以 [实验报告](E:/Repo/ASCET/docs/bde-tools-experiment-report.md) 为准。API 验证不代替视觉验收或完整 G0–G7。

现阶段没有独立修改已有库枚举项、类型改名或任意共享类型删除操作。本接口的类型删除专属于本次新建类型的受保护回退。
