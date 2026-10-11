# ASCET code-search Agent 使用验证

日期：2026-10-03。由当前助手作为 Agent，通过真实交付 CLI，根据每次返回决定后续请求。没有预写定位流程，也不是独立模型或盲测。后续补丁验收是脚本回归。

原始请求与结论：[report.json](experiments/agent-usability/2026-10-03T06-06-33-529Z/report.json)，[完整交互](experiments/agent-usability/2026-10-03T06-06-33-529Z/requests.jsonl)。

## 任务结果

| 任务 | 结果与证据 | 限制 |
|---|---|---|
| 采样周期影响计时器 | P_AEBdT 在 Trigger_BA_From_Off/calc 赋给 C_AEBdT，计算踏板变化率；另定位限幅计时器、BA/IB State 计时累加，步骤 1–4 | 部分完成。未取得跨 Component 的参数共享或传值证据，不能断言这些同名 C_AEBdT 一定来自该赋值 |
| 驾驶员接管 | 双击油门检测 → OR → AEB_Core → TriggerConditions → Trigger_Off_From_IB/calc；制动压力超过 IB 阈值、低于 BA 阈值分别进入停用条件，步骤 5–16 | 证明保存逻辑与连线；未读取有效 Dataset 阈值或验证项目运行可达性 |
| BDE 引用 Component | AxCtrlLimGradAxMin/Max 引用同一 AxCtrlLimGradAx；读取真实 Pins、8 条直接连接、邻居接口，并另行读取真实 calc，步骤 17–22 | 外部 Pins 与被引用 Method 正文分别取得，不能互相代替 |
| 状态机计时和 Init | BA/IB Entry、Static 累加 tAEB；Off 清零；Transition Action 设置 AEBLockTime；Init 返回 0.0 Literal → AEBLockTime/set 连线，步骤 23–28 | Trigger binding 单独返回；当前工具没有 State/Transition 端点与优先级 |
| Dataset / Formula | 根据交付能力契约确认不读取 Dataset 数值或 Formula 定义 | 能力边界核对，未执行数值或定义现场验证；未用零命中断言不存在 |

原始交互共 28 次请求：27 次成功，1 次真实入参误用。步骤 10 将路径传给 in.component，收到 INVALID_REQUEST；随后先 find 获取 Component ref，再限定搜索恢复。

## 本轮改动

- 局部 read 默认保留目标对象全部 Pins，邻居仅保留参与选中连接或 boundary 的 Pins。节点、连接、层级边界保持一致。邻居完整接口可用其 ref 加 depth:0 读取；include_graph:true 保留选中邻域所有 Pins。
- 局部 object/nodes 增加原生引用 component_path，Agent 可直接 find 引用 Component 的 Method，无需先读取 raw graph。外层 component_path 仍表示 Diagram 所属 Component。
- in.component 错误明确提示用 find 解析名称或路径；Agent Prompt 补充身份范围、局部读取及跨 Component 同名变量的证据规则。

| 真实局部读取样本 | 改动前 Pins | 改动后 Pins | 改动前 JSON 字节 | 改动后 JSON 字节 |
|---|---:|---:|---:|---:|
| 停用条件 OR | 69 | 8 | 11,060 | 3,865 |
| 梯度限幅 | 25 | 16 | 5,834 | 5,177 |
| 状态机 Init | 2 | 2 | 1,125（批量项） | 1,139（单项） |

OR 返回减少约 65%，梯度限幅减少约 11%。Init 接口没有多余 Pins，因此不减少；单项与批量外层差异造成 14 字节变化。该比较是阅读负担改善，不证明搜索引擎提速。

## 验证与耗时

`npm.cmd test`：512 项通过，0 失败。新增覆盖深度 0/1/2、incoming/outgoing/both、未连接邻居 Pins、目标完整接口、boundary 保留和可恢复入参提示。

[补丁实机回归](experiments/agent-usability/2026-10-03T06-06-33-529Z/polish-verification/report.json)：18 次 CLI 请求，包括一次预期非法请求；默认局部结果与原始图、冻结事实及本轮改动前真实响应对照，连接均一致。引用路径定位与真实 Method 回读通过。

[新版 ZIP 验证](experiments/cli-package/2026-10-03T06-27-26-313Z/report.json)：从含空格路径解压，155 个文件哈希核对；9 次 find/search/regex/read/分页/Init/Private Diagram 实机调用；包内 TS/C#/Smalltalk 源码重建并实机验证通过。

原始实际定位任务：首次请求 1,647 ms；后续 26 次成功请求中位数 101 ms、P95 314 ms、最大 339 ms。补丁回归的新 CLI 首次有效 find 为 547 ms。时间包含常驻 JSONL 请求到解析响应，不包含 Agent 思考；首个请求还包含 CLI/Bridge 建连。不能宣称冷态或任意查询均在 0.5 秒内。

[最终审计与清理](experiments/agent-usability/2026-10-03T06-06-33-529Z/closeout.json)记录数据库完整性与测试实例关闭结果。源码和完整图与冻结版本一致：180 Components、870 份代码、71 张 Diagram，指纹 `5cb29e83cf0588949d1f22e6621292199976cd8ca4df8dac88bfc64e8549c4df`。

交付包：[ascet-code-search-cli-0.2.0-20261003T062324770Z.zip](../../dist/ascet-code-search-cli-0.2.0-20261003T062324770Z.zip)，SHA256：`e2266094e734c7ca49cdd435df4a9e3191e098d18a266fa39c76d8ff0ffa78d1`。

下一步的实际缺口是 State/Transition 端点、优先级，以及跨 Component 共享参数/传值的配套证据。没有新增自动变更监听、UI、MCP 或 Dataset/Formula 读取功能。
