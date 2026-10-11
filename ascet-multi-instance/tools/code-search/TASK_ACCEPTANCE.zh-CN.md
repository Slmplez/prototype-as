# 五项任务交付与验收（2026-10-11）

本文件保留 build A/C 的验收成绩。后续 build D 的打磨、独立首答与生产守卫记录见 [TASK_POLISH.zh-CN.md](TASK_POLISH.zh-CN.md) 和 TASK_POLISH_METRICS.json；不把不同构建、样本或修复结果拼接为一个成功率。

范围为保存的代码、BDE、State/Transition 和 Agent 调用可靠性。task profile 提供 ascet_find、ascet_search_code、ascet_search_bde、ascet_read_code、ascet_read_bde、ascet_inspect_state 六个工具；Pi 可以并发发起调用，CLI/Bridge 内部协调原生读取。

## 已实现

| 任务 | 实现 | 验证 |
|---|---|---|
| BDE 语义 | query_subject 与 connection_neighbor；事实字段映射；按原读链聚合请求对象 Pins；最终校验 pin_ids、名称、层级、depth/direction | BDE 回归与真实 9 种 depth/direction 组合，逐条比较原生连线 |
| Evidence | 校验 evidence_refs 与 facts 内嵌引用；清理过期/失效会话证据；最多一次修复；失败保留原答案并输出 INVALID_FINAL_ANSWER | 伪造、拼接、过期、嵌套 error 和空答案回归；真实引用验收 |
| 分页 | 根页/批量独立续页提示；公共 Schema 容许遗留字段，cursor 优先；跨工具归属检查和重放 | SDK 实际调用 {target,cursor} 返回 CURSOR_TOOL_MISMATCH，原工具可继续 |
| Intent | 每用户请求首次调用前声明；工具回合/修复不重置；非 execute 不执行查询；最终复制原声明 | 离线 hooks 与真实 Pi 多轮记录 |
| 评测 | 评分器缺失行保护；原始答案、事件、调用和失败保存；冻结构建；生产守卫与首答分开统计 | 完整 80 案例和定向生产守卫测试 |

## 已确认结果

- 最终离线回归：827/827，失败 0。
- 真实 Pi SDK → CLI → ASCET：16/16，代码与原生保存正文一致，图形连接和对象身份一致；真实 PiClient 验证邻居 Pin、错误请求对象名和错误 direction 均被拒绝。
- 完整 Pi 单次采样：70/80（87.5%）；230 次工具调用，参数接受 228/230（99.13%）；已标注范围合规 46/47。参数接受率不等于调用语义精准率。
- 51/51 个原生源码检查通过，评分器异常 0，模型服务失败 0。
- 完整组收尾核验：源码和图形未变、实例保留、端口开放。原始记录没有被修复后的结果覆盖。

完整首次记录位于本地 `experiments/pi-agent-eval/2026-10-11-tasks-01/candidate-pi-01/`。生产守卫定向记录位于 `experiments/pi-agent-eval/2026-10-11-tasks-guarded-01/` 和 `2026-10-11-tasks-guarded-02/`，全部修复消息保留在 raw_assistant_messages 和 final_guard_events；不与完整首次组拼接计算成功率。

首轮生产守卫组原始评分 13/20，其中 6 个失败来自旧评分器对未标注意图案例的 intent 字段不兼容；19/20 最终答案被守卫接受，1 个因最终 intent 非法被明确拒绝。评分记录保留，修复评分器兼容性后另跑新组；不能把首轮改写为 19/20，也不能把引用守卫的 accepted 当成语义完全正确。

最新版同一组 20 个案例：严格任务通过 16/20，最终结构化/证据校验通过 20/20（其中 10 次有界修复）。四个严格失败分别为倒计时选错工具、图形 getter 回答 partial 而非期望 located、实时值和 Dataset 请求仍尝试工具调用。后两项调用被 Intent 守卫拒绝，未执行原生读取。没有评分器异常或服务失败；这些残留是 Agent 调用/回答行为问题，并未用最终获准状态掩盖。

统计与报告 SHA-256 见 [TASK_ACCEPTANCE_METRICS.json](TASK_ACCEPTANCE_METRICS.json)。原始实验全部留在本地；仓库提交源码、测试、协议、示例、文档和统计摘要，排除运行时、供应商 DLL、数据库和实验原始输出。

提交目录独立验收：827/827 离线回归通过，C# Bridge 可由源码编译，重新编译的 Bridge/CLI 在现有 ASCET 上通过同一套真实 16/16；源码与图形指纹未变，进程保持运行。

真实验收追加 Pin 反例时曾因脚本误用 endpoint.object_ref（实际端点字段为 ref）失败一次；已修正脚本、保留失败目录 live-sdk-final，并在新目录 live-sdk-final-02 得到 16/16。没有把该次脚本错误记为工具正确性通过。

## 使用与复现

```powershell
npm ci
npm test
$env:ASCET_PI_TOOL_PROFILE='task'
```

task profile 默认开启最终答案和 Intent 守卫。`ASCET_PI_VALIDATE_FINAL=0` 和 `ASCET_PI_REQUIRE_INTENT=0` 仅用于保留原始首答的评测或明确选择兼容模式。注册 Schema 导出到 agent-task-tool-definitions.json；Intent 协议由 Pi extension 在运行时加入。

真实测试脚本 `scripts/verify-task-acceptance.mjs` 只连接已验证且标记保留的实例，不启动/关闭 ASCET、不切换数据库。`scripts/run-task-guarded-eval.mjs` 要求当前实例已经运行，冻结构建后运行 20 个开发回归案例；`ASCET_PI_EVAL_GUARDS=1` 保留生产守卫。真实测试需要本机 ASCET、Bridge、隔离实例 manifest 和可用的 Pi 模型凭据；它们不随源码仓库发布。

## 边界

最终校验只能核对结构化引用、已检索证据和指定 BDE 字段，无法保证任意自然语言解释正确。完整首次组仍有 10 个失败，主要是 JSON 格式、歧义澄清、图形成员与引用实现的读取、意图约束及不必要的运行时查询。

pagination_complete:true 在生产校验中表示当前会话所有有效代码搜索均完成；若只读取相关子集，应报告 partial 并说明未消费的页面，不把局部定位描述成全库穷尽。BDE Pin 校验需要引用已读取的唯一请求对象；多个对象不明确时使用 facts.requested_object_ref。outcome:located 要求该原读链所有 subject Pins 齐全，partial 可以返回已读子集。

表插值、Dataset 值、未保存编辑、生成代码、运行时调度、AUTOSAR EsAtom 不在本次开发范围。评测使用既有样本，是回归验证，不能据此证明所有数据库的泛化或模型零错误。
