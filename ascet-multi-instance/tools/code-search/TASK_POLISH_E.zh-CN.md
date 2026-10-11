# build E：范围约束、事实类型与详细文档

日期：2026-10-11。范围为保存代码、BDE、State/Transition 和 Agent 调用可靠性。复用 ASCET PID 40652、端口 32631；未关闭、重启或切换数据库。

详细手册见 [SEARCH_TOOLS_GUIDE.zh-CN.md](SEARCH_TOOLS_GUIDE.zh-CN.md)，机器可读汇总见 [TASK_POLISH_E_METRICS.json](TASK_POLISH_E_METRICS.json)。

## 修改

1. **声明范围与实际搜索对照**：task Pi profile 在初始 search_code/search_bde 前检查声明的 Component/成员与实际 scope。遗漏、增加或换错 owner、缺少声明成员、使用没有当前身份凭据的 ref 时阻止原生查询，返回 INTENT_SCOPE_MISMATCH 及保持原 queries/context/limit 的修正建议。只检查 action search；不阻止读取被引用实现，不替代 CLI 游标归属检查。
2. **调用方 facts 类型合同**：支持 `factsSchema` 和 `ASCET_PI_FACTS_SCHEMA`。Ajv 不强转、不填默认值、不删字段；Schema 最大 16 KiB。最终事实类型错误进入既有一次有界修复流程。无 Schema 时不自动推测业务字段类型。
3. **Intent 提示对齐**：区分用户目标 action 与 execute/clarify/unsupported 决策。clarify/unsupported 只输出一个最终 JSON；Component 不放进 members；全组件统计不换成单个 code_ref，零命中或参数错误不退全库。
4. **CLI 与手册补齐**：CLI help 显示六工具，并明确 Pi 守卫不是 CLI 默认功能。新增详细手册和 8 份真实工具 JSON 样本，覆盖 Init 原文、BDE 主体/邻居、Static Action、身份搜索和游标恢复。
5. **评测合同与完整性**：V6 保持旧 80 案例及原生事实 rubric，为 5 个案例增加调用方可见类型 Schema，不含数据库答案。定向组扩至 24 案例。汇总增加 planned/attempted/not_attempted/stopped_reason，避免中止评测被误报成全量通过。

旧 build D 文档把 from_pin/to_pin 误写为数值 ID；已按原评分器纠正为 Pin 名称字符串。数值 ID 使用 *_pin_id。只更正文档，不更改旧回答或旧评分。

## 本轮实测

| 组别 | 结果 | 验证边界 |
|---|---:|---|
| 源工作区离线 | 836/836 | 协议、范围、引用、分页、预算、类型与 Pi hooks 回归 |
| 交付克隆离线 | 836/836 | 同步源码在交付目录编译测试 |
| 真实 SDK→CLI→ASCET | 17/17 | 原生代码/图形对照、9 种 depth/direction、游标及 ref 身份 |
| Pi 生产守卫定向组 | 24/24 | 已完成，开发回归集，包含修复后的答案 |
| Pi 无守卫首答组 | 28/30 已尝试 | 计划 80，因模型服务余额不足中止，50 项未尝试 |

定向组 73 次工具调用，72/73 参数/执行接受；唯一错误是案例故意制造的 CURSOR_TOOL_MISMATCH，随后原游标恢复。意外工具错误 0；已标注范围合规 9/9。最终校验 accepted 24/24，共 2 次有界修复，分别修正澄清 outcome 和最终 intent 与声明不一致。

**24/24 不是所有语义均正确。** 辅助 Intent 精确符合仅 9/18；这些偏差保留在原报告。原生正文核验 22/22 通过，只证明被核验正文一致，不证明所有自然语言解释正确。

首答组已尝试 30 个案例，其中 29 个正常完成模型响应、28 个任务通过、1 个任务失败；另 1 个模型服务失败。共 73 次工具调用，接受 72/73，意外调用错误 1。已标注范围符合 15/20，辅助 Intent 精确符合 17/28，原生正文核验 20/20，评分器异常 0。首答关闭生产声明/最终修复守卫，不能把定向组结果覆盖首答结果。

这不是完整 80 案例结果，不能和 build D 的 72/80 直接比较，也不能声称整体成功率已稳定提升。V6 又增加显式类型合同，组间提示并非完全不变。原生保存代码/图形指纹、PID/启动时间和端口保护收尾均通过。

## 原始失败与残留

### intent-followup-timer：跨轮读取失败

Agent 已用 read_code 读取 Off 的 state_static 完整正文，随后又把同一个文本 ref 发给 inspect_state，得到正确的 WRONG_REF_TYPE 错误。最终声明也添加了不符合原标注的 terms/member 限制；原评分记录 intent_terms、intent_member_constraints、intent_call_errors、intent_read_scope 失败。

额外人工核对发现，它把条件减法解释成 “timer is clamped at zero”。保存正文只有 `if (AEBLockTime > 0.0)` 后减去 C_AEBdT，没有 min/max 或下限赋值；例如正数小于减量时仍可能减为负数。该自然语言推断不能由“已读原文”证明，也不能因为其他正文核验通过而忽略。原始 rubric 和成绩保持不变。

后续应将这类跨轮“已读文本又误选拓扑工具”的任务加入生产守卫定向集，并增加通用的语义解释评测；当前不宣称它已被本轮修复。

### holdout-independent-two：模型服务失败

ASCET 查询成功，两个独立符号的总命中为 4 和 2，随后模型服务返回 `402 Insufficient Balance`，没有产生最终答案。评测停止并保留该失败；剩余 50 项未调用，不重复扣费，不切换模型，不用成功重试替换旧记录。

汇总字段 `completion.full_plan_completed:false`、`not_attempted:50` 和 skipped_cases 明确标记未完成。恢复模型服务后应在新目录只执行未尝试的 50 项，保持冻结构建/合同；服务失败案例若重测另记为恢复实验，不能替换首次尝试。

### 守卫覆盖仍有限

- 初始搜索范围守卫检查声明 components/members，不能保证声明来自用户的正确意图；kind/Variant/Diagram 等其他限制仍需调用标签与评测检查。
- 合法 owner 内错误地收窄到单个成员，仍可能通过当前范围守卫；提示已提醒，但不是全部限制的硬校验。
- facts 类型 Schema 由调用方提供，每扩展会话固定；生产没提供 Schema 时，不会凭字段名自动确定布尔值、名称或 ID。
- 引用/BDE Pin 校验能阻止特定错误事实，不能证明任意自然语言解释、运行时行为或所有图形语义。
- Public/Private 等边界的 Schema/离线覆盖与特定真实样本通过，不等于未见数据库的全类型验收。

## 记录与复现

原始完整模型消息、工具结果、修复、冻结构建、原评分和收尾仍保留在源工作区的以下目录，未将巨大的实验目录提交 Git：

```text
experiments/2026-10-11-polish-e-offline-final.log
experiments/pi-agent-eval/2026-10-11-polish-e-live/report.json
experiments/pi-agent-eval/2026-10-11-polish-e-guarded/guarded-pi-01/report.json
experiments/pi-agent-eval/2026-10-11-polish-e-first/candidate-pi-01/report.json
```

各原始 report 的 SHA-256、失败检查、统计分母与收尾在 TASK_POLISH_E_METRICS.json 中。旧 build A/C/D 记录不覆盖。交付克隆离线日志在克隆 tools/code-search/experiments 下。

使用新目录复现，不覆盖录制：

```powershell
npm.cmd test
node scripts/verify-task-acceptance.mjs experiments/new-e-live
node scripts/run-task-guarded-eval.mjs experiments/new-e-guarded guarded PI_AGENT_PRECISION_V6.json
node scripts/run-task-guarded-eval.mjs experiments/new-e-first first-attempt PI_AGENT_PRECISION_V6.json
```

live 验收要求 manifest 指向已运行、允许读取的实例；两个 Pi 模式顺序执行。命令不会启动或关闭 ASCET。模型服务可用是采样前提，工具离线通过不能替代未完成的模型评测。
