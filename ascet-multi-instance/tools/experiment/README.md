# ASCET Experiment Agent Tools

面向 ASCET 6.4 Offline PC 的首版工具。提供 16 个 MCP 工具、JSONL 入口和 TypeScript Broker，已在独立 ASCET 实例的 PID 示例中完成打开实验、发现信号、批量标定、修改激励、有界步进、取数与断言。

## 使用

需要 Windows、Node.js 22 以上、.NET Framework 4 编译器及 ASCET 6.4 的 `Etas.AscetNET.dll`。ASCET 实例必须已经运行并打开目标数据库，启用 Web Service 以加载 `AaaExperimentInterface`。`exp_attach` 不启动应用、不切换数据库。使用隔离副本进行实验测试。

```powershell
Set-Location .\ascet-multi-instance\tools\experiment
npm.cmd ci
npm.cmd run build
$env:ASCET_EXPERIMENT_MANIFEST = '<隔离实例 instance.json 的绝对路径>'
npm.cmd run start:mcp
```

MCP 客户端直接启动 `node E:\Repo\ASCET\tools\experiment\dist\src\mcp.js`。可参考 [MCP 配置示例](mcp.example.json)，替换实例 manifest；该示例未自动写入任何客户端的全局配置。stdio 只输出协议内容。

`instance.json` 沿用仓库多实例格式，至少包含 `runtime`、`database`、`logs` 的绝对路径以及本地 Cebra `port`。Host 检查监听端口所属进程、进程启动时间、可执行文件路径及实际打开的数据库；不同端口的其他实例不会被操作。默认 DLL 路径可通过 `ASCET_API_DLL` 修改。

不使用 MCP 时，运行 `npm.cmd start`，逐行输入以下形式的 JSON：

```json
{"id":"1","name":"exp_attach","arguments":{}}
```

响应返回 `sessionId`，后续调用必须使用它。JSONL 入口和 Broker 都保持常驻，不能为每个动作重启一次进程。

## 工具和边界

| 工具 | 首版行为 |
| --- | --- |
| `exp_attach` / `exp_detach` | 绑定、释放实例连接。detach 保留 ASCET 和当前实验。 |
| `exp_catalog` | 查询组件路径，最多 200 项；用于定位 `exp_open` 的组件。 |
| `exp_open` | 打开指定组件和配置，必要时由 ASCET 构建；核对实际结果，不接受静默回退。相同实验复用，不同实验要求显式关闭。 |
| `exp_inspect` | 返回实例身份、实验、状态、仿真秒数和记录器状态。 |
| `exp_signals` | 分页返回原生 label、显示名称、标量资格和标定资格，并产生 `signalRef`。 |
| `exp_read` | 一次原生调用批量读取最多 128 个标量，physical 或 hex。 |
| `exp_write` | 暂停状态下批量写入最多 64 个数值标量；完整检查资格，逐项写入和回读。非事务，不自动重放。 |
| `exp_configure` | 读取事件/激励；按 revision 校验并修改已有数值激励、编辑事件，或把标量 signalRef 创建为新的 constant/pulse 通道；可显式保存环境。 |
| `exp_parameters` | 重置变量、参数和更新依赖参数已实测。DCM load/save 转发厂商接口，完整文件往返尚未验收；PID 无可导出参数时返回明确错误。 |
| `exp_control` | start、pause、stop、close；另有 start/stop OS 和 measurement 原生入口，Offline PC 会明确拒绝在线动作。关闭必须传 `discardUnsaved:true`。 |
| `exp_step` | 一个事件、一段仿真时间，或以标量比较器为条件的有界步进；条件模式逐事件执行并受 maxEvents/maxWallTimeMs 约束。 |
| `exp_record` | 查询、设置输出文件、启动和停止已存在的 Data Logger；不会创建记录器或通道。 |
| `exp_run_case` | 后台运行分段用例，采集每段结束的标量快照，并执行最终值范围断言。 |
| `exp_job` | 查询、请求在下一段结束后取消；请求取消不代表立刻停止。 |
| `exp_results` | 返回有上限的快照序列、统计、断言和完整 JSON 文件路径。 |

返回 `capabilities` 明示能力。在线控制适配器、事件编辑、标量通道创建、条件步进、环境保存和 Data Logger 控制已接入；在线目标、数组/矩阵读写、MDF 解析和完整记录文件解析仍按实例能力单独验收。记录器已存在时，分段用例拒绝运行，避免未经验证的分段日志行为。

信号只使用发现工具返回的 `signalRef`。例如 PID 的显示名称是 `compute/in`，厂商读取 API 所需 label 实际是 `in/compute`。重开或关闭实验会使旧引用失效，人工替换实验对象或数据库也会使绑定失效。

## 一个完整用例

1. `exp_attach` → `exp_open(componentPath="ETAS_SystemLib\\Transferfunction\\Control\\PID", configuration="test")`。
2. `exp_signals` 取得信号引用；`exp_configure(action="read")` 取得事件、激励和 revision。事件用 `section="event"` 修改；新通道用 `action="create"` 和 signalRef 创建。
3. 停止状态下先 `exp_step(mode="events", value=1)` 进入暂停，完成 ASCET 的启动初始化。
4. 按需要 `exp_write`，或修改已存在的 `in/compute` 激励通道。apply 提交完整的 mode、offset、amplitude、frequencyHz、phase 和最新 revision，并验证回读。
5. 提交用例，然后用 `exp_job` 等待或取消，完成后用 `exp_results` 取结果。

```json
{
  "name": "exp_run_case",
  "arguments": {
    "sessionId": "从 attach 返回",
    "requestId": "pid-case-001",
    "caseSpec": {
      "initialization": "preserve",
      "stepSeconds": 0.02,
      "chunks": 5,
      "signalRefs": ["输入引用", "输出引用"],
      "assertions": [{"signalRef":"输入引用","min":0.5,"max":0.5}]
    }
  }
}
```

`preserve` 要求已经暂停。`reset` 会在需要时先推进一个事件，再重置变量、参数，最后应用传入的 writes；它不承诺把仿真时钟归零。start 可能依据 ASCET 选项重新初始化参数，所以用例通过暂停状态下的 step 保持已写入值。

`Steps=1` 是一个事件，不是一轮所有任务。按秒步进仍受事件边界影响，例如请求 0.05 秒可能实际前进 0.049 秒；响应提供实际起止时间。`exp_results.source=quiescent_snapshot_series`，`completeWaveform=false`，结果不是原生 Data Logger 的完整波形。范围断言只针对最后一个快照。

## 实现和性能

```text
MCP / JSONL / TypeScript
  → Broker 单实例队列、signalRef、用例和写前日志
  → 常驻 .NET x86 Host、端口与进程校验、共享独占锁
  → 固定 Smalltalk 模板
      → 厂商 AaaExperimentInterface 控制/标量接口
      → 原生实验对象的批量状态与配置读取
```

复用 [进程内查询设计](E:/Repo/ASCET/docs/bde-in-process-query-pattern.md) 和 [原生批处理设计](E:/Repo/ASCET/docs/ascet-native-batch-method.md)。对象遍历和批量取值在 ASCET 内完成，每次读真实状态，不缓存动态数值。模板每次连接编译一次；本次性能收益主要由批量减少往返实现，没有单独声称模板缓存的收益。

相对初始方案，首版采用同一条 Cebra 连接直接调用厂商的 `AaaExperimentInterface`，把结果与错误码放在同一原生调用内，避免多个 SOAP 往返。未发布第二条独立 SOAP 控制通道。实验需要 Web Service 类已加载，独立 HTTP 端口 `-wsport:32652` 在测试实例中已启动验证。

直接通过 Cebra 调用厂商阻塞式 `stepExperiment` 在副本实测会阻塞处理；当前实现固定调用厂商 step-mode 设置，再经 UI 调度触发 `menuExperimentStep`，立即返回。Broker 每 10–25 毫秒检查状态，避免在 Cebra 调用内忙等。取消仅发生在有界片段之间，超时不会被误报为停止。

2026-10-07，PID 实验暂停时的本机测量，每项 20 次。以下是 Broker 调用全程，包含 Node 调度和 Host/Cebra 往返，不含模型推理、MCP 客户端网络或 ASCET 应用启动。

| 调用 | 中位数 | P95 |
| --- | ---: | ---: |
| inspect | 12.34 ms | 50.57 ms |
| 10 信号批读 | 12.33 ms | 50.32 ms |
| 同样 10 信号逐个读 | 125.82 ms | 167.60 ms |

本次批读约快 10.2 倍；连接建立 186 ms，已有构建产物时打开实验 844 ms。P95 受 ASCET UI 调度抖动影响；首次编译曾约 5.4 秒，应与热态工具耗时区分。测量随机器负载与模型规模变化。

## 失败恢复和产物

- 与 code-search/BDE 共用按 Cebra 端口划分的本地锁。连接存续期间持锁；其他不遵守此锁的 SOAP 客户端或人工操作仍可能干扰实验。
- native 操作前检查数据库及原生实验对象身份。同一 Broker 串行执行，活动用例占用会话，其他工具返回 `SESSION_BUSY`。
- 激励 apply 在同一次原生调用里再次比较事件及激励配置快照，阻止读取 revision 后发生的配置变化被覆盖。
- 写操作在 `artifacts/<sessionId>/operations.jsonl` 记录派发前意图并刷盘，再记录观察到的结果。超时/断连不重放；返回 `outcomeUnknown=true` 时先 detach、重新 attach 和 inspect。
- 正常前置条件失败不会派发写入，不销毁可用连接。数据库或实验绑定变化需要重新 attach。
- 用例以 requestId 去重；相同 ID 不允许不同 specification。重启发现未完成用例标记 `outcome_unknown`，不继续执行。恢复时旧 signalRef 仍不可用于新会话。
- 每段样本追加到 `runs/<runId>.samples.jsonl`，结束后写完整 JSON；不在每段重写越来越大的结果文件。job/result 元数据通过串行的临时文件与替换更新。
- 构建失败附加厂商导出的诊断文件。指定配置不存在时即使厂商返回成功，也返回 `OPEN_IDENTITY_MISMATCH`，并附实际配置。

## 验证

```powershell
npm.cmd test
# 以下 live 测试会修改指定副本中的 PID 实验和激励，并在结束时关闭实验。
$env:ASCET_EXPERIMENT_MANIFEST = '<隔离实例的绝对 manifest 路径>'
npm.cmd run verify:live
npm.cmd run verify:class
npm.cmd run verify:mcp
npm.cmd run verify:guards

# 对指定组件逐个尝试配置并保留 ASCET 构建诊断
$env:ASCET_COMPONENT_PATH = 'PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Component\\AEB_iBooster\\AEBiBooster_ECU_CSW_BB00001'
npm.cmd run probe:component
```

目前通过 9 个回归测试，覆盖请求 ID 错配、超时不重放、排队请求不派发、标量写入整批校验、旧引用失效、条件步进、步进监视失败的未知结果、用例去重和分段取消。MCP 协议验收覆盖初始化、列出 16 个工具、连接、查询、schema 拒绝和断开。

真实 PID 验收还覆盖：0.5 的常量激励实际进入模型、10 Hz pulse 的高低电平、输出响应、事件编辑回读、标量通道创建、条件步进、显式环境保存、写入回读、20 次性能样本、5 段运行及断言、取消、启动/暂停/停止、变量/参数重置、依赖更新、记录器不可用时的安全状态和在线动作拒绝，以及不存在配置的回退识别。最新报告：[live report](E:/Repo/ASCET/tools/experiment/artifacts/live-2026-10-07T09-58-32-473Z/report.json)。

`verify:class` 默认烟测 `BDE_Tool_Experiments\Trial_data_20260930_012026` 的 `Default` 配置，也可以通过 `ASCET_TEST_COMPONENT` 和 `ASCET_TEST_CONFIGURATION` 指定其他 class。它会记录打开结果、信号发现、配置读取、首个信号读取，并在没有启用事件时确认工具返回明确的 `NO_ENABLED_EVENTS` 前置条件错误。对有已知事件的 class，可设置 `ASCET_TEST_ENABLE_EVENT=calc` 临时启用事件、步进、读取并恢复原配置。

`probe:component` 使用 `ASCET_COMPONENT_PATH` 和可选的逗号分隔 `ASCET_COMPONENT_CONFIGURATIONS`，逐个尝试配置；打开失败时会把 `diagnosticsFile` 和诊断文本复制进报告，不会把构建失败伪装成实验成功。

## 准备测试副本

已准备的副本 manifest 位于上面的 MCP 示例。它与用户已有的三个 ASCET 实例分离，Cebra 端口为 32651，HTTP 端口为 32652。连接前确认该副本仍在运行。

重新准备时复用仓库的 `scripts/bde_isolated_runtime.py`。在实例未运行时使用 `scripts/enable-test-soap.py --manifest <path>`，仅修改副本的 WebServiceActive，并重算 XML CRC。启动副本时附加 `-wsport:<独立端口>`；`-database` 未保证实际数据库已打开，应明确检查。

Host 提供仅用于命令行准备副本的显式参数（MCP 不会传入）：

```powershell
# 这些操作只应针对已经准备的副本，运行前核对 manifest。
'{"id":"q","op":"quit"}' | .\ExperimentHost.exe <manifest> --open-database
'{"id":"q","op":"quit"}' | .\ExperimentHost.exe <manifest> --import-xml E:\Repo\ASCET\docs\Export_PID
'{"id":"q","op":"quit"}' | .\ExperimentHost.exe <manifest> --fixture-compiler 040h28hj8hamdj070k10436t565gk 'MinGW GNU 4.7.2'
```

PID 导出的默认项目引用 Borland-C V4.5。测试通过官方 Target API 选择已安装的 MinGW GNU 4.7.2，然后把 Target 应用到默认 Project；不会修改签名 AMD 文件或系统安装。

## 指定 AEB 工程的验收状态

2026-10-11 完整构建和 9 个回归测试通过。PID 与 class 实测记录来自 2026-10-07；AEBiBooster_ECU_CSW_BB00001 的离线实验尚未通过，不能据此声称 AEB 仿真成功。

最新 AEB 探测中，Default 仍报 AEB_light_class 的两个 GLm6 断线错误；其他尝试进入更深的代码生成阶段，仍报 MIa5 定点/浮点混用、AEB_dFxTar 返回连接缺失、两个参数不能赋值，以及 BatchClass2.calc 的 C Code 方法缺失。文件导入和嵌套引用替换返回成功，并不证明模型修复或重启持久化已完成。继续验收应先导出当前对象核对图连接、配置和依赖，再针对隔离数据库逐项修复并复测。

仓库收录工具源码、构建脚本和测试。模型 AMD 文件、数据库、SDK DLL、临时导出和运行产物保留在测试机器。
