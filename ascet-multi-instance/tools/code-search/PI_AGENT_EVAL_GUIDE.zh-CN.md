# ASCET 代码与 BDE 工具评测及自动优化

目标是让 Pi Agent 用 `ascet_code_find`、`ascet_code_search`、`ascet_code_read` 正确完成定位任务，并减少无效调用。只覆盖保存的代码和 BDE。Pi 可以并发提交，CLI 统一串行访问 ASCET。

当前用户优先级是调用定位的精准性与最终任务成功率，耗时不是优化目标。调用次数和耗时仅作诊断，不抵消准确性退步。当前报告的调用成功率表示未报错；每次调用是否选对对象/范围、是否对任务有用，尚未独立标注，不能给出已测得的调用精准率。

新增独立的 [中文意图测试集](PI_AGENT_INTENT_EVAL.zh-CN.md)：7 类共 28 场景，包含调用前意图声明、歧义澄清和 4 个真实多轮对话。它单独报告识别、调用选择、证据与严格任务通过数，不与历史 143 场景合并。

四轮候选优化及真实 Pi 完整验收已完成，最终回归 710/710 通过。[统一结果](experiments/pi-agent-eval/2026-10-04-OPTIMIZATION-RESULTS-04.md)保留原始分数和统一复核评分；[JSON](experiments/pi-agent-eval/2026-10-04-OPTIMIZATION-RESULTS-04.json)包含逐组指标、失败任务、构建 SHA 与选择理由。四轮保存证据与实例关闭审计均通过；独立核对确认三个受保护 ASCET 进程保持原身份，32631 已关闭。

统一复核后，基线开发集 20/27，四轮候选为 22/27、22/27、21/27、24/27；完整验收为 117/143、128/143、133/143、124/143，调用为 719、626、601、594，非预期错误为 27、12、16、13。第三轮严格通过 93.0%，但错误率 2.68%；第四轮严格通过退至 86.7%，错误率 2.21%。均未同时达到 90%/1% 门槛，推荐保留基线。

第四轮开发改善没有延续到完整验收。它的固定场景通过 57/72、Diagram 场景通过 67/71；第三轮分别为 63/72、70/71。两轮共同成功的 120 个任务，调用为 483 → 485，并未减少。不能把所有任务总调用下降解释为成功任务效率提高。主要退步集中在过滤器、续页、事实字段和证据引用；本轮没有静默采用被拒候选。

## 评测分三层

| 层级 | 内容 | 作用 |
|---|---|---|
| 确定性回归 | 入参、精确源码、身份、分页、输出预算、BDE 局部连接、取消和连接恢复 | 拦截工具自身的回归 |
| 开发集 | 九组各取第 1、4、7 个固定场景，共 27 个 | 在相同条件下选择候选 |
| 完整验收 | 72 固定场景 + 当前快照的每个 Diagram；当前样本为 71 个，共 143 个 | 防止只优化少数开发场景 |

固定场景分为名称定位、代码搜索、源码读取、批量与分页、BDE、Diagram、State/Transition、边界与恢复、需求驱动任务。Diagram 集逐个检查原生对象身份、全部目标 Pins、局部连接及 Hierarchy 边界；空 Diagram 单独验证。历史已测样本不能作为首次未见的泛化集。

每个任务独立启动 Pi 对话与 CLI，Agent 只看到任务和三个工具。原生快照与评分规则留在评测器中。首次尝试、工具请求、原始回答及失败均保存，不注入答案、不自动重试修补。

## 如何评分

严格通过要求：实际调用满足任务范围，读取/搜索完整性满足要求，回答为指定 JSON，引用来自同一会话的相关证据，要求的事实与保存源码/图形一致。源码标点、Variant 空白、State/Junction 类型不能改写。分页未完成不能证明不存在。

证据/事实通过只排除 Markdown fence 格式拒绝，其他要求相同；不表示模型的所有解释都已获认证。模型服务失败、超时、调用预算耗尽和工具错误分别记录。

| 指标 | 定义与使用 |
|---|---|
| 严格通过率 | 完成评测的任务中，严格验收通过的比例 |
| 非预期错误率 | 非故意负例调用中的错误次数；故意的恢复测试另计 |
| 首次调用成功率 | 首个非故意负例调用返回非错误；不能证明选对了范围 |
| 总调用与共同成功调用 | 总调用描述成本；选择候选时只比较两个版本都成功的任务，避免失败提前终止造成假收益 |
| 每任务返回字节数 | 衡量 Agent 阅读负担；单次输出预算另有硬性检查 |
| queue/execution/task 耗时 | 队列、工具执行、整个模型任务分别报告；首次目录初始化不能当作暖态搜索 |
| 源码检查与审计 | 报告实际检查分母、保存证据前后比较、受保护进程和测试实例关闭结果 |

默认任务预算为 20 次调用/180 秒；大 Header 为 64 次/240 秒。每次工具结果限制为 32 KiB。模型服务失败会停止后续任务，不能作为可比的完整优化记录。

## 自动选择规则

1. 先运行全部确定性回归。
2. 基线与候选的任务、模型、Pi、计划、评分器、原生快照和 case/repetition 必须一致。
3. 通过任务增加且非预期错误率不增加；或通过数相同，至少五个共同成功任务调用数下降至少 10%，才进入完整验收。
4. 完整验收必须沿用入选开发轮的同一工具构建，达到严格通过率至少 90%、非预期错误率至多 1%，无超时/调用预算耗尽，所有证据及实例审计通过。
5. 自动记录建议，不静默更换交付默认。失败、不可比、漏测均保留基线。一次试验不能证明稳定或因果收益。

本轮候选改善了入参描述、已知 Method 的直接定位、分页结束标识、源码覆盖范围、错误恢复提示，以及 BDE 目标 Pins 与邻居端点 Pins 的区分。底层保存证据不改写。

第三轮增加明确的保存文档 `identity`、可执行的 `search_scope`、全部 `member_names` 和 Diagram 的 `object_lookup`。第四轮进一步提供可直接复用的 `owner_scope`、`diagram_scope`，明确 JSON 字符串需要引号，实际 refs 和数组不能用示例占位符或编码后的字符串代替。原始 Pi 事件显示部分 `{}` 请求源于模型输出了没有引号的 query 值；工具继续报告这些错误，不猜测并修补模型请求。

## 执行方式

在 `E:\Repo\ASCET\tools\code-search` 下执行：

```powershell
# 新目录；回归 → 基线27 → 候选27 → 达开发门槛时完整验收
npm run verify:pi-optimize -- experiments/pi-agent-eval/my-run

# 重用一份同条件的27场景基线；--full 即使开发未过也测完整候选
npm run verify:pi-optimize -- experiments/pi-agent-eval/my-next-run experiments/pi-agent-eval/my-baseline --full

# 只复核已有原始记录，不调用模型或ASCET
$env:ASCET_PI_RESCORE='1'
node dist/scripts/verify-pi-agent-eval.js experiments/pi-agent-eval/my-run/candidate
Remove-Item Env:\ASCET_PI_RESCORE

# 多轮统一复核后，生成新汇总；参数是输出文件前缀、基线目录、各候选根目录
node dist/scripts/summarize-pi-optimization.js experiments/pi-agent-eval/my-summary experiments/pi-agent-eval/my-baseline experiments/pi-agent-eval/my-run experiments/pi-agent-eval/my-next-run

# 从原始参数流解释错误来源；不改请求、分数或故意负例标签
node dist/scripts/summarize-pi-diagnostics.js experiments/pi-agent-eval/my-diagnostics experiments/pi-agent-eval/my-run/acceptance experiments/pi-agent-eval/my-next-run/acceptance
```

修改源码后先构建；正在执行评测时冻结 `dist`，不可中途重新构建。多个真实评测需串行使用隔离端点 32631，离线复核可并行。评测器只启动/停止自己有 manifest 的实例，保留用户已有 ASCET 进程。

## 产物与评分修正

每轮保留 `optimization.json`、阶段日志、`report.json`、全部请求/回答、原生快照、`resolved-cases.json` 和 `closeout.json`。离线评分修正写入独立 `reassessment.json` 及带时间戳的 `reassessments/`，用原报告 SHA 和评分器 SHA 绑定，不改变原始报告。

本轮发现评分器错误拒绝了支持的 `{text,mode}` 批量 identifier 查询。修正按成功返回的规范化查询判断等价性，Scope、limit、续页、独立计数、完整回读要求全部保留；各轮统一复核，混合/文字模式仍不能替代 identifier。

统一复核还识别 whole Diagram ref 自带的 owner 范围、单一 exact `in.member` 名称过滤，以及多个已知成员 refs 选择同一 owner 的 OR 语义。未知或错误 owner、更宽 member 数组仍拒绝。模型把语句字符串写成对象等类型错误时，该场景记为失败，后续复核继续执行；live 与离线评分共享这一处理。七份历史报告的 SHA 均已确认未改变。

故意传入 JSON 字符串 ref 数组的恢复任务也需识别 Pi SDK 提前返回的明确 read/ref 校验错误。只排除第一次故意入参错误；后续重复失败及传输错误仍计入非预期错误。恢复仍必须按原顺序读取原来的两个 refs。复核使用独立错误索引，原始调用及错误标签不覆盖。

新汇总同时展示原始分数与复核分数、每组成功率、共同成功调用数、失败检查频次和最终选择理由。原始自动决定与统一复核后的决定分别保存。

`summarize-pi-diagnostics` 按原始执行完成顺序关联参数流与调用，识别 JSON 语法、数组字符串、Component/Diagram 身份、枚举和过滤器位置等错误。流与调用数量不一致时不猜测关联；不修改通过率。四轮完整验收的诊断见 [ERROR-DIAGNOSTICS-04.md](experiments/pi-agent-eval/2026-10-04-ERROR-DIAGNOSTICS-04.md)。第四轮 13 个非预期错误分为：JSON 语法 3、数组编码 3、过滤器位置 4、其他工具错误 3；原始事件与调用数量均匹配。

下一轮应先简化全局指导、突出返回的合法参数，并针对分页、过滤器和答案字段开展固定的开发测试。补充每次调用的对象/范围正确性和任务相关性标注，以独立测量调用精准率。单项修复通过后仍需完整验收与重复测量；当前结果不足以宣称稳定或泛化提升。耗时保留为诊断，不作为本轮优化目标。
