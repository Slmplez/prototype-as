# ASCET Experiment Agent Tools

面向 ASCET 6.4 Offline PC 的工具，当前版本 0.3.0。提供 19 个 MCP 工具、JSONL 入口和 TypeScript Broker，支持多阶段用例自动录波、二维特性表标定和 DCM 逐项导入核对，已在隔离 PID、ESDL 和指定 AEB iBooster 项目中验收。

## 使用

需要 Windows、Node.js 22 以上、.NET Framework 4 编译器及 ASCET 6.4 的 `Etas.AscetNET.dll`。ASCET 实例必须已经运行并打开目标数据库，启用 Web Service 以加载 `AaaExperimentInterface`。`exp_attach` 不启动应用、不切换数据库。使用隔离副本进行实验测试。

```powershell
Set-Location E:\Repo\ASCET\tools\experiment
npm.cmd ci
npm.cmd run build
$env:ASCET_EXPERIMENT_MANIFEST = 'E:\Repo\ASCET\analysis\bde-experiments\2026-10-07\experiment-tools-01\bde-de6abc3093b8\instance.json'
npm.cmd run start:mcp
```

MCP 客户端直接启动 `node E:\Repo\ASCET\tools\experiment\dist\src\mcp.js`。可参考 [MCP 配置示例](E:/Repo/ASCET/tools/experiment/mcp.example.json)，替换实例 manifest；该示例未自动写入任何客户端的全局配置。stdio 只输出协议内容。

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
| `exp_catalog` | 完整路径优先直接解析，模糊查询最多 200 项；支持根反斜杠和 `/`，路径最长 1024 字符。 |
| `exp_open` | 打开指定组件和配置，必要时由 ASCET 构建；核对实际结果，不接受静默回退。相同实验复用，不同实验要求显式关闭。 |
| `exp_inspect` | 返回实例身份、实验、状态、仿真秒数和记录器状态。 |
| `exp_signals` | 分页返回原生 label、显示名称、数据类型、维度和标定资格，并产生 `signalRef`。 |
| `exp_read` | 一次原生调用批量读取最多 128 个标量，physical 或 hex。 |
| `exp_write` | 暂停状态下批量写入最多 64 个数值、布尔或枚举名称标量；完整检查资格，逐项写入和回读。非事务，不自动重放。 |
| `exp_configure` | 按 revision 修改事件/激励、创建标量通道；save 保存环境，`commitDatabase:true` 显式提交整个绑定数据库的待保存变更。 |
| `exp_read_data` / `exp_write_data` | 数组、矩阵、曲线、二维特性表及坐标轴；最多4096单元、512个修改，0基索引，整批预检、写入仿真内存后重新读取核对，不改变维度。 |
| `exp_parameters` | 重置和依赖更新；DCM导出、expected 标量回读；`audit:true` 对全部输入条目比较导入前后重导出，`strictAudit:true` 要求全部匹配。 |
| `exp_control` | start、pause、stop、close；另有 start/stop OS 和 measurement 原生入口，Offline PC 会明确拒绝在线动作。关闭必须传 `discardUnsaved:true`。 |
| `exp_step` | 一个事件、一段仿真时间，或以标量比较器为条件的有界步进；条件模式逐事件执行并受 maxEvents/maxWallTimeMs 约束。 |
| `exp_record` | 查询、显式替换既有记录器通道、设置新输出、启动和停止；停止返回实际落盘文件和哈希。 |
| `exp_waveform` | 完整解析MDF 2/3声明的数值记录，计算全量统计、RMS、梯形积分和转换点，保存完整JSON波形，返回有上限的预览。 |
| `exp_run_case` | 多阶段标定或常量激励及采样断言；可选 recording 管理既有记录器，自动启动、停止、解析波形并恢复通道与输出路径。兼容原chunks用例。 |
| `exp_job` | 查询、请求在下一段结束后取消；请求取消不代表立刻停止。 |
| `exp_results` | 返回有上限的快照序列、统计、断言和完整 JSON 文件路径。 |

返回 `capabilities` 明示能力。在线目标仍未实测。数组、矩阵、曲线、二维特性表、MDF文件解析和DCM逐项核对已通过隔离实例验收，详见[增强功能说明](docs/enhanced-experiment-20261011.md)。提交用例前，记录器必须已停止；`caseSpec.recording` 自动管理本次录波，也可继续使用 exp_record → exp_step/exp_write → exp_record(stop) → exp_waveform。用例结果同时保留快照和独立的 `nativeRecording` 原生波形证据。

事件模式限定为原生支持的 `segment`、`timeSynchron`、`singleShot`、`signalled`；`timeSynchron` 的 delay 必须大于 0，单位为秒。修改后核对实际值并返回新的 revision，可用于下一次连续修改。`save` 默认只保存当前环境到数据库对象，返回 `databaseCommitted:false`；只有明确传入 `commitDatabase:true` 才提交数据库并返回 `databaseCommitted:true`，该提交可能包含同一数据库中的其他待保存变更。

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

`preserve` 要求已经暂停。`reset` 依次停止、重置变量和参数、推进一个初始化事件，再应用初始 writes；它不承诺把仿真时钟归零。start 可能依据 ASCET 选项重新初始化参数，所以用例通过暂停状态下的 step 保持已写入值。

在 `caseSpec` 加入 `"recording":{"path":"E:\\captures\\new-case.dat","signalRefs":["输出引用"],"maxPoints":100}` 即可自动录波。省略 recording.signalRefs 时记录 caseSpec.signalRefs。输出文件不能已经存在；实验需有已停止的原生 Data Logger。完成、断言失败、协作取消或连接仍有效的执行失败都会停止录波、解析已完成文件，并恢复原通道和输出路径。连接丢失时保留 outcome_unknown，不发送清理或重放请求。

`Steps=1` 是一个事件，不是一轮所有任务。按秒步进仍受事件边界影响，响应提供实际起止时间。`exp_results.source=quiescent_snapshot_series` 和 `completeWaveform=false` 描述快照序列；启用 recording 后，完整记录文件、哈希、解析结果和恢复情况位于 `nativeRecording`。`range` 检查时间窗口内全部采样点，旧版 `{min,max}` 检查最后一个快照；均不推断采样点之间的行为。

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
- 写入、通道创建和环境/数据库保存均在 `artifacts/<sessionId>/operations.jsonl` 记录派发前意图并刷盘，再记录观察到的结果。超时/断连不重放；返回 `outcomeUnknown=true` 时先 detach、重新 attach 和 inspect。
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
npm.cmd run verify:aeb
npm.cmd run verify:aeb-behavior
npm.cmd run verify:enhanced
# 独立ESDL fixture的准备契约见增强功能说明
$env:ASCET_STRUCTURED_FIXTURE = 'ExperimentToolsFixture\StructuredDataESDLFixture'
npm.cmd run verify:structured
npm.cmd run verify:mcp
npm.cmd run verify:guards

# 对指定组件逐个尝试配置并保留 ASCET 构建诊断
$env:ASCET_COMPONENT_PATH = 'PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Component\\AEB_iBooster\\AEBiBooster_ECU_CSW_BB00001'
npm.cmd run probe:component
```

目前通过 21 个回归测试，还覆盖布尔/枚举写入和表达式文本拒绝、长路径与根路径、事件周期/模式校验和修改回读、重置用例的初始化顺序、记录器前置条件、显式数据库提交，以及保存和通道创建的日志记录。MCP 协议验收覆盖初始化、列出 19 个工具、连接、查询、schema 拒绝和断开。

真实 PID 验收还覆盖：0.5 的常量激励实际进入模型、10 Hz pulse 的高低电平、输出响应、事件编辑回读、标量通道创建、条件步进、显式环境保存、写入回读、20 次性能样本、5 段运行及断言、取消、启动/暂停/停止、变量/参数重置、依赖更新、记录器不可用时的安全状态和在线动作拒绝，以及不存在配置的回退识别。最新报告：[live report](E:/Repo/ASCET/tools/experiment/artifacts/live-2026-10-07T09-58-32-473Z/report.json)。

`verify:class` 默认烟测 `BDE_Tool_Experiments\Trial_data_20260930_012026` 的 `Default` 配置，也可以通过 `ASCET_TEST_COMPONENT` 和 `ASCET_TEST_CONFIGURATION` 指定其他 class。它会记录打开结果、信号发现、配置读取、首个信号读取，并在没有启用事件时确认工具返回明确的 `NO_ENABLED_EVENTS` 前置条件错误。对有已知事件的 class，可设置 `ASCET_TEST_ENABLE_EVENT=calc` 临时启用事件、步进、读取并恢复原配置。

`probe:component` 使用 `ASCET_COMPONENT_PATH` 和可选的逗号分隔 `ASCET_COMPONENT_CONFIGURATIONS`，逐个尝试配置；打开失败时会把 `diagnosticsFile` 和诊断文本复制进报告，不会把构建失败伪装成实验成功。

`verify:class` 的 `passed` 表示打开/读取及前置条件烟测通过；`simulationStepped` 单独记录是否发生步进，`modelResponseVerified` 始终为 false。需要模型响应证据时使用专门用例。

`verify:aeb` 针对已修复的隔离 AEB 数据库，要求 `PC.Generic` 已有 `TaskInit`、`TaskBaseCtrlx1`、`TaskBaseCtrlx4` 调度。它启用单次初始化、5 ms 和 20 ms 周期任务，显式保存并提交数据库，验证 75 的踏板输入进入两个周期任务，再执行 5 段 preserve 与 3 段 reset 用例并核对输出。reset 顺序为停止、重置数据、初始化步进、标定、分段运行。脚本清理踏板输入、关闭实验，并保留详细报告。

重启隔离 ASCET、显式打开数据库后设置 `ASCET_AEB_REQUIRE_SAVED=1`，可验证在任何事件修改之前调度配置已经持久化。2026-10-11 的重启验收通过；这验证任务执行和输入传播，不覆盖完整 AEB 制动功能或车辆标定。模型修复及测量说明见 [AEB 验收说明](docs/aeb-acceptance-20261011.md)。工具代码不附带模型 AMD、数据库、SDK DLL 或临时导出。

`verify:aeb-behavior` 使用同一隔离数据库已保存的周期任务，以外部请求、驾驶员制动力、踏板与停车信号驱动 8 组算法行为用例，并在关键转换处按事件条件步进。覆盖 IB/BA 触发与维持、压力变化率触发、退出与锁定到期、IB→BA、停车保持/超时释放、油门双踩及退出禁用。实验过程中读取实际标定和信号回读，结束时重置数据并关闭实验，不提交数据库。结果和范围见 [AEB 行为验收说明](docs/aeb-behavior-20261011.md)。

写入布尔值使用 JSON `true`/`false`，枚举使用原生名称，例如 `AEB_On`。枚举字符串只允许单个标识符，由 ASCET 验证其合法性；数值输入仍允许实际量化。`exp_read.numericValue` 对布尔返回 1/0，对枚举名称返回 null，原始物理文本保留在 `value` 中。条件和用例数值断言可以检查布尔信号，枚举检查使用物理文本。

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
