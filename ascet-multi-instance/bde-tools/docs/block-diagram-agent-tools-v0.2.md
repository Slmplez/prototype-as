# ASCET Block Diagram 工具 v0.2：参考 Simulink Agentic Toolkit

2026-09-29：对外设计已由 [v0.3](E:/Repo/ASCET/docs/block-diagram-agent-tools-v0.3.md) 更新，结合在线读取结果与 Doge Read/Edit 实现。默认读取改为具有显式覆盖记录的完整逻辑读取，核心工具合并为六个；本文作为历史方案保留。

2026-09-28。设计提案，未实现在线编辑。本版替代 v0.1 的对外接口设计；v0.1 的身份、原生错误处理、保存边界和回撤验证要求保留在服务内部，不要求 agent 每次显式走 plan/apply。

大图读取补充设计：bd_read 采用 ids / children / neighbors / selection / region 选择方式，结合 fields、预算、分页和覆盖说明。后端优先验证远程集合 copyFrom:to: 后再 serialize:，以及连接点 connections 的局部邻接路径；尚未验证的能力不对外宣称可用。具体源码证据、性能边界和验证顺序见 [大框图内部读取路径](E:/Repo/ASCET/docs/ascet-large-diagram-read-paths.md)。本补充不代表现有 JSON schema 或在线实现已经同步完成。

后续源码调查已发现未包装的 `EtasAPIBlockDiagramElement>>moveTo:`、通用 Cebra selector 分派，以及 `SGPaneController` / `SGMemento` 原生撤销链路。后端范围扩大为“公开 API + 内部接口桥接”，不再以公开包装方法列表作为能力上限。证据与验证步骤见 [内部桥接调查](E:/Repo/ASCET/docs/ascet-internal-bridge-findings.md)。

## 1. 实际参考了什么

主要参考 MathWorks 官方 [Simulink Agentic Toolkit](https://github.com/matlab/simulink-agentic-toolkit)，读取了 README 和 [tools/tools.json](https://github.com/matlab/simulink-agentic-toolkit/blob/main/tools/tools.json)。该文件的本地研究副本为 [tools.json](E:/Repo/ASCET/analysis/simulink-mcp-reference/tools.json)。这是 2026-09-28 获取的 main 分支内容，未来接口可能变化。

同时核对了社区 [sohumsuthar/simulink-mcp](https://github.com/sohumsuthar/simulink-mcp/tree/91bf13462edad00596e8e9a06d6bfc8dfc9f4dd5) 的实际 Python 实现。两者不是同一个项目。

官方架构：Agent → MATLAB MCP Server → MATLAB/Simulink；Toolkit 通过 tools.json 注册领域工具，skills 提供模型工程知识。MCP Server 本身还提供 evaluate_matlab_code 等通用 MATLAB 能力。

## 2. 官方接口的关键设计

| 官方工具 | 已核实的契约 | 对 ASCET 的启发 |
|---|---|---|
| model_overview | model、scope、detail；tree/interfaces/full | 概要独立于细节 |
| model_read | model、scope、depth；返回拓扑、连接和算法表达式 | 读取有语义的局部模型 |
| model_query_params | 指定 targets 和 params，可查询 block/signal/config | 未显示的属性按需获取 |
| model_resolve_params | 将变量引用解析到实际值，区分工作区来源 | 声明值与解析值分开 |
| model_edit | 一个 scope 内顺序执行 operations；支持新对象 ref | 一个语义编辑入口 |
| model_check | 未连接端口、悬空连线、Stateflow edit-time lint | 结构检查独立于编辑 |
| model_read_diagnostics | 读取已有诊断，有分页和 token_limit | 诊断另查，不混入大图响应 |
| model_scan | 正则搜索磁盘已保存 .slx；脏模型返回 DIRTY_MODEL | 离线搜索与在线读取区分 |
| model_test | Gherkin 测试、自动生成测试工件 | 行为验证区别于结构检查 |

model_read 的表达式示意，遵循其工具描述中的记法：

```text
blk_8: y1 = @Gain(Kp) * u1(blk_5.y1)
```

表达式同时给出计算、参数设置值、输入来源和对象 ID；它没有展开整个 get_param 对象。若 Gain 设置值为 Kp，需要进一步 resolve；如果是数字则已知设置值。模型引用、子系统引用、库块在 model_read 中只显示接口，不自动展开内部。

model_edit 支持：add_block、connect、disconnect、configure、delete、replace_block、create_subsystem。一次只编辑一个作用域，新节点可以声明 ref，后续同批操作用 #ref 连接；返回 created 映射，下一次调用使用正式 blk_X ID。

官方工具契约的调用示例（不是 ASCET 接口）：

```json
{
  "model": "demo.slx",
  "scope": "root",
  "operations": "[{\"op\":\"add_block\",\"type\":\"Gain\",\"ref\":\"g1\",\"params\":{\"Gain\":\"2\"}},{\"op\":\"connect\",\"target\":\"blk_5.y1 -> #g1.u1\"}]",
  "layout_mode": "incremental"
}
```

不能照搬的行为：官方契约声明 operations 出错后继续执行，connect 会替换已占用目标端口的已有连接；没有在该公开工具清单中提供独立 diff/undo 工具。不能把这些接口视为原子事务或精确回撤承诺。operations 在该扩展协议中是单行 JSON 字符串；自己实现 MCP 时可以直接用有 schema 的数组，不必复制二次编码。

社区版本更薄：list_blocks 使用 find_system 的 SearchDepth（默认 2）和 BlockType 过滤，get_block_params 获取单块所有 DialogParameters；set_block_param 直接调用 set_param 并返回文本。已查的 inspection/modification 实现没有加入分页、写前旧值匹配、写后 diff 或回撤日志。它展示了易用 API，但不能单独满足本项目的精确编辑要求。

## 3. ASCET 新的对外接口

以模型为中心，agent 通常只需要 read → edit → check；需要时调用 diff/undo。

| 工具 | 输入重点 | 输出重点 |
|---|---|---|
| bd_overview | component、diagram、scope、detail | 层级、接口、节点/边计数及覆盖状态 |
| bd_read | diagram、scope、depth、可选 targets/fields | 节点、连接、已知语义、edit_token |
| bd_search | diagram/组件范围、query、kind、source | 匹配对象 ID 与定位上下文 |
| bd_query_params | targets、params | 精确字段值、可写性、类型与来源 |
| bd_edit | diagram、scope、edit_token、operations、preview | 实际 diff、created 映射、change_id、undo 等级 |
| bd_check | diagram、scope、checks | 已执行检查、问题、无法检查项 |
| bd_diff | change_id 或两个历史版本、scope | 字段/拓扑/布局 diff |
| bd_undo | change_id、preview | 冲突或实际逆补丁结果 |

连接管理、保存与历史查询为辅助能力；不要求 agent 手工管理快照表、session epoch、内部 WAL。保存仍要明确请求，并报告真实保存状态；不能为了简化调用而暗中提交整个数据库。

操作优先保持模型词汇：configure、add_block、connect、disconnect、delete、create_hierarchy。当前后端验证通过哪些就开放哪些。ASCET 不存在一个已证明可任意改属性的 set_param；适配器为每种节点映射已验证字段。

## 4. 读取示例与响应预算

以下均为 ASCET 拟议格式，不是已经运行的工具输出。

```text
diagram=d7 scope=h3 edit_token=t41 coverage=partial

n12 literal
  value = "10.0"
n18 operator
  operator_type = <原生已读取类型>

connections:
  e8: n12.p1 -> n18.p2

sequence: not_loaded
```

短 ID 是服务端作用域内的别名，后台绑定数据库、图、层级、原生对象及身份强度。不能因短 ID 看起来简单就忽略身份校验；跨会话旧 ID 失效必须报错。

不能把 Simulink 的 u1/y1 按数组顺序硬套到 ASCET 引脚；ASCET 使用返回的 pin ID，另显示方向和真实名称。只有明确知道算子、端口和 sequence 语义时才生成算法表达式，未知类型显示原生信息，不猜测计算行为。

大响应采用分层读取，而不只是压缩 JSON：

1. overview 只提供层级/接口，默认不展开所有节点。
2. read 默认 depth=0，只展开指定作用域；每页 30 条并有完整记录预算。
3. 字段按身份、行为参数、连接、执行顺序、布局分组；只取请求组。布局只在布局任务中展开。
4. 额外字段走 query_params；长文本按需读取完整内容。
5. 返回预算、has_more 和快照绑定游标；未显示、未读取、读取失败分别标记。

默认约 16 KiB 响应预算；减少返回量不保证原生枚举 RPC 同比例减少。搜索 AXL 导出时明确 source=export，不能把旧导出结果直接当作当前运行模型的编辑依据。

## 5. 一次调用完成精确编辑

```json
{
  "diagram": "d7",
  "scope": "h3",
  "edit_token": "t41",
  "preview": false,
  "operations": [
    {"op": "configure", "target": "n12", "expect": {"value": "10.0"}, "params": {"value": "12.0"}}
  ]
}
```

返回：

```text
change=c52 status=verified_memory
~ n12.value: "10.0" -> "12.0"
undo=exact_fields
saved=false
```

此成功示例以身份、隔离和 setter 保存行为验证通过为前提。当前只有静态 API 证据，还不能产生这样的在线成功结论。

edit_token 封装读取时的对象版本和必要依赖，不把内部细节全部交给 agent。后端在一次 bd_edit 调用中完成目标解析、旧值比对、日志、调用和重读。preview=true 只返回预期 diff；preview=false 仍执行所有校验，不要求先调用 preview。

批量 operations 先完整校验；运行时遇错停止后续操作。没有原生事务则仍可能部分成功，返回逐项状态和 change_id，不能误报原子性。connect 默认目标已占用时报错；替换连接需要显式声明并匹配旧边。后端为重试提供请求幂等机制。

## 6. diff 和 undo 是在此基础上的增强

bd_edit 自动记录 before/after，返回简短实际 diff。需要更大上下文才调用 bd_diff。read token 和写前旧值检查比仅调用 setter 更适合精确修改，但不会自动解决外部并发：未验证隔离时仍不能宣称原子条件写入。

bd_undo 根据 change_id 定位日志，自动获取当前状态并检查冲突，按原操作的逆序执行可用逆补丁；preview=true 可查看预计回撤。目标后来被改过则拒绝覆盖，无关后续改动保留。字段逆补丁与删除重建的身份保证不同，结构回撤能力未验证时明确 unavailable。

保留 v0.1 的底层执行设计，但正常使用不暴露强制 plan/apply 两阶段。首版目标是 agent 能自然地说“读这个层级、把这个节点的这个值改掉、查看变化、撤销这次修改”。

## 7. 资料与边界

- [官方工具声明](https://github.com/matlab/simulink-agentic-toolkit/blob/main/tools/tools.json)：本次官方工具行为说明的主要依据；没有安装或运行 MATLAB 验证。
- [官方 MATLAB MCP Server](https://github.com/matlab/matlab-mcp-server)：通用执行与扩展工具承载层。
- [社区读取实现](https://github.com/sohumsuthar/simulink-mcp/blob/91bf13462edad00596e8e9a06d6bfc8dfc9f4dd5/simulink_mcp/tools/inspection.py)。
- [社区编辑实现](https://github.com/sohumsuthar/simulink-mcp/blob/91bf13462edad00596e8e9a06d6bfc8dfc9f4dd5/simulink_mcp/tools/modification.py)。
- [ASCET 底层设计与源码证据](E:/Repo/ASCET/docs/block-diagram-agent-tools.md)：仅保留仍适用的后端机制，对外接口以本版为准。
