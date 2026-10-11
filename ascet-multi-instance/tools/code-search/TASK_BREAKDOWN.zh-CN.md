# ASCET Search Tools 任务拆分

本文件将 Agent 使用 ASCET 保存代码和 BDE 搜索工具的后续工作拆成可以独立开发、测试和验收的任务包。范围只包括保存代码、BDE、State/Transition 代码绑定和 Agent 调用可靠性；不包括 UI、MCP、Dataset、运行时值、生成代码、未保存编辑和增量监听。

## 总体依赖

```text
WP-01 BDE 对象语义 ─┐
WP-02 Evidence 校验 ─┼─> WP-05 统一评分器与指标 ─> WP-06 端到端验收
WP-03 分页/游标 ────┤
WP-04 Intent 协议 ──┘
```

各工作包使用自己的测试集合和原始记录。失败结果保留，不用重试结果覆盖首次结果。

## WP-01：BDE 对象语义

**目标**：保证 Agent 区分请求对象、邻居对象、连接端点和各自的 Pin。

**范围**：`src/task-tools.ts`、BDE 投影、local read、batch read、`depth`/`direction`、`facts_mapping`。

**测试场景**：

- depth 0：只返回请求对象自身接口，`connections` 和 `neighbors` 为空；
- depth 1/2：邻居只作为连接上下文出现；
- incoming、outgoing、both 三种方向；
- 请求对象和连线终点名称相同或容易混淆；
- 批量读取多个对象，顺序和重复 ref 保持不变；
- Hierarchy、Element、Operator、Control 等对象类型。

**完成标准**：`facts.pin_ids` 只能复制请求对象的 `pin_ids_on_page`；邻居 Pin 只能出现在 `neighbors[].endpoint_pins`；返回 `requested_object_ref` 和明确的 `facts_mapping`。

## WP-02：Evidence 与最终答案校验

**目标**：阻止 Agent 拼接不存在的 ref、引用过期 ref 或把 cursor 当作 evidence。

**范围**：`src/pi-answer-validation.ts`、`src/pi-client.ts`、`src/pi-extension.ts`、`citable_refs`。

**测试场景**：

- 正确返回的 ref；
- 不存在的 `d*`/`n*` ref；
- 过期 ref、数据库变化后的 ref；
- `cursor`、`next_cursor`、内部 `read_evidence.id` 被误放入引用；
- `located` 无引用、`partial` 无缺口说明；
- 一次修复后仍然非法，确认不会无限重试。

**完成标准**：最终答案只能引用当前 Evidence ledger 中真实存在且未过期的 ref；最多自动修正一次；原始答案、错误和修正过程仍保留。

## WP-03：分页与跨工具游标

**目标**：保证 `has_more:true` 时使用同一个工具和原游标完成续页，并提供可执行恢复信息。

**范围**：`src/task-tools.ts`、`src/agent-tools.ts`、cursor registry、continuation projection。

**测试场景**：

- 首页返回 `continuation_required` 和 `continuation_call`；
- 同工具 `{cursor}` 成功续页；
- 另一工具 `{target,cursor}` 返回 `CURSOR_TOOL_MISMATCH`；
- cursor 过期、跨会话、重复消费；
- 混合查询和批量读取的独立游标；
- Agent 改变 query/scope/limit 后不得伪称为原查询完整结果。

**完成标准**：游标始终属于签发它的工具；错误响应给出 `next_tool`/恢复建议；评分器能识别错误尝试和随后正确恢复，不再产生 `scoring_error`。

## WP-04：Intent 与调用流程

**目标**：统一 State、图形 Method 和跨轮 follow-up 的意图声明格式，减少工具误用。

**范围**：Pi 调用提示、评测 prompt、intent cases、State/Diagram Method 场景。

**Intent 格式**：

```json
{"intent":{"action":"connections","decision":"execute","terms":["Stage"],"scope":{"components":["Controller"],"members":[]},"clarification_fields":[]}}
```

**测试场景**：

- State/Transition 端点和绑定 Method；
- 图形 Method 与其共享 Diagram；
- 多轮先 find、再 search、再 read；
- 需要澄清 Component、Diagram、Variant 的歧义任务；
- 每轮首次工具调用前声明一次，最终 JSON 保留 intent。

action 可选 locate/search/read/connections/compare/clarify/unsupported；decision 可选 execute/clarify/unsupported。每个新用户请求重置声明，工具回合和最终答案修复不会重置。clarify/unsupported 声明禁止执行 ASCET 查询。

**完成标准**：Intent 字段格式稳定；不会和最终答案 JSON 的基础字段冲突；缺失声明在调用前被拦截；最终 intent 必须和调用前的声明一致。

## WP-05：评分器与指标

**目标**：让评分器准确区分工具错误、Agent 调用错误和评分器自身错误。

**范围**：`scripts/pi-eval-matrix.ts`、评测计划、原始 answers/events/requests、可视化指标。

**测试场景**：

- 正确结果；
- Agent 错误参数；
- 工具预期拒绝；
- 错误后恢复；
- 缺少前置证据；
- malformed cursor 请求；
- 评分数据缺少对应 error row 时不得抛异常。

**完成标准**：所有评分错误都分类为工具、Agent 或评分器问题；保留原始分数、校准分数和错误分类；专项回归不出现 `scoring_error`。

## WP-06：端到端验收与发布

**目标**：在不重启现有 ASCET 的条件下，验证最终工具可完成真实定位任务。

**范围**：真实 ASCET CLI、现有 agent-a 实例、AEB/BDE/State 样本、文档和打包产物。

**验收流程**：

1. 离线单元和契约测试；
2. BDE、代码、State/Transition 定向案例；
3. Pi 意图和恢复案例；
4. 全量任务集，保留首次回答；
5. 核对 ASCET PID、启动时间、端口和数据库快照未被改变；
6. 更新 `PI_TASK_TOOLS.zh-CN.md`、指标 JSON 和发布包。

**完成标准**：所有测试结果可追溯到任务包；没有因为测试而关闭或重启用户当前 ASCET；明确记录未覆盖能力。

## 当前状态

- WP-01：实现请求对象/邻居角色、Pin 来源和读链完整性校验；真实 SDK 验证 depth 0/1/2 × incoming/outgoing/both，并与原生图逐条核对。
- WP-02：最终答案校验覆盖 evidence_refs 和 facts 中嵌套 ref；拒绝过期、伪造和游标引用，最多一次修复，仍失败则明确 rejected。
- WP-03：公共 Pi Schema 接受带游标的遗留字段，内部以 cursor 为准；真实 SDK 已验证跨工具返回 CURSOR_TOOL_MISMATCH、原工具续页和重放。批量结果提供独立 continuation_call。
- WP-04：task profile 默认启用逐用户请求 Intent 守卫，覆盖缺失声明、最终一致性、跨工具回合和修复边界；真实多轮 Pi 验证记录单独保存。
- WP-05：评分器缺失 error row 时不再抛异常；完整 80 案例无 scoring_error，保留原分数和失败记录。
- WP-06：离线 827/827、真实 Pi SDK/CLI/ASCET 16/16；完整首次 Pi 任务 70/80。最新版生产守卫定向任务 16/20、最终结构化校验 20/20；不能宣称模型全部通过。

2026-10-11 详细记录见 [TASK_ACCEPTANCE.zh-CN.md](TASK_ACCEPTANCE.zh-CN.md)。本轮启动过一次已退出的隔离 agent-a，此后所有验证复用同一运行实例；未反复启停 ASCET。

