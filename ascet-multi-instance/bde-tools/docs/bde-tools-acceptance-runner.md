# BDE 完整 case 验收入口 v1

入口为 `scripts/bde_acceptance.py`，与现有只汇总 partial evidence 的
`bde_eval_report.py` 分开。它已能执行固定 G0 离线适配器、保存逐测试/子测试
证据，并按完整场景列表重算结论。没有新增 agent tool 或任意命令执行接口。

每次运行生成 `specification.json`、`source-manifest.json`、各 trial 的原始
worker JSON 或 Bun JUnit、stdout/stderr、摘要及 `report.json`。输出目录必须
不存在，已有结果不能覆盖。详细场景目前只接 G0；全部43必需/3报告 case
均出现在机器清单中，其他 case 的完整执行规格明确未完成。

运行和只读重算：

```powershell
Set-Location E:\Repo\ASCET
E:\PYTHON\python.exe scripts/bde_acceptance.py --output analysis/bde-experiments/2026-10-04/bde-acceptance-g0-02
E:\PYTHON\python.exe scripts/bde_acceptance.py --verify analysis/bde-experiments/2026-10-04/bde-acceptance-g0-01
```

仅选单项可加 `--case CONTRACT-02`；输出仍列出所有 case，不会把选择范围
误当全部交付。程序退出码0表示全部 required 已通过，1表示功能执行失败，
2表示仍缺完整验收；PowerShell 宿主可能把非零 native exit 显示为通用失败。

完整 case 必须满足全部必需场景、次数、证据层级与断言。缺适配器、空测试、
skip、expected failure、重复 trial/test 身份、源码变化都不能通过。Python
记录真实 assertion 调用及 subtest 结果；Bun 读取 JUnit 的精确测试名、失败/
跳过项及进程退出状态。离线 worker 拦截 native I/O，测试 store/native-state
隔离，继承的 live/write flags 关闭。夹具不证明真实 ASCET 行为。

`--verify` 校验所有原始文件摘要，重新读取 worker/JUnit，按代码内固定
适配器和当前场景定义重算；手改 report 的 pass 无效。候选依赖变化使当前
验收失效，原历史结果不改写。需求条款绑定在场景快照中，单纯文档进度/
标题变化不会要求重跑未变化代码。当前依赖快照采取保守范围，包含552文件。

首轮结果：

| Case | 结论 | 证据范围/剩余项 |
|---|---|---|
| CONTRACT-01 | not_run | Python/Doge 参数语料及写前拒绝、unknown分类已执行；全部工具/op/type/owner/scope的穷尽形状仍缺适配器 |
| CONTRACT-02 | pass | Python/Doge分页离线合同：2–16KiB边界/中间预算、UTF-8字节、长记录、重复cursor、文档/会话隔离、缺页、损坏和显式溢出拒绝 |
| CONTRACT-03 | not_run | literal/structural/group日志故障适配器已执行；全部正式图元/接口/Class/创建路径的持久边界仍待闭合 |

9 trials /30 tests（21 Python、9 Bun）全部通过；新验收/分页的15项针对性
测试通过。第一轮跳过测试生命周期错误保留失败及当时 worker 源码，修复后
通过。5项独立重算/缺件/篡改/源码漂移检查通过。没有运行 ASCET 在线实验或
性能重测；没有新增 Cebra 代理实测，不能把它计作 COST-01 或在线故障通过。

新报告是1 required pass /42 not_run，L0尚未通过、整体未交付。历史 Ledger79
仍保留42 not_run /1原件恢复blocked，不改写。新 runner 的 REVERT-03未接
执行清单，其 not_run 不解除任务表中的原件恢复 blocked/hold。

[原始执行结果](../analysis/bde-experiments/2026-10-04/bde-acceptance-g0-01/report.json) ·
[重算验证](../analysis/bde-experiments/2026-10-04/bde-acceptance-g0-01/verification.json) ·
[针对性通过](../analysis/bde-experiments/2026-10-04/bde-acceptance-focused-02/result.json) ·
[原失败](../analysis/bde-experiments/2026-10-04/bde-acceptance-focused-01/result.json)。

下一步接普通 Main 正式 read/edit/连线/删除/diff/显示/revert全流程及独立
身份/顺序/字段/layout oracle，逐场景补在线适配器；CASE_ACCEPTANCE仍partial。
