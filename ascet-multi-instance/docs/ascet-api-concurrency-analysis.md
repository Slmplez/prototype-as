# ASCET API 并行访问分析

日期：2026-09-30。对象：本仓库 ASCET 6.4 反编译成果及当前 Doge 框图桥接实现。

本次为静态调用链核对；未发起实时 Cebra 调用、并发压测或修改注册表。Smalltalk 文件为字节码重建结果，未验证整体运行等价性。客户端六个关键 C# 文件已逐一核对，`decompiled/Etas.AscetNET` 与 `unpacked/dotnet/2c75ef3e9bbcd831_Etas.AscetNET.dll` 副本 SHA-256 相同。

后续已按用户授权完成实时测试，见 [并发测试报告](E:/Repo/ASCET/docs/ascet-api-concurrency-test-results.md)。同连接 4 路轻量请求相对顺序调用吞吐提高约 52%，但服务端仍按连接串行执行。实际连接上限为 1。下文静态分析中“超限返回 910”需修正：源码构造了 910 错误，却把另一个新建的空 answer 发出；实测客户端收到 16 字节空响应，最终报 920 / No connection。详细源码与回包证据见测试报告。

## 结论

当前实现需要区分四件事：调用方并发提交、传输层多个未完成请求、服务端并发调度、模型计算多核并行。

- Cebra .NET 客户端具备请求编号、待完成请求表和独立接收线程，可以让多个调用方同时等待各自结果。
- 同一个 Cebra 连接的服务端循环同步执行每条请求，返回后才读取下一条；客户端并发提交只能形成流水线/排队，不能使这个连接中的两个模型操作同时执行。
- 服务端为各连接创建 Smalltalk Process，具备跨连接并发调度结构。但 runtime 分支检查连接上限，`MaxCebraServers` 未配置时回退到 1；超限返回 910。实际有效配置与吞吐需要运行时验证。
- Smalltalk Process 不能直接等同于 Windows 进程或独立 CPU 核心；所查源码不足以证明模型方法在同一 ASCET 实例中多核并行。
- 当前 Doge 又增加了工具调度串行和跨进程实时锁，因此当前工具层没有开放并行实时访问。

推荐实现：多个调用方 → 常驻 broker 排队/合并 → 单连接有界原生批量读取 → 不可变快照 → 多 worker 并行搜索、分析、diff 和格式化。多连接应作为独立验证的优化候选；需要真正计算隔离时，再评估多个 ASCET 实例和数据库副本。

## 1. 客户端：锁住发送帧，没有锁住整个往返

[ToolAPI.call](E:/Repo/ASCET/decompiled/Etas.AscetNET/de.etas.cebra.toolAPI/ToolAPI.cs:53) 的同步路径先调用 `sender.sendMessage(this, mc.Message, mc.Result)`，发送返回后才执行 `mc.Result.block()`。

[ClientSender.sendMessage](E:/Repo/ASCET/decompiled/Etas.AscetNET/de.etas.cebra.socket/ClientSender.cs:54) 在 `lock(this)` 内完成请求编号分配、结果编号绑定、`addOrder` 和整帧发送，随后释放锁。等待回包发生在锁外。因此不能从这个发送锁推断整个 RPC 在客户端完全串行。

[ToolClient](E:/Repo/ASCET/decompiled/Etas.AscetNET/de.etas.cebra.socket/ToolClient.cs:61) 使用同步 Hashtable 保存待完成请求，启动 `ClientReceiver`；[answerOrder](E:/Repo/ASCET/decompiled/Etas.AscetNET/de.etas.cebra.socket/ToolClient.cs:78) 按消息编号找到对应结果，复制数据并 `release()`。这些结构可以关联多个未完成请求。

但这不是整个对象 API 的线程安全承诺：

1. 每条请求必须独占自己的 MethodCall/Result；结果解析会改变读取位置。
2. [MethodCall.ResultItem](E:/Repo/ASCET/decompiled/Etas.AscetNET/de.etas.cebra.socket/MethodCall.cs:198) 将错误写入 `api.ToolError`。共享包装对象的多请求可能覆盖同一个错误槽，不能靠稍后读取 `GetToolErrorCode` 归属错误。
3. [initToolSocket](E:/Repo/ASCET/decompiled/Etas.AscetNET/de.etas.cebra.socket/ToolClient.cs:132) 的查找、创建、发布没有一个覆盖全流程的共同锁；同步 Hashtable 不等于该复合操作原子。连接初始化和关闭应由一个 owner 管理。
4. `call(mc, false)` 走不登记 answer 的发送重载，不是返回 Task 的异步 RPC。需要可等待结果时，应保留请求与结果的关联。
5. [Semaphore.Wait](E:/Repo/ASCET/decompiled/Etas.AscetNET/de.etas.multitasking/Semaphore.cs:44) 实际调用无超时 `Monitor.Wait(this)`；取消外层等待不能据此认为服务端操作已停止。

## 2. 服务端：每连接串行，多连接分别调度

[SGToolServer.start](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/SGToolServer.st:592) 对接受到的连接执行 `EtasCebraToolServer create: socket`，然后 `run`。

[EtasCebraToolServer.run](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/EtasCebraToolServer.st:609) 的关键路径为：

```text
每个 socket 的 Smalltalk Process
  receive
  → Fassade new initWithOrder: message socket: socket
  → Fassade start
  → 完成执行和回包
  → 下一次 receive
```

[Fassade.start](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/Fassade.st:2315) 调用 `evaluateSafe`，序列化结果并 `send:`；方法末尾在 [2593 行](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/Fassade.st:2593) 通过 block `value` 同步执行，不是每请求 fork 一个 worker。

真正的 fork 位于 [EtasCebraToolServer.run 末尾](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/EtasCebraToolServer.st:818)：`forkNamed: 'Etas Cebra Process'`。所以它的并发粒度是连接，不是单连接里的请求。

[Block.forkNamed:](E:/Repo/ASCET/unpacked/smalltalk-source/kernel.ic/Block.st:46) 进入 `newProcessNamed:` 和 `resume`，通过 Smalltalk Processor 的进程体系调度。部分调度器方法依赖未恢复的 VM primitive；不能仅凭 fork 宣称操作系统线程级或多核并行。

此外，[CwAppContext.syncExecInUI:](E:/Repo/ASCET/unpacked/smalltalk-source/winsys.ic/CwAppContext.st:1233) 会检查 UI 上下文，将非 UI 调用放入 `bgGraphicRequests` 并等待 semaphore。需要 UI 的操作仍会汇入 UI 调度。

## 3. 多连接的限制和共享状态

[maxServerInstances](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/EtasCebraToolServer_class.st:66) 读取注册表键 `MaxCebraServers`，读不到时返回 1。[serverCounterLimitExceeded](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/EtasCebraToolServer_class.st:274) 还检查 `isCreationDeniedFlag`；在 `System isRuntime` 分支判断当前连接计数是否超过上限。[超限路径](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/EtasCebraToolServer.st:558) 返回 `910 / Client limit exceeded`。

本次只读枚举了本机 `HKLM\SOFTWARE\WOW6432Node\ETAS\ASCET` 子键，未发现 `MaxCebraServers` 值。这与源码默认值一致，但没有通过运行中的 ASCET 查询 `maxServerInstances`，不将其视为实际生效上限已验证。不要把修改该键当作官方并发支持或线程安全的证明。

重复创建 `new Ascet()` 通常也不会产生多个独立连接：[initToolSocket](E:/Repo/ASCET/decompiled/Etas.AscetNET/de.etas.cebra.socket/ToolClient.cs:132) 从静态 `tableOfClients` 复用 sender，[ToolEntry.Equals](E:/Repo/ASCET/decompiled/Etas.AscetNET/de.etas.cebra.socket/ToolEntry.cs:26) 按 host/port 判断相等。注册多个指向相同端点的工具名称也不能作为可靠连接隔离方法。

确需试验多连接，可用各自拥有一个连接的独立客户端进程，或实现有明确生命周期的独立 Cebra 连接；这仍必须满足服务端连接限制。

多连接不提供模型隔离：[SGObjectHandle](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/SGObjectHandle_class.st:204) 使用类级 ObjectTable/ObjectRefCounterTable，并通过 objectSema 保护部分表操作。句柄表锁只保护登记、查找、释放等局部行为，不等于整个模型方法或多次 RPC 构成事务。

## 4. 当前 Doge 桥接额外串行化

| 层 | 当前证据 | 对并发的影响 |
|---|---|---|
| 工具调度 | [BlockDiagramTool.ts:110](E:/Repo/ASCET/Doge/src/tools/BlockDiagramTool/BlockDiagramTool.ts:110)，所有 bd 工具 `isConcurrencySafe() = false` | 同一调度器不会将这些工具作为并发安全工具执行 |
| 实时读取 | [bd_service.py:85](E:/Repo/ASCET/scripts/bd_service.py:85)，`STORE/live.lock` 文件锁 | 共用 STORE 的进程互斥，竞争者立即返回 ASCET_BUSY，不是等待队列 |
| 观察记录 | [bd_service.py:148](E:/Repo/ASCET/scripts/bd_service.py:148) | 采集和快照发布处于同一锁范围，避免观察顺序倒置 |
| 编辑 | [bd_edit_journal.py:207](E:/Repo/ASCET/scripts/bd_edit_journal.py:207) | 编辑也使用实时锁，维护准备、执行和记录的顺序 |
| C# 读取探针 | [AscetReadProbe.cs:17](E:/Repo/ASCET/scripts/AscetReadProbe.cs:17) | 使用多组静态 List/Dictionary；不能直接将一份探针改为多任务共享执行 |
| 持久编辑适配器 | [bd_native_literal.py:45](E:/Repo/ASCET/scripts/bd_native_literal.py:45) | stdin/stdout 按顺序交换，没有请求编号多路复用；排空输出的线程不代表业务请求并行 |

文件锁的协调范围仅是同一个 STORE。不同 STORE、外部 Cebra 客户端和用户 GUI 不在它的保护范围内。不能通过换 STORE 来实现正确并发，也不能把持有这把锁解释为 GUI 隔离。

## 5. 推荐实现路线

### A. 单实例、多调用方：默认方案

建立一个常驻 broker，拥有 ASCET 连接和句柄生命周期，按明确识别的 ASCET 实例维护有界工作队列。端点之外还应记录进程身份/启动世代，避免进程重启后复用旧句柄。

实时工作默认并发度为 1；相同目标和采集范围可合并同一轮正在执行的读取。队列支持截止时间、容量限制和公平调度。请求取消只表示调用方放弃等待；已发出的调用完成前不能将其资源当作已释放，写入回执不明时不能自动重发。

读取在 ASCET 内执行固定、有上限的批量模板，返回纯值；完成后生成不可变快照。将搜索、语义 diff、格式化、索引计算等放到外部 worker 池。为快照匹配数据库、组件、采集范围和观察版本，避免并行结果互相覆盖。

保持采集到发布的顺序；若把后处理移出实时锁，应使用单独的有序提交机制。快照及纯计算工具经写路径审计后可以单独开放并发，不宜直接把所有 bd 工具的 `isConcurrencySafe` 改为 true。

当前仓库已有批量读取的历史实验：[validation.json](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/bulk-01/validation.json:6) 记录字段批量与完整内部批量的探针耗时中位数分别为 5941.148ms 和 378.459ms，请求帧由 5164 降到 93。这说明该样本减少往返的收益显著；它不是本次并发压测，也不代表其他组件规模或类型的通用结果。完整批量仍是显式启用路径。

### B. 多连接：需要单独验证的优化

只有在有效连接上限允许、方法语义和失败恢复可控时，测试两个独立连接。每个 worker 独占客户端状态，使用固定只读操作和独立请求结果；避免共享 ToolError、临时句柄管理器、可变快照缓存。GUI、数据库切换、保存、关闭和写入仍需要实例级排他控制。

这里的预期收益主要是调度或等待重叠，不能承诺计算吞吐按连接数增长。即使访问不同组件，也可能共享当前数据库、缓存、全局对象表或编辑器状态。

### C. 真正计算隔离

大量独立工程的批处理，可评估多个独立 ASCET 实例，每个实例有独立端点、工作目录和数据库副本。启动方式、许可、多实例支持与数据库锁需要另行验证。不要让多个实例同时写同一个数据库目录。纯快照计算优先直接采用外部进程池。

## 6. 并行能力验收

固定版本、数据库副本、组件与输出字段，随机交错比较以下四组：单连接顺序、同连接 2/4 个未完成请求、两个独立连接、单连接批量。

分别记录连接建立、排队、RPC 往返、原生采集、解码、快照发布以及端到端 P50/P95、吞吐、帧数、错误率和 CPU。已有 profile 若不能分离服务端执行时间，就不能将客户端等待时间标成服务端耗时。

逐字段比较值、顺序、对象身份及连线多重出现；加入失败请求与成功请求交错以检查错误归属。额外验证断连、超时后迟到结果、关闭竞争、进程重启和句柄释放。测试连接上限时保留 910 的真实错误，不能转换为通用重试并放大连接数。

完成这些验证后才能决定是否提高实时并发度；当前证据足以设计并发入口和并行快照处理，不足以默认开放同实例模型的任意并行读写。
