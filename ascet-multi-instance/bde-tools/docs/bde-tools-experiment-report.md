## 2026-10-11 Finite native patch executor

2026-10-11 owner-record 后续：已实现隔离 Module/Main source 的完整 CTreeSearchObjectRecord 读取与 native patch executor。修正 search global ID 的分段布局，原 raw no-op、六阶段版本字段变更/分项 inverse/redo/inverse 在线通过；source inverse 保留另一 owner 的实际修改。7 类 preparation 拒绝、8 次 replay/stale 拒写、私有导出隔离、新连接完整 owner/reference 双读及 public bookends 精确恢复均通过，本次 pending 已清。此层只验证记录版本字段，尚未验证图形 payload 序列化、模型/source/cache closure 或 formal owner journal invocation；production v3/history 门保持关闭、Message0/60、43 required 与整体交付不升级。未启停 ASCET。[合同](bde-persistent-owner-patch.md) · [证据](../analysis/bde-experiments/2026-10-11/bde-owner-patch-increment-01/README.md)。以下旧段保留历史时点。

隔离 Module/source 引用执行层已实现，六阶段 1→2→1→absence→2→absence 实际12write/2delete，8项生命周期拒写控制和另外7项真实native准备拒绝通过。空executor证明返回的准备图像不能改动私有执行材料；完整CURRENT在prepare和dispatch两次守卫。最新fresh两读、公开bookends和零native确认精确恢复，只清本次pending。原先CTError诊断失败不改写。208定向离线控制，953源码冻结，277归档hash核对。实际连线、model/source/cache/owner-object恢复、Message0/60、43required和整体交付仍未完成；WAL-bound request仅离线控制，不开放生产history。未启停ASCET。

| 实验 | 请求帧/bytes | 响应帧/bytes | 范围 |
|---|---:|---:|---|
| native preparation guards01 | 116/213100 | 115/368172 | 7拒绝+0writer空执行 |
| finite patch live05 | 72/45393 | 71/1098120 | 6阶段+8拒写 |
| fresh02 | 99/189889 | 98/110191 | 完整双读 |

初次编译括号错误、四参数block、Array new:withAll:、Character asciiValue不支持均在writer准备前失败并保留。后续已修复为运行时支持的固定接口。[复现和完整边界](../analysis/bde-experiments/2026-10-11/bde-finite-patch-increment-01/README.md) · [机器结果](../analysis/bde-experiments/2026-10-11/bde-finite-patch-increment-01/result.json)。

## 2026-10-11 Stored v3 native preparation-only guards

补齐canonical/staged编辑守卫与connect history原材料profile检查。真实compiled guard在三个不可执行脱离frame上拒绝apply/revert/validate_revert，无生产token或model dispatch；history模板只编译。正式v3 prepare/inspect/discard和上层双拒写再验通过，公开/原生bookends一致，441/440帧。首次stage/canonical不一致在build阶段拒绝、未到native，原失败保留。24定向控制、960归档hash及生成一致性通过，完整任务不升级。

[固定证据、范围与命令](../analysis/bde-experiments/2026-10-11/bde-v3-native-guard-increment-01/README.md)。

## 2026-10-11 Nonempty reciprocal resize and original-record restoration

复用私有 PID56068 / 32631，未关闭、启动或重启。只写隔离组件及其 source 的三条引用记录：source 出站1条→2条→1条→原CTError101 absence，配套更新两个入站记录，共7write/1delete。每次完整 planned bytes 均读回一致；original 入站 raw含未解析tail原样写回，各阶段membership无不一致。184项定向离线控制通过，941份代码/依赖冻结、102次归档源码hash核对通过。

完整观察仅 source absence 的 sysio 诊断不同，原 native `passed=false` 和失败材料保留。新连接两次完整读取与 final actual 一致，独立零native confirmation明确区分 `persistent_reference_records_restored=true` 和 `exact_observation_restored=false`。CTError反编译恢复源显示sysioCode来自CTreeGV/WinError诊断，errorNumber101独立决定undefined对象异常；未调用setter清除诊断，也未放宽生产CURRENT守卫。

前三次失败依次为C#变量遮蔽、未导出准备错误、Smalltalk二元运算结合次序；均未到writer。第四次真正执行后触发诊断差异，原verdict不改写且不重放。新离线生命周期逆候选支持存在性转换、完整after冲突及物理记录合并，仍无native executor，不授予持久inverse。T3.1/T5.1、Message矩阵及完整交付不升级。

[本轮完整证据与命令](../analysis/bde-experiments/2026-10-11/bde-reference-nonempty-increment-01/README.md)。

## 2026-10-11 Explicit target originals and reference leaf lifecycle

明确新目标键（最多16个唯一20-byte键）进入同次 production prepare，读取原 outgoing targets 与请求 targets 的 union，保留 existing raw 和 CTError101 exact absence。最终生产 prepare/inspect/discard、公开/原生全图 bookends 与 Python/C# 双拒写通过。最终有限观察15条，semantic3,037 / raw4,473 bytes，无 membership 不一致。

已有 Module DBReferenceList 原样写回实测1次，随后独立原始字节/fresh read 确认；source 原 absent DBReferenceList 则实际创建64-byte empty record并精确删除，各1次leaf调用，恢复完整原 before、dirty0。delete 返回 SmallInteger，既有 write 返回 CTSpaceCheckingIFil；原校验器错误的 failed verdict 保留，confirm native_calls=0、writer_replayed=false。零写拒绝实验由终止native回复和两个0计数确认，未重放。

私有故障后获用户一次恢复重启授权；正常业务实例未动，旧 epoch pending 未清除，旧 token 未重绑。不存在/prepare/stdout preamble/返回类型/测试cwd等失败材料保留。最终167相关离线控制及源码/证据hash冻结通过；该结果不授予生产连线或持久inverse权限、不升级43required。非空/变长记录、通用恢复和T5.1实际闭环继续开发。

[最新复算与命令](../analysis/bde-experiments/2026-10-11/bde-reference-leaf-lifecycle-increment-02/README.md)。以下是历史检查点。

## 2026-10-11 Module reference runtime preflight and semantic inverse

复用现有 PID40652 / port32631，未启停 ASCET。五个固定模板实际编译通过；共享引用读取器在多个隔离 Module 上两次观察一致，严格区分 database-record 和 loaded/merged 入站列表。三方语义逆候选及 journal 绑定完成，87 项相关离线测试通过；候选保留无关修改，拒绝重叠引用或缺失原 before，始终不授权持久 inverse。

新建两节点隔离 Trial Module 后，正式生产 v2 prepare/inspect/discard 在线通过；前后 native/public 观察一致。prepare-only 实验 401 请求帧/400 响应帧，响应 268,218 bytes；未派发连接 apply、store 或 inverse。fixture 创建另有公开 factory/StoreToCache 写入，不混入零写入结论。旧样例无可用连接组合及构建/类型失败保持原 verdict。

v2 编辑后的实际引用采集、数据库引用 patch/inverse、真实编辑回退闭环与 Message 60 项矩阵仍未通过；本次不升级完整 required case。

[增量报告及复现命令](../analysis/bde-experiments/2026-10-11/bde-module-reference-preflight-increment-01/README.md) · [在线 prepare](../analysis/bde-experiments/2026-10-11/bde-connect-reference-preflight-04/result.json)

## 2026-10-07 CTIFil bytecode audit and guarded write-plan projection

反编译方法表二次审计确认 `CTIFil` 六个写/增改 selector 的 bytecode hex 完整且长度一致；独立解码还确认固定/可变入口的 lookup → `~= 0` → add/update → status return 形状。`leaf_bytecode_complete=true`、`leaf_bytecode_semantics_pattern_verified=true`，但没有恢复可审计源码语义，所以 `source_semantics_proven=false`。真实 retained source payload 经过 agent-facing `bde_commit_write_plan` 后得到 6,334 logical/allocated bytes、0 个变更范围和 `status=blocked`；新增的 `bde_commit_revert_plan` 采用同一 payload 合同计算 `after → before` 逆向候选，单元测试确认无关字节保留及重叠冲突拒绝。即使形状审计全部为真，独立 inverse-authorization 门仍会保持阻断。无 Cebra/native 写调用。事务 inverse、持久 rollback/inverse selector、write/inverse 授权仍缺失，不能算持久编辑或回退通过。

[记录级回退计划](../analysis/bde-experiments/2026-10-07/bde-commit-revert-plan-development-01/README.md) · [结果](../analysis/bde-experiments/2026-10-07/bde-commit-revert-plan-development-01/result.json)

[叶 bytecode 审计](../analysis/bde-experiments/2026-10-07/bde-ctfil-leaf-bytecode-audit-01/README.md) · [审计结果](../analysis/bde-experiments/2026-10-07/bde-ctfil-leaf-bytecode-audit-01/result-02.json) · [transaction audit](../analysis/bde-experiments/2026-10-07/bde-transaction-boundary-audit-01/result.json) · [guarded plan](../analysis/bde-experiments/2026-10-07/bde-commit-write-plan-development-01/result-10.json)

## 2026-10-07 CTIFil recovered-source and symbol-table evidence

`CTIFil.st` 的生成重建 wrapper 已逐一核对五个底层 record 调用；`analysis/strings/ASDBase.ic.tsv` 也保留了五个入口名及稳定文件偏移。该证据只证明 wrapper 调用形状和镜像符号存在，不能证明原始源码、native leaf 语义、持久提交或 inverse。另有独立 savepoint 审计确认 `DBInterface32>>setSavePoint` 先写 modified objects 再设置 CTree savepoint，`restoreSavePoint` 通过默认 interface 消费保存点；它仍不证明完整资源闭包、崩溃持久性或跨进程 inverse。新的 guarded plan `result-10.json` 记录这些正面证据，但仍保持 `native_leaf_semantics_proven=false`、`savepoint_durable_inverse_verified=false`、`native_calls=0`、`write_authorized=false`、`inverse_authorized=false`。

[source/symbol audit](../analysis/bde-experiments/2026-10-07/bde-ctfil-source-symbol-audit-01/README.md) · [result](../analysis/bde-experiments/2026-10-07/bde-ctfil-source-symbol-audit-01/result-03.json) · [savepoint audit](../analysis/bde-experiments/2026-10-07/bde-savepoint-audit-01/result.json) · [guarded plan result-10](../analysis/bde-experiments/2026-10-07/bde-commit-write-plan-development-01/result-10.json)

## 2026-10-07 retained source record payload preview

serializer configuration 的只读回执新增 source owner payload preview，并通过严格校验：`CTreeSearchObjectRecord`，fixed 130，blob 6,204，logical/allocated 6,334，global/query/file key 一致。未调用 `DBLinDeLin>>dump:` 或任何写路径，typed graph unchanged，Cebra response 415,715 bytes / 75 frames。

[冻结摘要](../analysis/bde-experiments/2026-10-07/bde-serializer-payload-preview-increment-01/result.json) · [完整 payload](../analysis/bde-experiments/2026-10-07/bde-serializer-configuration-live-06/configuration.json) · [校验](../analysis/bde-experiments/2026-10-07/bde-serializer-configuration-live-06/validation.json)

## 2026-10-07 fresh v6 owner + serializer configuration

在同一 PID47348 / port32642 / epoch 中用新 token `edit_f4de81a769a005046541920edfd3f94f73ddf41ba086986ee874d4e68a973ecf` 重跑 v6 prepare；component/source 两个 owner、20,834 reference records、125,010 events 和 serializer configuration 均通过。随后离线核对 9 个 exact inbound targets，unchanged reference list 产生 0 patch。图形 unchanged，setter/apply/store/commit/serialization/write/inverse 均为 0；ASCET 未启停。

[冻结摘要](../analysis/bde-experiments/2026-10-07/bde-persistent-owner-increment-02/result.json) · [fresh prepare](../analysis/bde-experiments/2026-10-07/bde-persistent-owners-prepare-live-05/result.json) · [fresh serializer](../analysis/bde-experiments/2026-10-07/bde-serializer-configuration-live-05/result.json) · [unchanged plan](../analysis/bde-experiments/2026-10-07/bde-persistent-owner-unchanged-plan-02/result.json)

## 2026-10-07 unchanged reference-list candidate

从 v6 retained audit 离线生成 unchanged owner-reference candidate：9 个 outgoing targets、9 个 exact inbound records、包含 self-reference，前后 outgoing entries 完全相同，因此 0 个 inbound patch；无关成员和顺序保护为 true。该规划保持 provenance/write/inverse 全部 false，没有 ASCET native write。

[冻结候选](../analysis/bde-experiments/2026-10-07/bde-persistent-owner-unchanged-plan-01/result.json) · [说明](../analysis/bde-experiments/2026-10-07/bde-persistent-owner-unchanged-plan-01/README.md)

## 2026-10-07 fresh serializer configuration witness

在同一 PID47348 / port32642 / epoch `47348/2026-10-07T02:56:42.3897732Z` 中，`commit_serializer_configuration` 复用 v6 保留的 source owner 材料并在线通过。`SGClass` component 与 `SGTopGraphicsBlockDB` source 角色、`DBLinDeLin`、`DBSwapperDumperLoader`、`RBObjectDumper`、`RBObjectLoader` 及有限 omission/replacement/loading 表均通过严格 validator；typed graph unchanged，serialization/store/commit/setter/write/inverse 均为 0，Cebra response 381,254 bytes / 75 frames。此命令只读配置，不构造 serializer、不调用 dumper/loader、不写盘，不能替代 fresh serialization、持久 diff 或 inverse。

[冻结摘要](../analysis/bde-experiments/2026-10-07/bde-serializer-configuration-increment-01/result.json) · [在线结果](../analysis/bde-experiments/2026-10-07/bde-serializer-configuration-live-04/result.json) · [完整配置](../analysis/bde-experiments/2026-10-07/bde-serializer-configuration-live-04/configuration.json) · [严格校验](../analysis/bde-experiments/2026-10-07/bde-serializer-configuration-live-04/validation.json)

## 2026-10-07 同次编辑准备基线与有限原引用查询

复用 PID47348 / port32642 / `47348/2026-10-07T02:56:42.3897732Z`，关闭/启动/重启均为 0。正式 `native_commit_prepare_v5` 已将本次新 token 与完整原引用观察绑定；两遍 20,834 键、20,834 records、125,010 events 经完整导出独立复算一致。WAL 顺序为 intent/capture request/prepared/started/finished，实际 native apply 为 0，写入检查处拒绝，原图形不变。

| 验证项 | 结果 | 明确范围 |
|---|---|---|
| 同次 prepare 基线 | 通过；完整导出流程约 94.13 秒，180,761,650 响应字节 | 包含完整审计分页，不是日常 agent read 耗时 |
| 真实 Doge 查询、WAL、离线 diff/history | 通过；21 实际读取差异独立一致 | 原引用语义和图形未改；不是持久编辑通过 |
| 原基线有限查询 | 9 旧目标 + 1 新目标 + 1 未观察键；约 637 ms，42,718 响应字节，6 响应帧 | 只取保留材料，不重扫、不查当前文件；不与全量覆盖作等价提速比较 |
| 新目标有限补丁规划 | 1 条 append_owner 计划；保留无关条目和原顺序 | 纯离线提案；没有模型连线或持久写入 |
| 定向离线控制 | 100/100，exit 0 | v5、WAL/缺回执、严格 lookup/解码与拒绝条件；不计为在线通过 |

完整 scan 数据留在 native，有限 lookup 只允许最多 16 个明确原 OID/引用属性，完整原始字节合计最多 1 MiB；超限拒绝，无静默截断。查不到返回 `not_observed`，拒绝变为空 before 或不存在性证明。旧 prepare token 不能重绑已保留的资源。`commit_capture_requested` 在 prepare 前持久记录，unknown 回执停止继续执行/清理；按原 token 查询不能合成 durable prepared。

新 token：`edit_ac64b40069a190c16c1529887186ae0fd83a1d7cba0c64f61a2a671e21357c03`。证据：[prepare](../analysis/bde-experiments/2026-10-07/bde-reference-baseline-prepare-live-01/result.json)、[Doge](../analysis/bde-experiments/2026-10-07/bde-reference-baseline-tool-live-01/result.json)、[lookup](../analysis/bde-experiments/2026-10-07/bde-reference-baseline-lookup-live-01/result.json)、[控制](../analysis/bde-experiments/2026-10-07/bde-reference-baseline-increment-01/controls.json)。

[attempt live01](../analysis/bde-experiments/2026-10-07/bde-commit-attempt-live-01/result.json) 已通过正式 `bd_inspect → recovery`。以真实 WAL 的原字节请求前缀构造独立本地缺 prepared 回执夹具；原完整 WAL 不改。只发 1 次真实 native attempt，找回原 v5 receipt 并追加 `commit_capture_attempt_observed`；仍 unconfirmed，不补 prepared、不清 pending、不允许 reconcile。离线 diff/拒绝路径 0 新 native 帧；图形和原 WAL 不变。现场 pending 状态仅作前后存在性/hash 核对，不制造实际 pending 或声称恢复了 pending；这是本地故障夹具，不是真实丢包或模型恢复验收。

仍未闭合：3 个文件终点语义、跨进程原子性、完整持久写集/当前冲突检查/精确持久 inverse。全部原交付范围保留，43 required 维持 0 pass / 42 not_run / 1 blocked；业务 hold 和旧失败材料不变，完整交付 false。下面保留此前检查点。

四条证据链最终独立复算通过，880 份源码路径与 16,756 次 hash 核对已冻结。[原档、命令和限制](../analysis/bde-experiments/2026-10-07/bde-reference-baseline-increment-01/README.md)。

## 2026-10-07 全引用文件观察、完整字节守卫与无损 GV 传输（此前检查点）

`bde-reference-file-capture-live-04` 使用原 PID47348/port32642/epoch、原 token `edit_afec6b8cd629ed9a435d14be045da43ef665a25e78e5a3551bf5e8d20822f970` 和 profile_index=9；未重发原 prepare/apply，也未重启 ASCET。v3 读取 20,834 条记录、两遍各 20,834 个键，count_before/count_after 均为 20,834，保留 125,010 个事件。前后原身份及 PlatformFunction 完整字节守卫通过，图形不变，phase 为 `observational_census_match`。

独立校验通过：v3→v2→v3 的全部字段/字节无损往返，125,010 个事件的 64,005,120 字节重复 GV 映像由两份原始 512 字节图像及引用精确表示。记录、事件、键顺序不因去重而减少；9,498 条 tag1 引用 payload 通过语义核对。live03→live04 的全部 20,834 条原始记录集合及字节相同，仍不证明有外部写入时的原子快照。

3 个终点语义全部未知：两次 nextKey 返回 0/GV 全零；nextRecord 返回 101、isam=101/uerr=30。保留观测值，`terminal_semantics_verified=false`，不把它们解释为已证实 EOF。`complete_before_authorized/write_authorized/inverse_authorized/cross_process_atomic` 均为 false，model setters/store/commit 均未调用；当前观察未成为同次新 prepare 的 before，新增 outgoing 目标原 before、完整持久写集和持久 inverse 仍缺。

失败原件全部保留：live01 在 switch-original-instance 遇 `True>>-`，零记录；live02 首遍 20,834 键后遇未知零终点，且 FRSKEY 地址槽变化导致完整字节守卫失败；live03 虽读取全部记录，但另一 PlatformFunction 字节变化令后守卫失败。没有把“疑似延迟绑定”当作忽略地址字节的理由，没有升级旧失败。SDK 原 DLL 及 compile/runtime 路径/hash 现已归档，摘要与分页身份在任何分页前严格核对，unknown 清理隔离已补离线控制。

限定离线 82 项分项通过：profile 20 + observation 29 + compact 14 + export 19，不与既往运行相加。profile、compact、export 保留 exit_code=0；observation 的 29 条逐项 `ok` 与 `Ran 29 tests ... OK` 已保存，但原工具输出未显示数值退出码，因此归档 `exit_code=null`，不能补写 0。控制材料分别见 [profile](../analysis/bde-experiments/2026-10-07/bde-reference-file-profile-development-01/controls.json)、[observation/compact](../analysis/bde-experiments/2026-10-07/bde-reference-file-snapshot-development-01/controls-python.json)、[export](../analysis/bde-experiments/2026-10-07/bde-reference-file-snapshot-development-01/export-controls.json)。这些离线控制不代表在线编辑验收。

冻结汇总已通过：863 份源码、12,103 份证据文件、14,067 次 hash 核对，full_delivery=false。本次 scan/inspect 回执 4.2201621 秒、摘要 5,238 字节、完整 report 64,396,688 字节；全流程请求 20,932 帧、响应 20,931 帧/180,051,440 字节，包含连接、观察和审计分页，不能当作紧凑 agent read 性能或通用最优结论。

43 required 仍 0 pass / 42 not_run / 1 blocked，无新完整流程通过，业务原件恢复未在本增量复验，full_delivery=false。下一步是同次新隔离 prepare 的完整原基线，再接有限实际持久补丁与三方冲突回退；不拿当前文件补旧编辑 before，也不整文件回写。用户“不来回关闭启动 ASCET”的约束保持。

[冻结汇总](../analysis/bde-experiments/2026-10-07/bde-reference-file-increment-01/result.json) · [在线结果](../analysis/bde-experiments/2026-10-07/bde-reference-file-capture-live-04/result.json) · [独立实证](../analysis/bde-experiments/2026-10-07/bde-reference-file-capture-live-04/independent-validation-01.json)。冻结核对已通过，以下为此前检查点。

## 2026-10-07 原目标入站当前读取、WAL 与实际 Doge（此前冻结检查点）

沿用原 v4 token `edit_afec6b8cd629ed9a435d14be045da43ef665a25e78e5a3551bf5e8d20822f970`，不重做 prepare/rebind/apply。最终 current-tool-live-03 的 `native_commit_status_v2` 已核对 9 个原目标；完整语义与 raw 记录一致，原 before 和原 WAL 不变。实际 21 处差异为 10 cache timeStamp + 2 owner fixedRecord + 9 reciprocal fixedRecord，全部独立复算相同；9 处 reciprocal 均属 query_read_effect，未验证真实语义编辑。

Tool03 agent 摘要 4,516 bytes/3 页，diff 14,532 bytes/10 页，history 5,648 bytes/2 页，离线 diff/history 0 native 帧。854 份源码冻结、2,662 hash 核对通过；77 离线测试为 29 新控制 + 48 相关回归，不能与其他重叠历史运行相加。当前工具全流程约 5.97 秒/225 请求及 221 响应帧，含 open/check/observe，不作为单独查询性能。

current-tool-live-01 因 BlockContextTemplate 不支持四参数 value:value:value:value: 失败；固定 helper 改三参数后 Tool02 通过，严格 owner 字节/命名空间/索引/摘要校验加强后 Tool03 通过。原失败 reading report 保留 1 row，无 resource_check_index、完整 summary 或 actual。无重试写入、启停/重启或最后材料清理。

新增 outgoing 目标 before/完整持久写集/持久 inverse 仍 false；43 required 维持 0/42/1，无业务恢复复验，无新完整 case pass。[冻结证据](../analysis/bde-experiments/2026-10-07/bde-commit-reciprocal-current-increment-01/README.md)。下一步 [完整引用文件写前基线](../analysis/bde-experiments/2026-10-07/bde-reference-file-snapshot-route-01/PLAN.md) 目前只有 66 方法/8 错误资源静态研究、0 native；当前 CTGVCTreestdFputFget 非单用户/非事务，不能以控制 marker 或 ctCritical 声称跨进程全库原子快照。

## 2026-10-07 v4 原始双向引用捕获（当前读取之前的历史检查点）

同一次正式 prepare 捕获原 outgoing 的 9 个唯一目标及其 9 条原 inbound，完整语义 4,293 字节、原始记录读取 6,382 字节。9 处初始叶 fixedRecord 读效应独立保留。prepare-live-01 使用 v4 token `edit_afec6b8cd629ed9a435d14be045da43ef665a25e78e5a3551bf5e8d20822f970`；根 component/generation 绑定修正后的真实 Doge 验证为 tool-live-02，Tool01 作为此前证据保留。

Tool02 原材料与 WAL 未改写；完整实际 diff 12 处（10 timeStamp、2 owner 引用读取 fixedRecord）独立复算一致。摘要 3,369 字节/3 页、diff 8,847 字节/6 页、history 4,501 字节/2 页，离线 diff/history 0 native 帧。850 源码冻结、2,629 hash 核对通过；40 项最新离线测试含 12 新增，此前 64 项测试有套件重叠，单独保留而不累计。

当前 reciprocal 记录尚未核对、新增目标原 before 未捕获，full persistent write set / persistent inverse 均 false。fresh serializer 的 83 方法静态路径研究没有原生调用或执行授权。无 ASCET 启停/重启，无新完整 required pass，43 required 仍为 0/42/1，业务原件恢复本轮未复验。下一步当前入站实际差异、新增目标 before、受控持久 patch/冲突回退继续。

[冻结证据与离线复算](../analysis/bde-experiments/2026-10-07/bde-commit-reciprocal-increment-01/README.md)。以下条目均保留原实验时点和原 verdict，不以新 v4 结果追补旧材料。

## 2026-10-07 有限引用补丁与三方回退规划（v4 捕获之前）

新增 plan/check_inbound/check_revert_inbound：按原 outgoing 的新旧目标并集要求完整原 inbound，补丁只增删 owner 关联；逆向比较原 before/forward after/current，保留无关关联和顺序，重叠/重复恢复/锚歧义拒绝。28 项离线测试通过，尚未执行原生持久补丁或 inverse。真实原 outgoing 9 目标的规划已复算，缺原 inbound 明确拒绝。

同 PID47348/32642 完成 profile v2，16 方法原身份二次核对、6 个 literal 缺口补读。独立原镜像匹配 16 完整字节码、54 literal；3 个离线篡改负例拒绝。未调用序列化，未证明完整调用闭包或跨 IC/native 地址映射；第二次方法原始行未单独导出，依据固定源码守卫和成功回执。完整 native 工作流为 76 请求/75 响应帧，含连接与图形读取，不能充当单次工具性能。

10 相关源码归档、122 hash 核对通过。0 启停/重启，0 业务调用/原件恢复验证，0 新完整 required pass。下一步闭合固定 dumper/loader 路径，接同次原 inbound 捕获和真正持久写/恢复。全交付仍 false。

[实现、证据、复算及限制](../analysis/bde-experiments/2026-10-07/bde-commit-write-set-development-01/README.md)。

## 2026-10-07 引用 ID 完整长度修正、实际 WAL 与 Doge

保持 PID47348/32642/原 epoch；没有关闭、启动、重启 ASCET。发现 CTree 引用列表 fixedSize + blobSize 未含 4 字节计数，因此旧逻辑前缀漏比较最后引用 ID 的 4 字节。原完整 raw buffer 已保留，新 decoder 从原材料恢复完整语义，不改写原 before。此前“逻辑引用一致”仅是声明长度前缀；record read buffer 尾部是不明确含义的 raw bytes，不能称为已证明不持久的分配空隙。

正式 prepare 与当前 query 采用 complete_reference_payload_v2，完整出/入站语义为 253/190 字节、9/6 个 tag1 引用。原生复制数组检出最后 ID 字节变化，未解析尾部单列 diff、未知 tag 拒绝；没有写实际持久记录。真实 Doge→完整 WAL→离线 diff/history 通过，12 处 timeStamp/fixedRecord 读效应保留，原 SG 396 对象和原 WAL 不变。摘要 3,190 字节/3 页、diff 8,372 字节/6 页、history 4,320 字节/2 页；离线查询 0 native 帧。

137 离线控制、851 当前源码归档、2,754 hash 核对通过。serializer 元数据实际采集及 14 方法原字节码匹配，54 literal 中 48 匹配/6 证据不足；该审计 passed=false，未调用序列化，不授权持久写。完整持久写集、dirty owner 保护、精确 inverse 和全交付继续；43 required 保持原 0/42/1。旧失败与旧材料保留。

[固定输入、实证与复算](../analysis/bde-experiments/2026-10-07/bde-commit-reference-increment-01/README.md)。

## 2026-10-07 CTree 控制态、正式工具与失败材料保留

保持当前 PID47348/port32642/原 epoch，本增量没有关闭、启动、重启 ASCET。正式 prepare 同次捕获 2 个对象接口和 1 个独立引用接口的完整控制态，查询/WAL/离线 diff 接入。request v3→旧回执拒绝、失败 prepared 最后材料释放拒绝已补齐。

真实控制态变化 0，SG 原 396 对象无模型差异；12 处 cache/CTree 读取变化保留。真实 Doge 摘要 2,981 字节/2 页，完整 diff 8,183 字节/6 页，history 4,107 字节/2 页；离线 diff/history 零 native 帧。3 处非零**合成基线**的 native 比较与独立 Python 相同，没有写实际 transaction/savepoint，不是持久回退通过。

133 离线控制、852 源码归档、3,611 hash 核对通过。首轮原路径默认值失败保留，其部分控制图像不可追补；原 prepared graph record 保留及拒绝释放已验证。完整持久写集、其他 dirty owner、精确 inverse 和全部剩余验收继续，43 required 不升级。

反编译已将下一写集缩小到 owner 数据/outgoing 与引用差集目标 inbound；普通保存会提交全 dirty cache、引用接口单独提交、savepoint 不能代替提交后历史回退。下一步开发固定范围新鲜 serializer 证明和原引用记录捕获，缓存时间戳/操作缓冲继续审计但不盲目恢复。

[完整证据和复算](../analysis/bde-experiments/2026-10-07/bde-commit-control-increment-02/README.md) · [独立结果](../analysis/bde-experiments/2026-10-07/bde-commit-control-increment-02/result.json)。

## 2026-10-07 SG 当前字段/值/集合与实际差异

原 epoch/PID47348 保持不变，本增量启动/重启 0 次。396 原 SG 对象和 10 个根的完整当前图像已在现有实例采集；包括原已不可达对象和新观察引用，原 before 不改写。查询前差异与查询读效应分开，真实 SG 当前差异为 0；直接资源仍有 12 处差异。186 DBProxy/10 DBObject 仍为边界，不声称完整持久 closure。

原生私有非零控制的 7 处差异独立复算一致；修改的是新分配私有对象，没有真实 BDE setter/store，不能升级整体编辑验收。两次失败原回执保留：`OrderedCollection>>removeAll` 方法不存在；第二次异常文本为空，检查发现测试集合含后续被修改的值，改用不可变元素后通过，但第二次原故障点未独立定位。真实 Doge query→完整 WAL→离线 diff/history/分页通过，原 WAL 和真实图形不变，错误 session/reconcile 零 native 拒绝。

825 源码归档、3,873 hash 核对、110 离线控制通过。完整 edit/inverse、foreign dirty Project、持久/视觉/故障、跨层通路、Doge/AEB_Core、业务恢复、最终包仍缺，43 required 不提升 pass。耗时/帧数包含审计与读取，不当作纯 agent 查询性能。

[证据、复算和下一实现](../analysis/bde-experiments/2026-10-07/bde-commit-models-current-increment-01/README.md) · [独立结果](../analysis/bde-experiments/2026-10-07/bde-commit-models-current-increment-01/result.json)。

## 2026-10-07 正式 prepare / 实际资源 diff / Doge 路径

正式 prepare 同一次 native dispatch 捕获原资源；图形 prepared record 丢弃后原资源仍保留，原生写前守卫拒绝调用。当前直接资源差异 12 处（10 处缓存 timeStamp、2 处 CTree fixedRecord），完整前后值进入 WAL，独立 Python 复算与真实 Doge `Tool.call` 返回一致。agent 摘要 1,920 字节、完整 diff 6,077 字节，按 2,048 字节分页；离线 diff/history 零 Cebra 帧。

SG 写前材料包含 10 根、396 对象、67 字段对象、43 值对象和 90 集合，边界 186 DBProxy/10 DBObject；当前 SG post-image/diff 尚未实现，查询明确拒绝，完整 closure/inverse 未通过。本增量 0 模型 setter/store/inverse、0 业务调用，未重新确认业务原件恢复。源码归档 818 份、hash 核对 2,135 次、原生 oracle 源码 113 份、98 离线控制通过。完整 workflow 帧数/耗时包含准备、审计及读取，不能作为纯 agent 查询耗时，不能与旧 1,243 缓存的全量采集当作同等覆盖性能比较。

保持当前 PID47348/32642 和数据库打开，按用户要求不为实验反复关闭启动 ASCET，也不为材料容量重启。其他实例不干预；异常先保留材料诊断，旧 epoch 不重绑。整体未交付；43 required 的 0/42/1、消息连删 0/60 与旧失败结论保持。

[可复算检查点与下一步](../analysis/bde-experiments/2026-10-07/bde-commit-production-increment-01/README.md) · [完整结果](../analysis/bde-experiments/2026-10-07/bde-commit-production-increment-01/result.json)。

## 2026-10-06 写前资源捕获与 NEWENUM 读取修正

2026-10-06 新增：NEWENUM 记录读取的类型、路由和缓冲长度已修正，19 项离线控制、24 项静态分派审计及隔离 ASCET 原生编译通过。新模板未执行，枚举真实创建/实际 diff/原对象回退仍未验收。

写前资源捕获原型已在线采集并跨连接查询原材料：1,243 个缓存条目、1,248 个原字段对象、1,289 份原值及三份当前对象/引用记录（完整逻辑 12,343 字节）。14 项离线控制、29 项分派审计通过。单次读取保留 16 处 CTree 直接字段变化；跨连接存在 11 处缓存时间戳变化，逻辑记录字节一致，完整原资源相等守卫为 false，未忽略差异。

当前材料是未来新编辑的写前候选，不能补成旧失败编辑 before。已有 dirty Project 的在线处理、注册模型与 CTree 传递状态、完整 commit 闭包/持久 inverse、NEWENUM 真实生命周期均未完成；factory/inverse 不授权。该全缓存审计采集的本地观察约 3.75 MB、Cebra 响应约 12.37 MB，不能当作紧凑 agent read 或提速通过。三次前序失败保留，第 3 次的原生材料仍保留。

限定 primitive 消息创建保持 36/36；消息连删完整流程仍 0/60。完整 43 required ledger 仍 0 pass / 42 not_run / 1 blocked。业务原件恢复未新验证，整体未完成，goal active。

[本轮可复现证据](../analysis/bde-experiments/2026-10-06/bde-commit-resource-increment-summary-01/README.md) · [独立复算](../analysis/bde-experiments/2026-10-06/bde-commit-resource-increment-summary-01/result.json)。

## 2026-10-06 消息连线正式恢复和当前持久记录读取

36/36已有内容Module primitive消息创建生命周期已完成并通过归档复算；这是限定
创建轴的通过，完整43required未新增pass。消息拓扑矩阵仍0/60：首项connect已应用
并独立验证拓扑，但声明引用守卫失败。正式恢复preview与实际bd_revert共2次调用，
实际inverse仅1次，WAL head=reverted/sequence2，pending=false，原failed result原字节保持。

生产修复仅把connect-history旧graphical编码器绑定改成root的typed结构编码器，
解决原生Float>>asArray预检错误；其余797冻结输入完全匹配。图形/source/物理与绘制
顺序/别名见证和完整公开拓扑、声明model、配置返回原before，426声明对象字段无diff。
**完整恢复false**：合并引用新增自身Module，磁盘入站引用新增Project。旧capture
中DBObject为boundary，没有原modified/cache状态或raw引用bytes，不放宽比较或清材料。

当前只读诊断modified集合查询前后为空，owner_modified=false。24项静态dispatch
来源与继承解析通过；调用链确认storeToCache经endModifications进入autoCommitDatabase，
开启时library commit。没有编辑前modified观测，因此完整历史因果不由当前空集合证明。

两次真实当前raw读取通过，完整key/route/class/bytes严格核对，逻辑diff=0。
对象为CTreeSearchObjectRecord/CTreeLocalSearchInterface；引用为
CTreeVariableAttributeRecord/CTreeLocalVariableAttributeInterface，走原backend的
referenceInterface，文件CTSpaceCheckingIFil，数据库API接口ASDPersistenceController。
逻辑字节11866+270+207=12343；分配额外135+103字节也保留。13次早期读取失败保留。
55项相关离线控制通过；控制是合成，raw当前采集也不证明原编辑before、完整持久闭包
或NEWENUM真实factory/inverse。旧NEWENUM候选的类名/路由/长度假设需新派生修正。

业务0调用、原业务restoration hold未清，全部核心要求仍保留。源码、失败、实际回执、
raw bytes、独立审计及下一步见
[本轮报告](../analysis/bde-experiments/2026-10-06/bde-message-topology-restoration-development-01/README.md)
和[机器结果](../analysis/bde-experiments/2026-10-06/bde-message-topology-restoration-development-01/result.json)。

## 2026-10-06 17:38 NEWENUM工厂前原对象绑定与零修改守卫候选

本轮末次同一session观察：18/36完整通过，第19项send/sdisc/imported在history；
followup仍waiting且0下游stage。文档更新后guard完整archive/当前输入/SDK/exe、
运行798与后续11冻结输入均无drift。下方保留原17:38快照，旧结果不改。

新增固定before-binding/guard Smalltalk、typed receipt验证器、原源码hook生成器、
独立C#入口/编译器及严格原epoch的compile-only驱动。全部在新analysis及编译
副本，没有改798运行输入或11后续输入；hash复算均无drift。

工厂前检查同一次native调用核对原prepared edit/material、paired witness记录
身份、DB record/access/interface、完整模型顺序、原图形顺序/source/namespace、
完整声明体及两套owner引用，复用原resource observe closure核对目录/DB/cache。
canonical与staged apply的hook均在mutationStarted标志之前，保证此拒绝路径
保持零模型修改归类；其他原操作体逐字保留。不存在新增守卫Cebra往返，但尚未
证明GUI事件重入或跨进程持久DB事务原子性。

NEWENUM含autoCommitDatabase；完整持久状态/同对象inverse尚未实现，因此当前
候选即使precondition匹配仍拒绝factory，undo明确拒绝旧删除定义路径。raw缓存
时间戳也严格比较，不把只读release归一化自动升级为写入许可。需在线检查正常
读取是否引起拒绝，并保留原before/current，不能静默推进前置基线。

24离线控制和5ST词法检查通过；历史真实Module24声明/246对象用于候选兼容，
guard envelope与DB/cache为合成。x86 C#桥接编译通过；129归档文件、11当前输入、
SDK/exe与递归base hash匹配。新Smalltalk原生编译/实际before绑定没有执行。
实际compile入口确认PID48840/56296在运行而0native拒绝、0新witness保留。

17:38现场矩阵17/36完整通过，第18项send_message/sdisc/local在finalize，无
failed stage；followup下游0stage，60连删未开始。没有业务调用，没有新鲜核对
业务恢复hold。完整核心能力、业务恢复、包与43required仍未完成，全目标active。
下一项：原进程终态恢复后native compile；开发新桥接的fresh paired/prepared
捕获驱动，验证守卫，再creation实际diff、DB注册/持久记录与同对象双向恢复。
旧body-build-02没有raw closure，不能当作本守卫材料或自动升级旧witness。

[候选与可复现命令](../analysis/bde-experiments/2026-10-06/bde-newenum-guard-development-01/README.md) ·
[24离线控制](../analysis/bde-experiments/2026-10-06/bde-newenum-guard-development-01/controls-02.json) ·
[独立C#编译](../analysis/bde-experiments/2026-10-06/bde-newenum-guard-build-01/result.json) ·
[真实占用拒绝](../analysis/bde-experiments/2026-10-06/bde-newenum-guard-busy-01/result.json)。

## 2026-10-06 17:10 NEWENUM实际工厂定义after-state捕获候选

本轮末次同一session核对已15/36完整通过，第16项send/cont/imported在history。
另实际验证旧body-build-01的当前输入hash保护拒绝，不将其自动升级成新版本。
下面14/36是该增量原时间快照，保留不改。

新增固定definition/owned-body/DB-cache读取器、after-study、C#命令与严格契约。
只接受已知applied Main enumeration含enumFolder/createdDefinition/createdModel，
且原createMaterial attached。原paired记录、generation、owner/root、数据库
access/interface/token必须一致；before roster与原工厂beforeModelRefs匹配，
新定义OID/label在原folder child清单不存在，当前库child与模型represented class
必须绑定同一原定义。捕获原SGEnumerationDB/SGEnumeration body、完整声明与
配置、20byte DB key、DBObject/cache-entry全槽、registered object与两份入站引用。

共享body validator仅通过显式definition_ref可扩展该一个owned定义；默认before
保持严格，22回归通过。新增13离线控制及3词法检查通过：数据使用旧既有定义
Class的144objects/238slots/3enum-entry，以本地NEWENUM envelope和合成DB/cache
校验拒绝行为。不是新native collector、NEWENUM factory或完整required通过。
after_diff明确为已知after-state读取前后变化，未冒充creation实际diff。

body-build-02与factory-build-02独立x86编译通过；后者125归档source/resource及
9开发输入/原exe/SDK/base/当前hash均复核。factory-build-01的CS0136局部definition
名称冲突原失败保留，改为factoryDefinitionCollector；编译诊断改用gb18030保留
Windows compiler中文，不改原输出。旧body-build-01原归档与结论不自动升级。

实际原生compile driver守卫确认48840/56296存活，0native、0witness，未编译
Smalltalk或创建模型。矩阵14/36完整通过、第15项send/cont/local在history；原
followup仍waiting/0下游，60连删未开始。798/11输入hash不变，0业务模型调用，
没有新鲜业务hold审计。原始/当前资源与单调cache-read时间变化单列，其他
变化不授权释放，inverse/full-persistent/creation-before权限均false。

下一步先沿原进程等待真实终态，再原epoch验证native compile与paired before。
随后实现factory dispatch前原子资源绑定、实际creation diff/持久记录及同对象
局部history和恢复；所有其他普通类型、跨层通路、视觉/故障/持久化、真实
Doge/AEB_Core、业务恢复、最终包与43required仍未完成，goal active。
[候选与命令](../analysis/bde-experiments/2026-10-06/bde-newenum-factory-development-01/README.md) ·
[控制](../analysis/bde-experiments/2026-10-06/bde-newenum-factory-development-01/controls-03.json) ·
[编译](../analysis/bde-experiments/2026-10-06/bde-newenum-factory-build-02/result.json) ·
[实际守卫](../analysis/bde-experiments/2026-10-06/bde-newenum-factory-busy-guard-01/result.json)。

## 2026-10-06 16:36 NEWENUM原声明体与库资源配对候选

本轮末次同一session实时观察：矩阵11/36完整通过，第12项receive/log/local
在create；followup仍waiting，0下游stage。下面10/36为该增量原时间快照。

新增固定collector/body study、C#命令及配对隔离驱动，全部在新的analysis目录。
原SGClass/SGModule、完整SGVariable、owned scalar/SGEnumeration及配置闭包采集；
foreign定义显式boundary。实际 sparse primitive/complex表的count/key/value、完整
model roster、name/20byte alias/type关联和两套owner引用均严格验证。

原生body witness保留原resource witness记录对象，校验同一owner/root/diagram/
generation/DBObject及database access/interface/token。释放body之前resource不可
替换；驱动先body再resource再Main witness。每次调用前查CIM与原epoch，unknown
不重发、不盲释放。creation/new-definition/full-NEWENUM/inverse权限仍false。

22离线控制/3词法资源检查通过；独立x86 C#编译通过，122归档source/resource、
9开发输入、原resource archive/SDK/exe与image policy hash实际复核通过。
旧真实Module的24声明/246对象/591槽/4配置被本地构造为候选envelope；库资源
配对为合成数据。不是新Smalltalk原生编译或在线collector证据，不提升required。

实际guard01因Python进程身份缺字段安全拒绝：0native、0body/resource/witness
保留。原矩阵与followup PID/创建时间/命令经另次CIM仍存活；矩阵10/36完整通过，
第11项receive/udisc/exported在finalize，followup仍等待，60连删未开始。
798运行源码及11接续输入hash不变；本轮没有业务调用或新鲜业务hold审计。

下一步先等待原矩阵/串行接续真实终态，再在恢复的原epoch执行配对只读候选；
随后新增factory definition/body/库目录/DB注册/引用实际捕获及同对象历史。全部
普通类型、跨层通路、局部merge、视觉/持久化/故障、真实Doge/AEB_Core、业务
恢复、最终包与43required保留，全目标active/full_delivery=false。
[代码及命令](../analysis/bde-experiments/2026-10-06/bde-newenum-declaration-development-01/README.md) ·
[离线控制](../analysis/bde-experiments/2026-10-06/bde-newenum-declaration-development-01/controls-01.json) ·
[编译证据](../analysis/bde-experiments/2026-10-06/bde-newenum-body-build-01/result.json) ·
[实际守卫结果](../analysis/bde-experiments/2026-10-06/bde-newenum-paired-busy-guard-01/result.json)。

## 2026-10-06 16:07 NEWENUM原库/DB资源观察器候选与进程守卫

新增native study、固定C#入口、严格原始数据契约及隔离驱动；未修改冻结的798
运行源码或11后续输入。原folder有序child身份、两份DBObject槽、两套入站引用、
原cache key/entry/registered-object、database token/generation均检查；边界子对象
保持显式shallow，full_body_capture/inverse_authorized=false，不提升正式NEWENUM能力。

源码审计扩展到23方法，证实DBObjectCache普通getter修改timeStamp/lastRead。
观察器直接读取storage，把额外读取带来的单调timeStamp变化单列实际cache_read_effects，
原before/current不修改；只在零写入study释放判定中归一化该一个audited槽，
其他槽/目录/引用变化、倒退时间和重新绑定均不放行。22项离线原始JSON类型/
别名矛盾/原身份/缓存/进程控制通过；独立x86 C#编译通过，110份源码/resource
和原exe hash归档。Smalltalk词法括号已检查，语法/运行等价未在线证实。

busy-guard-01因为CIM进程身份不完整而拒绝；busy-guard-02明确识别原48840/56296
仍运行并拒绝，均0native/0material/0witness，原错误保留。驱动不会在observer
超时后重发capture、跨epoch重绑或盲目清理原材料。第一次手工接续hash核对误
把basename拼到仓库root，修正为原开发目录后11份hash全匹配；798运行hash亦全匹配。

当前populated-matrix-04七项完整8阶段通过，第八项receive/sdisc/imported正在
history；0failed stage。两个原进程真实存活，followup仍waiting、0下游stage。
下一在线动作仍由原接续器串行复核/准备/fresh baseline/60连删，新的只读候选
必须等待全部相关进程退出及原状态恢复后执行。全范围、43required、业务恢复和
最终安装包保持未完成，不把离线构建/控制或有限study代替在线正式创建验收。

[候选源码与命令](../analysis/bde-experiments/2026-10-06/bde-newenum-resource-development-01/README.md) ·
[控制原输出](../analysis/bde-experiments/2026-10-06/bde-newenum-resource-development-01/controls-01.json) ·
[编译/归档](../analysis/bde-experiments/2026-10-06/bde-newenum-resource-build-02/result.json) ·
[占用拒绝](../analysis/bde-experiments/2026-10-06/bde-newenum-resource-busy-guard-02/result.json)。

## 2026-10-06 15:42 当前消息矩阵与NEWENUM独立离线审计

当前populated-matrix-04已有内容Module已4/36完整通过，每项8阶段含actual diff、
same-object undo/redo/undo、真正原状态恢复、材料释放和释放后独立检查。
第5项receive/cont/imported已通过创建和create-audit，正在history，无failed stage。
CIM确认原PID48840及followup-05/PID56296仍存活，后者尚无任何下游stage。
60项消息连删仍是已开发驱动和待执行在线矩阵，旧空Module36/36仍按原版本保留。

新增analysis独立开发目录，未改变冻结的798运行源码或11接续输入。
NEWENUM源码提取/静态审计通过，15个精确方法含原行号和方法/文件hash，0native。
原工厂使用record enumFolder/enumeration变量，第一次错误假设folder/definition导致
提取器拒绝，保留attempt-01；读取原语句后修正，并未发生模型调用。
枚举初始化/body修改/owner SGVariable/library children/DBProxy/cache-reference与
旧工厂autoCommitDatabase持久化语句均单独记录；实际Enumeration delete dispatch
和完整注册恢复尚未证实，DBProxy restoreInstVars不能据方法名视为恢复实现。
此证据不代表NEWENUM正式创建、同对象历史或完整required case通过。

下一步保留同一矩阵运行并串行接续独立复核/fresh baseline/60连删；NEWENUM先补
原folder/DB registration/reference/configuration材料。全部核心功能、业务原件恢复、
真实Doge/AEB_Core、最终包和43required仍未达标；本轮无业务模型调用。

[当前矩阵](../analysis/bde-experiments/2026-10-06/bde-populated-matrix-04/result.json) ·
[后续状态](../analysis/bde-experiments/2026-10-06/bde-populated-followup-05/result.json) ·
[NEWENUM离线审计](../analysis/bde-experiments/2026-10-06/bde-newenum-resource-development-01/result.json)。

## 2026-10-06 15:28 分页修复在线通过与串行后续执行

populated-matrix-04当前2/36完整通过：send/log/exported及duplex/udisc/local，
每项8阶段含创建、独立actual diff、原对象undo/redo/undo、完整恢复、材料释放
与释放后核对；第3个receive/sdisc/exported已通过创建与三次历史，收尾中。
PID48840真实运行，798份运行源码hash保持一致。首项的9个完整文档/12页已
独立复算；其中拒绝文档21873bytes确实2页，第一页error、第二页cursor-only
read成功，完整24原声明已严格验证。该单项复算0native，不提升全36或43required。

旧失败的同对象收尾resume-04及post-release audit-04均通过：11正式Tool.call，
再5observer/5Tool.call，原状态核对和释放完成，未重发已成功的修改。分页10
相关测试通过。证据汇总器7控制及原生setup7份原resource/SDK/exe/archive验证
通过，完整汇总仍等待current36/audit/final-study，不提升旧失败外层verdict。

一次性后续执行器followup-05已运行，PID56296绑定原matrix PID/UTC启动时间/
完整command，正在等待同一进程；CIM失败/超时不能当作退出，完整36终态才允许
后续审计、隔离编辑器准备、fresh基线、汇总、60连删与独立复核。4项离线控制
通过，798运行文件及11后续文件冻结。旧followup-04因继续加强其只读进程观察
合同而按source-change guard停止，任何后续stage均未开始；没有重启矩阵或ASCET。
后续实验不是后台常驻监控。当前各次完整交付/43required verdict仍false。

[当前矩阵](../analysis/bde-experiments/2026-10-06/bde-populated-matrix-04/result.json) ·
[首项原页复算](../analysis/bde-experiments/2026-10-06/bde-populated-first-case-audit-04/result.json) ·
[复用控制](../analysis/bde-experiments/2026-10-06/bde-populated-evidence-controls-01/result.json) ·
[串行执行控制](../analysis/bde-experiments/2026-10-06/bde-populated-continuation-controls-01/result.json) ·
[实际后续执行器](../analysis/bde-experiments/2026-10-06/bde-populated-followup-05/result.json)。

## 2026-10-06 14:55 已有内容Module真实初始化与原材料读取

populated-01首次setup失败：Source_cont已创建并放置，pin描述器重新读取
Main导致原生owner身份不匹配，原组件/意图/48请求帧和失败保留，未重发。
只读pin study01证明local_owner/local_pin各1、fresh_owner0；修正传入原
diagram并保持owner/membership/context对象身份，不按相同编号重新绑定。
study02的四参数BlockContextTemplate selector不支持失败及study03/04的
diagram类型假设失败保留；study05实际EtasAPIProcessDiagram/三参数通过，
两个原pin精确返回p2/p3、另一diagram均拒绝，所采完整图/dirty保持一致。

populated-02新组件setup通过：24声明/12消息/24节点/40引脚/16边，129次
操作observed。后续只读inventory因xmlOID真实ByteArray而旧validator要求
字符串失败；失败witness核对/释放通过、未创建新消息。代码改为完整20字节/
原aliasName字段相同/唯一身份，21控制及原24声明实际数据复算通过。

当前版本study-03完整原body读取在线通过，24声明/4配置根/246对象/591槽，
15observer+3正式Tool.call，0setter/store，完整图基线等于setup，全材料释放。
populated-matrix-03已启动当前版本36个八阶段正式生命周期，PID56920；首项
进入history，尚未终态。原matrix-03/audit-02通过结论按旧源码版本保留，只有
两份inventory Python/测试文件改变；当前矩阵797文件重新冻结，不跨版本升级。

[原失败](../analysis/bde-experiments/2026-10-06/bde-populated-01/result.json) ·
[身份诊断](../analysis/bde-experiments/2026-10-06/bde-pin-identity-study-05/result.json) ·
[初始化](../analysis/bde-experiments/2026-10-06/bde-populated-02/p_39de9c777c300ba55784952a/result.json) ·
[读取](../analysis/bde-experiments/2026-10-06/bde-populated-study-03/result.json) ·
[修复控制](../analysis/bde-experiments/2026-10-06/bde-populated-inventory-controls-01/result.json) ·
[当前矩阵](../analysis/bde-experiments/2026-10-06/bde-populated-matrix-03/result.json)。

## 2026-10-06 消息36组合线上终态及严格JSON实验控制

另补独立60项连删终态复核入口，实际全图/历史/声明/配置与原始WAL/checksum/
自动diff/after snapshot/原BDE draw-purity/source/current-archive版本重新计算。
12项合成篡改控制通过，含60合成case形态，0native；没有在线连删矩阵结果。
已有内容baseline增加全metadata/严格JSON/重复edge身份拒绝，38相关控制通过。
[源码和命令](../analysis/bde-experiments/2026-10-06/bde-populated-message-development-01/README.md) ·
[当前完整相关控制](../analysis/bde-experiments/2026-10-06/bde-populated-message-development-01/populated-topology-controls-01.json) ·
[独立终态控制](../analysis/bde-experiments/2026-10-06/bde-populated-message-development-01/topology-terminal-oracle-controls-02.json)。

matrix-03已退出，36/36完整通过全部8阶段；原状态恢复、材料释放、独立
核对及三角色/四基础类型/三scope轴覆盖均记录为true，pending=false。
独立audit-02仍运行，逐份核对288子报告、实际wire总数与229536归档源码
hash；不可将中途passed=false误作最终失败，也不可提前宣称复核通过。
audit-01因新复算器错误要求旧只读stage具有business_model_calls字段而失败；
修正为各stage已保存的明确零写入合同，不把缺字段当0，原失败保留。

消息连删实验代码改为严格JSON类型及有序内容相等：全图字段、配置、实际
patch、after snapshot、历史及原状态恢复拒绝bool/int和int/float替换。
20项相关离线控制通过、native_io_attempts=0；controls-02的拒绝错误文本
断言失败保留，修正测试期待后controls-03通过。运行源码797文件保持冻结。
尚未在线运行已有内容Module或60项连删，不提升全43required/跨模块/整体交付。

[原矩阵终态](../analysis/bde-experiments/2026-10-06/bde-message-lifecycle-matrix-03/result.json) ·
[独立复核进行中](../analysis/bde-experiments/2026-10-06/bde-msg-matrix-audit-02/result.json) ·
[20项当前源码控制](../analysis/bde-experiments/2026-10-06/bde-populated-message-development-01/topology-matrix-controls-03.json)。

## 2026-10-06 消息精确连删正式实验驱动与矩阵开发

analysis暂存目录已实现四操作实际Tool.call驱动及60个不重复原生适用组合的
串行矩阵。端点按声明/occurrence/方向/具体边绑定，占用输入的断线准备单独
作为正式可见日志，完整历史后恢复；核对全图/native/public/model/config与原
Module完整声明/两组引用，实际diff/零帧after snapshot、同对象三方向历史、
原BDE show/clear/Undo/config纯性及完整收尾。unknown或失败保存原材料并停止。
18项相关合成离线控制通过，含64选择形态及完整字段拒绝，0native；尚未执行
新驱动，不提升在线连删或全43required。实验observer释放与视觉截图仍需区别
于正式生产finalizer/视觉验收。原matrix-03运行期间未修改797份冻结运行源码。
[代码、离线结果和串行执行命令](../analysis/bde-experiments/2026-10-06/bde-populated-message-development-01/README.md)。

## 2026-10-06 13:33 消息矩阵现场结果及精确连删选择器

matrix-03真实PID21604仍运行，18/36完整组合通过，第19个send/sdisc/imported
正在finalize。144个已完成阶段/原状态恢复标志一致，797份源码hash未变，
创建session/request/token唯一；本次只核对记录，不增加在线调用或完整case。
新增精确端点/有向边/删除incident closure选择器的12项合成离线控制通过，
0native，尚未证明实际Module消息connect/disconnect/delete。已有内容Module
编排等待原矩阵终态；其余全范围及原件恢复/43required要求保留，整体未完成。
[现场快照及证据](../analysis/bde-experiments/2026-10-06/bde-current-status-133332/README.md) ·
[选择器离线结果](../analysis/bde-experiments/2026-10-06/bde-populated-message-development-01/topology-controls-01.json)。

## 2026-10-06 已有内容 Module 实验编排开发

在原矩阵冻结797份源码期间，analysis目录新增独立初始化器与正式生命周期编排：
24既有声明/12消息/24节点/40引脚/16连线，四primitive类型、三消息角色和既有fanout。
离线C#构建通过；11初始化控制、5完整基线/矩阵拒绝控制通过，0native。首个SDK
方法不存在编译失败保留；使用固定原生xmlOID/引脚identifier身份描述器，原生编译
和在线初始化尚未验证。全部288未来临时delivery路径最大242字符，不新增性能结论。
初始化必须等待既有矩阵真正完成、相同epoch和源版本、pending清除及实际进程退出，
不启动并行ASCET实验，不重试失败目录/unknown。13:22原矩阵12/36通过，第13个收尾。
新增代码不是公共工具交付或required case pass；全43、业务原件、其余全功能仍未完成。
[实现、失败和可复现入口](../analysis/bde-experiments/2026-10-06/bde-populated-message-development-01/README.md)。

## 2026-10-06 原双向消息失败定位与完整生命周期

完整原声明200→CURRENT218对象，5条变化/18新对象经原生和Python完整核对只属
Module别名缓存，未降低非缓存字段/共享引用守卫。独立只读材料路径明确区分
原创建图像与live CURRENT，普通inspect_attached和inverse-only inspect_original
保持严格。历史中的公共API类型标志改为互斥分类，原双向通信属性位守卫保留。
109相关离线测试/生产与eval构建通过；创建未重发。原对象正式三方向历史通过，
19Tool.call；完整恢复与释放通过，9Tool.call，allocator966→962/namespace32→33。
释放后独立全基线与0帧历史请求通过；6374源码hash/99证据零live复算通过。
旧矩阵/各失败原字节和verdict保留，业务恢复hold不变，full_delivery=false。
[逐项证据和范围](../analysis/bde-experiments/2026-10-06/bde-message-duplex-status-01/README.md)。

## 2026-10-06 消息矩阵新增结果

send_message/log/exported 已完成正式创建、实际 diff、原对象历史、完整恢复、
释放与独立核对。36 个计划组合完成1个；第二个 send_receive_message/udisc/local
创建后独立声明/configuration守卫拒绝，矩阵停止且原材料保留，没有重发。
跨case复用同一session/request_id/change_id的driver缺陷已确认并修复，4项离线
身份守卫测试通过；不是线上声明问题已修复的证据。完整交付仍未完成。
[原结果、冻结版本与可复算增量](../analysis/bde-experiments/2026-10-06/bde-message-matrix-status-01/README.md)。

## 2026-10-06 Module 消息完整原状态收尾与 namespace 生命周期限定通过

独立默认关闭message_body_original_release_v1已实现：完整真正creation-before声明/
cache/schema与最新durable head双射绑定，SGModule/DBProxy/primitive type/role/scope
及两组Module引用守卫；固定field patch、v5 actual/WAL/terminal query、严格release。
prepared/actual/terminal profiles分别v5/v5/v5，executorv4；普通变量profile不能接消息。

81项离线控制及生产/eval构建、两次跨连接零写入preflight通过。一次正式收尾9次
Tool.call，完整原声明/configuration/native/source/order/alias恢复，allocator966→962，
1source primitive/0declaration primitive；原材料/before witness释放、namespace30→31
退休，原pin拒绝提前退休，旧snapshot实际写前conflict，original_restored=true/pending=false。
该单例不能外推非零声明收尾、其他role/type/scope/已有声明Module或完整消息case。

新增6项真实v5 WAL的合成回复丢失/重复/错误proxy/type/role/引用拒绝与完整cache/message
终态提交通过，仅离线控制。释放后独立在线audit为5observer/3Tool.call，0模型写入，
完整fresh基线和44份文件hash不变；diff/duplicate/released query各0连接/0帧，finalize
未重放，历史query不宣称当前材料仍可核对。offline/preflight/live均788份source，后续
789/790份仅离线runner/test/只读audit差异，底层executor不变。五组封存复算3943次
hash/78项证据检查通过，0在线调用；原失败、原事件及新closure按版本保留。

业务29份材料和hold新鲜审计不变，业务原件仍未恢复。下一项扩展primitive消息的
send/duplex、其余类型/scope与已有声明Module正式生命周期/连删，然后NEWENUM/
enum/complex及完整跨层通路；全部视觉/持久化/故障/Agent/AEB_Core/原件/包/43required
要求保留，full_delivery=false，性能不阻塞。
[完整实现、真实证据、复算命令与剩余边界](../analysis/bde-experiments/2026-10-06/bde-message-finalization-status-01/README.md)。

以下消息“完整收尾未完成”为此前历史阶段，保持原版本与结论。

## 2026-10-06 Module 消息原对象历史及独立终态核对限定通过

一个隔离receive_message/cont/imported通过正式undo→redo→undo，18次Tool.call
包含3次真实原对象历史，三条回执verified_local。原SGModule/DBProxy/primitive
type/role/scope、完整声明/configuration、graphical/source/order/alias及两组引用
逐代核对，完整实际diff/cache origin/原材料进入WAL。原factory未重发，原失败
verdict保留；当前sequence4/reverted、pending=false，临时created/undo witness释放。

新增独立terminal audit为6observer/3Tool.call（含diff分页），0模型setter/store，
0创建/历史重放；原30份文件hash、完整native/public/models/configuration前后基线、
原native/source/order/alias见证不变。bd_diff与重复bd_revert各0连接/0请求/响应帧，
重复回执严格相同。175项相关离线控制及生产/eval构建通过；合成故障不冒充在线故障。
offline03与history01的784份source相同；audit785份仅新增只读driver。封存validator
复算通过2353次source hash检查及70项证据检查，0在线调用。

typed_original_restored=true但original_restored=false，原material/before witness保留，
source allocator高水位966保留redo。独立message finalizer尚未开发；不能复用普通
变量finalizer宣称完整原状态恢复。业务29份材料与hold新鲜审计不变，原件恢复仍阻塞。
send/duplex/其他type/scope/已有声明Module/enum/complex/NEWENUM、跨层通路、视觉/
持久化/故障、真实Doge/AEB_Core、原件、包与43required仍未全部达标，full_delivery=false。
下一项是独立SGModule收尾、零写入prepare、正式原状态恢复与namespace生命周期验证。
[真实结果、版本、复算命令和完整边界](../analysis/bde-experiments/2026-10-06/bde-message-history-status-01/README.md)。

以下消息创建及study为各自历史阶段，保持原版本与失败结论。

## 2026-10-06 Module 接收消息正式创建、实际 diff 与不重放终态恢复限定通过

隔离 receive_message/cont/imported 已接正式 prepare 和创建 WAL，完整声明图像
187→219对象、9条实际变化/32个新增对象，图形31→109、source23→71；角色API为
EtasAPIModelReceiveMessage，owner为指向原SGModule的DBProxy，严格核对数据库
OID/class与解析后原对象身份。保留完整类型/配置/引用材料，不缩减原声明覆盖。

原创建只执行一次；最初owner错误假设引起后像拒绝的failed结果保留，随后正式
reconcile从原材料补记完整actual/回执。原WAL一次started/observed，终态
applied_observed，pending=false，创建未重发。后续独立terminal audit为10observer+
2次正式Tool.call，完整fresh native/public/model/config与原actual/WAL一致，原日志
文件哈希不变。正式bd_diff及重复bd_edit各0连接/0请求/0响应帧，沿用原change_id。

105项相关离线控制和生产/eval构建通过；离线status复算通过778份源码hash和33项
证据，0在线调用。字典/Set仅按既有完整图像无序规则比较，ordered数据/schema/原引用
仍严格一致。原创建材料与before witness保留，临时current witness释放；尚未实现
message同对象history和完整原状态收尾，不提升完整required case或full_delivery。
各阶段源码版本分别记录，offline02与独立terminal audit匹配；原失败与夹具setup
错误均保留，不把query/observer/帧数当factory次数或把离线控制当在线故障。

业务安全审计确认29个原失败文件及hold不变，restored=false，0业务Cebra调用。
下一项独立message原对象history与两组Module引用守卫、零写入prepare，再undo/
redo/undo和原声明/source/allocator收尾。send/duplex、其余类型/scope、NEWENUM/
complex、完整跨层通路/视觉/持久化/故障/Agent/AEB_Core/原件恢复/包/43required仍待
完成；性能不阻塞。本次status同步只复算封存证据，没有新的模型修改。
[本轮代码、原材料、失败与复算](../analysis/bde-experiments/2026-10-06/bde-message-create-status-01/README.md)。

## 2026-10-06 Module 消息原声明材料与 pin 生命周期限定通过

独立 primitive-message collector/study在线通过，实际API=EtasAPIModuleBDE、owner=SGModule。
187原对象/177槽、13完整LookupTable/4配置根/22显式DB边界，两组owner引用均7条且
含SGProject；process、Association、代码变体原字段保留。15observer+1正式bd_read，
16连接/922request/906response实际Cebra帧。跨连接材料、namespace pin/提前退休拒绝、
原图形/source/order/alias及collected基线核对、release均通过，pending=false。
44相关离线控制和生产构建通过；早期构建/描述形状/Module特有类型失败原件保留，
失败见证均释放，0factory/history/store/业务调用。测试Module当前0声明/0消息；
此before study不授权逆向，也未接正式创建WAL，不能提升完整消息/flow/required case。
下一项：正式prepare的创建前材料绑定、真实消息after-diff、原对象双向历史与收尾。
所有原其余交付要求和业务hold保留。
[本轮代码、原结果、失败及复算](../analysis/bde-experiments/2026-10-06/bde-message-original-material-status-01/README.md)。

## 2026-10-06 已有定义 Enum 原状态收尾、材料释放及 namespace 退休限定通过

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

## 2026-10-06 已有定义 Enum 原对象三方向历史通过，最终收尾仍待实现

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

本次状态同步仅核对既有结果和回执，没有新的 live 调用或历史重放。

## 2026-10-06 Enum execution 候选通过离线与纯准备，首次实际 undo 终态未知

enum_body_exact_v1 独立执行合同、完整原声明/类型/引用 head 绑定和实际 WAL/终态
查询候选已接；96 项相关离线检查与生产 C# 构建通过，不能当在线历史验收。
8 observer 调用的 execution-profile preflight 通过，未 dispatch 执行，基线和源码
检查通过。后续正式首次 undo 经 2 次 Tool.call dispatch，但终态 Enum 类型代理
组合校验拒绝，返回 outcome_unknown，automatic_retry=false；redo 未执行。
隔离 pending=true，原材料及失败 witness 保留，original_restored=false；该失败路径
未完成最终 source 检查。下方准备记录的 sources_match 不外推至此正式失败。
下一项只读逐条件诊断与完整终态核对，再决定不重放 certifier 或精确修复。
Enum 完整历史/收尾、NEWENUM、其余全范围及完整 43 required 仍未达标。
本次只核对保存证据并同步状态，没有新在线调用或 undo 重发。
[原结果、WAL和验证边界](../analysis/bde-experiments/2026-10-06/bde-enum-history-execution-status-01/README.md)。

## 2026-10-06 Enum 原对象first-undo准备与独立引用读取限定通过

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

## 2026-10-06 已有定义 Enum 正式创建与实际 diff 捕获限定通过

正式 prepare→inspect→discard 两版各18连接、1712request/1694response帧通过，
Smalltalk在线编译成功；完整原native/public/model/config及graphical/source/order/
alias不变，prepared/study/witness全部释放。随后一次正式Doge创建：5次Tool.call，
整轮12连接、1512request/1500response帧；实际forward为1连接/241request帧。
原SGVariable、EtasAPIModelScalar/model_type=enum及selected definition身份一致，
声明126→144对象、10条实际变更、18个新增对象，原definition外部refs精确新增当前
SGClass。完整实际声明/图形/source/type/ref材料入原WAL；actual bd_diff及重复请求
各0连接/0帧。原创建未执行inverse，材料/before witness保留，原状态未恢复。

62相关离线测试与生产C#构建通过；offline02夹具reference descriptor不一致的失败
保留，修复夹具后offline03通过，验证器未放宽。三在线版本各750源码指纹，140封存
输入及原5条forward WAL已复算；复算使用归档共用验证器，0live，不是独立新oracle。
Enum同对象history/finalizer、NEWENUM原库生命周期及完整case/full delivery均false。
下一项从该保留的原Enum材料继续定义/type/refs guard与精确双向历史，再收尾释放。
其余原交付要求与业务恢复hold保持；本次同步文档没有新的模型写入。
[复算、原失败和下一步](../analysis/bde-experiments/2026-10-06/bde-enum-create-capture-status-01/README.md)。

## 2026-10-06 已有定义 Enum 正式材料候选合同离线验证

enum_body_v1/v3 原材料路由与候选 actual body/ref diff 回执已接。补齐完整 typed
generation、真实 prepare 和请求定义路径绑定，非字符串路径合同拒绝及确切材料
cleanup 控制；保持变量历史规则，不给 Enum inverse 授权。56 项相关离线回归与
生产/评估 C# 构建通过，22 相关源码归档。本轮 0 live/0 factory，无新 Smalltalk
在线编译、Enum 正式准备/实际创建/同对象历史证据，不提升完整 required case。
下一项隔离 prepare→inspect→discard 纯性，再真实 factory 类型/body/ref diff、WAL
及同对象完整历史。NEWENUM 和全部原交付范围继续保留，业务原件仍未恢复。
[代码、日志和边界](../analysis/bde-experiments/2026-10-06/bde-enum-create-contract-offline-01/README.md)。

## 2026-10-06 enum before 原对象材料与namespace保留验证

独立enum image policy/固定collector、原对象before study及严格Python验证器已接。
原变量profile不放宽；SGEnumerationDB/SGEnumeration、owner/支持声明/config按原槽
与原引用保存，foreign DB内容仍为显式边界，完整定义外部引用集合另记。材料放入
已有Main witness registry获得namespace pin，不授权inverse或从JSON重造对象。
两版隔离capture/check/release各16observer连接、886request/870response帧通过；
126对象/200槽/13LookupTable/4配置根/22边界。原component完整current witness与
native/model/config baseline不变；只有enum pin时实际retire拒绝，再核对释放，
pending=false。原组件当前0模型声明根，不能外推创建后enum SGVariable已捕获。
32相关离线控制与production桥接构建通过；study命令在eval编译边界内。没有正式
create prepare/WAL绑定或enum历史执行，full case/full delivery仍false。
下一项正式已有定义enum body-before与actual factory/ref diff，再同对象完整历史；
全部其他原交付要求和业务原件恢复缺口继续保留。
[版本、实际材料和复算](../analysis/bde-experiments/2026-10-06/bde-enum-before-status-01/README.md)。

## 2026-10-06 enum 定义真实角色与零模型写入读取验证

固定只读探针按folder.childrenKeys筛SGEnumerationDB，不加载全部图形组件。
实际已有定义Trial_Enum_20260930_123955，六角色58实例槽；SGEnumeration的values
为String、enumerationMap为SortedCollection，与SGReal variable合同不同。
8次observer连接/445request/437response帧，角色重复返回一致，完整current
native/source/order/alias见证与collected native/model/config baseline不变，临时
witness释放、pending=false。742项源码封存；eval/production桥接构建通过。
原编译命名冲突和getName selector失败均保留；后者独立核对 unchanged 后释放。
失败catalog连接的总wire计数缺失，不补造。没有enum创建或inverse执行，完整
body/inverse/full case/full delivery仍false。下一项为原enum body-before/DB边界
材料和正式同对象生命周期，全部原交付缺口仍保持。
[实际角色、失败及复算](../analysis/bde-experiments/2026-10-06/bde-enum-definition-status-01/README.md)。

## 2026-10-06 variable 原状态收尾、释放和namespace退休限定通过

新增默认关闭body_original_release_v1，依赖原body capture、同对象history和
original_release_v1；原生8-helper finalizer、Python严格v3/WAL/diff/终态查询和
release guard保留完整原before与latest head的双射schema绑定。不重建模型，
不改写旧forward/WAL，不在查询时运行setter/store或重发unknown。

preflight01编译/无写入dispatch准备通过。实际finalization driver01七次Tool.call：
完整原native/source/order/alias、typed/public/model和persisted config核对通过，
原声明终态亦一致，allocator20→16（1source primitive/0额外declaration primitive）；
随后旧声明无关release guard拒绝，原failed verdict保留。修复strict original-body
释放后driver02从已完成终态续跑八次正式调用，不重发finalization，原材料/witness
释放，scope generation27→28，旧snapshot实际写前拒绝，原native graph不变，
original_restored=true/pending=false。此原材料已释放，不得重跑旧undo/finalize。

104相关离线测试通过并绑定候选版本；前一104测试中两项引用已关闭live WAL
失败保留，改为封存pre-closure输入，生产关闭拒绝规则不松动。JSON实际diff与
重复/关闭查询0连接/帧；源码指纹和模型复核分开统计。业务29材料及holdSHA未变，
原件恢复false；全部其余类型/跨层通路/UI/持久化/故障/Agent/AEB_Core/包/43required
保持未完成。下一项enum/message原声明/定义材料与完整工具生命周期。
[已验证范围、代码与封存复算](../analysis/bde-experiments/2026-10-06/bde-variable-finalization-status-01/README.md)。

在线后补全v3终态查询commit记录：完整read_cache_evidence与精确分类/相等标志
写入WAL，避免只保存actual SHA而丢失CURRENT缓存证据。4项聚焦离线回复丢失/
不重发/完整查询持久化检查通过并绑定后续Python候选；并非新的在线故障实验，
此前在线与104测试封存保持原版本。

以下保留此前版本记录，变量收尾当前以上方证据为准。

## 2026-10-06 variable 同原对象三次正式历史通过，最终原状态恢复待完成

已有隔离在线结果history-tools01为passed=true：18次正式Tool.call、undo/redo/
undo-again三次verified_local，原模型OID保持绑定，完整声明/图形/source/顺序
目标通过，typed original restored=true，isolated_pending=false。preflight02
零写入准备及六项原生detached-image缓存控制通过。cache副作用完整记录，原生
与Python守卫严格拒绝语义/config/不可变原值或未知新对象变化；namespace映射
绑定原WAL，恢复查询不谎称缓存漂移后整幅终态仍完全一致，不盲重发执行。

原forward及preflight01 failed verdict保留，无forward或已完成历史重发。原创建/
before材料仍保留；initial declaration/cache baseline、allocator收尾/释放/namespace
退休尚未完成，original_restored=false。当前finalizer只覆盖literal/operator。
全部其余类型、enum/message、跨层通路、UI生命周期、持久化/故障、真实Agent/
AEB_Core、业务原件恢复、安装包和43required继续未完成；本增量不提升完整case。
此为保存证据的核对与文档同步，没有新live调用或新性能测量。
[在线证据及下一实现](../analysis/bde-experiments/2026-10-06/bde-variable-history-status-02/README.md)。

以下条目保留此前版本结果；variable历史当前状态以上方新证据为准。

## 2026-10-06 variable 原声明before接入prepare，实际after和diff已进入正式WAL

默认关闭的新body_v1材料为当前已审计SGClass/SGVariable/SGReal固定路径捕获工厂dispatch前的原对象/LookupTable存储/owner/config图像，并记录真实after；103→113声明原生对象、7实际变化、10新对象，原模型ref=v105。pure prepare/inspect/discard在线通过。写前guard已接入原声明核对，禁止普通delete/recreate inverse；负向在线冲突和unknown故障尚未验收。

正式创建只有一次，原driver第三次Tool.call后因Dictionary导出两条entry次序变化失败，完整原WAL为applied_observed，原verdict保留。补验使用既有完整native unordered比较语义，仅Dictionary/Set/对象表无意义枚举顺序可变化，字段和ordered arrays仍严格；两次跨连接原材料、完整current native/public、独立图形witness均核对，2次正式bd_diff/原请求重复查询0连接/帧，无create/undo/setter/store重发，临时current witness释放，原材料与before witness保留、pending=false。39相关离线测试通过，非完整case。

variable正式双向历史、最终原模型恢复/收尾仍未执行。下一代码交付为使用capture01的真实原before材料进行同对象detach/reattach及owner/config恢复和undo/redo/undo；旧variable-capture-02不得补造before。全部enum/message、全适用类型、跨Class/Module/Project/A2A/XPass、视觉/持久化/故障/真实Agent/AEB_Core/原件/安装包/43required保持未完成。

[实际材料、WAL、保留失败和0live复算](../analysis/bde-experiments/2026-10-06/bde-create-variable-body-status-01/README.md)。

## 2026-10-06 variable 当前原声明图像：在线只读增量

同 epoch 隔离 retained variable 当前 after 状态，128原生对象/212槽/15LookupTable/四配置根/23显式外部数据库边界；跨连接同对象核对并释放。10个固定observer调用，实际534request/524response帧，非Doge Tool.call及非性能实验。完整原图形native/source/physical/drawing/alias witness和native/model/config基线不变。39项相关离线测试通过，原失败及分别cleanup保留；0live复算分类核对源码/模型证据/业务29文件与hold，原件未恢复。

当前after不能补造旧before，也不授权原variable创建inverse；complete_body_capture/inverse_authorized/完整case/整体仍false。下一步接入新创建prepare之前的原body/config/definition材料，再做正式同对象undo/redo。enum/message、全类型、跨Class/Module/Project/A2A/XPass、视觉/持久化/故障/Agent/AEB_Core/原件/包/43required保持未完成。

[代码、实际范围、保留失败及复算](../analysis/bde-experiments/2026-10-06/bde-create-variable-declaration-images-status-01/README.md)。

## 2026-10-06 variable body：四角色55槽的只读原生审计通过

fixed eval-only declaration inventory连接同epoch保留variable创建材料，确认owner=
SGClass、model=SGVariable，两声明容器为LookupTable，并导出34+15+3+3实例槽、原始
alias ByteArray与精确primitive membership。完整native/models/persisted config前后相同，
current完整native/source/physical/drawing/alias witness unchanged并释放；没有创建重发或
setter/store/inverse。01/02类型拒绝、03 count:拒绝保持failed，各自readonly witness
另经独立严格unchanged核对后释放，failed result字节未改。04/05分别为版本绑定两/四角色。

反编译定位addVariable→addVarOnly→addVarLocal及deleteModelElement→removeVar→callback/
autoCommit；内部addVarOnly初始化access/parameter/scope，不是无副作用redo。LookupTable
实际schema为elementCount/keys/values；owner的时间戳/实现/defaultData/Class配置及定义
依赖仍需bounded闭包捕获。55槽不是完整body恢复；complete_body_capture/inverse_authorized
false，原variable创建材料仍保留。完整case/全类型/通路和原最终交付门槛不提升。
[实际结构、源码链与下一交付](../analysis/bde-experiments/2026-10-06/bde-create-variable-declaration-inventory-05/README.md)。

## 2026-10-06 namespace身份边界：ID复用及自动退休限定通过

fixed finalizer v2在allocator patch前关闭redo、阻止原scope普通写；Main完整witness
纳入pins。完整原模型核对、材料/witness释放后，read调用已有lifecycle retire并从
global highWater发行新generation。严格v2 namespace证明保留actual WAL；v1仅解释历史。
生成staged executor与canonical guards一致，未知执行不盲重发。

两个新literal/operator流程各29次正式Tool.call（create5/history15/finalize9），6次实际
history、2次finalization；完整原native/source/order/alias及已捕获配置恢复，材料与最后
witness释放、pending=false。仅witness保留时真实retire拒绝且原witness不变；原生26项
pin控制通过。退休前write preview由barrier拒绝，退休后旧snapshot实际create的WAL
仅intent/finished(conflict)，未prepare/execute。两个旧released scope另各1次正式拒绝验证，
无旧undo/finalize重发。实际同component的literal/operator在generation24/26复用n17。

5,839项0live复核分项为源码5,760、actual24、namespace41、inputs14；共享完整source
validator未冒充独立重写。29项相关离线测试通过。业务29份恢复文件/holdSHA不变，
原件未恢复。该身份缺口获得两类型限定证据，未新增完整case；全部类型/通路/UI/
持久化/故障/Agent/AEB_Core/原件/包及43required保持，生产默认关闭。
[代码、复现、封存和范围](../analysis/bde-experiments/2026-10-06/bde-create-namespace-status-01/README.md)。

## 2026-10-06 此前创建历史与原状态收尾：literal/operator 限定通过

两个隔离Main分别完成同一原创建对象undo→redo→再次undo，6次实际历史执行；
完整native/source、物理/绘制顺序及alias核对通过。随后完成两次原状态finalization，
allocator18→16、20→16，完整原baseline核对后关闭redo、释放材料和最后witness，
pending=false。成功历史路径26次、成功收尾路径13次正式Doge Tool.call，不包含
所有前置/失败调用；literal收尾续跑未重发已执行source patch。原失败verdict保留。

31份关键JSON封存、5,116项零在线复核通过，包括源码指纹；source复核使用共享
严格validator，不冒充独立重写oracle。这是版本绑定的已保存实验，文档同步未新测live。
本图此前实际diff响应200,497→8,657字节的返回层结果仍有效，不外推read性能。

新发现身份边界：allocator恢复后可能复用ID，需集成收尾期间写入阻断、scope
retirement/完整pins及旧snapshot写前拒绝。该补验前不提升完整case或开启生产。
literal/operator原witness generation分别14/18，实际retire必须再核对inventory。
这两个创建材料已释放，不得重发旧undo/finalize或盲用旧preflight。

variable/enum/message声明body历史、全类型/层级/Class/Module/Project/A2A/XPass、
视觉/持久化/故障、真实Agent/AEB_Core、业务原件恢复、安装包及43required仍缺。
[结果、封存和边界](../analysis/bde-experiments/2026-10-06/bde-create-history-and-finalization-status-01/README.md)。

## 2026-10-06 此前创建历史：首次实际undo与回执投影修复

literal 同一原创建对象的首次正式 undo 已执行并保存完整实际 native/source/
物理与绘制顺序证据，typed n17/p18 移除，pending=false。原在线实验因实际回执
漏 graphical_differences 摘要而失败，其 failed verdict 保留；redo 未执行。
新回执投影校验完整准备/实际证据和 owner，不重发 undo，不由成功布尔值替代
完整 patch，不向 outcome_unknown/缺 ready 授予 redo 标志。

修复后3次正式离线 Tool.call（已完成 undo duplicate、history diff、forward diff）
通过，0 ASCET连接/帧。原 WAL 与失败结果字节未变；本图正式 diff 响应
200,497→8,657字节，减少约95.7%，实际typed/after/顺序覆盖保留。nested create
native/source完整材料继续保存在WAL。77项相关回归通过，其中7项投影边界检查。
这属于返回层验收，不是新在线模型验证或创建redo验收。

allocator高水位18保留用于原对象redo，完整原source baseline/final release仍缺。
下一项从已完成undo head开始同epoch/current核对，再正式redo→再次undo。
全类型/通路/UI生命周期/故障/Agent/AEB_Core/原件恢复/包及43required仍未完成。
[复现、封存及边界](../analysis/bde-experiments/2026-10-06/bde-create-history-projection-increment-01/README.md)。

## 2026-10-06 创建增量：实际diff捕获与variable元数据恢复

正式Doge Tool.call的literal、operator `+`、修复后variable正常创建通过，分别
14/14/15次调用；完整native/public/model及WAL跨连接核对、actual diff、相同请求
重复返回通过。离线diff与duplicate均0连接/帧；编辑回执复用实际捕获结果，
additional_ASCET_reads=0，不表示整个实验没有ASCET reads。

variable原创建已实际执行但capture遇EtasAPIModelScalar>>getOID，原outcome_unknown
与失败verdict保留。修复canonical m_/xmlOID、固定metadata reconcile及Float receipt
编码后，恢复03经12次正式调用确认同一创建，0创建重发/model setter/store，完整
当前native/source/order/alias witness不变，pending=false。恢复01编译及恢复02编码
失败均保留；它们的只读witness仍保留。原forward材料及before witness等待原件历史。

最新严格validator核对完整Main、typed model OID集合、唯一声明增量、native保留
并集及allocator显式禁止rewind；改动后正常variable-02在线通过。其native保留
并集345→417、source保留并集99→195、allocator16→20。旧literal/operator在线
结果绑定各自旧源码；本批使用当前共享validator离线复核，不升级旧在线版本。

图形原对象创建undo/redo、声明body恢复、allocator策略仍缺；所有类型/enum/message、
跨Module/Project/Class/hierarchy、持久化/故障、真实Doge agent/AEB_Core、原BDE
视觉生命周期、业务原件恢复与安装包仍未完成。managed_create_inverse=false、
original_restored=false、complete_case_pass/full_delivery=false；43required不提升。
[实际结果、源码及复核](../analysis/bde-experiments/2026-10-06/bde-create-capture-status-01/README.md)。

## 2026-10-06 此前开发检查：创建材料尚未在线验收

新增固定create材料捕获、严格receipt校验、adapter和actual WAL衔接代码；均是
显式实验profile。修复creation误调connect_material，已收到prepared但材料无效时
只discard确切记录；初次prepare回执未知时不猜测清理或重试。4项故障边界测试和
74项相关离线回归通过，C#桥接构建通过。本轮0live调用。

新增Smalltalk代码尚未在线compile/prepare/create验证。图外声明body恢复、allocator
高水位政策及created原对象undo/redo未完成；managed_create_inverse=false。
不新增完整case通过，不外推全部type/message/enum创建恢复。
[命令、范围和源码SHA](../analysis/bde-experiments/2026-10-06/bde-create-capture-offline-check-01/result.json)。

## 2026-10-06 最新在线增量：打开原 BDE 后局部历史保留独立移动与文本

修补store重生成source String/Point带来的假owned引用差异：只在冻结规划中绑定
精确结构位置的等内容String，或实际before/after同对象同坐标的Point来源对应。
保留A实际历史的对应关系，后来B移动产生的新Point仍保留自身；实际CURRENT、
owned cells、端点、共享和完整values/sharing核对不放宽，不开放任意identity map。

四成功场景（一个String版本、三个当前Point桥接版本）共122次正式Tool.call、
12次A undo/redo/再次undo、16对原画布show/clear。独立literal/move保留，端点重叠
preview/实际inverse均conflict、0setter，失败WAL仅intent/finished。完整native/source/
physical/drawing/alias/deep Undo/dirty/persisted owner configuration检查通过；最终
原引用恢复，材料全部释放，pending=false，业务模型调用0。截图视觉仍未验证。

3198份输入与版本源码封存，47339项0live复算通过，包含actual WAL/native patch完整
重建、source值/sharing、分页、零写冲突和严格恢复。source/configuration仍用封存
pure validator；不宣称独立重写。旧辅助preflight有5份记录源码未在本批找到，清单
保留，成功实验自身源码全按hash归档。V1误识零写head回执、V2误拒expected conflict
分页；原verifier与失败保留，V3按确切契约核对，不跳过错误页。102相关离线测试通过。

其他结构/独立node/edge/顺序/共享/在线故障、视觉生命周期、create双向原对象历史、
全部类型、Class/hierarchy/Module/Project/message/A2A/XPass、持久化、真实Doge/AEB_Core、
业务原件恢复和包仍未完成。29份业务材料及hold原字节不变，原件未恢复。
43required没有新增完整case；生产默认关闭，complete_case_pass/full_delivery=false。

[本批封存与复算](../analysis/bde-experiments/2026-10-06/bde-open-editor-local-history-increment-01/README.md)。

## 2026-10-06 上一增量：原 BDE 四代实际 diff 在线绘制

在新的隔离 operator_fanout 原编辑器上，正式 connect、undo、redo、再次undo
四代实际 diff 的 show/clear 三轮通过；正式 native 回执增加 `overlay_status`、
`drawing_calls`、`expose_callbacks` 及 clear absent 检查后，追加一轮通过。
共108次实际 Tool.call、12次 inverse、16对 show/clear。每次实际原画布draw>0、
callback error=none、exact token/scope、deep Undo、dirty、完整 Main native/source/
physical/drawing/alias 和 persisted owner configuration 图检查通过；最终恢复、
成功材料释放，pending=false。正式返回仍注明 visual unverified。

新增隔离编辑器准备入口 `bde_main_workflow.py --prepare-editor`，在基线前显式
记录 `Edit()` 的配置影响（4 roots，27→29 nodes），再建立正式基线。overlay
仍只复用exact-owner已打开编辑器；打开不是无副作用read，不调用未知编辑器save。
配置证明限定已有storage graph，不外推effective configuration或全数据库纯净。

原失败 `bde-connect-local-history-display-tools-02` 保留：forward绘制/清除纯净
通过，但带独立literal B的local source规划出现SGLiteralGODB TOUCHED_CELL_CONFLICT。
局部inverse零dispatch，独立cleanup02先B后A，完整原引用恢复并释放。该UI条件下
无关编辑保留仍未通过，未修改生产source guard使它强行通过。

2490份实际输入、版本源码、WAL、native/public、UI/configuration和业务恢复材料
封存；40746项0live复算通过。配置使用封存pure validator，未声称独立重新实现。
67项相关离线回归通过。截图、缩放、滚动、关闭重开、其他family/scope、真实
故障/持久化/跨层流程、Doge/AEB_Core/包仍未交付。业务原件未恢复，29份材料与
hold不变，完整required case不提升，整体complete=false。

[封存、范围和复算](../analysis/bde-experiments/2026-10-06/bde-native-history-display-increment-01/README.md)。

## 2026-10-06 上一增量：独立move、端点冲突与历史显示路由

封存六个限定成功场景：三结构operator_fanout/literal_fanout/operator_chain各自
literal B历史；新保护代码在operator_fanout的move B、端点重叠和literal兼容检查。
共134次正式Tool.call、18次A inverse执行。独立move与literal期间A undo/redo/
再次undo保留B；端点move后preview及实际旧inverse均conflict、0setter，完整witness
未变，失败WAL只有intent/finished。B cleanup后A历史通过，最终原native/source/
physical/drawing/alias及完整witness恢复，成功材料全部释放，pending=false。

source逻辑投影新增固定protectedNative集合，来自实际before/after/CURRENT native
捕获；source structural correspondence不能把新实际Point重新对应到脱离旧Point。
connect和field inverse都使用保护，原owned scalar/reference/index/key/member与
端点/顺序守卫未放宽。原网格错位、connect shared_target及B inverse shared_target
失败分别保留，独立cleanup01/02/03准确恢复；03失败期间A三次执行仍真实保留B。

原BDE展示入口现在解析原祖先组件绑定并绘制请求那一代actual diff，允许verified_local
历史；connect ancestry离线完整核对，show检查该终态，clear不读/写模型。4新增
history测试和67相关回归通过。在线display01因UI_EDITOR_NOT_OPEN于callback注册前
失败，clear/purity和A cleanup01通过；没有原BDE视觉验收，也没有自动创建DEFAULT
Project或重发模型编辑。原失败verdict未覆盖。

3484份原输入/差异源码/完整WAL/API/native/恢复证据封存，26936项离线核对通过，
0ASCET调用。从actual native patch重建的完整图与预先计算目标相同；source全投影
由封存的pure validator检查，不将它标成独立重新实现。29业务材料和hold原SHA不变，
业务原件未恢复。旧三结构证据绑定原版本，新native保护目前仅operator_fanout补验。

独立node/edge创建、顺序/共享依赖冲突及在线故障、原BDE视觉、create全类型、Class/
hierarchy/Module/Project/message/A2A/XPass、持久化、真实Doge/AEB_Core、原件恢复、
安装包仍未交付；43required未新增完整case，full_delivery=false，生产默认关闭。

[封存与复现](../analysis/bde-experiments/2026-10-06/bde-connect-local-history-increment-01/README.md) ·
[机制与通用性](bde-source-native-identity-projection.md)。

## 2026-10-06 上一增量：局部连线正式历史与严格原引用恢复通过

`bde-connect-local-history-tools-07` 在原隔离PID45476/32641的operator_fanout Main，
经22次正式Tool.call完成connect A、独立literal B、undo A、redo A、再次undo A、
cleanup B。三个A的实际历史都保留B；正式preview、自动实际diff、重复请求和
公共只读terminal query通过。最终retained原native/source对象引用、physical/
drawing/alias全匹配；完整独立原witness恢复，A/B/witness材料准确释放，pending=false。

前轮tools-04恢复typed图却留下活动source旧值；tools-06活动语义恢复，但严格原source
引用未恢复。原verdict不改；tools-05旧pass不当严格identity证明。source-only repair-02
及其准确material release-02已恢复失败隔离组件，没有重发原edit。新修复保留同epoch
实际store/source对象来源，将field inverse投影到CURRENT，同时恢复原引用。
固定repair release另核对请求token/owner与retained execution，未开放生产功能。

42相关离线测试、production bridge构建和零写native预检通过。690份实际源码版本、
完整actual WAL/祖先链、typed/public/native变化、顺序及最终原终态经3242项离线
核对通过，0ASCET调用。该核对不代替全部source投影独立复算或整批独立封存。
29份业务恢复文件和hold原SHA保持不变，业务原件仍未恢复。

本轮只验证一个结构与独立literal B；其他结构、独立node/edge、几何/顺序/端点/
共享依赖冲突及在线故障仍未通过。局部历史默认关闭；原BDE显示、全类型、接口/
通路、持久化、真实Doge/AEB_Core、原件恢复、安装包仍未交付。43required没有新增
完整case pass，full_delivery=false，性能不阻塞。

[本轮证据与复现](../analysis/bde-experiments/2026-10-06/bde-connect-local-history-status-01/README.md)。

## 2026-10-05 上一增量：连线局部回退完整零写规划通过

固定 eval-only planner 接入实际 owned connect head、完整 typed/native/source 和
physical/drawing 三方目标，实际源字段/index/key/member 前置守卫保留；没有执行器。
source 包装对象经 store 重生成时使用已审计身份对应投影，独立 Python 检查完整值、
双向sharing、实际 owned cells、全部脱离anchors及完整候选，没有将逻辑投影冒充CURRENT。

operator_fanout、literal_fanout、operator_chain 三种隔离 Main 结构各22次正式
Tool.call 完成 connect A、无关 literal B、零写计划保留 B、cleanup B、精确 A 三次历史
以及原件恢复。66次调用是实际准备/清理，**不能计为正式局部连线回退通过**。完整
typed/public/original native/source/alias/physical/drawing witness恢复，connect与规划witness材料释放，
pending=false。独立literal B的正式可逆历史材料尚未验证释放，不能宣称全部registry
清空。规划器调用完整witness前后未变。

保留两类原失败：raw source 把68个重生成包装对象都作为 introduced 而误拒独立 B；
另一次 driver 选中 source endpoint literal，变宽后端口位置改变，原native dependency
守卫正确拒绝。独立修改案例随后明确选择 endpoint owner 外的 literal。首次C#构建
作用域错误也保留，没有在线调用。未减少read/oracle覆盖或放宽端点身份/几何守卫。

7项新 source integrity 负例及39项相关离线测试、production build通过。7102份原
输入封存，v2独立18742项核对通过，0live调用。v1诊断 touched-cell 无序列表顺序
误判保留；v2只将无序诊断项按内容集合核对，完整实际字段、引用、sharing、有序
物理/绘制成员保持严格。业务29份材料和hold原SHA不变，业务原件仍未恢复。

局部执行器、正式actual-head journal/preview/recovery、后来独立node/edge与冲突矩阵
仍未通过；不提升43required。所有UI/create/type/interface/flow/persistence/真实Agent/
AEB_Core/original restoration/package保持原目标。full_delivery=false，默认production关闭。

[完整结果、源码与复现](../analysis/bde-experiments/2026-10-05/bde-connect-local-plan-increment-01/README.md)。

## 2026-10-05 上一增量：新增连线正式Tool.call精确历史通过

Fixed Main connect已接production可编译宿主、adapter、正式journal/preview/bd_revert
与公共bd_inspect recovery。固定代码及显式isolated Trial_*、Main、staged/material/
history profiles仍必须；没有开放Agent任意Smalltalk，production默认关闭。

三种隔离结构literal_fanout/operator_chain/operator_fanout共57次实际Doge Tool.call，
完成3forward和9history执行：connect→undo→保留原created/registration redo→再次undo。
自动完整actual per-head WAL、离线diff/重复/变更request拒绝、固定公共终态查询通过。
完整typed/public、原native/source/别名/物理/绘制witness恢复，材料释放，pending=false。

本次修正锁顺序、prepare失败清理、full Main门控、actual顺序/绘制归属及compact diff。
144项相关离线回归（16项新coordinator测试）和宿主构建通过。丢回执/磁盘失败/错误
ownership/status补账仅离线验证；当前不能宣称online故障恢复或local merge通过。

tools01在read JSONL解析失败，未edit；tools02全部history通过但最后recovery错误发至
bd_diff，被schema拒绝。两份原失败保留，独立audit/准确材料释放通过；final-source
tools03/04/05全链通过。额外1次正式终态audit不计入57次成功流程。

1388份原字节输入封存。首次独立verifier用field descriptor作value CURRENT失败，
原seal/失败保留。v2核对完整value/descriptor/identity及ordered成员，仅Dictionary/
Set按内容多重集合比较，17712项复算通过，0live调用。29份业务恢复材料及hold SHA
均不变，业务模型调用0；业务原件仍未恢复。

connect后续独立变化保留/冲突、原BDE显示、create及全类型/接口/跨层/Class/Module/
Project/message/A2A/XPass、持久化、真实Agent/AEB_Core、业务恢复与安装包保持全部
范围。43required不提升，complete_case_pass=false/full_delivery=false；性能不阻塞。

[源码、正式结果与复现](../analysis/bde-experiments/2026-10-05/bde-connect-formal-increment-01/README.md) ·
[独立v2复算](../analysis/bde-experiments/2026-10-05/bde-connect-formal-increment-01/README-verifier-v2.md)。

## 2026-10-05 上一增量：新增连线原生精确回退和原对象重做通过

已实现fixed `bde_connect_history.st`与独立Python actual/preparation验证，接eval
宿主固定命令。修正capture对terminal subset的调用时机、完整source anchor参数和
实际union冻结时机；拒绝prepared复用及未确认的prior execution，写前核对共享
native/source目标。alias tombstone预留已发出的读别名，不改变native allocator或epoch。

隔离Main literal_fanout、operator_chain、operator_fanout共4条真实原生流程通过：
实际connect→undo→保留原created与registration redo→再次undo。4forward/12history
执行；完整typed/native/source/别名/物理/绘制原witness恢复，全部材料最终释放。
重复fanout连线别名由e4变为e5，预留别名没有复用。6次旧owner/request或错误signature
执行写前拒绝；完整actual head前后相同。公开API独立值核对覆盖全部fixture节点、
pin及连线端点/type/route多重集合；原对象身份与完整顺序另由native材料/witness证明。

164相关离线回归、production宿主构建通过。封存3976份输入原字节/源码/业务材料，
独立13680项复算通过，0live调用。最初独立Python validator对survivor字段修改拒绝
不足，针对性负例暴露后已增加exact survivor/metadata/count检查，最终负例通过。
原29份业务材料与hold SHA未变，业务实例模型调用0，业务原件仍未恢复。

本轮formal_tool_calls=0，仍为fixed eval/exact CURRENT路径，不能宣称正式Agent
connect journal或局部回退已完成。下一代码项为正式自动actual WAL、per-head owner
和unknown恢复，再做真实Tool.call链。原BDE显示、全类型及跨层/Class/Module/Project/
message/A2A/XPass、持久化、Doge/AEB_Core、原件恢复和安装包保持全部范围。
43required不提升，full_delivery=false；性能仍不是功能交付阻塞。

[封存结果、复现命令与独立复算](../analysis/bde-experiments/2026-10-05/bde-connect-history-increment-01/README.md)。

## 2026-10-05 上一增量：connect插入材料捕获前置通过

新增固定native `bde_connect_material.st`，支持prepared原native/source/顺序及
端点绑定捕获，actual-created原对象/端点registration保留和attached/detached检查。
配套`bd_connect_material.py`严格核对phase、owner、精确pin、actual物理/绘制单对象
插入及capture-only合同。没有新增Agent工具或任意Smalltalk入口。

`bde-connect-material-preflight-02`在同一隔离PID45476/32641完成literal_fanout、
operator_chain、operator_fanout三组零写prepare/跨调用inspect/discard，以及9次
非法调用拒绝。完整original native/source、IDs、物理/绘制顺序witness未变，所有
prepared与witness均释放。model_setters=0/store=false，不是正式edit验收。

当前源码155项相关离线回归通过；production宿主构建通过。首次eval宿主因C#局部
变量作用域冲突构建失败，原build日志/源码保留。actual-created在线捕获、正式journal
接入、connect首次精确/局部inverse与retained原对象redo仍未通过；不提升完整case。
全量block类型、跨层/Class/Module/A2A/XPass、原BDE显示、持久化、真实Doge/AEB_Core、
包和业务原件恢复保持原目标，整体full_delivery=false。

[代码、真实前置与离线独立复算](../analysis/bde-experiments/2026-10-05/bde-connect-material-increment-01/README.md)。

首次独立verifier把fanout Dictionary的键枚举视为有序序列而失败。v246的两组
原key/value引用均未变，只有枚举次序交换；原verifier和manifest字节保留。
独立v2按原生Dictionary/Set内容语义比较全部引用及重复数，fields、Array/
OrderedCollection和physical/drawing仍完整有序核对。v2在schema-only行缺少value时
失败，v3仅对实际collection value归一化，schema原样完整核对；两次verifier失败均
保留。[当前复算命令](../analysis/bde-experiments/2026-10-05/bde-connect-material-increment-01/README-verifier-v3.md)。
v3独立离线2468项核对通过，0 live调用；1575份原封存文件和全部源码SHA完整核对，
29份业务恢复材料及hold原字节均未变，业务原件仍未恢复。

## 2026-10-05 上一增量：Main 断线/删除双向实际历史通过

`bde-managed-topology-disconnect-02`和`bde-managed-topology-delete-01`各10次正式
Tool.call通过：A→独立literal B→inverse A保留B→redo A保留B→inverse redo保留B→
cleanup B。完整actual typed/physical/drawing head自动写入WAL；fresh原生/source/
端点/graphical证据与durable历史一致。两条流程均恢复完整原对象、别名、source
共享引用、物理/绘制顺序，完整witness释放。不是仅preview或私有对象实验。

首次失效隔离scope的metadata认证已通过，未重放模型编辑或store。标签化parent/
drawing effect和topology proof的宿主解码、完整恢复原始证据及统一编码比较已修正；
正式恢复query完成实际diff、terminal和head移交。认证原实验的解码失败原件保留。

恢复方向另一次`False>>+`写前失败保留：Smalltalk二元运算优先级需要显式括号。
真实完整CURRENT及原引用、端点和顺序证明0模型操作/0绘制赋值、未store和未
normalization。固定零步放弃后正式query记录rejected；执行序号的metadata补全
保留原失败proof，以不同request完成cleanup。编译失败、冲突和原失败result均未
覆盖。新流程执行前已精确恢复隔离baseline；隔离pending现为false。

当前源码145项相关离线测试通过，包括编译执行C#transport的标签/畸形证据拒绝；
production宿主构建通过。新包保存9370份文件，独立离线9529项复算核对封存hash、
WAL链、full actual typed/order head、freshproof和最终baseline。复算0live调用，
不能当作新增在线场景。业务29份材料与holdSHA仍匹配，业务模型0调用、原件未恢复。

范围限定为同一隔离epoch/Main的disconnect/delete和独立literal B，门控默认关闭。
43required仍只CONTRACT-02离线accepted，整体full_delivery=false。下一步补
geometry/order/dependency冲突、connect/create双向历史和原BDEshow/clear；全部
类型/层级/Class/Module/Project/message/A2A/XPass、持久化、真实Doge/AEB_Core、
业务原件恢复和安装包仍未完整验收。性能不作为本次功能交付阻塞。

[完整结果、代码、原失败及复算](../analysis/bde-experiments/2026-10-05/bde-managed-topology-lifecycle-increment-01/README.md)。

## 2026-10-05 历史增量：managed topology 接入，首次在线 redo 未通过

固定 Main disconnect/delete managed 执行器已接正式工具 preview/revert、actual
head WAL、独立完整 typed/order/graphical proof 与恢复查询。采用第七项显式门控，
默认关闭。最终 144 项相关离线回归、固定执行器和 recovery reader 的零写编译通过。
这些结果不是 required case 验收。

`bde-managed-topology-disconnect-01` 实际运行 8 次正式 Tool.call 后，redo 失败于
`actual_head_normalization`，保留 outcome_unknown。原生/source 归一化已经执行，
原材料只读诊断证实 native/source、physical/drawing、端点目标都匹配；但缓存
diagram 和连线别名被刷新，generation 7→10，所以完整原身份/typed 核对失败。
不得把目标材料核对或成功预览算作完整 redo 成功。

原因是归一化前插入的通用 reader 触发旧 checkpoint 不匹配。已移除该 reader；
fixed material executor 本身会捕获真实 post-store images，再归一化并更新 checkpoint。
修正版仅零写编译预检通过，完整写入重验尚未运行。隔离 PID45476/32641 的失败
恢复材料、pending 与旧证据均保留，无重发、重绑、清 pending 或业务库调用。
delete 新 managed 生命周期也未在线执行。

只读诊断先后保留了 reader 变量重定义编译失败、CURRENT owner expired 和诊断
对象比较错误；诊断06从 retained material 独立核对并通过完整只读 witness，仍未
认证 terminal、恢复隔离原件或放开实例。业务 29 份原恢复材料与 hold 待封存
复核；业务原件恢复仍未完成。下一项是精确隔离恢复/查证及新代码完整生命周期。

[封存结果、源版本、失败和复算](../analysis/bde-experiments/2026-10-05/bde-managed-topology-integration-increment-01/README.md)。

## 前一项通过：正式工具自动保存完整 actual topology head

新增固定只读 `topology_owned_head_snapshot` 与严格 Python验证。从真实 owned head
导出 full Main before/after 和真实 physical/drawing历史，附原owner/sequence/state/
endpoint direction；未捕获的旧历史拒绝，不用 CURRENT补造。正式 retention/handoff
在确认前增加完整 `topology_head_retained` WAL；receipt只返回小摘要及SHA。
快照丢失或磁盘失败保留元数据pending；恢复只允许fixed新读取，不重发移交。

断线、删除各8次正式 Tool.call通过自动持久化：A→literal B→inverse A保留B→
cleanup B，完整日志图与独立观察一致，原 native/source/ID/physical/drawing恢复。
纯读取实际head前后图及顺序与封存记录一致，错误owner/state两次拒绝，full witness
不变并释放。首次模板多一个闭括号的编译失败保留，无模型修改并释放材料。
105相关离线回归通过，后续防御畸形图改动通过12项最终snapshot/fault回归；按各
真实source版本记录，不把离线故障测试当作在线fault验收。29业务材料及hold未变。

拓扑managed redo仍未执行、REVERT_UNAVAILABLE；没有模型normalization/setter/store
授权增量。43required仍仅一个离线contract accepted，业务原件未恢复，整体未完成。
下一代码项为利用durable actual head的正式 managed执行、actual diff/order证明和
重复handoff；全部原类型/跨层/UI/fault/持久化/Doge/AEB_Core/原件恢复/包范围保持。
[实现、失败、日志与复算](../analysis/bde-experiments/2026-10-05/bde-topology-head-snapshot-function-increment-01/README.md)。

## 2026-10-05 历史增量：actual owned head 逆向目标与完整 source 引用证据

固定 planner 从最近一次 inverse 实际 head 生成完整 typed/native/source/physical/
drawing 目标，保留原 endpoint 与 CURRENT guard。实际执行同时记录真实冻结顺序
描述符；没有历史描述符的旧材料拒绝，不从当前值补造历史。

断线和删除各8次正式调用完成首次局部 inverse、独立 literal B 清理和完整恢复。
保留 B、已回退 B 两种 CURRENT 下的四次 owned 规划，以及保留 head 的额外一次
纯读取，共5次，与独立完整图/order/source oracle一致。错误 owner/state两次拒绝。
这些是规划，没有执行 managed topology redo；正式 redo 仍 REVERT_UNAVAILABLE。

新增跨阶段统一原引用导出和独立全冻结字段 diff，检查 shared/detached原对象；
等值 split/join、overlap、缺失引用等7项新回归通过，最终相关离线156项通过。
旧 clone oracle 缺少跨阶段引用表的 CgRGBColor sharing 分裂失败，及构建、selector、
decode、exporter compile失败全部按原版本/原verdict保留；四条失败历史均完整恢复。

212/212封存复算通过；7个真实源码版本、574份原始JSON。29份业务材料及hold
SHA未变，业务模型0调用，原件仍未恢复。43required及整体功能验收不提升。
下一代码项为正式 managed prepare/日志证明/dispatch/confirm/head handoff，其他原
类型/跨层/视觉/fault/持久化/Doge/AEB_Core/安装包要求保持未完成。
[代码、证据及复现](../analysis/bde-experiments/2026-10-05/bde-topology-owned-function-increment-01/README.md)。

## 2026-10-05 历史增量：实际执行head移交与完整typed图修复

新增固定topology head handoff，沿正式工具原retention/handoff协议移交每次
actual native/source、完整Main typed图、physical/drawing roster及原endpoint证明。
严格核对原对象/collection/当前终态/执行序号/前后状态后才改元数据归属。
没有模型setter/store；这项移交不代表managed拓扑redo已实现。

首轮断线在6次真实调用后被独立oracle拒绝：执行head只存了原targets局部图，
没有later literal B。保留失败；2次不同的正式preview/inverse B调用恢复基线，
完整witness确认并释放。修复后每次实际执行前后取得完整Main typed图，恢复
原局部观察并确认完全一致，再核对完整native/source。失败不是oracle误报。

最终断线与删除各8次Tool.call通过，owned head before/after分别与完整独立
观察一致，所有字段/引用/ID/physical+drawing最终恢复。两条拓扑redo仍明确
REVERT_UNAVAILABLE。6项prepare纯净性及149最终相关离线回归通过；原始证据
按两份真实源码版本分别封存，29份业务材料与hold SHA未变，原件未恢复。

下一代码项为基于当前owner actual head的逆向目标与正式managed拓扑执行。
geometry、冲突矩阵、connect/create、全类型/跨层、原图显示、fault/持久化、
真实Doge/AEB_Core、安装包、原件恢复及43required保持未完成。
[实现、失败及独立封存复算](../analysis/bde-experiments/2026-10-05/bde-topology-head-function-increment-01/README.md)。

## 历史增量：正式局部断线/删除回退保留另一次工具修改

固定local topology planner已接正式`bd_edit`/`bd_revert`，沿真实native/source
before/after/current局部合并，保留原parent/drawing/endpoint/ID及CURRENT guard。
六个显式门控默认关闭，没有扩展field managed白名单或绕过ORDER证明。

六次prepare/discard完整纯净性通过；一条断线完整首次回退历史10次Tool.call；
断线/删除A后再工具编辑另一literal B，回退A保留B的两条正式流程各8次调用。
Python独立完整typed target核对通过，实际native/source局部目标verified。
清理B后完整原对象/source/ID/physical+drawing顺序恢复，witness释放。

149项相关离线回归、generated stages核对通过；172项封存复算通过。原始JSON
及3个实际源码版本分别封存，26次正式调用的真实回环计数保留。计数合计含20个
连接、3454请求帧、3434响应帧，不据此推断无丢帧或性能等价覆盖。

拓扑redo仍明确REVERT_UNAVAILABLE；后续geometry修改保留、正式拓扑冲突矩阵、
connect/create双向历史、全类型/跨层、原图显示、fault/持久化、Doge/AEB_Core、
安装包及业务原件恢复未完成。29份业务材料和hold哈希未变，原件仍未恢复。
43required完整验收不提升；下一代码项为managed拓扑redo和每个实际head的材料归属。
[代码、原始证据与独立复算](../analysis/bde-experiments/2026-10-05/bde-topology-local-function-increment-01/README.md)。

## 历史增量：冻结source投影与纯图像三方合并

新增固定只读source logical images与frozen image merge。source历史after可在明确
frozen_planning_v1模式下投影到原身份；默认三项context仍检查实际CURRENT。
纯合并只查冻结受影响单元，保持无关字段，拒绝owned重叠及introduced集合改变。
它没有执行闭包或写授权，不能用假想图像替代真实CURRENT验证。

真实保留断线/删除材料私有副本各5项新验证；4条Point.y/literalString私有source
双向实际head历史保留独立修改、完整source值与sharing及旧Point身份。断线Point
实际被native-shared Point替换，删除Point原引用未变，证据明确区分。Python独立
解码并手工修改original/applied完整图，核对规划、当前、inverse、redo及final inverse。
额外检查默认CURRENT拒绝、冻结后真实私有字段改变、未知frozen模式和冲突拒绝。

最后两个实验同一源码版本封存，644文件原字节/SHA，148相关回归通过。真实活体
native/source/IDs/physical/drawing witness不变并释放，0live setter/store/formal Tool.call。
私有对象primitive确实执行，不能写成完全无写或正式工具局部回退验收。
5次原失败verdict保留，变量遮蔽/keyword/manual oracle残留以及删除Point没有替换
的证据均保留；没有启动重复实验、调用业务模型或重发unknown事务。

正式局部拓扑inverse/managed redo仍未接入，native/source共享目标和actual order/
endpoint保护仍待实现；全部类型/跨层/UI/fault/持久化/Doge/AEB_Core/包及原件恢复
缺口保留。29份原材料和hold重新核对，业务原件仍未恢复。43required不提升。
[代码、复现与独立复算](../analysis/bde-experiments/2026-10-05/bde-topology-source-logical-increment-01/README.md)。

## 历史增量：source结构对应与正式forward归一化

新增固定source structural correspondence，按各自容器/角色及冻结class+ID或四端点
ID匹配，拒绝重复/歧义；变长Array保留fresh身份，幸存记录恢复原source引用。
复用fixed source image/primitive patch工厂及完整sharing/native保护，正式准备
保留curried固定normalizer，forward结束后记录真实normalization进度和actual head。

显式实验门控下，两条正式Main断线/删除历史各10Tool.call通过，source归一化分别
23/13primitive；原native/source/IDs/physical+drawing order独立witness恢复并释放。
两次bd_diff均0Cebra连接/请求/响应帧；两个inverse-of-inverse请求仍明确不可用。
三结构×两操作六次prepare/discard无setter/store，完整witness不变。

两份真实旧材料的私有副本共8项：source aliasName独立修改沿实际inverse heads保留，
owned等值不同引用primitive前拒绝，重复节点ID/四端点连线身份拒绝，source原引用
roundtrip通过。此source层证据不证明正式拓扑inverse能够保留另一个literal/geometry
edit，也未证明真实nested/type/new-record通用性。05/06的旧Point假设拒绝被保留。
01/02/03/07的私有运行兼容失败也保留，均未修改活体模型。

148项相关离线回归；642份当前代码原字节/SHA封存；独立复算保持私有副本、真实
Tool.call及完整case边界。业务实例未调用，29份原恢复材料与hold重新核对SHA未变，
业务原件仍未恢复。生产门控默认关闭，43required不提升，整体远未全部交付。
下一项为native/source三方局部拓扑执行、actual parent/drawing/endpoint移交及managed
redo；全类型/跨层、显示、fault/持久化、Doge/AEB_Core和最终包仍保留。
[实现、失败、复现与封存复算](../analysis/bde-experiments/2026-10-05/bde-topology-source-correspondence-increment-01/README.md)。

## 历史增量：拓扑原材料与正式首次精确回退

disconnect/delete正式准备在首次观察前捕获完整native/source原对象，每次实际执行
保留自身before/after native/source/typed head。原parent/drawing/endpoint/detached及
ID证明保留。固定CURRENT context修正capture wrapper不能读取恢复原对象集合的问题。

显式实验门控的exact inverse要求完整actual after未变化；原恢复操作后对实际字段、
端点集合及source引用执行primitive归一化，并重算最后实际diff。literal_fanout断线
和operator_fanout删除一节点及三条incident edges分别通过9次正式Tool.call；完整
original native/source/sharing/IDs/physical+drawing order都恢复，独立witness已释放。
两次bd_diff各0Cebra连接/请求帧/响应帧；两个redo请求明确REVERT_UNAVAILABLE。

三种隔离结构×两操作六次prepare/discard纯读核对通过，303/328/345 native对象与
91/93/99 source对象材料完整，0model setter/store。147项相关离线回归通过，新增
两个配置隔离检查。638个在线版本源码按原字节/SHA封存，独立复算104checks通过。

失败保持原verdict：history-01 inverse preview拒绝未写；retained-restore-01只恢复
公开图，严格native/source仍失败。不同eval事务fidelity-03以7native+4source
primitive严格恢复，独立witness通过后确认quarantine并释放，没有重发原edit。
fidelity-01编译失败、02的Dictionary identity equality拒绝也保留。

同PID45476/32641、同disposable epoch的限定证据。业务实例未调用；29份原恢复
材料与hold SHA不变，业务原件仍未恢复。exact inverse默认关闭；source结构身份
对应、独立变化保留、managed topology inverse、connect/create完整历史尚未实现。
全类型/跨层、显示/fault/持久化、Doge/AEB_Core和最终包未完成，43required不提升。
[实现、复现命令与封存复算](../analysis/bde-experiments/2026-10-05/bde-topology-material-increment-01/README.md)。

## 历史增量：四类拓扑三方规划代码与纯读对照

connect_data/disconnect_data/create_block/delete_node的Python与固定Smalltalk值规划已实现。
每个方向使用自身实际before/after/current，检查节点/pins/incident-edge闭包、输入占用、
endpoint owner/model及创建声明绑定、实际附带字段、count delta和后续新增依赖。
支持保留独立修改；后续编辑owned row或新增引用阻止删除。初稿pins列表输入mutation
已修复。145项相关离线回归通过，其中36项拓扑tests。

最终preflight-04三个隔离结构各30private typed案例，共90Python/native对照通过。
完整303/328/345对象native/source/IDs/physical+drawing order见证均不变并释放。
新增引用、declaration及共享occurrence部分使用明确的私有值夹具，不是原生factory验证。
没有模型setter/store、业务原件写入或重启；不是正式Tool.call拓扑修改/回退交付。

首次preflight-01真实失败BlockContextTemplate>>value:value:value:value:保留failed verdict；
完整纯读见证仍不变并释放，修正为三参数代码块后通过。02/03只是早期48/78项范围，
不与04的90项累加冒充覆盖。eval命令仍不在公开六工具的dispatch面。

下一项为正式topology原材料及managed history接入：现有source normalizer仅适用于
稳定field结构，插入/删除不能复用positional pairing；native原对象、parent/drawing/
endpoint/detached proof、自动实际diff和完整source共享仍须独立验证。
r12/43required case不变、生产local inverse仍关闭、原件恢复及整体交付未完成。
[实现、复现与封存证据](../analysis/bde-experiments/2026-10-05/bde-topology-planning-increment-01/README.md)。

## 历史增量：改接的实际patch、局部冲突与双向历史通过

rewire_data接入固定native/source材料、实际执行proof、自动diff、新inverse日志与after_snapshot。
Python/native规划仅允许一条既有edge改变source，并核对原source、新source与target的精确
方向、owner/pins、占用输入及其他依赖；其他field操作不能修改拓扑，身份guard保留。

- 旧失败A的不同请求inverse→redo→最终严格恢复：6 Tool.call，3次actual diff各0Cebra连接/帧。
- 新版本e2从p12改接p10、保留另一fan-out；inverse/redo保留独立literal，再最终恢复：9 Tool.call。
- 同一edge后续改接后，旧inverse preview在setter前拒绝；逆序严格恢复：7 Tool.call。
- 三条完整native/source/sharing/IDs及physical/drawing identity order witness恢复并释放。
- 109项相关离线回归通过，含11项新rewire typed案例；不表示完整43case验收。

真实Set>>first、遗漏parent checkpoint、局部变量编译冲突及wrapper.manager委托失败全部
保留原verdict。只读inspect-03原生/Python对实际保留图一致；修正后的固定当前规划器只使用
原材料。既有A从原wrapper.graphObject与原SGOrthogonalLineGO.manager字段引用核对parent，
不是读取当前parent冒充原parent。旧A已由history-04独立证明严格恢复，未改写旧失败报告。

同PID45476/32641、隔离operator_fanout及各自626份封存源码的限定证据；不是全部连线
拓扑/类型或视觉验收。r12不变、production local inverse仍关闭、完整case状态不提升。
下一项connect/disconnect/create/delete完整生命周期；全类型/跨层、fault/显示/持久化、
真实Doge/AEB_Core、业务原件恢复与包仍未完成。
[代码、失败保留与复算](../analysis/bde-experiments/2026-10-05/bde-rewire-function-increment-01/README.md)。

## 历史增量：route严格恢复、对齐路线完整历史与写前网格拒绝通过

原route-02失败保持原verdict；新distinct补偿实际6native+4source patch恢复完整旧基线。
没有重发edit/调用setter/store或重建同名对象；实际10项primitive均有独立进度。
正式bd_inspect两次调用核对后记录compensated，保留旧unknown及错误，确认pending并
释放完整witness。补偿execute仍限固定eval隔离原型，生产只提供status，不算通用fault恢复。

根因现已证实：retained转折x153、fresh同端点路线转折x150，原生raster投影与fresh一致。
route prepare/validate已做精确原生网格检查，不改变端点或静默吸附请求，不降低counterpart guard。

- 不对齐route写前拒绝：2次正式Tool.call，setter_called=false，完整模型/source/身份/order不变。
- 对齐route与另一literal：9次正式Tool.call，inverse/redo保留独立literal，最终完整恢复。
- witness释放后历史恢复查询及实际补偿diff：3次Tool.call，0Cebra帧，日志不变。
- 75项相关离线回归通过；均不是全类型/全fault矩阵或完整required case通过。

prepare状态比较、无序对象表比较与拒绝日志预期的旧驱动失败保留；已逐项修正并在
新证据目录核对。同epoch旧unknown不重命名为成功；正式恢复结果与原始失败分别保留。

r12不变，生产local inverse仍默认关闭，没有提升完整case；其余字段/连线/建删生命周期、
原BDE显示/Undo、全类型/Class及跨层消息、持久source/一般fault、真实Doge/AEB_Core、
业务原件恢复及可复现包继续在全部交付目标内。
[本轮代码、原始结果及复算](../analysis/bde-experiments/2026-10-05/bde-route-function-increment-01/README.md)。

## 历史增量：局部 literal/move 历史通过，route forward未知待恢复

方案保持 r12，核心功能完整优先，生产 local inverse仍关闭，未新增完整 required case。
已审计 store生成 source投影导致引用 guard冲突；固定 source身份归一化保持生成值和
sharing，保护 native对象，`native_field_execution_v3`记录实际 forward source patch。

- 两个不同 literal正式 edit后，inverse/redo A保留 B，最终完整恢复，通过，9 Tool.call。
- 同 literal重叠修改，旧 A preview写前拒绝，拒绝前后完整 witness不变，最终恢复，7 Tool.call。
- move_node与另一 literal的独立 inverse/redo及最终恢复，通过，9 Tool.call。
- set_edge_route forward在 store后首次读报 retained/fresh连线几何无法对应，2 Tool.call，
  outcome_unknown、restored=false、witness保留；还未到新 forward source normalization。

前三项均核对完整 native/source/IDs/physical与drawing身份order并释放 witness；限定为
封存版本和隔离 operator_fanout，不是全操作/全类型验收。route失败保留，raster投影
只是待证实假设。当前 PID45476/32641普通写入冻结，下一项严格诊断/恢复及 durable
分类；不可重发原 edit、删除 pending或重启丢失原引用材料。

连线/创建/删除完整双向历史、原 BDE显示/Undo、全部类型/跨层消息、持久 source、
一般故障恢复、真实 Doge/AEB_Core、业务原件恢复和安装包仍未全部完成。
[本轮封存证据复算](../analysis/bde-experiments/2026-10-05/bde-source-normalization-progress-01/README.md)。

## 历史增量：局部 dispatch 接入，独立修改在 source_merge 拒绝

当前方案保持 r12，核心功能完整优先，性能只记录。固定宿主、严格 local envelope、
各 head 实际 native/source before/after、执行前 fresh CURRENT 再核对已接入实验路径。
生产 local_field_inverse_capable 仍为 false；六工具和43 required case 保留。

一条 operator_fanout literal 正式 edit→自动实际 diff→inverse→redo→最终恢复通过，
15次 Tool.call、四个不同 change_id/after_snapshot；完整345对象、原身份/order/source
核对通过。受限既有故障终态/部分元数据恢复及后续正式历史通过，7次 Tool.call；
没有重发原 inverse，不是通用生产故障恢复。

两个不同 literal 先后正式编辑后，回退 A 保留 B 的 preview 仍失败；新阶段诊断
定位到 source_merge，`Native merged target touched-unit conflict`。该试验7次 Tool.call，
随后两个 distinct guarded 逆序回退通过完整基线恢复并释放 witness，保留
passed=false/restored=true。失败根因的具体 patch unit/引用尚未证实，不能放宽 guard。

没有新增完整 required case pass；全类型/连线/创建/删除双向历史、原 BDE 显示/Undo、
跨层通路、持久 source、真实 Doge/AEB_Core、业务原件恢复及包仍未全部完成。
下一项 MAIN-03C.5d 修复独立 source 合并，并补正式重叠/准备后变化/一般故障场景。
[最新实现、原始结果和可复算证据](../analysis/bde-experiments/2026-10-05/bde-local-source-dispatch-summary-01/README.md)。

## 历史增量：原 source 材料正式捕获与限定 literal 历史

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

## 历史实验记录（不更改原 verdict）

2026-10-05 当前执行方案为 **r11：核心功能完整闭环交付**。
一次既有 literal inverse 的 source 局部补偿已实际执行，4slot 与完整 source sharing、
原根/保护 native 核对通过；fresh345对象/order/IDs/source 与正式 WAL 恢复确认通过。
旧失败保留，pending 在原 epoch 已清；不是全部操作或完整 case 验收。
随后新五 block 历史在 preview 发生隔离 ASCET 退出，0模型编辑；已备份数据库、
重启并只读核对两张图的公开数据及所采结构/layout。完整跨重启 source 核对待补，
旧内存材料不重绑。下一项 MAIN-03C.5：稳定预检/持久 source 核对→正式双向历史，
再局部 guard 与其余字段/图操作。全类型、层级/Class、Module/Project/A2A/XPass、
真实 Doge/AEB_Core/原件恢复/包、43required case 均保留；性能只报告。
[当前方案](bde-core-function-delivery-plan-20261005.md) ·
[实际恢复及失败证据](../analysis/bde-experiments/2026-10-05/bde-source-compensation-summary-01/README.md)。

## 2026-10-05：r10以功能交付为准，实际forward通过，source共享恢复仍失败

正式raw/normalization执行状态、15字段proof、实际观察/finished持久后确认、
fresh recovery已接代码；封存版本97/98离线回归通过。3夹具×3轮
read/find/inspect共87次Tool.call通过。新literal正式forward及自动实际diff、
after_snapshot和完整native/source proof通过。

首次inverse8raw cells/store/3normalization cells全部执行。完整345对象
字段/引用、IDs、physical/drawing order独立复算通过；source共享关系失败，
保持passed=false/restored=false/outcome_unknown，8次Tool.call不是完整历史验收。
source诊断保留完整图；original/current叶子数值相同，sharing不同，不能放宽oracle。

alias-private-01因Smalltalk binary优先级False>>+失败，原版本与失败保留。
修括号并修诊断晚期失败丢inspection/wire的问题；private-02局部4slot/6shadow
修复通过独立完整source、保护引用、重复拒绝/写前冲突，live source不变。
72实际Cebra请求帧用于整个诊断/私有试验，不是edit延迟或正式inverse性能。
0模型setter/store，不能宣称当前unknown已恢复。8份trial源码封存并复算。

方案r10下一项：source局部patch持久进度/fresh proof与单独guarded compensation。
当前PID39624/32641普通写入仍冻结，不重发undo、不整份source替换、不换fixture
绕过。三方局部guard、其他字段/连线/类型/跨层/UI/真实Doge/AEB_Core/包以及
业务原件29份恢复材料均未闭合。43required case和五功能包保持，性能非前置。
summary复算第一次错误把applied/current共享节点计数一致当完整source相等；
失败复算保留，修为完整original/current不等与仅叶子值相等的诊断，未放宽恢复门槛。
[原始试验及20项证据核对](../analysis/bde-experiments/2026-10-05/bde-field-execution-summary-01/README.md) ·
[r10方案](bde-core-function-delivery-plan-20261005.md)。

## 历史 2026-10-05：r9按正式操作闭环交付，执行与恢复一起接齐

当前下一项MAIN-03C.4与.3共同实施：raw patch/normalization进度、持久
proof及fresh recovery接齐后，启动新隔离literal edit→inverse→redo→最终
恢复，再补三方局部guard和comment/move/route、连线/删除/创建。全类型、
跨hierarchy/Class/Module/Project message与A2A/XPass继续必需；43required
case、原BDE显示、真实Doge/AEB_Core、原件恢复与安装包未缩减。

本轮v2按字段/索引/key/member/order splice精确执行，11私有场景通过，
10初始对象完整三方向各12原语；同容器无关改动及重排首尾插入保留，
重叠/相等异引用key/歧义间隙拒绝。05正式raw replay与store/read附带恢复
分支已原生编译/prepare，0模型setter/store，未验证正式模型回退。
Python/native整投影guard与整份source检查尚需局部化；新执行proof、
正式日志/recovery未接齐。87相关离线回归通过，不能代替模型验收。
五轮完整源码封存；3个失败只读预检fresh严格核对后清理，旧实际编辑失败
材料与29份原件恢复材料/hold保留。整个任务未完成，性能不是完成门槛。
[v2证据与复算](../analysis/bde-experiments/2026-10-05/bde-native-field-local-summary-01/README.md) ·
[修订方案](bde-core-function-delivery-plan-20261005.md)。

## 2026-10-05：固定native field patch接齐与非零私有执行通过

宿主/模板两block bundle、factory强引用与finally清理已接；原生工厂改为
已支持的三参数调用。03零计划通过，07/08对10个私有新对象完成6场景，
undo/redo/最终undo各19原语；完整私有图像、同对象、重复/冲突拒绝与无关
Point字段保留核对通过。所有trial没有模型setter/store，严格live baseline不变。
生产首次实际after/源码冻结与实际双向patch生成已编译，未执行该setter/store
分支。whole collection仍保守冲突/整单元恢复；正式managed实际patch/store
附带恢复未接，完整功能case不提升。87相关离线回归通过。
8轮逐版本源码、5个失败、1个清理资源缺失失败均保留；fresh严格核对后
只释放5个失败preflight的prepare/witness材料。旧实际恢复失败不受影响。
29原件材料/hold字节保持，业务原件未恢复，整体目标active。
[可复现原始证据](../analysis/bde-experiments/2026-10-05/bde-native-field-patch-summary-01/README.md)。

## 2026-10-05：方案r8改为五个完整功能包

仅修改方案及任务组织，0 ASCET调用、0模型写入、0新增功能case pass。
六工具和43required/3performance reporting保留，性能不阻塞交付。
F1基础编辑闭环→F2全类型→F3层级/Class→F4 Module/Project通路→F5整体交付；
actual diff、局部冲突、精确双向恢复与原BDE显示逐操作交付。
工作区原生field patch是未集成/未编译验证草稿：C#传两block bundle，模板
仍收单block，factory清理未接齐；尚不能称为精确恢复可用。下一项MAIN-03C.2
完成绑定/清理并以零setter prepare验证，再接非零实际patch和正式恢复。
旧失败、材料、原件恢复阻塞、完整case状态均保留。方案检查不算功能评测。
[当前方案](bde-core-function-delivery-plan-20261005.md) ·
[归档与复算](../analysis/bde-experiments/2026-10-05/bde-functional-delivery-r8-01/README.md)。

## 2026-10-05：原生完整材料与缺材料拒绝已在线验证

MAIN-03C.1已增加固定原始/终态图像和字段名schema导出、prepare原引用/
mutable值/collection/源码保留、失败witness保留和严格释放。模板设有
pre-store/post-store/after-reader捕获点；本轮未执行新的setter/store/inverse。
一个隔离prepare跨连接核对345对象、1555槽、33class，discard后完整原生
字段/身份/顺序/source不变。两次实际Doge Tool.call完成read和preview，
严格基线不变。两个旧失败head缺材料，实际typed conflict写前拒绝。

首次两条只读流程因我漏声明findPin在编译阶段失败，0模型setter；完整
witness材料保留且各版本源码归档。修复后的新试验通过；失败witness另经
fresh严格基线确认后清理。更早两个actual编辑失败没有被恢复或重标通过。
87相关离线回归通过，其中5项新增材料边界测试；不替代原生编辑验收。
22项独立原始证据核对通过，29原件材料/hold字节保持；原件仍未恢复。
下一代码项MAIN-03C.2实际双向字段/value/collection patch；.1实际
setter/store阶段材料、完整inverse及显示仍需在线验收。无完整case通过。
[在线证据与只读复算](../analysis/bde-experiments/2026-10-05/bde-native-material-summary-01/README.md)。

## 2026-10-05：方案 r7 接实际原生字段 patch

本次只修订计划，没有 ASCET 调用、模型修改、运行时代码变更或新功能 pass。
最新两条 literal strict native 失败保留，不把语义值恢复称为精确恢复。
MAIN-03C 拆成 .1–5：完整原生 before/失败 witness 材料与定位、实际双向
patch、局部前置/原字段引用恢复、正式 journal/recovery、在线及原图显示。
先修复材料丢失与诊断边界，再开始新隔离实验；不在两个旧失败组件继续写。
不重复 setter 可见值试验或放宽独立 oracle。其他无关读取/类型实现可递补。
六工具、完整类型与跨层/跨 Module/Project、原 BDE 显示、43 required case、
真实 Doge/AEB_Core、原件恢复及包保留；性能只报告。自动化维持 paused。
[当前方案](bde-core-function-delivery-plan-20261004.md) ·
[方案一致性核对](../analysis/bde-experiments/2026-10-05/bde-functional-delivery-r7-01/README.md)。

## 2026-10-05：正式回退自身执行与严格原生恢复失败

字段/layout 的正式 managed inverse、head/方向检查、后续材料移交、自动
actual diff、after_snapshot与fresh recovery已接入。两条literal实际流程各
15次Doge Tool.call，编辑→回退→回退自身→再次恢复完成；redo等于原实际
after，最终所采整图native/public字段、端点、路由相等。diff和重放离线，
confirmed recovery不重发。只有literal实际执行，不推广到其他白名单操作。

独立完整原生见证两条都失败，原结果passed=false保留。诊断流程身份别名、
物理/绘制身份顺序保持，但完整fields/source不同；7项raw变化包括原有Point
x120→131、Point/String引用替换和nil→Dictionary。公开值恢复不能证明原生
引用/字段精确恢复。这些字段尚需按反编译合同逐项分类与修复。

相关74项离线回归通过，新增3项managed recovery边界及其针对性复核通过；
不是实际TCP或setter故障证据。两个strict witness已release，不再有完整
原始snapshot；不以新读取重造原引用材料。native记录仍保留在最终inverse，
暂不在两个失败组件继续写。MAIN-03B/C部分实现，MAIN-03D仍未验收；下一项
MAIN-03C编辑准备期保留完整native field材料、实际patch恢复和无关字段保留。
本轮不授予完整case，原件恢复、全部功能和实际包仍未完成。
[原始失败与只读重算](../analysis/bde-experiments/2026-10-05/bde-main-managed-summary-01/README.md)。

## 2026-10-05：方案 r6 按可使用的工具流程交付

本次是方案修订，无新 ASCET 调用、模型改动、运行时代码变化或功能 pass。
保留六工具和全部普通 BDE/Module/Class/hierarchy/Project 通路范围，将开发
排成 BDE-01–08：字段/layout 历史闭环、连续操作、类型、层级、Class、跨
Module/Project、视觉收尾和完整包。原 BDE 显示随每项实际编辑接入。

下一项用现有首次保留材料接正式字段/layout 再回退，不先等待全部 family
的通用历史验收。类型优先 variable/parameter/constant、enum、message；
跨组件能力按真实端点/恢复依赖推进。性能只报告，COST-01仍必需。
旧功能状态和失败证据保持；43 required/3 reporting、原件恢复blocked与
最终完整交付条件保留。本次一致性核对只证明方案没有丢项，不是功能实验。
[r6 方案](bde-core-function-delivery-plan-20261004.md) ·
[修改与核对](../analysis/bde-experiments/2026-10-05/bde-functional-delivery-r6-01/README.md)。

## 2026-10-05：首次 inverse 的原生材料归属与 unknown 查询

正式回退后新增固定 retain_inverse，原 native record 不立即 release，绑定
新的 inverse 日志。持久 intent/proof 后清 pending；错误/缺回执保留原失败
事件，fresh recovery 查询分别确认 retained/not_retained，0 metadata 重发。
三条正常 Main literal/删除/断线 Tool.call 流程、两条固定 native-journal
metadata 故障适配器流程通过，48次真实工具调用，所采完整字段/端点/路由
基线恢复。后两条 inverse 不是正式 Tool.call 或真实 TCP 断连/setter 故障。

diff/分派新增有界 ancestry，循环/跨域/过深拒绝，最终另10次实际离线 diff
0连接/0真实帧。69相关测试通过；随后79项回归78通过、新测试漏设能力环境
1失败，修正后5项针对性通过。两次独立 summary 版本/材料路径假设失败已
保留；最终独立重算、准确原件29材料/hold及pending/43case映射检查通过。

这只完成首次材料归属的局部能力。再回退实际 native 执行仍不可用，下一项
MAIN-03B/C接当前head/direction与同对象双向恢复。完整身份/顺序/全类型/
视觉/Class/FLOW/真实agent/AEB_Core/原件恢复/包仍未通过，不授予新完整case。
[独立重算和源码](../analysis/bde-experiments/2026-10-05/bde-main-retain-summary-01/result.json) ·
[复现和限制](../analysis/bde-experiments/2026-10-05/bde-main-retain-summary-01/README.md)。

## 2026-10-05：功能方案 r5 与实际依赖修正

计划按六个完整功能包推进：Main 历史闭合、Main 操作/类型、hierarchy/Class、
Module/Project 通路、原 BDE 显示、完整交付。修正 r4 文本允许独立开发、但
MAIN-05 硬依赖 MAIN-03 的冲突；类型补齐和独立接口开发不等通用再回退全量
验收。每条在线写入自身的身份/实际 journal/冲突/精确恢复前置仍保留。

MAIN-03 拆成 A 材料归属、B 正式多次 inverse 路由、C 双向原生对象恢复、
D 真实工具验收，下一项 A。逐操作记录合同区分缺实现与缺验证；不把原生
factory 数量或探针成功当作全部功能完成。43 required /3 reporting 策略、
完整 case 条款、代码和既有状态不提升；本次没有 ASCET 调用或新功能结论。

[r5 方案](bde-core-function-delivery-plan-20261004.md) ·
[任务表](bde-core-function-workboard.json) ·
[方案变更归档](../analysis/bde-experiments/2026-10-05/bde-functional-delivery-r5-01/README.md)。

## 2026-10-05：Main 正式预检、实际编辑diff及原始inverse

新增固定Main工作流与eval-only只读见证：3种literal/operator结构各3轮，
87次真实Doge Tool.call、15个多页文档通过，完整语义row/字段与独立公开
API一致；跨调用native对象、父children、绘制顺序、源及完整CURRENT未变。
见证全部释放，0模型setter/0store。3项缺页/文档替换/byte gap反例被拒绝。
这是记录版本的Main局部预检，不是全类型/全语义READ或完整case通过。

literal文本变长引起position/size附带变化、删除fan-out源节点及断开一条
数据线，各完成一轮正式preview/edit/自动after_snapshot/diff/同请求重放/
原始inverse，累计27次真实Tool.call；独立所采整图字段、端点、路由恢复。
diff、after_snapshot读取和同请求重放均0连接/0Cebra帧。编辑后的完整native
身份/顺序恢复、无关变化/冲突/回退自身及要求的全部场景次数尚未验收。

修正bd_diff结构路由：使用局部语义patch和父/绘制顺序delta，保留native
变化摘要/摘要hash；完整原生恢复字段留在日志，响应明确未包含全部细节。
最终源码下另执行6次真实Doge离线diff，0连接/0帧；2项针对性回归通过。
删除/断线样本的最终agent文档为5,430/4,793bytes，原泛化恢复diff为
82,076/81,943bytes。该比较是同一日志的不同用途投影，不宣称完整native
字段细节的等价缩减、速度达标或全局最优。

实际inverse-of-inverse最初误落到literal许可分支，已修正结构dispatch。
现在准确返回REVERT_UNAVAILABLE，native材料移交和正式执行仍待实现；
失败证据保留，不能把零写入拒绝计为功能通过。新测试两次入口/envelope
假设错误和独立汇总首次漏算局部closure的失败源码/原因均保留；修正后
针对性断言及独立完整before/after/restore核对通过，没有隐去失败。

source指纹按各版本保留：最终diff/回归有当前源码快照，先前预检和原始
编辑不重标为最后版本的完整case认证。旧CONTRACT-02/台账/原件hold不改。
下一项MAIN-03正式结构回退自身与材料所有权，继续其余Main/类型/层级/
Class/FLOW/视觉/真实agent/AEB_Core/原件恢复/包。整体目标仍active。

[独立重算与最终源码](../analysis/bde-experiments/2026-10-04/bde-main-workflow-summary-01/result.json) ·
[复现说明](../analysis/bde-experiments/2026-10-04/bde-main-workflow-summary-01/README.md)。

## 2026-10-04：功能交付方案 r4

方案改为直接推进Main正式流程；已有验收入口和原生清单作为持续支撑任务，
按当前操作补场景与合同，不等待全部case适配器或上一阶段全部pass。
MAIN-01至06明确：读取定位及独立核对 → 连续编辑/连线/删除与actual diff
→ 冲突/精确回退/回退自身 → 原图显示 → 全类型补齐 → 对应完整case重算。
验收场景从第一步同步接入。视觉环境缺失可先补独立功能，显示仍须最终通过。

后续hierarchy、Class永久局部inverse与全部接口、Module/Project的message/
FLOW/A2A/XPass、真实Doge、AEB_Core隔离任务、原件恢复和实际包全部保留。
unknown/pending仍阻止受影响实例/资源后续写；性能只报告，不做专项重测。

本轮仅改计划与任务记录，没有ASCET调用、模型编辑或新完整case通过。
43required/3report策略、验收规范与候选源码摘要保持；任务实现状态未提升。
已有CONTRACT-02离线通过及其他未验收/原件恢复blocked状态保持。

[方案](bde-core-function-delivery-plan-20261004.md) ·
[任务表](bde-core-function-workboard.json) ·
[前后差异与一致性核对](../analysis/bde-experiments/2026-10-04/bde-functional-delivery-r4-01/README.md)。

## 2026-10-04：完整 case 验收入口 v1 实际执行

新增独立 bde_acceptance.py / worker 与针对性断言。生成全部43required/
3report case ID 的版本化规格、源码manifest、逐场景原始worker JSON/Bun
JUnit及可重算report；详细执行规格目前接G0，其他完整case明确未完成。
跳过、空断言、次数不足、重复身份、错误证据层级、源码漂移和缺原始材料
不能通过。旧partial ledger继续拒绝pass，策略v2不修改。

9个离线trial执行30tests（21Python/9Bun）全部通过，552源码摘要一致。
CONTRACT-02离线分页合同完整通过：UTF-8/长记录、2–16KiB预算、重复cursor、
文档/会话隔离、缺页、损坏和显式溢出拒绝。CONTRACT-01/03分别缺全部
工具/op/type/owner/scope形状及全部正式journal路径，保持not_run。新报告
1pass/42not_run不代表在线功能、L0或整体交付通过。

新15项针对性测试通过。首轮skip生命周期错误导致1error，原失败及当时
worker源码保留；修复后通过。5项独立证据检查通过：重算、summary手改pass、
原始断言替换、缺件及源码漂移。没有在线ASCET、Cebra代理采样或性能重测。
原件恢复任务仍blocked/hold保留；新runner的未执行REVERT-03不解除该阻塞。
下一项接Main真实工具完整流程与独立身份/顺序/字段/layout oracle。

[用法与边界](bde-tools-acceptance-runner.md) ·
[实际验收报告](../analysis/bde-experiments/2026-10-04/bde-acceptance-g0-01/report.json) ·
[证据重算](../analysis/bde-experiments/2026-10-04/bde-acceptance-g0-01/verification.json)。

## 2026-10-04：功能验收驱动的交付方案 r3

用户要求更改方案。下一项改为独立完整 case 验收入口，首批接 G0，再按
Main → hierarchy → Class → 跨 Module/Project → Doge/AEB_Core/交付包收尾。
原生类型/端口按具体操作审计，最终清单仍需完整闭合；它不再阻塞所有 Main
增量。每项同步接真实六工具、局部 actual diff、原图显示、冲突与精确回退，
含回退自身。Class 永久提交/WAL/材料移交仍是其阶段的必做项。

本轮只修订计划与任务记录，未开发验收入口、未调用 ASCET、未新增功能或
完整 case pass。策略 v2 的43项 required 与3项性能报告保持，现有 partial
ledger 继续拒绝授予 pass。代码完成/正式工具验证/完整 case 验收分别报告。
历史证据、原件恢复 hold 与自动化状态保持；全部交付后停止的要求继续有效。

[修订方案](bde-core-function-delivery-plan-20261004.md) ·
[任务表](bde-core-function-workboard.json) ·
[方案一致性与前后差异](../analysis/bde-experiments/2026-10-04/bde-functional-acceptance-r3-01/README.md)。

## 2026-10-04：正式类型/操作查询与反编译工厂核对

新增 `bd_inspect(query=block_types)`：现有26类普通BDE的创建参数及Main/child、
Class/Module条件操作可以通过真实Doge离线查询，并沿用2KiB–16KiB完整分页。
原生静态核对匹配26个factory selector、104个上下文合同、23个operator输入数、
7个controls及创建schema；发现7类额外GUI工厂候选，原生类型/端口清单仍未闭合。

实际12次Doge Tool.call/9项断言通过，计数代理0连接/0请求帧/0响应帧。35项
针对性Python和21项Doge测试通过；6项live skips未验证。首次分页测试错误假设
回执形状导致KeyError，原失败与源码保留，修正后通过。无新增在线ASCET功能
或完整case通过；完整case验收入口、Main缺口与原有Class/通路/交付缺口继续待办。
最新检查确认隔离39624/32641listener，未重启。原件hold及历史证据未改动。
静态审计随后补录自身hash，最终inventory02及3项针对性native inventory测试
通过；35项报告保留原审计源版本，其余正式查询/Doge源匹配。Ledger79仍42
not_run/1原件恢复blocked，647个唯一证据存在，没有完整case通过。

[使用与复现证据](bde-block-type-catalog.md)。

## Previous 2026-10-04：按真实操作流程修订实施方案 r2

用户要求更改方案。本轮按原生清单/验收入口 → Main → hierarchy → Class →
跨 Module/Project → Doge/AEB_Core/交付包排列任务。每阶段完成正式工具入口、
实际局部 diff、原 BDE 显示、冲突与精确回退；Class 私有恢复不作为全部普通图
功能的前置。现有实现保留，状态机/独立 Code Mode/新宿主仍暂缓。

13项任务对应全部43项 required 功能case，无遗漏或未知ID；功能门槛保持，
性能只报告。本轮仅修改方案和任务记录，未执行在线读写或增加功能通过结论。
现有 partial ledger不能授予完整case pass，验收执行/断言入口列为明确缺口。
原件hold与历史结果保留，整体未交付。下一项为M0原生逐类型逐操作清单。

[方案](bde-core-function-delivery-plan-20261004.md) ·
[任务表](bde-core-function-workboard.json) ·
[一致性核对](../analysis/bde-experiments/2026-10-04/bde-functional-workflows-r2-01/README.md)。

## Previous 2026-10-04：核心功能优先，性能改为非阻塞报告

用户明确时间目标不是重点。执行方案与机器eval已升级v2，保留功能正确性、
局部成本和全部跨Module/Class/hierarchy范围；一秒与性能重测不再阻塞交付。
已建立正式/partial/study-only/blocked功能矩阵，当前并未新增功能case通过。
Ledger78：43必需功能case中42not_run/1原件恢复blocked；3性能报告项中1旧
性能fail/2not_run，640唯一证据文件/摘要一致。旧性能失败不改成成功。

3项新策略测试与24项publication/candidate针对性回归通过，C#构建通过。
永久提交native所有权/checksum guard只到源码编译，C#正式路径尚未接入。
3次编辑前编译失败保留，compile04只读编译/schema通过，0setter/dirty0→0。
这不是永久编辑/局部inverse在线验收。未重跑完整offline suite或性能；
Offline161不再作为变动源码的当前认证，独立source_manifest已记录。

[新方案](bde-core-function-delivery-plan-20261004.md) ·
[功能矩阵](bde-core-function-coverage.json) ·
[台账78](../analysis/bde-experiments/2026-10-04/bde-eval-ledger-78/report.md) ·
[本轮证据](../analysis/bde-experiments/2026-10-04/bde-functional-plan-v2-01/README.md)。

## Previous 2026-10-04：release 结果分类、零重发收尾与兼容性

本次状态核对已补齐两个独立汇总的复现说明与 PROGRESS，生成 Ledger77。
28 个完整 case 仍为 26 not_run / 1 性能 fail / 1 原件恢复 blocked；636 个
唯一证据文件及摘要一致，527 个当前源码指纹无缺失/漂移。此次仅离线归档，
未重跑在线实验或性能测试；进程核对无实验运行，隔离监听仍为 39624/32641。
[最新台账](../analysis/bde-experiments/2026-10-04/bde-eval-ledger-77/report.md) ·
[归档核对](../analysis/bde-experiments/2026-10-04/current-release-closeout-01/result.json)。

新 native release witness 仅附在既有 candidate 上，保存封存的 publication group
及完整 native capture。删除 publication 记录后只能 classify，不能通过该证明
调用 setter 或再次 release。读取同时核对完整源码、对象/参数/返回值身份、签名、
配置与 native fields；Python/C# 再比较完整 fresh 公共观察和所有历史 WAL。
证明的寿命绑定 candidate，正常 candidate 清理后没有额外全局释放记录残留。

| 实际案例 | 累计 owner 核对 | 恢复段 | release 边界 | 最终 native 派发 / 模型 setter |
|---|---:|---:|---|---|
| ready03 / base | 3 | 3 | 调用前未执行，随后完成丢 completion | 0 / 0 |
| deep01 / Main/h1/h2/h3 | 4 | 2 | 回撤 26 个模型步骤后，release 完成丢 completion | 0 / 0 |
| final ready04 / base | 3 | 2 | 最终 native 源版本，release 完成丢 completion | 0 / 0 |

所有完整 CURRENT 和原始普通/Class 基线恢复；fresh audits 确认 candidate、
signature、material、publication 全 absent。原故障日志/result 始终 failed，
最后段只有 intent/release_reconciled/finished，没有 native step_started。
最终收尾仍包含真实 Cebra 编译/读取：ready03 5162、deep01 14828 request frames，
不是零 API 调用，也不是性能样本。

新增逻辑后 base/deep 无故障 complete02 各一轮通过，共 7 owners，原始基线和
临时记录 absence 完整验证。旧 publication 路径没有 currentExecution 材料，
最终条件改为仅在存在该材料时建立证明；legacy01 完整周期/独立 absence 通过。
源版本按原 artifacts 保留，早期 complete02 不能改称最终条件版本的在线结果。
ready01/02 的 Smalltalk 括号编译错误均在编辑前拒绝，0 模型修改，失败保持不变。

Offline161 通过 1030 Python、21 Doge、1042 assertions/version；6live skips
未验证，527 源指纹一致。Safety61 验证旧 AEB_1 29 文件与 hold 未变，
restored=false，0Cebra/0setter。无新增性能结论；生产 Class 局部回退尚未开放。
仍需实际 stale-witness/内部 setter 异常、真正断连/重启、全部 types/families、
完整 UI/FLOW/A2A/XPass/AEB_Core、旧原件恢复、写性能和交付包。

[独立 release 汇总](../analysis/bde-experiments/2026-10-04/current-release-summary-01/result.json) ·
[正常 complete02 汇总](../analysis/bde-experiments/2026-10-04/current-complete-summary-02/result.json)。

## Previous 2026-10-04：恢复链再次中断与无故障 CURRENT 完整闭环

最终源码回归 Offline160 通过 1025 Python / 21 Doge / 1042 assertions / version，
6live skips 未验证。chain-summary02 与 complete-summary01 以 0Cebra 独立复核，
525 个当前记录的源码指纹匹配。Ledger76 保留 26not_run / 1性能fail / 1原件
恢复blocked，0missing artifacts，全部交付门槛未通过。
[完整复核及复现命令](../analysis/bde-experiments/2026-10-04/current-complete-summary-01/README.md) ·
[恢复链复核及复现命令](../analysis/bde-experiments/2026-10-04/current-recovery-chain-summary-02/README.md)。

本轮在线操作仅使用隔离 PID39624 / port32641，同一个既有 epoch。原 AEB_1
仍有恢复 hold；Safety60 以 0 次 Cebra/0 次模型 setter 核对原 29 个失败文件与
hold 全未变，`restored=false`。本轮成功不表示原 AEB_1 已恢复。

恢复链 base 的第一次 `reconcile_action` 已实际完成但 completion 故意丢失；
第二段重新分类确认已完成，跳过该补记后恢复。deep 的第一段在 `undo_apply/1`
完成后丢失 completion，第二段正确跳过已发生的 inverse，随后在 owner0 实际
需要的 `restore_store` 调用前中断；第三段确认该 store 未执行后完成恢复。
全部完整 CURRENT/原始普通/Class 基线恢复，fresh audits 验证临时记录 absent。
原始三份恢复故障结果与 WAL 保持 failed。省略最新 head 的请求在连接前拒绝。
两案例确认恢复派发 13/38 次，最新恢复段各 13 次；这是已确认派发计数，未知
completion 的实际结果另由完整 classification 唯一确认，不能混淆计数。

新显式 `--current-complete-study` 必须配合完整 preparation 和 execution study，
环境 opt-in，且禁止任何 native/journal 故障注入，默认关闭。无故障结果：

| 隔离案例 | Owners | 模型步骤 | WAL 确认派发 | 此阶段真实 request frames | 后续普通/Class 回退 |
|---|---:|---:|---:|---:|---|
| base | 3 | 24 | 34 | 823 | 完整原始基线恢复 |
| mixed / Main/h1/h2/h3 | 4 | 56 | 68 | 1349 | 完整原始基线恢复 |

两轮均无源码漂移/新增 walkback，完整 CURRENT 基线恢复，独立 fresh absence
audits 全通过。这是 cont input/独立移动的功能研究，包含准备/审计/编译成本，
不是性能样本，也没有开放正式 Class 局部回退。第一次离线独立汇总器误读
strict inverse 的 `after` phase，实际回执使用 `restored`；reader 失败单独保留，
修正后重新复核，不重写或重跑原生成功实验。

仍需 unknown release、生产 Class 局部回退、setter 内部失败/真正断连/重启、
剩余 types/families、完整 UI/FLOW/A2A/XPass/AEB_Core、旧原件恢复、写性能与
package。历史 read P95 普通 663.115ms / Class 933.749ms；Class create/inverse
P95 1221.192/1064.938ms 仍不达一秒。本轮没有新性能结论。

[Base 闭环](../analysis/bde-experiments/2026-10-04/current-complete-base-01/result.json) ·
[三层闭环](../analysis/bde-experiments/2026-10-04/current-complete-deep-01/result.json) ·
[恢复链复核](../analysis/bde-experiments/2026-10-04/current-recovery-chain-summary-01/result.json)。

## Previous 2026-10-04: Actual CURRENT Unaccounted Action Recovery

Three actual isolated after-native-return/before-accounting faults now recover:
base primitive,base Store and mixed Main/h1/h2/h3 primitive.10 cumulative owners
have complete native/public/source/signature/configuration baseline restoration;
separate ordinary/Class cleanup restores the original baselines and fresh audits
verify candidate/material/signature/publication absence. Each metadata accounting
uses0new model setters;remaining recovery calls cost3/5/26model steps across
14/15/39dispatches.2826/2833/7939request frames include full audits and compilation;
these are functional recovery trials,not performance samples.

The first base recovery failed at an unsupported four-parameter block call before
accounting. Its immutable WAL and full unchanged fresh classification now bind
an explicit zero-setter metadata retry;the unused argument was removed. Store's
first classification failed because other owner context guards rejected the
active publish_started source. Read-only classification now focuses the single
active owner while preserving exact roles for all others. A Store can change
persisted source with0native collateral;full source classification still uniquely
determines the after outcome. All original failures remain failed.58focused tests
pass;other metadata completion loss/recovery interruption/release cases remain.

Final Offline158passes1013Python/21Doge/1042assertions/version,6live skips.
Independent summary01recomputes all3complete protocols/original cleanup/absence
proofs and verifies522current source hashes with0Cebra. Safety59preserves29original
files/hold,restored=false. Ledger75keeps26not_run/1performance fail/1original-recovery
blocked;none of these narrower proofs grants a complete case.

No complete delivery gate or one-second write acceptance is granted. Unfaulted
complete CURRENT cycles,production Class local inverse,inside-setter failures,
real disconnect/restart,all types/families/UI/FLOW/AEB_Core/package and original
AEB_1restoration remain required. Original files/hold remain unchanged,restored=false.
[Current evidence](../analysis/bde-experiments/2026-10-04/current-unaccounted-summary-01/README.md).

## Previous 2026-10-04: Complete CURRENT WAL And Pre-Native Recovery

Complete physical forward/inverse and separate recovery WAL protocols are now
implemented. The fixed recovery entry rechecks original raw bytes/WAL checksum,
token/domain/epoch/database session/pending and complete fresh classifications.
Remaining owner inverses use actual dynamic store plans and full baseline
observations before journaled release.51focused tests verify complete cycles,
12completed-unknown/12untouched inverse boundaries and evidence-tampering refusals.

Actual base and deep Main/h1/h2/h3pre-native faults cover7owners. A first started
record/pending marker is durable but signature_arguments is never called. Both
independent classifications prove the untouched outcome. Each separate recovery
performs1metadata release/0CURRENT setters after full public/native/source/
configuration equality;ordinary/strict Class compensation then restores complete
original baselines and fresh audits find all temporary records absent. Recovery
requests use2673/7513real Cebra frames,including full audits;this is not a new
performance trial. Independent summary01recomputes all proofs with0Cebra.

The first base driver later attempted normal strict refusal behind quarantine and
hit KeyError;original failed evidence remains unchanged. The driver is corrected
to stop immediately and retain the pending barrier;deep validates this correction.
Safety57used a wrong original store path and remains failed with0Cebra;correct
Safety58preserves29original AEB_1files/hold,restored=false. Summary path-normalization
initially failed before writing an output;the corrected independent audit passes.
Final Offline157passes1006Python/21Doge/1042assertions/version,6live skips,
518recorded source hashes match;older source snapshots remain historical.

Actual CURRENT primitives/stores/inverses are still disabled except the guaranteed
pre-native fault. Active unaccounted action,unknown release and recovery-WAL
interruption remain next,followed by actual base/deep and production Class local
inverse. All remaining types/families/UI/FLOW/AEB_Core/package/original restoration/
one-second writes stay required;no complete eval gate is granted.
[Independent proof](../analysis/bde-experiments/2026-10-04/current-protocol-summary-01/result.json).
[Reproduction](../analysis/bde-experiments/2026-10-04/current-protocol-summary-01/README.md).

## 2026-10-04: Dynamic Native Inverse Plans

Shared executor actions implement exact inverse planning/projection/execution for
fields and all six native collection kinds. Private02passes49actual assertions/
15private inverse operations,independently checked against complete effects.
Every original member/entry/order/value is restored;full live native fields are
equal,dirty/model setters/new assertions0. Its68request frames cover compilation,
private execution and bookends;this is not a CURRENT store or performance trial.

Base01/deep01 each pass one final-source isolated round,including Main/h1/h2/h3.
Their7owners have11sealed proposed inverse effects,each independently checked
against the exact corresponding forward effect. All complete public/native/source/
configuration baselines restore and fresh audits find every temporary record absent.
Independent summary01rechecks all effect/source/WAL/baseline proofs. This does not
certify actual CURRENT model mutation/store/inverse or production Class local inverse.

Forward WAL verification now supports complete collection collateral inverse
plans with dynamic counts;unknown unaccounted native action recovery is still
unaccepted. Offline154passes996Python/21Doge/1042assertions/version,6live skips;
513recorded source hashes match. Safety56preserves29original AEB_1files/hold;
restored=false. No timing was remeasured. Dedicated physical inverse WAL/recovery,
actual CURRENT execution and the remaining full delivery gates are still required.
[Independent evidence](../analysis/bde-experiments/2026-10-04/current-inverse-summary-01/result.json).
[Reproduction](../analysis/bde-experiments/2026-10-04/current-inverse-summary-01/README.md).

## 2026-10-04: Atomic Context Guards And Forward Prefix Audit

Final-source context-base04/deep03 pass112actual native ready/publishing refusal
assertions on7owners, including Main/h1/h2/h3. Independent summary01 verifies all
complete source/WAL/public/native/configuration baselines and fresh temporary-record
absence. The probe refuses altered guard expectations in the valid publishing
phase after2signature controls; it executes zero CURRENT setters.11CURRENT effects
remain proposed. External model faults and actual CURRENT positive execution are
not certified by these metadata probes.

Complete signature/configuration/source guards are now inside the fixed native
executor. The new offline forward-prefix auditor validates exact command/effect
order and unique missing-return outcomes without relying on diagnostic replies.
It has no live CURRENT attempt, physical producer, inverse or unaccounted recovery
acceptance and grants no recovery dispatch.44focused tests pass. Offline152passes
987Python/21Doge/1042assertions/version,6live skips,508unchanged final-source hashes.
Private12passes94private assertions/full-field equality;Safety55preserves29original
files/hold,restored=false. Whole delivery remains INCOMPLETE;ledger72has26not_run/
1performance fail/1original-recovery blocked. No timing was remeasured.
[Independent current evidence](../analysis/bde-experiments/2026-10-04/current-context-summary-01/result.json).
[Exact commands, retained failures and next physical work](../analysis/bde-experiments/2026-10-04/current-context-summary-01/README.md).

The entries below refer to their recorded earlier source versions.

## 2026-10-04: Exact Proposed Native Effects And Ready Classification

Final-source base/deep01 each pass one actual isolated preparation round; deep
uses caller index1/Main/h1/h2/h3. All7owners have sealed pure-value primitive plans:
7pin removals and4position setters. Each effect records the exact changed field
or complete collection before/after membership, stable observation aliases and
historical values. Independent validation rejects omitted/reordered/retargeted
steps, wrong coordinates/types/Point identity and altered manager bindings.
No CURRENT primitive/store is executed.

The ready classification is durable between preparation and terminal in the
preflight WAL. Independent complete source/signature/configuration comparisons
and original native-prefix checks pass14source images across7owners. The old
temporary private publication and separate ordinary/strict Class inverses restore
all complete baselines; fresh independent audits prove temporary records absent.
Summary01 rechecks those actual values and complete immutable WALs, including3826
cumulative captured objects, not distinct component coverage.

The dedicated outstanding-CURRENT read-only recovery branch builds, with exact
origin/epoch/session/database/quarantine/owner order checks. Its shared classifier
is used by the successful ready preflight, but the origin/pending recovery branch
has not been accepted on an actual CURRENT failure. It supports classification
only; journaled reconciliation/physical recovery remains required. Old private
recovery refuses an origin marked as CURRENT execution.

Private11 passes94actual private-export assertions with complete live-field
equality/zero model setters/dirty editors/new assertions. Offline151passes976Python/
21Doge/1042assertions/version with6live skips and504verified current source hashes.
Safety53preserves29original AEB_1files/hold;original restored=false. Whole ledger71
keeps26not_run/1fail/1blocked,0missing artifacts. No current performance, actual
CURRENT execution, production local inverse or complete delivery is claimed.
Next: dynamic WAL/unknown recovery planner and explicit journaled reconciliation,
then actual base/deep native execution, post-store identity and ordinary inverse.
[Independent summary](../analysis/bde-experiments/2026-10-04/current-step-plan-summary-01/result.json).
[Reproduction and exact limits](../analysis/bde-experiments/2026-10-04/current-step-plan-summary-01/README.md).

## Previous 2026-10-04: Frozen Actual Native Diff Export

New-source private10 passes 94 actual assertions on owned39624/32641. The report
now includes complete collection member/entry values, native observation aliases,
and Point/String values taken from the corresponding before/after snapshots.
Later private in-place coordinate/string changes leave those historical exports
unchanged. All six collection kinds and shared Point aliases are checked; full
live graph fields before/after are equal, dirty editors=0, model setters=0 and
new assertions=0. Wire evidence records 53 request/52 response frames with no
parse/incomplete-byte/proxy errors; frame counts do not certify performance.

Private08 fails when immutable Symbol keys are treated as captured mutable strings.
Private09 fails when selecting the first member of Set-valued collections.
Both remain failed; the corrected Symbol boundary and asArray selection pass in10.
Complete live-field bookends and frozen source/dependency hashes are retained.

The CURRENT execution draft adds active-action classification/reconciliation and
inverse of the actually applied prefix. Fixes remove an unproved true identity
receipt, correct requires-store boolean precedence, validate store source/member
identity before completion accounting, and defer clearing active reconciliation
until receipt encoding succeeds. Actual ASCET compilation passes in private10.
There is NO actual CURRENT primitive/store/recovery acceptance or C# dispatch
integration. Store-unknown classification is deliberately restricted to observed
dynamicGOInfo field effects and still needs complete independent model/configuration
checks; it is not a general failure/restart recovery guarantee.

The two existing preparation-verifier modules pass 16 focused offline tests.
Safety52 preserves all29original failure files/hold; original restored=false.
No new whole-suite/performance run or whole-case pass. Prior preparation/suite
results below refer to their own source versions. Next remains dedicated physical
CURRENT WAL/recovery, actual base/deep execution, then the remaining production
Class inverse/type/UI/FLOW/AEB_Core/release/recovery/one-second-write gates.
[Actual private proof and exact sources](../analysis/bde-experiments/2026-10-04/current-capture-private-10/result.json).
[Reproduction and limits](../analysis/bde-experiments/2026-10-04/current-capture-private-10/README.md).

## Previous 2026-10-04: CURRENT Executor Preparation And Capture

Final-source base02/deep02 pass one actual preparation round each on owned
39624/32641. Prepared schedules contain 11 native primitives across 7 owners;
3826 cumulative native objects are observed. No CURRENT action/store executes.
The existing temporary private publication and its restoration, ordinary inverse
and strict Class inverse restore complete public/native/configuration baselines.
Fresh independent audits prove temporary records absent with unchanged trial bytes.
Summary01 independently rechecks every complete source, model/preflight WAL,
prepared binding and final baseline. All 503 current source hashes match.
[Summary](../analysis/bde-experiments/2026-10-04/current-execution-summary-01/result.json).

Private capture07 passes 53 actual assertions, covering six collection kinds,
detached desired-Point changes, membership diffs, new nested objects/field diffs,
historical snapshot corruption and restoration. Full live graph fields are equal
before/after; model setters=0, dirty editors=0, new assertions=0. This uses private
objects and does not validate model mutation/store commands. Failed compile01-03
and private01-05 are retained; native checks exposed IdentityDictionary handling
and removal-related observation gaps before current graph writes were attempted.

Offline150 passes 971 Python/21 Doge/1042 assertions/version, 6 live skips.
Safety51 keeps 29 original AEB_1 failure files/hold unchanged; original restored=false.
No fresh performance is claimed. Next: dedicated CURRENT primitive/store WAL,
partial/unknown classification/recovery, actual same-current execution and post-store
identity/later ordinary inverse. Remaining types/families/nativeUI/FLOW/AEB_Core/
package/original restoration and one-second writes stay incomplete.
[Implementation and reproduction inputs](bde-class-current-execution.md).

## Previous 2026-10-04: Actual CURRENT Identity Binding

Final fixed templates compile05passes in real ASCET. Base03/deep02each pass1actual
isolated round;deep uses caller index1/Main/h1/h2/h3. Setter-free preflights bind
7owners/7exact removal targets/48existing pins/4planned coordinate setters.
Summary01independently recomputes full prepared-patch comparisons,complete
publication sources/model WAL and final public/native/configuration baselines.
Fresh separate audits verify all temporary records absent with trial bytes unchanged.
[Verified current summary](../analysis/bde-experiments/2026-10-04/current-identity-summary-01/result.json).

Base02failed on EtasAPIDiscreteMethod>>item before any publication setter. Its
complete baseline restores through separate ordinary/strict Class inverses,and
an independent zero-step abandonment/absence audit passes;failure bytes remain.
The corrected planner verifies the method API's actual method and the retained
publication definition's ownerSGClass identity. Input-only base01/deep01and
Safety49schema failures are separately recorded with zero model connections.

Final-source Offline149passes963Python/21Doge/1042assertions/version,6live skips.
Safety50keeps29original AEB_1files/hold unchanged;restored=false. This is actual
pre-write CURRENT binding,not same-CURRENT model execution or post-store object
preservation. Publication still stores a private patched graph. Production Class
local inverse/native faults/types/families/UI/FLOW/AEB_Core/package/original
restoration and1second write gates remain open. No fresh timing or whole pass.
NEXT: actual same-CURRENT local execution/store,durable CURRENT/model recovery,
post-store native identity and later ordinary inverse compatibility.

## Previous 2026-10-04: Complete96case Recovery And CURRENT Identity Compilation

Matrix04 passes96/96cases:base/extended/mixed x3at10/10/12dispatch boundaries.
Public-audit02 independently checks all3complete public baselines with zero setters.
Summary02recomputes468confirmed original dispatches,96unknown native completions,
363recovery dispatches,240actual recovery model steps and324cumulative owner
observations. Complete CURRENT/full original restoration and absence pass for
every case;all471frozen sources matched at predecessor terminal verification and
original failed bytes were unchanged. New core changes have a separate version.
[Independent summary](../analysis/bde-experiments/2026-10-04/bde-pub-fault-summary-02/result.json).

Independent current-identity compile04passes inside ASCET:32request/31response
frames,zero model setters/dirty editors/new assertions,unchanged source/origin/
installed-and-bundled DLL hashes. Compile01's immutable-result write error and
02/03's runtime launch failures remain failed;03 records exit3762504530and zero
frames. Bundling the installed Etas.AscetNET.dll resolves launch;child exit/stdout/
stderr/wire outcomes are now persisted before attempting to read raw.json.
[Actual compilation](../analysis/bde-experiments/2026-10-04/current-identity-compile-04/result.json).

The default-OFF ready-state audit is integrated and builds,with independent full
target/existing-pin comparisons and explicit helper hashes. Actual ready-state
base/deep identity binding remains pending. No new performance measurement or
production Class local inverse/whole gate is claimed. Safety48 keeps29original
AEB_1files/hold unchanged;original restored=false. Next ready-state checks,then
same-CURRENT execution/post-store identity/later ordinary inverse compatibility.
[Contract](bde-class-current-identity.md).

## Previous 2026-10-04: Exact Completion-Loss Recovery

Fresh frozen-source mixed matrix03 passes12/12 actual native dispatch boundaries,
covering signature arguments/commit,all4owner publication actions,restored
signature arguments/commit and all4owner restoration actions. Independent
summary01 rechecks the full original and recovery WALs:66confirmed original
dispatches,12uniquely classified unknown completions,51remaining recovery actions,
34actual recovery model steps and48cumulative complete owner classifications.
No original unknown dispatch is replayed. Every case restores full CURRENT,
then its complete original baseline,and verifies all retained records absent.

Fresh public audit01 independently observes all3creation-matrix fixture baselines
through uncached per-field public getters,zero setters,and unchanged original
matrix files. Offline146 passes955Python/21Doge/1042assertions/version,with6live
skips. Safety47preserves29original AEB_1files and the write hold;restored=false.
The full base/extended/mixed x3matrix04 is running;96case acceptance is unproven.

Matrix02remains FAILED after6successful cases:at dispatch7the native arguments,
return and configuration already match,but the uncommitted restored formal's
public getModelType is invalid. Diagnostic01preserves that exact getter error.
The fixed raw primitive signature reader collects all original fields and must
equal the public full signature when available. Python independently compares
the full durable CURRENT and exact created-formal inverse;arbitrary API errors,
value/identity/configuration changes and unsupported types refuse. Fresh
classify03/reconcile03perform only the remaining commit and3caller stores;
cleanup03and audit03verify full restoration/absence with unchanged failure bytes.

These faults occur after native action completion but before coordinator WAL
completion. They do not prove actual Cebra disconnection,inside-setter/commit/store
failure or ASCET restart recovery. Production bd_revert Class local inverse stays
strict whole-owner;permanent merged identity compatibility remains required.
No fresh performance claim or whole G0-G7/FLOW/L0-L3pass is granted.
[Recovery contract and evidence](bde-class-publication-recovery.md).
[Independent12case summary](../analysis/bde-experiments/2026-10-04/bde-pub-fault-summary-01/result.json).

## Previous 2026-10-04: Actual Class Model Publication And Recovery

The fixed default-off study now actually publishes the merged Class signature
and all affected caller BDEs on the disposable endpoint,then restores the exact
pre-publication CURRENT. Final-source publication08 mixed and09 base each pass
three rounds:21owner observations,42complete published/restored sources,
66physical WAL dispatches,15caller stores and15restore stores. Independent node
moves and incident routes survive the Class change removal. Complete original
baselines restore through separate ordinary and strict Class inverse execution.

Eight fresh absence audits cover every successful token and failed04/07,with
zero setters and unchanged trial bytes. Independent summary rechecks full raw
model WAL,complete sources/scopes/actual effects and486source fingerprints:
zero outstanding/drift/new crash assertions. Offline143passes942Python/21Doge/
1042assertions/version;6live skips remain. Safety46preserves29original AEB_1files
and write hold;original restoration is still false.

Publication04's unsupported Dictionary removeAll failure is retained. Read-only
classification proves definition source already restored;separate reconciliation
repairs registry metadata and executes only the two remaining caller stores.
Publication07's atomic-edge-list oracle failure is retained. The corrected
complete-value multiset oracle preserves disjoint route edits and duplicate
counts;separate complete source/native binding proofs still establish identity.
New publication08/09provide online acceptance for the fix.

Production bd_revert Class local inverse remains strict whole-owner. The new
study temporarily publishes and restores a merged state;it does not enable
general permanent merged recovery. Other partial/unknown stages,restart and
store/transport/native fault matrices,broader types/families/nativeUI/dependent-
shared FLOW/final isolated AEB_Core/package/original recovery remain open.
No new performance result or whole gate is granted.
[Detailed results,failures and reproduction](../analysis/bde-experiments/2026-10-04/bde-class-model-publication-summary-01/report.md).

## Previous 2026-10-04: Current Native Input And Layout Patch

Final-source layout09(base)x3 and10(mixed Main/h1/h2/h3)x3 pass6real rounds,
21complete owner source comparisons,21exact created-input removals and6undrawn
definition no-ops.144existing pin bindings include42hidden descriptors.12actual
coordinate setters bind to the exact pin/external key,connector class and position
field index in PRIVATE CURRENT;all120private changes restore in120inverse steps.
Another87current-witness normalization changes restore before layout preparation.
All complete public/native/configuration baselines restore.7fresh absence audits
verify final and failed trials have no candidate/material/signature records and
preserve original experiment bytes. Independent full-source/scope/original-WAL
summary rechecks pass with0outstanding/assertions/source drift.

Offline142passes928Python/21Doge/1042assertions/version,6live skips;481source
fingerprints match. Safety45preserves29original AEB_1files/hold,restored=false.
Safety44's wrong journal directory remains failed. Native-layout01/02resource,
03/04argument,05getter and06/07oracle failures remain failed. The older mixed
runtime-patch06failure is retained rather than relabeled as success.

This proves private current-clone cont-input/layout removal while preserving a
connected ordinary literal move,not production model local inverse/publication.
Independent pin-axis conflicts/preservation remain offline tests. Durable model
CURRENT/WAL/partial recovery,broader faults/types/independent edits/UI/FLOW/
isolated AEB_Core/package/original restoration/performance/whole gates remain.
[Verified evidence and reproduction](../analysis/bde-experiments/2026-10-04/bde-class-runtime-layout-summary-01/report.md).
[Implementation and next work](bde-class-current-runtime-patch.md).

## Previous 2026-10-04: Independent Existing-Pin Layout Proposal

The new complete-source planner rechecks mixed06's actual retained online data:
36existing pins in4caller occurrences,including8hidden source/native-child
descriptors,produce exactly4return-port Yrestores190->180. The base05first-round
recheck checks12pins and produces0coordinate changes. Both preserve the original
experiment bytes. Thirteen focused tests pass for independent-axis preservation,
touched-axis conflicts,already-restored coordinates,exact added targets and
declaration/pin/parent/Class/visible-hidden membership refusals.
Offline141passes925Python/21Doge/1042assertions/version;6live skips remain.
Ledger65keeps28whole cases incomplete(26not_run/1blocked/1fail),0missing
artifacts. Recorded offline source fingerprints freshly match without drift.

These are offline proposals. Native object binding,actual coordinate setters and
new complete-source online regression remain pending. Mixed06 remains FAILED;
no native inverse,production publication,performance or whole gate is newly passed.
The initial hidden-membership refusal is retained in plan01 rather than overwritten.
[Mixed proposal](../analysis/bde-experiments/2026-10-04/bde-class-pin-layout-plan-03/result.json).
[Base proposal](../analysis/bde-experiments/2026-10-04/bde-class-pin-layout-base-plan-01/result.json).
[Binding boundary and next work](bde-class-current-runtime-patch.md).

## Previous 2026-10-04: Private Current Runtime Patch, Base-Only

Final-source runtime-patch05 passes3base rounds/9complete owner source comparisons.
Six caller owners remove9exact created inputs;3undrawn definitions require complete
current/candidate equality. All39actual private changes restore in39inverse steps.
Native/Python local source plans explicitly preserve the current allocator high-water
using audited native store semantics. Separate ordinary/Class inverses restore full
public/native/configuration baselines. Fresh05audit01 finds no temporary records.
[Source-bound summary](../analysis/bde-experiments/2026-10-04/bde-class-runtime-patch-summary-01/report.md).
[Implementation and next work](bde-class-current-runtime-patch.md).

Mixed third-level runtime-patch06 remains FAILED:4existing caller return-port Y
coordinates stay190 where complete merged sources require180. Precise input removal
does not restore all dependent layout effects. Both separate inverses and final
baseline read succeed before failure reporting;the failed row does not set its
completion flag. Fresh06audit01 verifies absence and unchanged failure bytes.
No comparison field is skipped,no source metadata is prefilled from the candidate,
and base results are not generalized. Earlier01/02/03failures remain unchanged.
[Failure diagnosis](../analysis/bde-experiments/2026-10-04/bde-class-runtime-patch-06-diagnostic-01/result.json).

Offline140 passes912Python/21Doge/1042assertions/version,6live skips,477fresh source
hashes matching. Safety43 preserves29original AEB_1files/hold;restored=false.
No new performance,model merge publication,Class local inverse or whole-case pass.
Return-layout lineage/field conflicts,model WAL/durable CURRENT/partial recovery,
remaining types/families/UI/FLOW/AEB_Core/package/original restoration remain.
Historical sections below refer to their recorded source versions.

## Previous 2026-10-04: Exact Native Storage Return Witnesses

Storage-witness03base and04mixed Main/h1/h2/h3 pass6final-source rounds.63complete
original/applied/current images bind the exact native storage return and parent
pointers to actual export refs,with independent complete source/scope/WAL checks.
702member/315edge observations and765native calls are cumulative coverage.
231additional private normalization changes/inverses and168actual native tuple/
metadata faults restore exactly;126existing history seal checks also pass.
All complete public/native/configuration baselines restore;fresh absence audits
preserve original experiment bytes.0outstanding/source/input drift/new assertions.
Offline139 passes896Python/21Doge/1042assertions/version,6live skips,474source
hashes rechecked. Safety42 preserves29original AEB_1files/hold;restored=false.

Failure01 is retained: native compilation rejected block-parameter assignment
before model edits. A local-variable fix passes smoke02 and final03/04. No whole
gate or new performance result is claimed. Exact pairs are capture-local;edge
identity between captures,merged runtime publication,Class local inverse,durable
CURRENT/partial recovery,remaining types/families/UI/FLOW/AEB_Core/package and
original restoration remain. [Evidence](../analysis/bde-experiments/2026-10-04/bde-class-storage-witness-summary-01/report.md).
[Contract](bde-native-storage-witness.md).

## 2026-10-04: Capture-Time Original And Applied Graph Images

Final-source retained-runtime03(base)x3 and04(mixed Main/h1/h2/h3)x3 pass6actual
Doge Class-create/ordinary-move/candidate-audit/strict-refusal/separate-inverse
rounds.42private original/applied images bind complete sources and original edit
WAL generations. All6moves change old live afterBindings fields while the copies
remain exact.135actual cache-field changes are recorded and restored;0private
collection changes occur.126seal negatives include42copied-descriptor refusals
and84actual private field/memo disturbances,all restored. These are private faults,
not production external model/setter/restart acceptance.

21current runtime proofs remain complete with96private normalization inverses.
All complete public/native/configuration baselines restore;0outstanding/source/
input drift/new assertions. Fresh03/04audits find no candidates or Class material/
signature records and preserve all experiment bytes. Offline138 passes885Python/
21Doge/1042assertions/version,6live skips;471source hashes freshly recheck unchanged.
Safety41 preserves29original AEB_1failure files/hold;original restored=false.
[Verified summary and reproduction](../analysis/bde-experiments/2026-10-04/bde-class-retained-runtime-summary-01/report.md).

No merged runtime publication,Class local inverse,durable CURRENT/restart recovery,
new performance or whole-delivery gate is completed. Those remain required,along
with remaining types/families/native visual/FLOW/isolated AEB_Core/package/original
restoration. Native images remain process-local/default-OFF;the six tools are unchanged.

## 2026-10-04: Private Native Runtime Source Reproduction

Runtime04/05 pass6final-source base/deep rounds and21owner clones. Native
createStorageObjectsFor: regenerates the complete graphical source on private
copies. Independent typed-value/bidirectional-sharing oracles match every current
source. Repeated observations cover783keyed members/53520fields,not unique counts.
The existing private executor records96actual dynamicGOInfo field allocations;
the guarded inverse restores all exact references. No private collection changes
occur in this tested profile. Complete live native/source/context remains unchanged
and separate ordinary/Class inverses restore each complete baseline.

Fresh final status audits confirm absence and unchanged original experiment bytes.
Offline137 passes878Python/21Doge/1042assertions/version,6live skips;all468recorded
source hashes freshly recheck unchanged. Safety40 preserves29original AEB_1failure
files/hold;original restored=false. Earlier runtime01/02/03 lack this final native
normalization recovery and remain preceding-source evidence.
[Verified summary](../analysis/bde-experiments/2026-10-04/bde-class-source-runtime-summary-01/report.md).
[Recovered call chain and limitations](bde-class-native-source-runtime.md).

No live source assignment/full store/logic recreation/commit,merged runtime patch,
Class local inverse,fault/performance/all-family/FLOW/UI/AEB_Core/package/original
recovery gate is completed by this experiment. These remain required.

## 2026-10-04: Native Candidate Lifecycle

Final-source base/deep candidate04/05 pass6actual rounds,21owner preparations,
actual shared scope pin checks,duplicate preparation reuse,273copied-record
negatives,actual stale refusal/release and complete separate baseline restoration.
Independent fresh candidate status audits find all entries absent and preserve
experiment bytes. Private candidate WAL binds full owner roster/current observation,
checksum envelopes and started/completed/terminal outcomes; it never authorizes
model writes or retries an unknown call. The first unsupported five-argument
factory failure remains recorded,with a separate absence audit.

[Verified summary](../analysis/bde-experiments/2026-10-04/bde-class-source-candidate-summary-01/report.md).
Offline136 passes870Python/21Doge/1042assertions/version,6live skips. Recorded
source hashes recheck unchanged at summary publication. Safety39 preserves the
29original AEB_1 failure files/hold;original restoration remains false.

Candidate preparation does not execute Class local inverse or publish merged
sources. Runtime/source binding,merged native publication,CURRENT WAL/partial
failure recovery,remaining types/families/UI/FLOW/AEB_Core/package and original
recovery remain. Historical performance was not remeasured this increment.

## 2026-10-04: Candidate Dependencies And Strict Registry Extensions

The fixed persisted-source export records the audited memory-block child getter;
its complete child-ID multiset matches return/selector descriptors, including hidden
and nil formals. Formal opt-in inverse preview now verifies every candidate edge's
block/pin/scope ownership and exact target Class declaration/method/formal aliases.
Current signature must equal the actual applied signature. Signal type/direction,
external signatures and signature merging remain unverified.

[Current summary](../analysis/bde-experiments/2026-10-04/bde-source-dependency-summary-01/report.md)
binds6final-source actual rounds:3base moves have valid dependencies;3mixed
third-level new-input connections have exact SOURCE_DANGLING_ENDPOINT conflicts.
Value merges are compatible in both profiles;formal previews match independent
analysis. Separate ordinary/Class inverses restore exact full public/native/config
baselines,with0outstanding/source/input drift/new assertions.210synthetic private
checkpoint counterexamples refuse without mutating registries or model data.

The strict inverse guard now permits only monotonic edge-ID extensions with exact
original object/collection/source/ID and owner/scope/generation/certificate checks.
Incident01 refusal and dependencies02 JSON-decoder failure remain immutable.
Separate incident01 recovery proves exact restoration;dependencies02 compensated
before failure reporting. No candidate publication/local inverse executor is exposed.

[Offline135](../analysis/bde-experiments/2026-10-04/offline-contract-135/result.json)
passes858Python/21Doge/1042assertions/version with6live skips. Fresh461-source
verification finds0drift. [Safety38](../analysis/bde-experiments/2026-10-04/bde-continuation-safety-38/result.json)
preserves29original AEB_1 files/hold;restored=false. No new performance acceptance.
Whole delivery remains INCOMPLETE;native local publication/WAL/partial recovery,
remaining Class types/families/native visual/FLOW/AEB_Core/package and original
restoration remain. [Ledger59](../analysis/bde-experiments/2026-10-04/bde-eval-ledger-59/report.md)
retains26not_run/1blocked/1fail with0missing artifacts across28whole cases.

## Previous 2026-10-04: Complete Source Oracle And Third-Level Matching

The formal opt-in inverse preview now validates every complete source candidate
through an independent Python merge. Native exports preserve all original/applied/
current/candidate fields, dictionaries, ordered members, structural references and
exact scalar representations. Hierarchy wrapper identity is the recovered
SGGraphicsBlockDB graphicBlock -> SGHierarchyGODB iD. Full exports stay in raw
evidence;only verified analysis and fingerprints are returned to the agent.

[Final summary](../analysis/bde-experiments/2026-10-04/bde-source-oracle-summary-01/result.json)
binds12actual rounds on final source: three Main fixtures x3 and mixed third-level
scope x3. Every candidate/formal preview matches, all separate ordinary/Class
inverses restore exact complete original baselines, and there are0outstanding edits/
source or input drift/new assertions. Candidate execution/dependencies remain
unverified;no merged-source setter is exposed.

[Offline134](../analysis/bde-experiments/2026-10-04/offline-contract-134/result.json)
passes844Python/21Doge/1042assertions/version with6live skips. A fresh456-source
SHA256 recheck finds0drift. [Safety37](../analysis/bde-experiments/2026-10-04/bde-continuation-safety-37/result.json)
retains29original AEB_1 files and hold;restored=false. No new performance acceptance.

Source-oracle01/02 failures retain their original results and finish full separate
restoration.06/07 harness failures are separately restored through guarded confirmed
Class apply inverses;they cannot certify deep candidate planning.08 is a successful
deep diagnostic;09 and10-12 are final-source three-round acceptance for this narrow
candidate/strict-compensation profile. Whole delivery remains INCOMPLETE.

## Previous 2026-10-04: Native Source Planning And Formal Inverse Preview

[Current source planner contract](bde-class-local-source-inverse.md) records the
fixed native original/applied/current merge, recovered source field/identifier
accessors, typed result validation and exact remaining execution boundary.
`ASCET_BD_CLASS_SOURCE_PLANNING=1` exposes candidate analysis in real inverse
preview; it never authorizes a setter or replaces the actual strict owner inverse.

Source-plan06/07/08 pass3actual rounds each on base/extended/mixed fixtures.
Independent native candidate observation agrees with formal Tool.call preview;
all source candidates report compatible. Each round proves strict changed-owner
refusal, then separate ordinary/Class inverses and complete native/public/config
baseline restoration. No source/input drift/new assertions/outstanding operations.
Complete independent candidate-value/dependency validation, merged-source store/
native identity restoration and journaled fault recovery remain required.

01/02pre-edit compiler failures remain.03's original passed=true summary cannot
certify native source planning because all returned results were null;the separate
audit disqualifies that claim without rewriting the original evidence.04reports a
real whole-block-array conflict;05uses keyed identifiers/order.06-08 include final
native/Python completeness validation and formal preview integration.

[Focused regression](../analysis/bde-experiments/2026-10-04/bde-focused-verification-02/result.json)
passes128unittests in14.602s. [Safety36](../analysis/bde-experiments/2026-10-04/bde-continuation-safety-36/result.json)
preserves29original AEB_1 failure files and its write hold,restored=false,
0model setters/0Cebra connections. Historical read/write timing is unchanged;
no new performance measurements or whole-case pass. Whole delivery INCOMPLETE.

## Previous 2026-10-04: Genuine Mixed-Edit Restoration And Nine Online Rounds

The isolated independent-edit02 failure's physical move and Class creation are
now restored. [Known-move-restoration01](../analysis/bde-experiments/2026-10-04/bde-known-move-restoration-01/result.json)
executes a separate guarded compensation using exact retained objects and checks
the full original Class-applied native/public/configuration baseline. It does not
replay the original unknown-outcome setter. Only that exact pending marker is
cleared after durable complete verification. The original failed result/WAL/native
started record remain unchanged. [Post-move-inverse01](../analysis/bde-experiments/2026-10-04/bde-class-post-move-inverse-01/result.json)
then completes the formal strict Class inverse and independently verifies the
complete original pre-Class baseline. This does not restore the separate AEB_1 hold.

The failure exposed persisted raster normalization: requested137,361 reloads as
140,360, changing the route's retained/fresh comparison. Literal moves now validate
with `SGDefaultPaneCtrl ascetDefaultRaster rasterPoint:` and reject a different
aligned anchor before setters instead of silently changing the requested position.
[Grid-validation02](../analysis/bde-experiments/2026-10-04/bde-literal-grid-validation-02/result.json)
passes three refused/two accepted validate-only positions with full geometry
bookends unchanged. Other node families' raster rules remain unverified.

Class `verifyCurrent` now compares the registry/captured checkpoint through exact
recursive `sameSource`. Ordinary edit/inverse can produce an equivalent copy, so
pointer equality wrongly refused a fully restored graph. Owner/object/registry/
generation/counter/aliases/collections/managers/persisted-source guards and complete
owner equality remain. New native material explicitly retains checkpoint/counter/
scopeEpoch/issuedGeneration. Legacy BlockContext reflection is recovery research,
excluded from the default bridge, not a general agent interface.

| Fixture | Actual Tool.call rounds | Final complete baseline | Outstanding edits |
|---|---:|---|---:|
| [Base03](../analysis/bde-experiments/2026-10-04/bde-class-independent-edit-03/result.json) | 3 | Exact | 0 |
| [Extended04](../analysis/bde-experiments/2026-10-04/bde-class-independent-edit-04/result.json) | 3 | Exact | 0 |
| [Mixed05](../analysis/bde-experiments/2026-10-04/bde-class-independent-edit-05/result.json) | 3 | Exact | 0 |

Each round creates a Class primitive input, moves an existing connected literal by
40,40, independently reads the current complete graph, checks inverse analysis,
requires strict Class preview/dispatch refusal before setters, then inverses the
ordinary move and Class creation separately. Fresh independent public/native/
configuration reads match the complete original baseline. All nine rounds have
zero source/input drift and new crash assertions. `collected_graph_compatible=false`
and `local_inverse_implemented=false` remain explicit. This does not certify a
native Class inverse that preserves unrelated changes.

[Focused verification](../analysis/bde-experiments/2026-10-04/bde-focused-verification-01/result.json)
records121unittests passing in14.721s; full offline128 remains historical.
[Safety35](../analysis/bde-experiments/2026-10-04/bde-continuation-safety-35/result.json)
retains all29original AEB_1 failure files and its write hold;restored=false,
0model setters/0Cebra connections. The first safety attempt used the schema of
Safety34, which lacks original_hashes, and failed before setters/output creation;
[preflight failure](../analysis/bde-experiments/2026-10-04/bde-continuation-safety-35-preflight/result.json)
is retained separately. The successful run uses the original byte-audit reference.

Reproduce into fresh owned output directories:

```powershell
E:\PYTHON\python.exe scripts/bde_class_independent_edit_experiment.py --manifest analysis/bde-experiments/2026-10-03/bde-isolation-02/bde-7c2bdc20e800/instance.json --matrix analysis/bde-experiments/2026-10-03/bde-class-create-matrix-02 --recipe mixed --output <fresh-owned-output> --repeats 3
E:\PYTHON\python.exe -m unittest test_bd_class_tools test_bd_class_creation test_bd_class_inverse_analysis test_bd_structure_journal test_bd_structure_conflicts test_bd_recovery
```

Run unittest from `E:\Repo\ASCET\scripts`; live experiments stay serialized.
No new performance measurements: historical complete semantic/Class read
P95=663.115/933.749ms and Class create/inverse P95=1221.192/1064.938ms remain
sample-scoped. The write1second target still fails. Native patch-preserving Class
inverse, remaining Class types/faults, ordinary all-family/native visual/FLOW,
isolated AEB_Core, verified package and original AEB_1 recovery remain incomplete.
Old unknown-result recovery presentation/retained resource release also remain;
whole delivery is INCOMPLETE and this increment grants no whole eval pass.

## Previous 2026-10-04: Mixed Class/Ordinary Edit Failure And Read-Only Inspection

The real mixed-edit experiment is not accepted. Independent-edit02 successfully
creates LocalInverseInput, then moving connected literal Main/n19 returns
outcome_unknown after native dispatch: retained and fresh edge endpoint/route
keys do not match. Independent-edit01 separately failed on JSONL parsing before
setters; that failure is not relabeled. The original ordinary WAL/pending marker
override its erroneous ordinary_outstanding=false summary flag. Future experiment
calls record unknown mutation status before throwing on an error response.

Two setter-free online inspections use the original component/domain/epoch.
Native state is started, after=null. The current node anchor is140,360, versus
original100,320 and requested137,361. Fresh public getters agree with the current
target position/size and the single outgoing edge's endpoint/type/route values.
Both probes preserve all original failure files and the exact pending marker,
with411request/410response frames, complete parsers and zero new crash assertions.
The ordinary node/edge change is visible, but no terminal apply or restoration
is established. Current-reader metadata/generation changes are not retained
original identity evidence; public edge value equality cannot replace identity.

No setters, replay, reconciliation, release, restart or additional mixed-edit
attempt occurred. Both Class creation and ordinary move remain outstanding.
The next step is separately guarded recovery of the ordinary move, then the
Class apply, followed by full public/native/configuration baseline verification.
Original AEB_1 recovery remains a separate unresolved hold. Whole delivery and
local inverse preserving unrelated Class changes remain INCOMPLETE.

[Inspection02 evidence and reproduction](../analysis/bde-experiments/2026-10-04/bde-class-independent-edit-inspect-02/report.md).
The two changed research Python helpers pass py_compile; the earlier offline128
suite was not rerun and does not certify their final source. Previously verified
performance results are unchanged and were not remeasured during inspections.

## 2026-10-04: Fresh Exact Native Configuration Guards

The default-OFF `ASCET_BD_CLASS_CONFIGURATION_GUARD=1` profile applies only to
the existing opt-in bulk primitive Class creation/inverse path. It binds the
fixed configuration reader to a per-bridge guard. The first complete read captures
exact native owner identity/OID and immutable deterministic text; every baseline
and write guard freshly reads the full graph inside ASCET and compares exact text.
Success returns `verified`, avoiding repeated transport/decode of unchanged graphs.
Complete before/actual-after/restored configurations still cross the bridge and
remain in durable evidence. Later observations cannot replace the baseline.
The bound guard is outside the persistent read-template cache. Separate setters,
identity/resource/dirty checks and durable started/completed WAL remain intact;
this is not a transaction or a guarantee of GUI isolation.

[Native probe04](../analysis/bde-experiments/2026-10-04/bde-class-configuration-guard-probe-04/result.json)
passes48controlled native checks on3actual full configuration graphs with0setters.
Missing/duplicate baseline, changed text, bad mode, nil/error reader results and
baseline immutability are covered. These are synthetic reader faults, not an actual
persisted configuration mutation or owner identity replacement. The probe also
exposed/fixed the production batch error branch's unsupported `includesSubString:`;
the actual selector is `includesSubstring:`. Both allowed cached errors preserve
their complete error text; other cached errors refuse. Failed probe01(C# local
name),probe02(runtime dependency/decoding),probe03(String selector) stay immutable.

[Guard matrix01](../analysis/bde-experiments/2026-10-04/bde-class-create-guard-matrix-01/result.json)
passes36formal Doge Tool.call cycles on3fixtures x4primitive types x3, including
Module/Class callers and up to3hierarchy levels,120created/restored pins. It retains
actual diff, zero-frame duplicate/changed-request/history/recovery paths, genuine
stale native refusal before setters and independent public applied/restored reads.
[Independent audit01](../analysis/bde-experiments/2026-10-04/bde-class-create-guard-audit-01/result.json)
verifies312completed dispatches, exact retained source-bound inverses and3fresh
complete uncached public/native/configuration baselines,0source drift and unchanged
original matrix files.

[Separate performance30](../analysis/bde-experiments/2026-10-04/bde-class-create-guard-perf-30-01/result.json)
uses resident real Tool.call, native profiling OFF and complete observations/guards/
WAL/publication. Startup, proxy teardown and independent public reads are separate.

| Operation | Samples | Median ms | P95 ms | Max ms | Request frames | Wire response bytes |
|---|---:|---:|---:|---:|---:|---:|
| Primitive Class input creation | 30 | 1178.787 | 1221.192 | 1253.166 | 299 | about672KB |
| Exact complete-owner inverse | 30 | 1037.363 | 1064.938 | 1080.479 | 255 | about419KB |

All30functional cycles pass; both1000ms performance targets FAIL. The earlier
batch-only run returned about904KB/652KB at293/249frames; this guard reduces bytes
while adding6setup requests. Separate sequential runs are not randomized causal
comparisons. Do not infer universal speed or reuse these values for other operations.
The retained3sample profiled guard-perf01 is diagnostic, not acceptance.

[Final public audit](../analysis/bde-experiments/2026-10-04/bde-class-create-guard-final-public-audit-01/result.json)
after performance verifies all3complete baselines with0setters and unchanged
original inputs. [Offline128](../analysis/bde-experiments/2026-10-04/offline-contract-128/result.json)
passes822Python/21Doge/1042assertions/version,6live skips;443source files match.
Offline127 predates final research/error-branch fixes; it is not the final source
acceptance. [Safety34](../analysis/bde-experiments/2026-10-04/bde-continuation-safety-34/result.json)
preserves29original AEB_1 files and its write hold,restored=false;the early wrong
reference-schema failure is recorded separately. No original business model writes.

Reproduce into fresh owned output directories:

```powershell
E:\PYTHON\python.exe scripts/bde_class_creation_tool_matrix.py --manifest analysis/bde-experiments/2026-10-03/bde-isolation-02/bde-7c2bdc20e800/instance.json --matrix analysis/bde-experiments/2026-10-03/bde-class-create-matrix-02 --output <fresh-matrix> --bulk-write --query-cache --batch-observation --configuration-guard
E:\PYTHON\python.exe scripts/bde_class_creation_performance.py --manifest analysis/bde-experiments/2026-10-03/bde-isolation-02/bde-7c2bdc20e800/instance.json --native-matrix analysis/bde-experiments/2026-10-03/bde-class-create-matrix-02 --recipe base --output <fresh-performance> --bulk-write --query-cache --batch-observation --configuration-guard --repeats 30 --trace-selectors
```

Whole delivery remains INCOMPLETE. Genuine configuration-change/owner-replacement
faults, Class other types/local inverse/native faults, ordinary all-family/original
BDE visual/FLOW gates, isolated AEB_Core, verified package and original AEB_1
restoration remain. Historical read P95 values were not remeasured.
[Ledger57](../analysis/bde-experiments/2026-10-04/bde-eval-ledger-57/report.json)
retains26not_run/1fail/1blocked;no whole-case pass. Next quantify material actions,
publication and the complete Python bridge before further performance changes.

## 2026-10-04 Previous: Fixed Native Observation Batching

The new opt-in batch combines adjacent fixed read queries inside ASCET. Complete
cached/fresh/retained caller graphs, public trees, owner scopes and persisted
configuration values remain covered. Every mutation still has separate durable
started/completed events and fresh identity/configuration/resource checks.
The batch is bound per bridge, outside the read-template cache. Independent
public_oracle observations never enable it; no mutable snapshot is cached.

[Batch matrix](../analysis/bde-experiments/2026-10-04/bde-class-create-batch-matrix-01/result.json)
passes36actual Tool.call cycles on3fixtures x4primitive types x3, including Module/
Class callers and three hierarchy levels.120caller pins are created and restored.
The matrix checks actual diff, zero-frame replay/history/recovery, real stale
native refusal before setters, and independent complete applied/restored public
observations. [Independent audit](../analysis/bde-experiments/2026-10-04/bde-class-create-batch-audit-01/result.json)
validates312completed source-bound dispatches and three fresh complete public/
native/configuration baselines, with unchanged original files and0source drift.

The separate [30sample performance run](../analysis/bde-experiments/2026-10-04/bde-class-create-batch-perf-30-01/result.json)
uses resident real Doge Tool.call on the base fixture, bulk/query-cache/batch ON,
native profile OFF. Each sample includes the complete write or inverse receipt,
bridge, identity, guards, WAL and actual observations. Proxy teardown, application
startup and independent public-oracle calls are separately recorded.

| Operation | Samples | Median ms | P95 ms | Max ms | Cebra request frames |
|---|---:|---:|---:|---:|---:|
| Create primitive Class input | 30 | 1209.729 | 1231.246 | 1235.626 | 293 |
| Exact complete-owner inverse | 30 | 1068.355 | 1098.020 | 1128.504 | 249 |

All30functional cycles and independent public bookends pass, with0outstanding
operations,0new crash assertions and0source drift. Both performance targets FAIL:
P95 remains above1000ms. Full response bytes remain approximately904KB/652KB;
reduced RPC count is not reduced field coverage or a proportional latency gain.
The older cached diagnostic used473/358frames; separate runs do not constitute
a randomized paired performance comparison. Other types/fixtures/cold images,
native faults and the whole delivery are not accepted by this performance run.

[Final explicit-public audit](../analysis/bde-experiments/2026-10-04/bde-class-create-batch-final-public-audit-01/result.json)
again verifies all3complete restored baselines after those30cycles, with0setters
and unchanged original matrix files. [Offline126](../analysis/bde-experiments/2026-10-04/offline-contract-126/result.json)
passes822Python tests/21Doge tests/1042assertions/version, with6live skips. A later
read-only matrix-auditor strategy check is separately exercised by audit01; it is
the sole source-manifest difference from Offline126, not a new production change.
[Safety33](../analysis/bde-experiments/2026-10-04/bde-continuation-safety-33/result.json)
preserves29original AEB_1 failure files and the unchanged hold;restored=false.

Optional native method profiling reports inclusive nested totals, which must
not be summed. The unbatched diagnostic retains its1608.79ms inverse outlier.
[Profiled results](../analysis/bde-experiments/2026-10-04/bde-class-create-profile-perf-01/result.json)
and [batched diagnostic](../analysis/bde-experiments/2026-10-04/bde-class-create-batch-perf-01/result.json)
locate observation/configuration/publication costs. Next, evaluate exact fresh
native configuration comparison to avoid repeated transport/decode, and measure
material actions/publication/bridge auditing before changing their behavior.
Complete original/actual observations and mutation guards must remain intact.

Reproduce into fresh owned output directories using the same disposable manifest:

```powershell
E:\PYTHON\python.exe scripts/bde_class_creation_tool_matrix.py --manifest analysis/bde-experiments/2026-10-03/bde-isolation-02/bde-7c2bdc20e800/instance.json --matrix analysis/bde-experiments/2026-10-03/bde-class-create-matrix-02 --output <fresh-matrix> --bulk-write --query-cache --batch-observation
E:\PYTHON\python.exe scripts/bde_class_creation_performance.py --manifest analysis/bde-experiments/2026-10-03/bde-isolation-02/bde-7c2bdc20e800/instance.json --native-matrix analysis/bde-experiments/2026-10-03/bde-class-create-matrix-02 --recipe base --output <fresh-performance> --bulk-write --query-cache --batch-observation --repeats 30 --trace-selectors
```

Whole delivery stays INCOMPLETE: Class other types/local inverse/faults, ordinary
all-family/original-BDE visual/FLOW gates, isolated AEB_Core, verified package and
genuine original AEB_1 restoration remain. State-machine work stays deferred.
[Ledger56](../analysis/bde-experiments/2026-10-04/bde-eval-ledger-56/report.json)
keeps26cases not_run, marks PERF-02 fail on measured latency, and keeps REVERT-03
blocked on original restoration. It grants no whole-case or delivery pass.
[Generalization and boundaries](ascet-native-batch-method.md).

## 2026-10-04 Previous: Class Bulk Write Observation

The opt-in bulk creation/inverse profile uses the existing fixed audited read
helpers for complete graph, signature and configuration observation. It leaves
the default public-getter path and existing write/session/isolated-owner guards
in place. [Bulk formal matrix](../analysis/bde-experiments/2026-10-03/bde-class-create-tool-bulk-matrix-01/result.json)
passes36 actual Tool.call cycles on3fixtures x4primitive input types x3, with
120created/restored caller pins and independent public applied/restored checks.
[Bulk audit](../analysis/bde-experiments/2026-10-03/bde-class-create-tool-bulk-audit-01/result.json)
passes312completed dispatches and fresh complete baselines at that candidate.

The later cache profile uses an8resource fixed-read whitelist and retains the
32entry bound. Mutation, detached-material and binding factories stay outside
the read cache. Current [cached diagnostic run](../analysis/bde-experiments/2026-10-04/bde-class-create-cached-perf-01/result.json)
passes3resident complete Tool.call create/inverse cycles and independent public
before/applied/restored checks. This is functional evidence, not performance
acceptance or a new cached36round matrix.

| Diagnostic profile | Create milliseconds, 3 samples | Inverse milliseconds, 3 samples | Request frames: create/inverse |
|---|---|---|---|
| Bulk, uncached | 1296.77 / 1331.03 / 1303.75 | 1106.41 / 1137.26 / 1152.54 | 470 / 355 |
| Bulk, cached | 1302.61 / 1297.45 / 1260.63 | 1093.10 / 1106.12 / 1094.68 | 473 / 358 |

[Uncached raw results](../analysis/bde-experiments/2026-10-03/bde-class-create-bulk-perf-01/result.json)
and cached raw results retain every sample. Timings cover complete resident
Doge Tool.call, bridge, live identity/preconditions, WAL, observation and receipt;
proxy shutdown and independent oracle calls are separate. These sequential
diagnostic runs do not establish a controlled causal cache benefit. Both remain
above1second and lack the required30sample acceptance.

The final independent audit now explicitly forces uncached per-field
public_oracle and checks the actual returned mode.
[Current public audit](../analysis/bde-experiments/2026-10-04/bde-class-create-current-public-audit-01/result.json)
passes3fresh complete native/public/configuration baselines with0model setters
and unchanged original matrix files. It proves current restoration; it does
not replace the missing cached36round or full offline acceptance. Offline125
predates the bulk/cache changes, so its source manifest is historical.

Remaining work includes RPC lifecycle/serialization profiling, cached36round
validation and affected offline checks, then separate30sample performance;
Class other argument types/local inverse/native faults, ordinary all-family and
original-BDE visual/FLOW gates, isolated AEB_Core and verified package. Original
AEB_1 Class restoration is still false and business writes remain held. Whole
delivery is INCOMPLETE; automation stays paused and the development goal active.

## 2026-10-03 Previous: Scope Certificate Regression

The fixed reader now requires actual epoch identity and issuedGeneration before
checkpoint reuse. Initial migration preserves existing generations/root objects;
[Scope12](../analysis/bde-experiments/2026-10-03/bde-scope-lifecycle-12/result.json)
verifies the pinned complete native/public baseline and64scope inventory.
[Scope13](../analysis/bde-experiments/2026-10-03/bde-scope-lifecycle-13/result.json)
actually retires an unused isolated scope and recreates its identical original
generation1 snapshot through the fixed legacy reader; modern read issues10 above
high-water9. Its comparator incorrectly shifts native node/pin IDs and fails.

Corrected setter-free [Scope14](../analysis/bde-experiments/2026-10-03/bde-scope-lifecycle-14/result.json)
verifies completed state without replaying retirement/legacy reads: all native
fields match with the documented allocated-edge alias shift; actual journal
conflicts after observe only; other scope/pin metadata and public state stay exact.
Scope13 stays FAILED and its files are unchanged. Fixture18's old baseline is
expired; current generation10 must be recorded before future mutation tests.

[Causal regression02](../analysis/bde-experiments/2026-10-03/bde-scope-causal-regression-02/result.json)
and [fresh audit02](../analysis/bde-experiments/2026-10-03/bde-scope-causal-audit-02/result.json)
pass3real deletion/double-inverse rounds and exact full native/public/drawing
restoration. [Offline123](../analysis/bde-experiments/2026-10-03/offline-contract-123/result.json)
passes812Python/21Doge/1042assertions/version,6live skips;final428source files have
0drift. [Safety30](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-30/result.json)
preserves29original Class-failure files/hold; original Class formal remains lost.
Whole delivery remains INCOMPLETE; broad lifecycle/Class/FLOW/all-family/native
fault/UI/AEB_Core/package gates remain. No read timing or global optimum claim.
[Certificate contract and reproduction limits](bde-scope-lifecycle.md).
[Ledger53](../analysis/bde-experiments/2026-10-03/bde-eval-ledger-53/report.json)
keeps28whole cases incomplete(27not_run/1blocked),0missing artifact links.

## 2026-10-03 Previous: Bounded Scope Lifecycle

[Scope09](../analysis/bde-experiments/2026-10-03/bde-scope-lifecycle-09/result.json)
passes pre-certificate-source actual pressure at64, exact LRU victim, preserved pinned
metadata, prepared-record retirement refusal, wrong-generation refusal, single
unused retirement, generation1to9 and formal StructureJournal stale conflict
before preparation/setters. Complete public fixture state stays unchanged.
Actual nongraphical reads refuse before allocation and keep inventory identical.
25native policy checks use local synthetic dictionaries, including all64pinned;
they are not actual64-live-edit or original-BDE UI callback acceptance.

[Causal regression01](../analysis/bde-experiments/2026-10-03/bde-scope-causal-regression-01/result.json)
passes3real operator-chain deletion/double-inverse rounds after pressure;
[fresh audit01](../analysis/bde-experiments/2026-10-03/bde-scope-causal-audit-01/result.json)
proves exact full native/public/drawing restoration and unchanged original files.
Offline122 passes808Python/21Doge/1042assertions/version,6live skips. Safety29
preserves29original Class-failure files/hold;Class restoration remains false.

Scope08 is a passing prior candidate. Scope01/02/04 compile failures,05 retained
material refusal,06 domain.session omission,07 unsupported-spec allocation bug,
and10 no-new-eligible-scope failure stay preserved.07's native prepared record
is separately inspected/discarded by08.10's failure cleanup checks actual prepared
state before release. No completed setter/store/inverse is replayed. The first
Safety29 command uses an invalid summary reference;preflight failure is retained
and the final passing audit uses the original byte-audit reference.

No read latency rerun or global optimality claim. Remaining actual64live-record,
active UI/Class/private restoration pressure,sustained churn and full family/
nativefault/Class/FLOW/UI/AEB_Core/package acceptance keep whole delivery INCOMPLETE.
[Implementation, commands and exact limits](bde-scope-lifecycle.md).

## 2026-10-03 Previous: Production Causal Drawing Order

[Summary01](../analysis/bde-experiments/2026-10-03/bde-causal-summary-01/result.json)
independently validates27actual double-inverse rounds/54inverse proofs/18causal
witnesses/27completed application reply losses. Current Deletion05-10 covers
delete_node/disconnect_data x3fixtures x3rounds;Recovery02-04 covers3fixtures x3rounds.
Each primary inverse preserves a later independent final-literal deletion; its
secondary inverse restores complete exact native/public baseline/drawing order.
Fresh audit04-09 passes unchanged complete bookends and experiment files.

Production witness preservation,exact metadata/map pre-setter rechecks,durable
source/inverse binding,compact receipts and preview validation are implemented.
Live recovery verifies native/durable proof equality;released inspection recomputes
it with native construction forbidden. Recovery02-04's27reply losses occur after
native completion at the application boundary;they are not real native setter/
store/transport/OS faults. Full read latency was not rerun;no P95 claim from3rounds.

Deletion01 stays FAILED after its completed inverses due to the research audit's
wrong request type;separate audit01 proves exact restoration. Recovery01 stays
FAILED on released reinspection because reconciliation omitted proof hash;new
writer fixes it,and separate audit03 proves restoration without altering old WAL.
Offline121 passes799Python/21Doge/1042assertions/version,6live skips;all423source
entries match. Safety28 preserves29original Class-failure files and unchanged
hold;original AEB_1 Class formal remains unrestored. Whole delivery INCOMPLETE.
[Contract,reproduction,failures and next tasks](bde-causal-drawing-order.md).

## 2026-10-03 Previous: Completed Deletion01 Order-Only Recovery

The previously failed completed-inverse fixture is independently restored.
[Attached-order-restore01](../analysis/bde-experiments/2026-10-03/bde-attached-order-restore-01/result.json)
passes complete raw actual effects:3fields across350objects,0new objects,unchanged
physical children,exact original drawing order and full native/public baseline.
[Fresh attached-order-audit01](../analysis/bde-experiments/2026-10-03/bde-attached-order-audit-01/result.json)
uses the ordinary production reader/two complete bookends with0setters/no store;
original failed files remain unchanged. Old Deletion01 remains FAILED and neither
completed inverse was replayed. [Contract and reproduction](bde-attached-order-recovery.md).

Preview01 fails C# compilation on a local-name collision;preview02 refuses before
setters because raw-row serialized order differed. Both files remain preserved.
Full keyed image comparison retains all fields and ordered collections while
respecting Dictionary/Set semantics;preview03 validates complete identity/schema/
raw original-order proof,wrong-signature refusal and unchanged full bookends.
5new captured-image tests pass,including incomplete actual diff rejection;
5existing retained-layout proof tests pass after shared reconstruction refactoring.
The helper is compiled under BDE_DRAWING_LINEAGE_EVAL only,not a production tool.

Safety27 preserves29original Class-failure files/hold;Class restoration remains
false. Offline120 passes787Python/21Doge/1042assertions/version,6live skips;
final420file source-manifest recheck has0drift. Historical read P95 values were
not rerun. Production causal witnesses,64scope lifecycle,remaining family/
fault/Class/UI/FLOW/AEB_Core/package and all28whole acceptance cases remain open.

## 2026-10-03 Previous: Exact Retained Restoration, Separate From General Revert

Deletion03's original literal n15 and pin p16 are restored and stored. The
separate completed-reconciliation01 validates333captured raw objects and8combined
allowed changes, including the store-only parent counter change. Fresh
[restoration-audit01](../analysis/bde-experiments/2026-10-03/bde-layout-restoration-audit-01/result.json)
uses the ordinary production reader and two complete native/public bookends;
both equal the original baseline, including exact public node order. Original
failure files are unchanged. The final audit calls zero setters and no store.

Restore01 failed after insertion/drawing setters before store. Completion01
performed native store but then failed Python validation because StoreToCache
rebuilds lastChildrenNumber. Those failed results remain immutable. Strict
read-only reconciliation accepts only the audited original expected counter
and complete permitted effects; neither setters nor completed store are replayed.
The exact pending marker was released after durable verification. This is an
experimental separate restoration, not a production causal-order or general
bd_revert pass. [Contract and read-only reproduction](bde-retained-layout-recovery.md).

Offline119 passes782Python/21Doge/1042assertions/version,with6live skips. Current
417file source-manifest recheck has0drift. Safety26 passes29original retained
Class-failure files/hold checks with0Cebra calls;Class restored=false. No new read
performance measurement:663.115/933.749ms full-read P95 values remain historical.
Deletion01 drawing drift and original AEB_1 Class formal loss remain unrecovered.
All28whole cases remain incomplete;remaining causal/family/fault/Class/UI/FLOW/
AEB_Core/package and64scope lifecycle requirements are unchanged.

## 2026-10-03 Previous: Read-Only Exact Lineage Evidence

The retained-deletion probe now resolves negative native identifiers through the
existing exact identity map. It cannot allocate substitute aliases. It checks
unique complete physical/drawing rosters, registry/counter purity, full raw field
schemas, basic drawing object identities/numbers and raw parent membership. The
bridge decodes raw descriptors only under the research compilation flag; normal
production builds have no drawing_lineage_probe command.

[Lineage07](../analysis/bde-experiments/2026-10-03/bde-drawing-lineage-07/result.json)
passes on the exact disposable PID39624/32641: six attached objects, exact e1/e2,
retained n15, 333 raw objects, unchanged complete native/public bookends and
original failure files, zero setters/no store, zero source drift. Proxy records
559 request/558 response frames with no parse/proxy errors. Lineage06 also passes.
Lineage04's duplicate e-1 metadata is not valid identity evidence, even though its
bookends passed. Lineage05 retains the domain.diagram KeyError. Neither failed or
invalid result was overwritten.

Five focused identity/scope/roster/raw-tamper tests pass on the final validator.
[Offline118](../analysis/bde-experiments/2026-10-03/offline-contract-118/result.json)
passes 773 Python, 21 Doge, 1042 assertions and version, with six live skips. The
suite's initial source manifest predates the final additional wrapper graphObject
guard in the research runner; that single-file drift remains explicit. Fresh
Lineage07 and focused tests cover the changed guard. No new whole-gate or read
performance acceptance follows from these checks.

Deletion03's retained n15 remains deleted; Deletion01's order drift and AEB_1's
original Class Acceleration loss remain unrecovered. No new write experiment is
started. Next is identity-bound causal original-order evidence and separately
journaled exact recovery, then remaining families/faults/Class/UI/FLOW/AEB_Core
and final release gates. Whole delivery stays INCOMPLETE.

```powershell
E:\PYTHON\python.exe -m unittest discover -s scripts -p test_bde_drawing_lineage_experiment.py -v
E:\PYTHON\python.exe scripts\bde_drawing_lineage_experiment.py --experiment analysis\bde-experiments\2026-10-03\bde-independent-deletion-03 --output <NEW_OUTPUT>
```

## 2026-10-03 Previous: Drawing Evidence Implemented, Causal Gap Remains

Production now captures drawing sequence/numbers, persists preparation/actuals,
merges CURRENT independently of physical children, establishes drawing order
before store and verifies the stored sorted sequence. Five-helper binding and
strict native/Python/C# evidence validation are integrated. Released recovery
requires original/inverse drawing evidence plus actual matching summaries.
Preflight01 preserves unsupported four-argument Smalltalk dispatch failure;
the curried fixed helper passes read-only native preflight02 without setters.

Deletion02 passes3actual literal_fanout disconnect/independent-delete/original-
inverse/secondary-inverse rounds with exact full public/native restoration.
Summary01 independently validates12actual drawing WAL operations. Edit samples
493.587-512.442ms; first inverse512.123-647.320ms. No P95/full-family or rerun
complete-read performance claim. Offline117 passes768Python/21Doge/1042assertions/
version with6live skips; C#68offline assertions pass. Final offline and online
source-manifest rechecks show zero drift.

Deletion03 FAILS on operator_chain: first operator/two-edge inverse succeeds and
preserves the later literal deletion, but the secondary inverse refuses
DRAWING_RESTORE_GAP_AMBIGUOUS before setters. Its before/applied/current lacks the
prior original ordering needed to place restored objects within that same gap.
Diagnostic02 independently repeats two native refusals; complete public/native
bookends and all failed source files remain unchanged, no setters/store. Original
secondary native state is applied/retained; literal remains deleted. Stop new
write experiments on owned39624/32641 until genuine identity-bound recovery.

Next: causal drawing-order witnesses across related native/durable patches,
recover Deletion03 without guessing, recover Deletion01 without replay, then
new-contract native lost replies/stale endpoints/families/lifecycle/Class/UI/
AEB_Core/FLOW/package. Original AEB_1 missing Class formal/hold remains. All28
whole cases stay incomplete; ledger48 has zero missing artifact links. This
increment does not complete any broad gate.
[Full contract, evidence and reproduction](bde-independent-deletion-drawing-order.md).

## 2026-10-03 Previous: Independent Deletion Exposes Drawing Order Gap

New harness mode delete_literal performs a genuine independent unconnected
literal deletion after the original operator deletion, then formally reverts
both. Deletion01 completes one round but FAILS final exact public order:
[15,1,5,9,11] -> [1,15,5,9,11]. Complete collected native values and complete
public row multisets agree. The reconstructed getter sorts drawingOrder, so
the verifier remains strict. Read-only diagnostic01 repeats that discrepancy
with zero setters/store and unchanged failed-source files. No independent-
deletion acceptance, production fix, current complete-read timing or new whole
gate pass is claimed. The existing physical-parent and value checks omit this
separate graphical ordering contract. Original AEB_1 Class hold remains.
[Evidence, source chain, reproduction and required fix](bde-independent-deletion-drawing-order.md).

## 2026-10-03 Previous Candidate: Independent-Edit-Preserving Ordinary Inverse

Current-source summary02 independently audits18real independent-edit-preserving
original edit/inverse rounds plus6additional guard rounds,
preserving15later literal values and3new literal/pin additions. Complete native
expected graphs are rebuilt from the actual secondary diff; public getter
projections agree, and separately journaled compensations restore full original
native/public baselines. Twelve application-level completed reply losses reconcile
through actual bd_inspect with no setters/replay. Six actual formal previews
accept changed scope values; six released-record reinspections use durable proof
without reconnecting.39native material tampers trigger78preview/inverse
precondition refusals before writes. Full original raw identity/allfamilies/native
faults/Class/shared/UI/AEB_Core/FLOW/package remain open; entire delivery INCOMPLETE.

Smalltalk copied Dictionary comparison rejected baseline01's inverse before
setters; recursive typed comparison fixed it and separate restoration02 restored
the exact graph. Literal01's secondary argument shape was invalid before dispatch,
restored03. Literal03 encountered64scope registry capacity during fixture creation,
without delete/inverse dispatch; later tests guarded reuse of verified fixtures.
Addition01/05 retain genuine ambiguous-gap conflicts;05 explicitly reports
RESTORE_GAP_AMBIGUOUS. Separate restores04/05 first undo the observed secondary
creation,then restore the original operation; old source files remain unchanged.
Original AEB_1 Class formal is still unrestored and its write hold remains.

Samples are three per experiment,not P95/1000node/full-family timing. Complete-read
P95663.115/933.749ms is historical and was not rerun. Whole-workflow Cebra frame and
byte counts include independent public observations,previews,compensations and
cleanup; they are not per-edit overhead or a new read strategy comparison.
[Contract, exact artifacts and reproduction](bde-independent-edit-inverse.md).
[Audited current-source summary](../analysis/bde-experiments/2026-10-03/bde-independent-summary-02/result.json).
Offline116 passes752Python/21Doge/1042assertions/version,6live skips remain;
44C#transport assertions pass. Offline113/114 preserve the preview fixture's
document-directory and invalid write-tool max_bytes failures before correction.
The final source manifest has0drift. Ledger46 retains28whole cases incomplete
(27not_run/1blocked),with0missing artifact links. Owned39624/32641 remains alive;
no experiment processes or live sessions remain. Complete delivery stays false.

## 2026-10-03 Historical: Detached Material Conflicts

Ordinary delete/disconnect inverse now freezes genuine detached material from
the terminal snapshot and checks it before preview/execution and immediately
before setters. Material10/11/12 pass9actual rounds,39native tamper cases and78
production preview/inverse refusals,with complete independent final restoration.
Disconnect text cases are inapplicable,not counted as successes.9external-Point
controls prove guard locality only,not independent-edit-preserving native inverse.
Delete6samples474.270-563.850ms,inverse505.384-550.210ms;disconnect3samples
494.353-499.014ms,inverse569.660-588.632ms. No30sampleP95/current1000node claim.
All3source manifests match,0drift/assertions/wire errors/incomplete bytes.
Offline112 passes733Python/21Doge/1042assertions/version,6live skips unverified;
its current-source fingerprints match. Failed compilation/probe results remain failed;separate restores03-07 preserve
old files and pass independent complete restoration. Entire delivery INCOMPLETE;
original Class formal/hold remain. [Details and reproduction](bde-detached-graphical-material.md).
[Ledger45](../analysis/bde-experiments/2026-10-03/bde-eval-ledger-45/report.json)
keeps28whole cases incomplete(27not_run/1blocked),without equating narrow
experiment success to a complete case pass.

## 2026-10-03 Historical: Delete/Disconnect Matrix and Real Receipt Reconciliation

Production ordinary recovery now checks raw original/started CURRENT/signature/
actual effects and a retained native terminal image before journal reconstruction
and pending release. [Full contract and reproducible experiments](bde-ordinary-graphical-recovery.md).
[Matrix01](../analysis/bde-experiments/2026-10-03/bde-isolated-order-matrix-01/result.json)
passes18actual rounds:delete/disconnect on literal fanout,operator chain and operator
fanout-with-input,3rounds each. Independent complete public/native restoration and
raw terminal verification before/after oracle reads pass. Source fingerprints are
identical across all6experiments,0drift/newassertions/wire parse errors.

| Operation | Samples | Edit median/range ms | Inverse median/range ms |
|---|---:|---:|---:|
| Delete | 9 | 485.597 / 457.317-558.522 | 501.428 / 475.921-560.838 |
| Disconnect | 9 | 488.634 / 448.674-547.565 | 540.995 / 479.952-575.927 |

Not30sample P95/1000node or all-family acceptance. This covers3graph shapes/2node
kinds in ordinary Class Main;no hierarchy/Module/Class interface gate is granted.
Wire totals in the individual results include observations/cleanup,and report
request/response frames separately rather than claiming every frame is a paired RPC.

Recovery02(delete)/03(disconnect) each pass3real rounds through actual bd_inspect.
Each apply/inverse result is discarded after completed native execution at the
Python adapter boundary;cross-STORE pending is present,then a new bridge performs
read-only terminal reconciliation.12losses total,one actual apply/inverse dispatch
per request,0reconciliation setters,complete final public/native equality,0source
drift/wire parser errors/incomplete bytes. This is application receipt loss after
completion,not host death/RST/interruptions within setter/store or full FAULT gates.

Retained failures:order10 rejects plain parent evidence via the older tagged-only
decoder,but inverse/restoration passes;old failed wire totals are unavailable.
Order12's experiment omitted fixed boundary refs and falsely treated a disappearing
projection row as deletion;the production planner already freezes them. Corrected
experiments reuse it;separate formal-restore01 restores the fixture with old files
unchanged. Recovery01's internal route omitted service initialization;native
read-only reconciliation completed but pagination failed. Actual service.handle
route corrects that experiment;separate formal-restore02 restores its fixture with
old files unchanged. No failed result is overwritten or failed write replayed.

Original AEB_1 display01 formal remains unrestored,with its hold enforced. Complete
raw-original/branch-Set identity,detached fields/independent edits,other op families,
native faults,Class/shared/UI,AEB_Core/FLOW/performance/package remain open.
[Ledger44](../analysis/bde-experiments/2026-10-03/bde-eval-ledger-44/report.json)
keeps28incomplete cases. Whole delivery remains INCOMPLETE;goalactive.

Offline111 passes733Python/21Doge tests/1042Doge assertions/version after the real
plain-parent decoder correction;6live Doge skips remain unverified. Current source
fingerprints match its manifest. Offline110 remains an earlier candidate. The
native lost-receipt studies do not claim actual host/transport fault or dirty/Undo
acceptance,and original safety25 is a historical audit rather than a new scan.

## 2026-10-03 Historical: Production Delete, Raw Actual Diff and Formal Revert

[Order09](../analysis/bde-experiments/2026-10-03/bde-isolated-order-09/result.json)
passes3 real production journal/adapter delete-diff-revert rounds on one fresh
isolated fixture, with exact independent complete public/native before equality
after each inverse. Parent/member order, original endpoints and retained original
connection-map registration identities pass native guards. Forward raw diffs have
15/11/11changed entries and8/3/3introduced refs;each inverse has9changes/0newrefs.

| Round | Delete ms | Inverse ms | Independent restoration |
|---|---:|---:|---|
| 0 | 516.721 | 513.007 | Pass |
| 1 | 486.322 | 490.252 | Pass |
| 2 | 500.964 | 522.798 | Pass |

This is1fixture x3,not3fixtures x3 or30-sample performance acceptance. Total wire
counts include independent observations and cleanup:2629request/2628response
frames,1514980request/3451386response bytes;0parse errors/incomplete bytes,0source
drift/newassertions. The counts are not per-edit RPC totals. Current actual fields
and public/native representation equality do not certify every original raw-field
or branch-Set identity. No actual disconnect acceptance is granted by this run.

The production delete_node/disconnect_data path embeds the raw CURRENT reader,
retains immutable before descriptors, publishes CURRENT/signature before dispatch,
checks native signature/direction/full CURRENT immediately before setters and
saves actual raw diff before native terminal state. Python validates actual effects
before pending release. WAL retains full evidence;agent receipts/diff return compact
summaries. The shared validator preserves complete introduced-object descriptors,
token/class/ref closure,strict JSON types and original field values.

[Order08](../analysis/bde-experiments/2026-10-03/bde-isolated-order-08/result.json)
is a preserved failed deletion after native applied:Python comparison wrongly
treated Dictionary enumeration as ordered. Corrected comparison accounts for every
key/value pair and Set member,including cardinality;Arrays/OrderedCollections stay
ordered. Read-only diagnostic04/preview11 precede a new guarded
[restoration02](../analysis/bde-experiments/2026-10-03/bde-retained-delete-restore-02/result.json).
It passes complete public/native equality and exact pending release with original
evidence unchanged. The original WAL remains outcome_unknown and native source
state applied;no failed-request replay or old-record rewrite occurred.

Focused implementation checks pass:5graphical-journal,10retained-restoration,
18structure,14parent-order tests;C#transport25assertions and production compilation.
These are not a rerun of the complete offline109 candidate or Doge online closure.
The latest safety25 predates these production trials;original Class formal remains
unrestored,with its database hold enforced. Historical readP95 was not rerun.

Reproduction for a NEW disposable fixture uses a fresh output directory and the
owned cold-backed runtime manifest. The historical successful command is:

```powershell
E:\PYTHON\python.exe scripts\bde_isolated_order_experiment.py `
  --manifest analysis\bde-experiments\2026-10-03\bde-isolation-02\bde-7c2bdc20e800\instance.json `
  --output analysis\bde-experiments\2026-10-03\bde-isolated-order-09 `
  --repeats 3
```

Do not reuse an existing output or replay a failed write. Current runtime39624 is
alive;no experiment process remains running. Raw recovery_status/reconciliation
still needs original/CURRENT/actual integration:its older terminal path must not
be treated as accepted recovery for new raw-evidence quarantine. Next:3fixtures
x3delete/disconnect/inverse,detached-field/independent-edit/real-fault checks,other
operations' raw evidence,Class/shared/UI,AEB_Core/FLOW and reproducible package.
[Ledger43](../analysis/bde-experiments/2026-10-03/bde-eval-ledger-43/report.json)
keeps28cases incomplete;no whole G0-G7/FLOW or final delivery pass is claimed.

## 2026-10-03 Historical: Separate Actual Retained Deletion Restoration

[Restoration01](../analysis/bde-experiments/2026-10-03/bde-retained-delete-restore-01/result.json)
passes a separate guarded recovery request on the owned isolated runtime. The
original literal n11 and its two original incident edges are restored, with exact
parent order and endpoint identities. Independent complete public and native
observations match order07's original before documents. All15 original experiment
files remain unchanged. The old deletion WAL remains outcome_unknown, with no
automatic retry or delete replay. The exact isolated pending marker is released
only after durable verification. Original AEB_1 Class hold remains separate.

The fixed raw CURRENT capture has304 objects. Recovery actual diff contains9
changed field/container entries and4 newly allocated OrderedCollections; total308
after objects. New audited references have separate stable tokens and full object
descriptors; the pre-CURRENT image is immutable. Validation checks original field
values, strict JSON types, unique tokens and complete class/reference binding.
The original connection-map value identities were not captured before the failed
delete; new registration collections are recorded honestly, not declared restored
to unproved original identities. This is one successful real recovery, not full
production inverse, full raw-original identity, fault or whole-case acceptance.

[Preview10](../analysis/bde-experiments/2026-10-03/bde-retained-delete-preview-10/result.json)
passes9 PRIVATE container checks plus complete real CURRENT/order/source/endpoints
after the public getter observation, with no model mutation. Eight focused Python
diff-validation tests pass. Preview01-09 remain retained failures/earlier candidates.
This continuation fixed missing brackets, the runtime's direct four-argument block
invocation, helper temp scope, explicit IdentityDictionary traversal and newly
allocated reference encoding. No successful physical mutation precedes these fixes.

Reproduction of the restore used exactly one request and a fresh output folder:

```powershell
E:\PYTHON\python.exe scripts\bde_retained_delete_restoration.py `
  --experiment analysis\bde-experiments\2026-10-03\bde-isolated-order-07 `
  --output analysis\bde-experiments\2026-10-03\bde-retained-delete-restore-01 `
  --execute
```

This is an executed historical command, not an instruction to repeat it. Native
prepare/execution guards refuse already-restored membership/state. WAL files are
numbered, checksummed and flushed before restore dispatch. Public/native exact
comparisons and raw actual-diff verification precede release; release evidence
references the verified result checksum and exact original marker checksum.

Safety25 confirms29 original display01 files and hold unchanged,restored=false,
zero Cebra/model setters. Whole delivery remains INCOMPLETE and ledger42 keeps all
28 case-level gates incomplete. Historical read P95 values were not rerun. Next:
production raw journal/revert integration and actual family/field/fault/independent
change acceptance,Class creation/shared/UI,AEB_Core/FLOW and final package.

## 2026-10-03 Historical: Actual Deletion and Read-Only Diagnosis

Whole delivery remains INCOMPLETE. The cold-backed disposable runtime from
[preparation02](../analysis/bde-experiments/2026-10-03/bde-isolation-02/preparation.json)
is alive at PID39624/port32641. Its original recovery references must remain alive;
do not restart it or start another edit before restoring the retained fixture.

[Actual order07](../analysis/bde-experiments/2026-10-03/bde-isolated-order-07/result.json)
deletes literal n11 and its two incident edges through the production adapter and
journal. Independent complete public/native baseline matched before mutation.
The operation reaches store, then fails the endpoint postcondition. Its352.577ms
is a FAILED request's elapsed time, not editing performance acceptance. Durable
status is outcome_unknown/automatic_retry=false; no inverse was dispatched.
The summary stage fixture_started in that older result is stale: its round stage
and WAL are authoritative. The original failed result is not rewritten.

[Diagnostic02](../analysis/bde-experiments/2026-10-03/bde-retained-endpoint-diagnostic-02/result.json)
uses a fixed Smalltalk block to read the exact retained record without running the
ordinary structural reader. Current parent order is expected-after and removed
members are absent. Exact edge endpoints, pin/owner/basic, connector/point-owner
and connection-map bindings survive. The defect is an incorrect manager=nil
assumption: all three retained originals keep their original parent manager.
Diagnostic01 failed before connection because the adjacent .NET assembly was
missing; that failed artifact remains. None retries the original deletion.

Endpoint and parent-order helpers now check original manager AND parent membership.
PRIVATE fixture helpers reflect the same removal semantics. The attached-original
negative now actually inserts the object in children.
[Diagnostic03](../analysis/bde-experiments/2026-10-03/bde-retained-endpoint-diagnostic-03/result.json)
compiles/binds the corrections, passes the guard and verifies an inverse plan on
the real retained originals. It preserves the record's keys/state, parent order,
and all15 original experiment files. This read-only result does not establish a
successful inverse, complete graphical fields, independent-change preservation,
fault recovery or any full acceptance gate. The old held guard still reports its
failure and native state remains started; old WAL is not reclassified as applied.

Focused verification:19 Python parent-order tests,18 native C# transport assertions
and a production bridge rebuild pass. Safety24 preserves29 original display01 files
and original restoration hold; restored=false. Earlier offline109/evidence08/
integrity12 manifests no longer describe all current files after transport/source/
manager corrections. Earlier AEB_dFxTar/Class read P95 values663.115/933.749ms were
not rerun here and remain workload-specific historical measurements.

Next is a separate explicit guarded restoration request for order07, with durable
CURRENT and exact original identities, followed by independent public/full graph
verification. Its missing checkpoint makes ordinary read/recovery_status unsafe
for recovery lineage until addressed. The original AEB_1 formal restoration, real
inverse/field/fault cases, Class creation/shared/UI, AEB_Core/FLOW and package are
still open. No state-machine or new Code Mode scope is added.
The [updated ledger41](../analysis/bde-experiments/2026-10-03/bde-eval-ledger-41/report.json)
retains28 incomplete cases (27not_run/1blocked) and includes the failed actual
experiment plus read-only diagnosis. No whole acceptance gate is granted.

## 2026-10-03 Historical: Parent Order WAL and Endpoint Evidence

Full delivery remains INCOMPLETE. Complete scope-bound parent order images now
use record-local opaque native tokens with exact identity-table bindings. Inverse
preparation durably records CURRENT and expected merged order before dispatch.
The native dispatcher checks that prepared signature and original endpoint/pin/
owner/manager/map/port dependencies before mutation and after store. Actual order
effects are retained in WAL and native recovery; reconciliation requires matching
durable/native terminal evidence and never replays an unknown setter.

Agent receipts and diffs return compact changed-token/index/count/checksum data
while WAL retains complete parent images. A1000-member one-deletion offline test
checks a response below600bytes. This is not online editing/latency evidence.

[Evidence08](../analysis/bde-experiments/2026-10-03/bde-parent-order-evidence-08/result.json)
passes3 current-source rounds:18 native PRIVATE order cases and21 endpoint cases.
Stale CURRENT/identity-table and pin-parent/point-owner/map/input/owner/ghost-edge
changes refuse. Complete copied graphs reset; independent public4owner/7scope/
31node/59pin/23edge bookends remain unchanged.50sourcehashes/0drift/0newassertions.
Dispatcher/helper and recovery reader compile/bind without executing the model
addGO/store/signature/UI path. Diagnostic rounds550.163-755.560ms with101request/
100response frames are not model inverse latency or one-second/P95 acceptance.

Evidence01 retains its CS0136 compiler failure;02-03 retain Cebra102 block-binding
failures;04 retains immutable result-publication failure after successful helper
checks.05-07 are separate earlier candidates. [Contract](bde-parent-order-inverse.md).

[Offline109](../analysis/bde-experiments/2026-10-03/offline-contract-109/result.json)
passes712Python/21Doge/1042assertions/version;6liveSKIP remain unverified.
[Safety23](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-23/result.json)
preserves29originalfiles/hold,restored=false. The production bridge rebuild passes.
The [current ledger](../analysis/bde-experiments/2026-10-03/bde-eval-ledger-40/report.json)
retains28 incomplete cases (27not_run/1blocked), zero missing evidence links.
[Integrity12](../analysis/bde-experiments/2026-10-03/bde-candidate-integrity-12/result.json)
matches378offline/50native fingerprints to current sources. No full case pass is
granted by these studies.

Remaining: detached graphical-field preservation, multi-edge/other-family closure,
real setter/store/transport and restart recovery, actual ordinary/Class local
inverse/creation/shared edits, genuine original display01 restoration, broader
native UI lifecycle, isolated AEB_Core/FLOW and final package. AEB_1 new tool writes
remain held. Goalactive;automationpaused.

## 2026-10-03 Previous: Ordinary BDE Parent Order Inverse

Full delivery remains INCOMPLETE. The ordinary structural dispatcher now records
the exact parent collection and supports a fixed three-way identity-order helper
for disconnect/delete inverse behind a default-OFF experimental flag. It uses
CURRENT insertion positions for exact retained originals, preserves compatible
independent members and refuses ambiguous/reordered/stale plans before setters.
Selected closure, native diagram/epoch/hierarchy and database holds remain required.

[Parent-order04](../analysis/bde-experiments/2026-10-03/bde-parent-order-inverse-04/result.json)
passes3 frozen-source rounds/30 native PRIVATE order cases:15 compatible splices,
15 initial refusals and6 additional prepared-plan refusals. The actual structural
dispatcher compiles and binds in ASCET, but model addGO/store is never dispatched.
All private graphs reset and complete independent public4owner/7scope/31node/
59pin/23edge bookends stay unchanged.46 source hashes match;0newassertions.
The helper diagnostics470.258-649.295ms/85request+84response frames per10-case round
are not production inverse timings, paired-RPC counts or one-second/P95 acceptance.

01runtime-DLL failure and02missing explicit endpoint refusal remain failed with
unchanged failure public bookends;03is a one-round pilot;04is the three-round
dispatcher-compiling/binding candidate. Broken pipe cleanup now preserves the
primary host error and completes remaining cleanup. [Contract/reproduction](bde-parent-order-inverse.md).

[Offline108](../analysis/bde-experiments/2026-10-03/offline-contract-108/result.json)
passes694Python/21Doge/1042assertions/version;6liveSKIP remain unverified.
[Safety21](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-21/result.json)
preserves29originalfiles/hold,restored=false. Actual model inverse/endpoint/input
dependencies, durable CURRENT/order images/actual diff and failure acceptance,
production Class local inverse/creation/shared/UI, original display01 restoration,
AEB_Core/FLOW/final package remain required. The goal remains active and automation
paused. This study grants no complete case verdict.

## 2026-10-03 Previous: PRIVATE Dictionary/Set/Array physical recovery

Full delivery remains INCOMPLETE. [Collection summary](../analysis/bde-experiments/2026-10-03/bde-private-collections-summary-01/result.json)
verifies three same-candidate/public-bookended rounds: 144 new-collection sessions,
144 dedicated bridge deaths/RSTs/lookups/read-only classifications, 240 forward
primitives, 144 recovery units, 298 physical primitives and 936 refusals. Every
round preserves the same 4 owners / 7 scopes / 31 nodes / 59 pins / 23 edges and
the complete public baseline; independent edits survive, then explicit resets
restore CURRENT and release registry roots. Collections03 separately passes
24 OrderedCollection first/middle/final regressions; total168 sessions. The full
47 source hashes agree across03/04/05 and match current files.

Fixed preparation uses actual private connections Dictionary, branching Set and
endpoint Array. These are controlled native-container mutations, not production
model reconnect/layout edits. Snapshot capture rebuilds Dictionary associations;
wire images canonicalize unordered collections. Audit keeps target/step/counters
strict while comparing Set/Dictionary images by exact members/key-value bindings.
New-collection failures cover first/last physical steps; some Dictionary middle
positions, inside-primitive failures and naturally failing setters remain untested.
Verbose study duration is not one-second read/edit acceptance.

Collections01's obsolete three-forward-step export audit and collections02's Set
image-order audit failures remain failed. Their native recovery/releases and
unchanged failure public bookends are recorded; separate corrected offline
re-audits do not rewrite either result. [Detailed protocol/reproduction](bde-native-private-collection-recovery.md).

[Offline106](../analysis/bde-experiments/2026-10-03/offline-contract-106/result.json)
passes687 Python/21 Doge/1042 assertions/version, with6 live skips still unverified.
[Safety20](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-20/result.json)
preserves29 original files/hold, restored=false. Production scoped inverse/WAL,
native archives/reload, genuine display01 restoration, Class creation/shared/UI,
AEB_Core/FLOW and final package remain required. The goal stays active and the
existing automation stays paused; no model write gate is opened.

[Ledger38](../analysis/bde-experiments/2026-10-03/bde-eval-ledger-38/report.json)
keeps28 incomplete cases/0 missing evidence links.
[Current candidate integrity](../analysis/bde-experiments/2026-10-03/bde-private-collections-candidate-integrity-01/result.json)
matches366 offline and47 sources for each native run/summary against current files.
This integrity check grants no full case passes. All experiment processes exited.

## 2026-10-03 Previous: partial physical PRIVATE recovery

Full delivery INCOMPLETE. Logical recovery cells now expose exact physical
before/after images and bounded indices. Native exceptions leave unresolved
material; original registry lookup and read-only CURRENT classification allow
precise continuation without replaying an applied operation. Other touched cells
and owner/endpoint bindings remain strict, including the temporary active parent
collection membership rule. Independent edits survive recovery.
[Contract, implementation and reproduction](bde-native-private-physical-recovery.md).

[Final physical04](../analysis/bde-experiments/2026-10-03/bde-private-physical-04/result.json)
passes3 unchanged-source/public-bookended rounds/72 private sessions:72 injected
before/after exceptions,72 dedicated bridge deaths/client RSTs,72 original-material
lookups/read-only classifications,828 forward primitives,792 logical recovery units,
1638 physical primitives and468 conflict/replay refusals. Complete public coverage
4owners/7scopes/31nodes/59pins/23uniqueedges remains unchanged;registry sizes0->0.
All47 candidate hashes match;0 model setters/stores/new assertions/source drift.
Physical schedules7/20/21/43;one connected pin per owner,not42-pin/full type coverage.

The24-session rounds take168961.618-172666.456ms including repeated host startups,
verbose CURRENT/WAL/negatives,excluding public bookends;offline suite concurrent
in part.33942-33975requestframes/51333707-51664101responsebytes per round;0 frame
errors/incomplete bytes. Directions counted separately,no per-ID pairing claim.
This is fault diagnostics,not read/edit/P95/1s acceptance. Exceptions occur before
one native primitive or after its return,not inside a primitive/naturally failing
setter. Dictionary/Set/Array online positives remain unverified.

physical01 fails the strict ancestor-membership guard during collection clearing;
physical02 fails a conflict-probe collision with a valid saved before image.
Separate fixed,original-reference supplements recover/release the exact failed
material;original runs remain failed. All failure public bookends are unchanged.
physical03 is the one-round pilot;only04 is the three-round final candidate.
[Offline103](../analysis/bde-experiments/2026-10-03/offline-contract-103/result.json):
681Python/21Doge/1042assertions/versionPASS,6liveSKIP;21 new offline physical groups.
[Safety18](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-18/result.json)
preserves29 original failed-edit files/hold,restored=false. Production model
dependencies/inverse,archives/reload,genuine display01 repair,Class creation/shared/
UI,AEB_Core/FLOW and final package remain required. Goalactive;automationpaused.

Updated bridge continuation: [physical05](../analysis/bde-experiments/2026-10-03/bde-private-physical-05/result.json)
passes one additional24-session round/24exceptions,deaths,RSTs,lookups and
classifications/552 physical primitives/156 refusals;all public bookends and
registry0->0 pass. Native templates are unchanged;the47 full source hashes differ
from04 because of the host publisher/pending-reply fix.04's three rounds remain
bound to their original candidate,not rebound to05. Diagnostic167685.157ms,
34045requestframes/51582581responsebytes,0drift/assertions/modelwrites.
[Bulk current08](../analysis/bde-experiments/2026-10-03/bde-native-private-current-08/result.json)
passes42pins/126completion faults/recoveries and the prior peer/dependency matrix.
[Host-exit09](../analysis/bde-experiments/2026-10-03/bde-private-host-exit-09/result.json)
passes12sessions/24deaths/lookups/74forward primitives/71recovery cells/108 registry
refusals with unchanged public bookends. Host-exit08 retains the visible-but-open
completion-file permission race and FIFO diagnostic misattribution;separate fresh
original lookup/reset/release completes in its retained-cleanup artifact. It stays
failed. Publisher now flushes/closes `.writing` before rename;reader retries local
file observation only and refuses extra FIFO probes with outstanding native reply.
[Offline104](../analysis/bde-experiments/2026-10-03/offline-contract-104/result.json):
683Python/21Doge/1042assertions/versionPASS,6liveSKIP;two added signal-reader groups.
[Safety19](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-19/result.json)
preserves29 original files/hold,restored=false. These are additional scoped
regressions,not full production fault/G0-G7/one-second acceptance.

[Ledger37](../analysis/bde-experiments/2026-10-03/bde-eval-ledger-37/report.json)
retains28 incomplete cases/0missing links.
[Current candidate integrity](../analysis/bde-experiments/2026-10-03/bde-private-physical-candidate-integrity-01/result.json)
matches366 offline/47 physical05/47 host09/43 bulk08 source hashes,PASS. Integrity
does not grant full case passes. All experiment helpers have exited.

## 2026-10-03 Previous: same-epoch PRIVATE bridge termination and recovery

Full delivery INCOMPLETE. Exact native wire lookup,checksummed descriptors/WAL
reopen,current-source guard and actual native wire-owner proof are implemented.
Release requires recovered+complete CURRENT;stale handles refuse.
[Protocol,reproduction and limits](bde-native-private-host-recovery.md).
[Final host-exit07](../analysis/bde-experiments/2026-10-03/bde-private-host-exit-07/result.json)
passes3 unchanged-source rounds/36sessions/72 real dedicated C# bridge deaths+RSTs/
72 original-material lookups+readonly reconciliations,222 private primitives/
213 recovery units/324 registry negatives/72 stale-root and wire refusals.
Independent edits survive recovery;reset restores CURRENT;registry sizes0->0.
All public bookends4owners/7scopes/31nodes/59pins/23uniqueedges unchanged;one connected
pin per owner first/middle/final,not42-pin/thousand-block coverage. CURRENT22968
objects/106740fields/81Sets;45 source hashes,0 drift/assertions/model writes.
Middle45602.964-47438.061ms/12161-12168requestframes/24918640-24962944responsebytes
per12-session round includes startup/verbose WAL/negatives,excludes bookends;
offline suite concurrent in part. Not read/edit/P95/1s. No per-ID pairing claim.
Optional proxy RST continuation and truncated-stream refusal pass socket tests.
01-04 failures retained;03 same-source private cleanup releases prepared root;
04 direct exact-material continuation completes both death windows without replay.
05pilot/06before final binding guards;07final. Coordinator/ASCET stay alive;
partial physical mutation,pre-completion packet loss,coordinator/ASCET crash/native
archive reload and production inverse unverified. Original display01 hold stays.
[Offline102](../analysis/bde-experiments/2026-10-03/offline-contract-102/result.json):
660Python/21Doge/1042assertions/versionPASS,6liveSKIP.20 new registry/recorded-WAL
groups+2 RST socket tests,not extra live trials.
[Safety17](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-17/result.json)
preserves29originalfiles/hold,restored=false. Class creation/local inverse/shared/UI,
AEB_Core/FLOW/package and whole G0-G7 remain required. Goal active,automation paused.
[Ledger36](../analysis/bde-experiments/2026-10-03/bde-eval-ledger-36/report.json)
retains28 incomplete cases/0 missing evidence links.
[Candidate integrity](../analysis/bde-experiments/2026-10-03/bde-private-host-candidate-integrity-01/result.json)
matched359 offline/45 native source fingerprints at that recorded candidate;
subsequent physical source changes supersede its current-source comparison.
Neither grants full gates.

## 2026-10-03 Previous: fixed private Cebra steps and descriptive CURRENT WAL

Full delivery remains INCOMPLETE. Fixed command blocks keep native material
opaque,export all memo fields/references/collections plus audited generated
branching Sets,and run exact next steps after flushed host WAL intents. Actual
diffs/results are separate events. Recovery checks remaining applied and already
restored cells,preserves independent fields,and rejects unknown native outcomes.
The export is descriptive;no native archive/reload/rebind is implemented.
[Implementation,reproduction and remaining work](bde-native-private-step-protocol.md).

[Final remote14](../analysis/bde-experiments/2026-10-03/bde-native-private-remote-14/result.json)
passes3 unchanged-source/public-bookended rounds;4owners/7scopes/31nodes/59public
pins/23uniqueedges each.36 private sessions cover one connected pin per owner at
first/middle/final step positions;not the separate42-pin bulk matrix. Totals222
execution primitives/213 recovery cells/72 discarded application receipts and
readonly reconciliations/132 replay/index refusals/12 injected journal-publication
failures with0 dispatch. CURRENT captures22968 objects/106740 fields across the
36 sessions,including81 additional Sets. Generated Point positives are unverified.
All original private fields/references/collections match after final execution;
local recovery preserves an independently introduced x edit;reset matches CURRENT.
Independent initial projections and database/process/owner identities also match.
0 model setters/stores/production roots/assertions/drift;43 native fingerprints.

Middle8384.644-9309.958ms/2461requestframes/10077773-10093017responsebytes per round
includes12 verbose sessions/WAL checks,excludes public bookends,and is not a
production read/edit or1s/P95 result. Application receipts are discarded AFTER
the transport reply arrived;no Cebra loss/disconnect,host exit or crash is tested.
Journal failure is injected IOException before publication,not disk/power failure.
remote01-13 failures are retained;all online failures have unchanged public
failure bookends and0 model dispatch/assertions.13 completes native steps but
fails the audit variable-shadowing bug;only14 is the final accepted candidate.

[Bulk current07 regression](../analysis/bde-experiments/2026-10-03/bde-native-private-current-07/result.json)
passes one42-pin/126-fault round for the modified bulk recovery path.
[Offline100](../analysis/bde-experiments/2026-10-03/offline-contract-100/result.json)
passes638Python/21Doge/1042assertions/version,including20 new recorded-WAL tests;
6liveSKIP remain unverified.
[Safety16](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-16/result.json)
preserves29 original failed-edit files/hold,restored=false.

NEXT: explicit durable same-epoch native session lookup,real transport/host-loss
and unknown partial recovery;executable archives with audited reload linking;
production original/applied/current/model dependencies. Genuine display01 repair,
Class creation/local inverse/shared/UI,AEB_Core/FLOW/package remain required.
Goal stays active;automation stays paused;other tasks' ASCET instances untouched.
[Ledger35](../analysis/bde-experiments/2026-10-03/bde-eval-ledger-35/report.json)
retains28 incomplete cases/0missing links.
[Candidate integrity](../analysis/bde-experiments/2026-10-03/bde-private-remote-candidate-integrity-01/result.json)
passes353offline/43remote/43bulk-regression fingerprints against current files.
Previous ledger34 has28 incomplete cases/0missing links;previous current integrity01
validated349offline/39native fingerprints before this implementation increment.

## 2026-10-03 Previous: private CURRENT and partial execution recovery

Full delivery remains INCOMPLETE. Implemented a fixed private native executor
with a complete retained CURRENT field/reference/collection checkpoint, bounded
primitive lowering, exact `executeNext(expectedIndex)`, actual partial diff and
conflict-checked local CURRENT recovery. The last primitive verifies desired
values. Unknown primitive/recovery observations refuse further execution. This
is private in-memory recovery, not durable CURRENT WAL or production model repair.
[Contract/protocol/reproduction](bde-native-private-current-recovery.md).

[Final current06](../analysis/bde-experiments/2026-10-03/bde-native-private-current-06/result.json)
passes3 unchanged-source, independent-public-bookended rounds:4owners/7scopes/
31nodes/59publicpins/23uniqueedges each,including Main/h1/h2/h3. CURRENT retains
all2543copies/11860fields per round. Across three rounds:378 first/middle/final
primitive-completion faults;378 changed-prepared-CURRENT refusals;378 duplicate
indices/252 future indices refused;378 touched recovery conflicts and756 terminal
execution/recovery replays refused. Post-fault independent x changes survive every
recovery.2208 execution primitives and2139 actual recovery cells/collections are
separate units. Intermediate partial diff totals vary with native object order.

The full earlier inverse/peer/dependency matrix remains included:126 primary
cases/9visible Definition peer cases/1638 earlier conflicts.117 no-peer skips are
not positives. Original public owners/domain stay unchanged;0modelsetters/stores/
production edit/recovery allocations/newassertions;39native sources0drift.
Middle diagnostic8827.689-8900.676ms/301requestframes/13948631responsebytes per
round includes all private fault cases/projections,excludes public bookends,and
is notbd_read/productionedit/P95/1s acceptance. Faults are controlled after native
primitive completion,not real setter/store/Cebra/process failures.

current01(compiler bracket) and02(unsupported four-argument temporary block) retain
unchanged failure public bookends and0modeldispatch/assertions. Fixed helper uses
three arguments and a structured pair;03/04/05 are intermediate passes.
[Offline99](../analysis/bde-experiments/2026-10-03/offline-contract-99/result.json)
passes618Python/21Doge/1042assertions/version,including36recorded private evidence
groups;6liveSKIP remain unverified.
[Safety15](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-15/result.json)
retains29originalfailed-editfiles/hold,restored=false.

NEXT: fixed remote step protocol and durable complete CURRENT export/WAL before
each primitive; exact same-epoch native material retention across host reply loss.
Production original/applied/current lineage and model/resource dependency guards,
actual shared/fault/reload/UI, genuine display01 recovery, AEB_Core/FLOW and final
package remain required. The six agent tools and hold stay enforced. Goal active;
automation stays previously paused. Other task ASCET instances were not operated.

## 2026-10-03 Previous: private minimal merge and prepared dependency guards

Full delivery remains INCOMPLETE. The actual private inverse now uses the fixed
three-way ordered kernel and minimal native splices. It preserves a separate
visible coordinate edit and another unconnected pin's independent deletion from
the same exact port collection. Fields/dictionaries/unkeyed collections remain
strict. Parent/port/node/hierarchy binding closure and both edge endpoint/point
references are checked at prepare and immediately before execute.
[Implementation/reproduction](bde-native-private-graph-inverse.md).

[Final private-merge10](../analysis/bde-experiments/2026-10-03/bde-native-private-merge-10/result.json)
passes three unchanged-source, independent-public-bookended rounds. Per round:
4 owners/7 scopes/31 nodes/59 public pins/23 unique edges, 2543 copied objects/
177 keyed members/11860 graphic fields, 42 primary cases/46 edge events/
264 field changes/180 collection changes, 3 same-collection peer cases/
94 ordered splices/241 ancestor bindings/88 endpoint pin dependencies. Each
round has 126 field/dictionary/order refusals, 84 preparation ancestry/endpoint
refusals and 336 prepared-plan stale-state refusals. Three-round totals:
126 primary cases, 9 peer cases and 1638 conflict refusals. Complete private
state is unchanged on rejection; original public owners/domain stay unchanged.
38 native source fingerprints have zero drift; zero model setters/stores,
recovery/edit allocations and new ASCET assertions.

All eligible peer positives are visible Definition pins; 39 no-peer cases per
round are explicit skips. Hidden/Caller peers and additions remain unverified.
Middle diagnostic 4777.694-4853.900 ms/295 request frames/9750411 response bytes
includes the entire private research matrix and verbose projections, excludes
public bookends, and is not bd_read, production edit, P95 or 1s acceptance.

Private-merge05 retains a harness refusal-form failure. 06/07 exposed actual
delegated-edge dependency omission: wrapper manager setters changed internal
SGOrthogonalLineGO/RBConnectLineGO fields, so wrapper-only diff detection failed.
08 completes native cases but fails the overly strict cross-language roster
collation comparison. 09 passes its three rounds but fails source integrity after
the Python validator changed during execution. All failures have unchanged public
bookends/no model dispatch/no new assertions; only final10 is the final candidate.

[Offline98](../analysis/bde-experiments/2026-10-03/offline-contract-98/result.json)
passes 611 Python/21 Doge/1042 assertions/version, including 29 recorded private
evidence test groups. Six live skips remain unverified.
[Safety14](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-14/result.json)
preserves the 29 original failed-edit files and recovery hold; restored=false.

NEXT: production original/applied/current lineage, model-level dependencies,
durable CURRENT recovery/WAL and safe partial execution; actual shared/fault/
reload/UI acceptance once original recovery permits writes. Original display01,
full AEB_Core/FLOW and the final package remain open. The private guard does not
enable production Class writes or clear the old hold. Other task instances were
not operated. Goal stays active; automation stays previously paused.

[Ledger33](../analysis/bde-experiments/2026-10-03/bde-eval-ledger-33/report.json)
retains 28 incomplete cases with no missing evidence links.
[Candidate integrity](../analysis/bde-experiments/2026-10-03/bde-private-merge-candidate-integrity-01/result.json)
matches 348 offline and 38 native source fingerprints to current files, with zero
drift. All BDE experiment helpers have exited; main PID21052 remains unchanged.

## 2026-10-03 Previous: private native graph deletion and local inverse

Full delivery remains INCOMPLETE. Implemented bounded native graphical copying
with a single identity memo and exact keyed mappings, actual private pin/incident
edge deletion, actual field/collection diff, guarded local inverse and preservation
of a separate visible node's coordinate change. Both touched-field and connection
dictionary conflicts invoke inverse and refuse with zero inverse mutations. The
private diagram's shared server context is never used for model setters, store or
installation. [Contract and reproduction](bde-native-private-graph-inverse.md).

[Final splice06](../analysis/bde-experiments/2026-10-03/bde-native-graph-splice-06/result.json)
passes three independent-public-bookended rounds: 4 owners/7 scopes/31 nodes/
59 public pins/23 unique edges, including three hierarchy levels. Total:
126 connected-pin deletion/inverse cases, 138 incident-edge deletion events,
264 endpoint dictionary checks, 792 actual graphical field changes, 540 actual
collection changes and 252 inverse conflict refusals. Each round verifies 2543
private copied objects/177 keyed members/11860 graphical fields plus 24 clone
correspondence negatives. 37 source fingerprints have zero drift. Original
owners/domain stay unchanged; zero model setters/stores/recovery/edit allocations
and zero new ASCET assertions.

Middle diagnostic 3624.387-3783.408 ms/286 request frames/9324214 response bytes
includes 42 private cases and verbose projections, excludes public bookends,
and is not bd_read, production edit, P95 or one-second acceptance. Strict Python
validators and 14 recorded-evidence test groups reject reduced coverage, false
clone authority, wrong actual closure and lost/extra independent changes.
[Offline97](../analysis/bde-experiments/2026-10-03/offline-contract-97/result.json)
passes 596 Python/21 Doge/1042 assertions/version; six live skips remain unverified.
[Safety13](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-13/result.json)
preserves all 29 original files/hold; restored=false.

Failures remain: splice01 used unavailable removeAll; splice03/04 used an incorrect
independent-node ancestry filter, both with unchanged failure public bookends.
clone06 audits mapped node positions; splice02/05 are intermediate passes. Actual
model local inverse/WAL, changed checkpoint/subtree lineage, shared/fault/reload,
original display01 restoration, full UI/FLOW/AEB_Core and final package remain open.

[Ledger32](../analysis/bde-experiments/2026-10-03/bde-eval-ledger-32/report.json)
retains 28 incomplete cases with zero missing evidence links. Final
[candidate integrity](../analysis/bde-experiments/2026-10-03/bde-private-inverse-candidate-integrity-01/result.json)
checks 346 offline and 37 native source fingerprints against current files with
zero drift. All BDE experiment helpers have exited; other task instances were
not operated. The full-delivery goal remains active.

## 2026-10-03 Previous: keyed native bindings and fixed plans

Full delivery remains INCOMPLETE. Added exact scope/node/port parent slots,
bidirectional real-object bindings and complete direct port/hidden-pin capture.
These keyed guards join retained original/current verification. A fixed native
plan generator binds remove/insert steps to current/original refs and replays only
private copies. It refuses changed generations, unproved rebuilt-object lineage
and subtree dependencies. No model setter/WAL executor or write gate is enabled.
[Contract and reproduction](bde-keyed-collection-plan.md).

[Keyed-plan02](../analysis/bde-experiments/2026-10-03/bde-keyed-collection-plan-02/result.json)
passes3 public-bookended rounds:4 owners/7 scopes/31 nodes/59 public pins/23 edges,
92 collections/177 keyed members including54 ports/10 hidden pins each. Totals:
276 actual-current no-op collection plans,132 keyed packet negatives,72 plan
negatives,48 collection negatives,24 edge negatives and144 private sequence cases.
No actual changed-checkpoint plan is tested.0 model setters/recovery/edit allocations/
assertions,32 sources0drift.1162.756-1206.618ms/303 frames is only the middle
diagnostic,excluding public bookends;notread/edit/P95/1s acceptance.

[Material-preview01](../analysis/bde-experiments/2026-10-03/bde-keyed-material-preview-01/result.json)
passes4 actual Doge read-only primitive preflights in1 round,including changed
material template compilation/binding/no actions. Public bookends unchanged,
0 recovery allocation/assertions,38 sources0drift. Actual requests refuse from
unsupported references before dispatch,notpositivecreationorlaterguardproof.
[Offline96](../analysis/bde-experiments/2026-10-03/offline-contract-96/result.json)
passes582Python/21Doge/1042assertions/version;6liveSKIPremain.
[Safety12](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-12/result.json)
preserves29originalfiles/hold,restored=false. Compilation/runtime failures from
binding01/02/03/05 remain. Original recovery,lineage/subtrees,current-stateWAL,
actual local inverse/fault/shared,fullUI/FLOW/AEB_Core and final package remain open.

[Ledger31](../analysis/bde-experiments/2026-10-03/bde-eval-ledger-31/report.json)
retains28 incomplete cases,0 missing evidence links. Final
[source audit](../analysis/bde-experiments/2026-10-03/bde-keyed-candidate-integrity-01/result.json)
finds0drift in340 offline/32 native/38 preview sources. All experiment helpers
exited; main ASCET remains21052,other task instances were not operated.

## 2026-10-03 Previous: collection merge implementation

Full delivery remains INCOMPLETE. Three-way member order planning and minimal
splice execution on private native collection copies are implemented. Class
inverse value previews preserve independent pin membership in unambiguous gaps;
same-gap insertions, identity/order changes and existing dependency conflicts
refuse. Direct Main/hierarchy parent checkpoints no longer require a surviving
sibling. No model splice/WAL execution or write permission is granted.
[Implementation and remaining executor](bde-collection-merge-core.md).

[Native-copy-merge03](../analysis/bde-experiments/2026-10-03/bde-native-copy-merge-03/result.json)
passes3 independent-public-bookended rounds,4 owners/7 scopes/31 nodes/59 pins/
23 edges each,113 real members/51 collections and7 direct parent bindings.
All144 copied-sequence native merge/splice cases,48 native checkpoint negatives
and24 edge identity negatives pass;0 model setters/edit allocations/assertions,
31sourcefiles0drift.1160.446-1200.124ms/297 request frames is the middle diagnostic,
excluding public bookends; not bd_read/P95/1s or actual edit acceptance.
Empty-parent sequences are synthetic copies; no empty LIVE scope/extra hidden
member family or actual detached-original restoration is established.
The final03 candidate also verifies the current Main root wrapper, preventing
intact detached old containers from passing parent provenance checks.01/02 remain
earlier passing versions, not timings promoted as equal-version performance.

[Offline95](../analysis/bde-experiments/2026-10-03/offline-contract-95/result.json)
passes577 Python/21 Doge/1042 assertions/version;6 live skips remain unverified.
[Safety11](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-11/result.json)
preserves29 original files/hold,restored=false. Safety09 retains the failed audit
invocation with a missing original_hashes reference; no comparison verdict.
Native manager/pin/edge binding, actual local inverse/WAL/fault acceptance,
genuine display01 recovery,fullUI/FLOW/AEB_Core and final package remain open.
[Ledger30](../analysis/bde-experiments/2026-10-03/bde-eval-ledger-30/report.json)
retains28 incomplete cases; individual successful experiments are not gate passes.

## 2026-10-03 Previous: retained native collection checkpoints

Full delivery remains INCOMPLETE. The native capture now retains actual scope/
object/manager references, complete immediate parent collection member order and
links, hierarchy contents ownership, pin owners/edge connection points and current
registry/source bindings. Class prepare/apply records retain separate original/
after checkpoints; inverse/restore/reconciliation reject missing or changed old
material. Compact recovery-v3 typed guards join the existing six tools. No local
splice/WAL executor, durable restart archive or write acceptance is granted.
[Contract and reproduction](bde-native-collection-checkpoints.md).

[Native-checkpoints05](../analysis/bde-experiments/2026-10-03/bde-class-native-checkpoints-05/result.json)
passes three current-state rounds,4 owners/7 scopes/31 nodes/59 pins/23 edges each.
Each temporary checkpoint saves113 real objects/members across51 parent collections
and verifies across separate Cebra calls. Wrong order/manager links/missing
collections/wrong scoped refs give16 native negatives per round,48 total. Existing
empty-map/reconstructed-edge negatives also pass24 total. Complete public getter
bookends/collected observations are unchanged; no model setters, Class recovery/
edit allocation or new assertions.1087.834-1106.824ms/264 request frames measures
the middle diagnostic, not formal bd_read or30-sample speed acceptance. The fixture
has0 comments/no additional hidden member family; all native instVars/styles and
positive after-deletion retention remain unverified. Failure01 bracket compilation
and04 Set>>first remain retained;02/03 are earlier passing candidates.29 source
files have0 drift.

[Checkpoint-preview02](../analysis/bde-experiments/2026-10-03/bde-class-checkpoint-preview-02/result.json)
passes12 real Doge preflights (3 rounds x4 primitive types), complete public
bookends, recovery-v3 and new material-reader compilation/binding without actions.
Each complete preview uses297 frames/1361.207-1402.441ms. No prepare/apply/restore
or native recovery allocation occurs. Three actual requests still refuse with0
frames from unsupported references BEFORE later creation/hold guards. Actual
creation/deletion/inverse remains unaccepted.35 source files have0 drift.

[Offline92](../analysis/bde-experiments/2026-10-03/offline-contract-92/result.json)
passes562 Python/21 Doge/1042 assertions/version;6 live skips remain unverified.
335 source files have0 drift. [Safety08](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-08/result.json)
confirms all29 original display01 files/hold unchanged,restored=false,zero Cebra/
setters in that audit. No original epoch/WAL is rebound or hold released. Full
native merge/recovery/creation/shared/fault/UI/AEB_Core/FLOW/package remain open.

## Previous: exact native occurrence bindings

Full delivery remains INCOMPLETE. Added a bounded fixed native binding probe
covering current graphical refs/classes, parent collection membership/index/size,
pin owner/order/direction and exact edge connection points. It never allocates
new edge IDs or changes registry generation/checkpoint/counter. Reconstructed
same-field edges and an empty local identity map refuse instead of matching by
endpoints/routes. Manager tokens are invocation-local; complete hidden parent
members, original detached material and a native merge executor remain absent.
[Contract/source/reproduction](bde-native-occurrence-bindings.md).

[Native-bindings05](../analysis/bde-experiments/2026-10-03/bde-class-native-bindings-05/result.json)
passes three current-state rounds, each4 owners/7 scopes/31 nodes/59 pins/23 edges
and0 comments. Complete collected values/independent public getter bookends are
unchanged. Each round also passes4 empty-map and4 fresh-diagram native refusals,
24 total. Middle observation1106.233-1161.357ms/231 request frames excludes public
bookends; this is additional correctness coverage, not read speed/P95 acceptance.
No setters, recovery/edit allocation or new crash assertions. Failed01 internal
four-argument block,02 wrapper/native comparison and03 negative-ID validator
remain retained;04 passed an earlier candidate. Source28 files has0 drift.

The pure inverse analyzer now also rejects reverting an EXISTING edge's target
when its original input has become occupied by an unrelated edge. Free-input
inverse candidates preserve the unrelated edge. Conflicting resources still
expose no candidate patch; native write authority remains false.

[Offline91](../analysis/bde-experiments/2026-10-03/offline-contract-91/result.json)
passes555 Python/21 Doge/1042 assertions/version, including12 new binding-validator
tests and2 rewire-inverse cases;6 live skips remain unverified. Its334 source files
have0 drift. [Safety07](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-07/result.json)
confirms all29 original display01 files/hold unchanged,restored=false,zero Cebra/
setters in that audit. Native local splice/WAL, genuine original recovery, real
creation/inverse and full shared/fault/UI/AEB_Core/FLOW/package remain open.

## Previous: retained graphical field guards

Full delivery remains INCOMPLETE. Added a fixed bounded native graphical projection
for retained original diagrams, covering ordered scopes/nodes/pins/edges/comments,
geometry, selected text/type/aliases, sequence fields and routes. Preparation
captures an immutable native-memory string; inverse preflight, owner restore and
stored-inverse reconciliation refuse missing or changed checkpoints. Native
recovery v2 reports compact typed checks, not a duplicate graph to the agent.
This does not cover all detached model/style/instVar fields or implement a local
merged inverse. [Contract and commands](bde-native-material-field-guard.md).

The pure inverse analyzer now rejects restoring an edge when an existing unrelated
edge was later redirected onto its input. Previously the occupancy test only
checked newly created edge IDs. Negative regression coverage includes that case,
native identity unchanged/fields changed, legacy missing checkpoints, wrong
profiles/types and projection geometry/pin-order/alias/route/scope disagreements.

[Detached-oracle02](../analysis/bde-experiments/2026-10-03/bde-class-detached-oracle-02/result.json)
passes three CURRENT-state native projection rounds with complete field-by-field
public API bookends, four owners/seven scopes/31 nodes/59 pins/23 edges each.
There are no comments in the fixture. Middle observation 950.197-1059.379 ms/
208 frames excludes public bookends and is not formal Tool.call read latency or
a 30-sample P95. No positive detached-original post-deletion/restore proof is
claimed. All current collected/native domains/public observations remain equal.

[Detached-preview04](../analysis/bde-experiments/2026-10-03/bde-class-detached-preview-04/result.json)
passes 12 real Tool.call preflights (three rounds/four primitive types), now running
the graphical projection on every owner and compiling/binding the material
template without actions. Native recovery/edit records remain absent. Each
complete preview uses294 frames and1363.038-1442.392ms; this is additional guard
coverage, not measured acceleration. Three actual requests remain zero-frame
unsupported-reference refusals before later creation/hold checks. Parameterized
create/diff/inverse acceptance remains open. Failed detached-preview01/02 preserve
the template bracket error and direct four-argument error102; curried1+3 argument
binding passed. Preview03/oracle01 are earlier passing candidates.

[Offline90](../analysis/bde-experiments/2026-10-03/offline-contract-90/result.json)
passes541 Python/21 Doge/1042 assertions/version; six live skips remain unverified.
It ran after the live evidence completed. Final331 offline/33 preview/26 oracle
source hashes have zero drift. [Safety06](../analysis/bde-experiments/2026-10-03/bde-continuation-safety-06/result.json)
confirms the original29 display01 files and hold unchanged,restored=false,
zero Cebra/setters in that audit. Main21052 and other task processes are unchanged;
no restart/save/discard/loader/epoch binding/guard clearance. Every helper exited.
Ledger25 keeps28 cases andcomplete=false. Genuine display01 recovery, positive
Class creation/inverse, native local merge, full fault/shared/UI/AEB_Core/FLOW and
the verified release remain outstanding.

## Previous: parameterized Class argument creation

Full delivery remains INCOMPLETE. Added exact method selection independent of
an existing formal, a fixed parameterized `addArgumentElement:modelType:` native
template and all-owner creation WAL/retained-loader plan. Definition mutation and
each owner graph materialization remain separate journaled steps. Creation has
no prune steps. Actual effects verify appended formal name/type/direction/identity,
independent public signature, persisted configuration, exactly one unique new
caller input pin and complete scopes; unrequested nodes/connections refuse.
Synthetic negative effects and native C# protocol tests remain offline evidence.
The final validator uses strict JSON fingerprints for the full expected signature,
configuration storage and scope semantics, so booleans cannot equal integers.

The formal six tools expose `create_class_argument` preview with exact
Main/method_alias, bounded name, `cont|sdisc|udisc|log`, explicit layout and
no-implicit-sequence policies. Actual parameterized writes remain closed:
`NATIVE_WRITE_ACCEPTED=false`. Native `validate` returns before allocating the
signature registry; preview prepares no recovery, reserves no request and creates
no edit WAL. Other formal slots/directions/enum/complex/diagrams remain unavailable.
Source chain and commands: [creation contract](bde-class-argument-creation.md).

[Creation-preview04](../analysis/bde-experiments/2026-10-02/bde-class-creation-preview-04/result.json)
passes three real Doge/public-API-bookended rounds, four types each: 12 native
compiled validation calls, four owners/seven scopes and four planned caller pins.
Complete collected owner observations and native database/process domains remain
equal; native signature/material records stay absent. Each preflight uses 276
request frames. Recorded complete preflight observations are 1.318-1.412s;
these are not 30-sample read/edit performance acceptance. The offline89 suite ran
concurrently; no latency cause or improvement is inferred from that condition.
No new assertion, source drift, native setter, edit allocation or recovery release
is observed. Three actual write requests use zero frames and are refused by this
fixture's existing unsupported-Project-reference guard. They do not reach the
creation acceptance or restoration-hold guards, and cannot certify those guards
online. No actual argument was created or restored by this experiment.

Failed [preview01](../analysis/bde-experiments/2026-10-02/bde-class-creation-preview-01/result.json)
preserves the unsupported write `max_bytes` shape; preview02 is the earlier
one-round candidate. Failed [offline86](../analysis/bde-experiments/2026-10-02/offline-contract-86/result.json)
preserves a new missing-scope test's unchecked KeyError, fixed to an explicit
coverage refusal. Offline87 is the subsequent pass before final capability/error
description updates. Offline88 and preview03 precede the final strict JSON-type
effect checks. [Offline89](../analysis/bde-experiments/2026-10-02/offline-contract-89/result.json)
passes 531 Python tests, 21 Doge tests/1042 assertions and version; six live skips
remain unverified. Earlier targeted write-contract omission and stale three-pin
test expectation were corrected before these full recorded runs.

[Safety05](../analysis/bde-experiments/2026-10-02/bde-continuation-safety-05/result.json)
confirms all 29 original display01 files and the durable hold unchanged,
restored=false, zero Cebra/setters in that audit. No restart/save/discard/native
load/epoch rebind/guard clearance. Main21052 and other task instances untouched.
One other task's ASCET PID changed externally; this continuation did not control
it. Original-state recovery, live parameterized creation/inverse, native local
inverse, shared/fault/UI and isolated AEB_Core/FLOW/release remain outstanding.
Ledger24 keeps every full gate unaccepted. Final 328 offline-source hashes and
32 online-source hashes have zero drift from their recorded candidates.

## Previous: frozen datastore recovery research

Full delivery remains INCOMPLETE. Added source-derived read-only record/Esw
audits for original display01. Byte-audit02 finds the exact 20-byte removed formal
alias once, at 26876888. Record-audit05 validates one 130-byte split-identity SGClass
record and its 7304-byte current blob with matching segment length/CRC. That blob
does not contain the missing alias. Swapper-audit03 scans 2673 CRC-valid streams
in the tested profile and finds no containing original-formal stream. The nearest
preceding stream ends at 26876772, 116 bytes before the raw alias sighting. Recovery
search remains FAILED; no complete original material is established. This is not
an absence proof under other encodings or other backup sources.

Initial 26-byte-profile and required-size-byte failures remain as record01/02.
The final parser accepts zero size bytes only with independent complete observed
block lengths; native index/filer equivalence and actual recovery are unverified.
Sixteen parser tests pass. [Offline85](../analysis/bde-experiments/2026-10-02/offline-contract-85/result.json)
passes 517 Python tests, 20 Doge tests/1030 assertions and version. Six live skips
remain unverified. The runner now fingerprints its tested Python sources as well.
Exact sources, limits and commands: [recovery audit](bde-recovery-record-audit.md).

[Safety03](../analysis/bde-experiments/2026-10-02/bde-continuation-safety-03/result.json)
confirms all 29 original files and the durable hold unchanged, 0 Cebra/setters,
restored=false. Main PID21052 and other instances untouched; no restart/save/
discard/native load/epoch rebind/hold clearance. New writes remain held. Class
creation/local native inverse, UI/shared/fault, final isolated AEB_Core/FLOW and
final packaging remain outstanding. Read implementation/timings are unchanged.

[Ledger22](../analysis/bde-experiments/2026-10-02/bde-eval-ledger-22/report.json)
retains 28 incomplete cases and all failed recovery evidence; no G0-G7/FLOW or
release acceptance is granted.

## Previous: Class inverse field and dependency analysis

Full delivery remains INCOMPLETE; the original display01 restoration hold remains.
`bd_revert(preview=true)` now adds `patch_analysis`, comparing immutable actual
before/after WAL observations with a fresh collected owner observation. The pure
planner identifies exact row/field conflicts, native identity/generation changes,
ordered pin/route conflicts, new incident edges, occupied restored inputs and
references to objects removed by the inverse. It preserves unrelated field and
object changes in a proposed value patch. Missing values and null are distinct,
and JSON booleans cannot compare equal to integers. Inputs are never modified.

The native preview no longer sends its exact-after equality parameter to the
read-only collector: changed data must reach analysis. Database/process, dirty
editor, complete collection and native retained-object checks remain required.
Actual inverse execution retains its original all-owner baseline guard. A changed
observation returns `write_eligibility="refused"` with
`STRICT_INVERSE_BASELINE_REQUIRED` and diagnostics; it does not turn an analyzed
patch into native authorization. `native_merge_executor_available=false` and
`write_authorized=false` remain explicit. Changed signature/configuration/public
observations need native recheck; effective values, ordering, detached fields and
runtime scheduling are not certified by this value analysis.

[Analysis02](../analysis/bde-experiments/2026-10-02/bde-class-inverse-analysis-02/result.json)
passes nine offline cases: three recorded actual applied WALs, each replayed with
its exact after plus two synthetic later observations (independent comment and
touched route conflict). Pure analysis takes 8.295-9.592ms. Recorded files and source
hashes remain unchanged. This is neither current-state online observation nor
native local-restoration acceptance. The 58 targeted tests include same-row
independent fields, missing containers, aliases/generations, ordered lists,
new dependencies, occupied inputs and explicit strict-executor refusal.

[Offline83](../analysis/bde-experiments/2026-10-02/offline-contract-83/result.json)
passes 501 Python / 20 Doge tests, 1030 assertions and version. Six live skips
remain unverified. [Inverse-preview04](../analysis/bde-experiments/2026-10-02/bde-class-inverse-preview-04/result.json)
passes three actual Doge held-refusal calls/all pages, zero Cebra frames and zero
setters, with original WAL/hold hashes unchanged and no edit record allocation.
Held/expired/released previews say `patch_analysis="not_checked"`; they do not
produce a fictitious current-state comparison. No process was restarted or saved.

Latest ledger21 remains incomplete. Required next work: genuine original-state
recovery, native local merge/executor with independently verified identities and
unrelated-change preservation, Class formal creation, shared/fault/UI acceptance,
isolated AEB_Core/FLOW and the final package. Previously measured read profiles
remain recorded below; their code path was not changed or benchmarked again here.

## Previous: business read and exact endpoint identity

Full delivery remains INCOMPLETE. This continuation fixes ordinary semantic
reader identity when multiple ASCET instances run: select the loopback LISTEN
owner for the requested endpoint, validate ASCET process name/start time and
recheck generation after collection. Missing or malformed generations now refuse
before snapshot publication. The first
[semantic01](../analysis/bde-experiments/2026-10-02/bde-semantic-read-delivery-01/result.json)
found the old null-generation bug; its rejected sample remains recorded.

[Semantic03](../analysis/bde-experiments/2026-10-02/bde-semantic-read-delivery-03/result.json)
passes 30 fresh AEB_dFxTar full declared semantic reads plus independent initial/
final public getter Tool.calls. Every collected raw field and ordered array is
equal, apart from declared timing/profile metadata: 56 nodes, 120 pins, 60 edges,
7 definitions, 21 method bodies, 19 dependent parameters and 24 formula bindings.
No model snapshot cache replaces capture. All three Tool.calls / 33978 body bytes
are included at a 16 KiB page budget; actual native traffic is 93 request /
92 response frames and 24527 / 516654 bytes. Public oracle requests use 5215 frames.

| Current profile, 30 samples | Complete median | Complete P95 | Complete max | First-call P95 |
|---|---:|---:|---:|---:|
| AEB_dFxTar semantic03 | 584.959 ms | 663.115 ms | 667.626 ms | 631.718 ms |
| Class read15, 4 owners/7 scopes | 901.721 ms | 933.749 ms | 938.814 ms | 908.150 ms |

Application startups are separate: 105.495 ms and 102.147 ms respectively.
[Class15](../analysis/bde-experiments/2026-10-02/bde-class-bulk-read-15/result.json)
rechecks the latest shared backend against public RPC bookends, 30721 body bytes /
180 request frames. Live capture P95=763.768 ms. Both runs retain unchanged source
manifests, no new assertions or edit intents, and exact endpoint generation while
three ASCET instances are present. These are current-state profiles, not cold-image,
arbitrary roots/types, complete effective calibration/numeric implementation,
atomic observations or whole PERF-01/G0-G7/FLOW acceptance.

[Semantic02](../analysis/bde-experiments/2026-10-02/bde-semantic-read-delivery-02/result.json)
also passes all 30 field comparisons but misses 1s: P95=1113.425 ms, max=1246.234 ms.
The offline80 suite was concurrently launched; this is an execution condition,
not an established cause. Slow trials 12 and 13 are retained. Semantic03 runs after
the offline suite exits. Oracle application lifecycle differs from resident reads;
no direct same-lifecycle speedup ratio is claimed.

[Offline81](../analysis/bde-experiments/2026-10-02/offline-contract-81/result.json)
passes 481 Python / 20 Doge tests, 1030 assertions and version; 6 live skips remain
unverified. Two new tests cover native endpoint parsing (13 selection/refusal
scenarios without Cebra) and refusal to publish invalid generations.
[Failed offline80](../analysis/bde-experiments/2026-10-02/offline-contract-80/result.json)
retains one obsolete test fixture using `test-process`; it now uses native-format
identity. The earlier parser compile namespace collision is recorded in semantic01's
README and fixed with `System.Diagnostics.Process`.

[Safety02](../analysis/bde-experiments/2026-10-02/bde-continuation-safety-02/result.json)
again confirms all 29 original display01 files and hold unchanged, restored=false,
0 setters/connections. It does not repeat the backup metadata scan. A separate
read-only `vssadmin list shadows` attempt lacks administrator privileges; this
does not prove backups absent. The earlier backup-path answer is still pending.
No restart/save/discard, original WAL/epoch rebinding or guard clearance occurred.

Remaining: genuine failed display01 recovery; Class formal creation and inverse
preserving unrelated changes; fault/type/shared dependency/UI gates; isolated
AEB_Core/FLOW; complete eval and release package. Latest ledger19 keeps complete
delivery unaccepted. Reproduction READMEs accompany all new results.

## Historical Read14: complete Class delivery below one second

Full BDE delivery remains INCOMPLETE. Final
[bulk-read14](../analysis/bde-experiments/2026-10-02/bde-class-bulk-read-14/result.json)
passes30 fresh reads in one resident Doge process plus independent public RPC
bookends. Every collected field and ordered array remains equal for4 owners/
7 scopes and30721 body bytes. All three pages are included. No model snapshot
cache replaces live capture; the compiled-query cache is OFF.

| Final candidate,16KiB paging | Median | P95,nearest rank | Maximum |
|---|---:|---:|---:|
| Live capture | 770.547ms | 793.331ms | 793.548ms |
| First Tool.call | 907.655ms | 931.232ms | 939.928ms |
| Complete three Tool.calls | 935.287ms | 955.736ms | 967.486ms |

Doge module/application startup105.762ms is separate, following the eval policy.
Samples still include every Python/bridge startup, identity/owner/configuration
guard, publication, serialization and continuation. Request/response frames are
180/179,wire bytes72097/794516. Public graph RPC uses6600 request frames and the
same body. Two bookends prove coverage, not oracle P95. There are0 unexpected
failures,0 new assertions,0 edit intents and0 source drift. Only this current-state
Class profile passes1s; AEB_dFxTar PERF-01,cold images,other types/owners,1000 nodes
and full G0-G7/FLOW are not certified by it.

The read reuses its owner-explicit structure template and skips an unused edit
selector. Configuration traversal ends at its actual queue, with unchanged bounds
and a frozen original template for independent comparison and writes. Doge now
resumes immutable cursor documents locally, preserving Python checksums,text
hash,session,UTF-8 boundaries,budget,durable cursor publication and delivery ranges.
Unsupported/corrupt/missing records fall back to established Python behavior.
Continuation has no native access. ASCET_BD_LOCAL_PAGING=0 restores the old path.
No new host or Code Mode was introduced.

All iterations remain: read08 has3 per-call-process paired rounds at1438.520-
1442.786ms; read09 has30 resident rounds,P951093.788ms; read10 compares the frozen
configuration reader in3 paired rounds,1087.789-1094.216ms. Queue termination had
no measured benefit on this small fixture. Read11's optional compiled-query cache
passes coverage but costs1085.678-1111.996ms/183 frames and stays OFF. Read12
retains30 pre-local-paging trials including slower results,P951247.733ms. Read13
first establishes local paging atP95932.804ms; read14 binds the cancellation fix
to the final candidate. Application-start-per-page and resident timings are
separate boundaries, not directly interchangeable speedup measurements.

[offline78](../analysis/bde-experiments/2026-10-02/offline-contract-78/result.json)
is retained FAILED: awaiting paging for writes changed immediate post-dispatch
cancellation into REQUEST_CANCELLED. Paging is now restricted to exact cursor-only
read tools; writes again report WRITE_OUTCOME_UNKNOWN after dispatch. No online
write ran in that failed candidate.
[offline79](../analysis/bde-experiments/2026-10-02/offline-contract-79/result.json)
passes479 Python tests,20 Doge tests/1030 assertions and version;6 live skips remain.
Tests compare independent Python page bytes/metadata,interoperate with cursors,
retain gaps/tamper/session/numeric/Unicode refusal or fallback, and demonstrate
actual Tool.call continuation with no Python executable. An initial standalone
Unicode test failed because its fixture used Windows-code-page stdin; explicit
UTF-8 JSON byte decoding repaired the fixture. That was not an online sample.

[preview05](../analysis/bde-experiments/2026-10-02/bde-class-preview-tools-05/result.json)
passes3 independent public-read/native-preview/public-read rounds,263 frames,
1165.099/1192.501/1213.397ms,five pins/five edges and unchanged complete owners.
Positive retained/capacity/partial recovery remains unaccepted. Its adapter
predates the final cancellation-only fix; native sources are unchanged. This is
partial evidence, not whole final-candidate acceptance.

[Safety01](../analysis/bde-experiments/2026-10-02/bde-continuation-safety-01/result.json)
confirms all29 original display01 files and the hold retain their hashes. Targeted
ETAS/repository metadata finds three old disk copies and an old export, all
predating the failed fixture. No genuine restoration source is established.
Win32_ShadowCopy initialization failed; that does not prove absence of backups.
No setter,restart,save/discard,WAL/epoch rebinding or hold clearance occurred.
Main PID21052/32503 remains; other task instances are untouched.

Remaining: genuine display01 restoration; Class creation and inverse preserving
unrelated changes; full fault/partial/type/shared-owner gates; native BDE label/
owner/visual lifecycle; isolated AEB_Core/FLOW; final package. Ledger18 grants
no complete G0-G7/FLOW delivery.

## Historical: 2026-10-02 Complete Class read acceleration

Current [bulk-read07](../analysis/bde-experiments/2026-10-02/bde-class-bulk-read-07/result.json)
passes30 actual default Doge reads and independent public RPC bookends. Complete
collected data is equal for4 owners/7 scopes, including ordered graph fields,
method/formal aliases, native scopes and configuration storage. Both strategies
deliver30721 bytes under the same16384-byte page budget. Request frames drop from
6603 to192; response frames6601 to191. Native templates, identities and all
returned pages are recorded. No new assertion or Class edit intent occurs.

| Metric | Default Class batch,30 samples |
|---|---:|
| Live capture median/P95 | 821.379/863.736ms |
| First Tool.call P95 | 1126.012ms |
| Complete Tool.call median/P95 | 1509.169/1559.862ms |
| Complete Tool.call range | 1473.396-1603.529ms |

The end-to-end1s target is still missed. Live capture being below1s is a different
measurement. Two same-budget public bookends cost10050.877/11490.784ms, not an
oracle P95. [bulk-read06](../analysis/bde-experiments/2026-10-02/bde-class-bulk-read-06/result.json)
also passes3 alternating full oracle/batch rounds at8192-byte paging; native
complete calls2131.889-2192.471ms. These page budgets and sample counts are kept
separate. This one current-state fixture does not grant general/cold/1000-node,
external-type/effective-configuration or complete G0-G7/FLOW acceptance.

The default reader uses fixed batches of audited public graph/signature getters,
scope-ID-only enumeration, direct Windows listener-owner queries and one complete
read-only identity/owner bridge. Edit/inverse still use their strict input
identities and public observations. See [implementation and reuse method](bde-read-optimization.md).
The original field-by-field oracles are unchanged. The intermediate
[bulk-read03 failure](../analysis/bde-experiments/2026-10-02/bde-class-bulk-read-03/result.json)
is retained: four-argument remote call error102,0 setters and0 new assertions;
the fixed three-argument mode passed in subsequent candidates.

[preview-tools04](../analysis/bde-experiments/2026-10-02/bde-class-preview-tools-04/result.json)
passes3 independent public-RPC-read/default-preview/public-RPC-read rounds,
5 planned pins/5 edges, complete owners unchanged,275 request frames and
1193.673/1191.510/1217.299ms. No native recovery allocation or edit request exists.
Only absent-record inspection is certified; positive retained/capacity/partial
branches and actual edit/inverse remain outstanding.
[offline76](../analysis/bde-experiments/2026-10-02/offline-contract-76/result.json)
passes475 Python tests,13 Doge/825 assertions/version;6 live skips remain unverified.

Full delivery remains INCOMPLETE and all new model writes remain disabled. Main
PID21052/AEB_1/32503 is unchanged. No setter, restart, save/discard or recovery
clearance was dispatched. Original display01 records/hold hashes are unchanged;
see [continuation audit](../analysis/bde-experiments/2026-10-02/bde-class-bulk-read-07/continuation-safety.json).
Other instances were untouched. The targeted2026-08-03 export predates the fixture
and does not establish original-state recovery. Automation remains paused.

Next required work: genuine display01 recovery, Class creation and preservation
of unrelated changes during inverse, native retained/fault/external-type/shared
dependency gates, BDE visual lifecycle, isolated AEB_Core/FLOW and verified
release package. Current [ledger17](../analysis/bde-experiments/2026-10-02/bde-eval-ledger-17/report.md)
grants no whole-case pass. The earlier backup-path question remains pending.

## Historical: Read-only native recovery inspection and Class inverse preview

Latest candidate:
[offline75](../analysis/bde-experiments/2026-10-02/offline-contract-75/result.json)
passes462 Python/13 Doge/6 live skips/825 assertions/version. Final
[inverse-preview-tools03](../analysis/bde-experiments/2026-10-02/bde-class-inverse-preview-tools-03/result.json)
passes capabilities discovery and3 held inverse previews. Known hold/released
refusals now return directly from WAL without querying the ASCET listener; other
missing endpoints produce a typed refusal. All frames remain0, original files/
hold hashes unchanged,0 assertions. Complete planned patch delivery requires two
Tool.calls totaling492.763/492.803/504.751ms; these three refusal samples do not
measure positive inverse, Class read or30-sampleP95. Source manifests have no
drift; native sources remain identical to preview03. Prior snapshots below are
retained with their own candidate hashes and refusal reasons. This changes the
refusal cost/availability, not the native positive inverse implementation.

Full delivery is INCOMPLETE. No model setter, business write, restart, save,
discard or recovery guard clearance was performed. Main PID21052/AEB_1/32503
and the other task's untouched PID39168 remain; automation remains paused.

Class deletion preview now observes native signature/material registry capacity
and occupied keys using a fixed read-only Smalltalk template. The whole owner
group must fit within material capacity8; missing/malformed or non-atomic changed
probe rosters refuse. The template does not use ifAbsentPut, prepare, release,
model setters or store. Retained-object branches check exact selector/formal
binding, after-signature identity, owner/specification, stored source and original
graphical object identities. Detached object field contents are not collected.

Class bd_revert(preview=true) returns the planned inverse of actual WAL effects
plus separate write_eligibility/refusal_reasons. It never creates an inverse edit
intent or reserves request_id. Held/expired/already-restored changes refuse
without Cebra; a current candidate still requires exact actual-after and native
guards and must recheck on execution. The strict all-owner policy remains.

- [preview-tools03](../analysis/bde-experiments/2026-10-02/bde-class-preview-tools-03/result.json):
  three real Doge read/preview/read cycles,4 owners/7 scopes,5 pins/5 edges per
  planned closure independently match public graphs, complete collected owners
  unchanged,0 new assertions/edit intents/recovery allocations. Preview8595
  request frames;13294.650/13275.230/13721.410ms. Native records are absent in all
  samples. This only proves the empty-record/capacity-observation branch; actual
  exhaustion and positive retained-object verification remain unaccepted.
- [inverse-preview-tools01](../analysis/bde-experiments/2026-10-02/bde-class-inverse-preview-tools-01/result.json):
  three actual Doge calls against the immutable failed display01 record. Each
  returns DATABASE_RESTORATION_REQUIRED and IDENTITY_UNRESOLVED, planned original
  signature from WAL,0 Cebra frames and unchanged original/hold hashes. Each has
  one cached continuation page. This is a verified refusal, NOT a recovered edit.
- [offline73](../analysis/bde-experiments/2026-10-02/offline-contract-73/result.json):
  460 Python passes,13 Doge passes/6 live skips/825 assertions and version pass.
  New cases cover whole-owner capacity, lost original identities, stale actual
  after, confirmed inverse, malformed/partial probe data and request reuse after
  preview. Recorded fixtures do not certify native positive paths.

Final [offline74](../analysis/bde-experiments/2026-10-02/offline-contract-74/result.json)
also passes460 Python/13 Doge/6 live skips/825 assertions/version after synchronizing
the actual Doge descriptions and capabilities query. Final
[inverse-preview-tools02](../analysis/bde-experiments/2026-10-02/bde-class-inverse-preview-tools-02/result.json)
executes that capabilities query plus3 expired inverse refusals on the new
discovery candidate, all without Cebra, original record/hold changes or assertions.
Only experiment instrumentation changed after offline74; the native source was
unchanged from preview03. Other task PID3000 appeared at final inspection and
was untouched. None of these checks restores display01.

Source inspection also confirms SGElement xmlOID forwards to the aliasName field
getter and SGMethodDeclaration aliasName is a field getter. Audited
DBInterface32 loadObjectWithoutCaching may return current cache or call
loadOnlyFromDatabase/readRecord; it is not established as a pre-edit history
recovery interface. No history load or replacement formal was dispatched.

The actual display01 deletion is still unrestored and blocks new model writes.
The backup-path question remains pending. Next work remains genuine restoration,
Class creation, patch-preserving inverse, real native retained/capacity/partial
tests, full fault and type/owner/shared dependency coverage, native visuals and
isolated AEB_Core/FLOW/G0-G7/package acceptance. The new
[ledger16](../analysis/bde-experiments/2026-10-02/bde-eval-ledger-16/report.md)
does not grant complete gates or a universal1s guarantee.

## Historical: Read-only Class preview and persistent restoration guard

Full delivery remains INCOMPLETE. This continuation performs no model setter,
business write, ASCET restart, save or discard. State machine/Code Mode/new host
remain deferred and automation remains paused. PID21052/AEB_1/32503 is unchanged;
the other task's PID39168 is untouched.

Class deletion preview now uses actual complete-owner re-observation and exact
method/formal aliases to return planned removals/layout candidates. It does not
reserve an edit request, allocate native recovery or report predicted effects as
actual diff. Capacity/prepare constraints, actual movement and sequence identities
still need apply; inverse preview remains unavailable.

- [preview01](../analysis/bde-experiments/2026-10-02/bde-class-preview-tools-01/result.json):
  three real Doge rounds;5 pins/5 incident edges planned each round match independent
  public API graphs; all collected owners remain equal before/after; no edit
  records, setters or newly appended assertions.
- [preview02](../analysis/bde-experiments/2026-10-02/bde-class-preview-tools-02/result.json):
  three additional rounds after the restoration guard; same coverage and results,
  8568 request frames per preview and15314.961/15636.120/15717.118ms.
  The response explicitly refuses write eligibility and names the retained hold.
  This is not PERF-02 or a30-sample P95 acceptance.
- [read-tools01](../analysis/bde-experiments/2026-10-02/bde-class-read-tools-01/result.json):
  three complete actual Doge reads,4 owners/7 scopes,30721 UTF-8 body bytes and6603
  request frames each; all five Tool.calls per read drain exactly the committed
  body. First calls13745/12825/12896ms; total including four cached pages approximately
  14650/13710/13790ms. Earlier Class5-6s figures apply to historical candidates;
  this complete public/native/configuration profile currently takes longer.
- [offline72](../analysis/bde-experiments/2026-10-02/offline-contract-72/result.json):
  452 Python passes,13 Doge passes/6 live skips/825 assertions and CLI version pass.
  The harness now isolates native-state directories so offline tests cannot touch
  the user's live pending/restoration guards. Skips remain unverified online cases.
  A confirmed request still replays offline after the hold is added; the guard
  does not cause repeated setters or rewrite its terminal receipt.

[restart audit02](../analysis/bde-experiments/2026-10-02/bde-display-restart-audit-02/result.json)
confirms the retained display01 edit still matches collected public actual-after
and not original-before, with the same original WAL terminal checksum. It now
publishes an immutable cross-STORE, cross-epoch database restoration hold bound
to that evidence. Read manifests deny edit/revert; confirmed pending replies do
not remove the hold. Literal and structural journal preflight rejects before a
new intent/started event; lower-level mutation checks remain in place.

[guard-tools02](../analysis/bde-experiments/2026-10-02/bde-restoration-guard-tools-02/result.json)
passes three real Doge write refusals from independent STORE directories: valid
literal edits return DATABASE_RESTORATION_REQUIRED with0 native request frames,
no edit record, unchanged complete selected scope and unchanged guard bytes.
[guard-tools01](../analysis/bde-experiments/2026-10-02/bde-restoration-guard-tools-01/result.json)
is a preserved failed attempt: read correctly refused two ASCET processes without
an explicit verified endpoint. The next attempt sets ENDPOINT_PORT=32503; it does
not disable process/port verification or operate the other instance.

The two repository database disk copies were taken before the mixed fixture was
created, as recorded in [material audit](../analysis/bde-experiments/2026-10-02/bde-recovery-material-audit-01/result.json).
Neither is established as genuine pre-edit recovery material for this fixture.
The prior backup-path question is still pending. No old intent/epoch is changed,
no original object is replaced by a same-name recreation, and no pending-file
absence is interpreted as restoration. Additional online model writes remain
blocked until genuine original-state recovery can be verified.

Still required: failed-fixture recovery; Class formal creation, native inverse
preview and patch-preserving inverse; live complete/partial fault recovery and
source-tamper negatives; external types, other roots/unconnected layouts, shared
dependencies; complete original-BDE visuals/owner lifecycle; final isolated
AEB_Core/FLOW/G0-G7 acceptance and a verified reproducible release package.
The successful read/preview/refusal trials do not complete these requirements.

## Historical: Class tools integration and presentation safety

This is an incremental report. ALL requested deliveries and full G0-G7/FLOW
acceptance are NOT complete. State machine, Code Mode and new host remain deferred.
Latest endpoint: PID21052, epoch21052/2026-10-02T08:23:11.2491625Z, AEB_1/32503.
PID39168 belongs to another task and was untouched. This continuation dispatched
no new model setter, business write or ASCET restart.

The existing Doge tools now provide opt-in isolated Class-interface read, exact
formal deletion, separate apply/inverse, actual durable WAL diff, after snapshots,
request-ID replay/conflict checks and terminal-only fresh reconciliation. These
are implemented experimental capabilities, not general production acceptance.
[Usage](bde-class-tools-usage.md). Earlier statements that the adapter is absent
are historical. Live integration evidence:

- [middle03](../analysis/bde-experiments/2026-10-02/bde-class-tools-middle-03/result.json):
  three real Tool.call rounds, four owners/seven scopes, exact deletion and strict
  all-owner restoration.
- [return02](../analysis/bde-experiments/2026-10-02/bde-class-tools-return-02/result.json):
  three real rounds; runtime scheduling remains unverified.
- [return01 recovery](../analysis/bde-experiments/2026-10-02/bde-class-tools-return-01-recovery/result.json):
  genuine retained inverse and independent original collected-baseline confirmation.
- [offline67](../analysis/bde-experiments/2026-10-02/offline-contract-67/result.json):
  historical candidate, 434 Python passes/13 Doge passes/6 live skips/825 assertions.
  Skips are not online acceptance and this does not cover the latest shared changes.

[display01](../analysis/bde-experiments/2026-10-02/bde-class-tools-display-01/result.json)
FAILED and remains outstanding. After ASCET restarted, the original Acceleration
formal is still absent and the full captured public fields equal actual after,
not original before. [restart verify01](../analysis/bde-experiments/2026-10-02/bde-display-restart-verify-01/result.json)
FAILED against the original fixture; [restart audit01](../analysis/bde-experiments/2026-10-02/bde-display-restart-audit-01/result.json)
records this with zero setters. Old inverse objects are unavailable, the immutable
intent/epoch/WAL were not changed, and no same-name replacement counts as recovery.
No further model writes are being dispatched while this restoration is unresolved.

[owner diagnostic01](../analysis/bde-experiments/2026-10-02/bde-display-owner-diagnostic-01/result.json)
uses fresh display-only domains, not a rebound old edit. All four scope show/clear
calls and native/Undo checks succeeded, but four Object common-method assertions
were recorded. Screenshots cover Class/Main and caller/h3 at100%/150% and real
horizontal scroll; clipping/overlap and Outline/title synchronization remain.
Native passed=true in that diagnostic does NOT grant full visual or database
purity acceptance. [Screenshots](../analysis/bde-experiments/2026-10-02/bde-display-owner-diagnostic-01/visual).

Recovered call chains explain two hazards. Object.dbObject invokes the common-method
assertion; a bare Undo SGGraphicObjectsDB must not receive that generic getter.
EtasAPIItem.edit calls SGItemWithSpec.editPrompt, createDefaultNetworkContext and
defaultProjectForItem; viewer initClass also calls defaultProjectForItem, which
can create a Project and modify persistent metadata. No explicit setter and
dirty=0 are insufficient evidence of query/display purity.

Current fixes compare controller item identity directly, guard checkpoint dbObject
by audited DBBaseObject/DBProxy types, and reuse an existing exact BDE editor.
Closed editors return UI_EDITOR_NOT_OPEN before callback registration. Automatic
opening is withheld pending complete side-effect control. Class read now retains
unsupported references and reports write_resource_error; strict write Capture
still refuses them. Two new actual-C# closure tests pass.

[owner diagnostic02](../analysis/bde-experiments/2026-10-02/bde-display-owner-diagnostic-02/result.json)
preserves the failed read caused by DEFAULT Project references being checked with
edit authority. [diagnostic03](../analysis/bde-experiments/2026-10-02/bde-display-owner-diagnostic-03/result.json)
then confirms complete collected owner/signature/public/native/reference/config
equality before/after show and clear, deep Undo equality and zero new assertions.
Three open caller scopes display successfully; the closed Class scope refuses,
so the aggregate verdict remains FAILED. Only sampled evidence supports the
assertion fix; the old nil-controller specification error is not yet resolved.

Manual native navigation later switched caller1's editor to the Class in the same
window handle; the main database window showed a modified-title marker. No save
or discard was dispatched. This navigation is not display purity acceptance;
full Project/effective configuration content remains uncollected. A genuine
pre-edit backup/recovery-material question is pending.

Open delivery items: genuine failed-fixture restoration; owner switching and
closed/reopened editors; label readability; Class formal creation/full native preview;
patch-preserving inverse; live complete receipt/WAL fault and source-tamper tests;
unknown/partial recovery; full external types and other roots/unconnected pins;
shared resource dependencies; final isolated AEB_Core/FLOW/G0-G7 and reproducible
packaging. Class complete-owner read5-6s/edit11-12s are a separate measured profile
from the ordinary AEB semantic read target; no universal1s claim is made.

## Historical: 2026-10-02 Class persisted configuration guard v2

The isolated Class executor now captures all-owner persisted configuration graphs
in preparation, actual after and restored WAL observations. Before every mutating
dispatch it checks storage in addition to references/database/dirty-editor state.
Stale config expectations reject before preparation. Offline audit verifies every
owner and restoration; diff records old/new config hashes. Older journals retain
their historical output shape when config values were not collected.

The fixed reader uses sorted map traversal, explicit sharing/cycles, mutable
String/ByteArray graph nodes, exact8-byte Float representation and configuration
OID/object bindings. Bounds:32768 objects,8192 collection entries,256 direct
references. Unknown classes/indexed layouts and unresolved proxies refuse.
Database model identities are external boundaries. This is persisted storage,
not effective Project/instance evaluation or a full external type fingerprint.

[Evidence/reproduction](../analysis/bde-experiments/2026-10-02/bde-class-config-evidence-v2-01/README.md)
cross-checks six actual deletion/restoration rounds, every WAL receipt/patch and
an independent mixed fixture. Per round:4 owners/7 scopes/14 configuration and
resource checks, exact5 selected pins/5 incident edges deleted, all collected
fields and original objects restored. Return sequences remain unassigned;
scheduling is unverified. Config-conflict and genuine first-started WAL publication
failure confirm zero setters/no outstanding; independent observation matches the
baseline. Offline63:384 Python,11 Doge pass/6 live skips/814 assertions/version.

Three independent AEB_Core observations each compare two identical native samples:
4 roots/128 linked configurations/14447 graph objects/2544 Float values; all three
fingerprints match. Total probe times3746/3729/3773ms,40 request frames each.
These are complete bounded configuration-closure observations, NOT measurements
of the existing ordinary BDE1s profile or normal edit latency.

All diagnostic failures remain, including unsupported storage classes, the8192
bound and24 unstable temporary enum OIDs. SGEnumeration.dbObject allocated IDs
for temporary types; it was removed in favor of raw slots. No model setter/store
was dispatched, but the original getter was not free of in-memory side effects.

Formal Class bd_edit/diff/revert remains disabled. Production requests/recovery,
complete type/signature fingerprints, native Class diff display, unknown/partial
and reload checks, other roots/unconnected layout and full isolated AEB_Core
acceptance remain required. Full delivery is NOT complete.

## Historical: Automatic Class owners and independent mixed-resource coverage

The isolated Class executor now has `--auto-callers`. Its execution input contains
only definition path/OID, database and process epoch plus native-resolution mode;
an exact selector is supplied separately. Native DB references determine all
caller owners, declarations and scoped occurrences. Fixture lists no longer
determine execution scope; the experiment uses them afterwards as an independent
oracle, including complete public baseline trees.

`AscetClassResourceClosure.cs` compares a deterministic stable binding closure
before every journaled mutating command: definition/owner OIDs, paths, Class/Module
kinds, declaration refs, every Main hierarchy scope and occurrence/model bindings.
Known library/configuration reference identities are included; their effective
values are not yet collected. Requested formal pin/layout changes are excluded
from this identity projection. Unknown references, non-BDE/other-root diagrams,
declaration-only owners, duplicate identities and more than seven caller owners
refuse before mutation. The backend retains the sandbox and Main-root limits.

[Independent evidence](../analysis/bde-experiments/2026-10-02/bde-class-auto-evidence-01/result.json)
verifies 15 actual native rounds with every WAL receipt and saved diff, execution
input checksums and fixture oracles. The audit itself emits zero Cebra frames.
[Reproduction](../analysis/bde-experiments/2026-10-02/bde-class-auto-evidence-01/README.md).

| Selected formal | Online rounds | Owners/scopes | Dispatches and resource checks per round | Removed pins/edges | Retained pin movements / adjacent corners |
|---|---:|---|---:|---|---|
| Old-fixture Primary control | 3 | 3/5 | 11 | 4/4 | 6/0 |
| Mixed aggregate/Torque (first) | 3 | 4/7 | 14 | 5/5 | 12/0 |
| Mixed aggregate/Acceleration (middle) | 3 | 4/7 | 14 | 5/5 | 8/0 |
| Mixed aggregate/Offset (last) | 3 | 4/7 | 14 | 5/5 | 4/0 |
| Mixed aggregate return | 3 | 4/7 | 14 | 5/5 | 4/4 |

The mixed fixture has one Class and two Module callers, four occurrences including
two of the same declaration, and three hierarchy levels. A second method shares
the Torque argument name while retaining a distinct alias, so selection is by
exact method/formal identity. Every round restores original signature/graph
objects and all collected fields, dirty0/outstandingfalse with source-drift[].
Return deletion records four newly unassigned sequence objects per round; runtime
scheduling is not certified. These are command batches, not primitive setter counts.

Both a deliberately stale resource-hash precondition and a genuine first-started
WAL publication failure execute zero setters with no outstanding recovery. A fresh
observation verifies the signature/discovery/body and all caller public trees are
unchanged. This is not a live GUI race/partial-unknown recovery test.

Offline61 passes Python370 and Doge11 pass/6 live skips/814 assertions, plus CLI
version. Sixteen new tests execute the real C# closure gate without Cebra and
cover owner/scope additions, binding changes, declaration-only and unsupported
reference refusal. Skips are not online acceptance.

Preserved builder failures: mixed-fixture01 failed compilation before fixture
dispatch; mixed-fixture02 created an isolated Class signature then refused its
old placement name gate. That incomplete Class remains retained test material;
no unknown mutation was replayed. A new mixed-fixture03 completed successfully.

Formal Class `bd_edit`/`bd_diff`/`bd_revert`, complete effective configurations,
live partial/unknown and restart recovery, native Class diff display, other roots
and unconnected layout proof remain open. Rechecking references across RPCs does
not provide an atomic model transaction. These cycles use extensive public/native
oracles and restoration, so their frame counts and durations are not production
edit/read latency measurements; no new universal-1s or optimality claim is made.

## 2026-10-02 Class write-ahead journals and generalized return closure

The isolated closed-formal executor now persists all-owner preparation and every
mutating stage before dispatch. It flushes each immutable event, publishes it
without overwriting previous evidence, chains checksums and keeps a cross-STORE
instance quarantine until actual validation completes. Preparation covers the
definition and both callers' five Main hierarchy scopes, with native original
objects retained in ASCET memory. The native database object token and clean
editors are rechecked before each stage. Complete collected owner scopes are
checked before apply and inverse. Unknown completion or a journal failure after
dispatch prevents subsequent setters and cleanup replay.

This is a research-executor foundation. Formal Class `bd_edit`/`bd_diff`/`bd_revert`
remain disabled; the journal is not a complete type/effective-configuration
fingerprint, production request-id ledger, atomic transaction or restart inverse.
Its same-process native recovery material is not reconstructed from disk.

[Evidence cross-check](../analysis/bde-experiments/2026-10-02/bde-class-journal-evidence-02/result.json)
verifies nine real native rounds, all raw before/after/restored observations and
dispatch receipts, plus a genuine write-ahead publication failure. It emits zero
Cebra frames itself. [Reproduction](../analysis/bde-experiments/2026-10-02/bde-class-journal-evidence-02/README.md).

| Exact selected formal | Online rounds | Owners/scopes | Confirmed stages per round | Removed pins/edges | Layout effects per round |
|---|---:|---|---:|---|---|
| Primary argument | 3 | 3/5 | 11 | 4/4 | 6 pin movements and retained edge endpoints |
| Secondary argument | 3 | 3/5 | 11 | 4/4 | 3 pin movements and retained edge endpoints |
| transform return | 3 | 3/5 | 11 | 4/4 | 3 pin movements and 3 adjacent orthogonal corners |

All nine rounds restore original signature/graph objects and every collected
scope field, finish dirty0/outstandingfalse, preserve business originals and
have no source drift. Raw actual patches also retain regenerated edge-reference
changes; these are not all topological edge deletions. Semantic-multiset gates
independently prove the exact four-edge deletion closure. The eleven stages are
mutating native command batches, not eleven individual primitive setters.
Independent public oracles and repeated all-scope checks make this an expensive
verification harness, not a production read-speed benchmark. No new 1s claim.

Return01 remains a failed precision experiment: native BDE moved the first
adjacent corner together with another method's output pin, while the old gate
permitted only endpoint movement. The native inverse was already complete.
[Confirmation01](../analysis/bde-experiments/2026-10-02/bde-class-journal-return-confirm-01/restoration-confirmation.json)
matches a fresh current signature, public trees, all native scopes and database
token against the known restored journal, then removes only its own quarantine
with zero setters. It cannot release unknown or partial mutation records.

Return02 uses the separate explicit `--allow-adjacent-corner-layout` policy.
Only the first/last corner coordinate required by the original orthogonal segment
axis can change; all independent public before/after edge route multisets must
match the native scope. Extra route changes remain refused. Return removal also
introduces six sequence annotations sharing three original native call IDs;
actual effects record both the pin annotations and deduplicated call objects.
All remain unassigned (0/-), under `--allow-unassigned-sequence`; execution
scheduling and runtime delivery are not certified.

[Write-fault02](../analysis/bde-experiments/2026-10-02/bde-class-journal-write-fault-02/result.json)
fails publication of the first started event after all resources are prepared:
zero setters, released native preparation and no pending marker.
[Independent observation](../analysis/bde-experiments/2026-10-02/bde-class-journal-fault-observe-02/result.json)
confirms the baseline unchanged. This controlled publication failure is distinct
from OS crash/power loss, partial native execution or unknown live reconciliation.

[Offline60](../analysis/bde-experiments/2026-10-02/bde-offline-contract-60/result.json)
passes Python354, Doge11 pass/6 live skips/814 assertions and CLI version. The
six-tool surface is unchanged; skips are not online acceptance. Formal Class
integration/fingerprints, live unknown recovery, original BDE display, other root
diagrams, unconnected layout proof and the full isolated AEB_Core eval remain.

## Historical: Exact Class selectors, nested closure and compact inspection

The formal `class_callers` query now accepts an optional exact
`selector={diagram,method_alias,formal_alias,slot}`. It returns the selected
formal and its scope-qualified caller pins, while retaining the complete bounded
native evidence locally. Wrong slots, names/ordinals, duplicate identities and
foreign formal ownership are refused. Void method call pins use a distinct
method alias binding; they are not selectable argument/return formals.

[Full versus selected comparison](../analysis/bde-experiments/2026-10-02/bde-class-general-impact-selected-01/comparison.json)
checks six current native observations for exact signature/caller equality,
native database/endpoint identity, clean editors and evidence hashes. Each
observes two owners, three Class occurrences and 18 pins, including two hierarchy
levels. Three real Doge Tool.call rounds per mode give:

| Returned query document | Complete bounded discovery | Selected formal |
|---|---:|---:|
| Body bytes | 9760 | 3472 |
| Pages at 2048-byte budget | 8 | 3 |
| Complete delivery median ms | 2035.796 | 892.964 |
| Native median ms | 186 | 183 |
| Actual Cebra request frames | 35 | 35 |
| Actual response bytes | 58675 | 58675 |

This is 64.43% less returned data and fewer offline pages, not a native acquisition
speedup or equivalent complete returned coverage. Native evidence still covers
all 18 pins; the selected response deliberately returns three matching pins.
Cursor requests emit zero Cebra frames. All three selected deliveries are below
894 ms, but three sequential samples are not P95 or a full BDE semantic-read SLA.
Wrong Module and wrong formal slot are rejected through actual Tool.call with
zero setters. Full and selected result/source manifests are retained.

The native Class research executor now selects aliases rather than calc/Signal,
supports multiple arguments/methods, and retains original graphical objects in
all Main hierarchy scopes. The new isolated fixture contains default void calc,
transform(Primary,Secondary), untouched(Primary), two Module owners and three
instances, with all data formals connected. Current
[first-argument deletion](../analysis/bde-experiments/2026-10-02/bde-class-general-delete-primary-04/result.json)
and [second-argument deletion](../analysis/bde-experiments/2026-10-02/bde-class-general-delete-secondary-03/result.json)
each pass three rounds. Every round removes exactly four formal pins/four incident
edges across the definition and callers, preserves other signature aliases and
relations, and restores original signature/graph objects and every collected
field across five scopes. No outstanding records, dirty editors or source
changes remain. These are native research workflows, not formal bd_edit journals.

Deleting a formal can reflow other pins in the same Class occurrence, including
another method. First-argument removal produces six native pin movements/six
retained edge endpoint changes; second-argument removal produces three each.
The research gate requires explicit `--allow-pin-layout`. It compares native pin
anchor displacement with independently read public connection route endpoints,
records both, and accepts only the matching endpoint movement. Other route
corners, geometry, topology, signature or configuration changes are refused.
Unconnected moved pins without independent endpoint evidence remain unsupported.
Pin anchors differ from connection points; assuming absolute equality was a
retained failed experiment, not a reason to weaken the geometry check.

Failures remain preserved: general-fixture01 assumed return pin display names;
fixture02 passed a native hierarchy GO where place: requires the API hierarchy;
fixture03 completed, but unconnected other-method pins cannot satisfy the current
layout proof. Primary01 refused undeclared native layout effects; primary02 failed
C# compilation because pins expose no public GetPosition; primary03 rejected
anchor/connection-point equality. Completed mutation studies restored all sampled
baselines; partial fixture01/02 components remain isolated evidence. No unknown
setter was replayed. Native apply/inverse uncertainty now prevents cleanup replay.

[Offline58](../analysis/bde-experiments/2026-10-02/bde-offline-contract-58/result.json)
passes Python330, Doge11 pass/6 live skips/814 assertions, and CLI version.
Skips are not live acceptance. Formal shared Class preparation/journal/idempotency,
full type/configuration fingerprints, conflict/unknown reconciliation, exact
inverse and native diff display remain required. Other root diagrams, moved
unconnected pin proof, return edits under the generalized fixture, runtime
scheduling/delivery and complete isolated AEB_Core eval are not certified.

## Historical: Class materialization, precise closure and caller query

Three native research rounds each now pass for
[stable parameter materialization](../analysis/bde-experiments/2026-10-02/bde-class-materialize-04/result.json),
[closed argument deletion](../analysis/bde-experiments/2026-10-02/bde-class-closed-delete-argument-04/result.json),
and [closed return deletion](../analysis/bde-experiments/2026-10-02/bde-class-closed-delete-return-04/result.json).
Each captures the definition and both Module owners, checks actual effects,
restores original graphical/signature objects, and ends without outstanding
records, dirty editors or source changes. Return deletion introduces three
stable but unassigned sequence calls; the gate requires an explicit research
policy to allow them. It does not certify runtime scheduling. These templates
still select the isolated flat calc/Signal fixture; Class signature edits are
not enabled in the formal six-tool journal by these results.

The new `bd_inspect(query="class_callers", component=<full Class path>)` is a
bounded live query, not a full caller graph capture. It reports signature,
direct persisted SGClass/SGModule declarations, occurrence scope/native IDs,
pin method/formal aliases and excluded non-caller references. It requires
clean editors, checks the actual listener epoch/native database token and
samples signature/bindings twice. Unstored/duplicate identities and aliases
outside the observed signature are refused. Returned evidence is read-only;
an agent obtains supported edit refs with a subsequent exact structure scope.

[impact03](../analysis/bde-experiments/2026-10-02/bde-class-impact-03/result.json)
passes three actual Doge Tool.call rounds with full 2048-byte pagination,
signature/reference oracle, two owners/three occurrences/six pins and Module
target refusal. Each body is 6079 bytes over five pages. Native query median
185 ms; complete page delivery median 1344.005 ms; 35 request frames and
34699 response bytes per live observation. Cursor frames are zero. Three
samples do not establish P95, and this is not equivalent coverage to full
component semantic read. Impact01 preserves ASCET_BUSY before any frame;
impact02 preserves a case-sensitive database-path test failure after a
successful native read. The corrected oracle uses Windows path case equality.

Further native failures remain available: materialize01's Dictionary
shallowCopy shared associations corrupted its saved registry; explicit per-key
copy fixes it. Read-only diagnosis and complete baseline reconciliation are
separate artifacts. Argument01 failed before a setter because the template
directly used four arguments; outer binding plus three-argument inner calls
fixes it. Argument03 correctly restored but its initial precision oracle omitted
the removed formal model row. Return01 retained a nil sequence ID; explicit
reload/second store stabilizes it. Return02 failed the then-default unassigned
sequence policy. Materialize03 refused two ASCET processes before any frame;
return03 refused an externally changed epoch. Fixture-reload01 independently
verifies the new process baseline with zero setters; it is not cross-restart
inverse proof. No unknown setter was replayed.

## 2026-10-02 Nested Class creation, connections and rollback

`create_block(kind="component", definition=<existing Class path>)` now uses
the audited hierarchy placement path in the ordinary sandbox structural
profile. This extends instance creation, not shared Class signature mutation.
[hierarchy-class03](../analysis/bde-experiments/2026-10-02/bde-hierarchy-class-03/result.json)
passes three actual Doge rounds in each of Main/h12 and Main/h12/h5, six cases:
create Class/literal/sink, connect both signals, reject inverse while connected,
delete the exact Class occurrence and two incident edges, read its automatic
journal diff with zero Cebra frames, restore the original occurrence/edges,
then revert every creation. Native scope observations, independent public tree,
model declarations and Class caller baselines all restore. Parent/sibling graph
projections remain equal. Outstanding records and source changes are empty.
Runtime execution/scheduling and full native visual lifecycle remain unverified.

Attempt01 preserves a real write-after-read failure. Literal placement was
stored, but the shared-interface guard compared API enumeration order.
[diagnostic](../analysis/bde-experiments/2026-10-02/bde-hierarchy-class-01-diagnostic/result.json)
proves retained/current scope-node-pin bindings equal as a multiset and different
only in enumeration order. The guard now compares canonical identity order;
pin identity/name/direction equality is retained. The failed request remained
unknown and quarantined; no setter was resent.

[recovery05](../analysis/bde-experiments/2026-10-02/bde-hierarchy-class-01-recovery05/result.json)
is a separate fixed-fixture, same-process recovery. It verifies retained/fresh
pin bindings and all six original edge refs, rebinds only the tool's identity
registry, verifies actual literal-only effects and independent tree, then
completes the native recovery record. Formal query=recovery/reconcile=true
persists the actual diff before removing quarantine; normal inverses restore
both patches and complete baselines. Reconciliation uses zero model setters
and zero apply replay. It is not general partial-transaction or cross-restart
recovery. Prior build/syntax/Bag-comparison refusals remain preserved.

Attempt02 was interrupted by another task launching ASCET instances. Two
confirmed edge inverses completed before the single-process guard refused.
[cleanup02](../analysis/bde-experiments/2026-10-02/bde-hierarchy-class-02-cleanup02/result.json)
restores the remaining three confirmed patches and complete baselines. Structural
read/session profiles now support explicitly selected ASCET_BD_ENDPOINT_PORT;
Windows IPv4 listener PID/epoch determine identity, with native database/component
checks retained. Unconfigured defaults remain conservative. Known counting
proxies explicitly bind upstream32503. Class03 also rejects a foreign Python
listener before any Cebra frame. All live access remains serialized; this is
not concurrency proof or a new host implementation.

[study10](../analysis/bde-experiments/2026-10-02/bde-class-interface-study-10/result.json)
passes the targeted one-round changed-signature regression: three genuinely
changed/unstored pin sets remain refused and all Class/caller baselines restore.
This one round does not replace the overall three-round Class interface gate.
[offline57](../analysis/bde-experiments/2026-10-02/bde-offline-contract-57/result.json)
passes Python311, Doge11pass/6skip/804assertions and CLI version. Whole BDE/FLOW
acceptance, formal Class interface journal/revert, shared cross-owner types,
reload/fault coverage and all-scope visuals remain incomplete.

## Historical: Class propagation and stale-read fix

The completed isolated fixture has one Class with calc/Signal -> calc/return,
two Modules and three Class occurrences, each wired literal -> Class -> sink.
[fixture03](../analysis/bde-experiments/2026-10-02/bde-class-fixture-03/result.json)
resumes fixture02 only after its known Class/signature/node identities and empty
edge set were independently verified. Business originals were not written.

The old fixture01 timeout is retained. Internal EtasAPIDiagram>>storeToCache
returns the diagram on success; checking it against true raised an uncaught
native error AFTER successful placement. The blocked instance required an
authorized restart after preserving database files, crash log and checkpoint.
An independent after-restart read confirmed the actual partial state. The file
copy is recovery material, not a certified coherent database backup. New fixed
templates catch exceptions; construction stage/checkpoint and timeout metrics
are now recorded separately for each primitive mutation/store. Fixture02's
foreign-wrapper endpoint rejection is retained separately from fixture03.

[study02](../analysis/bde-experiments/2026-10-02/bde-class-interface-study-02/result.json)
demonstrates a correctness defect: adding a Class argument yields 12/6 current
public caller pins, while retained wrappers and the structural reader still
report 10/5 pins. New pins have nil native identifiers. The caller graphics
source stays unchanged, so source equality alone cannot validate the cache.

The production structural reader now checks current recursive pin identities,
names and directions against its retained graph (depth16/nodes8192/pins16384
bounds). Changed interfaces invalidate its source checkpoint and return a clear
refusal. Unstored pins are rejected before any pnil reference is published.
The tool returns INTERFACE_REFRESH_REQUIRED and retains raw diagnostics; read
does not perform an implicit store. This is a pin-shape consistency guard, not
a complete signature/type/configuration fingerprint or atomic database snapshot.
It adds bounded in-process traversal; no new 1s performance claim is made.

Current-source controlled studies pass three rounds each:

| Study | Mutation | Verified | Production gate |
|---|---|---|---|
| [07](../analysis/bde-experiments/2026-10-02/bde-class-interface-study-07/result.json) | Add argument | Three current caller pins observed; stale/unstored read refused; native signature identity and public baseline restored | Caller pin materialization/edit integration pending |
| [08](../analysis/bde-experiments/2026-10-02/bde-class-interface-study-08/result.json) | Delete argument | Alias/order oracle and guarded inverse; original signature/body/caller public baselines restored | Failed: declaration-only deletion leaves unresolved connected endpoints |
| [09](../analysis/bde-experiments/2026-10-02/bde-class-interface-study-09/result.json) | Delete return | Alias/order oracle and guarded inverse; original signature/body/caller public baselines restored | Failed: declaration-only deletion leaves invalid occurrences |

All nine controlled runs finish without outstanding native study records,
dirty editors, proxy errors or source changes during execution. Public graph
equality verifies sampled fields/IDs; it does not establish original graphical
object identity restoration across reloads. These are native research actions,
not newly enabled bd_edit operations. The failure in study01 and separate
record cleanup, plus study04's null endpoint oracle failure and independent
baseline check, remain available. Neither is counted as a successful edit.

The focused offline tests verify error mapping and that rejected captures never
publish a snapshot. [ports09](../analysis/bde-experiments/2026-10-02/bde-hierarchy-ports-09/result.json)
passes a current-reader one-round / 14-case hierarchy create/delete/conflict and
real reply-loss/inverse regression, with complete native/public/model restoration,
no outstanding edits and no source changes during execution. This targeted
regression does not replace the complete three-round acceptance policy.
[offline56](../analysis/bde-experiments/2026-10-02/bde-offline-contract-56/result.json)
passes Python294, Doge11pass/6skip/798assertions and CLI version. No experiment
or check remains running. Final completion is not claimed. Remaining Class
work includes actual multi-owner effects, stable caller pins, incident closure,
exact graphical inverse, conflict/fault reconciliation and original BDE display.

## Historical: Dependent declarations and hierarchy interfaces

Enum02 passes three rounds / 12 cases with actual definition OID/path resolution,
dependent enum/message creation and connection, external same-owner declaration
conflicts, and controlled reply loss after real apply/inverse completion. Models02
passes three rounds / nine cases for distribution-to-group-table dependencies and
repeated graphical occurrences, including grouped-table/occurrence reply loss.
Native/public/model baselines restore; outstanding and source changes are empty.
These cover isolated owners, not cross-owner shared types or full AEB_Core eval.

Evidence: [enum02](../analysis/bde-experiments/2026-10-02/bde-construction-enum-02/result.json),
[models02](../analysis/bde-experiments/2026-10-02/bde-construction-models-02/result.json),
[offline53](../analysis/bde-experiments/2026-10-02/bde-offline-contract-53/result.json).

Existing hierarchy create/delete port operations are under online validation.
Actual effects include descendant boundary contexts as well as direct child
topology/layout. Port probe02 passes both scopes with zero model setters.
Ports02 preserves its external/internal API return assumption failure before
StoreToCache; exact private cleanup separately verifies all published fields,
edge multisets, public scopes and declarations. Old runtime refs expire; cleanup
does not establish a general unknown-operation recovery capability. Ports03
retains its missed descendant-context audit and complete normal restoration.
Ports04-06 preserve their bounded-busy, harness-decoding and receipt failures,
with separate complete restoration. Ports07 passes its one-round / 14-case
pilot on Main and Main/h12: input/output create/delete, child conflict refusal,
real apply/inverse reply-loss reconciliation without setter replay, actual
parent/child/descendant scope effects and full native/public/model restoration.
Outstanding records and source changes are empty. Ports08 then passes three
rounds / 42 cases on the same two nested sandbox scopes, with complete baseline
restoration and no outstanding records or source changes during the live run.
Class interfaces, interface screenshots/lifecycle, reload and runtime delivery
remain open. Subsequent capability/description text updates report these bounded
results; they do not extend the live experiment's coverage.

Evidence: [probe02](../analysis/bde-experiments/2026-10-02/bde-hierarchy-port-probe-02/result.json),
[ports02 failure](../analysis/bde-experiments/2026-10-02/bde-hierarchy-ports-02/result.json),
[separate cleanup](../analysis/bde-experiments/2026-10-02/bde-hierarchy-ports-02/unstored-abort.json),
[ports03](../analysis/bde-experiments/2026-10-02/bde-hierarchy-ports-03/result.json),
[ports07 pilot](../analysis/bde-experiments/2026-10-02/bde-hierarchy-ports-07/result.json),
[ports08 three rounds](../analysis/bde-experiments/2026-10-02/bde-hierarchy-ports-08/result.json).

After the capability/description updates, offline55 passes 291 Python tests,
11 Doge tests with six live/history skips and 798 assertions, and CLI version.
This is contract evidence only. No live experiment or offline check remains
running. [Reproduction and limits](../analysis/bde-experiments/2026-10-02/bde-hierarchy-ports-08/README.md),
[offline55](../analysis/bde-experiments/2026-10-02/bde-offline-contract-55/result.json).

## Historical: Scope recovery and shape construction acceptance

Scope03 passes three rounds / nine cases, including real apply/inverse reply loss,
zero-setter reconciliation, immutable actual child snapshots without extra capture
and parent/child native presentation. Complete native/public/model baselines
restore; outstanding records and source changes are empty. This does not certify
child screenshot lifecycle.

Shapes01 pilot and shapes02 three rounds pass the 13 supported typed/shape/control
and existing definition creations. Public/native type, definition OID/path,
configuration OID, scalar/shape values, size/max_size, table axes and interpolation
fields match; actual cumulative patches, replay, diff, native show/clear and inverse
all pass. Baselines restore without source changes or outstanding edits. These
experiments use an isolated Module; they do not certify every AEB_Core combination.

Evidence: [scope03](../analysis/bde-experiments/2026-10-02/bde-construction-scope-03/result.json),
[shapes02](../analysis/bde-experiments/2026-10-02/bde-construction-shapes-02/result.json).

Created enum dependencies are implemented with verified library-effect OID/path,
same-owner constraints and external declaration guards. Online pilot enum01 is
running; no acceptance is claimed yet. Offline51 preserves two missing test
imports and an outdated unsupported-schema expectation; offline52 passes all
284 Python tests, 11 Doge tests (six live skips), 793 assertions and CLI version.

## Historical: Child scope effects and recovery increment

Interfaces03 passes three rounds / six cases: typed creations and new Main
hierarchy ports. Exact native boundary pairs form the five-segment static path;
later child wiring refuses the whole parent group inverse before any setter.
Normal reverse restoration matches native/public/model baselines.

New scope effects persist actual child observations separately from parent
differences. Child graphical diffs exclude component declaration rows, which
are observations rather than child-created definitions. Immutable child snapshots
are published directly from the native creation after observation, with zero
additional capture. Parent and child canvases are registered separately for diff
show/clear. Unknown reconciliation requires both matching parent and actual child
terminal/current evidence; inverse additionally requires observed child absence.

Scope01 passes normal creation/child snapshot wiring/actual patch audit and
native two-canvas show/clear, then fails its real lost-creation-reply case because
the status probe compared a freshly loaded graphic object with the retained
object. Scope01-late-cleanup confirms normal zero-setter reconciliation and
complete restoration after correcting the probe to use the protected retained
diagram. The failed original record remains unchanged. Scope02 is running;
apply/inverse reply loss and child visuals are not yet accepted.

Offline47 retains the old hierarchy fixture missing child evidence failure.
Offline48 passes after its paired child fixture update; offline49 passes 278
Python tests, Doge 11pass/6skip/787assertions and CLI version. Fixture assertions
are not online evidence.

Evidence: [interfaces03](../analysis/bde-experiments/2026-10-02/bde-construction-interfaces-03/result.json),
[scope01](../analysis/bde-experiments/2026-10-02/bde-construction-scope-01/result.json),
[separate cleanup](../analysis/bde-experiments/2026-10-02/bde-construction-scope-01-late-cleanup/result.json),
[offline49](../analysis/bde-experiments/2026-10-02/bde-offline-contract-49/result.json).

Existing Class/hierarchy interface edits/deletion, dependent shared type groups,
all-scope visual lifecycle, database/graph reload and full native fault/eval
remain required. No complete FLOW/G0-G7/L0-L3 or runtime delivery claim.

## 2026-10-02 Construction and Main visual lifecycle results

Construction04 passes three rounds / 21 cases: fanout, two Modules, two nested
scopes, same-owner declarations, actual unique cross-Module message binding/path,
ambiguous generated pin refusal and controlled lost-creation-reply recovery.
Full native/public/model observations match cumulative actual patches and restore;
outstanding records and source changes are empty. Planning, replay and patch
queries use zero frames; unknown reconciliation executes zero setters.

Construction-visual01 passes three rounds / 12 strict gates with persisted PNGs:
100%/150%, real scroll away/return, close/native callback absence, explicit re-show
on a new window, and clear/no visible overlay remnants. Added nodes and two
fanout edges have bounds and non-color + labels; collision spacing separates the
two edge labels. Undo/full observations remain unchanged by show/clear; normal
inverse restores all baselines. This is Main fanout addition evidence, not full
FLOW-UI acceptance for all edits and scopes.

Evidence: [construction04](../analysis/bde-experiments/2026-10-02/bde-construction-04/result.json),
[visual01](../analysis/bde-experiments/2026-10-02/bde-construction-visual-01/result.json).
Construction04 fresh scope reads span 576.78..605.06ms / 24..32 real frames.
Its mixed group edits reach 10274.54ms / 1412 frames and group inverse reaches
6810.71ms / 939 frames. These ranges include fresh tool processes, proxy lifecycle
and pagination, include preview/replay/fault calls, and are not per-kind P95 or a
one-second multi-step guarantee. The existing full-read benchmark is unchanged.

Offline44 passes Python267/Doge11pass6skip786assertions/version. Offline45 failures
are preserved: collision spacing changed text line coordinates and new hierarchy
construction changed a prior unsupported-schema assertion. Offline46 passes all
checks after contract updates, before the latest native child guard addition.
Construction-interfaces03 completed three rounds / six typed and hierarchy cases;
existing interface edits/shared construction/full eval remain required.

## 2026-10-02 Class body, display ownership and construction

Class-body04 passes three rounds of exact direct-parent occurrence/formal/body
joins and 54 bidirectional cached path queries. The relationship is AEB_axControl
-> AEB_dFxTar; AEB_Core is not its direct parent. Queries send zero frames,
business setters are zero and source changes are empty. The public wrapper's
native method alias must be read from its underlying method object rather than
its encoded wrapper alias. Formal flags, every Class shape, argument-to-return
behavior and interface edits remain unverified.

Presentation-owner02 passes three rounds/six single/grouped cases. Old clear
rejects with PRESENTATION_OWNER_MISMATCH, retaining the newer token, Undo and
complete observations. Edits subsequently clear/revert normally and baselines
restore. Owner01 retained a real bridge error-propagation failure; native
protection was effective and cleanup restored its edits.

Construction steps use actual generated node/pin identities without per-step
agent reads. Same-owner declarations propagate across scopes; inverse checks
contents-manager identity, exact order/references and virtual actual patches.
Construction01/02 failures and independent normal late-cleanup restoration are
retained. Construction03 native/display/cross-Module channel pilot is running.
[Calls and limits](bde-construction-tools.md). Full eval/visual acceptance remains.

Offline43 passed Python264, Doge11 pass/6 live-history skips/786 assertions and
CLI version before the latest propagation/recovery fixes. Focused dependency and
recovery tests pass after those fixes; final verification follows the live run.
The thousand-node performance experiment was not repeated.

## 2026-10-02 Existing-pin dependent connection plans

Implemented offline immutable `flow_plan` and typed `connect_path` in the existing
six Doge tools. Connection-only groups allow repeated roots/scopes and fan-out;
each resolved intent uses verified actual prior edge patches and updated native
scope counts. All resources preflight before writes. Native owner/root/ancestor,
created-edge and endpoint object identity guards plus virtual reverse patch
accounting preflight the whole inverse before any restoration. Actual per-step
inverse guards are retained. No atomic transaction or create-then-connect support
is implied. Usage: [connection plans](bde-connection-path-tools.md).

Path01 preserves a real scope-count prediction failure. Path01-late-cleanup
independently confirms normal inverse and full graph/public/model restoration;
the original failed result is unchanged. Path02 passes one round of same-source
fan-out, two-Module segments, two same-root hierarchy scopes, occupied final
input rejection and controlled reply loss after the second real native apply.
Replay/diff/planning send zero frames; reconciliation performs zero setters and
never continues later steps. Every actual cumulative patch matches complete
native and independent public projections. Path03 adds coalesced and scoped
group native show/clear with restoration. Both have no outstanding changes or
source changes; neither is full three-round or visual lifecycle acceptance.

Path03 fresh scope reads took 579.55..603.77ms/24 real frames. Group operation
times scale with step count: its mixed edit requests reached 4392.68ms and
native display requests reached 4527.17ms. These are pilot ranges including
fresh Bun/Python processes, pagination and proxy lifecycle, not P95 or a group
one-second promise. Existing independent full-read performance evidence remains
unchanged; no thousand-node benchmark was repeated.

Offline-contract41 passes Python255 tests, Doge11 pass/6 live-history skips,
780 assertions and CLI version. Path04 completed three rounds/12 cases with full
restoration and no outstanding or source changes. Display ownership and Class
evidence are recorded above. Full FLOW/G0-G7/L0-L3 remains ungranted.

The preceding hierarchy-visual03 and project-channel06 runs completed with full
baseline restoration and no outstanding records. Visual03 has one-round actual
non-color added marker and secondary delete/reopen/clear evidence. Channel06
passes three rounds/21 unique/reverse/duplex/ambiguous/wrong-type/unresolved/
repeated-instance cases. Static paths do not prove runtime delivery, Class
interface creation, or complete original-editor visual coverage.

## 2026-10-02 Shared enum recovery and child geometry/visual evidence

Shared-enum recovery03 passes nine live cases across three isolated components,
including real apply and inverse completion followed by controlled adapter reply
loss. Reconciliation checks retained graph and library terminal evidence against
current type identity, ordered items and references. Actual library effects are
persisted with the recovered receipt. Replay, historical diff and repeated
recovery send zero frames; 18 native mutations equal nine apply/inverse pairs.
Full public graph trees, model fields and enum presence return to baseline;
outstanding and source changes are empty. This is adapter fault injection, not
OS crash, partial native execution, library change during quarantine or restart.
Recovery01 failed on an experiment comparison that omitted qualified_ref;
cleanup restored it. Recovery02 is the passing pilot. Raw failures are retained.

Child geometry02 passes three rounds over two levels, with 24 text/geometry/route
edits and inverse restoration. Visual02 records 36 gates covering show/clear,
100%/150% zoom, scroll round trips, close/native-status-absent/reopen and full
restoration. Actual added green frames and deleted red frames/old text were
observed. Each of the six create-shown gates still excludes the non-color added
marker. The legacy harness's visual_verified=true checks gate status alone;
it must not be interpreted as complete visual or G6/FLOW-UI acceptance.

Offline40 passes 232 Python tests, 11 Doge tests with six live skips/767 assertions
and CLI version. Evidence: `analysis/bde-experiments/2026-10-02/`
`bde-shared-enum-recovery-01/02/03`, `bde-hierarchy-geometry-02`,
`bde-hierarchy-visual-02`, and `offline-contract-40`. Complete tools remain
unfinished; cross-Module dependent construction, Class interfaces, reload
identity, complete visuals and fault gates still require implementation/evidence.

## 2026-10-02 Message roles, group recovery and candidate audit

Message creation03 passes three rounds / 36 cases, including native default
roles, explicit local/imported/exported scopes and existing enum declarations.
Creation, typed pin connection, occurrence deletion and inverse produce actual
patches and return native/public common projections/model fields to baseline.
Stale read and connected-creation inverse previews reject without setters.
Diff/replay send zero frames; no outstanding edits or source changes remain.
See [message usage](bde-message-tools.md).

Group recovery01 passes three controlled reply-loss cycles on three isolated
resources. The second native apply completes before the adapter drops its reply;
reconciliation never calls a model setter or dispatches the third step. Durable
local patches become a recoverable partial group, and reverse compensation
restores all observations. Replay/repeat recovery/diff send zero frames. This
is adapter-boundary failure injection, not network truncation or host crash.
Inverse reconciliation now verifies original-before equality, records mismatch
honestly and retains recovery material when verification fails. Shared enum
reconciliation now has native library evidence and passing controlled live
apply/inverse reply-loss experiments, as described above. Shared definition
creation within a resource group still requires dependency-aware recovery.
See [group usage](bde-multi-resource-tools.md).

Project candidates03 passes three independent Module enumeration audits: 128
declarations and 61 imported candidate sets match the production export lookup.
Public declarations, database token and dirty state also agree. Each verifier
run takes about 38 seconds / 25740 frames because it includes full public
before/after reads. These are oracle costs, not production tool latency or a
performance regression. The shared compatibility predicate is not independent;
non-message candidates, ambiguity fixtures and runtime transfer remain unverified.
Candidates01 DLL-load failure had zero native frames and is retained; candidates02
is the successful pilot after placing the DLL beside its isolated binaries.

Offline38 passes Python226, Doge11 with six live skips/767 assertions, and CLI
version. Offline39 additionally covers child text/layout scope contracts and
passes. Complete FLOW/G0-G7/L0-L3 acceptance remains uncertified.

Evidence is under `analysis/bde-experiments/2026-10-02/`: message-creation03,
group-recovery01, project-candidates01/02/03, offline-contract38/39. Business
originals remain read-only; all confirmed write experiments have restored their
isolated baselines. Child geometry02 has completed successfully; its narrower
scope and visual limitations are described above.

## 2026-10-02 Project paths and independent resource groups

Implemented and verified additions are described in [multi-resource usage](bde-multi-resource-tools.md).
Project04 captures 6 Modules, 128 declarations, 61 bindings and 122 bounded
instances in three real Doge runs. Public common fields agree; full delivery is
about 4.6 seconds, 32 actual frames and 174558 bytes. This does not meet 1 second.
Module05 independently verifies the database object token and interface fields.
The token's database close/reopen and graph reload lifecycle remains unverified.

Project-path01 verifies AEB5ms -> AEBdFxTarLoc -> AEBPost5ms through two diagram
edges and a selected message binding, with fresh public common projections.
Three real Doge cached queries send zero frames and deliver 14387 bytes in two
pages, about 600ms including process startup. No Class-body or runtime transfer
is inferred. Independent candidate-completeness and ambiguity fixtures remain.

Inverse-preflight02 verifies native preview without consuming recovery material,
subsequent move conflict and restoration, for three literal samples. Group01/02
each verify three two-resource edit/diff/replay/preview/conflict/inverse cycles.
Public full trees and declarations return to baseline, outstanding=[], source
changes=[]. Group02 additionally calls six resource show/clear pairs; native call
success does not certify actual visuals, zoom, scroll or window lifecycle.
Offline group fault tests cover unknown outcome, journal failure and partial
restoration. Live group fault injection, dependent/shared resource restoration,
complete channels and connect_path are not implemented or accepted yet.

Evidence is preserved under `analysis/bde-experiments/2026-10-01/` (project04,
module05, project-path01, revert-preflight02) and `2026-10-02/` (group01/02,
offline-contract35). Earlier failed project03/module04/preflight01 are retained.
Offline35 passes Python212 and Doge11 with six live skips/760 assertions; CLI
version passes. Later group pagination tests pass four cases and group02 passes
online. Complete FLOW/G0-G7/L0-L3 acceptance remains uncertified.

ASCET32868 opened AEB_1 after declining its startup Rebuild prompt. No Rebuild
or Optimize was requested. Recovery materials are in identity-recovery01; a disk
copy and shared-read hashes do not establish an atomic or in-memory backup.

## 2026-10-01 子图视觉验收部分证据

[visual01](../analysis/bde-experiments/2026-10-01/bde-hierarchy-visual-01/result.json) 已结束：一级子图 100% 下实际看到绿色新增框、红色删除框及旧值文字，create clear 后无残影。对应 png 和 gate 保留在实验目录。缩放操作连续遇到窗口边界变化及最小化，最终 shown gate 为 not_verified，实验 passed=false；缩放/滚动/二级子图/关闭重开未完成。harness 清除叠加并正常 inverse，baseline_restored=true、outstanding=[]，未发生业务写入。部分可见证据不授予完整 FLOW-UI/G6。

## 2026-10-01 原 BDE 子图 actual diff 展示

`bd_diff(change_id,presentation=show|clear)` 已接入精确子图路由。层级来自journal；show先按相同scope核对实际after，再按UI每层ID/父对象/唯一性解析画布，调用`updateWithHierarchyGO:`。UI hierarchy与编辑API hierarchy在线确认不是同一实例；没有按同名Stage搜索，也没有将编辑API对象当UI对象。回调仅在捕获的原生hierarchy仍为当前画布时绘制，跨scope自动暂停；错误scope的clear拒绝。模型修改和展示回执保持分离。

[presentation03摘要](../analysis/bde-experiments/2026-10-01/bde-hierarchy-presentation-03/summary.json)：三轮9cases、Main/一级/二级子图各创建和删除literal；18成功edit、18成功inverse、18对show/clear、54次原生画布切换回调检查。9个旧patch显示和12个错误scope清除请求拒绝。65份完整公共图树/声明观察核对展示前后及最终基线，全部恢复，无outstanding或运行期间源码变更。Undo实际为一个entry，检查stream/entry/parent身份、position/size及已审计stored graph内容。独立observer的读取不计作免费读取。

离线[offline34](../analysis/bde-experiments/2026-10-01/offline-contract-34/result.json)：Python180、Doge11pass/6live skip/744断言、CLI version通过。收尾只有ASCET13536、pending JSON=0。本轮没有业务写入、重启或千节点复测。

保留失败：overlay-guard01的研究探针再次调用Edit刷新了UI对象/Undo，随后clear报告Undo变化；公共图与声明未变，回调已移除，guard02复用原pane后三轮通过并确认absent。presentation01因Smalltalk禁止给block参数赋值而编译失败；唯一新literal随后通过正常revert和独立全图/声明核对恢复，见[late-cleanup](../analysis/bde-experiments/2026-10-01/bde-hierarchy-presentation-01/late-cleanup.json)。02为pilot，03为最终带负例的版本。完整源码审计、限制和命令见[本轮记录](../analysis/bde-experiments/2026-10-01/bde-hierarchy-presentation-research-01/README.md)。

这是原生路由/绘制回调证据，没有实际画面、缩放滚动或窗口关闭重开验收；返回仍是`native_call_succeeded_visual_unverified`。只覆盖literal创建/删除和固定两级夹具，不推广到所有模型字段、glyph或连线。子图接口编辑、其余创建/精确几何文字编辑、跨Module/Class Project通路/group日志和完整FLOW/G0-G7/L0-L3仍未完成。

## 2026-10-01 上一阶段：子图节点创建、删除及跨层回退保护

子图10类create_block和普通delete_node已接入正式六工具：literal/comment/operator、variable/parameter/constant、receive/send/send_receive message、enumeration。创建使用完整选定scope快照及精确placementHierarchy；删除包含incident边，保留声明。边界pin/容器删除在Python/native双层拒绝。创建声明的逆向按原生model身份检查整棵hierarchy中的其他occurrence；父hierarchy逆向检查创建后child检查点，避免丢失后续子图改动。

最终[nodes03摘要](../analysis/bde-experiments/2026-10-01/bde-hierarchy-nodes-03/summary.json)：三轮72 cases全部通过，162成功edit、162成功inverse；128工具拒绝/冲突及2个直接native边界拒绝。60次离线diff为0请求帧；全部324个edit/inverse回执提供actual after_snapshot，额外ASCET reads=0。[完整公共审计](../analysis/bde-experiments/2026-10-01/bde-hierarchy-nodes-03/full-public-audit.json)核对359份完整图树/声明观察与324个累计实际patch（含inverse）一致，保留multiplicity。baseline/public/declarations_restored=true、outstanding=[]、source_changes_during_run=[]。

失败证据保留：nodes02在35 cases后oracle和即时cleanup被ASCET_BUSY拒绝；唯一遗留comment随后经正常bd_revert及独立全图/声明核对恢复，见[late-cleanup](../analysis/bde-experiments/2026-10-01/bde-hierarchy-nodes-02/late-cleanup.json)。研究harness仅对明确未派发的ASCET_BUSY拒绝以相同request_id有界等待，unknown不重发；最终轮一次read等待2秒。offline33通过Python179、Doge11pass/6live skip/744断言及CLI version。收尾仅ASCET PID13536，无实验进程、pending JSON=0；无业务写入、重启或千节点复测。

这些是同一隔离夹具的功能样例，不是P95或任意组件1秒承诺。消息只验证默认cont声明；未验证跨Module通道或enum消息。public审计不独立证明raw native身份/顺序、variable/parameter标志、message角色、删除后整个库、Undo/视觉、重载及运行传输。仍需子图其他创建类型/接口/几何文字编辑/原BDE显示、Project实例绑定和跨Module/Class group编辑/回退。完整FLOW/G0–G7/L0–L3未通过。复现与源审计见[本轮记录](../analysis/bde-experiments/2026-10-01/bde-hierarchy-nodes-research-01/README.md)。

## 2026-10-01 上一阶段：精确 hierarchy 连线编辑

已接入 Doge 六工具：`bd_read(view=structure,scope={diagram:"Main/h12/h5"})`、同 scope connect/disconnect/rewire、自动实际 patch、带 scope 的零在线 `bd_diff` 和精确 inverse。根图统一 generation/深层 source checkpoint；每级原生 hierarchy 对象、双向外内 connector 及 child membership 均立即核对。成功 edit 的 after_snapshot 可接续局部编辑，不再全量 read，不填入旧图行。用法见 [hierarchy 编辑](bde-hierarchy-edit-usage.md)。

`bde-hierarchy-edit-06` 三轮真实 Tool.call 通过：Main、outer、inner 共9条断开/重接/双逆向链，outer另3次换源/逆向；21个成功 edit、21个成功 inverse，36个preview拒绝、9个旧快照冲突、9个过早回退冲突、重复请求去重和9次离线diff。独立public完整图树逐阶段核对；局部观察须与完整native同范围选择全等，不能把局部patch直接拿去对全图。完整public审计覆盖53份观察、21个实际边patch及multiplicity，所有观察只出现基线或允许的单条patch状态。`baseline_restored=true`、`public_restored=true`、`outstanding=[]`、`source_changes_during_run=[]`。仅一份两级同名、一入一出夹具；最深层缺第二output，未验证该层不同source换源。

计时含新Bun/Python、全部分页与loopback代理生命周期，未含LLM：本轮scope read为554.63-607.02ms/24真实请求帧；21次成功edit为893.21-974.10ms/86帧；21次成功inverse为799.99-878.91ms/81帧；9次diff为399.82-402.07ms/0帧。三轮功能试验不是P95基准，不推广为任意组件/通路<1s。所有独立oracle额外读取与帧数单独保留，不能并入零额外read的生产回执。

修复了实际缓存问题：反编译`getConnectionType`取`startConnectionPoint.owner.manager.typeID`，StoreToCache保存根图并在另一图实例重建逻辑，保留图内connector可能仍为0，而新鲜图为2。reader按同source、精确scope/端点ID/完整route核对新鲜类型，保留重复边并拒绝类型歧义；没有固定0->2或省略type。01失败及恢复mismatch保留；`research-recovery-verification.json`独立确认原生完整基线、public全图及原before一致后，仅更新并释放失败恢复元数据，model_setters_called=0。`recovery-check-01`明确保存type差异，02为修复后的独立核对。05为实验错误地将Main局部观察对全图的失败，全部修改已恢复；06补全scope/public证据后通过。

`offline-contract-31`通过：Python176、Doge11pass/6live skip/744断言、CLI version。新增schema/read/引用scope隔离、boundary后置条件、实际after引用及qualified diff测试；不是完整在线/视觉gate。收尾仅ASCET PID13536，pending JSON=0，无重启、业务写入或千节点复测。

剩余任务：子图创建/节点删除和接口增删、最深层多source、多pin/多fixture身份与故障、各scope原BDE overlay；Project/database session/Module实例链、跨Module/Class通路编辑、group actual journal/先预检逆向仍待完成。接口快照仍全部只读，子图overlay写前拒绝。完整FLOW与旧G0-G7/L0-L3没有授予通过。源码、失败、完整观察和复现见 [本轮记录](../analysis/bde-experiments/2026-10-01/bde-hierarchy-edit-research-01/README.md)。

## 2026-10-01 上一阶段：接口与路径读取

**本轮新增已实现：** 单组件 `bd_read(view=interfaces)`、`bd_find(kind=interface/message)`、`bd_inspect(query=signal_path/interface_binding)` 已注册 Doge。固定临时 Smalltalk block 有界批读，配对依赖实际 native identity；快照、后续路径/字段/定位/观察diff/游标均离线，接口引用只读。新增用法见 [接口与路径](bde-signal-interfaces-usage.md)。Project/实例链、跨组件 connect_path/group journal/整条回退及各scope展示仍未实现。以下“尚未注册”段落为此前研究阶段的历史，不能覆盖此更新。

`bde-hierarchy-path-05` 三轮全部通过：隔离两级同名Stage、Signal/Result，共9nodes/13pins/6edges；4对边界逐项核对双向oppHierNode、manager/interface、child成员对象身份与控制夹具配方；返回9段实际路径（5条图内边+4次穿越），保留不在路径上的第6边。新鲜public-before/after共同图字段、全分页及12个负例也通过。查询和负例均零实际在线Cebra帧，dirty0->0、源码期间无变化。仅每层一入一出，完整FLOW-HIER/READ/ID及全工具gate没有授予通过。

| 真实Tool.call三轮场景 | 请求帧 | 交付正文 | 总耗时ms，含完整分页/代理 | 各Tool.call页耗时合计ms |
|---|---:|---:|---:|---:|
| 两级层级夹具 interfaces read | 24 | 2,989bytes | 751.07-769.22 | 615.20-636.89 |
| 同夹具signal_path | 0 | 1,780bytes | 600.93-601.29 | 401.73-416.01 |
| AEB_Core interfaces，core03 | 24 | 63,024bytes | 1838.32-1847.87 | 1763.23-1794.92 |
| AEB5ms interfaces，module03 | 24 | 47,227bytes | 1402.95-1427.15 | 1301.00-1336.64 |

计时每次新Bun/Python进程，不含LLM时间，代理有启动/停止耗时；公开独立oracle在计时之外另行保存。只有3轮，不是P95，也不声称Core/Module接口全交付已<1s。列式格式将同一文档字段的JSONL大小Core91,363->63,024、AEB5ms71,277->47,227，缺失/null/false区别保留；列图例解码后逐记录校验，未删目标节点、pin、边、多重性、formal或绑定。早期JSONL和新列式轮次不是随机交错性能实验，不能当独立因果证明。

Core03三轮公共共同投影与交付通过：7声明、50本地formal、5定义、61nodes/134pins/66edges，63 Class对应，13延期SM pin+1selector仍未解析。Module03为52声明、1定义、51nodes/101pins/50edges、50 Class对应+1selector，消息scope与角色独立检查。只证明所采集接口，方法正文、类型/shape/enum详情、注释/具体块内容、layout、Project绑定、数据库session/实例链和运行传输仍未验证。内部method/formal别名尚无完整独立public别名oracle。

新增失败/修复均保留：fixture01内部节点方向误用，连接未Store，后续独立读9/13/0；interfaces02四参数block运行入口不存在；path01刚创建API的4条type0在fresh读取变为type2，配方只要求端点，fresh全部type字段另与公开读核对，不过滤type冒充等价；path03schema错误回执键预期不一致；module-tools01组件路径错误，正确路径为Public/AEB5ms，未重启。最终带内部连线的`bde-hierarchy-structure-preflight-01`通过现有Main深层source checkpoint建立（probe145ms/24帧、dirty0->0），仍不是child编辑/逆向证明。

最终接口checks与所有edit路由的只读拒绝已补齐；`offline-contract-30` Python170、Doge11pass/6skip/736断言、CLI version全部通过。该最后增量为离线检查/路由测试，真实路径/读取证据绑定各自source_manifest版本。当前未进行本轮hierarchy视觉验收、业务写入、ASCET重启或千节点复测。复现、版本与下一步见 [本轮记录](../analysis/bde-experiments/2026-10-01/bde-hierarchy-research-01/README.md)；整体任务仍未完成。

跨组件信号通路目标已纳入 [新设计](bde-signal-flow-tools.md) 与 [14项FLOW eval](bde-signal-flow-eval.md)。保留六工具入口，新增interfaces/signal_path/connect_path属于目标合同；尚未注册Doge，也未实现跨组件编辑和整条通路回退。旧G0-G7/L0-L3未通过结论保持，状态机和宿主平台延期。

固定只读Project探针messages-02读取真实AEBiBooster_ECU_CSW_BB00001：6 Module实例、4所选message声明、2 imported绑定。全native label候选按isSameVarAs核对，每项有一个compatible definition exporter，公开API选择同一声明；公共modules/声明/lookup共同字段前后相等，dirty一致，源码期间无变化。候选全集没有独立遍历核对，实例链、task、Undo/callback及完整模型副作用仍未验证。模板避开mappingCache，并在public查询前拒绝会可能生成动态监控变量的experimental target；当前仅正向guard在线，拒绝分支未验收。

当前证据组合揭示具体局部链路：AEB5ms内AEB_light_class的CurrentStateAEB方法return（Main/n0.p73）经实际type4边送到CurrentStateAEB（Main/n268.p269 set/aValue），该声明为imported/send；Project原生解析到XPass的exported/receive声明。Class绑定使用method/formal双alias，不推断正文。TargetStateAEB为XPass exported/send -> AEB5ms imported/receive绑定，但AEB5ms Main未见该声明occurrence，不能报告完整图形通路或证明其他位置未使用。

最终接口候选已重验AEB_Core interfaces-09、AEB5ms module-02及XPass xpass-02；asw2asw-01源码指纹已是同版本。全部公共共同字段核对通过，业务原件只读。AEB_Core63个Class formal对应，另外13状态机pin明确延期，1个无数据参数selector；不是14个字段访问口。新增离线witnesses-02按原始图/声明生成可追溯记录，零在线采集；edge原生ID=-1时保留不可变record index作证据，不开放编辑。相同DB名称/epoch不证明数据库session身份，结果保留not_verified。

Project完整独立校验2718.859ms/1966真实请求帧，其中native单次查询10.7914ms是在compile和public-before之后的warm查询，不包含建连/清理、不构成单tool P95或任意跨组件<1s结论。23个针对性离线合同tests通过，不替代FLOW在线gate。完整复现、证据及缺口见 [本轮记录](../analysis/bde-experiments/2026-10-01/bde-signal-research-01/README.md)。下一步先完善instance/hierarchy语义，再接正式只读接口及隔离跨资源编辑、actual patch、冲突恢复和各scope原BDE显示。

新 Enum 库类型和 block 创建已通过 `bde-new-enum-05`：小图、AEB_Core隔离副本、Module各三轮，9/9 case。每轮含真实Doge Tool.call、独立native/public/model/库type path/OID/items顺序与初值核对、图形diff及库library_effects、preview不写/幂等/重名拒绝、跨组件引用导致回退写前conflict、移除后续引用后完整恢复。passed=true、baseline_restored=true、outstanding=[]、source_changes_during_run=[]。调用数bd_edit45/bd_revert27/bd_diff9/bd_read39（含分页），不是性能基准；本轮没有Enum视觉验收。接口用法见 [Enum创建与恢复](E:/Repo/ASCET/docs/bde-enum-tools.md)。

新类型由addComponent:ofType:与setEnumerationValues:创建，组件变量沿用addLibItem:forName:。修复实际OrderedCollection与请求Array直接比较误判；本次DBProxy后端引用用dbObject.readReferences.isReferencedBys，folder内部引用进入基线。DBXmlObject后端分支尚未在线验证。库效果在同次原生操作中读取，分别持久化创建before=null/after.items与回退before.items/after=null，不增加独立全量read。回退必须同时恢复图形及库实际效果。

`bde-new-enum-01` outcome_unknown和清理时回执解析失败原样保留；research-cleanup-verification-03独立验证库类型absent、完整声明与公开图形基线恢复，原children身份/顺序保持后才解除pending。连接wrapper临时ref从e1变为e4，研究核对保留所有其余字段和多重性，生产冲突检查不放宽。02/04为已恢复的pilot；03的preview因Character selector错误拒绝，setter_called=false。offline-contract-24新增夹具缺native_class失败已保留，修复后25通过Python135、Doge11pass/6skip/724断言与version。收尾只有ASCET PID13536，pending=0；完整G0-G7/L0-L3仍未通过，写入仍仅Trial_*，既有库类型枚举项修改/改名/任意共享删除未开放。

复现：`E:\PYTHON\python.exe scripts\bde_new_enum_experiment.py --output <NEW_OUTPUT> --repeats 3 --components 3`。输出目录必须不存在；程序保留请求、全分页正文、原生/公开/声明/类型对照、actual diff、逆向、源码和运行时指纹及失败材料。业务原件保持只读，下一步hierarchy、缺失sequence-call及剩余身份/故障验收，按用户要求停止重复千节点性能测量。

本轮保守账本：[bde-eval-ledger-enum-01](E:/Repo/ASCET/analysis/bde-experiments/2026-10-01/bde-eval-ledger-enum-01/report.json)，28项完整case仍未授予整体通过。旧ledger-06目录已存在，生成器拒绝覆盖；采用新目录保存本轮证据，没有改写旧账本。

深层Undo候选已通过`bde-deletion-undo-depth-lifecycle-02`：删除旧ref/class/name、节点/sequence边框及旧连线在原BDE可见，三轮关闭重开、100/150%、滚动/clear；Undo嵌套内容与流/entry身份/position/size均保持，独立public/native/model恢复。首轮窗口列表缓存旧handle的解释见同目录window-close-audit.json；完整UI gate仍未授予。

千节点display06 actual Tool.call show/clear各30次，P95=2011.664/1506.146ms，68/26真实请求帧，public_restored=true、outstanding=[]；最终clear视觉见final-clear-visual.json与display-final-cleared-native.jpg。05 show P95=2498.901ms，轮次没有随机交错，不做因果或全局最优声明。千节点read02 P95=970.586ms，move/revert02=940.858/843.611ms。用户确认千节点性能已足够，停止重复规模测量，继续功能验收。

最新AEB_dFxTar read04 fresh30完整交付、全字段等价、正文33978bytes、93帧，P95=865.576ms/max896.523ms；host启动单独记录。offline21 Python130、Doge11pass/6skip/716断言、version通过，不代替在线gate。所有证据位于analysis/bde-experiments/2026-10-01。

`bde-formula-edit-05` 三种公式各三轮，共9条表达式/绑定编辑恢复case已完成，真实Doge Tool.call、独立native/public/model/公式与formal/entry身份、实际diff/幂等/负例/回退及临时参数清理全部通过。baseline_restored=true、outstanding=[]、源码运行中未变；仅existing local/cont scalar dependent及已有默认绑定，一份fixture，不授予完整公式gate。

规模测试已开始：固定literal网格生成器10-04通过独立公开API节点数/类型/ID唯一/位置/值/pin方向核对；10-01空句柄、10-02错误selector、10-03错误枚举顺序假设三份失败保留。bde-scale-read-10-01完整fresh实际Tool.call30次，field getter原始全字段等价，P50=333.323ms/P95=355.928ms/max=358.416ms，35真实请求frames；无边literal图不代表全类型规模。100/1000及规模编辑/显示仍在推进。

`bde-deletion-label-lifecycle-02` 新模板三轮已完成：真实删除文字/旧节点与连线显示、100%/150%缩放、滚动、clear、关闭重开与destroy回调注销通过。最终passed=true、visual_verified=true、baseline_restored=true、outstanding=[]，运行期间源码无变化。每轮截图与gate可复查；Undo entry内容未深比较，原glyph与全类型/fixture仍缺证据，完整G6保持not_run。以下01失败及旧模板结果作为历史保留。

`bde-presentation-lifecycle-01` 标量diff实际关闭/重开三轮通过，每轮100%/150%、滚动往返及clear，destroy回调注销、独立public/native/model不变、Undo流/entry身份及position/size保持。最终baseline_restored=true、outstanding=[]、运行期间源码无变化；Undo entry内容未深比较。此证据绑定删除文字新增之前的模板。

现已增加删除节点的精确ref/类型/旧名称或literal/operator/comment文字残影，从实际patch生成，60字符折行、2048总长上限，使用经审计CgDrawable.drawString，C#验证有界ASCII命令。`offline-contract-16`：Python123通过、Doge11通过/6live skip/711断言、version通过。`bde-deletion-label-lifecycle-01`在首次视觉观察前由physical Escape停止Computer Use，shown gate标为user_stopped并触发清理；实验整体失败、视觉未验证，全部patch逆向及独立baseline恢复通过，outstanding=[]。当前新增文字不能宣称视觉通过；原glyph及完整UI-01/02仍未验收。收尾无实验进程，业务原件只读，自动化仍暂停。

复现当前新增文字时使用新目录：`E:\PYTHON\python.exe scripts\bde_model_presentation_experiment.py --output <NEW_OUTPUT> --scenario delete --lifecycle-cycles 3 --visual-hold 300`。每个gate必须实际观察后确认，未确认会失败并清理，不预造视觉证据。

新`set_table_axis`与`set_table_interpolation`：settings-04四类表×三数值类型×三轮36条小图完整链通过，ordinary轴固定长度且数值符合model_type，fixed轴拒绝；插值精确编辑声明并恢复原值（不将default副本当权威值）。每链含真实Tool.call、实际局部diff/去重/preview/负例/逆向冲突、完整public/bulk raw同覆盖与全基线恢复，源码未在运行中变化。插值会影响声明的所有配置，本次只核对默认配置；其余配置/外推/resize/group联动未验收。settings-01配置副本被还原，03离散轴取整，两次失败与独立恢复证据保留。model-only patch原BDE绘制尚不支持，现明确拒绝空图层。settings-aeb-01在AEB_Core隔离副本四类cont各三轮12链通过，逐阶段全Main native/public/model及最终基线恢复；未请求完整依赖read，sm枚举既有缺口仍保留。settings-module-01在Module四类cont各三轮12链已通过，并含完整public/bulk raw同覆盖和实际Tool.call全分页。共60条编辑/恢复链，三个fixture均版本绑定完整、运行中源码未变、outstanding=[]；只有小图覆盖三数值类型，不代表所有类型和配置已验收。

`bde-group-edit-rejection-02 --settings-only`：1D/2D group各三轮6 case通过，30次实际Tool.call preview/execute拒绝、15次direct native validate拒绝；native/public/model保持，创建逆向不受拒绝影响，最终baseline恢复。`offline-contract-13`：114 Python通过，Doge11pass/6live skip/711断言，`bun run version`成功，共享creation396/read78/write201案例。离线通过不替代在线或视觉验收。

收尾检查：仅ASCET PID18144，无Python/Bun实验宿主；本地pending目录JSON数量为0。本轮所有测试修改已恢复，业务原件只读。证据已补入[eval清单](bde-tools-eval-evidence.json)，[本轮账本](../analysis/bde-experiments/2026-10-01/bde-eval-ledger-04/report.md)仍明确完整G0–G7/L0–L3未通过。优先补AEB_Core依赖enum的只读解析、普通BDE模型字段绘制和视觉/窗口/Undo验收；公式绑定、层级、数据库身份/故障矩阵和1000节点仍待完成，状态机编辑延期。

以下命令用于复现，`<NEW_OUTPUT>`必须是新的目录；已经结束的实验无需重复执行。

```powershell
E:\PYTHON\python.exe scripts\bde_table_settings_experiment.py --output <NEW_OUTPUT> --repeats 3 --full-read-oracle
E:\PYTHON\python.exe scripts\bde_table_settings_experiment.py --output <NEW_OUTPUT> --component 'BDE_Tool_Experiments\Trial_AEB_Core_20260930_123955' --repeats 3 --model-types cont --test-display-rejection
E:\PYTHON\python.exe scripts\bde_table_settings_experiment.py --output <NEW_OUTPUT> --component 'BDE_Tool_Experiments\Trial_Messages_20260930_132738' --repeats 3 --model-types cont --full-read-oracle --test-display-rejection
E:\PYTHON\python.exe scripts\bde_group_edit_rejection.py --output <NEW_OUTPUT> --settings-only
E:\PYTHON\python.exe scripts\bde_eval_report.py --output <NEW_OUTPUT>
```

本次新增 distribution 默认值/尺寸编辑三类型各三轮；array/matrix/enum 和三类 message 的移动/删除完整链各三轮，通过实际 Doge Tool.call、逐阶段独立 public/native 和 baseline 恢复。resource/send/send_receive分配Module process后的九条完整链已通过；当前26类创建catalog03也已通过。完整 reader 已保留 Module process 列表/alias/GetCode，空 Module public/bulk三轮同覆盖及真实分页交付通过；非空process仍未验证。

`doge-session-read-perf30-03`：新增完整table字段后的AEB_dFxTar30次fresh完整采集，实际Tool.call及3页全部交付，正文33978 UTF-8 bytes、带envelope响应38438 bytes。P50 658.958ms、P95 672.241ms、max673.637ms，真实请求93frames/23474wire bytes；Bun宿主启动104.843ms单独记录，不含LLM时间。56nodes/120pins/60edges、7definitions/21methods、19dependent parameters/24bindings全部raw字段相等，无unresolved，30次全部小于1秒。该结果绑定其source_manifest，不推广为全部组件1秒。旧session02的P95 651.601ms属于扩展字段前版本。

`bde-enum-distribution-full-01`：小图enum/distribution各三轮创建、完整public/bulk同覆盖、actual Tool.call全分页、diff/逆向/baseline恢复通过。distribution请求200→37frames，enum213→37frames；nativeprobe约237–247ms→161–175ms，是小图而非AEB_Core。

`bde-module-block-full-01`：三类message各三轮full读通过，resource的默认配置错误句柄在bulk中误当data wrapper导致失败；整体不改为成功，全部创建已回退。修复后 `bde-resource-full-02` resource三轮完整public/bulk同覆盖、Tool.call全分页、baseline恢复通过。

`bde-table-config-audit-01`：1D/2D普通/fixed四类的原生配置结构已审计，原始表配置由RB*CharTable及独立values/distributions/interpolation/extrapolation组成。`set_table_values`已接入固定尺寸数值表值修改与保留原value对象的局部逆向。01四类cont首轮完整读/编辑/逆向通过；02前三数值类型1D九轮通过后，logical table factory出现False>>isEmpty，结果unknown。`research-cleanup.json`单独证明只移除本次失败声明、公开/原生/声明baseline恢复，再释放隔离标记；原失败和journal保留。logical table creation已在Python/Zod/native prepare拒绝。table-values-03默认尺寸36链通过；table-grid-03四类表×三数值类型×三轮共36条多格链通过，1D三格/2D非方阵2x3每格不同值，完整raw含尺寸/插值/外推flags、真实Tool.call交付、局部diff/负例/逆向及全baseline恢复。只有一个隔离fixture，不授予完整gate通过。

AEB_Core副本26类完整依赖读实验03在引用定义的enum解析失败，已回退创建，原始失败保留；不能声称全量语义已完整覆盖AEB_Core。详见 [开发与恢复记录](bde-development-20261001.md)。完整G0–G7仍未通过，旧版本性能与当前新增字段分开报告。

原件只读诊断 `bde-aeb-core-full-diagnostic-01` 将失败定位到AEB_State_Machine内部`sm`的model_type=enum、GetRepresentedClass=null。普通Main结构路径可用，但包括此依赖的full读取仍失败；状态机研究继续延期，不减少覆盖冒充通过。

# 2026-10-01 补充：源快照与真实宿主退出

- bde-source-checkpoint-01：在隔离小图直接原地修改source内嵌Point，旧shallowCopy+equals漏检，新深复制/类型化递归比较识别；generation递增，旧快照写入conflict且setter_called=false；恢复原坐标后public图完全一致，连续3轮通过。稳定读取保持generation/ref。深复制只接收经审计的存储对象/数组/字典/Point/样式/颜色和值类型，未知类型fail closed，有访问量/深度上限。
- bde-checkpoint-read-01/02记录最初deepcopy配原生equals导致无修改也generation递增的问题；增加递归值比较后03/04稳定。既有弱checkpoint首次使用升级；旧edge refs失效。
- bde-data-validation-01使用source注入前的旧edge引用，断线prepare拒绝且无setter；独立基线保持。新读05后validation-02连接/断开/换源/删除四种编辑、自动patch及逆向均通过。
- bde-route-matrix-02完成三fixture×3：现在连续两次route（第二次从已有折线修改），共八编辑/八逆向。还加固route/rewire保存与恢复时的Point逐点复制；各阶段public投影及最终native恢复通过。
- bde-host-exit-01：真实终止专用Python工具宿主，时点为ASCET setter已完成、adapter尚未确认和journal after之前；apply/revert各3次，重复请求unknown不重放，另一STORE的写入被隔离标记阻断，经reconcile确认后恢复native/public基线。没有终止ASCET；不能推广为在途setter/ASCET崩溃测试。
- 新bd_write_contract.py，在snapshot/native I/O前严格校验编辑/逆向请求及未知字段；115共享write案例。删除从未实现的set_sequence schema分支，能力查询仍明确不支持。offline-contract-01记录76 Python、11 Doge、6 live skips/500断言与version成功。
- bde-owner-rejection-01已完成24个Class负例（三次×四类×preview/prepare）；之前的成功创建仍可回退。

正在执行bde-catalog-current-01，26种创建全目录当前版本Tool.call核对；先检查进程result.outstanding，不能同时启动其他live实验。全部工具/G0-G7尚未完成；恢复容量/预备记录释放、完整identity负例、数据配置/层级/sequence和UI视觉等仍缺。自动化保持暂停。

# 2026-10-01 接续：创建目录、实际 Tool.call 与故障恢复

本段覆盖下方旧状态。catalog-tool-01 的前12类创建成功后 resource 失败；诊断证实 Class resource 在原生 fresh diagram 也缺失，不是 .NET wrapper 单独漏读。生产 native prepare 现在只允许 Module resource，三类 message 同样只允许 Module。业务 AEB_Core 原件保持只读。

- bde-catalog-tool-03：delta_t 类型字段漏读，已回退。反编译 EtasAPIDeltaT.isPrimitive=false，getModelType 仍返回 dT；reader 改用响应能力检查，不丢弃此类型。
- bde-catalog-tool-04：其余10类 AEB_Core 副本创建、独立public/model核对、diff、编辑后snapshot checks、回退通过。切到 Module 前被离线测试错误持有真实instance锁中断，outstanding=[]；不是原生写故障。已把两个纯fake测试套件的lock隔离，74 Python tests全过。
- bde-catalog-module-01：receive/send/send_receive message及resource各3次真实 Doge Tool.call 创建、diff、回退，独立public/model/native baseline恢复全通过。
- bde-route-matrix-01 已完成三种fixture各3次，七编辑/七逆向及逐阶段公共投影均通过；bde-doge-route-chain-01 在 AEB_Core副本通过实际Tool.call、含多折点 route 的同链路，最终native/public恢复。
- bde-persistence-fault-01：observed/finished日志OSError各3次，真实native apply/revert；unknown不重放setter、recovery reconcile恢复终态，独立native/public恢复。它不是宿主kill或native partial故障测试。
- Read合同新增73个共享案例，creation合同276个；游标/文档完整性、会话与UTF-8边界校验已实现，旧无checksum游标需从保存snapshot重新分页。局部edit后checks明确not_collected。Doge当前10 pass/6 live skip/385 assertions。
- bde-owner-rejection-01 正运行：Class上Module专属创建，preview/prepare均拒绝且不破坏此前成功edit的恢复。先检查进程，不重复启动。
- bde-source-audit-01 为诊断JSON传输失败；02确认源为SGTopGraphicsBlockDB，准备进一步审计checkpoint浅复制的嵌套别名风险。尚未改变checkpoint策略。

没有本轮已结束实验的未回退写入。仅当前owner-rejection进程可能持有临时literal，先等待/查看result.outstanding。普通BDE tools完整G0–G7仍未通过，UI视觉仍受桌面不可用阻断；模型配置、库enum定义创建、nested hierarchy/sequence及完整identity/fault门槛仍未完成。新Code Mode/状态机暂缓，自动化bde保持暂停。

# 最新接续：conversion、库定义身份与精确折线编辑

新增 operator limit/wraparound：固定独立 ASDConversionGO factory，native conversion_type 区分 limit/wrapAround；创建类型仍26种，operator名称23个。bde-conversion-create-04 在 AEB_Core 隔离副本各3次创建/回退、public图及model baseline核对通过。enum/component模型行新增definition path/OID，创建检查原生represented item身份；bde-definition-identity-01两类独立public引用核对通过。

保留conversion失败01（通用factory nil）、02（wrapper未附加contents）、03（EsAtom序列化）：01/02有 research-no-effect-verification.json 独立全图/声明值基线核对，原unknown不改写为成功；03在隔离副本仅删除唯一新增conversion，research-cleanup.json核对全public/model恢复。四轮结果不能合并为全部通过。

新增set_edge_route：正交折线、固定两个端点，快照精确edge ref，真实patch/同进程逆向。route-chain-01/02暴露旧move恢复的Point浅复制问题，已逐点复制并完整重建原路径；失败夹具通过research-cleanup.json清除仅本轮新增节点，public基线恢复。route-chain-03七次编辑+七次逆向和逐阶段独立public投影均通过。三种fixture×3的bde-route-matrix-01正在执行，继续前先查进程，禁止重复实验。

确认既有doge-edit-perf30-02已结束且passed：move P95 604.056ms/86frames、inverse584.219ms/81frames；read02 P95 969.841ms/93frames。都是各30次、无遗留写入；这些性能数属于本轮conversion/route扩展前版本，不用旧指纹为新能力背书。

UI仍阻断：上轮Windows窗口激活失败，无新的用户桌面恢复答复。完整G0–G7/L0–L3未通过；数据配置、新enum库定义、嵌套层级/sequence、故障矩阵及视觉验收尚缺。业务原件未写，状态机/新CodeMode继续暂缓。

## 最新补充：26 种创建、实际 Tool.call 性能与分组表（2026-09-30）

- `bde-operator-catalog-01`：21 个 operator 名称与 7 个 control 名称，各 3 次创建/回退，共 84 次通过，均有独立 public 节点/pin/边几何投影与 baseline 恢复。仅一个小型普通 fixture，不代替三个不同 fixture。
- 创建新增 `%`、verify、assert；operator 固定输入数已按反编译原生 factory 契约约束，并通过实际 pin 数后置检查。原有可变运算符输入 2–16。
- 创建新增 oned_table_group/twod_table_group，精确已有 distribution refs。reader 记录 group/fixed 标志和分布关联；C# 独立 oracle 读取 group 属性/X/Y 关联。`bde-group-create-01` 保留 2D 属性漏读失败，四笔已按原记录 verified_local 回退；`bde-group-create-02` 修复后在 AEB_Core 副本各 3 次通过，整体 baseline 恢复。
- 现在 26 creation kinds；新 enum 库定义/枚举值、模型数据配置、嵌套 hierarchy 等仍未完成。请不要声称“所有 blocks 全部可用”。
- 后端 perf30：AEB_dFxTar 新采集+全部分页 P95 634.999ms/93 请求帧；AEB_Core move 478.795ms/86帧，revert 464.197ms/81帧。独立公共 getter baseline 7313.755ms/5164帧，同 32871 字节正文/3 次交付页，完整 raw 已采集语义相等。
- 实际 Doge Tool.call perf30-01：read P95 967.043ms，edit 602.172ms，revert 582.858ms，各 30 次无失败。包括每页重新启动 Bun 的保守开销，不含LLM。manifest 初版遗漏 reader C#，不能直接升为完整 gate；已补齐源码/二进制/DLL/hardware metadata。
- `doge-read-perf30-02`：补全版本证据后 30 次逐样本同语义、完整交付；P95 969.841ms，最大 970.820ms，93 请求帧。`doge-edit-perf30-02` 正运行，先检查进程/结果，不重复在线任务。
- 最新离线：65 Python tests；Doge 9 pass/6 live skip/306 assertions。共享 creation contract 270 案例。`docs/bde-tools-usage.md` 提供真实六工具当前用法、类型与限制。
- `scripts/bde_eval_report.py` 是保守证据聚合器，不是验收执行器；`docs/bde-tools-eval-evidence.json` 和 `bde-eval-ledger-01` 显示 28 个 case 完整门槛的缺口，不把 partial experiment 变成 gate pass。
- Windows 激活失败的用户异步问题已提出，尚未收到回答；不要再以旧截图/句柄点击。仅 UI 视觉仍阻塞，其他 API 开发可继续。

未回退当前写入只可能来自正在执行的 perf30-02；此前本轮 group/operator/lost-reply/overlay 均已恢复。完整 tools 开发未完成。下一步：跟进 perf30-02、补齐创建库引用 identity/字段与额外原生 palette 类型、read/inspect 契约与 operation 配置、在线 identity/互斥/fault/真实 UI lifecycle；不得只整理报告就说完成。

## 当前接续：普通 BDE 创建、恢复与独立 oracle（2026-09-30，本轮更新）

本段优先于下方历史记录。当前没有未回退的本轮写入：overlay-01 literal 已 verified_local 回退；chain-oracle-01 全部回退；lost-reply-01/02 各三轮创建和逆向已恢复。

- 24 种 create_block 已实现：variable/parameter/constant/resource/delta_t/implementation_cast、array/matrix/distribution、普通及 fixed 1D/2D table、三种 message、enumeration/component实例/existing_model、literal/comment/operator/control/hierarchy。既有分散在线 smoke 不等于各类型完整 eval。enum 仍引用已有定义；message 仅 Module，AEB_Core Class 不支持 message。
- AEB_Core 隔离副本 chain-03/04、Doge creation-tool-call-01 已完成六编辑和六回退。新 `bde-create-chain-oracle-01` 在每个中间态独立公开 API 核对全图共享节点/端口/边几何投影，12 阶段通过。保留边多重性，但此 oracle 不证明 native edge identity/parent order/configuration。
- `bde-ordinary-overlay-01/show-fixed.json` 和 `clear-fixed.json` 原生成功，dirty 0→0。根因修复为使用 RBDrawingArea.pixelNearestToColor:。Windows Computer Use 两次 failed to activate captured window，截图未显示画布；视觉、缩放/滚动/重开仍未验收，不算 UI gate pass。
- 新 `bd_inspect(query=recovery, change_id=..., reconcile=true)`：只读取当前原生 terminal recovery record；核对 native owner/specification/before/current，先持久化观察和 finished，再清跨 STORE quarantine。无模型 setter。partial/native started 保持 unknown。跨重启不恢复。回退恢复确认后可释放 terminal native record。
- `bde-lost-reply-01/02`：在线真实 setter 完成后丢弃 transport reply，apply/revert 各三次；重复原请求未重复 setter，经 recovery 查询确认，native/public baseline 恢复。不是 kill/STA/crash/所有故障点验证。
- Doge 创建 schema 逐 kind 严格约束；234 个共享合同案例在 Python/Bun 通过。一次只允许一个 patch，与后端一致。取消前置返回 not_dispatched；派发后只停止等待，后台继续串行落盘，写入返回 outcome_unknown。实际运行中取消 fault gate 尚未通过。
- 本轮 Python 65 tests pass；Doge offline 9 pass/6 live skip/270 assertions。live skip 不计验收通过。
- `bde_tool_performance.py` 新增 30 样本新采集+完整分页，以及 move/revert，逐 Python 进程调用并真实回环帧计数；测量不包含 Doge调度或LLM。`bde-read-perf30-01` 正在运行，接续先看进程/结果，不重复运行。

后续：性能结果与同覆盖核对、Doge新增 recovery/cancel 手动/真实入口验证、最新类型创建独立oracle、操作工厂/端口契约及类型配置、数据库身份负例、跨 STORE 在线互斥、真实中断故障、UI视觉解阻、eval聚合。完整 BDE tools 及 G0–G7/L0–L3 仍未完成，不能宣称所有 blocks/所有编辑场景已验收。业务 AEB_Core 原件保持只读，bde 自动化保持暂停。

# BDE tools 对比实验报告（持续更新）

## 2026-09-30 后续开发：删除恢复顺序与eval

按BDE eval v1补上断线和删节点的原生父children顺序检查。prepare保留真实对象序列，apply/revert在setter前按对象身份逐位核对，操作后和store后再核对目标序列。排序后结构行相等不再作为顺序恢复的充分依据。同父容器中无关对象重排也保守冲突；未实现邻居合并或跨重启恢复。

明确的写前拒绝通过固定协议返回PRECONDITION_CONFLICT/mutation_started=false，journal记录conflict/setter_called=false。同request_id仍不重放，冲突解除后需要新request_id。超时、普通异常和写后不一致仍保留outcome_unknown，不把停止等待当作未执行。

证据：[在线原始结果](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/bde-order-recovery-02/result.json)、[eval核对与版本哈希](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/bde-order-recovery-02/validation.json)。断线/删节点×正常回退/父children重排×3，共12场景通过；6个冲突均未调用setter。每次清理注入后，结构读取、独立公开API与独立children身份序列全部恢复。独立顺序探针观察同一保留图，使用自己的IdentityDictionary及原始children，不调用被测排序formatter。研究注入仅在独立编译的BDE_ORDER_EVAL桥接和硬编码隔离fixture中开放，生产工具无此命令。

首次尝试保留在bde-order-recovery-01：3次正常断线回退通过后，研究重排/清理探针失败。旧runner仅保留清理异常，未保存最初注入错误及失败帧数，此证据缺口明确保留。修复探针后先通过原journal恢复，recovery.json核对全部一致，再开始02。当前隔离夹具无待恢复修改，业务原件未写。ASCET从未运行状态启动，PID17468/AEB_1；初始只读dirty0→0。

32项相关离线测试通过（结构日志9、新冲突5、preview3、字段日志8、sandbox路由7），C#生产和研究桥接编译通过，实际在线调用也验证了固定Smalltalk模板。完整研究流耗时12887.917ms、6623请求帧，包括12次编辑/回退、大量独立校验及连接清理，不能当作单edit/revert耗时或P95。

本轮只是一个三节点普通BDE夹具的REVERT-01/02子场景证据，不满足整套门槛或性能验收；身份归属、跨STORE互斥、取消未知处理、普通BDE显示及更多fixture仍未完成。下一步优先B2/B3。Code Mode及状态机仍延期。

复现（ASCET正常打开AEB_1且无dirty编辑、无其他实验）：

```powershell
E:\PYTHON\python.exe scripts/bde_structure_read_experiment.py --component 'BDE_Tool_Experiments\Trial_data_20260930_012339' --output analysis/bde-experiments/2026-09-30/bde-order-read-NEXT
E:\PYTHON\python.exe scripts/bde_order_recovery_experiment.py --reference analysis/bde-experiments/2026-09-30/bde-order-read-NEXT/probe.json --output analysis/bde-experiments/2026-09-30/bde-order-recovery-NEXT
```

## 09:04 历史交付

更新时间：2026-09-30 09:04，Asia/Shanghai。已完成约定的早间结果交付；整体 tools 尚未完成。交付摘要见 [09:04 报告](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/delivery-0904.md)。当轮核对已有证据，没有重复在线实验；已确认 bde 自动化状态为 PAUSED。

## 初步选择

建议保留完整语义读取作为首次理解和独立校验路径，增加原生局部读取用于定位、编辑前置检查和局部回读。编辑日志应由 setter 周围的真实局部 before/after 产生，不能靠每次全图 read。内部接口仅开放固定、审计后的操作，不把任意 Smalltalk selector 暴露给 agent。

## 同范围读取比较

业务组件：`\PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AutomaticBraking\AEB_dFxTar`，数据库 AEB_1。Main 有 56 个节点、120 个 pin、60 条连接。

证据：`analysis/bde-experiments/2026-09-29/run-03/results.json`；脚本 `scripts/bde_experiments.py`。24 次试验采用固定随机顺序，每个组合重复 3 次。表内帧数是本地代理实际计数的 Cebra 请求帧（含协议管理），不是高层 API 次数。

| 范围 | 路径 | 中位耗时 ms | 请求帧 | 原始输出 bytes |
|---|---|---:|---:|---:|
| n15/n176、pin、关联边、sequence、literal/operator | 公开 API | 651.902 | 326 | 3486 |
| 相同字段 | 内部 handle 筛选后创建 wrapper | 587.395 | 272 | 3487 |
| 上述字段 + 节点位置/尺寸和边折点 | 公开 API | 701.784 | 356 | 3850 |
| 相同字段及 layout | 内部 handle 筛选 | 608.697 | 302 | 3851 |
| 全 Main 拓扑 + layout | 公开 API | 4036.106 | 2531 | 38533 |
| 相同字段及 layout | 内部 handle 筛选 | 3997.376 | 2530 | 38534 |

局部内部路径在这个样例减少约 54 个请求帧；全图基本没有收益。不能据此宣称对所有模型最优。完整旧 reader 还读取定义和方法正文，覆盖不同，其约 13 秒结果不能用于声称等价加速倍数。

24/24 次共同拓扑字段核对通过，保留多重边；layout 与公开全图 layout 参考一致。前后完整 reader 所采集的语义无变化。局部 reader 尚未采集模型类型、公式、配置、方法正文、嵌套内容和状态机，所以不代表完整模型理解。

## 被排除的方案与故障

- run-01：尝试以连接的 native identifier 去重，但样例所有连接都返回 -1，导致边丢失。已否决。改为根据选中端点收集邻接 occurrence，保留多重边；这种观察序号仍不能直接当作跨会话编辑身份。
- run-03：全图无 layout 的两个策略均出现代理 WinError10054。虽然语义核对通过且帧完整，报告仍未计作干净的性能试验。这些原始失败不能忽略；02:38 更新的对照实验已修复 scoped reader 的退出顺序，见下节。
- edit-01/02：初始化无 API handle；edit-02 超时，目录为空，无创建或 setter 记录。只收到初始化一帧请求和一帧响应。
- 随后健康只读探针成功，PID 43176、数据库 AEB_1。因此未强行重启 ASCET。
- edit-03：x86 重新编译后连接成功，创建隔离类 `BDE_Tool_Experiments\Trial_20260929_154113_1db039`，OID `040ts00000001qg714eg871bd3a04`。literal 创建后回读不完整，停止。独立 inspect 确认 Main 仍为空，dirty editors=0。没有执行 literal setter，不得记为编辑/回退成功。
- edit-04：再遇初始化空 handle，没有尝试写入。初始化失败原因未确认，不能仅凭一次重编译归因位数。
- edit-05/08：进一步诊断表明新建 literal 的文本和 geometry 可以读取，但 native identifier 是 nil，公开 GetGraphicalObjectIdentifier 返回错误哨兵 -99。新建图元尚未 finalize，不能当成已具备稳定可编辑身份。
- edit-06/07 和 health-02 同样空句柄。发现 FormulaSearch.exe 持有独立连接，但未证明因果，不擅自关闭该程序。
- 根据用户授权，23:53 通过 ASCET 正常退出确认并重启，没有强杀或丢弃编辑动作。新 PID45072，进程 epoch `2026-09-29T15:53:50.4257720Z`，自动重新打开 AEB_1。health-after-restart 读成功，646.088ms，dirty before/after 均为0。窗口标题 `*` 出现在退出确认时，不能仅据此认定有未保存模型；背后的黑色提示是其他应用的硬件提示。
- Cebra debug 日志实际显示 `DisconnectFromTool` 关闭后，.NET 终结器仍尝试发送 destroyObjectForId。支持清理阶段竞争的诊断；后续已针对失败组合做同进程新旧二进制复测，未把所有组合重新跑一遍。

## 隔离编辑、实际 diff 与回退结果

`edit-09/result.json` 为通过的在线实验，组件 `BDE_Tool_Experiments\Trial_20260929_155551_0f73b7`，OID `040ts00000001qg714eg8acgp8dg0`。在 StoreToCache 后，新建 literal 获得有效 ID n3 和 n1。StoreToCache 会触发结束修改/重建逻辑等行为，不能在设计中当作无副作用缓存刷新；此处仅在隔离组件使用。

实测过程：

1. n3：0.0 → 1.25，自动记录实际 before/after；n1：2.0 → 3.5。
2. 用旧 expect=0.0 再改 n3 时拒绝，未调用 setter。
3. 回退 n3，n1 的 3.5 保持不变。
4. n3 改成长 literal，文本、位置、尺寸一起变化；再恢复0.0。
5. 恢复 n1 为2.0，StoreToCache。独立新进程 `edit-09-inspect.json` 读回两个图元、原文本/ID/位置/尺寸一致。

| n3 字段 | 修改前 | 长 literal 修改后 | 回退后 |
|---|---|---|---|
| literal | 0.0 | 123456789012345.125 | 0.0 |
| position | [80,93] | [40,93] | [80,93] |
| size | [40,14] | [120,14] | [40,14] |

6 次局部 setter 记录耗时31–36ms，包含写前/写后局部观察和日志；**不包含每次新连接、完整 finalize 和持久化成本，不是 bd_edit 端到端承诺**。整个隔离进程704.704ms、274请求帧。新进程复读195.291ms、60帧。该模型仅有两个未连线 literal，尚不能推广到带线图元的几何副作用。

业务组件另作完整读取，`business-after-edit-check.json` 确认重启后数据库/组件 OID 一致，完整 formatter 的 components 内容逐项相等。跨进程观察不能证明图形身份连续，所以没有绕过正式 diff 的进程身份限制。

## 日志适配器及 Doge 在线验证（00:45 更新）

新代码 `AscetLiteralSession.cs` + `bd_native_literal.py` 将同连接局部 observe/apply/finalize 接入 `bd_edit_journal.py`。固定操作白名单，原生端再次校验数据库、组件 OID、进程 epoch、精确目标、prepared 字段及无连接约束。保留的远程 wrapper 在 disconnect 前释放；这只修复新适配器的生命周期，旧 reader 的退出问题仍未修复。

证据：[journal-01/result.json](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/journal-01/result.json)。真实长 literal 修改在 StoreToCache 后回读，actual patch 包含文本、位置和尺寸；同请求重复为零新增 adapter 命令；旧值冲突未执行 setter；回退保持另一个 literal 的修改，随后恢复整个测试图。第一连接内多个操作合计 1198.005ms、614 请求帧，代理无错误；热操作约150–170ms，不能据此推算大图或每次新连接的成本。

在真实 setter/finalize 已成功后，于 Python adapter 返回边界注入丢失回执异常：日志为 outcome_unknown，重复请求没有再调用原生接口。随后独立局部观察确认实际为7.25，使用新的带旧值条件请求恢复。此项不是操作系统崩溃实验，也不是已实现通用自动恢复判定。

`bd_sandbox_edit.py` 接入 Doge `bd_edit` / `bd_revert`，默认关闭；显式 `ASCET_BD_SANDBOX_WRITES=1` 仅允许 `BDE_Tool_Experiments/Trial_*` 内最多20个无连线 literal 的单次数字文本修改/回退。禁止业务组件、跨会话、任意 selector、批量、连线、删除和状态机写入。最终化可能重建逻辑和自动提交，不宣称纯内存修改或保存重开已验证。

证据：[doge-sandbox-01/validation.json](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/doge-sandbox-01/validation.json)。原生 Tool.call 在线完成局部读→preview→edit→相同 request 重放→离线 diff→revert；测试用例1894.48ms包含多次工具调用，不是单 edit 延迟。独立新进程再次全读小测试图，OID/epoch/所有节点、pin、几何及无连接关系与基线完全相等（194.767ms、60请求帧、无代理错误）。日志与恢复材料保留在该目录 edits/ 和 edit-bindings/ 下。

本轮测试：Python28项通过；Bun6项通过、38 assertions、2项旧全量/局部在线读测试跳过（此前已通过，无重复必要）；`bun run version`通过。未发起模型推理，不能等同于真实 agent 自主选工具验收。

复现（必须使用新的输出目录；现存 request_id 日志不能当新实验复用）：

```powershell
# 仓库根目录，使用现存隔离测试组件
E:/PYTHON/python.exe scripts/bde_journal_experiment.py --output analysis/bde-experiments/2026-09-30/journal-NEXT
# Doge 目录；不要全局设置 ASCET_BD_SANDBOX_WRITES，测试内部按需启用
$env:ASCET_BD_PYTHON='E:\PYTHON\python.exe'
$env:ASCET_BD_SANDBOX_LIVE_TEST='1'
$env:ASCET_BD_TEST_STORE='E:\Repo\ASCET\analysis\bde-experiments\2026-09-30\doge-sandbox-NEXT'
bun test src/tools/BlockDiagramTool/BlockDiagramTool.test.ts
```

## 原有 BDE 对象链实验（01:44 更新）

新增 `AscetBdeViewProbe.cs` 和 `bde_view_experiment.py`。公开 `Component.Edit()` 在线打开隔离模型原生 BDE；内部固定 getter 链 `view → uiController → graphPaneController` 确认为 `SGBlockDiagramEditorView → SGBlockDiagramEditorC → SGPaneController`。view-02 为2074.595ms/97请求帧，字段前后一致、dirty=0。它是打开/观察成本，不是 diff 渲染成本。

源码 `selectGOWithID:` 提供 ID 定位、层级切换和滚动线索，但 UI 线程调度及无修改副作用未验证，未直接执行。普通 UI 点击测试后 status bar 显示 Graphic ID:3，与 Main/n3一致；随后dirty=1，Undo可用，但API选中集合为空。独立拓扑/layout未变，具体原因未隔离，因此否决“直接用选择高亮即可完成diff”的结论。另发现 `undoRedoPossible:` 经 `mementoStream` 可懒创建Undo流，未将它纳入无副作用getter调用。

本轮打开的隔离BDE已关闭，对只属于此次界面实验的未保存状态选择No；独立新进程确认小测试图与基线完全一致且dirty=0。未保存业务模型、未调用Undo。失败view-01/03保留，完整叠加层尚未实现。证据：[实验汇总](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/view-summary.json)、[源码与调用研究](E:/Repo/ASCET/docs/bde-native-presentation-research.md)。

## 读取器清理修复与失败组合复测（02:38 更新）

`SmalltalkToolAPI` 析构函数执行远程 `destroyObjectForId`。旧探针先断开连接，随后析构产生远程调用；现在两个 reader 均在连接存活时释放保留的 wrapper、禁止重复析构、等待其他终结器，再 disconnect。`elapsed_ms` 现包含清理；报告额外记录清理耗时及释放尝试数。原生 finalize 吞掉异常，因此“释放尝试数”不等于逐个成功回执。

使用保存的旧二进制与新二进制、同一 ASCET 进程、固定随机顺序，复测此前失败的全 Main topology/sequence/literal/operator（不带layout），每策略/版本3次。业务目标仍为 AEB_dFxTar。旧源码、二进制哈希、所有失败和新结果保留：[cleanup-01/comparison/results.json](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/cleanup-01/comparison/results.json)。

| 版本/路径 | 无协议错误次数 | 中位总耗时 ms | 实际请求帧 | 原始输出 bytes |
|---|---:|---:|---:|---:|
| 旧公开 API | 0/3 | 不列有效性能值 | 不列有效性能值 | — |
| 旧内部 handles | 0/3 | 不列有效性能值 | 不列有效性能值 | — |
| 新公开 API | 3/3 | 3147.783 | 2457 | 34161 |
| 新内部 handles | 3/3 | 3083.941 | 2456 | 34162 |

旧版6次均出现WinError10053/10054；新版6次无代理错误、无不完整帧。12次共同字段与完整读基线一致，且同策略的新旧原始graph全部字段逐项相等。新增声明目标集合校验（包含缺目标/错误目标负例），对已有12份结果再次离线验证通过，见 `coverage-recheck.json`。这保证此次修复没有靠减少采集覆盖消除错误。

局部n15/n176带layout路径各核对一次：公开750.096ms/482帧/3985bytes，内部604.502ms/373帧/3984bytes；共同拓扑和两路径layout相等，无代理错误。这是修复后的单次功能复测，不能作为新的稳定性能中位数。当前帧数包含主动清理产生的调用，比旧版某些未完全清理就退出的帧数更高；不与前表混算节省比例。

完整reader应用相同释放顺序后，独立全量采集12276.349ms/9891请求帧/161591bytes，清理1557ms、1248个wrapper释放尝试；dirty前后均0、无代理错误。正式semantic_diff在相同epoch内确认所采集全部语义与此前业务基线相等，见 [full-validation.json](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/cleanup-01/full-validation.json)。其覆盖含定义和方法正文，仍不能与局部/拓扑读取声称等价加速。

测量校验3项、服务13项、局部后端4项测试通过。未改TS、未重复无关edit测试。没有声称解决初始化空handle或全部运行环境的断连问题；完整layout性能矩阵本轮未重跑，旧数据保留原口径。

复现（旧二进制需保留在原DLL旁，新输出目录）：

```powershell
E:/PYTHON/python.exe scripts/bde_cleanup_experiment.py --output analysis/bde-experiments/2026-09-30/cleanup-NEXT --before-binary analysis/live-api/AscetScopedProbeBeforeCleanup.exe --reference analysis/bde-experiments/2026-09-29/business-after-edit.json
```

若ASCET已重启，旧reference的epoch会拒绝比较；应先获取同进程新完整基线，不能改写epoch绕过校验。

## 当前交付状态

- Doge read/find/inspect/diff 可用；scope 最多20个 Main 节点、pin、关联边及边界 pin，明确语义缺口，跨 scope 比较拒绝。原有完整读仍保留定义及方法正文。
- edit/revert 通过上述开关开放经过在线验证的隔离无连线数字 literal；业务写入关闭。
- edit 自动记录实际 diff、持久幂等、局部冲突检查和布局回退已接入 Tool.call。`bd_diff(change_id=edit_...)` 离线查询，未知结果不重写。`bd_inspect(query="edits")` 已接入离线编辑历史发现；read 观察历史不混作 edit 历史。
- 原有 BDE diff 展示、精确删除恢复、连线和状态机 transition 编辑、数据库保存重开、真实崩溃恢复、批量及 GUI 并发原子性均未通过验收。整体 tools 未完成。

## 后续实验

1. 研究原 BDE controller/selection/drawing，优先验证临时显示不改变模型、不污染 Undo。基类 highlight 为 no-op，必须追踪具体实现。
2. 清理修复的失败组合已复测通过；需要更新性能推荐时，再按新生命周期统一测量必要组合，旧/新口径不可混用。
3. 扩展定向语义依赖读取；编辑历史查询已完成，按需测量每次 Tool.call 的连接与持久化成本。
4. 分别验证数据边和状态机 transition 的身份、重连与恢复，删除前证明恢复闭包。
5. 验证未知结果恢复判定、真实崩溃、GUI 并发与数据库重开。不能用当前受限 literal 成功替代这些验收。

## 2026-10-01：普通 BDE 原生显示样例

本轮收尾：offline-contract-15通过121 Python、Doge11pass/6live skip/711断言和version；bde-enum-full-02的107份源码指纹与收尾文件一致。全部实验退出，仅ASCET PID18144仍运行，当前写入均已恢复。证据账本更新为bde-eval-ledger-05，不授予完整G0–G7/L0–L3通过。

本轮接续新增 bde-geometry-create-01：纯新增variable/sequence bounds和+标记在200%/150%对齐，150%滚动往返、clear、实际Tool.call diff/创建逆向、独立全baseline恢复通过；passed/visual_verified/baseline_restored=true，outstanding=[]，source_changes_during_run=[]。已保存shown-150.png和cleared-150.png。该轮skip-lifecycle，不计关闭重开三轮验收。下文早期缺口中“新增节点单独展示、150%”由本样例补充，更多fixture、最终候选多轮生命周期仍未完成。

枚举读取也已接续：bde-enum-full-02普通库枚举三轮实际Tool.call创建/完整public getter与bulk全原始字段相等/完整分页/diff/回退通过，215→37真实请求帧。小图public getter479–499ms、bulk204–220ms，这不是完整Tool.call P95。正文和inspect保留enum_source/enum_values，区分库定义与内嵌类型。

bde-aeb-core-full-01业务原件只读：sm内嵌SGEnumeration类型元数据及默认字符串已保留，62个依赖被采集；仍为partial，两个issue分别为AEB_State_Machine和AEB_AutomaticBraking_SM的unsupported diagram，dirty前后0。耗时47.43秒/32281请求帧是失败逐字段读取，不能作为成功速度比较。sm另有字符串alias OID，formatter/bulk完整验收未完成；类型项enumerator不等于状态列表。状态机语义延期，不删依赖冒充完整。原始失败与旧enum错误证据均保留。

复现普通枚举读取使用新目录：

```powershell
E:\PYTHON\python.exe scripts\bde_catalog_tool_experiment.py --output analysis\bde-experiments\2026-10-01\bde-enum-full-NEXT --class-component 'BDE_Tool_Experiments\Trial_data_20260930_012339' --kinds enumeration --initial-values --full-read-oracle --repeats 3
```

新增节点显示实验使用scripts/bde_model_presentation_experiment.py --scenario create --skip-lifecycle --visual-hold 300及新--output目录；必须实际观察后保存shown.json/cleared.json，否则visual_verified不能通过。状态无变化的旧实验无需重跑。完整AEB_Core语义读取目前不提供成功复现承诺。

标量/表值旧新字段、数据连线、移动 node/route/sequence 和删除 ghosts 已在原 ASCET BDE 实际观察通过。证据目录分别为 bde-model-presentation-03/04、bde-geometry-connect-03、bde-geometry-move-02、bde-geometry-delete-01，均位于 analysis/bde-experiments/2026-10-01；result 中 passed、visual_verified、baseline_restored 均为 true，outstanding=[]，源码运行期间未变化。move-02 本次已确认退出，无遗留实验宿主。

绘制使用经审计 CgDrawable 的文字/矩形/折线接口，show/clear 调用 displayRects 后 redraw，保留并恢复原 gc 状态；expose/destroy 回调清理已接入。字段定位避开 actualNameGO。100%/200%、滚动、clear 及标量关闭重开有样例，完整 UI-01/02/FLOW-01 仍未通过：150%、新增节点单独展示、最终候选多轮生命周期及更多 fixture 等未完成。只有 Main occurrence；旧形状仅边界框/已记录 route，原 glyph/旧名称未重建。Undo 只核对 stream/entry 身份、位置与长度，未深比较 entry 内部。

connect-02 视觉未通过，原失败保留；clear 后绿色线本身不能证明 overlay 残影，因为原生数据线也是绿色。独立 visual-followup 修正了这一推断，connect-03 通过线宽、圆角和 + 标记消失区分临时层与原线。native 回执每次仍标记 visual_unverified，不能拿样例证据替代任意新调用的视觉判断。offline-contract-14 的120 Python、Doge11pass/6live skip/711断言只是离线验收。

## 2026-09-30 03:42：离线编辑历史入口

已实现 `bd_inspect(query="edits")`，可按 component/database 或 snapshot 的 database+OID 过滤，跨 Doge 会话和 ASCET 进程发现历史 edit change_id。输出 request_id、target、实际 changed_fields、conflict_fields、reverts、状态和时间；具体前后值用 `bd_diff(change_id="edit_...")`。`changes` 仍是读取观察历史，两者语义不同。

此路径不调用 ASCET，不依赖写开关，不为了查编辑记录重新 bd_read。未完成 started 显示 outcome_unknown；仅 intent 显示 interrupted_before_apply；缺失、损坏、孤立 binding 显式列为 diagnostics，不能可靠过滤的诊断保留为 filter_match=unknown。分页文档固定，期间新编辑不会改变后续页；重新查询才刷新状态。历史可读不意味着可跨会话回退，写入身份约束仍适用。

验证：7 个 sandbox/history 路由测试、13 个 service 测试通过；Doge 7 pass / 3 live skip / 68 assertions；version 通过。使用 doge-sandbox-01 的真实在线编辑日志副本，离线 Tool.call 成功找回两条记录、回退关系和 literal/position/size 三项实际变化，随后读取准确 before/after。原日志与副本哈希一致。证据 `analysis/bde-experiments/2026-09-30/history-01/validation.json` 和 `store/history-evidence.json`。这是离线集成验证，不是新在线写实验或模型自主调用测试。原 BDE diff 显示、连线/删除/状态机等仍未完成。

## 2026-09-30 08:00：完整读取提速与并发研究

新全量reader已接入Doge。单次读取内按组件+原生模型OID+wrapper类型去重，217次模型出现复用84次；240次pin出现复用120次；不去重连接occurrence。读取pin owner/分页ID时直接调用已审计的原选择器，减少临时wrapper。Doge输出sampling说明，缓存不跨read复用。

最终同进程随机交错各3次：旧版中位12627.348ms/9891请求帧，新版8492.358ms/6494帧，分别减少32.75%/34.34%。全部原始语义字段相同（仅排除时间/性能诊断），56节点/120pin/60边/7定义/21方法/19依赖参数/24绑定保留，dirty0。数据量161591→162244bytes的增加来自profile。不要与上一轮12.28秒单次值直接混算。

固定getter流水线经一次修复后完成等覆盖单次验证，收益不足以确定，因此未采用。反编译EtasCebraToolServer.run→Fassade.start→block.value支持单连接逐条执行；多连接收益/隔离尚未验证，未绕过连接限制。优先方向为服务端固定批量字段投影；离线并发还需保护delivery读改写，现有isConcurrencySafe=false保留。

Doge定向在线Tool.call：完整读、所有分页、再次读取及零diff通过，1pass/27assertions；Python完整性负例4项及服务13项通过。非模型agent自主调用。完整分析及复现见 [性能与并发分析](E:/Repo/ASCET/docs/bde-full-read-performance.md)，证据full-speed-01/validation.json和final-comparison。原BDE diff显示、连线/删除/状态机未由本轮完成。

## 临时代码块批量读取（2026-09-30 08:30）

已按用户建议实现 Cebra → EsCompiler evaluate: → 临时 BlockContextTemplate → 当前内存对象 → 固定标量结果。代码不安装类方法、不使用调用方源码、不写模型。两个编译模板仅在一次 reader 进程内复用，断连前显式 destroyObjectForId；模型/pin 缓存仍只活在一次观察内。

模型模板读取 name/comment/isMethodArgument/isMethodReturn；pin 模板读取 name/input/output/owner identifier/sequence number/activator。getScope 保留公开包装层，避免把其 error31→null 行为改掉。253个对象投影都使用同步 value:，不是多个连接并发，也不是一次遍历整图；整个观察仍非原子。

| 最终字节编码版本，同进程随机各3次 | 上轮去重 reader | 临时代码块 reader |
|---|---:|---:|
| 端到端中位耗时 | 8237.633 ms | 6722.471 ms |
| 实际请求帧 | 6494 | 5164 |
| 输出 bytes 中位数 | 162244 | 162281 |
| cleanup 中位耗时 | 1068 ms | 920 ms |
| 等覆盖、无协议错误、dirty=0 | 3/3 | 3/3 |

同轮耗时再降18.39%，帧数降20.48%。不能拿前一轮9.73→6.84秒或更早12.63→8.49秒相乘来宣称确定的总加速比；系统负载不同。所有原始语义字段及 build() 完整性核对通过，仍为56节点/120pin/60边/7定义/21方法正文/19依赖参数/24公式绑定。额外输出为profile。生产路径已默认启用，ASCET_BD_READ_BATCH=0 可选择保留的单字段读取路径；错误不会自动静默回退或伪造部分成功。

关键反编译利用：EsCompiler class evaluate:for:warningLevel:onWarning:ifFail: → compileForEvaluation → 执行临时块；Fassade serialize:；EtasCebraMessage catItem:；EsString asCebraString；Object handleExceptionsIn:ifFail:。模板只调用经过核对的固定 getter，返回严格类型/长度数据。EsCompiler 编译结果必须为本机实际观察到的 BlockContextTemplate。

传输采用纯ASCII JSON：字符串表示为 asCebraString 原始字节的整数数组，C#按旧桥相同的系统代码页解码。避免旧 CebraMessage.buildBody 先将整段二进制按系统代码页转字符、再套字节偏移造成的混合行异常，也不把旧 String 字节错误当Unicode码点。边界探针通过214/208字节、引号、反斜线、换行、空字符串、nil、负的大整数；这不是整个数据库的多语言文本兼容性证明。

保留的失败：

- probe/：混合数组在389帧后触发桥解码异常，约55秒超时，未计收益。staged.log定位到row22序列化；row-types确认字段全是预期String/boolean/integer，不能归因为API错误对象。
- format-probe.txt：错误假设编译结果类名为BlockClosure，实际BlockContextTemplate；改为严格匹配实测类名。
- ascii-01/：错误使用本机不支持的Character asciiValue，触发ASCET系统错误；crash.log有明确walkback。ascii-02/基线为空句柄。纠正为经反编译核对的访问并加入handleExceptionsIn:ifFail:，最终直接传Cebra字节，无需Character选择器。
- ASCET在UI恢复检查期间从27332变为17788；此轮未成功发送任何重启/退出动作，不声称是本工具完成重启。全部成功对照重新在17788同epoch取基线，无篡改身份。
- format-ascii.txt/error：探针用String容纳20013字符导致构造失败（不是模型读取失败）；改用真实Cebra字节验证，未宣称本机String是Unicode字符串。

证据：analysis/bde-experiments/2026-09-30/batch-01/bytes-final/results.json、coverage-recheck.json、validation.json、format-bytes.txt。Doge真实Tool.call全读/全部分页/二次全读/零diff：1pass、27assertions、整个流程13.19秒；证据doge-store。Python覆盖负例4项、服务13项通过；不是新的写入验证或模型agent自主工具选择验证。

复现：保持AEB_1打开，使用新的输出目录运行 scripts/bde_full_read_experiment.py --output NEW_DIRECTORY --before-binary analysis/live-api/AscetReadProbeBeforeBatch.exe --repeats 3。无需设置批量开关，默认启用。scripts/AscetBatchFormatProbe.cs为独立只读边界探针。

下一步：进一步批量对象集合及定义元数据，以减少剩余5164帧；先审计每个getter是否隐式修改，再按同等覆盖验证。原BDE diff显示、连线/删除/状态机、通用回退仍未完成。

## 1秒目标请求剖析（2026-09-30）

用户新增完整在线读取1秒目标。新增真实selector统计，5164帧中释放877、类型查询656，共29.69%；身份/集合管理等累计2783帧，占53.89%，不是耗时比例。本轮单次6.03秒原始语义相同，不记为新优化收益。已保存完整架构和阶段预算 docs/bde-one-second-read-plan.md，实验one-second-01/results.json；4个测量测试通过。下一步把完整遍历移到固定exportComponent块，中间对象不跨Cebra。1秒尚未实现，生产reader未改。

## 完整临时代码块导出：1秒样例验收（2026-09-30 08:56）

用户要求继续自我迭代。已实现两步独立迭代：bde_bulk_graph.st把整个图的节点/pin/边/sequence循环移到ASCET；bde_bulk_full.st进一步把模型、引用定义、方法代码、默认标量/表格、公式及绑定移入同一个固定临时代码块。它们嵌入AscetReadProbe.exe资源中；bd_service按资源mtime重建，binary hash同时覆盖模板。不是可由agent输入任意源码的eval工具。

### 等覆盖对照

| 同进程随机各3次，包含代理/连接/清理 | 上轮字段批量 | 完整服务端批量 |
|---|---:|---:|
| 中位端到端探针耗时 | 5941.148 ms | 378.459 ms |
| 实际请求帧 | 5164 | 93 |
| cleanup中位耗时 | 831 ms | 10 ms |
| 原始输出bytes中位数 | 162281 | 161924 |
| 全字段一致、dirty0、无协议错误 | 3/3 | 3/3 |

本轮探针耗时降低93.63%，请求帧降低98.20%。上轮6.72秒是另一时段，不能用它当这轮对照。357字节输出差异来自profile，不是删减模型字段。完整JSON仍约162KB；ASCII带类型返回协议线上响应约512KB，这个版本选择无损、可核对的编码而非最小wire体积。

中间整图批量版本graph-01仅单次：6133.555→4653.812ms/5164→3899帧，原始字段相同；没有在这一步停下，也没将它当1秒结果。第一次full-01/full-compile-02因临时代码块内部变量重定义而编译失败，约0.3秒失败时间不计作成功。改名后full-compile-03首次全字段相等424.391ms，再做上述随机对照。

### Doge端到端

Doge进程运行中，每次bd_read都创建新的Python及.NET helper、重新编译临时块、完整在线采集、写入不可变快照和观察记录；不复用上一次模型值，也未使用持久ASCET连接。

| 测量边界 | 次数 | 中位ms | 样本P95（nearest-rank） | 最慢ms |
|---|---:|---:|---:|---:|
| 首个响应，包含全部采集及快照保存 | 20 | 496.210 | 507.394 | 507.644 |
| 另一轮：全部4页逻辑正文交付 | 20 | 762.368 | 780.592 | 783.751 |

第二轮每次交付32871字节逻辑正文；原始全字段另存在快照raw中。40份原始数据逐字段核对同一旧reader基线，覆盖56节点、120pin、60边、7定义、21方法正文、19依赖参数、24公式绑定。取全部分页不重复在线采集，固定同一snapshot并确认delivery=complete。时间不含模型推理/思考、用户停顿、Doge启动及ASCET启动；包含每次reader进程启动，不是旧快照命中时间。这是本机本组件的有限样本P95，不是跨所有组件或系统负载的SLA。

Doge原生Tool.call完整流程（read→分页→find→inspect→再次read→diff→history）另行1pass/27assertions，1731ms为含两次读等多个工具调用的整个流程。无真实模型推理测试。最终服务新增read_strategy字段，在snapshot/manifest可见full_native_bulk；capabilities明确experimental_bulk_read是否启用及类型边界。

### 接入方式与范围

高速完整导出目前显式启用：启动Doge前设置 `$env:ASCET_BD_BULK_FULL='1'`。工具schema不变，仍用bd_read/bd_find/bd_inspect/bd_diff。未启用时保留已验证的字段批量reader；ASCET_BD_READ_BATCH=0仍可关闭旧路径的单对象字段批量。图批量ASCET_BD_BULK_GRAPH=1只保留为研究过渡路径，与full同时设置时full优先。

不默认替换所有组件读取的原因是类型覆盖：当前full模板支持离散方法图、scalar、1D/2D table、complex class引用。AEB样例覆盖这些类型；独立读取隔离双literal组件（2节点/2pin/0边/0定义）同样与旧reader全字段相等，196.623ms/35帧，无写入。array/matrix/enumeration等其他模型类型及状态机未迁移，未知类型明确报错，不返回伪完整结果。层级图递归已实现但还没有独立含层级fixture的在线验收。完整布局、生效项目/实例配置、numeric implementation仍不是现有全量reader覆盖，不能用本结果声称这些也被读全了。

传输用固定类型标记：字符串保持Cebra原始字节和原系统代码页，字典键也走值编码避免名称中的引号/非ASCII破坏JSON；浮点直接传IEEE字节，避免十进制printString损失精度。解码拒绝重复字典键、非法字节、错误浮点长度。离线15项边界断言通过，包括32/64位1.25、负零、引号/反斜线/换行、空串/nil和损坏数据。它们不是在线完整性证据；在线证据另列。

### 证据及下一步

analysis/bde-experiments/2026-09-30/bulk-01/：full-comparison/results.json；doge-latency-01与doge-all-pages-01的timings/summary/coverage；doge-flow-01；empty-definitions/results.json；validation.json；失败原始输出和失败模板完整保留。Python服务13、比较负例4通过；Doge生产TS模块未改，只有analysis中的独立测量脚本。

复现对照：设置ASCET_BD_BULK_FULL=1，运行scripts/bde_full_read_experiment.py --output NEW_DIRECTORY --before-binary analysis/live-api/AscetReadProbeBeforeBulk.exe --repeats 3。Doge分布测量运行本目录doge-latency.ts，ASCET_BD_LATENCY_OUTPUT必须为新目录，ASCET_BD_LATENCY_ALL_PAGES=1测全部页；无需开启写权限。

下一步以覆盖和可靠性为主：扩展其他模型种类及嵌套层级fixture、严格类型失败/取消/重启边界、跨组件大小的延迟分布；完成后才考虑将高速模式默认启用。继续原BDE实际diff显示、精确连线/删除、状态机和通用回退；这些整体tools目标仍未全部实现。1秒样例验收不替代这些功能验收。


## 2026-09-30：结构编辑与原生绘制接续

已实现隔离结构 profile、10 种 typed 结构操作、局部实际 patch、请求后置条件检查、同 ASCET 进程保留对象回退及 Doge 路由。独立公开 API 核对重连/带边节点删除/带迁移状态删除/迁移动作/改名/迁移创建及恢复。证据及完整边界见 [结构实现报告](E:/Repo/ASCET/docs/bde-structural-implementation.md)，机器可读汇总见 [structural-summary.json](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/structural-summary.json)。较早报告中“尚无结构实现”由本节修正，但不得据此勾选整体业务验收。

`bd_diff(change_id, presentation=show|clear)` 已接线并独立记录展示回执，未完成 UI 验收。在线首次打开状态机 gc 未就绪；第二次 show 成功后真实 expose 回调暴露 CwDrawingArea/gc 类型错误，clear 超时/API 空句柄。修复从 clientData 获取包装对象并捕获异常，尚待在线复测。失败在 doge-structure-overlay-01/02 保留；按用户授权重启后停在数据库 Rebuild now 提示，界面自动操作无法激活。需进入 AEB_1 后先恢复隔离 t8 priority 4→3。旧进程 inverse 已失效，不宣称跨重启精确回退。

提速通用性已补充到 [原生批量方法](E:/Repo/ASCET/docs/ascet-native-batch-method.md)：进程内有界循环+纯值传输、显式恢复记录、图 wrapper 重载/身份、Cebra 平铺参数、route 存储坐标、ESDL alias 及 UI 回调契约。完整 AEB 读取 P95 780.592ms 仍是既有覆盖样例结果，不能外推到任意结构操作。

最终离线验证：Python 42/42 passed；Doge 6 passed、5 live/history skipped、32 assertions，version=1.0.0-ASCET。py_compile通过。证据 analysis/bde-experiments/2026-09-30/structural-validation.json。native callback修复未在线验收；fixture恢复待数据库进入。
# 2026-09-30 当前执行范围：普通 BDE

最新范围进一步收敛为 BDE tools 本身，Code Mode SDK/执行器及通用宿主改造暂缓。本轮修复纯校验拒绝使旧回退失效，并接入共享原生 validate 的 preview。新增 [bde-rejection-recovery-01](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/bde-rejection-recovery-01/result.json)：重连A→占用输入/错误方向的preview与prepare拒绝→A回退成功；原生身份、局部字段及独立公开API恢复相同。完整研究流程891.768ms、954请求帧；9项日志与3项preview离线测试通过。未新增状态机测试，未在线注入apply/store故障，业务原件未写。

用户要求暂缓状态机研究，优先普通 BDE；执行顺序见 [普通 BDE 计划](E:/Repo/ASCET/docs/bde-only-execution-plan.md)。旧记录中的状态机待恢复已解决，恢复证据为 overlay-recovery-01 和 overlay-delete-state-restore-01。

本轮增强普通连接操作的实际后置条件，防止目标端点满足但误删其他对象仍报告成功。9项日志单元测试通过；隔离普通 BDE 上 connect/disconnect/rewire/delete_node 四项在线修改、实际 diff、重放去重、回退及独立公开 API 恢复核对全部通过。结果 [bde-focus-validation-01/result.json](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/bde-focus-validation-01/result.json)。完整研究流程为 541.488 / 529.223 / 531.693 / 516.797ms，不能当作单 edit P95。测试对象已恢复，无业务原件写入。

原 BDE 的网格完整重绘及窗口销毁清理仍未完成，当前结构身份检查也不足以保证任意外部修改检测。整体 tools 尚未完成，本轮不扩大写入范围或声明状态机验收通过。

## 2026-10-03: Class creation partial inspection

An isolated Class with two Module callers and three occurrences was created at
the manifest-bound disposable endpoint39624/32641. Actual input-argument creation
failed after append with `False>>+`; its failed WAL/result and pending marker stay
immutable. The old expression lacked parentheses around `before size + 1`.
The executor fix is implemented, but the formal native creation gate stays closed.

Fresh `bde-class-create-partial-inspect-04` passes only read-only classification:
complete public/native signatures agree; the exact retained AddedInput is the
single appended object; original arguments/return and stored owner graph witnesses
at generations11/12/13 remain valid.120 actual request frames,zero setters,
no creation replay,no restoration,no original evidence change,no source drift.
The original signature remains unrestored. The inspect01 UTF-8 decoding failure,
inspect02 unsupported five-argument block call and inspect03 unsupported
SGMethod name selector remain failed evidence. Inspection now uses explicit UTF-8,
three-argument block binding and the existing method API getter.

Focused offline verification passes58 tests:5 signature-only recovery classifier,
3 endpoint,11 creation and39 Class-tool tests. Adversarial cases refuse changed
original fields,created type/direction/order/identity,extra additions and completed
or unknown restoration states. These tests are not native restoration evidence.

Next: restore the retained originals once, independently compare complete owner graphs/configurations/public values,
then release only the exact failed-request quarantine. If physical restoration
completes but verification fails, inspect/reconcile instead of replaying it.
The original AEB_1 Class hold and complete Class/FLOW/UI/fault/all-family/AEB_Core/
package gates remain open. Offline123 is a preceding source candidate; this
increment does not certify final-source or whole delivery acceptance.

## 2026-10-03: Native Class creation and exact all-owner inverse

`bde-class-create-matrix-02` passes36 actual rounds:three distinct fixtures,four
primitive input types and three repeats. Base/extended/mixed observe3/3/4owners
and3/5/7scopes,including Class and Module callers,a repeated declaration and
three hierarchy levels.120 caller input pins are created and restored;312native
WAL dispatches all complete. Full signature/configuration/public/native values,
actual requested effects and exact original retained-object inverse pass each
round. Fresh `bde-class-create-matrix-audit-01` independently observes all three
final baselines,with zero setters and original matrix files unchanged.

Preserved failures:creation01's False>>+ follows an actual append;restore01
physically restores once but fails a projection comparison;reconcile04 verifies
complete raw observations and releases the exact retained record/quarantine
without setter replay. Detached formal API handles no longer expose name/type;
audited raw elementName and sgClass/basicType/label verify retained fields.
Creation02 completes native inverse but its validator misclassifies regenerated
edge aliases;fresh audit proves its restored baseline. Matrix01 passes12base
rounds then refuses child-edge binding before any signature dispatch. Current
material capture registers the full scope tree before original checkpoint capture.
Missing native identities still refuse;the native binding reader is not relaxed.

Applied graph reloads may reissue edge aliases. Creation validates complete edge
value multisets/counts,including duplicates,endpoints,type and route;it never
uses these values as retained original identity. Exact original alias/generation/
fields/native objects remain mandatory for inverse. Current candidate edge
refusal/classification regressions pass;all failed evidence is unchanged.

Offline124 passes822Python/21Doge/1042assertions/version,with6live skips. Its434
recorded source files recheck with0drift;the subsequently added independent audit
helper is separately validated online. Safety31 preserves29original AEB_1
failure files and the same write hold;original Class restoration is still false.
The matrix ran concurrently with offline checks,so its elapsed timings are not
a performance comparison or P95 acceptance result.

Formal Doge create/diff/idempotency/inverse acceptance is next;native creation
stays disabled in the six public tools pending that integration. Original AEB_1
recovery,Class local inverse/fault/shared/UI,cross-Module/FLOW,remaining ordinary
families,final isolated AEB_Core and package remain incomplete. Native research
matrix success does not grant a whole G0-G7/L0-L3 pass.

## 2026-10-03: Formal Doge Class creation chain

`bde-class-create-tool-matrix-01` passes36 actual Tool.call cycles on3fixtures,
4primitive input types and3repeats.120caller pins are created and exactly restored.
Base/extended/mixed cover3/3/4owners and3/5/7scopes,Module/Class callers,repeated
declarations and three hierarchy levels. The native creation gate is enabled;
ASCET_BD_CLASS_WRITES=1 and the exact isolated Trial_* owner/session checks
remain mandatory. General/business Class creation stays unavailable.

Every cycle independently public-reads the complete original baseline,previews
without recovery/edit allocation,creates through the existing schema and native
executor,checks all actual effects/WAL and publishes a compact receipt. Actual
diff,duplicate apply,changed same-request intent,all-owner history and recovery
have0native frames. A new request using the old snapshot actually connects and
refuses changed complete-owner state before setters;independent public getters
verify the applied state was preserved. Separate inverse preview/execute restore
the complete original native/public/configuration baseline;duplicate inverse
and a second inverse request remain offline and cannot replay the setter.

`bde-class-create-tool-matrix-audit-01` independently audits all312completed
dispatches,all actual effect policies,exact source-bound inverse observations
and zero-frame paths. It then separately invokes the native public-oracle audit
on all3final baselines,with zero setters,unchanged original/native/formal matrix
files and no source drift. This is actual Tool.call/native evidence,not a fixture
simulation or whole case pass. Tools01 fails schema max_bytes and tools02 fails
a test comparator (`prepare_required` was mistaken for inverse eligibility);
both fail before setters and their original evidence remains unchanged.

Offline125 passes822Python tests,21Doge tests/1042assertions andversion,with6
live skips.438recorded source files recheck with0drift. Safety32 separately
preserves29original AEB_1 failed-edit files and the durable hold;original
restoration remains false. All experiment processes exit;owned39624/32641,
other21052/39168 and the full goal remain unchanged.

Performance remains unaccepted. Tool04's base diagnostic sample reports create
3899.96ms/8023frames andinverse2580.79ms/5067frames. These are single samples;
the larger matrix overlaps offline tests and is not a30sampleP95comparison.
The closed-write branch currently forces public per-field observations even
when the environment requests bulk_public_v1. Next,use the fixed audited bulk
read helpers in a controlled write-observation profile,prove complete before/
actual-after/inverse equivalence with public getters,then separately measure
end-to-end edit/inverse30sampleP95. No reduced coverage or arbitrary agent code.

Reproduce into a fresh owned output directory:

```powershell
E:\PYTHON\python.exe scripts/bde_class_creation_tool_matrix.py --manifest analysis/bde-experiments/2026-10-03/bde-isolation-02/bde-7c2bdc20e800/instance.json --matrix analysis/bde-experiments/2026-10-03/bde-class-create-matrix-02 --output <fresh-owned-output>
E:\PYTHON\python.exe scripts/bde_class_creation_tool_matrix_audit.py --manifest analysis/bde-experiments/2026-10-03/bde-isolation-02/bde-7c2bdc20e800/instance.json --matrix <completed-formal-output> --native-matrix analysis/bde-experiments/2026-10-03/bde-class-create-matrix-02 --output <fresh-audit-output>
```

Class return/output/enum/complex creation,local inverse preserving unrelated
Class edits,native faults/64scope lifecycle/shared dependencies/UI/cross-Module
FLOW/allordinaryfamilies/isolated AEB_Core/final package and genuine original
AEB_1 restoration remain required. Whole G0-G7/L0-L3 delivery is INCOMPLETE.

# 2026-10-04 Atomic Context Guard And Forward Prefix Increment

Final-source context-base04/deep03 pass one real isolated round each on39624/32641,
with the deep independent edit at caller index1/Main/h1/h2/h3. Independent summary01
checks112actual ready/publishing native guard assertions,7owners/11proposed effects/
14complete source classifications/3826cumulative captures and all full source/WAL/
public/native/configuration baseline restoration. Fresh audits verify all temporary
records absent and trial bytes unchanged. Publishing attempts have a valid CURRENT
apply phase after2signature controls; guard faults change retained expectation
metadata and refuse before CURRENT setters. External model mutation faults and
actual CURRENT positive execution are not certified by these probes.

The fixed executor now checks complete signature/configuration/source context
within each native call. Complete source seals remain checkable after signature
changes; receipt completion and pending-after-return flags are explicit. The new
offline forward-prefix auditor checks complete dedicated CURRENT WAL ordering,
exact planned/actual effects, full classifications and one unknown return outcome,
ignoring diagnostic replies. It has no actual CURRENT WAL producer/attempt, inverse
WAL or physical recovery acceptance and grants no recovery dispatch.

Offline152passes987Python/21Doge/1042assertions/version,6live skips,508unchanged
final-source hashes. Private12passes94private-export assertions/full live-field
equality with0model setters/dirty editors/new assertions. Safety55preserves29
original AEB_1files and the hold,restored=false,0Cebra. Failed guard-base01's unsupported
five-argument block invocation remains failed; separate ordinary/Class compensation,
zero-step publication abandonment and fresh absence audit pass. Safety54's wrong
store-path audit remains failed;Safety55uses the actual retained original store.

No new performance measurement or whole acceptance is claimed. Ledger72remains
26not_run/1performance fail/1original-recovery blocked. Next is actual physical WAL
production plus inverse/unaccounted recovery before CURRENT setters/stores, then
post-store identity/later ordinary inverse and production Class local inverse.
All remaining types/families/UI/FLOW/AEB_Core/package/original restoration/one-second
writes remain in scope. Goal active;automation paused;state machines/Code Mode deferred.
[Independent evidence](../analysis/bde-experiments/2026-10-04/current-context-summary-01/result.json).
[Exact reproduction](../analysis/bde-experiments/2026-10-04/current-context-summary-01/README.md).

# 2026-10-06：变量声明历史v2候选与读缓存差异

已接入默认关闭的C#/Python历史开关、v2完整声明准备与actual校验、正式日志/head/
回执与恢复查询；必须绑定真实原before、原SGVariable.aliasName字节和实际model OID。
64项相关离线测试及生产桥接构建通过，在线Smalltalk编译通过；尚未执行变量历史。
零写入preflight拒绝原after声明CURRENT漂移，完整witness unchanged并释放，失败保留。
只读diagnostic通过：5变化、18新增集中在三个SGItemWithSpec惰性cache根及LookupTable
存储，非图形拓扑差异；反编译源码有对应getter初始化/填充路径，首次调用的因果定位
尚未受控验证。Python严格分类器不授权inverse，非cache变量/配置/数据变化仍拒绝。

下一项：原生守卫和正式准备/实际日志必须显式包含这批读取副作用；不能排除cache字段
或重写原forward证明。然后原对象undo/redo/undo及最终收尾。整体与完整case仍false，
全部原要求保留。详见analysis/bde-experiments/2026-10-06/bde-variable-history-status-01/README.md。

# 2026-10-06 populated rejection pagination and exact finalized continuation

The first populated-matrix-03 case passed preparation, creation, actual diff
audit, same-object undo/redo/undo and finalization preparation. Its finalization
returned a durable `finalized` result with matching original native/public/model,
configuration and native identity witnesses. The driver failed while validating
the subsequent retirement-barrier rejection because it assumed a one-page error.
The full 21873-byte document was already delivered in two Tool.calls (11863 +
10010 body bytes); the first header intentionally describes a partial page.

The shared verifier now checks an explicitly expected error on the first call
and successful exact cursor-only read continuations, with unchanged complete byte,
document and budget checks. Ten focused offline tests and recomputation of the
original raw replies pass. Only the verifier, finalization experiment driver and
one new test file changed; native setters, journal and retirement policy did not.

The same-epoch completed original record was resumed without native finalization
redispatch. `bde-populated-resume-04` passed 11 formal calls, complete original
restoration, material/witness release and namespace retirement. The failed matrix
and driver verdicts remain false. The post-release audit passed; whole
populated36, message topology60, complete required cases and whole delivery are
not accepted by this increment. Business-model calls remain zero.

Evidence: [raw page checks and commands](../analysis/bde-experiments/2026-10-06/bde-rejected-paging-controls-01/README.md),
[exact finalized continuation](../analysis/bde-experiments/2026-10-06/bde-populated-resume-04/result.json),
[post-release audit](../analysis/bde-experiments/2026-10-06/bde-populated-resume-audit-04/result.json).

# 2026-10-06 NEWENUM fresh prepared protocol candidate

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

# 2026-10-06 19:05 原对象与引用持久记录读取增量

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

## 2026-10-06 19:32 NEWENUM 创建前后实际 diff 候选

原工厂观察器的actual_after_diff是after→check，不能作为创建前后差异。本轮新增
固定原生identity bridge及完整Python投影；以原snapshot对象全集为before，使用
原内存对象身份对齐独立collector token，捕获旧保留对象与新body的联合after。
旧不可达数组/值仍采集；不把不可达当DB删除。全部field/value/collection变化及
新对象保留，重建after后逐项核对；agent摘要最多32处，完整delta另存。

首轮17Python通过但ST词法括号失败已保留，修正后当前19项离线控制和1词法通过。
当前7输入固定x86桥接编译通过，129归档/SDK/exe/current/精确派生变化/递归原档
独立核对通过。数据与身份pair为合成，不是原生Smalltalk编译、真实工厂创建或
实际NEWENUM diff通过，完整持久域/原子before绑定/inverse仍未完成，权限关闭。
新入口未知回执不清理临时块，但继承入口及真实故障清理/持久化没有验收。

原矩阵35/36完整通过，末项send_receive_message/log/exported在history-prepare；
无failed stage，原PID48840/56296及启动身份继续存活。后续waiting、0下游stage，
60消息连删未开始。798/11冻结源码hash无drift；本轮0native/0业务调用，未fresh
核对业务恢复hold。全类型/跨层通路/完整局部回退/原BDE显示/视觉/故障/持久化/
真实Doge/AEB_Core/业务原件恢复/包/43required保留，全目标active且未完成。
[实现、证据与命令](../analysis/bde-experiments/2026-10-06/bde-newenum-creation-diff-development-01/README.md)。

## 2026-10-07 v6 持久 owner 写前捕获

复用 PID47348 / port32642 / epoch `47348/2026-10-07T02:56:42.3897732Z`，没有关闭、启动或重启 ASCET。新 `native_commit_prepare_v6` token `edit_5068c378c5971b65951f67747ee877857c72d644cd78a816a71082199baf024a` 在同一次 prepare 中捕获 component `SGClass` 与 `SGTopGraphicsBlockDB` source 两个真实持久 owner。

| 验证项 | 结果 | 范围 |
|---|---|---|
| 两个 owner 身份 | 通过；模型 direct image、DBObject、20-byte key/OID、共享 DBReferenceInterface32 均绑定 | component + `specSourceInternalOrNil`，不是全 transitive closure |
| 三类记录 | component 3/3 完整；source owner 与 referenced-by 完整；source owner-references 为明确 `CTError errorNumber=101` absent | 零字节 absent 记录保留 error/CTree 前后身份，不制造空 before |
| 原有模型/引用基线 | 通过；396 SG 对象、10 根、20,834 records、125,010 events | 继续只读，current owner check=false |
| 写入边界 | 通过；setter=0、store=false、apply=0、commit/inverse=false、graph unchanged | 仍未授权持久写或回退 |
| 传输成本 | request 2,433,440 bytes/21,145 frames；response 180,935,184 bytes/21,144 frames；约108.7s | 完整审计准备成本，不是日常 agent `bd_read` 性能 |

首轮失败和编译错误材料分别保留在 `bde-persistent-owners-prepare-live-01/02`，没有重发旧 token。完整证据和离线复算见[v6冻结摘要](../analysis/bde-experiments/2026-10-07/bde-persistent-owner-increment-01/README.md)。下一步是 fresh `SGTopGraphicsBlockDB` serializer 的私有 payload，再做 unchanged reference list 的受限 record rewrite；持久 flush、当前冲突、精确 inverse、完整 BDE 类型/跨模块通路和43 required仍未完成。
## 2026-10-07 exact payload diff contract

在已有 retained source payload preview 之后，新增 `scripts/bd_commit_payload_diff.py`。它要求同一 record class、fixed schema、owner/query/file key 和完整 logical/allocated bytes；输出连续 logical byte ranges，结构长度变更单独标记，allocation slack 单独观察。`three_way_patch` 仅保留 current 的非重叠修改；重叠字节、长度变化或 allocation tail 变化均在 native 调用前拒绝。

离线 12 项控制通过，`native_calls=0`，当前 ASCET PID47348 未重启。资源 summary 现在会自动输出 `$logical_bytes` 的 offset/length/hash 范围，同时保留完整 WAL 字节。该结果只证明 patch/冲突合同、summary 投影和输入校验，未证明 native rewrite、flush、实际持久 diff 或 inverse；这些仍是下一步隔离组件实验。

[冻结结果](../analysis/bde-experiments/2026-10-07/bde-payload-diff-contract-development-01/result.json) · [说明](../analysis/bde-experiments/2026-10-07/bde-payload-diff-contract-development-01/README.md)

同一隔离 token 的 v6 source owner record 与 serializer preview 已做真实 payload 投影：6,334-byte logical/allocated payload，owner key 和 SHA-256 一致，logical/allocation-tail range 均为 0。该投影仍是读取之间的核对，不是 edit after、持久 flush 或 inverse。

[真实投影](../analysis/bde-experiments/2026-10-07/bde-payload-diff-preview-live-projection-01/result.json) · [说明](../analysis/bde-experiments/2026-10-07/bde-payload-diff-preview-live-projection-01/README.md)
# BDE tools experiment report

## 2026-10-07 native write dispatch audit

本轮保持 ASCET 进程运行，只读审计反编译写入路径：`ASDPersistenceController` → `DBInterface32` → `CTreeInterface` → `CTIFil`，并核对 `commitTransaction` 与 `abortTransaction`。前三级源码转发和 `CTIFil` selector 元数据均可复现；`CTIFil` 叶方法体未恢复，`writeToDatabase:` 写后还会清理/设置对象状态。审计结果没有授予任何写入或回退权限，native 调用数为 0。下一步是为新鲜隔离组件设计同次 dispatch 的 before/after、写后状态和 abort/inverse 证明，未闭合前继续拒绝原生写。

[审计结果](../analysis/bde-experiments/2026-10-07/bde-commit-write-dispatch-audit-01/result.json) · [审计说明](../analysis/bde-experiments/2026-10-07/bde-commit-write-dispatch-audit-01/README.md)
# 2026-10-07 guarded write-plan projection

反编译方法表的二次审计确认 `CTIFil` 六个写/增改 selector 的 bytecode hex 完整且长度一致（`leaf_bytecode_complete=true`），但仍没有可审计源码语义，因此 `leaf_semantics_proven=false`。真实 retained source payload 随后经过 agent-facing `bde_commit_write_plan`：严格字段投影、三方冲突检查和 native dispatch chain 均可生成。在线投影结果为 `CTreeSearchObjectRecord`、6,334 logical/allocated bytes、0 个变更范围，状态为 `blocked`；没有 Cebra/native 写调用。阻断原因仍是语义/事务 inverse、持久 rollback/inverse selector、write 授权和 inverse 授权，不能算持久编辑或回退通过。

[README](../analysis/bde-experiments/2026-10-07/bde-commit-write-plan-development-01/README.md) · [result-05](../analysis/bde-experiments/2026-10-07/bde-commit-write-plan-development-01/result-05.json)

叶 bytecode 独立解码结果：[说明](../analysis/bde-experiments/2026-10-07/bde-ctfil-leaf-bytecode-audit-01/README.md) · [result](../analysis/bde-experiments/2026-10-07/bde-ctfil-leaf-bytecode-audit-01/result-02.json)
## 2026-10-07 Message 拓扑引用差异合同修正

复核 `bde-msg-wires-04` 的首项失败：native connect 已完成，失败发生在后置声明见证，而不是连接执行。该拓扑提交新增了 `SGModule` 与数据库记录的入站引用；原始严格校验器把它们当作“声明体变化”，所以矩阵在第一项停止。现已将 `scripts/bd_message_declaration_before.py` 的默认严格模式与显式拓扑模式分开：拓扑模式仍逐字比较 before/current 的对象、字段、类型、配置和实际 body diff，只允许引用列表变化，并返回排序后的 `added/removed`，供实际 journal 记录。拓扑驱动在最终释放前增加严格声明检查，避免把残留引用当作恢复成功。

离线验证：消息声明 16 项、连接/结构相关回归 50 项、消息拓扑 oracle 26 项通过；Doge BDE 工具套件 22 项通过、6 项跳过。引用差异已经能由显式 validator 返回，但尚未接入生产 `bd_connect_journal` 的 native receipt。没有向 ASCET 发新的 native write，没有重放旧 epoch，消息连删完整矩阵仍保持 0/60，43 required 仍为 0 pass / 42 not_run / 1 blocked。该增量只修正了验证/记录门槛，不能宣称在线消息连线、删除或逆操作已经完成。

[合同结果](../analysis/bde-experiments/2026-10-07/bde-message-topology-reference-delta-contract-01/result.json) · [复现实验说明](../analysis/bde-experiments/2026-10-07/bde-message-topology-reference-delta-contract-01/README.md)
# 2026-10-11 Module reference journal increment

生产代码新增 `bd_module_references.py`，接入原连接材料和正式 journal/diff。Module 的 loaded inbound 与 database-record inbound 分别记录，禁止漏项、重复 OID、非排序数据、generation 重绑和伪造权限。v2 收据绑定原编辑 token、component OID 和 Main generation；prepared 不允许捏造 after，actual 必须保持原 before。原始材料留在 WAL；agent diff 只返回实际 added/removed 与摘要。已捕获 actual 的回复丢失可只读恢复，不重复 apply。

验证：73 项离线控制通过；x86 C# bridge 编译通过；generated guard 与 canonical 完全一致。没有运行中的 ASCET，因此 Smalltalk 在线编译、执行、BDE 显示与持久化 inverse 尚未验证。显式 profile 默认关闭，保留 v1 路径；v2 native history 拒绝执行图形 inverse，直到持久引用 patch 闭合。旧失败矩阵未重放，required gates 未升级，`full_delivery=false`。

结果：`analysis/bde-experiments/2026-10-11/bde-module-reference-journal-01/result.json`。

## 2026-10-11 Finite raw-reference capture, v3 preparation and raw inverse planning

固定内部查询直接读取 Module、Main 源码 owner 的 outgoing/inbound 记录，以及已有 outgoing 目标的 inbound 记录，不进行整库 census。两组当前观察分别覆盖 13/14 次记录读取、9/10 个目标；两次观察全部字段和字节一致。undefined-record 101 依已有原生接口语义明确保存为 absence，未伪造空记录。源码 owner/DBObject/backend 及其 specification 身份在读取后复查；新创建的 getDiagram view wrapper 不作为持久 owner 身份。

生产 `native_connect_material_v3` 的 prepare/inspect/discard 在线通过。原始记录冻结在本次 prepared native record 上，后续检查比较完整确定性编码；在两层拒写守卫后 native/public before/after 完全一致，准备 token 已释放。最终 preflight 含 434 请求帧/433 响应帧、304,526 请求 bytes/372,865 响应 bytes；包括编译、独立 oracle、检查与清理，不是日常读取性能。显式 host apply 请求收到 no-mutation refusal，未编译或派发 Smalltalk apply；Python apply 更早在任何原生 I/O 前被拒绝。无 ASCET 启停、业务写入或新 fixture 创建。

实际 journal/diff 合同加入原始记录摘要和 raw-tail 变化；新 reciprocal 目标缺少 original before 时，显示 not_captured，绝不从 after/CURRENT 制造 before。原始字节三方逆规划对同尺寸记录仅合并原 edit 的变更位置，保留当前无关字节；改尺寸要求严格 actual-after；任一冲突、缺原材料或不支持的 absence lifecycle 都撤销整组候选。138 项相关离线控制通过，含 synthetic WAL/diff/recovery scenarios；没有真实 attached/edit/inverse，因此不增加完整生命周期通过数。

失败全部保留：live01 使用瞬态图形 view 的对象身份导致后守卫失败；live02 保留错误但完整采集合同拒绝它；live03 仅通过 incomplete observation；preflight01 使用 Dictionary identity equality 导致值比较失败；increment01 缺 PYTHONPATH 导致控制导入失败。修复后 final live06/live07、preflight05 与 increment02 通过。在线输入源码保持一致；仅离线报告脚本在 preflight 后修复，单独归档并明确记录差异，不据此重新执行未变化的 native path。

[增量报告](../analysis/bde-experiments/2026-10-11/bde-finite-module-reference-increment-02/README.md) · [结果](../analysis/bde-experiments/2026-10-11/bde-finite-module-reference-increment-02/result.json)

