# BDE source 投影与原生对象身份

2026-10-06：此机制已在隔离普通 Main 的连线历史中使用。三结构的独立 literal
保留分别有记录版本的在线证据；当前版本在打开原编辑器的operator_fanout中通过
独立move、端点几何冲突及literal回归和四代原画布绘制。它不代表所有block、
Class、hierarchy或跨Module流程已经验收。

## 问题与实际修复

ASCET 的 store 可以重生成 source 包装对象。框图节点、Point、String、source
record 和集合之间存在共享引用，仅比较文本或坐标会漏掉错误恢复。逻辑 source
投影需要把同一结构位置的新包装对象对应到历史记录，但不能同时把后来移动
产生的实际原生 Point 映射回脱离活动图的旧 Point。

原先独立 move B 后撤销 connect A，在 shared_target 阶段被正确拒绝：native
三方目标保留 B 的新位置引用，source 逻辑目标却带回旧几何引用。没有执行 A
inverse setter；B、A 随后准确清理，失败记录保持原 verdict。

现在 `bde_source_logical_images.st` 接受可选的第三个固定参数
`protectedNative: IdentityDictionary`。connect 和 field planner 从实际捕获的
before、after、CURRENT native image keys 构造保护集合。已审计的 structural
correspondence保护实际新native对象，并保持全部实际native/source/typed patch
守卫与完整values/sharing比较。以下例外只存在于冻结规划，不改变实际原生身份。

打开编辑器后，store可能把原source-only Point换成已存在的native Point，即使
A的实际native before/after没有改变该Point。仅在同一native对象实际before/after
均存在、两个整数坐标相同、旧source没有该native对象、精确结构位置只有一个同值
source-only候选时，context5建立`unchanged_native_source_point_v1`来源对应。
context4从上一代实际投影继承这条确切来源；B移动后旧Point即使脱离活动source，
仍保留可核对的历史anchor。B新生成的Point没有这条来源，继续自身身份，不能
以等坐标为由对应回旧Point。任何共享冲突、重复候选或不完整材料均拒绝。

source-only String到旧protected String也只允许冻结规划中同class、同保存内容、
同结构候选位置的一一对应；实际forward normalization不使用这些例外。
context2/3保留原调用方式，Agent无法构造或提交这些内部context/map。

对应实现：

- `scripts/bde_connect_local_plan.st`：计算 native/source 三方目标并检查共享对象。
- `scripts/bde_field_local_inverse.st`：把 field inverse 投影回 CURRENT，结合保留的
  实际 source 来源关系恢复原引用。
- `scripts/bde_connect_history.st`：保存 source 来源关系及每一代实际历史 owner。
- `scripts/bde_recovery_release.st`：准确释放材料时清除相应来源记录。

保护集合来自当前固定读取器实际捕获的对象；Agent 无法提交任意 identity map。
投影只构造冻结候选，不修改模型。执行前重新验证真实 CURRENT、owner、root、
generation、原字段/index/key/member、物理/绘图顺序及端点依赖；不把逻辑图当实际图。
最终 native 实际 diff 重新应用到完整 CURRENT 后必须等于事先独立计算的目标。

## 对 Agent tools 的作用

Agent 的 `bd_revert` 保留后来无关的字段和位置变化；端点几何重叠在写前返回
conflict。每次逆操作产生新的 change_id、实际 before/after、diff 和 after_snapshot。
原生/source 详细材料保留在内部 journal，Agent 查询 diff 不需要重新读取整张图。

`bd_diff(change_id, presentation=show|clear)` 已能解析撤销/重做的原始祖先绑定，
使用所请求那一代的实际 patch 和终态。connect 历史先离线核对完整祖先和 owner；
显示前检查CURRENT与该终态一致。原BDE画临时图层，不重放edit。打开exact-owner
编辑器的配置副作用先作为隔离fixture准备记录，再建立正式基线。实际draw、
exact token/scope、deep Undo、dirty及完整模型/source/persisted configuration纯净
检查已通过。截图、缩放/滚动/关闭重开仍未验收；先前未打开画布的失败记录保留。

当前默认仍关闭局部历史生产 profile。只有原 epoch 的保留材料有效，重启后不能
重绑旧 remote handle 或用等值新对象替代。未知结果只查证，不盲目重发。

## 通用性与边界

固定 EsCompiler 代码块在 ASCET 内完成有界批量遍历、捕获和检查，再通过 Cebra
返回纯值，是减少跨进程 RPC 的通用方法。流程为固定编译/绑定、完整前置捕获、
准备、一次实际修改/store、归一化、实际后置捕获和持久化确认。多个 Agent 的 live
业务操作仍串行；对不可变快照的解析与 diff 可以并行。

上述投影适用于有完整 native/source image 和可靠结构对应关系的操作。每个新操作
仍须审计字段、共享依赖、原生合法性、允许附带变化和恢复材料；Class 的 caller、
message 声明以及 Project A2A/XPass 绑定不能由普通 Main 的成功自动获得支持。
有界批量读取、局部冲突、精确恢复及显示分别验收；当前不以耗时作为交付门槛。

[当前打开原编辑器的证据](../analysis/bde-experiments/2026-10-06/bde-open-editor-local-history-increment-01/README.md) ·
[此前三结构版本证据](../analysis/bde-experiments/2026-10-06/bde-connect-local-history-increment-01/README.md)。
