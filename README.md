# ASCET 多实例与后台 Agent 连接器

本分支保存 2026-10-02 的代码资料包快照，用于让人工工作和 Agent 任务使用不同的 ASCET 进程。

## 文档入口

- [BDE Agent Tools 源码检查点](ascet-multi-instance/bde-tools/README.md)
- [BDE T0–T9 开发任务节点](ascet-multi-instance/bde-tools/docs/bde-tools-task-nodes-v1.md)
- [完整资料包说明](ascet-multi-instance/README.md)
- [中文操作指南与 Copilot 接入方案](ascet-multi-instance/docs/ascet-agent-background-workflow.md)
- [多实例工具说明](ascet-multi-instance/tools/multi-instance/README.md)
- [C#/.NET 连接器接口与示例](ascet-multi-instance/tools/multi-instance/connector/README.md)
- [实现分析与源码调用链](ascet-multi-instance/docs/ascet-multi-instance-api-implementation.md)

## 当前使用方式

现有 Copilot 继续连接普通 ASCET，任务运行期间保留该实例的数据库。人工通过专用入口另开原生多实例 GUI，并使用另一个数据库目录：

```powershell
& .\ascet-multi-instance\tools\multi-instance\launch-manual.ps1 -Database 'D:\Projects\OtherDatabase'
```

将示例路径换成实际的人工数据库目录。安装位置不是 `E:\ETAS\ASCET6.4` 时，使用 `-Executable` 指定 `ASCET.exe`。不要让两个进程操作同一个数据库目录。

这个流程先最小化 Agent 的普通窗口。原生多开 GUI 的 Tool API 默认关闭，人工仅在该窗口切换数据库。当前 Copilot 发布包在人工切库时的业务连续性尚未实测。

## 后台私有实例与连接器

私有多实例原型支持独立端口以及隐藏/显示窗口。使用前需要从本机 ASCET 安装和一致数据库备份重新准备实例；操作命令见完整资料包说明。

连接器提供 `ConnectAsync`、`GetIdentityAsync`、`EchoAsync` 和断开连接，并包含 .NET 8 与 .NET Framework 4.7+ 成品。它连接已运行的私有实例，不负责启动或隐藏 ASCET。

当前业务接口仅有 `identity/echo`。Copilot 模型读取、修改和编译尚未接入私有实例；多个 Agent 进程共享同一实例的 Broker 与数据库变更自动合并也尚未实现。

## 代码与资料

`ascet-multi-instance/` 保留原资料包的目录结构和文件字节，包括工具源码、示例、测试、预编译连接器、Python 解析依赖、验证记录和源码参考快照。

`references/copilot` 是本地 Copilot 连接、数据库绑定和调度代码的参考快照，不是完整 Copilot 工程。`unpacked` 与 `decompiled` 是相关反编译分析材料，不是供应商原始源代码。

历史验证记录：

- [独立端口与实例重启隔离](ascet-multi-instance/evidence/2026-10-02/run-01/validation.json)
- [后台隐藏、显示与 API 回显](ascet-multi-instance/evidence/2026-10-02/run-01/agent-b/background-validation.json)

上述记录验证身份、连接与回显；全部模型写入、代码生成和长期稳定性尚未验证。历史 PID、manifest 和绝对路径仅供阅读，运行时应使用重新准备的配置。

## 环境与校验

运行依赖 Windows、已安装并许可的 ASCET 6.4、PowerShell 7.5+、Python 3.12 和 .NET Framework 4 编译器。运行现代连接器示例还需要 .NET 8。

ASCET 运行时、镜像、ETAS SDK DLL、许可文件及数据库内容未收录。镜像准备工具仅支持文档中校验的固定 ASCET 6.4 镜像。

`ascet-multi-instance/manifest.json` 记录资料包文件的 SHA-256 和原始来源。Git 属性保留该目录的字节，校验命令见资料包说明。
