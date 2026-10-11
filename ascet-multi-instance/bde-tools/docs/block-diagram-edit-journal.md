# Block Diagram 编辑自动记录：局部写前/写后日志

2026-10-07 v5 日志已在线验证：`intent → commit_capture_requested → prepared → started → finished`。capture request 必须在原生准备之前落盘；v5 prepared 完整绑定同次原引用基线，不能以少字段或旧 profile 回执降级。当前实验在写入权限检查处拒绝，native apply=0，不能把 `started` 事件本身当成模型已修改。

若 request 已落盘但缺 durable prepared，恢复只查询 `native_commit_attempt_v1` 并追加实际 `commit_capture_attempt_observed`。即使原生侧有完整 prepared receipt，也不自动合成 prepared、不清 pending、不重发 prepare/apply；当前不存在材料也不证明从未执行。相关 31 项故障/日志控制和本轮共 100 项定向离线控制通过。[live01](../analysis/bde-experiments/2026-10-07/bde-commit-attempt-live-01/result.json) 已用真实原材料和独立本地 WAL 缺回执夹具验证一次查询、实际 attempt 入日志、unconfirmed 保留及原 WAL/图形不变；不是实际网络丢包。

有限引用 lookup 读取同次原观察材料，保留完整字节及来源定位，可组成新增目标的离线有限计划；不得写成真实持久 edit 或 inverse 成功事件。正式 Doge 仍将 21 处真实读取变化保存到 WAL，离线 diff/history 0 native 帧。见[当前开发状态及证据](bde-delivery-status.md)。下面保留历史日志检查点。

2026-10-07 当前日志增量：原 v4 before 不变，`commit_resource_checked` 现保存原 outgoing 9 目标的当前完整入站/未解析 raw tail 比较及逐记录读取效应。`native_commit_status_v2` 明示当前核对 true；真实 current-tool-live-03 的完整 WAL 有 21 处实际差异：10 timeStamp、2 owner fixedRecord、9 reciprocal fixedRecord。原引用语义/raw 相同、图形未改，这些读取差异不能冒充 edit 或 inverse 成功。

当前 report 以 resource_check_index 严格配对；初次四参数 helper 失败材料仍为 reading/1 row/无 index，不能补成完成检查。三参数修复后 Tool02、严格 validator 后 Tool03 成功，原 before/receipt/WAL 未改写，未重发 prepare/apply。agent 摘要 4,516 bytes/3 页，diff 14,532 bytes/10 页，history 5,648 bytes/2 页；离线 diff/history 0 native 帧。77 控制=29 新+48相关，历史重叠不累计。[固定证据与复算](../analysis/bde-experiments/2026-10-07/bde-commit-reciprocal-current-increment-01/README.md)。

新增目标的原 before、完整持久写集与 inverse 仍未闭合。下一同次新 prepare 全引用 record/key 基线须保留真正写前存在性，不能用 current 补旧材料或整个文件回退；当前 FputFget 无事务/单用户保证，静态 66 方法/8 错误资源研究不是全库原子快照通过。43 required 不升级，本轮无 ASCET 启停。[基线方案](../analysis/bde-experiments/2026-10-07/bde-reference-file-snapshot-route-01/PLAN.md)。

## 此前 v4 原始捕获日志（当前核对完成之前）

2026-10-07 v4 原 reciprocal 材料：同次 prepare 的原入站捕获进入 `prepared` 紧凑证明，完整原始记录和 9 处首次读取叶效应保持在原材料/审计，不补造模型 edit 成功事件。9 原目标共 4,293 字节语义/6,382 字节 raw；当前 inbound 尚未核对、新增目标尚未捕获，日志明示 `current_reciprocal_records_checked=false`。

命名空间修正后真实 Doge Tool02 的 `commit_resource_checked` 保存 12 处实际缓存/owner 读取差异，完整 diff/history 从 WAL 读取，0 native 帧；原 reciprocal before 不变。当前这 12 处不是当前 reciprocal diff，也不是持久写/inverse 结果。完整记录、scope、根 outgoing/component/generation 绑定均独立复算，写权限仍关闭。[本次固定材料及证据](../analysis/bde-experiments/2026-10-07/bde-commit-reciprocal-increment-01/README.md)。

## 历史日志协议增量（以下描述保留各自时点）

有限引用回退计划现明确区分 original_inbound_record、forward_before_entries、forward_after_entries、current_inbound_record 与 reverted_entries。仅移除本 patch 加的 owner 或在原位置唯一可辨时恢复 owner，保留其他当前关联。重叠/重复位置/邻接锚歧义返回冲突，不覆盖整个记录。此层只有离线规划验证，尚无原生持久 patch 事件或 inverse 成功事件，不伪造已执行日志。

2026-10-07 引用实际 diff：新 prepare 标明 complete_reference_payload_v2；完整当前查询/WAL 核对原材料的全引用字节及全 raw buffer。旧历史声明长度漏比较末 4 字节，历史摘要明确范围不足，不提升为完整恢复证明。实际比较可从原保留的完整 raw buffer 解析，不能重采当前值当旧 before。未解析 raw 尾部变化单列 $unparsed_record_tail。Doge 的 offline diff/history 读取完整已记录 WAL，0 native 帧，不冒称新鲜在线模型观察。

2026-10-07：`native_commit_prepare_v3` 追加紧凑 CTree control 证明；完整原图像在原 ASCET material，当前检查将控制态实际前后变化同 SG/direct resource 一并存入 WAL。新增 `ctree_control/*` 与 `ctree_control_registry` 的有序 diff，独立复算要求原 before 与精确 resource check index。失败控制采集先绑定 prepared record；若无完整原 resource 绑定，release 拒绝丢失最后材料。仍未授权完整持久 edit/inverse，不把合成非零比较标为实际事务修改。

2026-10-07：`prepared` 保存紧凑原资源证明，完整 native 原对象、值和原始记录留在当前 ASCET。`commit_resource_checked` 保存完整直接资源和 SG 实际差异，分为 `since_preparation` / `query_read_effect`。`bd_inspect(query=recovery)` 返回有界摘要；`bd_diff`/history 从 WAL 读取完整已记录值和原事件校验/时间，零 Cebra 帧，不称为新鲜在线观察或已执行模型编辑。SG 当前图像含全部保留原对象与新可达对象；DBProxy/DBObject 仍为边界，不能授权完整持久 inverse。失败/unknown 材料保留，不自动重发或通过重启清理。

2026-10-06双向消息：原创建WAL不重写、不重发。完整CURRENT缓存证据与真正原
before/actual分别绑定，公共API类型与内部通信位分别守卫；原对象undo/redo/undo
以及完整收尾/release/namespace退休均通过。闭合事件仅追加，释放后query明确
只提供历史证明。完整其他功能/43required仍未完成。
[原事件、实际diff和恢复证据](../analysis/bde-experiments/2026-10-06/bde-message-duplex-status-01/README.md)。

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

## 历史实现记录（以下按当时版本保留）

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

2026-10-05材料增量：prepare原生record现保留完整graphical字段/原引用、
mutable值、collection及源码before，另有setter前后/store后捕获位置。
一个隔离prepare跨连接验证345对象/1555槽完整材料，清理后严格基线相同；
实际setter/store和完整字段patch接journal仍未验证/完成。失败witness导出
完整图像/schema并保留；只有fresh严格基线恢复后允许释放。两个旧缺材料
managed head在线预检明确拒绝，未重建原身份。下一项MAIN-03C.2。
[原始材料证据](../analysis/bde-experiments/2026-10-05/bde-native-material-summary-01/README.md)。

最新managed增量：字段/layout current head/方向预检、实际执行、后续材料
移交和unknown查询已接，新的inverse仍有实际before/after及离线diff。
两条literal真实流程回退自身成功执行，但完整native恢复见证失败；不把
所采值相同当作原生field/reference已恢复。该路径尚未完成同projection无关
字段保留及完整native材料恢复，其他family不由此开放。下文此前“再回退
不可用”是旧记录。[当前证据](../analysis/bde-experiments/2026-10-05/bde-main-managed-summary-01/README.md)。

当前实施方案 r7 以完整原生实际 patch 闭合精确恢复，再按连线/删除、
各类型和跨资源流程补齐。MAIN-03C.1–5 依次保留写前完整材料与失败 witness、
生成实际 patch、局部 guard/原字段引用恢复、正式日志与恢复、在线及显示。
field/source/几何和附带变化全部核对，不能用相同公开值替代原生恢复。
完整 JSON 导出用于审计，不能重造已释放的原对象身份。每次 edit 的
实际局部 before/after、附带变化和新 after_snapshot 自动记录，不要求 agent
再整图 read；日志 diff/history 不连接 ASCET，原 BDE show/clear 独立核对。
每次逆操作也是新记录，完整目标包含回退自身；literal 正反执行已接，
完整原生恢复仍失败，其他操作不能据此授予可用或验收通过。
固定材料归属、unknown 不重发与原身份恢复合同不变，不新增常驻监控。
[当前交付方案](bde-core-function-delivery-plan-20261004.md)。以下保留各版证据。

2026-10-05 首次 inverse 材料保留已接正式后端：recovery_retention_started
先持久化，fixed retain_inverse 保留原记录并绑定新 change，recovery_retained
证明持久化后才清 pending。失败保留 recovery_retention_failed；fresh 查询
分别确认 retained/not_retained，另记 reconciliation，0 metadata 重发。
三条正常工具流程与两种固定 native-journal metadata 故障查询已局部验证。
这不是 managed 多次 inverse、全部 native family 或 TCP 断连已完成；原生
双向执行及后续 head 移交仍待开发，旧已释放记录不能从新协议补造材料。
[证据](../analysis/bde-experiments/2026-10-05/bde-main-retain-summary-01/README.md)。

2026-10-05 r5 后续实现合同：普通结构 inverse 也必须成为可回退的新编辑，
持久绑定真实 native 材料、owner/epoch/scope 和实际 before/after。原始材料
不能在新 inverse 仍需使用时 release，也不能从已释放的历史记录重新制造
同名节点/边。正式 bd_revert、diff/history 的祖先解析需有界且拒绝循环与
域/身份不符；unknown 移交或执行继续保留可查询材料和 pending。
MAIN-03A–D 按材料归属、正式路由、双向恢复、真实验收推进，这是待实现
合同，当前普通 inverse-of-inverse 仍不可用。MAIN-05 可独立开发，但新写
路径自身的局部记录、冲突和精确恢复前置不变；不新增常驻监控。

2026-10-04 功能交付方案 r3：每个正式编辑流程随功能完成自动 actual diff、
冲突、精确 inverse、inverse 自身回退及原 BDE show/clear。edit 采集实际
局部影响，不依赖 agent 再次整图 read；diff/history/分页复用已有材料。
永久 Class 提交和材料移交仍待接正式工具，临时发布/立即恢复研究不能当作
生产局部回退已完成。独立完整 case 入口v1已接G0离线场景，分页合同通过，
其余正式journal路径/在线case仍需补齐；现有partial ledger不授予pass。
下一项接Main正式完整流程。以下日志/研究记录按各自原版本保留。
[当前方案](bde-core-function-delivery-plan-20261004.md)。

最新 release unknown 协议：缺少 completion 时，只有完整 fresh 公共/native/
source/signature/configuration 基线及封存 candidate witness 能确认 record 已删除。
已完成的 release 不重发。新段 intent 绑定原失败和所有前序 WAL，随后只写
release_reconciled（完整观察/分类、0 model setter）和 finished（0 dispatch）。
未执行的 release 在 fresh 存在证明下仍按正常固定命令释放。重复观察不复制
旧 completion；已审计的 restored observation 与新 intent 的 fresh 分类共同绑定。

3 个实际案例累计 10 owner 核对，所有 CURRENT/原始基线与 temporary absence
通过。原失败结果和 WAL 不可改写；旧非 CURRENT 路径和无故障完整周期通过。
这不是实际断连/重启、setter 内部失败或生产 Class 局部回退验收，以下是历史记录。
[独立汇总](../analysis/bde-experiments/2026-10-04/current-release-summary-01/result.json)。

最新日志协议支持 recovery 本身的中断续接。每个新 intent 精确绑定原始
failed raw/WAL 和全部前序 recovery WAL 的 path、checksum、intent checksum
与 event count。最新 pending head 原子更新，原 native token 保留；省略前序
段、篡改或替换 head 均拒绝。每段开始重新读取完整实际状态，日志审计再据此
确认 unknown 已完成/未执行；不补写旧 completion，也不依据缺少 completion
推断应重发。terminal dispatch_count 只统计当前恢复段，另保留所有段累计数。

隔离实测已覆盖 reconcile_action 完成丢回执、undo_apply/1 完成丢回执、
restore_store 调用前中断，并验证两段/三段完整恢复、原始普通/Class 逆操作与
fresh temporary-record absence。无故障 base/第三层 hierarchy 完整 cycle
也通过，共 7 owners，24/56 模型步骤及 34/68 确认派发。只有显式默认关闭的
研究入口允许该 cycle；生产 Class 局部回退、unknown release 与跨重启恢复
仍未启用或验收。本轮不是性能测试，以下保留对应旧版本的历史记录。

[恢复链独立证明](../analysis/bde-experiments/2026-10-04/current-recovery-chain-summary-02/README.md) ·
[无故障完整闭环独立证明](../analysis/bde-experiments/2026-10-04/current-complete-summary-01/README.md)。

Latest CURRENT evidence: three real after-native/before-accounting faults restore
10cumulative owners. The original active setter/Store is not resent;full native/
source/signature/configuration classification chooses its unique outcome,then
reconcile_action accounts it with0new model setters. Original failure WALs remain
immutable;the first untouched metadata recovery can retry only with complete
same-state and prior-checksum proof. Other recovery interruption/unknown release,
production Class local inverse and whole delivery remain incomplete.
[Evidence and reproduction](../analysis/bde-experiments/2026-10-04/current-unaccounted-summary-01/README.md).

CURRENT physical protocol now has complete forward/inverse WAL auditing and a
separate recovery WAL bound to original raw bytes and the original checksum chain.
Recovery does not synthesize missing original completions. Complete latest
classifications must match the independently audited proof before dispatch;
remaining inverse steps use actual sealed dynamic store plans. Full public/native/
source/configuration restoration precedes journaled release and pending removal.
Base/deep first-dispatch faults are actually classified as untouched and recovered
with0CURRENT setters/1metadata release each. This proves only the pre-native
recovery boundary. Unaccounted actions, unknown release and recovery-WAL interruption
remain unaccepted;actual CURRENT setters/stores stay disabled.
[Current contract](bde-class-current-recovery.md).

The descriptions below apply to their recorded predecessor source versions.

CURRENT inverse-plan increment: every primitive inverse and every observed store
collateral inverse now has an exact sealed pure-value effect plan. A collection
effect may need several inverse actions;the forward prefix auditor verifies that
sequence and complete restoration instead of equating changed fields with steps.
Shared helper private execution passes49native assertions/15steps with unchanged
complete live fields. Base/deep bindings verify11proposed inverse effects. These
do not certify actual CURRENT stores or inverse physical WAL. Dedicated physical
dispatch and explicit unknown reconciliation still precede actual CURRENT writes.
[Current evidence](../analysis/bde-experiments/2026-10-04/current-inverse-summary-01/README.md).

CURRENT context/WAL increment: complete signatures, exact argument/return/owner
identity, configurations and every captured owner's source are now guarded inside
the fixed native execution call.112actual ready/publishing refusal assertions
preserve full native prefixes and complete baselines. Success receipts distinguish
an active action during encoding from an action still pending after return.

The dedicated proposed physical forward WAL has intent/prepared_all/native_prepared
before any started action. The independent prefix auditor validates exact planned/
actual effects, full source/signature classification and one unique missing-return
outcome; diagnostic native replies cannot authorize a replay. It is offline only,
with no recovery write authority or real CURRENT-attempt acceptance. Physical WAL
production, inverse/unaccounted action reconciliation and generic store collateral
remain required before CURRENT model setters. Six public tools remain unchanged.
[Current proof and full limits](../analysis/bde-experiments/2026-10-04/current-context-summary-01/README.md).

Exact CURRENT plan increment: each preparation row now contains a sealed
`forward_plan` with complete field or ordered-member before/after effects. The
preflight WAL sequence is intent/prepared_all/classification_observed/finished.
The classification records all complete source/signature/configuration/native
prefix proofs before the first signature dispatch. Base/deep01 and summary01
verify7owners/11proposed effects/14complete source classifications and full separate
baseline restoration. No CURRENT setter/store has executed; proposed effects are
not actual edit receipts. The separate pending-origin CURRENT classifier is
read-only and unaccepted on a real outstanding attempt. Old private recovery
refuses CURRENT-marked origins. Dedicated dynamic physical WAL and explicit
unknown reconciliation still precede actual native execution acceptance.
[Current verified evidence](../analysis/bde-experiments/2026-10-04/current-step-plan-summary-01/result.json).

CURRENT executor preparation now has a separate checksum-chained WAL: exact
instance/session/token intent, complete current baseline and all prepared-owner
value receipts, then a prepared-only terminal with zero model setters. Independent
base/deep verification compares it with actual raw values and complete private
publication/restoration evidence. This is not the future physical execution WAL.
Every actual CURRENT primitive/store will need its own dispatch/completion and
read-only unknown-outcome classification. The compiled native template refuses
started-action replay and seals planned operations plus original/latest snapshots.
Actual CURRENT execution, its recovery and production local Class inverse remain
unaccepted. [Current contract](bde-class-current-execution.md).

Current publication-recovery increment: complete native/public CURRENT and
prepared owner roster precede physical dispatches in the model WAL. Missing
completion remains unknown;diagnostic native replies never authorize replay.
Separate read-only classification independently validates complete owner sources,
signatures,native identity flags,counters and exactly one WAL-compatible outcome.
The recovery WAL contains only remaining actions;unpublished owners use zero-store
metadata reconciliation and already-restored owners are skipped. Complete CURRENT
must be observed before exact quarantine release. Mixed12boundary smoke and
independent summary pass;full96case matrix04/public-audit02/independent summary02
are terminal and passed. Original failure
files are preserved and the original AEB_1hold remains. No agent-side extra bd_read
is needed to query a completed edit's recorded diff. Production merged Class
inverse and genuine transport/store/restart fault coverage remain required.
[Protocol,evidence and precise limits](bde-class-publication-recovery.md).

The CURRENT identity preflight now has successful real template compilation and
a default-OFF integration before the first publication setter. It emits pure-value
observations and compares every prepared target/pin;it performs no setter/store.
Base03/deep02now pass actual ready-state binding;summary01recomputes7owners,
7targets/48existing pins/4planned coordinate setters,complete model-WAL/source/
baseline restoration and temporary-record absence. Post-store CURRENT native
identity acceptance remains pending.
This increment does not change formal Class inverse or grant new recovery authority.
[Binding contract](bde-class-current-identity.md).

Current private-patch increment: audit receipts retain exact created formal aliases,
current scope targets,complete generated/candidate sources,actual39private changes
and39exact inverse steps across3base rounds. Empty drawn-target tables require an
independent complete-source definition no-op. Candidate WAL and original edit WAL
are rechecked separately;the local allocator policy preserves current high-water.
Mixed third-level comparison fails4return-port Y values and remains failed after
separate compensation/absence audits. These are private effects,not journaled
merged model writes. Durable CURRENT/model publication/partial recovery remains.
[Current contract](bde-class-current-runtime-patch.md).

Storage-return increment: candidate audit receipts now record63original/applied/
current complete native-to-storage witnesses across6final-source base/deep rounds.
Native return/parent identity tuples are independently sealed;168actual private
pointer/metadata faults reject and restore. Complete source/scope/WAL generations
are rechecked,including231additional private normalization changes/exact inverses.
Fresh audits find all temporary records released and all complete baselines
restored. This remains private lifecycle evidence with0model setters/write
authority;cross-capture edge lineage,durable CURRENT and journaled merged model
publication/partial recovery are still required. [Contract](bde-native-storage-witness.md).

Capture-time history: experimental Class prepare/apply retains complete private
original/applied graphs and source witnesses before later edits can mutate the
live objects. Candidate audit WAL receipts include independent complete sources,
original edit generations,actual135normalization field changes/exact inverses,
and private seal checks.6final-source rounds verify42images/full restoration.
Fresh status/recovery probes confirm candidate/material/signature release.
These native copies remain process-local;the WAL does not yet reconstruct them
after ASCET restart or implement durable merged CURRENT/partial write recovery.
[Evidence and boundary](bde-class-native-source-runtime.md).

Current runtime prerequisite: candidate audit additionally performs private native
source generation. Its completed receipt includes complete independent expected/
generated source exports and actual private normalization diff. Existing native
CURRENT field/collection captures and guarded inverses restore96copied cache
fields across6final-source rounds. All live model/source/context stays unchanged.
Private lifecycle WAL remains separate from model setters;this is not durable
production CURRENT/merged-publication/partial recovery acceptance.
[Runtime evidence and limitations](bde-class-native-source-runtime.md).

Latest2026-10-04: research candidate preparation uses a separate atomic durable
WAL with complete current observation/domain/owner roster,intent,per-owner started/
completed receipts and terminal outcome. It records copied native source/binding
retention only;all receipts keep0model setters/store=false/write_authorized=false.
An unknown private candidate outcome remains started and cannot replay. Explicit
status observes presence only;release does not claim model recovery.6actual rounds
verify21owner lifecycle candidates,273copied-witness negatives,duplicate reuse,
stale refusal/release and complete separate ordinary/strict-Class restoration.
Actual merged publication/CURRENT/partial failure recovery remains unimplemented.
[Verified evidence](../analysis/bde-experiments/2026-10-04/bde-class-source-candidate-summary-01/report.md).

Current2026-10-04: source inverse preview takes complete original/applied signature
context from the durable edit record and independently validates candidate
endpoints/caller aliases. Value-compatible sources may still have explicit dangling
endpoint conflicts. This remains planning only;no merged candidate is published.
Strict all-owner inverse supports verified monotonic edge-ID extensions after a
separate ordinary inverse,with original objects/collections/IDs/source and owner/
scope/generation/certificate guards retained. Incident01's refusal remains immutable;
its separate recovery verifies the exact complete original baseline.210private
checkpoint negatives are synthetic checks,not external native fault acceptance.
Original AEB_1 failure/hold remains;whole delivery INCOMPLETE.
[Current implementation/evidence](bde-class-local-source-inverse.md).

Previous configuration increment:

Latest2026-10-04: the optional native configuration guard freshly reads the entire
persisted configuration graph and compares exact immutable baseline text before
every native mutation. Missing/changed identities/baselines/errors refuse;observe
never replaces the expectation. Complete before/actual-after/restored evidence,
source-bound inverses and durable started/completed events remain.36formal cycles/
312dispatches and independent full public audits pass;48synthetic native checks
are not real external model fault acceptance.30sample P95 still exceeds1second.
Original AEB_1 failed record/hold remain;whole delivery INCOMPLETE.
[Current verification](bde-tools-experiment-report.md).

Current2026-10-04: fixed read batching only combines observation queries. Each
signature/owner mutation retains separate durable started/completed events and
fresh identity/configuration/resource guards. Native after and source-bound inverse
observations still contain complete owner scopes/configuration values.36formal
cycles/312dispatches and30performance cycles verify actual diff/restoration;diff,
history and duplicate requests stay0frame. P95 remains above1second;Class local
inverse/native faults/UI/FLOW/AEB_Core/package and original AEB_1 recovery remain.
[Latest journal and performance evidence](bde-tools-experiment-report.md).

Previous candidate:

Current2026-10-03: checkpoint equality requires epoch identity/issued generation.
A retired root recreated by the obsolete reader at1 cannot make the old edit
snapshot current; modern read issues10 above high-water9. Scope14 verifies the
actual journal conflict after observe only, before native preparation/setters,
without replaying Scope13's completed cache operations. Current causal regression02
and fresh audit02 pass3real deletion/double-inverse rounds/full restoration.
Original Class restoration remains false; whole delivery remains INCOMPLETE.
[Certificate protocol and preserved failed study](bde-scope-lifecycle.md).

Previous candidate:

Current2026-10-03: every unreleased native edit, including prepared/reverted,
pins its structural scope. Cache retirement only removes unused roots and never
discards edit/recovery records. A rebuilt scope gets a globally newer generation;
the actual StructureJournal stale-request experiment returns conflict after
observe only, with no prepared/started/observed mutation event. Separate native
prepared-only cleanup verifies state/before=current/after=null before release.
Scope07 evidence stays immutable; no completed setter/inverse is replayed.
Scope09 plus3actual causal inverse rounds/fresh audit pass;full scope INCOMPLETE.
[Lifecycle and failure evidence](bde-scope-lifecycle.md).

Previous candidate:

Latest2026-10-03: inverse prepared WAL persists complete causal source/translated
order and identity mappings. Source original and verified released inverse must
match domain/generation and actual raw/drawing evidence. Observed/reconciled WAL
both bind the actual proof hash; agent receipts remain compact. Live native proof
must match preparation;released recovery revalidates it without reconnecting.
Recovery01 exposes a missing reconciliation hash;new writer fixes it,FAILED WAL
stays unchanged and audit03 independently proves actual restoration. Current27
rounds/54inverse proofs/27completed application reply losses pass;native faults,
remaining family/Class/FLOW and full delivery gates remain.
[Contract and preserved failures](bde-causal-drawing-order.md).

Previous candidate:

Latest2026-10-03: Deletion01 order drift is repaired with a separate prepared/
started/observed WAL and pending marker. Frozen original/source/current proof,
actual full raw diff and exact public baseline pass before pending release.
Actual3field changes and no new objects are verified. Original failed records
remain unchanged;neither completed inverse is replayed. Future production
causal witnesses still need durable source binding and recovery validation.
[Exact order-only recovery](bde-attached-order-recovery.md).

Previous candidate:

Current2026-10-03 update: Deletion03's original n15/p16 is restored and stored
through a separate WAL-bound recovery. Original deletion record remains applied;
the partial restoration remains restore_started;the separate completion is
restored. Failed experiment files remain unchanged. Completed setters and store
are never replayed. Read-only reconciliation checks complete actual raw changes,
the exact allowed stored parent counter and original native/public baseline.
Only then is the exact pending marker released. General bd_revert/causal-order
acceptance is still incomplete;Deletion01 and original Class recovery remain.
[Recovery contract and evidence](bde-retained-layout-recovery.md).

Previous candidate:

Current2026-10-03: delete/disconnect prepared WAL includes separate complete
drawing-order images; observed WAL includes actual sorted sequence/numbers and
compact effects. Native and Python three-way plans agree before setters and
stored results are checked independently. Live/released reconciliation validates
matching original/CURRENT/actual evidence; missing inverse preparation cannot
silently bypass the drawing contract. Offline recovery/negative tests pass;
new-contract native reply-loss tests remain unrun. Three real literal-fanout
double-inverse rounds restore exact public/native state. Operator-chain's second
inverse refuses DRAWING_RESTORE_GAP_AMBIGUOUS before setters, leaving the original
literal retained/deleted. Causal ordering witnesses and exact recovery remain;
failure files are immutable and new write experiments stop until recovery.
[Current contract and evidence](bde-independent-deletion-drawing-order.md).

Previous candidate:

Latest2026-10-03: the independent-deletion experiment records a genuine secondary
delete and its separate formal inverse. Both inverse receipts complete, but final
public drawing order fails exact baseline equality; Deletion01 stays FAILED.
Raw actual diffs preserve the collateral graphical field changes. Current WAL
and typed expectations do not yet independently certify drawingOrder. Add that
prepared/actual contract before treating this case as precise restoration; keep
the failure immutable and never replay its already completed setters.
[Failure and read-only reproduction](bde-independent-deletion-drawing-order.md).

Previous verified increment:

Current2026-10-03: ordinary inverse prepares CURRENT plus an independently
recomputed merged expected graph/analysis in the WAL. Native typed expectations
must match before dispatch; actual result must preserve compatible later edits.
Both live and released lost-reply reconciliation verify the same durable plan;
missing/changed expected values refuse before quarantine release. Actual patches
stay automatic and compact agent summaries reference full persisted evidence.
18real original edit/inverse rounds/12completed application receipt losses pass,
alongside six additional guard rounds,39native tampers/78refusals. Later cleanup is a separate compensating
edit,not an unproved secondary inverse. Whole delivery INCOMPLETE; original Class
hold and remaining family/raw identity/fault/UI/FLOW/lifecycle gates stay open.
[Current evidence and failures](bde-independent-edit-inverse.md).

Historical detached-material increment:

Current2026-10-03: deletion/disconnect terminal capture now freezes a separate
local detached-material guard. Inverse preview and execution refuse changed
intrinsic fields/nested values/original registrations before setters;missing
guard records refuse.9actual rounds/39native tamper cases/78native refusals pass
with complete independent restoration. The WAL/actual recovery contract stays;
compatible later model edits still need a three-way scoped inverse. Whole
delivery INCOMPLETE;original Class hold enforced.
[Current contract/evidence](bde-detached-graphical-material.md).

Historical terminal recovery increment:

Latest2026-10-03: ordinary raw reconciliation is implemented. Native actual diff
retains a copied terminal image and verifyAfter;recovery status exposes original,
started CURRENT/exact signature/actual and native current-match verdict. Python
checks complete bindings against durable preparation/observed events before
appending reconciliation/actual/final evidence and clearing the pending marker.
Released fast paths require matching full durable evidence;agent output stays
compact.18actual delete/disconnect rounds and12completed-application-receipt losses
through actual bd_inspect pass their declared scope. Original AEB_1 hold remains;
complete raw-original identity,families/native faults/independent-edit/UI/FLOW gates
are still incomplete. [Contract and evidence](bde-ordinary-graphical-recovery.md).

Historical initial raw integration:

Latest2026-10-03 production integration: ordinary delete_node/disconnect_data
prepare now exports immutable raw graphical CURRENT plus a monotonic native
signature. Durable prepared WAL contains full CURRENT/signature before mutation;
only the scalar signature is dispatched. Native checks direction/signature/full
CURRENT immediately before setters,then records actual raw diff before terminal
state. Observed WAL retains full actual evidence;Python validates it before pending
release. Agent receipts/diff omit large raw documents and return compact summaries.
Inverse CURRENT includes retained original anchors;original connection-map value
objects are reused where the deletion captured them. Three actual delete/revert
rounds pass independent complete public/native restoration on one fixture.
[Evidence and limits](bde-tools-experiment-report.md).

Dictionary/IdentityDictionary pair images and Set/IdentitySet membership compare
as complete unordered images;Array/OrderedCollection order remains significant.
Order08's real rejected actual diff is preserved. Separate restoration02 verifies
original public/native state before exact quarantine release;the source unknown
WAL/native applied record stays unchanged. New raw-evidence recovery_status and
terminal reconciliation are not yet integrated and must not release quarantine
based only on older parent/public evidence. Full original raw-field/branch-Set
identity,other operations,multi-fixture/field/independent-edit/fault acceptance and
original display01 recovery remain incomplete.

2026-10-03 follow-up: checksummed PRIVATE descriptors and exact nonterminal WAL
reopen retain the original native wire/ref table after real dedicated C# bridge
termination. Three rounds pass72 host deaths/RSTs with read-only reconciliation,
no setter replay,independent-field-preserving recovery and guarded registry release.
Native owner/source/domain binding is enforced. This is an already-completed native
PRIVATE-command window;ASCET/coordinator stay alive. Files remain descriptions,
not native archives. Partial physical mutation,production inverse and genuine
display01 recovery remain unaccepted;the original hold is unchanged.
[Contract and evidence](bde-native-private-host-recovery.md).

2026-10-03: private Cebra steps now publish complete descriptive CURRENT before
execution and flush each expected step's intent before dispatch. Actual diffs
are separate checksummed observations.72 discarded application receipts across
three rounds reconcile by read-only observation with no setter replay. This is
not transport/host-exit acceptance, executable native archival or production
CURRENT recovery. Generated native branching Sets are explicitly retained.
Existing failed-edit records and hold stay unchanged.
[Journal protocol and evidence](bde-native-private-step-protocol.md).

2026-10-03 keyed native plans: retained material guards now include exact keyed
parent slots and bidirectional native refs for every captured collection/member.
The fixed collection planner binds steps to current removals/original insertions
and saves current order/links; its current-state no-op tests/private sequence
replays are not actual model diff or a durable prepared WAL. Changed native
lineage/subtree dependencies and current-state recovery/WAL before setters remain
required. Original failed-edit files/hold are unchanged.
[Contract and evidence](bde-keyed-collection-plan.md).

2026-10-03 collection merge: Class inverse value plans now preserve independent
pin membership in unambiguous gaps; private native copies execute and verify the
minimal splice list with real refs. Direct root/hierarchy parent checkpoints no
longer rely on surviving siblings.144 copy cases pass3 public-bookended rounds.
These copied effects are NOT model actual diff or a prepared execution WAL.
Live current-state recovery/WAL before setters and manager/edge rebinding remain
required; old WAL/epoch/hold unchanged. [Contract](bde-collection-merge-core.md).

2026-10-03 native collection continuation: Class prepare/materialize now retains
separate original/after actual object/manager references, scope bindings and full
immediate parent collection orders before publishing prepared/applied states.
Inverse/owner restore/reconciliation and recovery-v3 previews reject missing or
changed old checkpoints. Current-state capture/audit and actual Doge compilation/
binding preflights pass; real post-delete retention, local merged WAL execution
and cross-restart archives remain unaccepted. No existing WAL/epoch is rebound.
[Contract](bde-native-collection-checkpoints.md).

2026-10-03 material guard: Class preparation now retains an immutable ordered
graphical field projection alongside original object identities. Inverse preflight,
owner restoration and stored-inverse reconciliation refuse missing or changed
checkpoints. Native current-state getter projection has three independently
bookended rounds; positive detached-original restoration remains unaccepted.
The checkpoint lives in native memory and is not a cross-restart archive. The
original display01 hold is preserved. [Contract](bde-native-material-field-guard.md).

Typed Class argument creation adds a separate fixed native template and exact
method selection; a new formal has no existing alias. Its all-owner WAL plan is
signature creation, each owner store, actual after, separate inverse preflight,
signature restore and owner restores in reverse order. Creation has no pruning
steps; Python and C# auditors reject a deletion command in its journal. The
effect validator checks one new input pin per caller and refuses unrequested
nodes/edges. The formal tools expose only read-only preflight until real native
creation/inverse acceptance. These plans are not actual edit diffs and do not
reserve requests or create recovery records. [Contract](bde-class-argument-creation.md).

Latest continuation: frozen datastore search has not recovered display01's
original formal. The exact alias appears once, outside all 2673 CRC-valid streams
in the tested profile. Current-Class blob extraction/CRC success is not before
material. All 29 retained files and the durable hold are unchanged; no epoch/WAL
rebinding or native-loader invocation occurred. Restart-safe native archives and
their linking/partial recovery remain required. [Evidence](bde-recovery-record-audit.md).

Current 2026-10-02: native Class inverse preview can read the planned inverse
from immutable actual WAL and probe retained material without creating intents
or reserving request IDs. Positive retained/capacity/partial paths remain
unaccepted. Local Doge cursor continuation changes only document delivery;
write dispatch/cancellation and the durable AEB_1 restoration hold are preserved.
Failed offline78 and fixed offline79 remain separate evidence. Full delivery is
INCOMPLETE; see [current status](bde-delivery-status.md).

2026-10-02 continuation: read-only Class deletion preview never creates an edit
intent/started/WAL/recovery record or reserves request_id; predicted changes are
explicitly not actual diff. The failed restarted display01 WAL is unchanged and
now referenced by a checksummed database restoration hold. It survives epoch and
STORE changes; transport pending confirmation cannot clear it. New literal/
structural journal requests check the hold before intent/started, after offline
deduplication. Actual terminal journals remain readable/replayable without setters.
Verified original-state recovery is required to clear the independent hold; no
unverified release path is exposed. This protects subsequent writes and does not
recover the original objects. [Evidence](bde-tools-experiment-report.md).

2026-10-02 current Class journal integration: formal deletion uses a managed
immutable intent plus native all-owner WAL; prepare and each started event are
durable before mutation. Actual observations create the diff and after_snapshot;
agent calls do not re-read the entire semantic component to calculate that diff.
Confirmed apply and inverse are distinct requests. Same request replay is offline;
different intent under the same ID is refused. Complete terminal WAL can repair
missing receipt/snapshot/inverse pointer only after a fresh identical owner read,
without replaying setters. Partial/unknown records stay quarantined and cannot
use this reconciliation path. [Usage](bde-class-tools-usage.md).

display01 is a retained FAILED case, not a successful cleanup: original recovery
objects were lost across restart and public observations still equal actual after.
Old inverse/domain/intent are never rewritten to the new process. Restart audit
and display diagnostics own new read-only domains and do not restore/rebind this
edit. Empty pending state must not be interpreted as original-state restoration.
Graphical-only paired-edge suppression leaves the actual WAL/diff unchanged.
Live receipt/WAL fault completeness and general partial recovery remain open.

Historical 2026-10-02 Class config increment: research WAL preparation, actual after and
restoration include every owner's typed persisted graph. Hashes preserve mutable
String/ByteArray sharing, cycles, linked config OID/object bindings and Float bits.
Each dispatch rechecks storage; stale config expectations reject before setters.
Offline actual diff includes config hashes. Older unsampled journals keep their
historical shape. Effective evaluation, production Class requests/recovery and
native display remain required; this increment does not complete those gates.

2026-10-02 automatic Class planning increment: research WAL intent now records
caller-resolution mode and the discovered stable resource closure. Its input
checksum covers the identity-only execution input, not the external fixture
oracle. Before every dispatch, native references/owner/scope/occurrence bindings
are recollected and compared in addition to database identity and dirty editors.
The actual diff and original-object inverse remain based on real observations.
Fifteen online rounds include mixed Class/Module and repeated-declaration callers;
stale-resource and write-ahead faults confirm zero setters with an independent
unchanged baseline. This is still research infrastructure; formal Class tools,
effective configurations and live unknown/partial recovery remain open.
[Evidence](bde-tools-experiment-report.md).

2026-10-02 Class research increment: `AscetClassStudyJournal.cs` records durable
all-owner preparation and a fresh collected-scope preflight before dispatch,
then each started/completed native command batch, actual after, inverse
preflight and original-object restoration. `bd_class_study_journal.py` verifies
the immutable checksum chain/owner/step order and reconstructs actual diff with
zero native calls. `bde_class_journal_report.py` cross-checks each saved receipt
and observation against raw online output. Instance quarantine is confirmed only
after validation; unknown or write-after-start failures prohibit cleanup replay.
Fresh exact-scope observation may confirm a known restored study after a failed
precision gate, never an unknown record. Formal Class edit/revert integration,
complete fingerprints, live partial/unknown recovery and restart inverse remain
required. [Nine-round evidence](bde-tools-experiment-report.md).

2026-10-02 dependency update: construction groups persist `step_planned` with
the resolved actual pin arguments and expected observation before dispatch.
Predictions apply prior actual patches and propagate component-wide declaration
rows across scopes; they never predict native IDs. Recovery recomputes this
request and verifies the durable intent before accepting native terminal evidence.
Unknown outcomes stop later steps, never replay setters. Whole inverse combines
native contents-manager/parent-order/reference checks with virtual reverse actual
patches before restoration. [Construction calls](bde-construction-tools.md).
Controlled real native reply-loss and regular group restoration are separate
from OS-crash/partial-native/restart guarantees; full eval remains ungranted.

2026-10-02: `bd_group_journal.py` and `bd_group_tools.py` now implement independent
resource `flow_` journals and six-tool integration. The group intent, all
preflight observations and each step_started marker are persisted before that
step's setter. Actual local patches and inverse tokens are retained separately.
All resources receive native inverse preflight before restoration begins, then
per-step revalidation and reverse execution. Unknown outcomes stop the group and
are never replayed. Partial restoration preserves external edits. Three live
cycles each in group01/02 restore full public trees/declarations; group fault
tests remain offline. See [limits and calls](bde-multi-resource-tools.md).

2026-10-01 跨组件目标补充：一个 flow_change_id 聚合各 resource change_id，并分别记录声明、图形、接口、库和 Project 的 actual effects。每步 before/started/after 持久化，多资源失败为 partial/unknown；回退全部资源先检查实际 after 与共享引用，再按依赖逆序逐步重验恢复，不声称原子事务。见 [通路日志设计](bde-signal-flow-tools.md)。此扩展尚未实现。

总体架构与原有 BDE 显示、删除和高效读取要求见 [BDE tools v0.4](E:/Repo/ASCET/docs/bde-tools-architecture-v0.4.md)。

2026-10-01 实现补充：普通BDE的创建、精确数据连线/折线/删除、调用分配、默认值编辑已进入结构化日志路径；当前运行能力以 [使用文档](bde-tools-usage.md) 为准，下文单literal说明是早期阶段记录。业务原件仍只读，完整eval与原BDE视觉验收未完成。

2026-10-01 子图日志补充：component/diagram/qualified_ref 标识精确 hierarchy scope。创建使用完整选定 scope；普通节点删除记录节点、pin 和 incident 数据边的实际差异，保留声明。成功 after_snapshot 来自此次实际观察，不混入旧全图行。回退新建声明之前扫描根图及所有嵌套 scope 的图形引用；回退新建 hierarchy 之前核对其内部检查点。任一冲突先于 setter 拒绝，按依赖逆序恢复后才可再次回退。`ASCET_BUSY` 是宿主锁拒绝，不等于写入已发生；实验对明确无 setter 的锁拒绝有界等待，unknown 不重发。详见 [子图编辑](bde-hierarchy-edit-usage.md)。

2026-09-30 更新。用户要自动记录每次 `bd_edit` 实际修改了什么，避免反复执行全量 `bd_read`。`scripts/bd_edit_journal.py` 已实现独立的单 literal 日志核心并通过 8 项离线故障测试；隔离 C# 实验已验证真实局部 diff/layout 回退。现已通过原生局部 adapter 集成，并由 Doge Tool.call 在线验证；`ASCET_BD_SANDBOX_WRITES=1` 仅开放隔离目录无连线数字 literal 的 edit/revert，默认及业务写入仍关闭。read 观察历史不能作为 edit 日志完成证明。

## 1. 调用方式与成本

agent 首次通过 read/find/inspect 获得模型上下文和精确目标后，直接调用 `bd_edit`。编辑工具内部强制记录，无需 `record=true`、额外 snapshot/save 调用，也不要求 edit 后再调用一次 `bd_read` 才能知道结果。

```text
bd_edit(目标、旧值条件、新值、request_id)
  → 校验能力、数据库/组件/进程身份，解析目标
  → 局部读取目标字段和声明的关联范围
  → 检查旧值条件
  → 持久化写前值、操作意图、恢复材料
  → 持久化本步 started
  → 调用原生修改接口
  → 局部回读目标和关联范围
  → 持久化实际旧值/新值、验证结论
  → 返回 change_id 和简短 diff
```

`bd_diff(change_id)` 直接查看持久化日志，不连接 ASCET，不重新采集整图。编辑历史列表已通过 `bd_inspect(query="edits")` 接入；`bd_inspect(query="changes")` 仍仅查询 read 观察历史。edit 返回的 edit_... change_id 可用 bd_diff 离线查询，不能把一次 read 当作一次 edit。

成本目标是让读取字段数量与修改对象及其关联范围相关。局部写前读、写后读都在同一次 `bd_edit` 内完成，不能仅在前端隐藏两次全量读取。当前 `AscetReadProbe --current full` 会采集图、引用定义和方法正文，不能充当这个局部 reader。

目标定位可能仍需枚举某个层级的图形 ID，不能未经验证就承诺 O(1)。索引可以来自首次读取；缓存不代替写前的活体身份、类型和旧值校验。桥接进程启动、Cebra 连接、局部数据读取和返回字节数分别测量，避免把少返回 token 误称为降低 API 成本。

## 2. 按操作定义局部范围

| 操作 | 写前与写后读取范围 | 记录内容 |
|---|---|---|
| `set_literal` | literal 的组件/层级/图形身份、类型、内容，以及已审计 setter 涉及的关联字段 | 实际旧文本、请求文本、实际新文本 |
| `rewire_data` | 目标输入完整连接集合、旧/新源引脚、端点方向/类型/层级、相关执行关系 | 被移除与新增的精确边，保留 connection_type 与多重边信息 |
| `set_sequence` | 实际调用、activator、原顺序及可能受重排影响的调用集合 | 每个受影响调用的旧/新执行顺序；不只记录一个 pin 的标注 |
| `set_table_values` / `set_table_axis` | 精确model行、已有默认配置owner/raw身份、全部值与轴/插值/外推字段 | 真正实测的字段变化；原生值或轴对象及物理值副本，维度保持；写前准备在无access副本上进行，不允许隐式取整 |
| `set_table_interpolation` | 精确表声明的declared_interpolation与默认配置全部字段 | 声明属性与派生default flags的真实diff；恢复原声明值（包括null），不将配置副本误作权威字段；其他配置有效值未采集/验证 |
| 状态机 transition 操作 | 独立 transition 身份、层级端点、guard/action/trigger/priority 及可能创建/替换的方法对象 | 每个字段及关联原生对象的旧/新状态；不能按数据流边处理 |

范围不明确时返回未支持或需要扩大验证范围，不能默默扩大成全图重读后仍声称是廉价局部修改。状态机和其原生身份/副作用的限制继续遵循 v0.3 第 11 节。

## 3. 日志必须区分意图与实际结果

以下为目标回执示例，未对在线 AEB 执行此修改：

```json
{
  "change_id": "edit_example",
  "record_type": "edit",
  "request_id": "req-001",
  "status": "verified",
  "verification_scope": "target_and_declared_impact",
  "changes": [
    {
      "target": "Main/n176",
      "field": "literal",
      "before": "0.0",
      "requested": "0.1",
      "after": "0.1"
    }
  ],
  "outside_scope": "not_observed",
  "database_committed": "unknown"
}
```

持久化完整记录还包含数据库/组件 OID、ASCET 进程身份、层级目标身份、会话、每步时间、请求摘要、原生调用返回、局部 before/after、恢复能力、校验和。返回正文只提供短摘要；大范围差异分页查询。

- `before` 来自真正写前的局部读取，不直接复制可能已过期的初始 snapshot。
- `requested` 是 agent 的意图；`after` 必须来自实际回读。setter 返回成功不能代替回读，更不能直接把请求值填进 after。
- 原生副作用和归属不确定的变化单列；本工具锁不能阻止 ASCET GUI 并发修改，不能把所有同期变化都归因于本工具。
- 参数校验失败、能力未启用、旧值冲突等可保存为请求审计，但不是“已执行修改”。preview 也不产生可回撤修改记录。
- 不回读全图就只能证明声明范围内的结果，不能宣称整个模型没有其他变化。

已核对的源码依据：`BlockDiagramLiteral.GetContents()` 调用内部 `getLiteralText`，`SetContents(string)` 调用 `setLiteralText:`。该 wrapper 捕获异常后分别返回 null/false，所以 false/异常/超时之后不能简单判断“未发生修改”。这些源码支持局部适配器设计；在线验证已证明隔离无连线 literal 的文本及布局变化/恢复，不推广到带连接对象。

## 4. 失败、重复请求和恢复

写前记录及 started 必须完整落盘后才调用 setter；落盘失败则不开始写入。采用不可变逐步事件记录，崩溃后可以知道最后一个确认完成的步骤。

`request_id` 在已声明的会话/数据库/组件身份域内去重，并校验完整请求摘要。相同请求返回原记录；相同 ID 不同内容报冲突。已经 started 但无确认结果时返回 `outcome_unknown`，先局部恢复判定，不自动重发 setter。不能仅靠进程内 Map 去重。

批量没有已验证的原生原子事务时，逐项记录，失败即停止，报告已确认步骤和未执行步骤。允许 `no_change`、`verified`、`partial_applied`、`outcome_unknown`、`needs_recovery`，不将部分成功压成一个成功布尔值。写后日志落盘失败同样不能向 agent 报 verified；写前 started 记录必须能够指示后续核查。

回撤使用记录中的局部 before 和恢复材料，并先检查当前字段仍与实际 after 相符。只恢复本次已知修改，保留无关修改；冲突则拒绝。反向请求值不是通用恢复方案，尤其不能用删除重建 transition 或盲调用 Undo 代替身份保留恢复。恢复能力未验证时继续禁用 `bd_revert`。

## 5. 与初始大图缓存的关系

一次完整读取可供 agent 理解模型，之后已验证的局部修改可用于维护缓存。但“初始快照 + 本工具补丁”不能伪装成最新全量观察：GUI 可能修改了缓存之外的区域。

编辑日志的 before/after 首先是带覆盖范围的局部状态，单独标识，不复用完整 snapshot 的语义。查询未受验证区域时说明其最后观察时间；必要时定向刷新。对新任务、进程重启、外部变化或全图校验需求再执行更大范围读取。全量 `bd_read` 不进入每次 edit 的固定路径。

## 6. 接入与验收

1. 在原生适配器中实现经审计的局部 reader 和一种最小 setter；先验证隔离测试组件上的 literal 修改及恢复。
2. 在统一 edit executor 中包裹所有 setter：prepare → before → started → apply → after → result。类型专属适配器声明验证和恢复范围，日志由执行器负责，agent 不手动编排。
3. 将执行器接到现有 `bd_edit`，随后将历史及 `bd_diff(change_id)` 接到编辑日志；保留观察记录的明确类型。
4. 验证精准旧/新值、旧值冲突、请求去重、setter 后超时、写前/写后落盘失败、部分批量成功、GUI 并发范围边界。
5. 在测试中禁止 edit 调用全量 `capture()`/`AscetReadProbe full`；断言只读取声明范围。`bd_diff(change_id)` 测试断言零在线 API 调用。记录实际耗时和 API 调用量。

当前实现状态：隔离 literal 实验已通过真实 before/after、旧值冲突、无关更改保留及 layout 恢复；日志核心具备持久幂等、started 保护、离线 diff、冲突反向请求和恢复后布局校验。原生 adapter 和受限 Doge 写入已接入并在线验证。真实 finalize 后注入回执丢失、未知请求不重放已验证；真实 OS 崩溃、通用恢复判定及批量部分执行未完成，通用业务 bd_edit 未启用。实验结果见 [对比报告](E:/Repo/ASCET/docs/bde-tools-experiment-report.md)。

## 2026-09-30 03:42：离线编辑历史入口

已实现 `bd_inspect(query="edits")`，可按 component/database 或 snapshot 的 database+OID 过滤，跨 Doge 会话和 ASCET 进程发现历史 edit change_id。输出 request_id、target、实际 changed_fields、conflict_fields、reverts、状态和时间；具体前后值用 `bd_diff(change_id="edit_...")`。`changes` 仍是读取观察历史，两者语义不同。

此路径不调用 ASCET，不依赖写开关，不为了查编辑记录重新 bd_read。未完成 started 显示 outcome_unknown；仅 intent 显示 interrupted_before_apply；缺失、损坏、孤立 binding 显式列为 diagnostics，不能可靠过滤的诊断保留为 filter_match=unknown。分页文档固定，期间新编辑不会改变后续页；重新查询才刷新状态。历史可读不意味着可跨会话回退，写入身份约束仍适用。

验证：7 个 sandbox/history 路由测试、13 个 service 测试通过；Doge 7 pass / 3 live skip / 68 assertions；version 通过。使用 doge-sandbox-01 的真实在线编辑日志副本，离线 Tool.call 成功找回两条记录、回退关系和 literal/position/size 三项实际变化，随后读取准确 before/after。原日志与副本哈希一致。证据 `analysis/bde-experiments/2026-09-30/history-01/validation.json` 和 `store/history-evidence.json`。这是离线集成验证，不是新在线写实验或模型自主调用测试。原 BDE diff 显示、连线/删除/状态机等仍未完成。


## 2026-09-30：结构编辑与原生绘制接续

已实现隔离结构 profile、10 种 typed 结构操作、局部实际 patch、请求后置条件检查、同 ASCET 进程保留对象回退及 Doge 路由。独立公开 API 核对重连/带边节点删除/带迁移状态删除/迁移动作/改名/迁移创建及恢复。证据及完整边界见 [结构实现报告](E:/Repo/ASCET/docs/bde-structural-implementation.md)，机器可读汇总见 [structural-summary.json](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/structural-summary.json)。较早报告中“尚无结构实现”由本节修正，但不得据此勾选整体业务验收。

`bd_diff(change_id, presentation=show|clear)` 已接线并独立记录展示回执，未完成 UI 验收。在线首次打开状态机 gc 未就绪；第二次 show 成功后真实 expose 回调暴露 CwDrawingArea/gc 类型错误，clear 超时/API 空句柄。修复从 clientData 获取包装对象并捕获异常，尚待在线复测。失败在 doge-structure-overlay-01/02 保留；按用户授权重启后停在数据库 Rebuild now 提示，界面自动操作无法激活。需进入 AEB_1 后先恢复隔离 t8 priority 4→3。旧进程 inverse 已失效，不宣称跨重启精确回退。

提速通用性已补充到 [原生批量方法](E:/Repo/ASCET/docs/ascet-native-batch-method.md)：进程内有界循环+纯值传输、显式恢复记录、图 wrapper 重载/身份、Cebra 平铺参数、route 存储坐标、ESDL alias 及 UI 回调契约。完整 AEB 读取 P95 780.592ms 仍是既有覆盖样例结果，不能外推到任意结构操作。

## 2026-10-01：新 Enum 的库类型 Diff

`create_block(kind="enumeration", new_definition={name,items})` 会创建库类型和组件内的变量/图形 occurrence。两种实际变化分别持久化：`differences` 保留图形和声明 before/after，`library_effects` 保留新类型的路径、原生 OID、有序实际枚举项及 before/after。库记录来自同次原生编辑中的读取，不能用请求值伪造完成记录。新类型创建只有图形和库后置条件均通过才返回 `applied_observed`。

普通 Enum 与新库类型引用均经既有 `addLibItem:forName:` 创建组件变量。新类型使用 `addComponent:ofType:` 与 `setEnumerationValues:`。本次 AEB_1 是 DBProxy 后端，反向引用从 `dbObject readReferences isReferencedBys` 获取；DBXmlObject 后端另有受类型检查的 `references referencedBy` 分支，后者尚无本次在线证据。

回退先核对库类型身份、枚举项顺序和完整引用集合。存在后续跨组件引用则写前冲突拒绝；先移除后续引用后，才删除此次 occurrence/声明并确认引用恢复到类型创建后的基线，再移除新库类型并确认其名称不存在。回退后的 `library_effects` 必须是原实际效果的精确反向；仅图形恢复不能授予 `verified_local` 或释放恢复材料。

`bd_diff(change_id)` 返回已保存的图形和库记录，仍是离线路径。编辑后的 snapshot 从原生实际结构观察发布，不额外全量 read。调用契约、范围及限制见 [Enum 使用说明](E:/Repo/ASCET/docs/bde-enum-tools.md)，重复在线验证结果见 [实验报告](E:/Repo/ASCET/docs/bde-tools-experiment-report.md)。本接口尚限隔离组件，也没有独立的既有库枚举项修改/改名/删除工具。
# 2026-10-01 子图展示增量

`bd_diff(change_id,presentation=show|clear)` 使用原 journal 的 diagram，模型 journal 与 presentation 回执仍分离。show 的当前状态核对使用该 scope 的 NativeStructureAdapter；C# 与固定 Smalltalk 模板传递同一精确层级链。UI对象按每层ID和父身份重新解析，不能借用编辑API实例或按名称定位。回调捕获实际 UI hierarchy，进入其他层级暂停绘制；错误scope的clear拒绝。显示错误不重放模型setter。实际画面、缩放/滚动/关闭重开验收另列，不由原生调用成功推导。

# 2026-10-02: Resource-group reconciliation

`bd_inspect(query=recovery,change_id=flow_...,reconcile=true)` now reconciles
unknown dispatched steps against matching durable local intents and retained
native terminal observations. It never resumes undispatched steps or replays
setters. Confirmed modifications become a partial group that can be reverted in
reverse order. Latest step receipts are selected by index while events remain
append-only. Wrong identity, incomplete records and changed current observations
remain unresolved.

An inverse reply is verified only when the terminal state and restored observation
match the original prepared before, including known library effects. Mismatch
keeps recovery material. Missing shared-enum library evidence refuses reconciliation.
Three controlled real adapter reply-loss cycles pass in group-recovery01; complete
native partial-execution/network/host-crash fault acceptance remains unfinished.

2026-10-02 shared enum update: native records retain applied/reverted library
terminal effects and ordered enum items. recovery_status checks current folder,
type/item identity, items and references for apply, and absence of the created
type name for inverse. Reconciliation checks this evidence even when an observed
receipt was persisted before quarantine release. Missing/changed evidence keeps
quarantine. Shared-enum recovery03 passes nine controlled real apply/inverse
reply-loss cycles with actual library diffs and full baseline restoration;
cross-restart or external-library-change fault acceptance is not claimed.

2026-10-02 Class interface continuation: caller graphics source can remain equal
while a changed shared signature produces different or unstored pins. Structural
observation now refuses these states; a successful read never publishes pnil.
Class interface mutations are not yet journalled production operations. They
require durable definition/each-caller actual effects, verified caller discovery,
stable pin materialization, incident closure and original graphical-object
restoration with conflict checks. Native signature-object restoration and public
baseline equality alone do not prove those properties. Declaration-only deletion
remains outside the supported edit/revert contract.

2026-10-02 native Class studies now preserve both original signatures and all
flat graphical owner objects, store stable actual caller pins, prune exact
incident closures, and retain actual definition/owner effects. Three rounds
each pass for materialization/argument deletion/return deletion. Return removal
has an explicitly recorded unassigned-sequence policy; it is not an execution
schedule proof. These are research records, not production Class edit journals.
Formal multi-resource request IDs, optimistic apply/inverse checks, unknown
reconciliation and native presentation for shared interface edits remain required.

The new read-only class_callers query helps select those resources efficiently.
Its persisted signature/caller observation does not grant write permission or
replace a fresh multi-resource preparation.

Nested Class instance creation now uses the ordinary structural journal:
component declaration plus exact child occurrence/pins are actual observations.
Deleting an occurrence with connected pins records its exact incident closure;
inverse retains original native objects. Class03 passes three rounds at each of
two child depths, followed by complete native/public/model/caller restoration.
This is instance editing, not shared Class signature editing.

Class01 retains an actual stored-literal outcome_unknown caused by an overly
order-sensitive read guard. The exact same-process repair verifies retained
graph/edge identities and full actual literal-only effects before completing
the native record. Formal recovery then journals the observed diff and clears
quarantine, followed by ordinary inverses. No setter is replayed. The fixed
research repair is not exposed in the production bridge and is not a general
partially executed transaction recovery. All failed journals remain preserved.

2026-10-02 generic Class continuation: exact alias selectors and recursive Main
scope recovery pass native first/second argument deletion three times each.
Actual scope effects include four removed formal pins/four incident edges, plus
six or three verified retained connector/edge endpoint layout changes. Default
policy refuses implicit layout; explicit research policy records native pin
anchor movement and matching independently read public endpoint displacement.
Other fields and original-object inverse remain strict. Unconnected moved pins
without public endpoint evidence are refused, not silently omitted.

These observations are research artifacts, not formal edit change_ids. Production
Class signature writes still need multi-owner durable preparation/started/actual
effects, full collected preconditions, idempotency, conflict checks and unknown
reconciliation. Native apply/inverse uncertainty prevents cleanup replay.
The compact class_callers selector and its evidence hashes help choose targets;
they do not grant writes or certify complete configuration equality.

## 2026-10-02: Class actual-WAL inverse value analysis

The Class revert preview now compares actual durable before/after row values
with the existing current observation. Unchanged independent fields/objects are
preserved in a proposed value patch; changed touched values, row identity/order
or new dependencies are explicit conflicts. Missing/null and boolean/numeric
values remain distinct. No journal is synthesized from the requested edit.

The analyzer does not append a new edit intent, reserve a request ID, dispatch
setters or clear a restoration hold. Native whole-owner inverse still requires
exact after equality. `write_authorized=false` and
`native_merge_executor_available=false` remain explicit until original-object
local restoration is independently accepted. [The local inverse contract](bde-class-local-inverse-contract.md)
lists required retained/current identity guards and durable partial-state work.

2026-10-03 private native graphical prototype: deletion and inverse now execute
on memo-owned copied references and capture actual field/collection changes,
including native connection branching effects. Three online rounds pass 126
private cases preserving a separate visible node's coordinate edit; 252 actual
inverse conflicts refuse with zero inverse mutation. Original owners/domain
remain unchanged. No model journal, CURRENT recovery material or setter/store
dispatch is allocated. The latest private plan merges keyed ordered membership
and preserves independent same-port pin deletion, while touched dictionaries and
unkeyed collections remain strict. Native endpoint/ancestor checks run at prepare
and again before execute; actual wrapper/internal field effects determine edge
dependency closure. Three rounds pass 9 peer cases and 1638 conflict refusals with
no private state change on refusal. This is not durable CURRENT WAL or the real
model inverse. The old restoration hold stays unresolved.
[Private evidence](bde-native-private-graph-inverse.md).

2026-10-03 private CURRENT continuation: each private primitive now has an exact
one-based expected index. Duplicate/future indices and terminal replay refuse;
CURRENT and actual partial native changes retain true private references. Three
rounds pass 378 controlled primitive-completion faults and 378 touched recovery
conflicts, preserving a field introduced after failure. Restoration cells and
execution primitive counters are distinct. This does not append a production
CURRENT WAL or enable recovery after a real setter/store/Cebra/process failure.
Unknown partial observations remain non-replayable; original holds stay enforced.
[Protocol/evidence](bde-native-private-current-recovery.md).

2026-10-03 physical continuation adds a flushed original registry binding and
separate request/failure/lookup/observation/classification records. The auditor
verifies actual physical prefixes, logical counters, retained pending images,
private-only flags and independent changes even while observation is unresolved.
No native step is reissued before classification. A matching before image permits
an explicit unperformed step; a matching after image advances past that step.
A distinct third image refuses. Separate original-reference supplements preserve
failed studies as failures; they do not synthesize successful production journals
or clear the original hold. [Physical contract](bde-native-private-physical-recovery.md).

