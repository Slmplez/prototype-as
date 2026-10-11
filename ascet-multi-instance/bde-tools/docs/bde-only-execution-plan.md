# 普通 BDE 优先执行计划

2026-10-05 当前方案保持 **r12**，核心功能完整交付优先，性能只记录。
六工具、全部普通原生适用类型/层级/Class/Module/Project/message/A2A/XPass、
43 required case、独立 oracle 与原有场景/次数保留；整体开发尚未完成。

本轮指定隔离 PID45476/32641 已通过 API 打开精确数据库，并释放临时连接。
新 epoch 的三结构各三轮 read/find/inspect/完整分页通过，共87次 Tool.call。
staged_v1 的 source 原引用捕获准备及11项私有 patch 检查通过；没有模型
setter/store，准备与丢弃后的完整 witness 不变并释放。

带 identity_v1 capture 的 operator_fanout literal 正式完整历史通过：16次
Tool.call，四个不同 change_id/after_snapshot；edit→实际 diff→inverse→redo→
最终恢复，完整原生/source 独立 witness 通过。四个终态均保留99个 before 和
165个 after source 对象材料，source 根对象身份保持一致。120项离线回归通过。
三份试验各601个源文件原字节/SHA封存，旧失败不改 verdict。

这是原材料捕获接入及限定 literal 历史，不是正式局部三方回退验收。
生产 local inverse 仍关闭；下一核心代码任务为 MAIN-03C.5d 局部 native/source
执行、无关修改保留、重叠冲突写前拒绝及回退自身。MAIN-04 显示、类型创建及
接口/通路按自身依赖继续。全类型/跨模块、source 持久化、原件恢复、真实
Doge/AEB_Core、包和完整 required case 仍未完成，没有新增完整 case pass。

[当前方案](bde-core-function-delivery-plan-20261005.md) ·
[任务表](bde-core-function-workboard.json) ·
[最新实现与独立复算](../analysis/bde-experiments/2026-10-05/bde-source-capture-summary-01/README.md)。

下方按原版本保留历史记录；当前状态以上述任务表及新证据为准。

## 历史方案与规范（下方保留原记录，case 条款不变）

当前执行方案为 **r8：核心功能完整交付优先**，见
[五个功能包与下一项正式代码交付](bde-core-function-delivery-plan-20261005.md)。
性能只报告；每项操作同时验实际diff、冲突、精确双向恢复与原BDE显示。
字段patch绑定/编译与非零私有执行已通过；实际模型恢复仍未验证，见任务表最新增量。
本次仅修订方案，没有新增功能pass；下方增量和旧方案按各自记录版本保留。

2026-10-04 用户最新调整：性能是一项报告指标，核心功能完整才是交付重点。
当前顺序改为 [M0–M5 核心功能交付方案](bde-core-function-delivery-plan-20261004.md)，
并采用 eval v2。旧 B1–B9 继续作为需求与反例目录，不把一秒优化、重复性能
采样或私有恢复探针的扩展作为正式功能的前置工作。
当前修订 r7（2026-10-05）：M0–M5 保留范围，BDE-01–08 是实际工具交付
流程。先闭合字段/layout 的正式 edit→inverse→inverse-of-inverse→最终恢复，
随后补连续连线/删除、variable/enum/message 等类型、hierarchy、Class 和
跨 Module/Project。显示从每项实际 edit 起接入，最后补视觉矩阵和完整包。
不等待全部 family 历史或 Main 类型验收完才开发无关路径；每条在线写入
自身的 actual diff、冲突和精确 inverse 前置不放宽。下一项 MAIN-03C.1–5：
保留完整原生材料/失败 witness→实际 patch→局部 guard/精确执行→正式日志
与 recovery→在线及原 BDE 显示。managed 执行和 head 移交已有 literal 证据，
但完整 native 两次失败；不重复旧 setter 试验，不放宽 oracle。
最终43 required、真实agent/AEB_Core、
原件恢复和实际包须全部完成；性能只报告，COST-01仍为必需。
CASE_ACCEPTANCE入口v1只完整验收记录版本的CONTRACT-02，其他完整case
未通过。开发/工具流程验证/完整case分别报告，本次不新增功能pass。
[验收入口与证据](bde-tools-acceptance-runner.md)。

2026-10-01 新增用户最终需求：本阶段普通 BDE 包含跨 Module message 收发及 Class/hierarchy 接口通路。[S1-S5](bde-signal-flow-tools.md) 在既有身份、局部日志、恢复和显示实现上继续推进，验收扩展见 [FLOW eval](bde-signal-flow-eval.md)。先只读核实原生关系，再扩展隔离通路编辑；不改变状态机延期，也不把旧性能/创建证据推广为通路通过。

2026-09-30，审查后修订版。最新范围为只设计和开发普通 BDE tools；Code Mode 执行器/SDK、宿主框架扩展和状态机均暂缓。本文是 BDE tools 的执行顺序来源，将 [独立审查的6项发现](E:/Repo/ASCET/docs/bde-agent-tools-review-20260930.md) 中直接影响 BDE 正确性的部分纳入任务。身份、修改记录、串行访问和恢复仍属于工具内部工作，不扩展为通用平台项目。

最新实现：B1 的纯校验拒绝不破坏恢复已修复，普通 BDE 在线链路通过；B4 的原生共享 validate 已接入 preview，占用输入及错误方向在线拒绝通过。其余审查项与未覆盖故障仍待处理，详见 bde-rejection-recovery-01。

2026-09-30 eval驱动开发更新：B4的普通BDE删除/断线恢复已加入父children原生身份顺序检查，以及写前类型化conflict回执。bde-order-recovery-02在同一普通夹具上完成12次在线场景（两种操作×正常/重排冲突×3），全部恢复通过；32项相关离线回归通过。REVERT-01/02仅部分场景有证据，完整门槛仍未通过。B2身份归属、B3实例锁/取消、普通BDE显示等继续待办。

## 本阶段目标

让 Doge Code 的 agent 完整理解普通 Block Diagram，在准确身份和局部前置条件下修改节点与数据连接，自动记录实际 diff，在原 BDE 中查看变化，并按 patch 检查冲突后回退。编辑日志无需再次全图 read，不常驻监控。

## 当前证据

- 普通隔离 fixture：`BDE_Tool_Experiments\Trial_data_20260930_012339`。
- `bde-focus-read-01`：普通图结构读取 220.359ms / 24 请求帧，dirty 0→0。不是完整语义读取。
- `bde-focus-validation-01`：connect_data、disconnect_data、rewire_data、delete_node 四项在线实验全部通过。每项包含写前读取、原生准备、执行、实际 diff、同请求去重、回退、独立公开 API 核对。每项结束均恢复其写前状态。
- 完整研究流程分别 541.488 / 529.223 / 531.693 / 516.797ms，请求帧 543 / 489 / 516 / 466。不是单个 edit 延迟分布，也不是业务图性能结论。
- 本轮增强 BDE 后置条件：连接只能增加一条目标边；断线只能移除指定边；重连必须保留观察内对象集合；节点删除只能移除节点、所属 pin 和 incident 边。意外结构增删返回 postcondition_mismatch，保留实际 patch 供恢复。此检查仍不能证明其他字段或观察范围外无副作用。
- `bde-rejection-recovery-01`：成功重连 A→两类非法 preview/prepare 拒绝→回退 A，native observation/generation 与独立公开 API 均保持及恢复一致。完整研究流程 891.768ms/954请求帧，不是单 edit 耗时。12项相关离线测试通过；本轮未在线注入 apply/store 故障或测试层级/sequence。

## 实施顺序与验收

统一门槛采用 [BDE Tools Eval v2](E:/Repo/ASCET/docs/bde-tools-eval-gates.md)，机器可读策略为 [eval-policy.json](E:/Repo/ASCET/docs/bde-tools-eval-policy.json)。当前 M0–M5 描述开发顺序，G0–G9 描述必须提供的功能证据；以下 B1–B9 是历史任务与反例目录。单次研究实验不直接升级为L1/L2/L3通过。状态、次数、同覆盖与独立oracle按eval文件执行。

| 顺序 | 工作与代码落点 | 退出条件 |
|---|---|---|
| B1 / P1 | 修复拒绝请求破坏恢复：`bde_structure_edit.st`、结构日志 | 成功 A→prepare 拒绝 B→回退 A 通过；B 无模型修改也不清 checkpoint。真正已执行但结果未知的请求仍禁止自动重放。对应审查1 |
| B2 / P1 | 统一数据库会话、原生组件/specification、图 generation 身份域：原生 reader/edit、C# session、snapshot | 同 OID 数据库副本、同路径重开、图重载、进程重启均拒绝旧引用；复用 diagram 前核对真实归属。嵌套原位变化不能只依赖 shallowCopy+equals。对应审查2 |
| B3 / P1 | BDE 内部实例锁与请求状态：`bd_service.py`、native adapter 及现有工具调用边界；不开发通用宿主框架 | 不同 STORE 的 BDE 工具对同一 ASCET 串行；新 epoch 重新绑定。未 started 才可确认未执行；已 started 超时/取消返回未知及查询标识。原生状态未知时不盲目放行依赖写入。对应审查4、5 |
| B4 / P1+P2 | 删除顺序冲突、恢复容量/释放和共享 validate/plan：native read/edit、preview、journal | 父容器顺序/邻居纳入恢复前置条件，错误位置不能通过；占用 input、错误方向、层级/sequence 限制在 preview 与 prepare 一致拒绝。preview 不分配恢复记录或破坏 checkpoint；释放明确改变恢复能力，不能静默淘汰。对应审查3、6 |
| B5 | 原 BDE 临时 diff 图层收尾 | 普通 BDE 节点/线残影、缩放滚动、clear 背景网格、窗口销毁注销及重开通过；模型和 Undo 状态不变。显示失败只重试显示，不重放 edit |
| B6 | 结构化 Observation/Receipt 协议、logic/structure/layout 精确引用贯通 | 同一真实对象有可校验映射，多重边不按端点合并；长记录分页/UTF-8/字节连续性通过；coverage 与未知字段明确；旧六工具仍兼容，schema/能力说明与实际后端一致 |
| B7 / 暂缓 | Code Mode SDK 与宿主接入 | 不纳入本阶段执行及完成前置条件；保留设计备查 |
| B8 | 局部后观察、连续编辑及普通节点能力扩展 | edit 返回声明范围的后观察，后续局部编辑不整图重读，也不把旧全图合成当前快照。逐项扩展 literal、字段、位置/路由、sequence；各自通过原生影响审计、actual diff 和恢复，不按 pin 排序推断执行语义 |
| B9 | 现有工具入口、原 BDE 与性能整体验收 | 普通 BDE read→定位→编辑/删除→自动 patch→原图显示→冲突/回退全链路；用现有调用入口验证，不建设新执行器。同覆盖下分别测 read/edit/revert/display；实际 agent 使用与 API/Tool.call 证据区分 |

## 审查发现的回归场景

| 审查项 | 必须保留的反例与通过依据 |
|---|---|
| 1：prepare 拒绝导致旧恢复失效 | A 成功后分别构造 input 已占用/方向错误的 B；B 无 setter，A 仍可精确恢复。另测 apply/store 未知结果不会被错当作安全拒绝 |
| 2：缓存归属 | 使用隔离数据库副本验证同 OID 切库、同路径重开；记录数据库会话/原生归属/epoch/generation。离线模拟通过不能代替该在线负例 |
| 3：恢复顺序 | 删除后重排父 children，验证冲突或按明确邻居规则恢复；独立读取比较原生顺序、身份、端点和几何，不只比较按 ref 排序的行 |
| 4：跨 STORE 并发 | 可控离线 worker 先证明互斥；随后两个隔离测试宿主验证真实 ASCET 调用不重叠，进程异常退出后不会提前放行未知写入 |
| 5：取消/超时 | 分别在入队、prepare、started、写入后回执前取消/断开；查询 handle 能找回确认结果或明确 unknown；同 request_id 不重复写。停止宿主不能被解释成 ASCET 已停止执行 |
| 6：preview 语义 | 不合法方向、已占用 input、不支持删除均在 preview 拒绝，且 checkpoint/恢复容量不变；合法 preview 后模型变更仍由 apply 的再次校验拦截 |

## 依赖与推进规则

执行主线为 B1→B2→B3→B4→B5/B6→B8→B9，B7 暂缓。直接共用原生校验的 preview 修正随 B1 提前完成；B4 的顺序恢复仍需单独推进。B5 与 B6 可分别开展，但 ASCET 在线实验始终串行。B6 协议服务于 BDE 工具本身，Code Mode 不再是前置条件；在正确性缺口关闭前不扩大业务写入范围。

operation handle 表示一次可查询执行，request_id 表示幂等意图，change_id 表示已记录的实际修改，observation 表示有范围的采集。四者映射持久化，不混成一个“版本号”。通过现有 bd_inspect 扩展执行状态查询，避免仅为 Code Mode 另建一套生命周期。

每阶段交付代码、针对性离线回归、隔离在线结果及能力表更新。恢复对象暂限同 ASCET 进程；跨重启精确恢复另列研究，不以同名重建冒充。业务模型写入仍关闭，扩大支持范围须先有对应类型和故障证据。

## 性能与最终交付口径

一秒性能目标不再阻塞交付。read、edit、revert、presentation 的现有版本绑定
样本、P50/P95、失败率、帧数和字节继续保留；新增功能记录实际成本和范围，
不为延迟单独安排重测。功能完整性、实际 diff、精确连接与恢复不会因放宽
时间目标而放宽。小夹具研究耗时不冒充单工具延迟，已有失败不改写为成功。

工具返回单独统计原始采集字节、交付字节、分页和调用次数，不把数据交付完整等同 agent 理解完整。Code Mode 专项指标随 SDK 工作暂缓。

最终交付包括支持/不支持矩阵、恢复等级、各阶段证据链接、可复现命令和未通过项目。原 BDE diff、删除恢复、agent 连续编辑不能因只读提速通过而省略。

暂缓：状态机 trigger、condition/action 扩展、entry/static/exit、初始状态、迁移换端点、状态机层级/边界，以及专门的状态机显示实验。已有状态机接口不删除，不新增能力声明。

## 复现普通 BDE 验证

在 ASCET 已打开 AEB_1、没有未保存编辑且没有其他实验运行时执行。每次使用新的输出目录，旧引用失效或模型状态不同则停止。

```powershell
E:\PYTHON\python.exe scripts/bde_structure_read_experiment.py --component 'BDE_Tool_Experiments\Trial_data_20260930_012339' --output analysis/bde-experiments/2026-09-30/bde-read-NEXT
E:\PYTHON\python.exe scripts/bde_data_validation.py --reference analysis/bde-experiments/2026-09-30/bde-read-NEXT/probe.json --output analysis/bde-experiments/2026-09-30/bde-validation-NEXT
```

失败立即停止后续实验；检查各操作目录里的 journal 和 result，不自动重发结果未知的写入。测试不修改业务 AEB 原件。定时自动化 bde 保持暂停。
