# 中文意图识别测试

新增独立的 28 场景测试集，原有 72 个固定场景及 71 个 Diagram 场景保持原评分口径。目标是检查 Agent 能否根据自然语言确定任务、保留用户范围、选取工具、读取证据并完成回答。耗时只作诊断。

| 类别 | 数量 | 测试内容 |
|---|---:|---|
| 中文口语 | 4 | 压力清零、锁定时间初始化、计时器递减、激活与非激活分支 |
| 范围约束 | 4 | 完整变量与相似变量、指定 Method 的字面代码、指定 C Variant、Class Init 与图形/状态机 Init 区分 |
| BDE 与状态机 | 4 | 真正的接线目标、图形 getter、Static 与 Entry/Exit 区分、Junction 到 Off 的 Transition |
| 组合需求 | 4 | 多个变量独立搜索、多个 Component 下的同名成员、共享引用 Class、仅读取指定行 |
| 歧义与澄清 | 4 | 缺失指代、未指定 calc 的拥有者、C Variant 未选择、多个同名 Hierarchy |
| 多轮上下文 | 4 | 已读 Method 改为局部读取、扩大变量批量、初始化后追问递减、切换 Class 与 Method |
| 能力边界 | 4 | 实时数值、未保存编辑、Dataset 数值、生成目标代码不能用保存源码冒充 |

固定需求保存在 `PI_AGENT_INTENT_CASES.json`。`requirement` 是给 Agent 的中文需求；`intent`、`rubric`、`score_as`、`intent_fixture` 是隐藏的评分数据。模型不会看到这些字段、原生快照、预期答案或真实 ref。额外给模型的 `response_fields` 只说明回答字段与类型。

模型在每个用户轮次的首次工具调用之前声明意图。评测器从原始 Pi 事件保留首次声明，不能用读到结果后的声明替换。无需工具的澄清/边界任务使用首次回答。结构化意图是评测专用，不改变交付工具的入参或返回。

多轮场景使用 Pi RPC 模式，在同一个进程、对话及 CLI 连接中发送两个真实用户轮次。只有收到 `agent_settled` 才发送下一轮，保留上轮真实结果和 refs；不拼造聊天历史，不注入正确答案。最终追问评分使用当前轮调用，先前返回的 refs 仍可解析。所有轮次返回的文本都检查保存源码保真。

## 指标

- `recognition_passed`：工具调用前的意图声明符合当前需求，保留要求的正向目标、Component/成员约束；需要澄清时，缺失信息与实际提问符合要求。
- `selection_passed`：当前任务的实际调用无错误、使用必要工具，并满足明确的搜索/读取范围；歧义任务不能擅自回读某个候选，需要复用 ref 时检查真实上轮 ref。
- `evidence_passed`：原有事实、证据引用、读取完整性、过滤器及分页等规则通过；不因正确的意图声明放宽这些规则。
- `strict_passed`：所有验收要求同时通过，包括执行完成和精确回答格式。

“定位未知实现”允许用 `locate`、`search` 或场景明确接受的 `read` 声明；明确要求读取某个已知成员的任务仍不能用搜索声明替代。用户没有给字面关键词时，中文/英文搜索提示词不要求为空。用户明确指定的变量、范围和成员仍严格检查。最终声明可以附带已发现信息，只检查声明结构；它不能覆盖首次工具调用前的意图评分。

这些是任务级指标。调用选择检查覆盖所声明的约束，尚不是每次调用完整的相关性标注；不能称为全量调用精准率。意图声明本身也不能证明 Agent 的全部推理正确。澄清提问采用固定字段和词语检查，不认证提问的每一句语义。

28 个场景是当前数据库上的中文测试，不是全新数据库泛化集。每场景默认一次首次尝试，不隐藏重试，不修补原始回答。报告保留计划和评分器 SHA、原始事件、每次请求/回答、调用前意图、原生快照和清理审计。只能停止评测拥有的隔离实例，不能停止用户已有 ASCET。

报告同时记录 planned、attempted、completed 与 coverage_complete。模型服务失败会停止整批，未完成任务不能算成功，也不能从少量已完成任务推算全套通过率。离线评分修正另存 reassessment，绑定原始报告 SHA，不改原始报告。

## 执行

```powershell
# 从版本化定义生成固定 JSON 计划；只在有意修改测试集时运行
npm run prepare:pi-intents

# 验证 28 个场景、分组、评分别名及原生样本；不调用模型
npm run verify:pi-intent-cases

# 真实 Pi + 配置的模型 + 隔离 ASCET；使用新的输出目录
npm run verify:pi-intent -- experiments/pi-agent-eval/my-intent-run

# 指定分组或增加独立重复；每次重复都是新对话
$env:ASCET_PI_GROUPS='intent_ambiguity,intent_context'
$env:ASCET_PI_REPEAT='3'
npm run verify:pi-intent -- experiments/pi-agent-eval/my-intent-repeat

# 原始记录离线复核；必须使用当时的两个计划文件
$env:ASCET_PI_SUITE='intent'
$env:ASCET_PI_RESCORE='1'
node dist/scripts/verify-pi-agent-eval.js experiments/pi-agent-eval/my-intent-run
```

运行默认交付 profile 为 `baseline`。四轮历史候选的 143 场景结果不与新增的 28 场景合并。运行期间冻结 `dist`，不要中途构建；输出的意图成功率只有完成真实模型评测后才能报告。
