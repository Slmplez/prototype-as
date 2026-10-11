# BDE tools task nodes v1

目标是把 BDE 工具拆成可单独验收的垂直切片。每个节点只有在代码、离线控制和需要的在线证据都齐全后才标记完成；一个节点未完成不会被下游节点的夹具测试替代。状态机、独立 Code Mode 和新宿主不在本轮范围内。

## 依赖图

```text
T0 运行时身份与安全边界
 ├─ T1 结构读取与定位 ─────┐
 ├─ T2 普通块编辑生命周期 ──┼─ T3 Journal/Diff/Revert
 └─ T4 Layout 与原 BDE 显示 ─┘             │
                                           ├─ T5 Message 拓扑
                                           ├─ T6 Enum/Class/Hierarchy
                                           └─ T7 跨 Module/A2A/XPass
                                                        │
                                                        └─ T8 Doge/AEB_Core 验收
                                                               │
                                                               └─ T9 Eval、业务恢复与交付包
```

## 节点清单

| 节点 | 内容 | 当前状态 | 完成门槛 |
|---|---|---|---|
| T0 | Cebra endpoint、进程 epoch、组件隔离、dirty 检查、unknown 保留 | 部分完成 | 旧 token 不重绑；写前身份/dirty/失败材料守卫有回归证据 |
| T1 | `bd_read`、`bd_find`、`bd_inspect`、分页、局部读取、对象/引脚/布局定位 | 部分完成 | 普通 BDE 全结构可读；分页字节、对象 ID、布局和连接关系可独立复算 |
| T2 | 普通 Block 创建、字段修改、移动、普通连线、断线、删除 | 部分完成 | 每种操作都有 preview、一次实际 edit、before/after、无关对象保持、持久化检查 |
| T3 | 自动实际 diff、WAL、冲突检查、精确回退、回退自身、幂等请求 | 部分完成 | `bd_diff` 完全离线可读；`bd_revert` 按三方 patch 执行；冲突/unknown 不重试 |
| T4 | Layout、绘制顺序、原 BDE diff overlay、show/clear 纯度 | 部分完成 | 实际 edit 后原 BDE 可显示和清除 diff，dirty/Undo/model/source 不被改变 |
| T5 | Message Receive/Send/Duplex 的 connect、disconnect、delete、rewire、恢复 | 有限原始引用和 v3 连线准备/双层拒写在线通过；实际编辑回退未验 | 新隔离组件完成至少 1 条真实闭环，再扩展 60 cases；图形 inverse 不替代持久引用恢复 |
| T6 | Enum、Class 接口、Hierarchy port、Module 内跨层 Block 类型 | 部分完成 | 创建/修改/删除/恢复均有完整 owner、引用、布局和持久化 diff |
| T7 | Module、Project、A2A、XPass 的跨组件 message/signal 流 | 未完成 | 出入站引用、接口版本、跨层路径和回退全部在线核验 |
| T8 | Doge Code tool schema、真实 `Tool.call`、AEB_Core 组件验收 | 部分完成 | Doge 六工具调用与 Python/WAL 一致；AEB_Core 完成隔离创建、编辑、diff、恢复 |
| T9 | Eval 门槛、故障恢复、业务原件、最终交付包 | 未完成 | 43 required 全部有明确 pass/fail；业务原件恢复；最终源码、证据和限制清单可复算 |

## 当前执行顺序

1. **T3.1**：把 Message 拓扑引用差异接入生产 `bd_connect_journal` 的 native receipt。
   2026-10-11 后续：固定 Smalltalk 编译、共享引用读取、生产 v2 prepare/inspect/discard 在线通过；三方语义逆候选和 journal 绑定完成，87 项离线控制通过。复用现有 PID40652/32631，未启停；capture_attached 和持久引用 patch/inverse 未验收，T3.1 仍未完成。见 `bde-module-reference-preflight-increment-01`。
   同日继续：v3 冻结 Module/source/reciprocal 的有限原始记录与 absence，生产准备/检查/释放和双层拒写在线通过，完整 native/public bookends 不变。原始字节三方逆规划、actual diff 与 WAL 绑定完成，138 项离线控制通过；新目标 original before、absence lifecycle executor、持久 writer/inverse 仍未闭合，T3.1 继续未完成。见 `bde-finite-module-reference-increment-02`。
2. **T5.1**：在新的隔离组件中只验证一条 `connect_data` 闭环：edit → actual diff → BDE display → conflict check → revert。
3. **T5.2**：验证 `disconnect_data` 和 `delete_node`，确认删除的声明体、引用和布局恢复。
4. **T3.2**：把已验证的连接/删除材料接入回退自身和无关修改保留。
5. 只有 T5.1/T5.2 通过后，才扩展完整 Message 矩阵、跨 Module 和 A2A/XPass。

## 每个节点的统一交付物

- 生产代码和对应 schema；
- 离线单元/契约测试；
- 在线结果、真实 Cebra 帧和数据量（如果节点需要在线验证）；
- before/after/diff/WAL/revert 证据；
- 失败原因、未覆盖范围和下一节点依赖；
- `docs/bde-delivery-status.md`、`docs/bde-tools-experiment-report.md` 和覆盖 JSON 的同步记录。

当前 ASCET 实例保持运行，不为节点切换反复关闭、启动或重启；旧 epoch 的失败材料不重新绑定。
