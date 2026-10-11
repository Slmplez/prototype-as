# BDE 接口与静态路径读取

2026-10-01。现有 Doge 六工具的新只读入口，无需 MCP server。ASCET 必须已运行并打开目标数据库；在线调用共用现有互斥锁。写入开关不赋予接口快照编辑能力。

## 调用

```json
{"component":"\\PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Private\\AEB_Core\\AEB_Core","view":"interfaces","max_bytes":16384}
```

上述参数给 `bd_read`。读取全部 next_cursor 后，用返回的 snapshot 查找 `kind=pin/interface/message/node`；详细原生字段用 `bd_inspect(query=fields)`。

```json
{"snapshot":"<返回的snapshot>","query":"interface_binding","targets":["Main/h12/n5.p6"]}
```

上述引用来自隔离两级夹具，不能直接套用到其他组件。外侧 input 对应内侧 output；实际配对使用 `getInternalConnectorGO getConnectorGO`、双向 `oppHierNode`、manager/interface 和子图对象成员身份，不使用名字或排列。

```json
{"snapshot":"<夹具snapshot>","query":"signal_path","targets":["Main/n21.p22","Main/n15.p17"],"max_bytes":16384}
```

两个 targets 依次为已采集的 output/source 与 input/sink pin。只返回一条最短的已观察静态路径；diagram_connection 和 hierarchy_boundary 分段表示。夹具中存在五条图内连接和四次层级穿越，另有一条不在路径上的独立输入边。不会从 Class 的 argument 推断其 return，也不会自动穿越运算块或未经采集的 Project channel。

## 正文与身份

`document_format=bde_interfaces_columns_v1`。正文第一行为 JSON columns/kinds 图例，后续行为 `[group, 各column的值..., 可选extras对象]`。图例与记录都通过 JSON 解析；columns 为本次不可变文档固定顺序。extras 保存仅部分记录拥有的字段，因此缺失字段、null、false 可区分，不补默认值。共享字段名只显示一次，原本接口摘要字段全部保留。

节点、pin、边多重性、组件及引用定义的 formal、Class 绑定和 hierarchy 配对都在文档中；native class/alias 等详细元数据仍保存在服务端，可用 fields 检查。声明和 occurrence 通过 model_ref 关联，Class method pin 通过 formal_ref 关联，不按同名匹配。interface/message 搜索基于完整不可变实体索引。

refs 绑定 snapshot、组件和 scope，不是可跨会话使用的原生句柄。`editable_refs=false`；未验证数据库 session 和图重载身份，不能直接从此观察发起 edit。连接原生 ID 可能为 -1，connection/evidence 引用仅用于证据和多重集合，不能当原生编辑 ID。

signal_path/interface_binding/find/fields/diff/cursor 均读取已保存观察，不连接 ASCET。live read 仍自动写观察历史；它不是 edit 日志，不捕获每个中间 GUI 修改。

## 已验证与限制

两级同名 Stage、Signal/Result 的隔离夹具已核对九节点、十三pin、六边、四对原生 boundary，以及九段路径。三轮真实 Tool.call、完整公开图共同字段、控制配方、全部分页、负例与零在线查询证据见 `bde-hierarchy-path-05`。仅每个层级一入一出，未授予任意多端口层级/完整 FLOW gate。

AEB_Core 与 AEB5ms 有三轮实际接口读取/公开共同字段核对；Class pin 到 formal 的内部 alias 分析不是方法正文验证。AEB_Core 中状态机引用仍明确延期，接口视图不能当完整算法读取。

Project 实例链/message 解析已通过 `view=project_messages` 接入六工具。`project_signal_path` 可关联精确实例、Class formal/body 入口和已观察实际图内连接；Class-body04 的直属 AEB_axControl→AEB_dFxTar 三轮查询有公开枚举核对。不能据此推断 argument→return 行为、执行 schedule 或运行传输。

结构视图的跨资源 edits、已有 pin 连线计划和实际创建后连线计划均有独立 journal/自动 diff/预检回退。接口视图 refs 仍只读，不能直接用于结构 edit。接口增删、完整跨资源语义构造、全部原 BDE 视觉/身份重载/故障验收仍未完成。分别参见 [连线计划](bde-connection-path-tools.md)、[构造计划](bde-construction-tools.md) 与最新实验报告。
