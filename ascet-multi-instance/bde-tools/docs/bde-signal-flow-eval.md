# BDE 跨层级信号通路 Eval 扩展

2026-10-04：以下14项功能 case 已纳入 eval v2 的必需组 G8；一秒性能不再
作为它们的前置门槛。正确身份、真实绑定、完整语义、精确编辑、实际 diff、
冲突/恢复和原 BDE 显示要求全部保留。旧28项和历史实验结论按原版本归档。

2026-10-01。扩展 [普通 BDE eval](bde-tools-eval-gates.md)，不修改旧 28 case 或 G0-G7/L0-L3 结论。全部条目目前未授予完整通过；现有接口探针仅为其中部分共同字段证据。设计见 [通路工具](bde-signal-flow-tools.md)。

## 判定与证据

仍使用 pass/fail/not_run/blocked/not_applicable，每项绑定源码/运行时版本、真实数据库/Project/实例身份、fixture、采集范围。required 项不可改成 N/A。未另注明次数时在线场景至少三轮；离线夹具只能证明合同。业务原件只读，写实验在 Trial_* 的隔离组件和对应隔离 Project。

| Case | 必需场景 | 硬门槛 |
|---|---|---|
| FLOW-READ-01 | Module message 声明及两端 occurrence | scope 与 send/receive/send_receive 分别逐字段核对；graph 未采集不当空图；array/matrix/enum 不隐式降级为 scalar |
| FLOW-BIND-01 | exported-send/imported-receive、exported-receive/imported-send、双向声明 | 指定 Project 中声明 channel 与实际收发角色分开；全候选和原生解析结果有独立证据；不把 exporter 默认当发送端 |
| FLOW-BIND-02 | 同 label 同类型两个 exporter、同名不同 kind/type、无 exporter | 全候选保留；歧义/未解析写前拒绝；公开 first-match 不当唯一绑定；不得改 global label 规避冲突 |
| FLOW-ID-01 | 同 Module/Class 定义多个实例、相同路径/OID 切库、重启/图重载 | endpoint 含 Project/实例链及原生 scope；旧引用可靠失效；只修改预期实例，共享定义影响明确 |
| FLOW-CLASS-01 | argument/return/in-out、字段 get/set、同名不同 method formal、无参数 selector | method/formal alias 与 occurrence 精确核对；selector 不作数据口；不能推断 argument 到 return 的数据流；既有状态机接口明确延期 |
| FLOW-HIER-01 | 两级 hierarchy、内外方向反转、同名 boundary | 原生 pin 配对与 public 图逐项核对；名称、排序、坐标不参与身份选择；每段图内连接正确 |
| FLOW-READ-02 | 局部通路、多页、缺方法正文/Project绑定/执行信息 | 共同字段与完整独立读全等；保留重复边和实例；缺口阻断有关断言；缓存/续页不暗采新版本 |
| FLOW-EDIT-01 | 两个 Module、Class输入/输出、两级 hierarchy 已有接口连线 | 真实 Tool.call、每段原生身份/连接正确；每步 actual diff 自动记录；preview/错误方向/占用 input 拒绝且无写入 |
| FLOW-CREATE-01 | 新 message 声明/两端 occurrence/连接，新增 Class/hierarchy接口 | 精确复用/创建策略；声明、type/kind/shape/角色、真实绑定、图形/接口/调用全部后置核对；共享接口影响不遗漏 |
| FLOW-EXEC-01 | 有/无 sequence、不同 process/task、发送与接收顺序 | 声明执行配置精确采集/编辑/回退；未核实 schedule 明确返回 execution unverified；静态连通不冒充运行传输 |
| FLOW-JOURNAL-01 | 三个资源编辑中第二步失败、started后丢回执、日志落盘失败、重复request | 逐资源 confirmed/failed/unknown真实；不重发未知写；group不伪装原子；查diff零在线读取；恢复材料在写前持久化 |
| FLOW-REVERT-01 | 完整通路逆向、其中一资源外部修改、新增共享引用、恢复中途失败 | 全资源先预检；冲突在首步写前拒绝；每步重验且保留无关变化；只删本次拥有资源；partial/unknown不冒充完整恢复 |
| FLOW-DELETE-01 | 删除边/occurrence/声明/共享接口或定义 | 依赖范围明确，外部引用阻止删除；原身份、顺序、几何、绑定恢复；不能同名重建替代精确恢复 |
| FLOW-UI-01 | Module/Class/两级hierarchy各 scope 的新增、删除、重连 actual diff | 原 BDE show/clear、缩放滚动、关闭重开三轮；无假跨窗口数据线；模型与深层Undo无请求外变化；不可显示类型如实拒绝 |

## 分阶段声明

2026-10-02 partial evidence: project-tools04 and module05 validate native
database-object tokens, public common projections and 122 bounded instances.
Project-path01 validates three actual cached Doge path queries, including a
uniquely selected cross-Module binding, with zero online frames. Candidate-set
completeness, ambiguity fixtures, Class bodies and token reopen lifecycle remain.
Group01/02 each validate three independent two-resource edit/diff/replay/inverse
cycles; native all-resource inverse preflight rejects a later move before the
first restoration. Both restore full public trees/declarations. Group02 adds
per-original-window show/clear calls, with complete visual acceptance pending.
Group fault tests are offline only. This evidence does not grant any full FLOW
case pass or certify dependent channel/connect_path construction.

`bde-hierarchy-presentation-03`提供部分FLOW-UI证据：Main/两级同名子图三轮9cases、18对实际创建/删除diff show/clear、54次原生画布/回调检查、21项拒绝，65份完整public图/声明观察保持，所有修改恢复。按原生UI父子ID定位，不把UI/API对象混用；跨scope不绘制。Undo一个entry的存储图内容检查通过。无视觉、缩放滚动、关闭重开验收；无连线/模型字段child展示样例，完整FLOW-UI仍未通过。

`bde-hierarchy-nodes-03`新增部分FLOW-CREATE/EDIT/DELETE/JOURNAL/REVERT/HIER/ID证据：两级子图10类创建/普通删除、双来源双input节点删除恢复、跨scope引用与父hierarchy逆向保护，三轮72 cases、162 edit/162 inverse通过。359份完整public观察与324个累计实际patch一致；60次diff为0帧，edit/inverse回执无额外read，全部基线恢复、无outstanding。消息仅默认cont声明，不证明channel/角色/enum消息、跨Module/Class group或运行传输；public审计不独立证明原生身份/顺序，UI/重载/故障及完整FLOW仍未授予通过。nodes02锁拒绝失败保留，late-cleanup单独证明遗留comment已恢复。

此前`bde-hierarchy-edit-06`三轮实际Tool.call提供部分FLOW-EDIT/JOURNAL/REVERT/HIER/ID证据：一个root generation下Main/outer/inner的9条断开/重接/恢复链和outer3次换源，54个拒绝/冲突、9次0帧diff、after_snapshot继续编辑、53份完整public观察与21条actual edge patch一致，完整基线恢复且无outstanding。不是跨Module/Class多资源流程，也没有UI验收。01类型缓存/restore_mismatch失败与独立恢复、05局部对全图的实验失败原样保留。详见[hierarchy编辑](bde-hierarchy-edit-usage.md)及最新实验报告。

2026-10-01 分项证据更新：`bde-hierarchy-path-05` 在一份两级同名、一入一出隔离夹具上完成三轮真实 Tool.call、四对双向/归属原生身份、九段路径、公开共同图字段、全部分页与12个零在线负例。`bde-signal-tools-core-03/module-03` 各三轮验证实际接口交付、Class formal/消息角色及公开共同投影。列式文档还原后的摘要字段没有减少；Class 正文、Project/实例链、shape/enum详情、运行信息仍未采集，不能据此授予完整 FLOW gate。

`bde-hierarchy-structure-preflight-01` 仅证明带内部连接的夹具可以经现有 Main 结构读取器建立深层 source checkpoint，dirty=0->0；不证明 child scope 已可编辑或恢复。当前统一拒绝接口快照的所有 edit 路由，含 literal 特例；checks 对该视图返回 Class/hierarchy 的实际已知/未解析计数。原 G0-G7/L0-L3 结论保持。

- R1 接口读取：通过 FLOW-READ-01、FLOW-CLASS-01 及对应 FLOW-ID-01 只读项，只能声明所验证接口。
- R2 静态通路检查：R1 + FLOW-BIND-01/02、FLOW-HIER-01、FLOW-READ-02；执行信息缺口明确保留。
- R3 隔离通路编辑：R2 + FLOW-EDIT-01、FLOW-CREATE-01、FLOW-EXEC-01、FLOW-JOURNAL-01、FLOW-REVERT-01、FLOW-DELETE-01 及写身份项。
- R4 完整静态工具闭环：R3 + FLOW-UI-01 + 旧工具对应 G0-G7 门槛。

运行总线/硬件实际传输、A2A协议或XPass外部环境需另有运行验证；R4不能代表此类验证已经通过。跨重启精确恢复仍不自动承诺。

性能报告只测新增通路类别与当前失败/受影响项，不重跑已认可千节点测试。同字段/对象覆盖下分别报告采集、离线路径分析、edit/revert/display 的P50/P95、真实帧、字节、失败原因和未采集范围，不预设任意多组件通路均<1s。
