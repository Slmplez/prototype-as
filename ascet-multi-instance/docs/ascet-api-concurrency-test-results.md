# ASCET API 并发访问实测

测试日期：2026-09-30，Asia/Shanghai。

结论：当前实例允许单连接多请求流水线，轻量读取适度受益；同连接模型执行仍串行。有效连接上限是 1，第二条连接被拒，不能在当前配置下测试多连接吞吐。完整内部批量读取的收益显著大于增加未完成请求数。

## 环境与范围

- ASCET PID：17788；进程启动时间：2026-09-30T00:21:58.7512661Z。
- 当前数据库：`d:\ETASData\ASCET6.4\Database\AEB_1`。
- 组件：`\PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AutomaticBraking\AEB_dFxTar`。
- 组件 OID：`040qm00ah4001ng70sfv1fh1n7clq`。
- 连接：本机 Cebra 32503，经每组相同的 loopback 测量代理。
- 主结果：[run-03/results.json](E:/Repo/ASCET/analysis/concurrency-experiments/2026-09-30/run-03/results.json)。
- 帧级时序：[wire-events.json](E:/Repo/ASCET/analysis/concurrency-experiments/2026-09-30/run-03/wire-events.json)。记录编号、方向、时间和长度，不记录正常模型响应正文。

测试持有当前 Doge STORE 的 live.lock，协调使用同一锁的工具。没有切换数据库、写模型、保存、改注册表或重启 ASCET；只编译临时测试块、创建和释放 API 句柄。ETAS DLL 初始化需要自己的日志目录，已在用户授权测试范围内通过沙箱外运行完成。

## 1. 同连接 1/2/4 路请求

常驻同一连接，先预热 30 次 RPC。每轮 80 个工作单元，每个单元依次读取组件 getLabel、getOID，并调用固定 echo 块返回唯一 token，总计 240 次 RPC。每种并发度运行 5 轮，随机交错执行；共 3600 个计时请求。

每条请求拥有独立 MethodCall/Result。名称、OID 与串行基线比较，echo token 与发送值逐一比较；代理按消息编号核对在途数量。

| 客户端并发度 | 每轮中位耗时 | 吞吐 RPC/s | 单 RPC P50 | 单 RPC P95 | 实际最大在途 |
|---|---:|---:|---:|---:|---:|
| 1 | 66.363ms | 3616 | 0.240ms | 0.462ms | 1 |
| 2 | 47.963ms | 5004 | 0.344ms | 0.699ms | 2 |
| 4 | 43.517ms | 5515 | 0.677ms | 1.066ms | 4 |

3600 次请求的值和归属全部正确。每轮恰好 240 请求帧和 240 响应帧，无未匹配请求，无代理错误。2 路吞吐约为顺序的 1.38 倍；4 路约为 1.52 倍。同时单条 RPC 的等待时间上升。

这证明小请求流水线能隐藏部分往返和调度间隙，不证明模型计算多核并行。RPC 时延包含客户端调度、代理、网络和服务端执行，未单独测量服务端 CPU 时间。三种 RPC 中只有两种是模型字段读取，不能将这些数字直接套用于完整框图或昂贵 getter。

## 2. 同连接阻塞顺序

使用固定临时块 `[(Delay forMilliseconds: 250) wait. 777]`，然后立即发送 echo(888)。直接使用 SDK 的 sendMessage/Result.block 保留两个请求的完整关联。

- 慢请求发送完成：0.0176ms。
- 快请求发送完成：0.0296ms。
- 快请求返回：306.4754ms。
- 代理确认两条请求均在任一结果返回前发出，慢请求响应先到，快请求响应随后到。
- 返回值分别为 777、888，均正确。

本轮 250ms 是指定等待时间，不是实测精确执行时长；计时器调度和传输会增加耗时。该受控样本结合反编译同步循环，支持同连接请求存在前序阻塞的结论。

## 3. 两个独立客户端连接：拒绝，并发现错误回包缺陷

运行时读取 `EtasCebraToolServer maxServerInstances` 得到 **1**，`serverCounter` 得到 **1**。保持第一个客户端连接存活，再启动独立 .NET 客户端进程，第二个客户端实际发出连接初始化请求，但无法建立可用 API 会话。

客户端看到的是 **920 / No connection**，并非先前静态分析预期的 910。原始帧证明它收到的是：

```text
request:  id=1790762705194, bytes=76
response: id=1790762705194, bytes=16
```

16 字节仅为 Cebra 固定帧头，没有类型项和数据正文。它不是 TCP 完全没有响应，也不是超时。

反编译调用链解释了这一现象：

1. [EtasCebraToolServer.st:546](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/EtasCebraToolServer.st:546) 对请求调用第一次 `answer`，向结果追加 `910 / Client limit exceeded`。
2. [同文件 582 行](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/EtasCebraToolServer.st:582) 发送前又对原请求调用一次 `answer`。
3. [EtasCebraMessage.answer:367](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/EtasCebraMessage.st:367) 每次都新建空消息，只复制 messageID；因此发送的是第二个空 answer，而非携带错误的第一个对象。
4. [.NET CebraMessage.reset:1357](E:/Repo/ASCET/decompiled/Etas.AscetNET/de.etas.cebra.socket/CebraMessage.cs:1357) 因空类型表返回 false。
5. [MethodCall.ResultItem:208](E:/Repo/ASCET/decompiled/Etas.AscetNET/de.etas.cebra.socket/MethodCall.cs:208) 将其转换为 920 / No connection。

恢复源码与实际空帧及客户端错误相互吻合；本次没有修改 ETAS 实现。第一个客户端随后 echo(12345) 成功，说明第二连接失败没有破坏它。

桥接层今后不能仅按 920 推断 ASCET 未启动，也不能把所有 920 一律改成连接超限；应结合空帧、已有连接状态、实例身份和已验证的上限进行诊断。当前测试没有开放更多连接，因此没有多连接吞吐数据。

## 4. 错误请求与成功请求交错

同连接连续发送组件不存在的 selector 和正常 echo，等待并读取各自结果：无效请求得到 102，有效请求得到 999，随后另一次 echo 得到 1000。

该样本验证请求级错误没有串到相邻正常结果；不证明共享 api.ToolError 在任意并发读写下安全，也不是任意模型方法的线程安全验证。

## 5. 完整框图字段批量与内部完整批量

分别运行各 3 次，比较全部原始已采集字段，仅排除采集时间、耗时、清理统计和 read_profile。保留数据库、组件、进程身份、图元顺序、连线重复出现和 dirty-editor 状态参与比较。

| 策略 | 新进程端到端中位耗时 | 请求帧 |
|---|---:|---:|
| 字段批量 | 1701.025ms | 5164 |
| ASCET 内部完整批量 | 291.071ms | 93 |

完整内部批量约快 **5.84 倍**，请求帧减少 **98.2%**。6 次原始已采集结果与初始基线全部一致。该耗时包含探针进程启动、采集和清理，不是前表常驻连接的微基准。

本轮随机排列恰好使三个字段批量样本先运行、三个完整批量样本后运行；前面已有完整批量基线预热，但仍应将缓存/顺序影响视为性能数字的限制。这里不宣称精确普适加速倍数。对更多组件、规模和顺序的统计验证属于后续扩大测试范围。

## 6. 结束状态、测试边界与复现

测试前后完整原始采集结果一致；数据库和 ASCET 进程世代一致；未保存编辑器数量始终为 0。自定义探针的 3/4 个显式句柄释放均收到正常回执，断连成功；完整读取探针沿用 finalize 清理方式，其统计不等于逐个回执已验证。结束后只有原 ASCET 进程，未残留本次读取或并发探针。

没有执行进程崩溃、数据库切换、写入竞争、任意 getter 的副作用审计或多 ASCET 实例测试。单连接阻塞样本使用有界等待，不中断 ASCET 服务端。

初次 run-01 因 ETAS 日志目录沙箱权限失败，未进入实时调用。run-02 已得到有效微基准，但测试程序处理被拒连接的退出竞争时失败；已修正，只把完整完成的 run-03 用于本报告主结论。原失败记录保留，未覆盖为成功。

测试代码：[AscetConcurrencyProbe.cs](E:/Repo/ASCET/scripts/AscetConcurrencyProbe.cs)、[ascet_concurrency_experiments.py](E:/Repo/ASCET/scripts/ascet_concurrency_experiments.py)。

```powershell
python scripts/ascet_concurrency_experiments.py --output analysis/concurrency-experiments/2026-09-30/new-run
python -m unittest discover -s scripts -p test_ascet_concurrency_experiments.py -v
```

输出目录必须尚不存在。测试默认绑定本机 32503 和上述确切组件，附加到当前数据库；不自动打开数据库或启动 ASCET。每次客户端响应等待最多 25 秒，完整采集最多 55 秒；超时只终止测试客户端，不代表服务端操作已取消。

落地建议：保留单连接管理；优先推广已验证的完整批量路径。确有大量轻量独立请求时，可在请求级错误、句柄归属和背压都明确的 broker 中试用 2 路流水线，4 路作为有界候选。业务操作内部的依赖顺序和写入排他仍需保留。
