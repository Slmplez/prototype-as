# 历史方案 r7：先闭合精确编辑，再扩展完整能力

本文件保留r7记录。当前方案为[r8五个完整功能包](bde-core-function-delivery-plan-20261005.md)，
任务顺序与当前候选状态以新方案和机器任务表为准；下文不作为当前运行时验证。

当前实施增量：MAIN-03C.1 固定完整图像/字段名导出、prepare 原引用/源码
保留、失败 witness 保留与严格释放已接。一个隔离 prepare 跨连接核对345
对象/1555实例槽/33种class，严格基线不变；正式 read/preview 两次实际调用
通过。两个旧失败 head 因缺完整原始材料在写前拒绝。87项离线回归通过。
本轮没有模型 setter/store/inverse 实验；精确 patch 仍未实现、旧实际恢复
失败仍未解决。下一代码项 MAIN-03C.2；.1 的实际编辑/store材料随该流程补验。
[实际材料证据与限制](../analysis/bde-experiments/2026-10-05/bde-native-material-summary-01/README.md)。

2026-10-05 修订 `bde-functional-delivery-r7-20261005`。
依据用户最新要求：时间目标不再是重点，重点是核心功能是否全部实现。
复用现有六工具与原生后端，按具体功能缺口交付。最新实际状态是：字段/layout
managed 执行、后续材料 head 移交和日志已接正式入口；两条 literal 流程
30 次 Tool.call 恢复所采语义图，但完整原生见证均失败。核心功能未全部完成。
[失败证据](../analysis/bde-experiments/2026-10-05/bde-main-managed-summary-01/README.md)。
以下是后续实施合同，不提升现有功能或 case 状态。

## 方案的具体变化

1. **修复已测出的精确恢复缺口**：不再把重复调用旧 setter 恢复可见值作为
   字段/layout 回退的完成条件。先保存完整原生材料，生成实际字段 patch，
   核对前置条件后恢复原值与原引用；首次正向编辑仍走已审计的原生接口。
2. **先守住材料，再做新实验**：独立 witness 在首次 read/preview 之前捕获；
   失败时保留原生强引用及完整诊断导出，不先 release 再定位。已释放的两条
   失败 witness 不重造；保留对应现有 native record，暂停这两个组件后续写入。
3. **交付物细化到代码与退出证据**：MAIN-03C 拆成五个有依赖的工作项，见下。
   每项直接服务正式六工具；只有完整场景/次数/版本证据满足时才授予 case。
4. **按操作扩展能力**：每项 create/edit/wire/delete 都带实际 diff、局部冲突、
   精确 inverse、inverse-of-inverse 和原 BDE 显示。独立类型、读取及接口开发
   可递补；未恢复或 unknown 的资源不能继续写。显示随实际编辑接入。
5. **保留全部范围，取消速度前置**：跨 Module/Project 能力按端点、声明、
   绑定和恢复的实际依赖推进。性能只报告，不再专项追一秒或重复千节点实验；
   COST-01、43 required case、真实 Doge/AEB_Core、原件恢复和安装包仍必需。

## 完整交付范围

保留 `bd_read / bd_find / bd_inspect / bd_edit / bd_diff / bd_revert`。
覆盖普通 BDE 的 Main、hierarchy、Class、Module、Project 实例和
message/FLOW/A2A/XPass 通路。状态机、独立 Code Mode SDK、新宿主框架延期。

“所有 blocks”依据 ASCET 6.4 原生普通 BDE 工厂与端口合同逐项核对，
包含 variable、parameter、constant、message、enum、component、公式、
数组、矩阵、分布、表及其余适用类型。区分声明、occurrence、共享定义、
端口、连接和实例绑定；工厂数量或 existing_model 复用不替代新建能力。
原生不适用的操作必须有源码合同依据，不允许用 unsupported 掩盖必需缺口。

## 六工具的交付合同

| 工具 | Agent 应得到的能力 | 数据与正确性要求 |
|---|---|---|
| bd_read | 看懂范围内的语义、拓扑、layout、定义和接口；支持完整分页与局部读取 | 精确身份、覆盖范围及未采集内容明确；摘要可展开，不能靠省略必要语义称完整 |
| bd_find | 按语义查找并拿到可用于编辑的对象/端口/边/实例引用 | 同名和跨层对象不混淆；定位依据和作用域可核对 |
| bd_inspect | 展开对象、类型目录、端点、绑定及恢复状态 | 与对应观察版本一致；unknown 用 fresh 只读状态查询核对 |
| bd_edit | 预检后精确创建、改字段/layout、连线/重连、删除及编辑跨资源通路 | 工具内局部实际 before/after、原生附带变化和失败状态自动记录；agent 无需再整图 read |
| bd_diff | 查看某次真实编辑的 before/after patch，并在原 BDE 显示/清除 | 日志查询不连接 ASCET；show/clear 独立调用原生显示，不能伪装为零帧或重放编辑 |
| bd_revert | 按实际 patch 检查冲突并精确恢复；逆操作也是可回退的新编辑 | 保留无关修改；恢复真实对象、端口注册、顺序、几何及绑定，不能删除后同名重建 |

响应复用既有 typed schema、不可变 snapshot 和分页，不另建一套 agent API。
编辑回执交付 actual diff、change 引用、可继续读取的 after_snapshot 和明确
结果；完整原生恢复材料保存在内部日志，摘要说明其未展示的细节。
局部 after_snapshot 不能被合成或标成当前完整图。

## 开发交付顺序

以下 BDE-01–08 是工作流程，现有 M0–M5 / MAIN-01–06 / MAIN-03A–D
仍是范围和代码任务标识。任务表记录具体前置，不使用整阶段完成的全局锁。

| 流程 | 交付物与代码工作 | 退出证据 |
|---|---|---|
| BDE-01 Main 字段与编辑历史 | 利用已保留 native record，接正式 managed inverse 的 head/方向、材料移交、实际 diff 和 after_snapshot；先字段/layout | 正式 edit → revert → revert-of-revert → 最终恢复；保留无关编辑、写前拒绝冲突、unknown 可查询；独立身份/顺序/字段/几何核对 |
| BDE-02 Main 连线与删除 | 连续 move/route/connect/disconnect/rewire/create/delete，补各操作自身的双向恢复 | 已连接输入、fan-out、路由端点和删除依赖正确；每次沿用 after_snapshot；connect/create 再恢复同一对象和端口 registration |
| BDE-03 全类型操作 | 先 variable/parameter/constant、enum、message，再 component/公式、数组/表及剩余 family；补读取/声明/occurrence/字段/端口合同 | 每个适用 type × owner/scope × operation 都从正式工具执行，实际 diff、删除、精确恢复及原图显示有证据；清单穷尽另核对 |
| BDE-04 hierarchy | 原生 child 类型、两级以上内外 pin 配对、跨层路径与每个 scope 的编辑和显示 | 同名边界明确；边属于正确图；创建/修改/删除/恢复均核对身份、接口和无关变化 |
| BDE-05 Class | 已编译内核接永久 commit、执行 WAL 和正式局部 inverse；补 output/in-out、enum/complex、argument/return、字段 get/set | 跨调用真实新状态、所有 caller 精确更新、局部冲突和回退自身；临时发布后立即恢复不算正式功能 |
| BDE-06 跨 Module/Project | 接完整 message 角色、send/receive、A2A/XPass 实例绑定、Class/层级端点和执行配置，复用 connect_path | 精确 source→sink 通路可创建、修改、删除和恢复；歧义拒绝，逐资源 confirmed/failed/unknown 如实记录 |
| BDE-07 原 BDE diff | 各流程开发时接 show/clear；最后补所有图元和 scope 的视觉生命周期缺口 | 新增/删除/字段/重连可见；缩放、滚动、关闭重开正确；模型和深层 Undo 不污染 |
| BDE-08 整体交付 | 真实 Doge agent 与指定 AEB_Core 隔离副本完整任务、原件恢复、实际安装包 | 43 required case、完整支持矩阵、原件恢复和包验收全部通过后结束 |

BDE-07 从 BDE-01 起随实际日志推进；表中靠后只表示最终视觉矩阵收尾。
BDE-03/04/05/06 的独立读取、schema 和已审计实现可以提前开发。
在线通路只使用其自身已审计且可恢复的操作，不能因调整顺序跳过 guard。

## 立即下一项及队列切换

最近的具体交付物是 **BDE-01 / MAIN-03C：完整原生字段 patch 的正式恢复**。
MAIN-03B 已有 literal 正反向实际执行证据，接续它，不重复开发首次材料归属。

| 工作项 | 实施位置与交付物 | 退出条件 |
|---|---|---|
| MAIN-03C.1 材料与失败定位 | bde_structure_edit.st、bde_native_graph_current.st、bde_main_edit_workflow.py：写前保留原对象强引用、字段/collection/value 图像；独立 witness 导出 token→class/字段名/原引用及变化，失败保留材料 | 区分 read/preview、setter、store 各步实际影响；7项既有差异能追溯，不能猜测为无害缓存；新试验失败仍有可核对原始材料 |
| MAIN-03C.2 实际 patch | 固定原生 helper 与 bde_structure_edit.st：保留真实 before/after，对字段槽、原 mutable 值和已审计 collection 生成双向 patch | 保存实际变化及 store 附带影响；材料/身份缺失或未知类型写前拒绝；不保存整图回填命令，不将声明意图当实际 diff |
| MAIN-03C.3 局部前置与执行 | 固定 managed inverse：核对 head/epoch/scope、目标/端口归属与每个 patch 单元预期值，再恢复原引用/原值；store 后重新观察 | 同一投影内无关字段保留；重叠字段冲突写前拒绝；literal/comment/move/route 不靠重复 setter 冒充精确恢复；source/几何终态可核对 |
| MAIN-03C.4 正式日志与恢复 | bd_structure_journal.py、bd_native_structure.py、bd_recovery.py、AscetStructureSession.cs：接实际 patch/proof、after_snapshot、head 移交与 fresh recovery | 每次 inverse 是新编辑；持久 intent→执行→实际观察→proof→确认 pending；执行未知不盲重发；日志 diff/重放不连接 ASCET |
| MAIN-03C.5 在线闭环与显示 | bde_main_edit_workflow.py、独立 oracle、正式 Tool.call 和原 BDE show/clear | 新隔离组件完成 edit→inverse→redo→最终恢复，完整身份/顺序/字段/source/几何相等；独立编辑和重叠冲突、旧 head、unknown、显示另有证据；次数按既有 eval |

五项状态见机器任务表：.1 有局部 prepare/只读证据，.2–5 仍待实现/验证，
不宣称 patch 内核已实现。第一条试验可先用 literal 定位，
完整字段/layout 交付仍需 comment/move/route。原生图中的 String/Point 原引用、
脱离活体图的原对象值及 nil→Dictionary 均继续纳入独立核对。
没有源码合同和实际影响依据，不能删掉 oracle 字段来使实验通过。

修改边界使用两层检查：身份、父/绘制顺序、端口注册等结构不变量，以及实际
patch 单元的当前值。三方恢复只更新该 patch，保留无关修改。序列化/缓存
由已审计的 store 合同处理并核对附带变化；不回填整份旧 source 覆盖他人编辑。
有无关变更的场景由独立 oracle 核对“原基线 + 保留变更”，不能要求整图回到旧值。

原生强引用材料和 JSON 证据职责不同：JSON 用于审计，不能重建 Smalltalk
对象身份。进程重启导致材料丢失时继续拒绝旧 inverse，不能重绑 epoch。
保留规则必须绑定 owner/head 和生命周期，不引入无限增长的常驻监控。

随后补 BDE-02 的连续操作，再按 BDE-03 的优先 family 扩展。
删除/断线与新建/连接的再恢复分别审计；创建不能重复调用工厂冒充 redo。

每个未解决的问题必须写明缺代码、缺原生合同还是缺验证，并指向正式工具
交付物。若当前材料/接口受阻，保存具体失败与恢复状态，选择队列中依赖已
满足的代码工作。新探针限于当前功能所需；不反复增加与工具脱节的研究。
unknown/pending 阻止受影响实例/资源继续写入，不以切换任务绕过。

## 逐能力状态和验收

[覆盖矩阵](bde-core-function-coverage.json) 与
[任务表](bde-core-function-workboard.json) 是状态入口。
最小记录单位是 family/type × owner/scope × operation；逐项写明：

- 原生适用依据、schema 与正式后端位置、缺实现和缺验证。
- actual journal、局部冲突、精确 inverse、inverse-of-inverse、原 BDE 显示。
- 候选版本、实例/epoch/组件/scope、fixture/次数、独立 oracle 和原始证据。

代码已实现、正式入口可用、局部在线验证、完整 case 通过分别报告。
不按测试数、实验目录数或声明 kind 数计算完成率。任务表新增的流程状态是
开发计划，不能提升已有功能或 case 状态。

复用 bde_acceptance.py、bde_tool_client.py、隔离 runtime 和公开/native
独立 oracle。场景随功能接入，测试新改动、受影响旧结果、失败项和未解项；
源码相容且依赖未变的证据可复用。不为文档修改重跑在线实验。

机器策略保持 bde-tools-eval-v2-functional-delivery：
全部 43 required case、G0–G9、次数和独立证据条款保留；PERF-01/02/03
是三个报告项。COST-01 必须证明 edit 不暗采整组件语义、日志 diff/历史/分页
没有新在线请求。视觉、真实 agent、AEB_Core 和安装包证据不能用夹具替代。
缺场景、次数、版本、独立 oracle 或恢复证据的完整 case 不授予 pass。

## 原生接口与在线边界

复用经审计的 EsCompiler 固定临时代码块、BDE 定位、layout、连线和绘制
接口；固定批量读取直接观察当前对象，不开放任意 Smalltalk/selector。
快照解析、查找、分页和日志 diff 在本地执行；活体模型操作仍按连接串行。

写入仅使用登记的隔离实例与组件。跨资源全局预检后各步再校验，group
不是原子事务，部分失败/unknown 和补偿结果逐资源保留。
A2A/XPass 本阶段必须完成模型声明、绑定、连接及可核对执行配置；
外部总线环境未测试时不能宣称真实总线传输通过。

遗留 AEB_1 的 29 份材料和 hold 持续保留，具备恢复条件时单独处理；
不能清 hold、重绑旧 epoch 或同名重建。其阻塞不冻结无关隔离开发，但
原件未恢复仍阻止最终完整交付。自动化维持暂停。

## 当前已确认的基线与缺口

Main 已声明26种创建 kind，child11种，Class4种 primitive input；
这些数量不证明清单穷尽或所有操作可用。现有正式 read/find/inspect、
部分普通 edit/diff/原始 inverse、connect_path 与原 BDE 显示继续复用。

首次 inverse 材料保留已有三条正常 Main 流程和两种固定 metadata 故障查询
的局部证据。之后新增两条 literal managed 流程，正式正反向执行、后续 head
移交和日志查询实际可调用；完整原生恢复仍失败。其他字段/layout 操作缺在线
验收；delete/disconnect/connect/create 的 managed 再恢复仍有实现缺口。
离线故障测试及固定 metadata 故障适配器不代表真实 TCP 断连或 setter 中断。

完整 Class 局部 inverse、全类型/跨层/跨 Module 通路、视觉生命周期、
真实 agent/AEB_Core、原件恢复与实际包仍有缺口。CONTRACT-02 在其记录
版本离线通过，不意味着其余完整 case 全未开发或已验收。
本次只修订方案，无 ASCET 调用、模型修改或新功能 pass。自动化维持暂停，
不新增 subagent；后续执行接上述实际代码任务。

[最近原始证据](../analysis/bde-experiments/2026-10-05/bde-main-managed-summary-01/README.md) ·
[验收入口](bde-tools-acceptance-runner.md) ·
[方案修改核对](../analysis/bde-experiments/2026-10-05/bde-functional-delivery-r7-01/README.md)
