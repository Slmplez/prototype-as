# BDE 跨组件信号通路工具设计

2026-10-02 implementation update: `project_messages` includes the Project's
bounded Module/Class instance chains; `project_signal_path` joins exact observed
instances and pins across components using a native database object token.
Independent resource `steps` groups, automatic actual diff, native inverse
preflight and group restoration are implemented. [Current usage](bde-multi-resource-tools.md)
defines the narrower implemented contracts. Complete candidate oracle, Class
body entry mappings, dependent connect_path and shared-resource recovery remain
required; static paths do not prove runtime delivery.

2026-10-01。用户最终需求：agent 可以新建或复用 message，从 A2A/XPass 收发，经 Module BDE、Class 方法接口及嵌套 hierarchy 传递信号，并精确编辑、删除、显示实际 diff 和回退。本文扩展普通 BDE 目标，不开启状态机或新宿主平台开发。`bd_read(view=interfaces)`、`bd_inspect(query=signal_path|interface_binding)` 及 interface/message 查找已接入 Doge；当前只读、单组件 Main 与有界嵌套 hierarchy，未接 Project channel/实例链。跨组件编辑和其余新增参数仍为目标合同。实际用法见 [接口与路径读取](bde-signal-interfaces-usage.md)。

## 1. 完成标准与语义边界

一条通路必须说明每一步是什么、属于哪个实例、依据什么原生关系连接，以及哪里尚未核实。创建 message 声明或图形 block 只是其中一步。

```text
发送侧 occurrence/pin
  -> message 声明及本组件的 send 访问
  -> 指定 Project 中解析出的 message channel
  -> 接收侧声明及 receive 访问
  -> Module BDE 数据连接
  -> hierarchy 外侧 pin / 内侧 pin 配对
  -> Class 实例的 method/formal pin
  -> 被引用 Class 定义中的精确 argument/return
```

箭头中既有真实 BDE 数据线，也有声明/接口绑定，不可全部伪装成可以用 connect_data 建立的边。反向发送同样成立；例如 exported receive 与 imported send 可以指向同一个 channel。

| 关系 | 所需身份与证据 | 不可混淆的内容 |
|---|---|---|
| diagram_connection | 同图/同 scope 的实际 source/target pin、原生连接及 multiplicity | 图形折线只控制布局，不建立跨图语义 |
| message_binding | Project、Module 实例链、声明 alias、global label、完整候选与原生解析结果 | imported/exported 是声明归属；send/receive 是通信角色 |
| hierarchy_boundary | hierarchy occurrence、父子 scope、外内 pin 的原生配对 | 内外方向可能相反，不能按名称/排序配对 |
| class_formal_binding | Class occurrence/实例链、definition OID、method alias、formal alias | 同定义多个实例不可合并；selector 不一定是数据 pin |
| class_body_connection | 定义内部的实际连接/正文依赖 | argument 绑定不是 argument 自动流向 return 的证据 |
| execution_relation | process/method 调用、activator、sequence、Project task 配置 | 数据连通不证明执行顺序、跨任务时延或运行传输 |

A2A 的具体对象含义尚未由用户确认；离线索引发现的 Asw2Asw_AEB_iBooster 只是候选。XPass 的声明角色已读到，但硬件/总线传输和运行值不属于本次静态 BDE 工具的通过证据。

## 2. 精确 endpoint 与作用域

服务端保存完整身份，agent 使用绑定观察版本的短 ref。完整 endpoint 至少包含：

```json
{
  "database_session": "opaque",
  "ascet_epoch": "opaque",
  "project_oid": "project-oid",
  "instance_chain": ["module-instance-alias", "class-instance-alias"],
  "definition_oid": "owner-definition-oid",
  "diagram": "Main",
  "hierarchy_chain": ["native-hierarchy-id"],
  "model_alias": "native-model-alias",
  "occurrence_id": "native-node-id",
  "method_alias": "native-method-alias",
  "formal_alias": "native-formal-alias",
  "pin_id": "native-pin-id"
}
```

这是各 endpoint 类型的字段全集示例，并非每种 endpoint 都有全部字段。schema 使用判别联合：message declaration 无图形 pin，Class formal 无 occurrence 时只是定义接口，图形 pin 必须有图/scope/occurrence。路径、名称和坐标用于展示与搜索，不代替身份。

编辑 Class 共享定义会影响所有引用实例，必须返回引用影响清单。只改父 Module 中某个 occurrence 的连接，不等于修改 Class 定义。一次观察中的临时 wrapper handle 或序号不能跨进程用于编辑。

## 3. 保留六工具，增加通路语义

| 工具 | 新增目标合同 | 返回重点 |
|---|---|---|
| bd_read | view=interfaces，指定 Project/实例及 definitions 范围 | 紧凑声明、收发角色、接口、精确 refs、coverage/continuation |
| bd_find | kind=message/interface，按已有观察的关系与身份限定搜索 | 候选、真实实例位置；同名歧义明确保留 |
| bd_inspect | query=signal_path / message_binding / interface_binding / flow_plan | 逐段证据、边界、阻断点、未采集范围、影响资源及计划 |
| bd_edit | typed op=connect_path 及先验 plan_ref | 声明创建/复用、occurrence 放置、boundary/formal 绑定、局部连接与布局的分步回执 |
| bd_diff | flow_change_id 或单 resource change_id | 各资源 actual patch、意图与实际结果、展示状态及未完成步骤 |
| bd_revert | flow_change_id + request_id + expect，支持 preview | 全资源先检查，再逆序补偿；冲突或 partial/unknown 明确返回 |

现有单图 connect_data 等保持原义；新增名称暂不接受为运行能力。生产工具先接只读接口和路径检查，再接通过隔离 eval 的编辑类别。

`flow_plan` 是可检查的规划结果，包含 source/sink、显式中间 scope、复用/创建策略、每步 typed operation、资源前置指纹、共享影响和恢复等级。它不修改模型、不预留原生恢复记录。execute 在写前再次核对，不把 preview 当授权或当前状态保证。

message 可选 reuse_existing / create_new；不按同名自动选择，不默改已有声明 scope/type/收发属性。Class 缺参数时必须显式请求 interface 变更及影响范围；不能为了接线偷偷修改共享 Class。

## 4. read 数据与成本

首次只读被请求的 Project 实例索引与组件接口，按需补读通路所经 scope 和方法。完整语义范围可继续读全；interfaces 不能标为 full logic。缓存定义按 database session + definition OID + 内容版本去重，实例与 occurrence 分开保留。

示意正文：

```text
channel ch1 project=P1 exporter=XPass/TargetStateAEB candidates=1
  declaration d1 scope=exported role=send
  declaration d2 scope=imported role=receive module_instance=mi2
segment seg1 kind=message_binding d1 -> d2 evidence=native_resolution
segment seg2 kind=diagram_connection Main/n12.p13 -> Main/h20.p21
segment seg3 kind=hierarchy_boundary Main/h20.p21 -> Main/h20/n2.p3
segment seg4 kind=class_formal_binding Main/h20/n4.p5 -> Class/calc/x
coverage project_bindings=collected method_bodies=not_collected execution=not_collected
```

这是格式设计，不是已验证的实际通路。内部采集由审计后的固定 Smalltalk block 有界批读，减少 Cebra 往返；不接受 agent 自由执行 Smalltalk。在线操作串行，已采集不可变数据可离线并行分析。跨多个组件的观察明确 non_atomic，不能把不同时间的缓存拼成同一活体版本。

性能按声明的相同字段/对象覆盖比较。既有 AEB_dFxTar 单组件 P95<1s 不自动推广到任意跨组件通路；分别统计接口采集、路径分析、编辑/恢复/显示耗时、真实帧数与字节。

## 5. 编辑自动记录与恢复

沿用现有局部 journal。新增 flow_change_id 只聚合实际 resource changes，不能把各组件修改宣称为原子事务：

```text
完整规划/约束检查
  -> 保存 group 意图、全部资源身份与恢复计划
  -> 每步局部 before + expect 校验 + started 落盘
  -> 原生 typed operation
  -> 局部 after + actual resource patch 落盘
  -> 验证声明/绑定/连接/调用的后置条件
  -> 返回 confirmed / partial / outcome_unknown
```

日志区分 diagram_effects、declaration_effects、interface_effects、library_effects 和 project_effects，并保存每步的 request_id、resource change_id、恢复材料和 source/evidence。部分失败只报告确认为完成的步骤；started 后无结果的步骤标 unknown，停止依赖写入，不自动重发。

回退先核对全部资源实际 after、原生身份、声明引用、父容器顺序及共享定义引用。存在冲突时在第一步恢复前拒绝；全部预检通过后仍逐步重新校验，并按依赖逆序恢复。中途外部修改/失败照实返回 partial/unknown，不盲 Undo、不覆盖组件全量备份，也不删除其他人后来引用的 message/enum/Class 接口。

删除通路区分移除本次 occurrence/边、移除声明、修改共享接口和删除库定义；默认不删除仍被引用的共享资源。edit/revert 内部回读关联闭包并生成 diff，无需 agent 再 read 整图。

## 6. 原 BDE 展示

复用既有临时绘制层，将各 resource 的 actual patch 映射到对应组件/图/scope；返回各图 show/clear 状态。message 跨组件绑定没有跨窗口的原生数据线，应定位两端并标注绑定变化，不绘制一条假 BDE 数据线。删除残影来自已记录 before 几何。

纯声明/Project/接口修改若无可映射几何，则明确 presentation unavailable，并提供文本 actual diff；这些类型仍须补展示设计和 eval，不能沿用已有 scalar 图层证据直接授予通过。显示失败不重放 edit。

## 7. 开发顺序及目前状态

1. S1：固定只读接口采集与 public 共同字段核对。已有研究模板、Class alias 分析与四个实际组件样本；未注册 Doge。
2. S2：Project Module instance 和 message 候选/原生解析研究；避开有副作用的 mappingCache getter。之后补 hierarchy 原生配对与 Class formal 的内部入口。
3. S3：单组件只读入口已接入。两级同名 hierarchy 夹具三轮真实 Tool.call、四对双向原生配对、九段静态路径、完整公开图投影及零在线路径/分页查询已核对；AEB_Core 与 AEB5ms 也有三轮接口交付。Project/实例身份与绑定、共享 Class 正文入口仍待集成，不能声明 R2/R3 整体通过。
4. S4：单root下的精确hierarchy scope编辑已接入；edit06验证连线，nodes03三轮72 cases验证两级子图10类创建、普通删除、双来源双input节点删除/恢复、跨scope共享声明与父hierarchy回退保护。162 edit/162 inverse、359份完整public观察与324个累计patch核对通过并全部恢复。仍需其他创建类型、接口增删、多fixture/身份重载/故障、原BDE各scope展示，以及隔离多Module/Class实例的Project通路和group恢复；默认cont消息节点不等于跨Module或enum消息通路。不能声明完整R3。用法见[hierarchy编辑](bde-hierarchy-edit-usage.md)。
5. S5：多资源失败/unknown、共享引用/实例歧义、恢复冲突与各 scope BDE 显示。各scope显示已接入实验入口，presentation03完成三轮literal创建/删除diff原生路由/回调、错误scope clear拒绝和完整公共图/声明恢复；视觉、缩放滚动、窗口生命周期和更多图元尚待验收。完整通过后才升级能力等级。

新增硬门槛见 [跨层级 eval](bde-signal-flow-eval.md)。旧 G0-G7/L0-L3 判定不改写。状态机和通用宿主仍延期，业务 AEB 原件只读，千节点性能不重复测试。

## 8. 接口审计依据

- EtasAPIProject.getAllModules 返回 Module 的 ComplexModelElement 实例；必须保留实例 alias 和 represented definition。
- EtasAPIComponent.basicGetExportForImport: -> item mappedClassVarFor: -> allExportedVariablesDictionary，按 defaultGlobalLabel 找候选，再 isSameVarAs:，detect 第一项不证明无歧义。
- SGVariable.isSameVarAs: / SGElement.isSameVarAs:checkBlock: 检查 kind、label、sameType；同名不够。
- SGProject.exportForImport: 使用 mappingCache，多个候选返回 nil；mappingCache 会懒初始化、注册 finalize/close callbacks 和 dependents。研究读取不直接使用该路径。
- allExportedVariablesDictionary 的 SGProject.additionalExportedVariables 分支在特定实验 target/monitoring 条件下生成动态监控变量；Project 探针在公开查询前拒绝实验 target，普通 target 的临时 target 对象/其他缓存及回调状态尚未独立证明不变。
- SGHierarchyBlockInterfaceElementGO.getInternalConnectorGO / oppHierNode 是边界配对研究入口；.NET 没有已确认的 GetExternalPin，不构造不存在的 API。
- SGMethodInterfacePortGO.methodAliasName 和 SGBlockInterfaceElementGO.connectorAliasName 支持精确 formal 绑定；return 不可调用 SGMethodParameter.isIn/isOut。

依据均来自本地反编译及帮助文档。源码链只支持实现研究，在线字段核对、真实 Tool.call、原 BDE 视觉和运行传输是不同证据层级。
