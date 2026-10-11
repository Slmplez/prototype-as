# 隔离 BDE 持久化 owner record patch

2026-10-11：固定 `bde_persistent_owner_patch.st` 已在原私有 ASCET 实例运行；source 与 Module 记录的六阶段版本字段变更、分项 inverse、redo/inverse、冲突拒写和独立 fresh 恢复均通过。此层不能代表 BDE 图形 payload 序列化、模型/source/cache 恢复或生产 connection inverse 已完成。

## 读取与精确定位

`bde_persistent_owner_records.st` 仅采集隔离 `Trial_*` Module 和 Main 的原 `SGTopGraphicsBlockDB`。返回两条完整 `CTreeSearchObjectRecord`，包含真实 query/file key、header、logical bytes、allocated bytes、class/name/version/object/reference state；前后参考 collector 精确相同。普通 agent 不需要每次接收 raw bytes，完整材料留本地恢复证据。

Search object record 的 global ID 不是连续 raw `[2:22]`：反编译 `CTreeRecord>>globalId` 拼接 `pcId, tsThisVersion, transactionId`；三个 getter 的 Smalltalk 1-based offsets 为 3、11、124，Python 拼接 `[2:10]+[10:20]+[123:125]`。新测试使用非零 transaction 与不同 first-version 字段，避免仅对全零样本通过。

## 执行合同

Native factory 固定绑定 collector、component，返回准备函数，接收完整 expected image 与最多两条 patch。每条只有五字段：`global_id, role, operation, current, candidate`。操作限定 `write_existing_owner_record`，不创建或删除 owner 身份。每条 raw 最大 4 MiB，总候选最大 8 MiB。

写前在 prepare 与 execute 两次检查完整 CURRENT、owner/source/backend/leaf/file 原身份。候选不改变 route、class/name 或不可变 search header；保留完整 raw/prefix/extents。由真正 `CTreeSearchObjectRecord` getters 独立检查候选 key、class/name、blob length 和三个 state/version 字段。深复制导出与私有执行材料分开，执行一次后再调用明确拒绝。

每次结果保存完整 before/candidate/actual、每物理记录 outcome 和真实计数。失败保留已执行 outcomes，不自动 inverse 或 retry。最终完整 owner/reference 观察必须等于候选。

## 局部 inverse

`bd_persistent_owner_patch.inverse_request` 以真正 original before、确认 actual after 和新 CURRENT 生成固定参数。未由该 patch 修改的另一 owner 保留 CURRENT；已等于 original 的 owner 不再次写入。相同 owner 的其他修改返回冲突，serialized payload 不做逐字节三方拼接。引用发生变化时拒绝只恢复对象记录，必须与原 reciprocal patch 及模型/source/cache closure 一同验证。

此 Python 层不调用 native、不写 WAL、不授权 production inverse。后续 formal journal 绑定仍需实现与在线验证。

## 在线覆盖

- 两条原 owner raw no-op 写回及独立 fresh 双读通过，5526/4554 bytes 原样恢复。
- 实际 owner 生命周期：source version+1 → Module version+1 → source 原 raw 恢复（Module 的修改保留）→ Module 原 raw 恢复 → source redo → source 原 raw 恢复；6 次 leaf write / 0 delete。
- 7 个 native preparation refusals：额外字段、删除操作、外部 key、boolean extent、immutable header、getter mismatch、重复物理记录。
- 6 个 replay refusals、1 个 stale prepare refusal、1 个 prepare 后 stale execution refusal；全部真实 writer 计数为0。
- 返回 before/candidate 篡改后空执行器仍读取正确私有材料，0 write/delete。
- 新连接 owner 两读、reference 两读、public Module bookends 精确相同；zero-native confirmer 只清本次 pending。

失败 `owner-noop-live-01`（Python 误套连续 key）、`owner-patch-compile-01`（漏括号）、`owner-patch-live-01`（旧 Dictionary 无 removeAll）保留原 verdict，均发生在 fixed writer 授权前；不冒充完整 native terminal proof。

证据：[本轮增量](../analysis/bde-experiments/2026-10-11/bde-owner-patch-increment-01/README.md)。未启停 ASCET，旧 epoch pending 与业务恢复 hold 不变。正式 v3 apply/history 门保持关闭；Message 完整矩阵仍0/60、43 required 不升级，整体交付未完成。
