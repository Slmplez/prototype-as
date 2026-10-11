# Doge Code 原生 Block Diagram tools

2026-10-03 更新。已经接入 Doge 的原生 tools 注册表，无需配置 MCP。代码从当前源码启动时默认启用，设置 `ASCET_BD_ENABLED=0` 可以关闭。Doge 简化模式只加载其固定的少量工具，不包含这组工具。

Class 基础输入参数创建已通过三种模型、四种类型各三轮正式工具测试。
读取 `view="class_interface"` 后，`bd_edit` 可调用 `create_class_argument`，
以精确 `Main/method_alias` 创建 `cont|sdisc|udisc|log` 参数并更新所有嵌套调用端引脚。
需要 `ASCET_BD_CLASS_WRITES=1`，仅支持隔离 `BDE_Tool_Experiments\Trial_*`
定义及调用者。实际 diff、重复请求、旧快照拒绝和完整回退已有在线证据；
回退仍要求完整 actual-after 基线，不支持保留后续 Class 改动的局部合并。
Class 的 enum/complex/out/return 参数创建尚不支持。详情见
[创建约束与证据](bde-class-argument-creation.md)；整体验收仍未通过。

## 已可调用的能力

| 工具 | 当前实现 |
|---|---|
| `bd_read` | 全量已采集语义，或 scope 指定 Main 节点的原生局部拓扑/layout；interfaces 为单组件消息角色、Class formal 及 Main/嵌套 hierarchy 拓扑和原生配对；自动观察历史与 UTF-8 游标分页 |
| `bd_find` | 在指定 snapshot 中搜索 node/pin/edge/model/method；接口快照另支持 interface/message，重名不合并 |
| `bd_inspect` | capabilities、snapshots、changes、fields、检查与配置；接口快照支持 signal_path/interface_binding，均离线 |
| `bd_diff` | 比较同一 Doge 会话、进程、数据库/组件及采集范围的字段；局部 layout 可比较位置/尺寸/折点多重集合；或 change_id 查看已记录差异 |
| `bd_edit` / `bd_revert` | 写入默认关闭；结构实验开关下支持隔离普通 BDE 创建、字段/布局/数据连线/删除、sequence、标量及数组/矩阵/分布/表格配置；自动实际 diff、冲突检查和同进程回退。新增公式表达式及已有默认绑定见下节 |

状态机扩展已延期，不纳入当前普通 BDE 验收。当前未完成嵌套 hierarchy 编辑、跨 Module 通路修改/回退、缺失 sequence call 创建及完整 identity/fault 验收；新 Enum 库类型创建已有隔离证据，见 [Enum工具](bde-enum-tools.md)。不支持生效项目标定、实例数据覆盖、数据库保存、数据库目录全局搜索和任意历史 Undo。状态机 transition 不适用数据流 rewire。完整 G0-G7/L0-L3 未通过，具体证据与缺口见实验报告。接口与路径用法见 [新入口](bde-signal-interfaces-usage.md)。

完整读取已默认使用固定临时Smalltalk代码块批量读取标量，保持原工具schema及分页不变。`ASCET_BD_READ_BATCH=0` 可选回单字段getter路径用于排错；不对agent开放任意源码执行。性能及覆盖证据见 `bde-full-read-performance.md`。

高速整组件读取（实验模式）：启动Doge前设置 `$env:ASCET_BD_BULK_FULL='1'`，仍调用原有bd_read。当前已测 AEB_dFxTar 的 fresh 完整采集及全部3页正文，30次复用 Bun 宿主的实际 Tool.call P95=672.241ms、最大673.637ms；93真实请求帧。该结果绑定 `doge-session-read-perf30-03` 的采集范围与源码，不是全部组件或冷启动承诺。默认保留字段批量路径。`bd_inspect(query="capabilities")` 可查看开关/边界，read 返回 read_strategy。完整 AEB_Core 依赖图仍因延期的状态机等问题未验收。

## 依赖公式编辑

使用 `bd_read(component=..., view="structure")` 的模型行 `dependent_formula`，保留原始 text、compiled、formals 的 name/oid，以及 component_default_configuration 域的已有 binding。此信息不表示生效项目配置或运行值。完整 logic ref 与 structure ref 不能直接混用。

`set_formula` 要求精确模型 ref 和 `expect={text,compiled}`，新 `text` 为1-4096字符的ASCII公式。只支持既有 local/cont scalar dependent 参数，保持 formal 集合、身份与顺序；在 detached `SGFormula copy` 上经原生解析/校验后应用。新增或删除 formal、非scalar/非cont、缺失配置均拒绝。格式校验不能替代原生语法校验。

`set_formula_binding` 要求 `target`、40位十六进制 `formal_oid`、`expect={actual:"Main/m_<旧OID>"}` 和新的 `actual="Main/m_<新OID>"`。以目标模型及formal OID共同定位，不能仅凭名字或OID跨公式匹配。只替换已有默认绑定，新actual必须是同组件可定位的独立本地连续标量parameter；不创建配置，不添加缺失绑定，不支持导入参数或dependent参数作为新actual。原生配置/绑定map/entry身份及内容、formals身份在apply/revert前均重新校验。

成功后返回局部实际差异和 `after_snapshot`；`bd_diff(change_id=...)` 不重新抓图。`bd_revert` 恢复原公式内容/编译形式或原绑定alias，保留原生对象。`bde-formula-edit-05` 已完成三种公式各三轮真实Tool.call及独立native/public/公式身份核对、回退和临时参数删除，全部baseline恢复且源码运行中未变；这仅是一份fixture的分项证据，不是全部公式/配置验收。

## 启动和使用

1. 打开 ASCET 6.4，并打开要读取的数据库。工具只连接已运行程序，使用 Cebra 本机 32503 端口；不会隐式启动 ASCET 或切换数据库。
2. 在 `E:\Repo\ASCET\Doge` 执行 `bun run dev`。已打开的旧 Doge 进程需要重新启动以加载新源码。
3. 在 Doge 中直接提出：

> 用 bd_read 读取 \PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AutomaticBraking\AEB_dFxTar，继续读取所有 next_cursor，然后解释完整逻辑。不要把尚未解析的项目标定当作 0。

工具调用示例：

```json
{"query":"capabilities"}
```

上述参数给 `bd_inspect`。确认能力后，给 `bd_read`：

```json
{"component":"\\PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Private\\AutomaticBraking\\AEB_dFxTar"}
```

返回文本的第一行是轻量 JSON envelope，后面是正文。`snapshot` 可重复阅读；后续页只传 `{"cursor":"返回的 next_cursor"}`。分页默认 12 KiB，上限 16 KiB，限额包含 envelope；过小预算可能返回 `BUDGET_TOO_SMALL`。每页记录实际字节范围、累计交付量、下一页游标。单行超长时会按 Unicode 字符边界续传；不是每页都独立构成一个完整方法。

已通过完整读定位后，可以只在线刷新两个节点及其邻接关系：

```json
{"component":"\\PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Private\\AutomaticBraking\\AEB_dFxTar","scope":{"targets":["Main/n15","Main/n176"],"include_layout":true}}
```

这条路径使用 `AscetScopedProbe` 的内部 handle 筛选，不启动完整 reader。最多 20 个精确 Main 节点，默认带 layout；返回所选节点、pin、所有关联边及边界 pin。边界节点正文、定义、类型/公式、方法正文、嵌套内容不采集，响应明确列出缺口。边引用代表端点/类型的多重集合，不是可写的唯一边身份。局部 snapshot 同样支持离线 read/find/inspect/diff。scope 只允许配合 component；读取 snapshot 不能改变其采集范围。

全量和局部观察使用独立历史，不同 target 集合或 include_layout 也分别记录。跨范围 diff 返回 `INCOMPATIBLE_SCOPE`，避免把未采集对象误判为已删除。局部 read 并不能独立完成整个组件的行为理解。

用 `bd_find`：

```json
{"snapshot":"返回的 snapshot","query":"AEB_AxCtrlConfigKp_Modify","kind":"node"}
```

用 `bd_inspect` 精确读引脚：

```json
{"snapshot":"返回的 snapshot","query":"fields","targets":["Main/n15.p72"],"fields":["sequence","input","output"]}
```

重新调用 `bd_read(component=...)` 得到新观察，再给 `bd_diff`：

```json
{"before":"第一次 snapshot","after":"第二次 snapshot"}
```

`bd_inspect(query="snapshots")` 可列出当前 Doge 会话的历史读取。历史 snapshot 可以跨进程继续阅读，但图形身份的跨会话 diff 暂不支持。进程重启、数据库变化或观察中 ASCET 进程身份不明确会拒绝精确匹配。

## 工具调用时自动记录

**本节描述 read 观察历史，与 edit 自动日志分开。** 当前受限 edit 已在工具内部以局部写前/写后读取自动记录，详见后面的隔离编辑章节。实现契约见 [编辑自动记录](E:/Repo/ASCET/docs/block-diagram-edit-journal.md)。

已默认启用，无需 agent 手工创建快照或记住上一次 snapshot。不启动后台监控。

每次 `bd_read(component=...)` 完成原生读取和结构校验后，按数据库路径、组件 OID 及相同采集范围找到最近一次已提交观察，自动保存当前 snapshot、前后引用和逐字段差异。返回 envelope 的 `recording` 包含 `change_id`、`before`、`after`、`changes` 和以下状态：

| 状态 | 含义 |
|---|---|
| `baseline` | 首次记录该组件，没有可比较的前版本；changes 为 null |
| `changed` | 已采集字段有变化，记录旧值、新值、精确 target |
| `unchanged` | 已采集语义字段无变化；保留本次观察，changes 为 0 |
| `continuity_gap` | Doge 会话切换或 ASCET 进程变化/身份未知；保留两端，拒绝强行精确匹配，changes 为 null |
| `not_recorded` | 读取的是功能上线前的历史 snapshot，或记录失败留下的未提交 snapshot |

`bd_read(snapshot=...)`、游标续页、find/inspect/diff 只查看已有数据，不产生新观察。GUI 手工修改会在下一次在线读取时检测；两次读取之间改动后又还原、以及所有中间操作，无法保证捕获。记录时间是观察区间和落盘时间，操作者标为 unknown，不猜测谁改了模型。

查询自动历史，给 `bd_inspect`：

```json
{"query":"changes","snapshot":"任一该组件的 snapshot"}
```

snapshot 在此按数据库/组件身份及该采集范围筛选历史，不仅是该次观察。也可用 component 精确路径和可选 database 路径筛选跨范围历史；都不传则查询整个 store。结果按时间倒序，包含 baseline、unchanged 和 continuity_gap，分页沿用 cursor，不将完整差异塞入历史列表。

查看某次记录的差异，给 `bd_diff`：

```json
{"change_id":"返回的 chg_..."}
```

该响应包含 before/after snapshot ID，可分别用 `bd_read(snapshot=...)` 查看两版采集范围内的正文。保存的历史和差异允许在之后的 Doge 会话查看；这不意味着支持跨会话图形身份匹配。baseline/continuity_gap 明确显示无可比较版本，不返回“无变化”。记录仅涵盖已采集字段；只有带 layout 的局部读比较其局部几何，生效标定仍未比较。

持久化位于 `analysis/bd-tool-state/changes/chg_*.json`，含差异、观察区间、连续性原因及校验和；对应完整数据在 raw/snapshots。在线锁覆盖读取、快照发布和记录提交。先完整发布 snapshot，再完整发布不可变 journal 文件；journal 发布是提交点，不依赖可变 head 文件。异常中断留下的未提交 snapshot 不参与下一次自动比较；已提交历史可直接从 journal 恢复。写盘失败返回错误，不宣称记录成功。同一 snapshot 的内部提交重试不会重复记账；重发在线读取是新观察，通常记为 unchanged。

上述 chg_... 记录是观察历史，不是可回撤编辑。受限 edit 使用独立 edit_... 记录及按 patch 恢复，不调用通用 Undo；状态机仍不支持。

## 隔离编辑与自动实际 diff（实验开关）

启动 Doge 前设置 `ASCET_BD_SANDBOX_WRITES=1`。仅接受 `BDE_Tool_Experiments\Trial_*` 组件，最多20个无连线 literal、无 sequence；仅一个数字 `set_literal`，最长128字符。业务组件依然拒绝。读取 snapshot、编辑及回退必须属于同一 Doge 会话、数据库、组件 OID 和 ASCET 进程 epoch。

先局部读取现存测试组件 `\BDE_Tool_Experiments\Trial_20260929_155551_0f73b7` 的 Main/n3，再将返回 snapshot 给 bd_edit：

```json
{"snapshot":"s_...","request_id":"unique-edit-001","operations":[{"op":"set_literal","target":"Main/n3","expect":{"text":"0.0"},"value":{"text":"123456789012345.125"}}]}
```

增加 `preview:true` 可局部检查但不调用 setter、不消费 request_id。真实 edit 自动局部 before→写前持久日志→setter→StoreToCache→actual after→patch，可能产生文本、位置、尺寸三项 diff。StoreToCache 可重建逻辑并自动提交，不能当作无副作用缓存刷新；尚未验证关闭数据库再打开。

```json
{"change_id":"edit_..."}
```

以上给 bd_diff，完全离线。把同一 change_id 和新的 request_id 给 bd_revert：

```json
{"change_id":"edit_...","request_id":"unique-revert-001"}
```

回退以实际 after 的文本/位置/尺寸检查冲突，并验证恢复后的完整局部字段。相同请求的重复执行返回原记录；started/未知结果不会重发 setter。若返回 outcome_unknown，停止自动重试，保留日志做局部核查。当前没有通用恢复判定工具。

编辑记录在 store 的 edits/，绑定上下文在 edit-bindings/；编辑历史列表尚未实现，保存返回的 edit_... ID。`bd_inspect(query=changes)` 仍是观察历史。未实现 BDE 内 diff 显示、连线、删除、状态机、批量和业务写入。

在线证据：[Doge 验证](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/doge-sandbox-01/validation.json)、[原生日志实验](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/journal-01/result.json)。本轮 Python28项、Bun6项/38 assertions通过，两个旧在线 read 用例未重复跑。

## 安装依赖与路径

- Bun 使用 Doge 现有依赖；本次没有安装新包。
- Python：本机 `E:\PYTHON\python.exe`，需支持 Python 3.10+。默认从 PATH 调用 `python`，可用 `ASCET_BD_PYTHON` 指定可执行文件。
- .NET Framework 4 的 x86 C# 编译器：Windows 下 `%WINDIR%\Microsoft.NET\Framework\v4.0.30319\csc.exe`。
- ASCET DLL 默认 `E:\ETAS\ASCET6.4\cebra\Etas.AscetNET.dll`，可用 `ASCET_BD_DLL` 改写。首次读取或源码较新时自动编译研究读取器，库复制到探针旁边。
- 数据默认保存到 `E:\Repo\ASCET\analysis\bd-tool-state`，可用 `ASCET_BD_STORE` 改写。使用支持硬链接的本地 NTFS 目录，发布 snapshot 时完整写入后再链接，防止暴露半写文件。
- 所有 Cebra 读取及其自动历史提交在服务端加进程间锁，同一 store 的其他在线调用返回 busy。Doge 也将这组工具声明为不可并发执行。
- 单次工具最多 90 秒；探针编译上限 30 秒，在线读取上限 35 秒。结果太慢会明确失败，不将部分记录发布成完整 snapshot。

工具不是独立可搬运的单个 TS 文件：后端依赖本仓库 `scripts/bd_service.py`、`scripts/format_bd_api_read.py`、`scripts/AscetReadProbe.cs` 和本地 ASCET。原始/快照文件会保留模型数据，目前不自动清理，需按工作区数据管理要求处理。

局部读还依赖 `scripts/bd_scoped.py` 和 `scripts/AscetScopedProbe.cs`，超时上限 20 秒。隔离编辑依赖 `scripts/bd_edit_journal.py`、`bd_sandbox_edit.py`、`bd_native_literal.py` 及 `AscetLiteralSession.cs`。

## 验证

已通过：

- `bun run version`：Doge CLI 正常启动。
- 13 项 Python 后端测试：原有读取/diff 校验，加上自动 baseline→changed→unchanged、连线两端及执行顺序旧/新值、持久历史分页、身份断点、数据库/组件隔离、记录写盘失败后的恢复、重复提交、历史缺失/篡改拒绝。真实字段变化采用离线样本构造，不修改在线模型。
- Bun 测试覆盖六工具 registry、原生 Tool.call、自动历史 schema/查询、禁用写入；在线用例读取 AEB_dFxTar 全部分页并检查 56 节点/120 pins/60 连线、搜索/精确属性读取、两次观察自动 baseline→unchanged、通过 change_id 读差异及两条历史。在线用例需设置 `ASCET_BD_LIVE_TEST=1`。
- 本轮另有 4 个局部后端测试、8 个编辑日志离线故障/冲突测试、3 个实验比较测试通过。Bun 在线回归为 7 tests / 61 assertions，全量与新增局部 Tool.call 均通过；`bun run version` 通过。

复现：

```powershell
# 在仓库根目录运行后端测试
E:/PYTHON/python.exe -m unittest discover -s scripts -p test_bd_service.py -v

# 在 Doge 目录运行原生工具测试；默认跳过在线 ASCET 用例
bun test ./src/tools/BlockDiagramTool/BlockDiagramTool.test.ts

# ASCET 已运行且打开样本数据库时，启用在线用例
$env:ASCET_BD_LIVE_TEST='1'
bun test ./src/tools/BlockDiagramTool/BlockDiagramTool.test.ts
```

测试没有发起模型 API 推理请求。此前只读测试不写模型；2026-09-30 新增 sandbox 在线测试真实执行 literal 写入、StoreToCache 和回退，独立新进程确认测试图恢复。registry + Tool.call + 输出映射已验证；未验证 GUI diff 显示或模型自主选工具行为。

## 代码位置

- [原生工具定义](E:/Repo/ASCET/Doge/src/tools/BlockDiagramTool/BlockDiagramTool.ts)
- [工具注册](E:/Repo/ASCET/Doge/src/tools.ts)
- [Python 后端](E:/Repo/ASCET/scripts/bd_service.py)
- [Cebra 读取器](E:/Repo/ASCET/scripts/AscetReadProbe.cs)
- [v0.3 目标设计](E:/Repo/ASCET/docs/block-diagram-agent-tools-v0.3.md)：目标能力比当前实现广，不能把设计表当作可用能力列表。

2026-09-30 02:38：两种reader已改为断开Cebra前释放wrapper，减少退出期远程析构竞争。局部与完整在线复测及20项相关离线测试通过；现有读覆盖不变，耗时/帧数包含新增清理，详见实验报告。

## 2026-09-30 03:42：离线编辑历史入口

已实现 `bd_inspect(query="edits")`，可按 component/database 或 snapshot 的 database+OID 过滤，跨 Doge 会话和 ASCET 进程发现历史 edit change_id。输出 request_id、target、实际 changed_fields、conflict_fields、reverts、状态和时间；具体前后值用 `bd_diff(change_id="edit_...")`。`changes` 仍是读取观察历史，两者语义不同。

此路径不调用 ASCET，不依赖写开关，不为了查编辑记录重新 bd_read。未完成 started 显示 outcome_unknown；仅 intent 显示 interrupted_before_apply；缺失、损坏、孤立 binding 显式列为 diagnostics，不能可靠过滤的诊断保留为 filter_match=unknown。分页文档固定，期间新编辑不会改变后续页；重新查询才刷新状态。历史可读不意味着可跨会话回退，写入身份约束仍适用。

验证：7 个 sandbox/history 路由测试、13 个 service 测试通过；Doge 7 pass / 3 live skip / 68 assertions；version 通过。使用 doge-sandbox-01 的真实在线编辑日志副本，离线 Tool.call 成功找回两条记录、回退关系和 literal/position/size 三项实际变化，随后读取准确 before/after。原日志与副本哈希一致。证据 `analysis/bde-experiments/2026-09-30/history-01/validation.json` 和 `store/history-evidence.json`。这是离线集成验证，不是新在线写实验或模型自主调用测试。原 BDE diff 显示、连线/删除/状态机等仍未完成。


## 2026-09-30：结构编辑与原生绘制接续

已实现隔离结构 profile、10 种 typed 结构操作、局部实际 patch、请求后置条件检查、同 ASCET 进程保留对象回退及 Doge 路由。独立公开 API 核对重连/带边节点删除/带迁移状态删除/迁移动作/改名/迁移创建及恢复。证据及完整边界见 [结构实现报告](E:/Repo/ASCET/docs/bde-structural-implementation.md)，机器可读汇总见 [structural-summary.json](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/structural-summary.json)。较早报告中“尚无结构实现”由本节修正，但不得据此勾选整体业务验收。

`bd_diff(change_id, presentation=show|clear)` 已接线并独立记录展示回执，未完成 UI 验收。在线首次打开状态机 gc 未就绪；第二次 show 成功后真实 expose 回调暴露 CwDrawingArea/gc 类型错误，clear 超时/API 空句柄。修复从 clientData 获取包装对象并捕获异常，尚待在线复测。失败在 doge-structure-overlay-01/02 保留；按用户授权重启后停在数据库 Rebuild now 提示，界面自动操作无法激活。需进入 AEB_1 后先恢复隔离 t8 priority 4→3。旧进程 inverse 已失效，不宣称跨重启精确回退。

提速通用性已补充到 [原生批量方法](E:/Repo/ASCET/docs/ascet-native-batch-method.md)：进程内有界循环+纯值传输、显式恢复记录、图 wrapper 重载/身份、Cebra 平铺参数、route 存储坐标、ESDL alias 及 UI 回调契约。完整 AEB 读取 P95 780.592ms 仍是既有覆盖样例结果，不能外推到任意结构操作。

## 2026-10-02: Compact exact Class caller inspection

Use bd_inspect(query=class_callers,component=<full Class path>) to discover
method/formal aliases. An optional selector={diagram,method_alias,formal_alias,
slot} returns one argument/return and its exact component OID/scope/node/pin
targets. Pass the observed alias strings, not names or argument indices. A void
method call is not an argument/return selector. All pages share one immutable
document and continuation pages do not call ASCET.

Selection changes the returned projection only: the same bounded native caller
discovery remains in the saved raw evidence. Signature/binding hashes cover
collected evidence, not complete types/configuration or write authorization.
Use subsequent exact structure scopes for editable pins and incident edges.
The three-round isolated sample reduces body9760->3472 bytes/pages8->3 and
complete Tool.call delivery median2035.796->892.964ms, with unchanged35 Cebra
frames/58675 response bytes. This is not a full BDE read/P95 guarantee.

General Class signature deletion/materialization has native research evidence
including two hierarchy levels and explicit layout effects. Formal Class
bd_edit, automatic journal, conflict/recovery and display integration remain
unfinished; do not turn the research runner into agent-supplied Smalltalk eval.
