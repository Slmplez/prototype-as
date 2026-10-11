# 精确连线与状态机：独立设计审查

2026-09-29。用户要求子 agent 审查 v0.3 连线设计。首次 reviewer 因模型服务 429 限流未执行成功，随后默认子 agent 完成只读审查。未调用 ASCET 写接口。下文基于本地 API 文档与恢复源码，尚未在线验证状态机行为；主 agent 已据此修订 v0.3。

结论：六工具外壳可复用，数据 Connection 和状态机 Transition 必须使用不同语义模型、身份和操作分支。

## P1：数据输入的单来源规则不能用于 transition

状态机 API 有 state→state、state→pin、pin→state、pin→pin 四种连接接口，返回独立 Transition。参见 [StateMachineDiagram.cs](E:/Repo/ASCET/unpacked/dotnet/2c75ef3e9bbcd831_Etas.AscetNET.dll/de.etas.cebra.toolAPI.Ascet/StateMachineDiagram.cs:143)。

修正：数据操作为 `connect_data/disconnect_data/rewire_data`；状态机操作为 `create_transition/update_transition/retarget_transition/delete_transition`。只修改指定 transition，不替换目标状态的全部入边。不能把多条相同端点的不同转移折叠成一条。

## P1：transition 语义不只有端点

condition/action 都支持 ESDL 与方法引用；transition 还拥有 priority、trigger。参见 [Transition.cs](E:/Repo/ASCET/unpacked/dotnet/2c75ef3e9bbcd831_Etas.AscetNET.dll/de.etas.cebra.toolAPI.Ascet/Transition.cs:132)、[SetPriority 文档](E:/Repo/ASCET/docs/Etas.AscetNET_export/markdown/de.etas.cebra.toolAPI.Ascet.Transition.SetPriority.md:7)。状态还需采集 initial/start、entry、exit、static action：[State.cs](E:/Repo/ASCET/unpacked/dotnet/2c75ef3e9bbcd831_Etas.AscetNET.dll/de.etas.cebra.toolAPI.Ascet/State.cs:165)。

修正：上述字段进入 read、expected、语义哈希、diff 和恢复记录。priority 不能当作 BD sequence。非负整数约束有文档支持，排序方向、相同值处理和层级竞争规则未验证。静态 setter 只写 priority 文本并更新显示，不能假定会自动重排：[SGTransitionInfoGO.st](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/SGTransitionInfoGO.st:355)。

## P1：只读路径存在 getter 副作用

Transition 公开有 SetTrigger/ClearTrigger，却没有 GetTrigger。不能据此填 `trigger=none`。

`action1Alias` 在 ESDL 存在且 aliasName 为空时会写入 `<ESDL>`；action2Alias/action3Alias 也有类似逻辑。参见 [SGStateMachineInfoGO.st](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/SGStateMachineInfoGO.st:740)。公开 IsActionDefined/IsConditionDefined 经 hasAction/hasCondition 也可能到这些路径：[SGTransitionInfoGO.st](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/SGTransitionInfoGO.st:145)。

修正：对原始 action method-call、alias、ESDL 字段做只读路径审计与在线验证。未验证时返回 unknown 和覆盖缺口。禁止把 `diagramElement→transitionInfoGO→action1Alias` 直接用作纯 getter。

## P1：transition 身份及跨层端点尚未验证

Transition 继承 StateMachineDiagramFlowElement→AbstractStateMachineElement，不继承提供 GetGraphicalObjectIdentifier 的 StateMachineDiagramElement。参见 [Transition.cs](E:/Repo/ASCET/unpacked/dotnet/2c75ef3e9bbcd831_Etas.AscetNET.dll/de.etas.cebra.toolAPI.Ascet/Transition.cs:13) 和 [FlowElement.cs](E:/Repo/ASCET/unpacked/dotnet/2c75ef3e9bbcd831_Etas.AscetNET.dll/de.etas.cebra.toolAPI.Ascet/StateMachineDiagramFlowElement.cs:11)。

内部 `diagramElement→identifier` 是候选：ASDStateTransitionInfoWrapperGO 的 identifier 为直接字段 getter：[源码](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/ASDStateTransitionInfoWrapperGO.st:167)。未在线验证前不能称其稳定身份，也不能用枚举下标替代。

state→state 会检查同 hierarchy wrapper：[EtasAPIStateMachineDiagram.st](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/EtasAPIStateMachineDiagram.st:2371)。state→pin 根据层级选择 internal/external connector：[同文件](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/EtasAPIStateMachineDiagram.st:1927)。

修正：端点携带种类、原生身份、所属层级和边界侧。禁止任意跨层 state→state 直连；未知或歧义侧别不能用于精确写入。

## P1：改 guard/action 的恢复不能只保存字符串

`setCondition:` 先清除旧条件再绑定方法；`setESDLCondition:` 会创建新的 alias 方法。参见 [SGTransitionInfoGO.st](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/SGTransitionInfoGO.st:289) 和 [ESDL setter](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/SGTransitionInfoGO.st:321)。Clear 会创建新的 SGMethodCall 并清空 ESDL：[SGStateMachineInfoGO.st](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/SGStateMachineInfoGO.st:304)。

修正：区分 none/esdl/method，保存源码、方法身份、调用绑定与原生对象副作用。恢复相同文本不是恢复原身份。公开 API 暂未找到既有 Transition 的端点 setter；retarget 禁止默认为删除后重建，恢复未验证前保持禁用。

## P2：精确接线还包括视觉路由

BD 的 ConnectDiagramElementPins 接收 output/input 以及 x[]/y[] 折点：[BlockDiagram.cs](E:/Repo/ASCET/unpacked/dotnet/2c75ef3e9bbcd831_Etas.AscetNET.dll/de.etas.cebra.toolAPI.Ascet/BlockDiagram.cs:20)。状态对状态连接需要两个边框连接位置：[文档](E:/Repo/ASCET/docs/Etas.AscetNET_export/markdown/de.etas.cebra.toolAPI.Ascet.StateMachineDiagram.ConnectStateToState.md:59)。原生实现会求 intersectionPointFor，实际锚点可能被规范化。

修正：语义端点与几何路由分别保存，明确坐标系；创建后重读实际锚点/折点。不能按坐标挑选“最近状态”来冒充精确身份匹配。

## 验收重点

- 相同 source/target 的两条不同 guard 转移可分别定位、修改和恢复。
- 修改 guard 但端点不变，diff 必须报告行为变化及表示模式变化。
- trigger 未采集时报告 unknown，不输出“无 trigger”或“完整状态机语义已读”。
- 层级边界 pin 的内外侧不可混淆；非法跨层连接拒绝。
- priority 同值、排序方向、层级竞争规则需用独立测试模型验证。
- getter 不改变模型，setter 对 alias/SGMethodCall 的变化有记录，恢复后逐字段和身份核对。
- 连接删除重建时如无法恢复原身份，应报告身份变化，不能称 exact revert。

当前 Doge 实现只开放已验证的 Block Diagram 读取子集，状态机没有被当成普通边接入。详见 [Doge 接入说明](E:/Repo/ASCET/docs/doge-block-diagram-tools.md) 和 [修订后的 v0.3](E:/Repo/ASCET/docs/block-diagram-agent-tools-v0.3.md)。
