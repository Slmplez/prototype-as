# Typed BDE message creation

2026-10-06 双向消息新增：原send_receive_message/udisc/local已完成完整CURRENT缓存
核对、原对象undo/redo/undo、完整原状态收尾及释放后独立核对，原创建未重发。
公共API的send/receive/send_receive是互斥类型标志，内部SGVariable的SEND/RECEIVE
位分别表示通信能力；双向消息的两个原属性位仍严格核对。新增受限的完整材料
cache-read路径不开放普通attached/original守卫。109相关离线测试及构建通过。
限定组合不证明全消息/已有声明Module/连删/跨层通路，完整43required仍未完成。
[原失败、修复及完整证据](../analysis/bde-experiments/2026-10-06/bde-message-duplex-status-01/README.md)。

2026-10-06 最新原状态收尾：独立默认关闭
`ASCET_BD_CREATE_DECLARATION_FINALIZE=message_body_original_release_v1` 已在
receive_message/cont/imported原对象三方向历史之后在线通过。严格绑定真正creation-
before完整声明/cache/schema与最新WAL/namespace、原SGModule/DBProxy/type/role/scope
和两组引用。9次正式调用，allocator966→962，1source/0declaration primitive；完整原
配置/native/source/order/alias恢复，原材料/before witness释放，namespace30→31，
旧snapshot实际写前conflict，pending=false。81相关离线控制及构建和零写入prepare
通过，另6项v5恢复控制仅属离线模拟；释放后独立在线基线核对与0帧历史请求通过。
此finalization明确关闭redo；普通局部undo/redo继续使用独立history合同。

本单例不证明非零声明收尾、send/duplex全部类型/scope、已有声明Module、enum/complex
或完整跨Project/A2A/XPass通路。下一项是扩展primitive-message覆盖及正式连删生命周期。
[当前完整收尾、证据与复算](../analysis/bde-experiments/2026-10-06/bde-message-finalization-status-01/README.md)。

下方“message完整原状态收尾待实现/原材料保留”为此前历史阶段。

2026-10-06 最新原对象历史：独立默认关闭的
`ASCET_BD_CREATE_DECLARATION_HISTORY=message_body_exact_v1` 已在隔离
receive_message/cont/imported通过正式undo→redo→undo，18次Tool.call/3次实际历史。
原SGModule/DBProxy/primitive type/role/scope、完整原声明/configuration及两组引用
守卫独立于普通SGClass变量合同。每代完整actual/WAL/cache origin/head保存；
三条回执verified_local，终态查询不重发，diff/重复请求0连接0帧，pending=false。
175项相关离线控制与生产/eval构建通过；新鲜独立终态核对及封存复算通过。

消息typed原图恢复，完整original_restored仍false。原material和原before witness
继续保留，source allocator高水位保留redo；独立SGModule finalizer及原声明/cache/
allocator收尾、release/retire尚未实现，不能使用变量profile。此限定结果不开放
enum/complex消息或宣称完整Project/A2A/XPass、send/duplex全类型通路达标。
[当前正式历史、核对、复算及下一项](../analysis/bde-experiments/2026-10-06/bde-message-history-status-01/README.md)。

下方“消息完整原对象history尚未实现”为此前创建阶段记录，保持原版本。

2026-10-06 最新正式材料路径：默认关闭的 `message_body_v1` / `identity_v1` /
`staged_v1` 已在隔离 Module 创建一个 receive_message/cont/imported，实际完整
声明、图形、source和两组owner引用进入正式WAL。原owner为DBProxy，核对原字段
指针、数据库OID/class与解析后原SGModule，角色API必须为EtasAPIModelReceiveMessage。
首次后像校验失败从保留原材料恢复为applied_observed，创建未重发、pending=false；
原失败结果保留。独立在线terminal audit通过，bd_diff/重复请求各0连接0帧；105项
相关离线控制及生产/eval构建通过，另有0live封存复算，不等于完整消息场景验收。

当前正式创建材料和原before witness仍保留，message的完整原对象undo/redo/undo及
原状态收尾尚未实现验收。此路径不能使用变量history，不能重发原factory，也不授权
enum/complex消息或完整Project/A2A/XPass通路。下一项为独立SGModule历史合同，严格
绑定角色/type/scope/proxy身份、完整配置与两组入站引用，再零写入prepare和真实
同对象历史/收尾。历史API36场景证据保持原版本，不能替代这一完整原生材料生命周期。
[当前正式创建、复算与未通过项目](../analysis/bde-experiments/2026-10-06/bde-message-create-status-01/README.md)。

下方“当前0声明/0消息、尚未绑定正式prepare/WAL”为此前study状态。

2026-10-06 新增独立原材料collector/study：Module BDE实际owner为SGModule，与普通
SGClass变量profile分开；空隔离Module的187原对象/177槽/13完整LookupTable/4配置根、
含Project的两组owner入站引用、跨连接check、namespace pin/提前退休拒绝与释放在线
通过。44相关离线控制及生产构建通过，0消息factory/history/业务写入。测试Module
当前0声明/0消息，尚未绑定正式prepare/WAL；新collector仅支持primitive原类型，
enum/complex需独立完整定义材料。不提升下述历史API证据为完整原对象生命周期。
[本次边界与后续正式接入](../analysis/bde-experiments/2026-10-06/bde-message-original-material-status-01/README.md)。

2026-10-02. Message declarations and occurrences use the existing `bd_edit`
`create_block` operation. The scope and communication role are independent.
An imported sender and exported receiver are valid ASCET declarations; their
Project binding still requires a separate verified Project observation.

```json
{
  "snapshot": "fresh_complete_structure_snapshot",
  "request_id": "create-mode-receiver-01",
  "operations": [{
    "op": "create_block",
    "kind": "receive_message",
    "name": "Mode",
    "model_type": "enum",
    "definition": "Types\\ModeType",
    "message_scope": "imported",
    "position": [320, 240]
  }]
}
```

The example is a contract, not an existing library path. Supported roles are
receive_message, send_message and send_receive_message. Types are cont/sdisc/
udisc/log or enum with an existing full library definition path. Explicit
message_scope accepts local/imported/exported. Omission retains native defaults:
receive imported, send/send_receive exported. Message initial values and shared
new enum creation in this operation remain unavailable.

`global_label` is the declaration name in the audited SGElement implementation;
no separate global-label setter is invented. Actual model rows include message
scope, role flags and label. Enum rows additionally retain definition path/OID
and ordered items. Standard graph actual patches and native recovery records
cover creation, precise pin connections and occurrence deletion. Deleting an
occurrence preserves its declaration; reverting creation removes only its owned
declaration after reference and native order checks.

The original six tools handle preview, replay, automatic diff, after_snapshot
continuation, inverse preview and restoration. Calls are restricted to isolated
Trial_* Modules under the structural write switch. Class owners reject messages.
Message owner references are sampled during prepare and checked before apply or
inverse. This does not establish complete Project-dependent channel recovery.

Source chain: EtasAPIDiscreteSpecification addReceiveMessage/addSendMessage/
addSendReceiveMessage -> SGVariable role bits and scope; EtasAPIModelElement
setScope -> setToLocal/Imported/Exported and autoCommitDatabase;
EtasAPIPrimitiveModelElement setEnumeration -> native sgClass assignment and
owner modification. All calls execute within the fixed compiled Smalltalk
kernel, avoiding a remote request for every field/setter. No arbitrary caller
code is accepted.

`analysis/bde-experiments/2026-10-02/bde-message-creation-03/result.json`
passes all 36 cases across three rounds: three default roles and each role in
each scope, numeric/logical/enum declarations, typed pin connections, occurrence
deletion and exact inverse. Complete native observations, public graph multisets
and model metadata return to baseline. Ordered enum items are never sorted.
Stale snapshot and connected-creation inverse previews reject without setters;
recorded diff/replay send zero frames. Baseline is restored, outstanding=[], and
runtime source hashes are unchanged. Pilot02 and the initial public iteration
order failure in creation01 remain available. Complete FLOW/visual/Project
lifecycle gates remain unaccepted.
