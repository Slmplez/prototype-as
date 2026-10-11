# Finite reference leaf executor contract

当前实现是隔离 Module/source 的有限持久引用执行层。它已在线验证创建、变长、
原 raw 恢复、删除、重做及拒写。正式 connect/history v3 仍需 model/source/cache/
owner-object 闭合，不能据此开放。

固定原生模板 `bde_finite_reference_patch.st` 依次绑定 decoder、collector、
component，得到接受 `expected` / `patches` 的准备器。每条 patch 恰有五字段：
`global_id`、`role`、`operation`、`current`、`candidate`。只允许当前隔离 Module
和 Main source 两个原 key、最多四条物理记录；外部共享目标不由此授权。

| operation | 条件 | 叶操作 |
|---|---|---|
| delete_record | 当前存在，候选为明确 CTError101 absence | deleteRecord: 和 undefined readback |
| create_original_record | 当前明确 absence，候选为保留原完整记录 | 完整 raw 分配、复制、write/readback |
| write_original_or_merged_record | 当前和候选都存在 | 完整候选 raw write/readback |

准备与 execute 前均核对完整 CURRENT、原 owner/source/backend/file 身份和
物理 key。候选 reciprocal membership 在任何 leaf call 前独立复算。重复
patch、未知 role/profile/tag、截断/额外字段、错误 header/类型/大小、未捕获
的新目标或不一致双向引用均拒绝。原 header 前两字节和未解析 tail 原样保留。

准备结果是深复制，execute 使用私有冻结图像。一次 execute 消耗材料；重复
调用或准备后 CURRENT 变化返回零 writer 失败。执行失败保留实际计数，不自动
重试/逆向重放。每实例唯一 live lock、fsynced before/dispatch、cross-store
pending 由宿主保留。

回执包含完整 before/candidate/after、每条物理记录 outcome 与调用计数。
CTError101 的 sysio 文本只在执行后单列为诊断差异，实际完整观察不修改；
写前 CURRENT 仍严格。现存 raw、其他 error 字段、身份、成员和 tail 的变化
都不能通过诊断归一化隐藏。

Python `inverse_request` 将三方提案编码为固定参数；journal
`persistent_reference_inverse_request` 只从已确认 WAL 取原 before/actual after，
调用者只能给 CURRENT。二者不调用 native、不追加 WAL、不授权 production
history。旧 production planner 的 absent 拒写门保持。

[最新实验与复现](../analysis/bde-experiments/2026-10-11/bde-finite-patch-increment-01/README.md)。
真实连接、通用持久 inverse、跨 Module、原 BDE 完整显示和最终交付仍未完成。
