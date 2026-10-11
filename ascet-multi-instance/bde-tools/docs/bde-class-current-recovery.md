# Class CURRENT 独立恢复协议

当前是默认关闭的隔离研究路径，尚未启用生产 Class 局部回退。

最新 release unknown 已有实际证据。CURRENT release 在既有 candidate 中保留
只读 witness 后删除 publication record；witness 重新核对完整 native 原始字段、
对象身份/参数/返回值、源码、配置和封存计划，只能 classify，不能执行。candidate
清理后失效。旧非 CURRENT 发布没有 execution 材料，不创建这个证明。

fresh publication_record_present 唯一判断调用前未执行/已完成丢回执。完整公共
观察也必须等于 durable CURRENT。已完成只写新的 release_reconciled/finished，
0 native dispatch/0模型setter；原 completion 不补写，release 不重发。没有证明、
身份过期或实际状态改变仍拒绝。3 实际 ready/restored、base/deep 案例累计核对
10 owners，完整 CURRENT/原始基线与 temporary absence 全通过。35 聚焦测试及
Offline161（1030Python/21Doge、6live skips、527源指纹）通过。

仍未验证完整 native stale-witness/内部 release 失败矩阵、setter 内部失败、真正
断连/重启与生产 Class 局部回退。旧 AEB_1 hold 仍存在，未恢复。后文是旧版本。
[最新实际证据](../analysis/bde-experiments/2026-10-04/current-release-summary-01/result.json)。

2026-10-04 最新：`--prior-recovery <recover-raw.json>` 可重复提供，必须按时间
顺序包含所有前序段。pending 原子绑定最新 recovery head；连接前检查 head
与完整历史，每次 native 派发前再检查原件与前序 WAL。新 intent 从完整 fresh
classification 唯一确认全历史的实际状态；不补写旧日志，不跳过已发生的
inverse。metadata 完成丢回执、inverse 完成丢回执、restore_store 调用前故障
已在隔离 base/deep 实测两段/三段续接并恢复全部 CURRENT/原始基线及 absence。

无故障完整 cycle 的 `--current-complete-study` 也已通过 base/第三层 hierarchy
各一轮，7 owners，完整存储/逆向日志与后续普通/strict Class 回退兼容。
它要求 preparation、execution study、显式环境 opt-in 且没有其他故障配置。
unknown release、setter 内部失败、真实断连/重启、生产 Class 局部回退仍不接受。
以下段落是旧版本协议及历史结果，不能用其中的旧限制覆盖本段最新证据。

`bd_class_current_prefix.py` 检查完整正向/逆向物理日志；
`bd_class_current_recovery.py` 从完整分类和已确认步骤选择下一步回退；
`bde_class_current_recovery.py` 在同一个隔离实例锁内分类、生成独立证明、
调用固定 C# 恢复入口并再次检查实际恢复日志。Agent 不能提供 Smalltalk
源码、任意 selector 或执行句柄。

恢复入口要求原始 raw bytes、WAL 校验链、token、完整 owner 顺序、数据库
身份、进程 epoch 和原 pending 标记全部匹配。第一份分类和派发前的最新
分类必须完整相同；每次恢复派发重新检查原件 bytes、WAL、进程、数据库
和未保存编辑器。原失败日志不增加 completion、不重写结果，也不重发
原正向操作。恢复使用单独的 `current-recovery.wal`。

恢复规则：

- `ready`：完整 native/public/source/configuration 基线观察后，只释放记录。
- 部分正向发布：先恢复签名，再按 owner 逆序恢复已执行的实际 primitives。
- 部分逆向恢复：从已确认的逆向计数继续；已恢复 owner 不再执行。
- 保存附带变化：使用实际回执里的封存计划；`restore_store` 返回后重新读取
  动态逆向步数。不能把 changed fields 数量当作逆向操作数量。
- 完整恢复后：比较公共观察和完整 native/source 分类，记录观察、派发 release，
  写 terminal，核对原 pending 后再清除标记。

58 项针对性测试通过，包含完整 cycle、12 个逆向边界的已执行但 completion
丢失和确认未执行、动态集合计划、日志篡改拒绝及未知 release 保留隔离。
这些是模拟 WAL 测试，不是实际 CURRENT 修改验收。

在线 base 和 deep (`Main/h1/h2/h3`) 共 7 个 owners 的首次派发故障验证通过：
`step_started` 与 pending 已落盘，但故障发生在首次 native 调用前。
独立分类识别 unknown 未执行；完整观察后，各用 1 次 metadata release、
0 次 CURRENT model setters 清除 pending。随后普通编辑和 strict Class 创建
分别回退，fresh audit 确认 candidate/material/publication 全 absent。
首次 base 驱动器还出现后续 `KeyError`；该失败保留，驱动器已修正为保留
隔离并直接要求专用恢复，不继续请求普通回退。

2026-10-04 又完成三组实际 CURRENT 故障恢复：base primitive、base Store 和
deep `Main/h1/h2/h3` primitive，共 10 个累计 owners。固定故障发生在原生动作
返回后、executor 记账前。完整 source/native/signature/configuration 分类唯一
确认 after；先用 `reconcile_action` 补记原动作，各调用 0 次新 model setter，
然后只执行剩余因果回退。三组完整 CURRENT 和原始普通/Class 基线均恢复，
fresh audit 确认临时记录全部 absent。

未记账的 Store 可以只改变持久化源码、没有内存字段 diff；仍按完整源码
确认状态。分类其他 owner 时，完整 context guard 聚焦唯一 active owner，
其他 owner 继续检查其准确的当前/候选源码角色。不开放任意源码或 selector。

第一次 base metadata 恢复因四参数 BlockContextTemplate 调用失败，原结果和
日志保留。已移除未使用参数；`--prior-recovery <recover-raw.json>` 仅允许
上次日志只有 intent + 第一次 reconcile_action started、完整分类和全部物理
计数/历史未变时再次补记。Python 与 C# 都重查前次 WAL checksum 和完整证明；
不续发原 setter，也不支持其他恢复步骤的任意重试。首次 Store classification
的完整 guard 失败也保留，修正后由新恢复记录证明成功。

执行入口仍默认关闭；研究模式只开放固定故障命令。无故障完整 CURRENT cycle、
unknown release 的 fresh absence、其他恢复 WAL 中断续接、生产 Class 局部回退
和后续编辑兼容性仍未通过。同 epoch 恢复不能冒充重启恢复，没有新性能结论。

[实际动作故障证据](../analysis/bde-experiments/2026-10-04/current-unaccounted-summary-01/README.md)。

[独立汇总](../analysis/bde-experiments/2026-10-04/current-protocol-summary-01/result.json)
及 [复现命令](../analysis/bde-experiments/2026-10-04/current-protocol-summary-01/README.md)。
