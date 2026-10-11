# AEB iBooster 实验验收（2026-10-11）

指定组件：`PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Component\AEB_iBooster\AEBiBooster_ECU_CSW_BB00001`。在独立数据库、独立 Cebra 端口的 ASCET 6.4 Offline PC 中验证 `Default` 配置。修改和验证均在隔离库完成。

## 验证结果

- 组件生成代码、编译、链接和打开实验通过。
- `TaskInit` 为 singleShot，`TaskBaseCtrlx1` 周期 0.005 秒，`TaskBaseCtrlx4` 周期 0.02 秒。
- 写入踏板输入 75 后，20 ms 任务的 `MotPedalPosDriver_20ms` 与 5 ms 算法的 `AEB_ThrottlePosK1` 都从 0 变为 75。
- preserve 用例执行 5 段，每段请求 0.02 秒，输入恢复为 0；reset 用例执行 3 段，输入为 25。两个用例的三项最终快照断言全部通过，各段都观测到仿真时间推进。
- 保存环境、显式提交数据库、关闭并重开实验通过。重启隔离 ASCET 后，在修改事件之前检查到已保存的 5 ms / 20 ms 调度，再重复响应和用例验证通过。
- TypeScript / x86 Host 构建通过；15 个回归测试、真实 PID 集成、原生配置 revision 校验和 16 工具 MCP 协议烟测通过。

这些结果证明了工具闭环、任务调度和输入传播；未执行完整的 AEB 制动触发、车辆模型或标定验收。结果文件为各段结束的标量快照，`completeWaveform:false`。ASCET 按事件边界完成时间步进，实际时间增量由返回的 `advancedSeconds` 给出，可能与请求秒数略有差异。

## 修复记录

1. 原生错误对象和图形引脚检查表明，AEB_Core 的两个输出方法被隐藏，使已有调用端口缺失。仅恢复输出方法可见性，保留原图全部 61 条连接，并恢复先前错误删除的监控连接。
2. 去除 DriverAccelerates 和 TriggerBAFromOff 中对导入参数的非法赋值，保留原参数及数值实现。使用已存在的 P_ 参数参与原计算。
3. 新增的 real64 状态/阈值与原固定点输入混合导致 MIa5。添加原生命名实现转换 `ExperimentReal64`，只用于新浮点比较和时间计算；保留旧固定点梯度及压力比较。
4. 测试依赖 BatchClass2 的无输入、无输出空 C 方法改为显式空操作 `return;`。它是测试占位项。
5. 项目既有有效调度在 `G_ANSI.GENERIC_OSEK`，PC 实验使用 `PC.Generic`。将有效初始化和周期进程复制到隔离库的 PC 调度，保留 PC 目标元数据并使用 cooperative 调度；不复制其他目标的缺失进程。

以上模型变更不包含在工具发行代码中。复测需要同等修复过的隔离数据库；`verify:aeb` 不会自动修复模型或创建任务。

## 工具修复

- 完整组件路径使用原生直接解析；支持根反斜杠、正斜杠以及长路径。广泛模糊查询的冷态超时为 30 秒。
- 配置 stamp 在操作后重新计算，避免返回旧 revision；连续 apply 和旧 revision 拒绝均实测通过。
- 事件编辑检查原生模式、正周期和回读。忽略或部分应用不会报告成功。
- reset 用例停止、重置数据后先初始化，再标定，避免初始化覆盖用例输入。
- 停止的现有记录器允许分段快照；活动或未知记录器状态要求先显式停止。
- 保存环境与数据库落盘区分：`commitDatabase:true` 使用原生 `commitDatabase`，提交整个绑定数据库的待保存变更；默认 save 返回 `databaseCommitted:false`。
- 保存和创建通道补齐派发前/结果日志；编译失败、连接失败及未发生模型步进有各自明确的证据。

## 性能

2026-10-11，同机 Broker 全程测量，包含 Node 调度和 Host/Cebra 往返，不含模型推理和应用启动。

| 调用 | 测量 |
| --- | --- |
| AEB 完整路径查询 | 热态约 14–16 ms；重启后本次 66 ms |
| AEB 三信号批读 | 重启验收 12.03 ms |
| PID 状态读取（20 次） | 中位数 11.65 ms，P95 16.18 ms |
| PID 10 信号批读（20 次） | 中位数 11.72 ms，P95 23.48 ms |
| PID 10 信号逐个读取（20 次） | 中位数 117.20 ms，P95 288.20 ms |

同样 10 个信号，批读中位数约快 10 倍。冷态编译和 ASCET UI 调度会增加延迟。

## 复测

```powershell
$env:ASCET_EXPERIMENT_MANIFEST = '<修复后的隔离实例 instance.json 的绝对路径>'
npm.cmd run verify:aeb

# 重启同一隔离实例并显式打开数据库后，先检查保存结果，再运行用例：
$env:ASCET_AEB_REQUIRE_SAVED = '1'
npm.cmd run verify:aeb
```

脚本输出 `artifacts/aeb-live-<UTC时间>/report.json`，以及会话操作日志和运行快照。重启通过报告时间为 `2026-10-11T10-15-40-168Z`；PID 性能报告时间为 `2026-10-11T10-10-51-577Z`。本地报告和修复导出保留在开发工作区，不上传数据库、模型导出或 SDK。
