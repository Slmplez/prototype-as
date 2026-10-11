# BDE tools：设计目标与开发任务

当前任务已经拆分为可独立验收的 T0–T9 节点，依赖图、状态和每个节点的完成门槛见 [BDE tools task nodes v1](bde-tools-task-nodes-v1.md)。当前执行节点是 T3.1 → T5.1：先把 Message 引用差异接入生产 journal，再验证一条真实连接闭环；不把旧 0/60 矩阵或离线夹具升级为在线通过。

2026-10-07 新增 payload preview：agent 可从 retained source owner 读取完整 `CTreeSearchObjectRecord` payload 和 key/length 守卫；这是精确 before 证据，仍未执行 serializer after、record rewrite、flush 或 inverse。下一步是把该 payload 与 fresh changed-list 的实际 after 绑定，并做冲突/回退验证。

[payload 证据](../analysis/bde-experiments/2026-10-07/bde-serializer-payload-preview-increment-01/README.md)

2026-10-07 fresh v6 验证：同一 ASCET 进程新建写前 token `edit_f4de…73ecf`，重新捕获 component/source owner、完整 reference baseline，并成功读取 source serializer configuration；9/9 unchanged inbound 计划无 patch。下一项是新隔离组件的真实 changed-list serializer/record rewrite 与 flush guard，不能把本轮 no-op 计划升级为持久编辑。

[fresh 增量](../analysis/bde-experiments/2026-10-07/bde-persistent-owner-increment-02/README.md)

2026-10-07 随后完成：unchanged reference-list 候选已用 v6 retained owner/reciprocal 原材料离线验证，9/9 inbound 精确匹配、self-reference 保留、0 patch。下一步仍是新隔离组件的 changed-list fresh before/after 记录重写和 flush；当前候选不授权 native write/inverse，不能升级 43 required。

[规划证据](../analysis/bde-experiments/2026-10-07/bde-persistent-owner-unchanged-plan-01/README.md)

2026-10-07 当前新增：fresh serializer configuration witness 已在当前 ASCET 实例只读通过。正式 bridge 增加 `commit_serializer_configuration`，固定读取 v6 source owner 的 serializer/dumper/loader 配置和有限替换/遗漏表；不构造 serializer、不执行序列化、不写盘、不授权 inverse。下一步是把该 witness 与同次新 prepare 的实际 source record rewrite/flush/diff 绑定，完成冲突守卫后才考虑持久写；旧 token、旧 before 和失败材料不得重绑。完整普通 BDE 编辑/删除/连线、原 BDE 显示、跨 Module/A2A/XPass、业务恢复和 43 required 仍未完成。

[本轮证据](../analysis/bde-experiments/2026-10-07/bde-serializer-configuration-increment-01/README.md)

2026-10-07 新完成：v6 已在同一次正式 prepare 捕获 component `SGClass` 与 `SGTopGraphicsBlockDB` source 的持久 owner、DBObject/direct fields、CTree leaf 和三类记录；source owner-reference 的 error 101 明确 absence 已保留并通过独立校验。model setter/store/apply/commit/inverse 均为0，图形不变。v5 完整引用文件观察基线、Doge/WAL/离线 diff 和有限查询仍有效。所有在线操作复用 PID47348/32642/原 epoch，不启停 ASCET。

不确定 prepare 的原 token 查询/日志路径已通过真实原材料 + 本地缺回执夹具验证，仍保留 unconfirmed、不重发；不称为实际网络丢包。下一步闭合：完成 fresh serializer 私有成功路径，把 v6 owner/有限原记录绑定到实际持久写集；实现当前冲突检查与仅改本次关联的持久 inverse。v6 仍只提供写前材料，未授权持久执行，也不能补造旧编辑 before。继续全部既定 BDE 功能，43 required 不缩减。见[当前开发状态](bde-delivery-status.md)。下面的“尚未同次准备”等表述是此前时点记录。

2026-10-07 当前冻结进度：原 outgoing 9 目标的当前入站读取、实际 diff、Doge WAL/分页已验证，最终 current-tool-live-03 的 21 差异独立复算一致（含 9 reciprocal 读取效应）。原 before/WAL/token 保持不变，854 源码/2,662 hash 通过；77 离线测试=29 新增+48相关，不累计重叠历史运行。当前入站检查为 true，但新增目标原材料和完整持久 inverse 仍 false；完整功能及 43 required 不缩减、不升级，无 ASCET 启停。

下一开发任务调整为：在同次新 prepare 捕获完整 reference 文件的原 record/key 基线和读取副作用；编辑后按真实 outgoing 差集定位原 inbound/不存在性；实施受控持久 patch、保留无关修改的三方 inverse；继续原 BDE 显示、消息连删/NEWENUM/跨层流程及最终验收。基线只有 66 方法/8 错误资源静态证据，尚未 native 验证；CTGVCTreestdFputFget 非事务、非单用户，不得宣称全库原子。旧缺 before 的编辑不能由新基线追补。

[当前实证](../analysis/bde-experiments/2026-10-07/bde-commit-reciprocal-current-increment-01/README.md) · [完整引用写前基线方案](../analysis/bde-experiments/2026-10-07/bde-reference-file-snapshot-route-01/PLAN.md)。

## 此前 v4 捕获任务检查点（当前读取完成之前）

2026-10-07 v4 冻结进度：同次原始 reciprocal 捕获已完成限定在线验证，9 个原目标、4,293 字节语义/6,382 字节 raw，初始 9 处叶读效应保存。实际 Doge Tool02、WAL/离线 diff/history 与 850 源码/2,629 hash 复算通过；40 项本次离线测试含 12 新增，此前 64 项重叠候选测试不相加。

接续任务依次为：当前 reciprocal 核对与实际差异记录；新增 outgoing 目标真正原 before 捕获；受控持久写集、无关修改保留和精确 inverse。83 方法 fresh serializer 静态研究不能替代实际执行证明。当前/新增目标覆盖仍 false、持久 inverse false，完整 BDE 原范围及 43 required 不缩减、不升级，本轮未复验业务恢复。保持当前 PID47348/32642/原 epoch 运行，不启停 ASCET。[v4 证据及复算](../analysis/bde-experiments/2026-10-07/bde-commit-reciprocal-increment-01/README.md)。

## 此前任务检查点（以下措辞对应当时版本）

2026-10-07 有限规划阶段：有限引用 forward/三方 inverse 规划实现并通过 28 项离线控制，原生持久写仍未接入。serializer 16 入口/54 literal 原镜像匹配已补齐；完整 dumper/loader 路径仍未闭合。下一任务为同次准备捕获有限原 inbound、受控持久 patch 和实际冲突/恢复，不提升全部功能或 43 required 验收；不关闭、启动或重启当前 ASCET。

2026-10-07 引用修复：正式 prepare/query/WAL/Doge 已完整比较 tag1 引用 ID。旧声明长度漏最后 4 字节，现用原 retained raw buffer 解码，旧记录不改写；未解析 raw 尾部单独报告，未知类型拒绝。下一项仍是受限新鲜 serializer 和有限双向引用写集，再精确持久 inverse。14 方法字节码匹配仅为部分证明，6 literal 及调用闭包未闭合；尚无真实序列化或新增完整 required pass。保持当前 ASCET 运行。

2026-10-07 CTree 更新：正式同次 prepare/current/WAL/Doge 已覆盖所有 backend interfaces 及独立 referenceInterface，保留控制态、原身份、路由和有序 savepoints；不允许 v3 降级或释放失败的最后原材料。下一项为限定 SGClass/SGModule 的新鲜真实 serializer/outgoing 证明，捕获引用差集目标 inbound，再实现受控写与精确持久 inverse。CTree marker/savepoint 不能授权历史回退；全部原交付范围不变。保持当前 ASCET 运行，仍不为实验启停。

2026-10-07 当前实施：正式 prepare 原资源捕获、retained status、实际直接资源 diff/WAL、离线 diff/history 和真实 Doge `Tool.call` 已验证。396 原 SG 对象的当前字段/值/集合图像和实际 diff 也已接入并在线核对；7 处非零原生私有控制通过，不是实际 BDE 编辑/inverse 验收。完整 CTree/持久 closure 和精确 inverse 继续开发；全部原范围和 43 required 保持，不以限定通过升级整体交付。

用户最新运行约束：不反复关闭启动 ASCET。保持当前 manifested 实例和数据库打开，复用精确 endpoint；不为实验、缓存或材料容量重启，不干预其他实例。异常先保留恢复材料诊断，旧 token/epoch 不重绑。详见 [当前交付状态](bde-delivery-status.md) 和 [运行交接](../analysis/bde-experiments/2026-10-07/runtime-handoff.json)。

2026-10-06 19:05（Asia/Shanghai）新增NEWENUM原入站/出站引用记录读取器，
接入原paired/prepared流程，补owner/folder四个引用记录及完整原字节/read effects。
绑定原backend→referenceInterface→ctIFIL，不能换文件；复合key为20byte globalId
加属性名，读错误保存后停止，不把101当不存在，不调用lazy singleton或未解析路由。
派生资源profile明确支持原镜像DBReferenceInterface32子类，全部原身份守卫保持。

25项离线控制、1词法检查、21项原镜像dispatch与91 primitive方法解析、独立x86
编译和133归档/12当前输入/SDK/exe/递归base hash通过；是合成引用字节/fake
backend控制，不是新原生编译或在线读取通过。current真实入口识别原PID48840/
56296占用而0native拒绝。旧失败/版本保留，不授予factory/inverse，持久闭包未完整。

现场矩阵30/36完整通过，第31项duplex/sdisc/exported在finalize，无failed stage；
followup等待、0下游stage，60连删未开始。798运行/11后续输入无drift。本轮0业务
调用，未fresh hash业务恢复hold，业务原件未恢复。全部普通BDE核心功能、跨层通路、
完整局部回退、视觉/故障/持久化、真实Doge/AEB_Core、最终包与43required仍未完成，
性能不阻塞，goal保持active。
[本轮实现、范围与可复现命令](../analysis/bde-experiments/2026-10-06/bde-newenum-persistent-closure-development-01/README.md)。

2026-10-06 18:08（Asia/Shanghai）新增 NEWENUM fresh paired/prepared 驱动与
同次原生 guard→prepared discard 候选；严格核对 Main witness 的原 token、
组件、generation、阶段、完整 unchanged 标志及零写入回执。未知结果保留材料，
不重放或自动清理。19 项离线控制、1 词法检查及独立 x86 C# 编译通过，126 份
归档/7 开发输入、SDK/exe/递归 base hash 已核对。真实入口因原 PID48840/56296
在运行而 0 native 拒绝，没有新原生编译、binding/discard/factory/inverse pass。

现场矩阵 22/36 完整通过，第 23 项 send/udisc/exported 在 create；没有 failed
stage。followup 仍等待，0 下游 stage，60 项消息连删未开始。798 运行输入和
11 后续输入 hash 无 drift。NEWENUM 实际创建 diff、完整 DB 持久状态与同对象
历史、其余全类型/跨层通路/完整局部回退/视觉/持久化故障/Doge/AEB_Core/
业务原件恢复/最终包/43 required 仍未完成，性能不阻塞，全目标保持 active。
[本轮实现、证据与命令](../analysis/bde-experiments/2026-10-06/bde-newenum-prepared-development-01/README.md)。

2026-10-06 双向消息功能增量：原双向消息保留对象已完成缓存/公共类型问题修复、
完整原对象历史、恢复和释放。109相关离线控制和构建、独立在线核对、6374源码
hash/99证据复算通过；旧失败保留。接续修正后的36组合矩阵、已有声明Module/
连删及全部跨层通路。完整原需求保持，业务恢复仍blocked、全交付false、性能
不阻塞。[双向消息证据](../analysis/bde-experiments/2026-10-06/bde-message-duplex-status-01/README.md)。

2026-10-06 最新功能增量：独立 SGModule 接收消息原对象历史及完整原状态收尾已
隔离在线通过，完整实际 diff/WAL、严格引用守卫、release/namespace 退休与旧
snapshot 实际写前拒绝保留。仅一个 receive_message/cont/imported，尚非全消息
类型或完整 required case；全交付 false、业务原件恢复仍阻塞，性能只记录。
下一项为 primitive-message 的角色/类型/scope 与已有声明 Module 正式生命周期
和连删，再 NEWENUM/enum/complex 与跨层通路。完整原需求保持，历史段不改 verdict。
[当前交付状态](bde-delivery-status.md) ·
[新实现、在线结果与复算](../analysis/bde-experiments/2026-10-06/bde-message-finalization-status-01/README.md)。

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

## 历史实现与方案记录

2026-10-05最新实现：宿主/模板固定bundle与factory清理已接齐；三参数
patch factory原生编译、跨连接零计划及6项非零私有对象执行通过，每个完整
方向19个原语，live native/source基线不变。生产首次实际终态/源码冻结与
双向patch生成已接代码，尚未执行模型setter/store验证。whole-collection
guard、正式managed执行/store附带恢复、完整历史/显示仍有缺口。
[原始失败、修复与边界](../analysis/bde-experiments/2026-10-05/bde-native-field-patch-summary-01/README.md)。

当前执行方案为 **r8：核心功能完整交付优先**，见
[五个功能包与下一项正式代码交付](bde-core-function-delivery-plan-20261005.md)。
性能只报告；每项操作同时验实际diff、冲突、精确双向恢复与原BDE显示。
字段patch绑定/编译与非零私有执行已通过；实际模型恢复仍未验证，见任务表最新增量。
本次仅修订方案，没有新增功能pass；下方增量和旧方案按各自记录版本保留。

2026-10-05实施更新：MAIN-03C.1 材料捕获/schema导出、失败 witness 保留和
缺材料旧 head 拒绝已实现。345对象/1555槽/33class的一个隔离 prepare 跨连接
核对通过；两次正式read/preview严格基线不变；87离线回归通过。无新模型
setter/store/inverse试验，完整case未通过。下一代码项MAIN-03C.2实际双向
patch，.1实际编辑/store材料仍待在线补验。下方r7方案段是修订时的记录。
[实际证据](../analysis/bde-experiments/2026-10-05/bde-native-material-summary-01/README.md)。

## 2026-10-05 当前方案 r7：以完整原生 patch 闭合精确编辑

最新实现：正式managed字段/layout再回退、后续材料head移交及实际diff已接。
两条literal流程30次真实Tool.call完成正反向执行，所采完整语义/public图恢复，
但完整native witness两条失败；Point原对象x120→131及Point/String引用变化
已采到，不能算精确恢复通过。下一项MAIN-03C保留完整原生字段材料并修复
实际patch恢复/无关字段保留。其他白名单字段操作未在线验收，类型/通路/
显示/原件恢复与包仍不完整。[证据](../analysis/bde-experiments/2026-10-05/bde-main-managed-summary-01/README.md)。

执行以 [r7 方案](bde-core-function-delivery-plan-20261004.md) 和
[机器任务表](bde-core-function-workboard.json) 为准。交付流程改为 Main 字段
历史、连续连线/删除、全类型、hierarchy、Class、跨 Module/Project、原图
视觉收尾及整体包。显示从第一项实际 edit 起接入，阶段不构成全局开发锁。

下一项 BDE-01 / MAIN-03C.1：先保留完整原生 before 材料、写前独立 witness
与 token→class/字段诊断，失败不先 release；区分 read/preview/setter/store
影响。随后按 MAIN-03C.2–5 生成实际 patch、局部前置检查与精确执行、正式
日志/recovery、在线历史与原 BDE 显示。新 inverse 应恢复原 Point/String
引用及值，不能只重复 setter 恢复可见值；独立 oracle 不放宽。
正反向执行已接正式入口，精确恢复仍未通过。随后补连线/删除和类型。
variable/parameter/constant、enum、message 优先；跨组件接口按实际依赖推进。

性能只报告，不重复一秒或千节点专项；COST-01、精确身份、局部实际记录、
冲突、恢复、unknown 查询和原 BDE 视觉要求保留。计划状态不能提升功能
状态，43 required case、真实 Doge/AEB_Core、原件恢复和实际包仍须完成。
本次没有 ASCET 调用、运行时代码修改或新功能 pass。

## 历史方案 r5：按功能缺口与实际依赖交付

最新实施增量：首次 inverse 已保留原 native record 并归属于新日志；三条
真实 Main 流程和两种固定 metadata 故障查询通过，五条任务所采整图基线
恢复。多次日志的离线 diff/分派已接有界祖先链。再回退原生执行仍不可用，
下一项 MAIN-03B/C 接方向/head 与精确原生恢复，A 的全类型/生命周期验收
继续补齐。[证据与范围](../analysis/bde-experiments/2026-10-05/bde-main-retain-summary-01/README.md)。

执行以 [r5 方案](bde-core-function-delivery-plan-20261004.md) 和
[任务表](bde-core-function-workboard.json) 为准。保留六工具和全部 BDE 范围，
按 Main 编辑历史、Main 操作/类型、hierarchy/Class、Module/Project 通路、
原 BDE 显示和完整交付六个功能包推进。阶段是范围分类，不是全局开发锁。
MAIN-05 开发不再硬依赖 MAIN-03 全量完成；每条在线写入自身的实际 journal、
冲突和精确恢复前置条件仍必须满足，unknown 仍阻止受影响资源后续写入。

原计划最近任务是 MAIN-03A 原生材料归属，现已有上述局部证据；接着 MAIN-03B 正式多次 inverse 路由、
MAIN-03C 双向对象/registration 恢复、MAIN-03D 真实工具和独立恢复验收。
剩余 move/route/connect/rewire、全类型和跨层接口按各自依赖递补，显示与
验收随实际功能接入。逐 family/type/owner/scope/operation 区分缺实现、
缺验证、正式可用及完整 case 通过，不按测试条数表达完成比例。

本次只修改方案，无新 ASCET 调用或功能 pass。性能只报告；43 required
case、真实 Doge/AEB_Core、原件恢复和实际包仍是最终条件。下方 r4 及更早
条目按记录版本保留，不覆盖本次依赖调整。

## 2026-10-04 用户调整：以核心功能完整交付为首要目标

2026-10-05实际增量：Main预检在记录版本的3结构×3轮通过；literal含layout
附带变化、节点删除和断线的3条真实工具任务完成actual diff及原始回退，
独立核对所采整图字段恢复。结构diff已接正式局部投影，完整native恢复材料
留在WAL；普通结构“回退自身再回退”仍实测拒绝。当前下一项MAIN-03补
native材料移交与正式inverse-of-inverse，并继续补连线/类型/视觉验收。
[执行证据与范围](../analysis/bde-experiments/2026-10-04/bde-main-workflow-summary-01/README.md)。

一秒读取/编辑/回退不再是交付硬门槛，性能实验改为非阻塞报告。当前执行以
[核心功能交付方案](bde-core-function-delivery-plan-20261004.md) 为准：普通
Main 图完整操作 → hierarchy → Class 正式局部
回退与全部接口类型 → 跨 Module/Project 的 FLOW/A2A/XPass → 整体验收及包。
每阶段随功能完成实际 diff、原 BDE 显示、冲突与精确回退；Class 私有恢复
研究不再作为全部普通图开发的前置。具体状态见 [任务表](bde-core-function-workboard.json)。
原生类型/端口合同按当前操作审计，完整清单在最终覆盖验收前闭合；不会等待
全部 GUI 候选研究结束后才收尾 Main。现已实现partial验收入口v1、CONTRACT-02
离线通过，其他完整功能仍未验收。M0验收/清单转为持续支撑，按当前功能
接场景，不把全部case runner或上一阶段全部pass作为无关开发的前置。
计划从MAIN-01接正式Main读取定位与独立核对，随后连续编辑/连线/删除、
actual diff、精确inverse、原图显示和全类型补齐。每个增量通过真实六工具
串起 read → edit → 自动 actual diff → 原 BDE 显示 → 冲突/回退/回退自身。
先建立对应 schema/后端/实际在线证据的功能矩阵，已通过且源码依赖未变的
实验复用；不为速度单独重测，不把研究 cycle 当作正式功能完成。

机器 eval 升级 v2：PERF-01/02/03 非阻塞，COST-01 与所有功能/正确性要求
保留；14 个跨层级 FLOW case 及覆盖/Doge/AEB_Core/package 验收纳入必需项。
状态机、独立 Code Mode SDK 及新宿主框架继续暂缓，旧原件恢复仍需完成。
下面的一秒门槛和旧执行顺序是历史版本，不覆盖本次用户调整。

[独立验收入口](bde-tools-acceptance-runner.md)：9离线trials/30tests通过，15项
针对性断言与5项证据重算检查通过；首次skip记录器失败保留。新报告1pass/
42not_run只是当前入口覆盖，旧原件恢复blocked/hold保留；无在线ASCET或
新性能结论，完整任务仍active。

## 2026-10-04 release 未执行/完成丢回执的实际恢复

固定 native release witness 已实现：仅 CURRENT 准备材料存在时，release 把
只读证明附在既有 candidate 上，随后删除 publication 记录。证明核对原对象
身份、完整 native 字段、源码、签名、配置和封存计划；候选清理后证明随之失效，
没有新常驻全局记录。缺少候选、过期身份或不完整证明继续拒绝。

3 个实际案例、累计 10 次 owner 核对，通过 ready/restored、基础/三层 hierarchy、
release 调用前未执行及实际完成但 completion 丢失。最后收尾全部 0 次模型
setter、0 次 native release 重发；单独 `release_reconciled` WAL 记录完整 fresh
基线，再写 terminal。原 failed WAL 不补 completion。完整 CURRENT 与原始
普通/Class 基线恢复，fresh audits 确认所有临时记录 absent。

正常 base/deep 完整 cycle02 和旧非 CURRENT publication 路径也通过。final ready04
与 legacy01 验证最终 native 条件分支；早期 trials 的源版本保留，不重标为最终
版本。两个 Smalltalk 预编译失败保留 failed，均在编辑前，0 模型修改。

Offline161：1030 Python / 21 Doge / 1042 assertions / version 通过；6live skips
未验证，527 个记录的当前源码指纹一致。Safety61 保留旧 AEB_1 29 文件/hold，
restored=false。整体未交付，生产 Class 局部回退尚未开放，写一秒仍未通过。

下一步先实现永久 merged inverse 的提交和 native 材料移交，接入正式 bd_revert
及 Doge actual diff，并验证逆操作本身可回退、冲突拒绝及无关变化保留。随后完成
剩余 types/families/UI/FLOW/A2A/XPass/AEB_Core、旧原件恢复、写性能和 package。
状态机与 Code Mode 仍暂缓。后文是旧版本对应的历史记录。

[release 独立证明](../analysis/bde-experiments/2026-10-04/current-release-summary-01/result.json) ·
[正常闭环复核](../analysis/bde-experiments/2026-10-04/current-complete-summary-02/result.json)。

## 2026-10-04 恢复链续接与无故障完整闭环

无故障隔离 CURRENT 完整闭环已分别通过 base 和 mixed 三层 hierarchy
(`Main/h1/h2/h3`) 各一轮，共 7 个 owners。两轮实际执行 24/56 个模型步骤，
物理 WAL 确认 34/68 次派发；完整 CURRENT 基线恢复后，普通移动回退与 strict
Class 回退仍通过，完整原始基线恢复。独立 fresh audit 确认 candidate、
material、signature、publication 全 absent，无新增 ASCET walkback。

恢复 WAL 自身中断的两段/三段续接也已实测：metadata 补记完成丢回执、
逆操作完成丢回执、restore_store 调用前故障。完整 fresh classification
确认已发生的动作，下一段按完整前序 WAL 继续。pending 绑定最新恢复 head；
省略前序日志在建立 Cebra 连接前拒绝。所有原失败结果和日志保持失败且不可改写。

这些是默认关闭的同 epoch 隔离研究路径。生产 Class 局部回退、unknown release、
setter 内部失败、真正断连/重启、剩余 output/enum/complex 与全部 block families、
完整 native UI/FLOW/A2A/XPass/AEB_Core、原 AEB_1 恢复、写入一秒目标和交付包
仍未完成。整体任务保持 active；不依据这些局部成功授予完整 eval case 通过。
后续按上述缺口继续；状态机与 Code Mode 仍暂缓。下文是对应旧版本的历史记录。

最终 Offline160 通过 1025 Python / 21 Doge / 1042 assertions / version；6 项
live skips 仍未验证，525 个记录的当前源码指纹匹配。独立 chain-summary02 和
complete-summary01 都通过。Ledger76 仍为 26 not_run / 1 性能 fail / 1 原件
恢复 blocked，0 missing artifacts；不把局部实验通过计成完整门槛通过。

[Base 闭环](../analysis/bde-experiments/2026-10-04/current-complete-base-01/result.json) ·
[三层闭环](../analysis/bde-experiments/2026-10-04/current-complete-deep-01/result.json) ·
[恢复链独立复核](../analysis/bde-experiments/2026-10-04/current-recovery-chain-summary-02/README.md) ·
[完整闭环独立复核](../analysis/bde-experiments/2026-10-04/current-complete-summary-01/README.md)。

## 2026-10-04 Actual CURRENT Unaccounted Action Recovery

Actual base primitive/base Store/deep third-level primitive faults restore
10 cumulative owners and every complete CURRENT/original baseline. Unique
complete classifications precede zero-setter metadata reconciliation;remaining
causal inverses use3/5/26new model steps. Fresh audits find all temporary records
absent. First metadata arity and Store guard failures remain failed,with separate
successful recovery;58focused tests pass. The retry path only accepts the first
unchanged zero-setter metadata failure,not arbitrary interrupted recovery steps.

Final Offline158passes1013Python/21Doge/1042assertions/version,6live skips;
independent summary verifies522current source hashes. Safety59preserves29original
files/hold,restored=false. Ledger75retains26not_run/1fail/1blocked,0missing artifacts.

Unfaulted full CURRENT cycle,unknown release/general interrupted recovery,
production Class local inverse,remaining types/families/nativeUI/FLOW/AEB_Core/
package/original AEB_1restoration and one-second writes remain incomplete.
Older sections describe their recorded earlier source versions.
[Evidence and limits](../analysis/bde-experiments/2026-10-04/current-unaccounted-summary-01/README.md).

## 2026-10-04 Complete CURRENT WAL And Pre-Native Recovery

Complete forward/inverse and separate recovery WAL protocols are implemented;
fixed native recovery checks original bytes/checksum/domain and fresh complete
classification before remaining causal inverses. Actual base/deep first-dispatch
faults on7owners recover full CURRENT baselines with0CURRENT setters/1metadata
release each,then separately restore ordinary/Class originals and verify fresh
temporary-record absence.51focused tests and Final Offline157pass1006Python/
21Doge/1042assertions/version,6live skips,518current recorded source hashes.
Safety58preserves29original AEB_1files/hold;restored=false. Failed base driver's
KeyError and Safety57wrong-path failure remain preserved separately.

Only pre-native recovery is accepted. Actual CURRENT setters/stores/inverse,
active unaccounted reconciliation,unknown release/recovery-WAL interruption,
production Class local inverse and all remaining types/families/UI/FLOW/AEB_Core/
package/original restoration/one-second writes remain in the unchanged full goal.
[Protocol](bde-class-current-recovery.md).
[Independent proof](../analysis/bde-experiments/2026-10-04/current-protocol-summary-01/result.json).

## 2026-10-04 Dynamic Native Inverse Plans

Sealed primitive/store inverse plans are implemented and independently checked.
Shared native helpers pass49actual private assertions/15inverse steps across six
collection kinds and a Point field;live full fields are unchanged. Base/deep
integration verifies11proposed live inverse effects on7owners and complete
baseline/absence proofs. Offline154passes996Python/21Doge tests,6live skips.
No actual CURRENT setter/store/recovery or whole gate is accepted by these results.
Next implement dedicated physical inverse WAL and explicit partial/unknown recovery,
then actual CURRENT execution and production Class local inverse. The full types/
families/UI/FLOW/AEB_Core/package/original recovery/one-second objective is unchanged.
[Evidence and reproduction](../analysis/bde-experiments/2026-10-04/current-inverse-summary-01/README.md).

## 2026-10-04 Atomic Context Guard And Forward WAL Audit

Complete signature/configuration/source guards are now inside the fixed CURRENT
native executor before and after each future action. Independent candidate source
seals survive signature changes. Final-source base04/deep03 pass112actual ready/
publishing refusal assertions and all full baseline/absence checks.44focused
forward-WAL/identity/preparation tests and Offline152pass987Python/21Doge tests,
with6live skips and508final-source hashes. Private12passes94private assertions;
Safety55preserves29original files/hold,restored=false.

The new dedicated forward-prefix auditor checks exact effects and unknown return
outcomes without replay or write authority. Its inverse/unaccounted/store recovery
and actual physical producer remain required; it has no live CURRENT-attempt
acceptance. Next implement those protocols before actual CURRENT setters/stores,
then post-store identity/later ordinary inverse and production Class local inverse.
All types/families/UI/FLOW/AEB_Core/package/original restoration/one-second writes
remain part of the unchanged full objective. Whole delivery remains incomplete.
[Current proof](../analysis/bde-experiments/2026-10-04/current-context-summary-01/result.json).

## 2026-10-04 Exact Primitive Plans And Ready Classification

Current step-plan base/deep01 pass actual ready preparations with11sealed proposed
primitive effects across7owners and14complete source/signature/configuration
classifications, including Main/h1/h2/h3. All full baselines restore and independent
audits find all temporary records absent. Summary01 rechecks complete source/WAL/
baseline evidence. Private11passes94private-object assertions;Offline151passes
976Python/21Doge/1042assertions/version,6live skips,504current source hashes match.
Safety53keeps original AEB_1files/hold unchanged and unrestored.

The separate read-only CURRENT recovery entry is implemented/built but unaccepted
without an outstanding CURRENT attempt. Actual CURRENT dispatch, dynamic physical
WAL/unknown reconciliation and production Class local inverse remain required.
Next implement the independent prefix planner and explicit journaled recovery,
then actual base/deep execution/post-store identity/later ordinary inverse.
Remaining types/families/UI/FLOW/AEB_Core/package/original restoration/1second
writes stay in the full objective. [Proof](../analysis/bde-experiments/2026-10-04/current-step-plan-summary-01/result.json).

## 2026-10-04 CURRENT Executor Preparation

Final-source base02/deep02 pass actual setter-free executor preparations: 7 owners,
11 planned primitives and 3826 cumulative captured objects. Private capture07
passes 53 real private-object assertions with unchanged full live fields and zero
model setters. Summary01 independently recomputes complete source/WAL/restoration
and fresh record absence; Offline150 passes 971 Python/21 Doge/1042 assertions/
version, 6 live skips, 503 source hashes unchanged. Safety51 retains original
AEB_1 files/hold unchanged and unrestored.

This implements a default-OFF preparation route and compiled execution template;
actual CURRENT primitive/store execution, partial/unknown recovery and post-store
identity are not accepted. Next implement their dedicated WAL and recovery before
online native actions, then production patch-preserving Class inverse. All remaining
types/families/nativeUI/FLOW/AEB_Core/package/original recovery and one-second writes
stay in the complete goal. [Contract](bde-class-current-execution.md).
[Verified summary](../analysis/bde-experiments/2026-10-04/current-execution-summary-01/result.json).

## 2026-10-04 Current Acceptance And Remaining Work

Publication completion-loss matrix04 is terminal96/96passed;public-audit02 verifies
all3complete public baselines. Independent summary02recomputes468confirmed steps,
96unknown completions,363recovery dispatches/240model steps and324owner observations.
All471frozen source hashes match. Safety48preserves29original AEB_1files/hold;
original restored=false. This accepts only after-native coordinator completion loss.

Compile05 passes the final fixed CURRENT identity templates inside ASCET with zero
setters/dirty editors/new assertions. Base03/deep02pass actual pre-write identity
audits;summary01independently verifies7owners/7targets/48existing pins/4planned
coordinate setters and full source/WAL/baseline restoration/record absence.
Offline149passes963Python/21Doge/1042assertions/version,6live skips. Safety50
keeps29original files/hold unchanged;restored=false.
Next: same-current graph
execution,post-store identity/later ordinary inverse compatibility. Production
Class local inverse,remaining types/families/UI/FLOW/AEB_Core/package/original
recovery and1second write gates remain incomplete. Older sections are historical.
[Verified96case summary](../analysis/bde-experiments/2026-10-04/bde-pub-fault-summary-02/result.json).
[Identity contract](bde-class-current-identity.md).
[Current identity evidence](../analysis/bde-experiments/2026-10-04/current-identity-summary-01/result.json).

## 2026-10-04 Completion-Loss Recovery Continuation

Fresh mixed matrix03 passes all12 actual dispatch completion-loss boundaries.
Independent summary01 rechecks66confirmed original dispatches,12unknown native
completions,51remaining recovery actions and34actual model recovery steps.
All48cumulative owner classifications compare complete sources;separate recovery
and ordinary/strict Class cleanup restore CURRENT and every original baseline.
Fresh per-field public audit01 verifies all3fixture baselines with zero setters.
The earlier matrix02 remains failed at boundary7;new classification/reconciliation/
cleanup/absence evidence separately proves its actual recovery.

Offline146 passes955Python/21Doge/1042assertions/version,with6live skips. Safety47
preserves29original AEB_1files/hold;original restoration remains false. Full96case
base/extended/mixed x3matrix04 is in progress,not accepted. Completion loss is
after actual native return and before coordinator WAL completion;it is not an
inside-setter failure or a genuine Cebra disconnect. Production Class local
inverse/remaining types/families/UI/FLOW/AEB_Core/package/performance and original
restoration remain required. State machines/Code Mode stay deferred.
[Protocol and evidence](bde-class-publication-recovery.md).
The publication08/09source summary below refers to its recorded older version.

## 2026-10-04 Actual Model Publication And Recovery

Frozen-source base and mixed trials pass6actual publication/recovery rounds,
including Class/Module callers and Main/h1/h2/h3. Complete source comparison
passes42images/21owner observations;66journal dispatches include15actual stores
and15restore stores. Independent moves/routes survive Class change removal.
Every complete baseline restores and8fresh audits verify all6successful tokens
plus failed04/07have no candidate/material/signature/publication records.
Offline143passes942Python/21Doge/1042assertions/version;6live skips remain.
All486source hashes match. Safety46preserves29original AEB_1files/hold;
original restoration remains false. Failed preparation/seal/recovery/oracle trials
are retained separately;observed interrupted recovery never repeats known stores.

This completes isolated temporary model publication with complete CURRENT/model
WAL for the cont-input/layout profile. Production Class local inverse remains
unavailable;partial/unknown states beyond the observed restoring stage,restart,
faults,broader Class types/ordinary families/nativeUI/dependent-shared FLOW/
AEB_Core/package/original restoration and performance require acceptance.
[Current scoped evidence](../analysis/bde-experiments/2026-10-04/bde-class-model-publication-summary-01/report.md).
[Whole ledger](../analysis/bde-experiments/2026-10-04/bde-eval-ledger-67/report.md)
remains incomplete. Next integrate the guarded production inverse and fault recovery.

## Previous 2026-10-04 Current Native Input And Layout Patch

Six final-source online base/deep rounds pass21complete owner sources and21exact
created-input removals.144existing pin bindings include42hidden descriptors;
12coordinate setters have exact native connector-field diff and120actual private
changes restore in120inverse steps. Complete public/native/configuration baselines
restore;7fresh absence audits preserve successful/failed trial bytes and verify
candidate/material/signature release. Independent summary rechecks full sources,
current scopes,original WAL and481source hashes without drift. Offline142passes
928Python/21Doge/1042assertions/version,6live skips. Safety45preserves29original
failure files/hold;original AEB_1restoration remains false.

This accepts private current-clone cont-input/layout removal plus an independent
connected-literal move,not production publication/Class local inverse. Native
fault/prepared-conflict/independent-axis positives,durable CURRENT/model WAL and
partial/unknown recovery,remaining types/families/nativeUI/FLOW/AEB_Core/package/
original restoration/performance/whole gates remain. Next implement merged model
publication and physical recovery. [Verified scoped evidence](../analysis/bde-experiments/2026-10-04/bde-class-runtime-layout-summary-01/report.md).
[Current whole ledger](../analysis/bde-experiments/2026-10-04/bde-eval-ledger-66/report.md)
remains incomplete. No whole case is granted by these scoped trials.

## Previous 2026-10-04 Current Runtime Patch Continuation

Final-source private current-clone Class input removal passes3base rounds/9complete
owner sources,9exact pins,3independently justified undrawn definition no-ops and
39private changes/exact inverse steps. Native/Python local source plans retain the
audited current allocator high-water. Fresh audits confirm release/full baselines.
Offline140passes912Python/21Doge/1042assertions/version,6live skips.

The mixed third-level profile remains failed:4return-port Y values are190 instead
of candidate180. Its separate compensation and absence audit complete,with original
failure evidence retained. Base success is not general Class local inverse acceptance.
Next implement exact affected-return layout lineage/field merge/conflict checks and
repeat full base/deep sources. Model publication/durable CURRENT/WAL/partial recovery,
remaining types/families/nativeUI/FLOW/AEB_Core/package/original restoration and
performance/whole gates remain required. [Contract](bde-class-current-runtime-patch.md).
[Current whole ledger](../analysis/bde-experiments/2026-10-04/bde-eval-ledger-64/report.md)
retains28incomplete cases:26not_run/1blocked/1fail,0missing artifacts.
The entries below refer to their earlier recorded source versions.

Current storage-return prerequisite:6final-source base/deep rounds verify63
original/applied/current images and independent complete source/scope/WAL checks.
Exact native return/parent tuples are sealed;168actual private faults reject and
restore,231additional normalization changes reverse exactly,and all complete
baselines restore. Fresh audits find no candidate/material/signature records.
Offline139 passes896Python/21Doge/1042assertions/version,6live skips,474sources.
Safety42 preserves29original AEB_1files/hold;original restoration remains false.
NEXT: actual cross-capture edit lineage,merged native patch/publication,durable
CURRENT and partial/unknown recovery,then complete types/families/UI/FLOW/
AEB_Core/package/performance/original restoration. Whole goal active/incomplete.
[Current contract](bde-native-storage-witness.md). Earlier entries are historical.

Current retained-history prerequisite:6final-source rounds verify42original/applied
private graph images and complete capture-time source/WAL-generation matches.
All6real moves change old live references without changing the captured copies;
135actual private normalization fields restore and126seal negatives pass. Fresh
audits find no candidates/material/signature records;all full baselines restore.
Offline138 passes885Python/21Doge/1042assertions/version,6live skips,471source hashes.
Remaining: actual merged native patch/publication/durable CURRENT/partial recovery,
complete types/families/UI/FLOW/AEB_Core/package/performance/original restoration.
Whole goal active/incomplete. [Contract](bde-class-native-source-runtime.md).

Current runtime prerequisite:6final-source rounds pass21owner private native
source generations,complete independent source oracles and96actual private cache
field diffs/exact inverses. Complete live state remains unchanged;all separate
edit baselines restore and fresh status audits find no candidates. Offline137
passes878Python/21Doge/1042assertions/version,6live skips,468sources rechecked.
Next required implementation: original/applied/current source-runtime lineage,
merged native patch/publication,durable CURRENT and partial/unknown recovery.
This is not Class local inverse or whole acceptance. [Contract](bde-class-native-source-runtime.md).

Latest2026-10-04: native source candidate preparation/lifecycle now passes6actual
base/deep rounds,21owner candidates,duplicate reuse,scope pin checks,273copied
witness negatives,real stale refusal/release and full separate restoration.
Independent status audits find no retained candidates. Offline136 passes870Python/
21Doge/1042assertions/version,6live skips. Native runtime binding/publication,
production local inverse/WAL/partial failure recovery and full remaining BDE/FLOW/
UI/AEB_Core/package/original recovery remain incomplete. No new performance pass.
[Current candidate evidence](../analysis/bde-experiments/2026-10-04/bde-class-source-candidate-summary-01/report.md).

Current2026-10-04: candidate endpoint/caller dependencies are implemented in formal
opt-in inverse preview using complete native child-ID getter witnesses and exact
scope/block/pin/declaration/formal aliases.6final-source actual rounds verify
3valid base moves and3exact deep new-input dangling-edge conflicts;formal previews
match independent analyses. All complete baselines restore with0outstanding/source/
input drift/assertions.210copied private checkpoint negatives pass without native
model/registry mutation. Strict inverse supports verified monotonic registry ID
extensions while retaining complete original physical/source/identity checks.
Offline135 passes858Python/21Doge/1042assertions/version,6live skips;461sources
recheck unchanged. Safety38 retains original AEB_1 failure/hold;restored=false.

NEXT: durable merged native candidate publication/WAL/guarded partial recovery,
then Class output/enum/complex and broader signature/type dependencies,ordinary
all-family/native BDE visual/FLOW,isolated AEB_Core/verified package/original
restoration and whole performance/eval. Native local Class inverse remains
unimplemented;candidate write_authorized=false.28whole cases remain26not_run/
1blocked/1fail. Historical read/write timings are not remeasured. Whole INCOMPLETE.
[Current evidence](bde-class-local-source-inverse.md).

Previous complete-source increment:

Latest2026-10-04: complete original/applied/current/candidate sources are exported
and independently verified in formal opt-in inverse preview. Hierarchy members use
audited graphicBlock iD. Final source passes12actual Main/deep-scope rounds with
complete final restoration,0outstanding/source/input drift/assertions. Offline134
passes844Python/21Doge/1042assertions/version,6live skips;456sources unchanged.
Full graph payloads stay in evidence;compact verification/fingerprints reach agent.
Merged native execution is not implemented. Dependencies/new incident edges/WAL/
native faults,remaining Class types/ordinary-family/native visual/FLOW/isolated
AEB_Core/package/original AEB_1 restoration and whole performance remain required.
Safety37 retains original AEB_1 hold/unrestored failure. Whole delivery INCOMPLETE.
[Verified evidence](bde-class-local-source-inverse.md).

Previous planning-only increment:

Latest2026-10-04: fixed native persisted-source inverse planning matches source
blocks by audited graphical iD, merges exact typed fields/order, and exposes
opt-in bd_revert preview. Base/extended/mixed each pass3actual candidate/preview/
strict-refusal/separate-inverse/full-restoration rounds,9total. Candidate summaries
report compatible;native merged execution remains unavailable. Focused128tests
pass;Safety36 retains the separate original AEB_1 failure/hold. No new performance
or whole acceptance. NEXT: complete candidate oracle/dependencies and journaled
native source publication/recovery, then remaining Class types/faults, ordinary
all-family/native visual/FLOW/isolated AEB_Core/package/original restoration.
[Current contract](bde-class-local-source-inverse.md). Whole delivery INCOMPLETE.

Previous increment:

Current2026-10-04: the isolated failed ordinary move and Class creation are now
separately restored with exact complete native/public/configuration baselines.
Base/extended/mixed each pass3 actual Tool.call mixed-edit/strict-refusal/ordinary
inverse/Class-inverse rounds (9total), no outstanding edits/source drift/assertions.
Literal non-raster anchors refuse before setters; equivalent checkpoint content
is compared exactly while whole-owner native inverse guards remain strict.
Native patch-preserving Class inverse remains unimplemented. Focused121tests pass;
Safety35 retains the separate original AEB_1 hold/unrestored failure.
NEXT: native local Class inverse and remaining types/faults, ordinary all-family/
native visual/FLOW, isolated AEB_Core, verified package/original recovery.
Historical complete reads/write timings were not remeasured; Class writes still
miss1second. Whole delivery INCOMPLETE. [Current evidence](bde-tools-experiment-report.md).

Previous increment:

Latest2026-10-04: default-OFF fresh native configuration comparison is implemented.
Complete before/after/restored values and every setter/WAL/identity/resource guard
remain. Guard matrix/audit pass36formal rounds,120pins/312dispatches and3complete
public baselines;native probe04 passes48synthetic checks and fixes the batch cached
error selector. Offline128 passes822Python/21Doge/1042assertions/version,6live skips,
443sources unchanged. Separate30sample create/inverse P95 is1221.192/1064.938ms,
299/255frames,about672KB/419KB: both1second targets FAIL. Final public audit restores
all3complete baselines. Safety34 retains original AEB_1 hold/unrestored failure.
NEXT: actual configuration/owner faults and complete material/publication/bridge
profiling;remaining Class types/local inverse/faults,ordinary families/native visual/
FLOW/isolated AEB_Core/package/original restoration remain. Whole delivery INCOMPLETE.
[Current evidence](bde-tools-experiment-report.md).

Current2026-10-04: fixed Class observation batching passes36formal rounds on
3fixtures/4primitive input types,120caller pins and312audited completed dispatches.
Separate30sample base-fixture Tool.call P95 is1231.246ms create/1098.020ms inverse,
293/249frames: functional restoration passes;1second performance FAILS. Final
independent public audit passes all3complete baselines. Offline126 passes822Python/
21Doge/1042assertions/version,6live skips. Original AEB_1 restoration/hold remain.
NEXT: exact fresh native configuration comparison and material/publication/bridge
profiling,then remaining Class types/local inverse/faults,ordinary families/native
BDE visual/FLOW/isolated AEB_Core/verified package and genuine original restoration.
Whole delivery remains INCOMPLETE. [Evidence](bde-tools-experiment-report.md).

Previous candidate:

Class bulk write observation passes36formal tool rounds with
public-oracle applied/restored checks. Later fixed-read caching passes3resident
diagnostic create/inverse rounds at1260.63-1302.61ms/1093.10-1106.12ms,above the
1second target. Current explicit-public audit verifies all3complete restored
baselines with0model setters. Cached36round, affected full offline and30sample
performance acceptance remain pending;Offline125 predates the bulk/cache changes.
Original AEB_1 restoration remains false and its write hold stays. Full
Class/family/fault/UI/FLOW/isolated AEB_Core/package delivery is INCOMPLETE.
[Current evidence and performance boundaries](bde-tools-experiment-report.md).

Previous candidate:

Current2026-10-03: formal Doge Class primitive-input creation is implemented and
passes36actual Tool.call create/diff/idempotency/live-stale-conflict/inverse rounds
on3fixtures x4types x3. Audit01 validates312completed dispatches/120restored pins
and3fresh complete native/public/configuration baselines. Native creation is
accepted only with the existing isolated-owner/session checks and explicit
Class-write opt-in. Offline125 passes822Python/21Doge/1042assertions/version,
6live skips;438source files recheck with0drift. Safety32 keeps the original
AEB_1 hold unchanged and original restoration false. Whole delivery INCOMPLETE.

NEXT: equivalent-coverage bulk observation in the Class write path (currently
public getter create/inverse samples3899.96/2580.79ms,8023/5067frames),then
Class faults/local inverse/remaining argument types,ordinary-family/UI/FLOW/
isolated AEB_Core/verified package and original AEB_1 genuine restoration.
[Formal operation contract and evidence](bde-class-argument-creation.md).

Previous native-only increment:

Current2026-10-03 Class continuation: actual native input-argument creation/
all-owner inverse passes3different fixtures x4primitive types x3rounds.120
pins/312dispatches and three fresh complete baseline audits pass. Nested native
edge registration now precedes original material checkpoints;edge identity
refusals remain exact. The failed signature-only creation is independently
restored without replay. Offline124 passes822Python/21Doge/1042assertions/version,
6live skips. Formal Doge create/diff/idempotency/inverse acceptance is NEXT;
NATIVE_WRITE_ACCEPTED remains false. Original AEB_1 restoration hold and whole
Class/FLOW/UI/fault/all-family/AEB_Core/package requirements remain open.
[Actual creation scope and evidence](bde-class-argument-creation.md).

Previous candidate:

Current2026-10-03:64scope lifecycle is implemented with conservative retained
material pins, LRU retirement and process-wide monotonic generations. Scope09
passes actual pressure/precise retirement/stale journal refusal before setters;
25native synthetic-policy checks and808Python/21Doge tests pass. Active UI/Class/
private restoration and actual64live-edit/sustained-pressure acceptance remain.
3new actual causal inverse rounds/fresh audit restore complete native/public
drawing state. Original AEB_1 Class formal/hold remains;whole scope INCOMPLETE.
[Lifecycle evidence and failures](bde-scope-lifecycle.md).

Previous candidate:

Latest2026-10-03: production causal drawing-order preservation/validation passes27
actual double-inverse rounds/54inverse proofs/18causal witnesses/27completed
application receipt losses. Complete native/public restoration and fresh audits
pass;preview and released recovery bind durable source/actual proof hashes.
Offline121 passes799Python/21Doge/1042assertions/version,6live skips;423files match.
Full scope remains INCOMPLETE:64scope lifecycle,actual endpoint/stale/nativefault/
family matrix,Class/shared,cross-module/hierarchy FLOW,original BDE UI,isolated
AEB_Core and package. Original AEB_1 Class formal/hold remains unchanged.
[Current contract](bde-causal-drawing-order.md).

Previous candidate:

Latest2026-10-03: Deletion01 separately restores its exact original drawing order,
with3field changes/350raw objects/0allocations,complete original native/public
baseline and fresh production-reader audit. No completed inverse replay.
Both isolated failed fixtures are now independently restored;production causal
witness preservation before release is next. Whole general inverse/fault/family/
Class/UI/FLOW/AEB_Core/package and64scope lifecycle acceptance remains required.
Original AEB_1 Class formal/hold is unchanged. [Evidence](bde-attached-order-recovery.md).

Previous candidate:

Current2026-10-03 update: Deletion03's original retained n15/p16 is restored and
stored with exact complete native/public baseline and physical/drawing order.
The separate recovery preserves failed results and never replays completed
setters/store. This does not complete general bd_revert or causal-order acceptance.
Next: separately recover Deletion01 order, preserve identity-bound causal order
witnesses before record release, then64scope lifecycle and remaining family/
fault/Class/UI/FLOW/AEB_Core/package gates. Original AEB_1 Class formal loss and
write hold remain;all28whole cases remain incomplete. Offline119 passes782Python/
21Doge/1042assertions/version,6live skips. [Recovery evidence](bde-retained-layout-recovery.md).

Previous candidate:

Current2026-10-03: drawing-order evidence/merge/durable prepared and actual checks
are implemented. Three literal-fanout real double-inverse rounds restore exact
public/native state. Operator-chain second inverse refuses a same-gap ambiguity
before setters; its retained literal remains deleted. First recover it using
genuine causal original-order material, then recover the old completed drawing
drift and expand required family/endpoint/stale/nativefault/Class/UI/AEB_Core/FLOW/
package acceptance. No further new write experiments until recovery; do not weaken
conflict checks or replay completed setters. Whole delivery remains INCOMPLETE.
[Current scope, evidence and next tasks](bde-independent-deletion-drawing-order.md).

Previous candidate:

Latest2026-10-03: independent-deletion live round exposes drawing-order drift
after two completed inverses. Complete collected native values restore; exact
public enumeration does not. Deletion01 FAILED; read-only diagnostic01 confirms
the failure and leaves original files intact. NEXT: separately captured/merged/
durable/verified drawingOrder, then the remaining conflict/family/fault/UI/FLOW/
AEB_Core/package gates. Whole delivery INCOMPLETE; original Class hold remains.
[Exact failure and fix requirements](bde-independent-deletion-drawing-order.md).

Previous verified increment:

Current2026-10-03: actual ordinary three-way inverse passes18current-source
rounds preserving later literal values/new literal-pin additions. Actual formal
previews and12completed application reply losses reconcile through bd_inspect;
released paths validate durable expectations without reconnecting. Six further
guard rounds bring the total to24actual rounds/39native tampers/78refusals.
Separate compensation restores every
successful fixture baseline; failed inverses restored independently with old
files unchanged. Ambiguous parent gaps correctly refuse;64scope lifecycle is
still open. Full delivery INCOMPLETE; original Class formal/hold remains.
NEXT: surviving independent deletions/actual endpoint/stale conflicts, complete
raw identity/lifecycle, all remaining family/fault/Class/shared/UI/AEB_Core/FLOW/
package gates. [Current contract/evidence](bde-independent-edit-inverse.md).

Historical detached-material increment:

Current2026-10-03: detached-original local material guard is implemented for
ordinary delete/disconnect. Material10/11/12 pass9actual edit/inverse rounds,
39genuine native tampers/78production preview/inverse refusals and complete
independent final restoration.9external controls prove local checks only;no
actual independent edit preservation. Inapplicable disconnect text cases are
explicit. Failed fixtures separately restored03-07;original files unchanged.
Whole delivery INCOMPLETE;original AEB_1 Class formal/hold remains. NEXT:actual
independent-edit three-way inverse and complete original raw identity,then all
remaining family/fault/Class/UI/AEB_Core/FLOW/package gates.
[Material contract/evidence](bde-detached-graphical-material.md).

Historical terminal recovery increment:

Latest2026-10-03: raw recovery_status/terminal reconciliation is integrated and
actual bd_inspect passes12completed-application-receipt losses across6rounds,
without setters/replay and with complete final public/native restoration. Matrix01
passes18real delete/disconnect rounds(3graph fixtures x3each),with raw terminal
checks before/after oracle reads. Medians485.597/488.634ms;inverse501.428/540.995ms;
9samples/op,notP95/1000node/fullfamilies. Failures10/12/recovery01 and separate
restorations remain recorded. Original AEB_1 formal still unrestored/hold enforced.
NEXT:detached-field/independent-model edits/complete raw original identity,all
families/nativefaults/otherops,Class/shared/UI,AEB_Core/FLOW/package. All delivery
goals remain required. [Contract and evidence](bde-ordinary-graphical-recovery.md).

Historical order09 increment:

Latest2026-10-03: production StructureJournal/NativeStructureAdapter passes actual
delete/diff/formal-revert3rounds on1fresh fixture,with complete independent public/
native restoration equality. Delete486.322-516.721ms;inverse490.252-522.798ms;
not30sample P95/3fixtures x3 acceptance. Ordinary delete_node/disconnect_data now
retain raw CURRENT/prepared signatures/actual diff;full descriptors stay in WAL,
agent diff remains compact. Original registration identities are retained where
captured;all original raw fields/branch-Set identity remain unproved. Order08's
Dictionary-order validation failure is preserved and separately restored02;old
WAL stays unknown/native applied,no replay/rewrite. Original Class formal remains
unrestored with AEB_1 hold enforced. Next:raw recovery_status/reconciliation,
multi-fixture delete/disconnect/inverse,detached fields/independent edits/real faults,
remaining families,Class/shared/UI,AEB_Core/FLOW/package. Entire delivery INCOMPLETE.
[Latest real production evidence](../analysis/bde-experiments/2026-10-03/bde-isolated-order-09/result.json).
[Current delivery/remaining gates](bde-delivery-status.md).

Historical separate restoration01:

Current2026-10-03 update: separate retained-delete-restore01 passes on the live
isolated runtime, restoring the original literal and2edges with exact parent and
endpoint identities. Complete public/native after equals original before;15old
files unchanged,old WAL stays outcome_unknown,no replay. Exact isolated pending
marker released only after durable verification. Raw CURRENT304objects and actual
9changes/4newcollections are recorded;8Python checks/9PRIVATE native checks pass.
This is one actual recovery,not production bd_revert/full-case acceptance or proof
of original map-value identity. Safety25 keeps29Classfailurefiles/hold unchanged;
original missing formal remains unrestored. Next: raw journal/inverse integration,
real family/field/independent-change/fault checks,Class/shared/UI,AEB_Core/FLOW/package.
Complete delivery remains INCOMPLETE.
[Restoration evidence](../analysis/bde-experiments/2026-10-03/bde-retained-delete-restore-01/result.json).

Historical diagnosis before this restoration:

Current2026-10-03: cold-backed disposable runtime is running. Real one-literal/two-
edge deletion reached store then failed endpoint postcondition; outcome_unknown,
no retry or inverse. Fixed retained-record diagnostic identifies native removal's
preserved manager reference. Endpoint/inverse helpers now require exact original
manager and absent parent membership. Diagnostic03 verifies corrected guard/plan
on real retained originals without structural-reader rebinding or mutation.
Focused19parent-order/18C#transport assertions and production rebuild pass;
Safety24 preserves29originalfiles/hold,restored=false. Actual isolated restoration
is the immediate priority, followed by real inverse/field/fault,Class/shared/UI,
AEB_Core/FLOW/package. Older whole-source manifests below are historical; complete
delivery and all whole acceptance gates remain INCOMPLETE.
[Current diagnosis](../analysis/bde-experiments/2026-10-03/bde-retained-endpoint-diagnostic-03/result.json).

Latest2026-10-03: ordinary disconnect/delete inverse now persists complete native
original/CURRENT/actual order images and checks prepared signatures/endpoint
dependencies. Compact agent diff retains changed tokens/positions/counts/hashes;
the1000-member one-deletion payload test is offline only. Evidence08 passes3
current-source PRIVATE rounds/18order+21endpoint cases;real dispatcher/recovery
reader compile/bind only,no model addGO/store acceptance. Offline109:712Python/
21Doge/1042assertions/versionPASS,6liveSKIP;Safety23:29originalfiles/hold unchanged,
restored=false. Actual detached-field/multi-edge/fault/inverse,Class/shared/UI,
genuine failed-fixture recovery,AEB_Core/FLOW/package remain open.
[Implementation/evidence](bde-parent-order-inverse.md).

Latest2026-10-03: Dictionary/Set/Array first-last physical recovery passes3
same-candidate public-bookended rounds/144 PRIVATE sessions,298 physical writes,
936 refusals;24 OrderedCollection regressions also pass. Offline106 passes687
Python/21Doge/1042assertions/version,6liveSKIP. Safety20 retains29originalfiles/hold,
restored=false. Production inverse/archives/original restoration,Class creation/
shared/UI,AEB_Core/FLOW/package and complete G0-G7 remain INCOMPLETE.
[Actual scope and next work](bde-native-private-collection-recovery.md).

Latest2026-10-03: same-epoch PRIVATE registry/descriptor/WAL reopen pass3 public-
bookended rounds.72 real dedicated C# bridge deaths/RSTs reconcile without replay;
222 primitives/213 recovery units/324 registry negatives/72 stale-handle refusals.
Native wire-owner proof/current source binding and complete-CURRENT release pass.
Offline102:660Python/21Doge/1042assertions/versionPASS,6liveSKIP. Safety17:29 original
files/hold unchanged,restored=false. Unknown partial physical mutation,coordinator/
ASCET restart/archive,production inverse,Class creation/shared/UI,AEB_Core/FLOW/
package/whole G0-G7 remain INCOMPLETE.
[Contract and next work](bde-native-private-host-recovery.md).

Latest 2026-10-03: fixed PRIVATE Cebra steps with flushed descriptive CURRENT/WAL
pass 3 rounds/36 sessions/222 execution primitives/213 recovery units.72 discarded
application receipts reconcile read-only;132 replay/index requests refuse;12
injected journal-publication failures dispatch zero steps. Every round retains
complete 4-owner/7-scope public coverage. Offline100:638Python/21Doge/1042assertions/
version PASS,6liveSKIP. Safety16 preserves29 original files/hold,restored=false.
Native archives, actual transport/host loss, production model recovery/edit,
genuine display01 restoration,AEB_Core/FLOW/package remain INCOMPLETE.
[Protocol and concrete next work](bde-native-private-step-protocol.md).

Latest2026-10-03: private CURRENT retained-reference execution and actual partial
recovery now pass3 independent-public-bookended rounds/378 controlled post-primitive
faults. Exact expectedIndex prevents duplicate/skipped primitives; changed CURRENT,
touched recovery and terminal replay refuse without private state changes. A field
introduced after a fault survives recovery. No durable CURRENT WAL, model setter,
real setter/store/transport failure or restart recovery is accepted. Offline99:
618Python/21Doge/1042assertions/versionPASS,6liveSKIP. Safety15 retains29original
files/hold,restored=false. Full ordinary-BDE/AEB_Core/FLOW/package remains INCOMPLETE.
[Protocol and required production work](bde-native-private-current-recovery.md).

Latest2026-10-03: exact keyed parent/member capture and a fixed native bound-plan
generator are implemented.3 public-bookended rounds cover92 collections/177members
including54ports/10hiddenpins,276real-current no-op collection plans and204new
keyed/plan negatives. Real changed-checkpoint execution is unaccepted; no model
setters/WAL/write gate.4Doge material preflights pass compilation/binding/noactions.
Offline96:582Python/21Doge/1042assertions/version,6liveSKIP.Safety12 retains29original
files/hold,restored=false. Whole delivery remains INCOMPLETE.
[Execution contract and remaining lineage](bde-keyed-collection-plan.md).

Latest2026-10-03: three-way collection ordering/minimal splices and Class inverse
pin-plan integration are implemented; native replay only changes PRIVATE copies.
Direct root/hierarchy parents are retained even without a surviving sibling.
Native-copy-merge03 passes3 rounds/144 copy cases,complete public bookends and
current Main wrapper provenance;no model setters/assertions. Offline95 passes
577Python/21Doge/1042assertions/version;6liveSKIP remain.
Safety11 preserves29originalfiles/hold,restored=false.
Actual native splice/WAL/manager/connection-point rebinding and whole delivery
remain open. [Implementation/next steps](bde-collection-merge-core.md).

Latest2026-10-03: native current-state checkpoint capture retains actual scoped
objects/managers and complete immediate parent member arrays across calls.
Class prepare/apply now retains separate original/after checkpoints; native
inverse/restore/reconcile and recovery-v3 probes reject missing/changed material.
Three native rounds pass113 objects/51 collections with48 native negatives;
twelve Doge preflights pass material compilation/binding without actions.
Offline92 passes562 Python/21 Doge/1042 assertions/version,6live skips remain.
Safety08 retains all29 original files/hold; genuine recovery, actual creation/
delete/inverse, local splice/WAL and whole delivery remain INCOMPLETE.
[Checkpoint contract and remaining executor](bde-native-collection-checkpoints.md).

Previous2026-10-03: add native retained-original graphical field checkpoints and
typed compact recovery-v2 probes; no expanded graph payload reaches the agent.
Current-state projection passes three public-bookended native rounds and twelve
real creation previews pass template binding without actions. Positive detached
originals/restore remain unaccepted. Existing-edge retarget occupancy conflict is
fixed. Offline90 passes541 Python/21 Doge/1042 assertions/version,6 live skips.
Safety06 retains all29 original files/hold; full delivery remains INCOMPLETE.
[Field guard and remaining boundaries](bde-native-material-field-guard.md).

Current 2026-10-02 evidence supersedes the historical increments below:
read15 passes 30 complete current-state Class reads, P95=933.749 ms including
all pages; AEB_dFxTar semantic03 has 30 full reads, P95=663.115 ms. Offline81
passes 481 Python / 20 Doge tests with 6 unverified live skips.
Latest offline85 has 517 Python/20 Doge/1030 assertions/version PASS. Frozen-record
and Esw-stream recovery research has not established complete original native
material: no containing valid stream for the removed formal among 2673 streams
in the tested profile. No hold clearance or new model write. Full delivery remains
INCOMPLETE; see [recovery evidence and limits](bde-recovery-record-audit.md).
Read-only native inverse preview is implemented, but its positive retained-object,
capacity exhaustion and partial-state paths remain unaccepted. Class creation,
inverse preserving unrelated changes, genuine display01 restoration, full FLOW/UI
and final release remain incomplete. The AEB_1 hold still prevents new writes.
See [current delivery status](bde-delivery-status.md).

2026-10-02 continuation: actual read-only Class deletion preview is implemented
and passes3+3 real Doge rounds. It lists planned exact removals, not actual diff;
native inverse preview/capacity/creation remain open. A durable database restoration
hold now prevents new writes across process/STORE changes for the retained failed
display01 fixture. Three actual independent-STORE refusals pass with0 native frames.
Offline72 passes452 Python/13 Doge tests plus version;6 live tests remain skipped.
Full delivery remains INCOMPLETE; genuine failed-fixture recovery is pending.
[Evidence and remaining work](bde-tools-experiment-report.md).

2026-10-02 current delivery correction: real Doge Class read, exact formal deletion,
separate apply/inverse, actual WAL diff, request deduplication and terminal
reconciliation are now implemented as isolated opt-in experimental capabilities.
middle03/return02 each pass three live rounds; production Class support remains
unaccepted. [Current contract](bde-class-tools-usage.md). This supersedes historical
statements below that the Class tools adapter is entirely absent.

Full delivery is NOT complete. display01 remains outstanding after ASCET restart;
the deletion persists and original recovery objects were lost. The current safe
presentation only reuses an already-open exact owner editor, refusing automatic
opening because native edit/viewer initialization can modify DEFAULT Projects.
owner-diagnostic03 confirms unchanged collected all-owner data and zero new
assertions but refuses the closed Class editor, so its complete presentation
verdict is FAILED. Class creation/full native preview, patch-preserving inverse, partial/
unknown recovery, external types, shared dependencies, complete UI/FLOW/G0-G7,
isolated AEB_Core acceptance and a verified package remain open.
[Latest evidence and recovery limits](bde-tools-experiment-report.md).

Historical 2026-10-02 Class persisted configuration increment: six isolated native deletion/
restoration rounds now include all-owner storage graphs and14 write guards per
round; config-conflict/log publication faults confirm zero setters with an
independent unchanged baseline. Three AEB_Core reads collect the same bounded
14447-object configuration graph. Effective instances/external type content and
formal Class apply/revert/request recovery/native display remain open. Full
delivery and G0-G7/FLOW acceptance are not complete. See the latest report.

2026-10-02 automatic Class resource increment: the isolated executor can now
resolve all supported caller owners from native DB references. Its input contains
only definition/database/process identity and an exact selector, with no fixture
caller or occurrence list. A stable binding/resource closure is checked before
each mutating command; the fixture is an independent experiment oracle only.
Fifteen online rounds pass, including a new Class/two-Module fixture, one repeated
declaration, three hierarchy levels and three argument positions/return removal.
Stale resource preconditions and a real write-ahead failure both execute zero
setters. This does not enable formal Class tools or remove Main/sandbox gates.
Configuration reference identities are collected, not complete effective values.
[Evidence and remaining gates](bde-tools-experiment-report.md).

2026-10-02 Class continuation: isolated closed-formal edits now have durable
all-owner preparation, started/completed stages, actual multi-scope observations,
inverse preflight and instance quarantine. Primary/Secondary/generalized return
each pass three online rounds with original object restoration. Return layout
requires a separate adjacent-corner policy and complete public route oracle;
three newly unassigned native call objects are recorded without certifying their
scheduling. A real write-ahead failure executes zero setters. This is research
infrastructure, not enabled formal Class signature tools. Full configuration
fingerprints, production journal/recovery/display integration and whole eval
remain required. [Evidence and limits](bde-tools-experiment-report.md).

2026-10-02 latest increment: immutable `flow_plan` now accepts existing-pin
segments or explicit create/connect steps. Generated endpoints resolve from
actual patches without a per-step agent read; same-owner declaration effects
propagate across scopes. Whole native/virtual inverse preflight is retained.
Connection-path04, Class-body04 and display-owner02 passed three rounds in their
declared coverage. Construction03 passed its complete pilot, including unique
cross-Module message binding/path and lost-creation-reply reconciliation.
Construction04 completed three rounds / 21 cases; visual01 completed three
rounds of Main fanout addition zoom/scroll/close/reopen/clear gates. New hierarchy
port construction and remaining typed combinations passed interfaces03 in three
rounds / six cases, including exact child boundary paths and conflict refusal.
Actual child scope diffs/snapshots/recovery pass scope03 three rounds / nine
cases; shape/control/existing-definition construction passes shapes02 three
rounds with all baselines restored. Same-owner created enum dependencies and
declaration guards pass enum02 three rounds / 12 cases. Grouped tables and
repeated model occurrences pass models02 three rounds / nine cases with complete
restoration. Existing hierarchy create/delete ports pass ports08 three rounds /
42 online cases across two nested scopes, including child conflicts and real
apply/inverse reply-loss reconciliation. Complete baselines restore and no
outstanding records remain; Class interface edits are still required.
[Usage](bde-construction-tools.md).
Interface creation/deletion, shared dependency groups, full visuals/reload/fault
gates and full eval remain required. State-machine/Code Mode/new host stay deferred.

2026-10-02 implementation update: Project message/instance reads, immutable
`project_signal_path`, independent multi-resource `bd_edit.steps`, automatic
`flow_` actual patches, native inverse preview and reverse group restoration are
implemented. See [usage and evidence](bde-multi-resource-tools.md). This supersedes
the historical statements below that all Project/group capabilities are absent.
Dependent same-root edits, complete channel/connect_path construction and shared
resource recovery remain required. Full FLOW/G0-G7/L0-L3 gates are not passed.

**2026-10-01 最终需求扩展：** 普通 BDE 工具须覆盖 A2A/XPass message 收发、Project 中的 Module 实例绑定、Class 方法接口和嵌套 hierarchy 的完整信号通路。新增 [通路设计与 S1-S5 任务](bde-signal-flow-tools.md) 和 [跨层级 eval](bde-signal-flow-eval.md)；创建 message block 不代表通路完成。单组件 `interfaces`、`signal_path`、`interface_binding` 已接入正式六工具，refs 只读；Project/实例链、跨组件 connect_path、group 实际 diff/回退/展示仍未实现。状态机/宿主延期规则保持。

**2026-10-01 子图展示增量：** 精确UI父子ID链路由已接`bd_diff`，跨scope暂停绘制和错误scope clear拒绝。presentation03三轮9cases、18对show/clear、54次native画布检查、21拒绝及完整公共图/声明恢复通过。视觉/缩放滚动/窗口生命周期仍待验收，不能视为原BDE完整展示门槛通过。下面节点阶段的“子窗口overlay待实现”由本增量更新。

**2026-10-01 hierarchy编辑增量：** 单root下的精确子scope读取、连接/断开/换源、10类节点创建和普通节点删除、actual patch/零在线diff/after_snapshot接续及inverse已接Doge。nodes03三轮72 cases、162 edit/162 inverse通过，359份完整public观察与324个累计patch一致且基线全部恢复。跨scope声明引用、父容器后续子图改动均阻止不安全回退；边界pin/容器删除仍拒绝。接口增删、子窗口overlay、跨Module/Class Project通路、group恢复仍待实现。见[hierarchy编辑用法](bde-hierarchy-edit-usage.md)。完整FLOW及G0-G7/L0-L3仍未通过。

**最新执行范围：仅普通 BDE tools 本身。** Code Mode SDK/执行器、宿主框架扩展及状态机暂缓；读取、定位、精确修改、自动 diff、删除回退、原 BDE 显示及其内部正确性保证仍按主计划开发。后文 Code Mode 阶段为历史规划，不是当前交付门槛。

**2026-09-30 当前范围调整：用户要求状态机先不研究，先完成普通 BDE。** 当前顺序及验收以 [普通 BDE 执行计划](E:/Repo/ASCET/docs/bde-only-execution-plan.md) 为准；以下状态机任务保留为延期工作，不作为本阶段验收门槛。

**审查后计划修订：** 先按 B1–B4 修复拒绝请求破坏恢复、缓存归属、跨 STORE 互斥、取消/超时语义、删除顺序及 preview，再完成 B5/B6 的原 BDE 显示和结构化引用，之后 B7 Code Mode、B8 连续编辑及节点扩展、B9 综合验收。以下 T 编号继续作为需求目录；旧 M1–M5 是历史阶段描述，不覆盖新执行顺序。本次只改计划，审查项仍待实现及验证。

2026-09-29。本文是任务规格，不是完成报告。依据用户提出的高效读取、精确编辑、自动 diff、原有 BDE 显示、删除及回退需求。目标架构见 [v0.4](E:/Repo/ASCET/docs/bde-tools-architecture-v0.4.md)，编辑记录细节见 [局部日志契约](E:/Repo/ASCET/docs/block-diagram-edit-journal.md)。

2026-09-30 进度：T02/T03 已接入 Main targets 局部拓扑与 layout 读取，Doge 在线验证通过；完整语义依赖读取仍待扩展。T04/T07 的隔离 literal 实验已验证真实 diff/layout 回退，独立日志核心已通过离线故障测试，原生 adapter 及受开关约束的 Doge 隔离写入口现已接入并在线验证。T05/T06/T08 等其余验收仍未完成。实测结果及限制见 [实验报告](E:/Repo/ASCET/docs/bde-tools-experiment-report.md)。

## 总目标

让 Doge Code 中的 agent 像操作源码一样理解和修改 ASCET 框图：读取高效且语义完整，定位和修改精确，编辑自动记录实际差异，在原有 BDE 中展示变化，并能检查冲突后恢复。正常编辑不依赖整图重读，agent 不手动管理快照、日志或底层 Cebra 调用。

完整工作链：读取 → 理解/定位 → 编辑或删除 → 自动生成实际 patch → 原有 BDE 展示 → 按需检查/回退。

## 工具职责与目标输入输出

下表是目标契约。参数组合用判别联合约束，cursor 必须单独使用；新增参数当前未实现。

| 工具 | 主要输入 | 返回 | 不承担的职责 |
|---|---|---|---|
| `bd_read` | component 或 snapshot、scope、view、定义读取范围、字节预算；或 cursor | 不可变观察引用、身份域、采集/交付覆盖、可读模型正文、下一页 | 不用全量采集来实现局部查询，不把缓存当活体当前状态 |
| `bd_find` | snapshot、名称/类型/关系查询和限定范围 | 精确 ref、名称、类型、所在层级、简短上下文 | 不凭名称或坐标直接决定编辑目标 |
| `bd_inspect` | snapshot、targets、字段/定义/引用/校验查询；或历史/能力查询 | 精确属性、已知/未知状态、证据来源、可用操作和恢复等级 | 不将默认值当生效值，不自行执行写入 |
| `bd_edit` | 已读观察、request_id、typed operations、expect、可选 preview | change_id、实际局部 diff、逐项状态、验证范围、恢复能力、显示状态 | 不要求 agent 再 read 全图来生成日志，不隐含数据库保存 |
| `bd_diff` | change_id 或两个可比较观察；可选 display=bde、cursor | 已记录 patch/观察差异、未比较范围；原 BDE 显示结果 | 查询 edit patch 不重新连接 ASCET；显示失败不重复 edit |
| `bd_revert` | change_id、request_id、可选 preview | 冲突或逐项恢复结果、新 change_id、验证与显示状态 | 不盲调一次 Undo，不覆盖无关后续修改 |

删除进入 `bd_edit.operations`：图形 occurrence、数据边、状态机 transition、共享定义必须分别建模。隐藏 BDE diff 是视觉动作，不等同于 revert。

## 任务清单

### T01：统一语义模型、身份与能力契约

**目标：** read、edit、diff、显示和恢复使用同一套对象与字段语义。

交付：

- 节点、pin、数据边、方法调用、模型定义、参数/公式、状态、transition 的类型与引用规范。
- 数据库、组件 OID、图/层级、原生对象身份、进程身份和观察引用的解析规则。
- 字段状态 known/absent/not_collected/unsupported/error，以及采集/交付/验证覆盖模型。
- operation 能力表：来源证据、在线验证状态、副作用范围、恢复等级；局部观察与全量观察不可混淆。
- typed schema、错误和状态定义；对现有 snapshot、change_id 与观察历史的兼容/迁移规则。

验收：重复名称不改错对象；枚举重排不改变身份；多重边和同端点 transition 不合并；进程重启或身份不确定能明确拒绝旧引用。

### T02：高效读取计划与原生局部 reader

**目标：** 从源头降低采集成本，而不只是截短返回。

交付：

- 按组件、图、层级、targets、字段和有界邻接范围执行的 read planner。
- 局部/批量 ASCET adapter；共享定义、方法正文按身份和版本去重。
- 查询索引、缓存失效规则、串行桥接调度；评估并验证持久 worker 的生命周期和性能收益。
- 不可变观察、只读缓存分页、在线补读产生新观察的规则。
- 读取性能基线：冷/热读取、局部读取、Cebra 往返数、字段/对象采集量、返回字节和耗时。

验收：读取 n15 的指定字段不抓取所有方法正文；已存 snapshot、续页和 edit diff 查询为零在线采集；缓存缺字段不偷偷补入新版本；未知值明确保留。相同环境和语义范围下提供修改前后测量，不用未经测量的毫秒数作承诺。

### T03：agent 可读的 read 返回与精确查询

**目标：** agent 能读懂、能读全，也能从结果直接拿到可编辑的精确目标。

交付：

- 轻量 envelope：观察/作用域/一致性、coverage、page；正文使用确定性模型文本。
- 引脚、连接、执行关系、公式绑定、去重定义和方法正文的稳定表达。
- 记录边界分页；长方法按 ref、内容版本、行区间和 continuation 续传。
- find 与 inspect 使用统一索引；页面外引用、未读取依赖及未知配置可追踪。
- 完整逻辑视图与局部投影的语义一致性检查；正文不再同时复制大 JSON。

验收：指定范围的全部逻辑可连续读完，不能用摘要冒充完整；重复页不漏数据；同一观察输出稳定；所有编辑 ref 可在同一身份域精确解析。

### T04：精确编辑执行器与自动 patch

**目标：** 每次 edit 自动记录实际修改，成本随目标及关联范围变化。

交付：

- 统一执行链：解析目标 → 局部 before → 校验 expect → 持久化意图/恢复材料 → started → setter → 局部 after → 实际 patch。
- 从 literal 开始验证，再扩展数据重连与执行顺序；每个 operation 声明关联验证范围。
- request_id 持久去重、旧值冲突、取消/超时、部分成功、未知结果、落盘失败状态。
- patch 区分请求值与实测值，保存身份、旧值、新值、原生副作用及未验证范围。
- 历史查询区分 edit 记录、preview/拒绝审计和现有 read 观察历史。

验收：edit 不调用整图 capture；旧值变化拒绝；请求重复不重复写；超时不伪报未修改；写前日志失败不开始写入；after 必须来自局部回读。UI 展示失败不改变模型操作结论。

### T05：原有 BDE 内 diff 展示

**目标：** 用户在 ASCET 原有编辑器中看到本次实际变化。

交付：

- 原生选择、定位、缩放、画布装饰/绘制及刷新链的源码证据与在线验证。
- patch 到原 BDE 对象/几何的映射；新增、修改、删除有可区分标记，不能仅依赖颜色。
- 删除对象和旧连接的只读视觉残影、字段旧/新值面板、逐项定位、显示/隐藏 diff。
- 独立 presentation 状态、生命周期和错误处理；历史 patch 显示明确标注时间及无法匹配对象。

验收：在原有 BDE 内验证节点和连线变化可见；删除对象仍能查看旧位置/形状；关闭标记不改业务数据、不污染原生 Undo 栈；不能用另一个网页、外部 ASCET-Diff.exe 或纯文本代替此项完成。

### T06：精确删除与恢复材料

**目标：** 删除范围明确，关联关系不遗失，为精确恢复留下足够数据。

交付：

- occurrence、data connection、transition、共享定义的独立删除操作与依赖分析。
- 显式影响清单和受约束的级联计划；重复边、外部引用、共享定义使用情况校验。
- 删除前保存原生对象/关系、层级、执行顺序、配置关联、显示几何及恢复所需材料。
- 原生保留身份的恢复路径验证；无法精确恢复的类型不能伪装为可回撤删除。

验收：删除一个 occurrence 不误删共享定义；未声明依赖变化拒绝；前后 patch 包含实际关联删除；不是“重新创建一个看起来相同的对象”就算身份恢复成功。

### T07：按 patch 回退及冲突处理

**目标：** 恢复指定编辑，保留无关后续修改。

交付：

- 从 patch 和原生恢复材料生成的恢复计划。
- 当前值与实际 after 的局部冲突检查、关联约束和身份校验。
- 恢复前日志、逐步执行、局部回读、新 change_id 及原记录关联。
- 部分恢复失败、未知状态和不能自动恢复时的可检查结果。

验收：literal、重连、sequence 和删除恢复分别通过；无关后续修改保留；目标后来被改则冲突，不默认 force；不覆盖整个组件来规避局部恢复。

### T08：状态机专用适配

**目标：** 状态机同样可读、可精确编辑、可展示和恢复。

交付：

- transition 独立身份、state/pin 端点、层级与边界 pin 内外侧。
- guard、action、trigger、priority，状态 initial/entry/exit 等语义的安全读取。
- getter 副作用审计；alias 方法和 SGMethodCall 等关联对象的修改/恢复闭包。
- state→state、state→pin、pin→state、pin→pin 的独立约束与验证。
- 状态机 typed operations、patch、原 BDE 展示和精确恢复能力。

验收：同端点不同 guard 的 transition 可分别编辑和回退；unknown trigger 不当作 none；优先级不混为 BD sequence；无法保留身份的 retarget 不默认删后重建。详见 [状态机审查](E:/Repo/ASCET/docs/block-diagram-connections-review.md)。

### T09：Doge 集成与端到端验收

**目标：** 工具可被真实 agent 使用，完成完整任务，而不只是单独后端函数通过测试。

交付：

- 原生工具注册、准确的工具说明/schema、预算分页、执行回执和错误映射。
- 在隔离测试组件上的读取 → 精确修改/删除 → 自动 patch → 原 BDE 显示 → 回退流程。
- 包含用户 GUI 并发修改、ASCET 重启、桥接失败、工具取消和日志故障的验证记录。
- 功能矩阵、性能对比、可复现命令、原生 BDE 展示证据和真实 agent 调用记录。

验收：一个具体模型修改任务可由 agent 完成并说明实际差异；随后恢复，逐字段、身份和关系验证正确。API、Tool.call、agent 选工具和 BDE UI 展示分别提供证据，不能互相代替。

## 依赖与实施里程碑

| 里程碑 | 包含任务 | 交付边界 |
|---|---|---|
| M1 统一契约与风险验证 | T01；T02 性能基线；T05 原 BDE 接入研究；T08 身份/安全读取研究 | 尽早暴露原生显示和状态机难点，不到最后才发现架构不可行 |
| M2 高效读取 | T02、T03 | 冷/热/局部 read、完整逻辑交付、精确 refs 和覆盖可用 |
| M3 最小完整编辑链 | T04 literal；T05 实际展示；T07 literal 恢复；T09 对应集成 | 一种真实编辑的读取/执行/日志/原 BDE 显示/恢复闭环成立 |
| M4 结构修改与状态机 | T04 连线/sequence；T06；T07 相应恢复；T08 | 删除、结构关系、状态机等按类型完成和验证 |
| M5 整体验收 | T09 全部场景与性能报告 | 全部需求成立，遗留项和不支持项不得被当作完成 |

T04 的执行器依赖 T01、T02 和日志契约；T05 接入研究可提前，实际展示消费 T04/T06/T08 的同一 patch。T06 与 T07 必须共同验证删除后的身份恢复。此表描述工程依赖，不表示自动启动其他 agent。

## 完成判据

- [ ] 指定范围完整可读，局部 read 不触发无关全量采集。
- [ ] 精确目标、旧值条件与身份校验覆盖所有开放写操作。
- [ ] edit 自动生成实际 patch，agent 无需额外 read/save 才能形成记录。
- [ ] 历史 diff 查询零在线采集，异常/重试不重复写入。
- [ ] 原有 BDE 中展示新增、修改、删除、连线与状态机差异。
- [ ] 精确删除和回退保留身份与关联关系，冲突不覆盖，无关变化保留。
- [ ] Doge 原生工具、真实 agent 流程和原生 UI 均有验证证据。
- [ ] 性能改进有同环境测量，完整语义与恢复能力未因压缩/提速丢失。

当前已有隔离普通 BDE 的创建、精确连线/重连/删除、字段与几何编辑、自动实际 patch、原生显示及按 patch 回退；覆盖以最新实验报告为准。完整验收仍不能勾选：跨资源接口增删、全部原生视觉/身份重载/故障及整体 eval 尚未完成。状态机按用户后续要求延期，不作为本阶段完成前置条件。

### 2026-09-30 03:42 实现补充

`bd_inspect(query="edits")` 已接入 Doge：离线跨会话发现编辑及逆向 patch，精简字段摘要 + bd_diff 详情，固定分页、未知/损坏诊断；无需重读 BDE。证据 history-01，详情见实验报告。本轮不新增在线写验证；原生显示、连线、删除和状态机仍待实现。

### 2026-09-30 08:00 完整读取性能更新

全量reader单次内去重及直接ID读取已启用，同覆盖中位12.63→8.49秒、9891→6494帧，六次原始语义核对通过，Doge在线完整链路通过。非原子观察；重复对象复用第一次采样，不跨读取复用。getter流水线只保留研究版本，多连接尚未测量。详见 docs/bde-full-read-performance.md。

### 2026-09-30 08:56：1秒样例验收

固定整组件Smalltalk导出已实现，显式ASCET_BD_BULK_FULL=1启用。完整AEB样例+全部4页逻辑正文20次P95=780.592ms，全字段与旧reader相等；不是跨所有类型的保证。类型、层级、布局和其他tools完整需求仍按原任务执行。详见bulk-01证据及bde-one-second-read-plan.md更新。


## 2026-09-30：结构编辑与原生绘制接续

已实现隔离结构 profile、10 种 typed 结构操作、局部实际 patch、请求后置条件检查、同 ASCET 进程保留对象回退及 Doge 路由。独立公开 API 核对重连/带边节点删除/带迁移状态删除/迁移动作/改名/迁移创建及恢复。证据及完整边界见 [结构实现报告](E:/Repo/ASCET/docs/bde-structural-implementation.md)，机器可读汇总见 [structural-summary.json](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/structural-summary.json)。较早报告中“尚无结构实现”由本节修正，但不得据此勾选整体业务验收。

`bd_diff(change_id, presentation=show|clear)` 已接线并独立记录展示回执，未完成 UI 验收。在线首次打开状态机 gc 未就绪；第二次 show 成功后真实 expose 回调暴露 CwDrawingArea/gc 类型错误，clear 超时/API 空句柄。修复从 clientData 获取包装对象并捕获异常，尚待在线复测。失败在 doge-structure-overlay-01/02 保留；按用户授权重启后停在数据库 Rebuild now 提示，界面自动操作无法激活。需进入 AEB_1 后先恢复隔离 t8 priority 4→3。旧进程 inverse 已失效，不宣称跨重启精确回退。

提速通用性已补充到 [原生批量方法](E:/Repo/ASCET/docs/ascet-native-batch-method.md)：进程内有界循环+纯值传输、显式恢复记录、图 wrapper 重载/身份、Cebra 平铺参数、route 存储坐标、ESDL alias 及 UI 回调契约。完整 AEB 读取 P95 780.592ms 仍是既有覆盖样例结果，不能外推到任意结构操作。
# 2026-10-02: Verified message and recovery additions

Typed message creation now includes explicit scope and existing enum definitions;
message-creation03 passes three rounds/36 live cases with complete restoration.
Resource-group unknown reconciliation is connected to the six tools;
group-recovery01 passes three controlled adapter reply-loss/restoration cycles.
Project candidates03 independently enumerates all sampled Module message
candidates for 128 declarations/61 imports across three rounds. These close
specific evidence gaps, not the complete ordinary-BDE or cross-Module goals.
Full visual lifecycle, dependent/shared groups, Class internal entrances,
interface changes and reload/fault acceptance remain required.

## 2026-10-02: Class interface consistency continuation

A controlled Class/two-Module/three-instance fixture is complete. Nine native
signature propagation/restoration studies and a 14-case hierarchy regression
have finished. Structural reads now reject changed shared pin shape and
unstored native pin IDs instead of exporting a stale or ambiguous graph.
Offline56 passes Python294/Doge11pass6skip798assertions/version.

Class edit operations are not enabled by these results. Required next work is
stable caller pin materialization, actual definition/each-caller scope effects,
explicit incident node/edge deletion closure, original graphical-object inverse,
shared conflict/fault reconciliation and BDE presentation. Native declaration
removal alone fails the production precision gate. Full ordinary-BDE and isolated
AEB_Core acceptance remain incomplete; see the current experiment report.

## 2026-10-02: Caller query and nested Class instances

The formal six tools now include bounded class_callers live inspection and
existing-Class creation in existing ordinary child scopes. Three real Tool.call
rounds pass caller query pagination and two-level Class create/connect/delete/
automatic diff/original-object restore flows, with complete isolated baselines.
Offline57 passes Python311/Doge11pass6skip804assertions/version.

Native flat Class materialization and closed argument/return deletion also
pass three research rounds each. Formal multi-owner journal/conflict/unknown/
inverse integration and generalized exact selectors remain required. Return
removal records introduced unassigned sequence calls; scheduling is unverified.
These milestones do not complete all BDE/FLOW gates. See the latest report.

## 2026-10-02: Exact selectors and multi-method layout closure

The formal class_callers query supports an optional exact method/formal selector
and compact returned targets, including nested scopes. Six matching native read
observations pass; returned bytes/pages are reduced without reducing underlying
caller collection. This is a declared response projection, not complete BDE read.

Generic native first/second argument deletion each passes three rounds across
five scopes, original-object inverse and actual connector/edge endpoint layout
effects. Default layout policy refuses implicit changes; the explicit research
policy requires native/public displacement evidence and preserves strict checks
for other fields. Unconnected moved pins and other root diagrams remain outside
the verified profile. Formal shared Class edit journals/fingerprints/fault/visual
gates remain open; whole ordinary-BDE/FLOW acceptance is not complete.

## 2026-10-02: Local inverse analysis implementation

Class revert preview now implements field-level three-way analysis of actual
WAL before/after and collected current graphs, with row/field/order/dependency
conflicts and proposed preservation of independent changes. It remains a value
preview: native local inverse is not implemented, and the strict whole-owner
executor/retained database hold remain enforced. Required next implementation
and acceptance are recorded in [the local inverse contract](bde-class-local-inverse-contract.md).
Do not mark precise native unrelated-change restoration or whole delivery passed
on the basis of these offline assertions.

## 2026-10-02: Parameterized Class creation implementation

The fixed native Class input-argument creator, independent exact method selector,
all-owner WAL/retained-source protocol and actual effect validator are implemented.
Formal create_class_argument currently exposes only a read-only preview: primitive
input arguments, Main/method_alias and one planned pin per exact caller occurrence.
Three public-API-bookended rounds/four types each pass current Tool.call preflight
with unchanged four-owner/seven-scope observations and no native recovery/edit
allocation. Actual requests refuse before native dispatch because this fixture
has unsupported Project references; native creation acceptance remains false.
No real argument creation, edit diff or inverse is certified by these previews.
The original restoration hold, local native inverse, actual shared/fault/UI and
final AEB_Core/FLOW/package remain open. Offline89 passes531 Python/21 Doge/
1042 assertions/version,with6 live skips unverified. See the creation contract.

## 2026-10-03: Private native graph inverse implementation

Memo-based graphical copying, exact pin/incident-edge private deletion, actual
field/collection diff and guarded local inverse are implemented. Three online
public-bookended rounds pass 126 private cases preserving a separate visible
node's coordinate edit, with 252 actual inverse conflicts refusing all mutations.
All original owners/domain stay unchanged. Offline97 passes 596 Python/21 Doge/
1042 assertions/version; six live skips remain unverified. Safety13 preserves
29 original failed-edit files and the recovery hold; restored=false.
This does not complete production model inverse/WAL, original recovery, shared/
fault/reload/UI, AEB_Core/FLOW or final package. Same-collection independent
membership changes in that earlier candidate refused. See the latest continuation
below and [private contract](bde-native-private-graph-inverse.md).

## 2026-10-03: Private ordered merge and dependency continuation

The actual private inverse now integrates keyed minimal ordered splices and
retained-reference ancestor/endpoint closure. Three independent public-bookended
rounds pass 126 primary cases, 9 same-port independent pin deletion cases and
1638 prepare/prepared-execute conflicts with unchanged private state on rejection.
Each round retains full 4-owner/7-scope/31-node/59-pin/23-edge public coverage.
39 cases per round have no eligible peer and remain explicit skips; hidden peers,
Caller peers and independent additions are not certified. Dictionaries remain
atomic. Original owners/domain, failed-edit recovery files and hold are unchanged.
Production original/applied/current lineage, model dependencies, durable CURRENT
WAL, real local inverse/fault/reload/shared/UI, AEB_Core/FLOW and package remain
required. This does not enable Class signature writes or complete the goal.

## 2026-10-03: Partial physical recovery continuation

Actual composite PRIVATE recovery now retains each physical operation's before/
after images. Unknown outcomes refuse replay; exact read-only classification
permits continuation while preserving an independently introduced field. Three
full public-bookended rounds pass 72 before/after exceptions at first/middle/final
positions, 72 dedicated bridge deaths/original-material lookups, 1638 physical
primitives and 468 refusals. Original public 4-owner/7-scope coverage is unchanged;
registry sizes are 0->0. Two failed prototypes and separate original-reference
repairs remain recorded as failures. Offline103 passes681 Python/21 Doge/1042
assertions/version;6 live skips remain unverified. Safety18 preserves the29 original
failed-edit files/hold,restored=false. [Physical contract](bde-native-private-physical-recovery.md).

This is private OrderedCollection recovery, not production Class/model inverse,
failure inside a native primitive, native archives or a one-second edit result.
Dictionary/Set/Array online positives, production dependency/CURRENT/inverse,
genuine display01 recovery, Class creation/shared/UI, AEB_Core/FLOW and final
package remain required. The overall task stays incomplete.

The completion-file publisher subsequently changed to closed-file atomic rename;
the reader retries filesystem observations without native command replay and
avoids misattributed FIFO diagnostics. Current bridge physical05 passes24 further
cases/552 physical primitives/156 refusals. Bulk current08 passes42pins/126faults;
host-exit09 passes12sessions/24deaths/lookups. Offline104 passes683Python/21Doge/
1042assertions/version,6liveSKIP. Safety19 preserves29originalfiles/hold. These
regressions remain scoped;04's older full source binding is never relabeled as05.

## 当前实现增量：payload 级精确 diff

`scripts/bd_commit_payload_diff.py` 已提供完整 record payload 校验、连续字节范围 diff、logical/allocated 分离和 before/desired/current 三方冲突门禁；8 项离线控制通过。它是 edit 自动记录的候选投影层，尚未连接 native record rewrite、flush、WAL 完成事件或 inverse，因此不能把该增量标为持久编辑完成。
# BDE tools current execution boundary

2026-10-07 新增只读写入链审计：已确认 `ASDPersistenceController>>writeRecord:`、`DBInterface32` 转发、`CTreeInterface` fixed/variable 分支及 CTree transaction/abort selector。`CTIFil` 叶实现仅有反编译方法表证据，尚未恢复完整源码；写后对象状态变更和 inverse 闭包仍未证明。审计脚本保持 `write_authorized=false`/`inverse_authorized=false`，不允许仅凭 selector 存在就在线写库。
