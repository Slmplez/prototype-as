# ASCET code-search 的 12 项真实任务评测

日期：2026-10-03。当前助手通过交付 CLI，根据每次实际返回决定后续请求；任务只有自然语言需求和参考请求预算，没有预写定位操作。本轮不是独立模型评测或盲测。结论中的“完整定位”和“部分定位”为当前助手对证据充分性的判断。

原始评测使用包 `ascet-code-search-cli-0.2.0-20261003T062324770Z`。后续错误提示与指令改进单独验收，没有把改进后的脚本回归算成新的自然语言任务成功率。

## 结果

10 项定位任务：7 项取得所要求的完整证据，3 项只有部分证据。2 项能力边界任务分别确认零命中的范围和运行时调度不受支持。

| 任务 | 结果 | 请求数 / 参考预算 | 实际证据及限制 |
|---|---|---:|---|
| 请求加速度到制动力 | 部分定位 | 6 / 6 | 找到力增量计算和使用实际加速度的 rollout 力平衡；没有证明请求加速度直接转换目标制动力的完整路径或符号约定 |
| 驾驶员制动力到压力 | 完整定位 | 2 / 4 | DBR_Force2Pressure/calc 原文为 `pressure = ((-1.0) * C_frac_cp * force);`，不包含条件分支；没有读取 Dataset 参数值 |
| BDE 查表使用 | 部分定位 | 4 / 8 | 找到 C_AEB_AXCKiModCtrlDev_table 的 getAt Pins 和真实上下游连线；该对象没有引用 Component 路径，不能将内置 getAt 当作保存的 Method |
| 加速度控制器积分部分 | 部分定位 | 4 / 8 | AxCtrldFxDtInt/calc 计算增量和截断余量，未激活时清零；正文不足以证明完整积分状态或限幅实现 |
| Module 输入准备 Process | 完整定位 | 7 / 5 | AEBPre5ms_iBooster/Main 的 Process 绑定、实际连接和 AEB_pDriverIBooster/calc 的完整去抖正文；没有推断运行周期 |
| 其他 Class 的 Init | 完整定位 | 3 / 5 | AEB_RedEngTorque/init 的完整两行 ASDL 正文；同时发现 BDE Init，保留不同表示 |
| 状态机车辆保持计时 | 完整定位 | 3 / 6 | Off Entry/Static 清零、Hold Entry/Static 累加、Transition #20 的 Condition；不把注释当原生 Transition 端点 |
| Hierarchy 边界 | 完整定位 | 10 / 8 | 保存的 Trial_Hierarchy 实验样本中两层 Stage 边界及两端对象回读；不是生产 AEB 层级样本，不证明任意 Component 内部依赖 |
| 跨行正则片段 | 完整定位 | 3 / 5 | AEB_RedEngTorque/calc 的原文第 5 至 24 行匹配，并回读完整实现；正则片段不是 AST 分支 |
| 多查询、分页和批量回读 | 完整定位 | 5 / 8 | AxAct/VxAct/FxDriver 独立命中总数 44/49/18，两页每页整批 6 个命中，再限定 Component 批量读三个 Methods；不是 AND 查询 |
| 不存在的 identifier | 边界确认 | 1 / 3 | `status:ok`、零命中、无续页只证明支持范围的保存代码无匹配 |
| Process 运行时调度 | 不支持，边界确认 | 2 / 3 | Process 与 Sequence 的保存事实可读；不能用名称或 Sequence 证明实际调度与执行频率 |

共 50 次请求，1 次入参误用：步骤 17 把 kind 放在根层，收到 INVALID_REQUEST 后纠正。2 个任务超出参考预算。误用率为这组请求中的 1/50，不能推广为其他 Agent 的误用率。

Module 任务原始结论备注误写“八次请求”；实际台账为七次，本报告和 summary.json 使用台账统计。原始记录保留以便核对。

## 性能和完整性

首次请求 1,042 ms，包含 CLI/Bridge 启动。其后 48 次成功请求中位数 91 ms、P95 454 ms、最大 610 ms；全库批量正文搜索 610 ms 和全库 Init 名称发现 538 ms 超过 0.5 秒。没有把非法请求的快速返回纳入后续性能分位数。时间不包含 Agent 思考或 ASCET 启动、打开数据库，也不是重复性能基准。

累计返回 107,945 字节，最大单次 10,173 字节，均低于 128 KiB 预算。15 次完整文本回读与冻结原文逐字一致，包括混合 CR/CRLF。最终原生审计确认 180 Components、870 份文档和 71 张 Diagram 及完整图结构未变化，指纹 `5cb29e83cf0588949d1f22e6621292199976cd8ca4df8dac88bfc64e8549c4df`。

所有现场请求使用隔离端口 32631；任务实例已关闭，端口已释放，其他三个 ASCET 进程身份未变化。没有用生产数据库做模型写入。

## 根据误用实施的改进

- 非法字段错误现在指出字段名，例如 `Unsupported field(s): "kind". Put scope filters under in: in.kind`。提示不回显字段值，字段名数量和长度受限。
- Agent 指令明确 in.kind 是保存内容的种类；BDE Process 应按 member 找所属 Diagram 并检查 diagram_methods。增加可以执行的 Process 定位请求例子。
- 明确需求词到实际标识符的转换、表参数内置 getAt 的边界，以及未知 Hierarchy 名称的发现流程。没有增加语义搜索，也没有将 SGVariable 推断成 Class 引用。

`npm.cmd test`：513 项通过，0 失败。新包从含空格路径解压后核对 155 个文件哈希；9 次 find/search/regex/read/分页/Init/Private Diagram 调用通过。包内 TS/C#/Smalltalk 源码重建及重建后实机 regex/read 通过。另有四次请求验证新的字段错误、修正范围、Process 名称定位和整图读取。改进后的实验实例审计与关闭通过。

这些是接口及包装回归，尚未证明新指令提升了独立 Agent 的任务成功率。

## 后续优先级

1. 图形对象发现：当前必须知道对象名或读取整张 Diagram。补充按原生对象类型列目录，帮助未知 Hierarchy、表参数和引用实例的定位，减少猜词与无关回读。
2. 配套模型信息：表值类型及插值配置、State/Transition 端点与优先级、跨 Component 实际参数传值或共享关系。只能返回原生事实；Dataset 数值仍由独立工具读取。
3. 语义定位评测：增加只给需求、不预先提供变量名的任务，并让独立 Agent 使用新指令，观察请求数、误用和缺失证据。不根据这次自评宣称普遍成功率。
4. 对首次查询及两项全库慢请求做重复测量，再决定优化；本轮没有证明所有请求小于 0.5 秒。

## 证据和交付

- 任务定义：[AGENT_EVALUATION_TASKS.json](AGENT_EVALUATION_TASKS.json)。
- 请求、结果和统计：[report.json](experiments/agent-evaluation/2026-10-03T06-41-09Z/report.json)、[requests.jsonl](experiments/agent-evaluation/2026-10-03T06-41-09Z/requests.jsonl)、[summary.json](experiments/agent-evaluation/2026-10-03T06-41-09Z/summary.json)。
- 原始任务审计：[closeout.json](experiments/agent-evaluation/2026-10-03T06-41-09Z/closeout.json)。
- 补丁实际请求及审计：[patch-verification/report.json](experiments/agent-evaluation/2026-10-03T06-41-09Z/patch-verification/report.json)、[patch-verification/closeout.json](experiments/agent-evaluation/2026-10-03T06-41-09Z/patch-verification/closeout.json)。
- 新包解压、哈希、重建与实机验证：[package report.json](experiments/cli-package/2026-10-03T07-01-07-559Z/report.json)。
- 新版 CLI ZIP：[ascet-code-search-cli-0.2.0-20261003T070029013Z.zip](../../dist/ascet-code-search-cli-0.2.0-20261003T070029013Z.zip)。SHA256：`2ca44ea9bb28f38f74b100a4e5e5aa98380bf6035808c638ce30de8df5ff61ef`。

可用 `node dist/scripts/summarize-agent-evaluation.js experiments/agent-evaluation/2026-10-03T06-41-09Z` 从完成后的原始记录重新计算本轮统计。
