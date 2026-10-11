# 代码/BDE 工具打磨记录（2026-10-11，build D）

范围仍为保存的代码、BDE、State/Transition 和 Agent 调用可靠性。本轮复用 ASCET PID 40652、端口 32631；不启动、关闭或切换数据库。

## 修改

- 普通符号搜索不默认限定 Method，避免漏掉 StateStatic/Transition Action。
- 按返回的 `read_tool/next_call` 选择读工具；Action 正文与拓扑/绑定分开批量读取。
- 删除非法的 BDE `junction` 类别提示，Junction 使用 State 拓扑查询。
- 不支持/先澄清请求直接返回最终 JSON，不先查询符号；最终守卫检查 decision/outcome 一致，并保留声明一致性。
- 明确 located/partial 取决于请求所需证据。图形成员不需要虚构文本实现；若明确要求外部用途而未找到证据，仍须 partial。
- 对齐生产守卫评测提示，去掉未标注案例中与工具协议冲突的“禁止预先 intent 声明”。不改变原评分器、期望答案或旧成绩。
- 扩展冻结评测脚本，支持同构建完整首答组和独立定向生产守卫组；每次使用新目录，保存全部原始答案和失败。

## 已验证

源码与交付克隆分别通过 830/830 离线回归。真实 SDK→CLI→ASCET 16/16，通过 9 种 depth/direction 逐边对照、代码原文、Pin 归属、游标恢复和最终错误引用拒绝。原生代码/图形指纹不变，实例保留。

定向生产守卫评测：19/20 任务通过，最终结构/引用守卫 20/20 获准，5 次有界修复，67 次调用。独占运行时值与 Dataset 数值案例均为 0 次工具调用；倒计时 Action 正文直接由 read_code 读取。

这些结果不是 20/20 的语义正确率。辅助意图标注精确符合为 9/14，仍有 owner/member、action、clarification_fields 偏差；调用已标注范围合规为 8/8，参数/执行接受为 65/67。一个错误是案例故意制造的 CURSOR_TOOL_MISMATCH，另一个是 AMBIGUOUS_SCOPE，均随后恢复。参数接受不等于语义精准率。

唯一主任务失败 `cross-tool-cursor-recovery` 已按要求观察错工具错误并用原游标续页，但 facts.error_observed 返回了错误详情对象，评分器要求布尔 true。案例仅列字段名，未声明布尔类型；这是输出约定缺口，原始失败保持，不把守卫 accepted 改成任务通过。下一版应在采样前明确字段类型，再单独测试，不能回写本轮分数。

完整首答组完成 80/80 采样，72/80（90%）任务通过，208 次调用中 207 次接受（99.52%，唯一错误为故意制造的 CURSOR_TOOL_MISMATCH），没有意外工具错误或模型服务失败。已标注调用范围符合为 45/50（90%），最终格式通过 77/80；辅助意图精确符合为 14/31，不能将 99.52% 参数接受描述成调用语义精准率。50/50 原生正文比对通过，评分器异常 0，源码/图形指纹及实例保护收尾通过。

| 指标 | 上一完整首答组 build A | 本轮完整首答组 build D |
|---|---:|---:|
| 任务通过 | 70/80 | 72/80 |
| 工具调用 | 230 | 208 |
| 参数/执行接受 | 228/230 | 207/208 |
| 已标注范围符合 | 46/47 | 45/50 |

两组均使用既有 80 案例各一次采样；范围统计按实际调用计数，分母不同。任务通过稍有提升，但范围合规下降，因此不能宣称整体精准率都提高了，也不能从单次模型采样推断稳定增益。范围保持应优先于继续缩减调用数。

本轮 8 个首答失败为 intent-where-wired（from_pin/to_pin 返回对象而非要求的 Pin 名称字符串）、intent-getter-interface（shared_diagram 返回名称而非布尔值）、intent-three-variables（owner/member 混淆后全库查询并收窄到单个方法）、intent-calc-without-owner、intent-duplicate-stage、intent-runtime-now（三例最终输出两个 JSON）、batch-pagination（未消费要求的游标）、cross-tool-cursor-recovery（error_observed 类型）。所有原始失败保留，未用生产修复替换首答分数。

完整首答组记录在 `experiments/pi-agent-eval/2026-10-11-polish-d-first/`，定向组在 `2026-10-11-polish-d-guarded/`，真实 SDK 组在 `2026-10-11-polish-d-live/`。完整成绩和 SHA-256 见 [TASK_POLISH_METRICS.json](TASK_POLISH_METRICS.json)，旧 build A/C 记录保留在 TASK_ACCEPTANCE_METRICS.json。

## 尚需打磨

1. 明示 Agent 最终事实字段类型，例如 shared_diagram/error_observed 是布尔值，from_pin/to_pin 是 Pin 名称字符串；需要数值 ID 时另用 *_pin_id。避免仅靠字段名约定而由评分器隐式强制类型。
2. 对用户限定的 Component/Method/Variant 保持查询范围。不能在参数或零命中后转成全库搜索，也不能把全组件统计收窄为某一个 code_ref；现有提示未保证模型始终遵守。
3. 区分“用户意图声明”与“中途发现的对象”。已有硬守卫能验证声明结构及一致性，不能自动证明 action、owner/member 和 clarification_fields 的语义正确。
4. 无工具的 unsupported/clarify 首答仍可能输出预先 intent 加最终答案两个 JSON；生产守卫有一次修复，关闭守卫时仍应记为首答格式失败。

这些是模型调用/回答可靠性和评测约定缺口；不能通过改写旧分数、放宽事实核验或把守卫 accepted 当语义正确来消除。

文档补正（build E）：此前本页误将 from_pin/to_pin 描述为数值 ID；按原评分器的 nativePin.name/targetPin.name 比较修正为名称字符串。此补正不改变 build D 的原始回答、评分或分母。

## 复现

```powershell
npm test
node scripts/verify-task-acceptance.mjs experiments/new-live-run
node scripts/run-task-guarded-eval.mjs experiments/new-guarded-run guarded
node scripts/run-task-guarded-eval.mjs experiments/new-first-run first-attempt
```

两个 Pi 模式只读取已有实例，不能并行连接同一 ASCET 验收实例。first-attempt 使用完整计划，每案例一次且关闭修复守卫；guarded 使用固定 20 案例并启用生产守卫。提示协议修正会影响生产评测，不能将提升全部归因于工具代码，也不能以这些开发回归证明新数据库或新模型的泛化。
