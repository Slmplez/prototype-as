# ASCET 多实例、后台运行与 .NET 连接器资料包

日期：2026-10-02。本包整理本次实现的代码、文档、成品和验证资料。

## 先看哪里

- `docs/ascet-agent-background-workflow.md`：中文操作指南，含当前 Copilot 与人工窗口的分工、隐藏/显示、C# 连接和数据库切换规则。
- `tools/multi-instance/README.md`：私有多实例实现、准备及验证命令。
- `tools/multi-instance/connector/README.md`：.NET 接口、示例、超时/取消及连接所有权。
- `docs/ascet-multi-instance-api-implementation.md`：源码调用链、镜像修改及接入设计。
- `manifest.json`：每个资料文件的来源、大小和 SHA-256；不包含清单自身。

## 当前能做什么

| 能力 | 状态 |
| --- | --- |
| 普通 ASCET 给 Copilot，另开原生多实例 GUI 给人工 | 已提供 `launch-manual.ps1`；当前 Copilot 业务连续性待验 |
| 多个私有 ASCET 使用独立 API 端口 | 原型已验证 |
| 隐藏私有实例、恢复显示、再次隐藏 | 已验证 API 回显；启动可能短暂闪现窗口 |
| C#/.NET 连接已运行的私有实例，校验进程和数据库 | 已实现；.NET 8 与 .NET Framework 示例已验证 |
| 连接器身份查询、回显、排队、超时、取消和断开 | 已实现；异常回归使用模拟 Host |
| Copilot 模型读取、修改、编译接入私有实例 | 尚未接入 |
| 多个 Agent 进程共享一个实例、数据库结果自动合并 | 尚未实现 |

连接器仅有 `identity/echo`，不是完整的模型业务 SDK 或已注册的 MCP 服务。

## 包内目录

```text
README.md
manifest.json
docs/                         操作指南、实现分析及相关并发说明
tools/multi-instance/         启动、隐藏、镜像准备与验证脚本，C# Host 源码
  connector/                  连接器源码、示例、测试和成品
    dist/net8.0/              .NET 8 DLL 与示例
    dist/net47/               .NET Framework 4.7+ DLL 与示例
scripts/                      镜像工具依赖的 Python 解析脚本
bin/EndpointHost.exe          本次编译的 x86 验证 Host；需要本机 ETAS SDK DLL
evidence/2026-10-02/run-01/    历史验证结果、镜像修改记录及实例配置快照
references/copilot/           当前本地 Copilot 连接、绑定及调度代码快照
unpacked/smalltalk-source/     相关反编译 Smalltalk 参考文件
decompiled/Etas.AscetNET/      相关 SDK 反编译参考文件
```

参考代码不是独立可编译的 Copilot 工程，也不是供应商原始源代码。`manifest.json` 保留原始来源，包中未包含整个 Copilot 仓库。

## 最快使用：人工另开窗口

在解压目录中运行 PowerShell，将数据库路径换成实际的独立数据库目录：

```powershell
& .\tools\multi-instance\launch-manual.ps1 -Executable 'E:\ETAS\ASCET6.4\ASCET.exe' -Database 'D:\Projects\OtherDatabase'
```

普通 ASCET 留给 Copilot，任务运行期间保持其数据库不变。人工只在新开的 `manual` 实例切换数据库。两个进程不能同时操作同一个数据库目录。

原生多开 GUI 的 Tool API 默认关闭。这个流程先最小化 Agent 的普通窗口；私有实例的隐藏脚本不能直接用于该普通实例。人工启动脚本已通过语法与 `-WhatIf` 检查，尚未验证当前 Copilot 发布包在人工切库时的业务连续性。

## 私有后台实例：重新准备后连接

需要 Windows、已安装并许可的 ASCET 6.4、PowerShell 7.5+、Python 3.12、.NET Framework 4 编译器，以及运行现代示例所需的 .NET 8。解压路径和准备出的私有实例路径使用 ASCII 字符。

本包不含 ASCET 运行时、镜像、ETAS SDK DLL、许可文件或数据库。准备工具从本机安装复制运行时与 `cebra/Etas.AscetNET.dll`，并复制指定的数据库。源镜像必须满足：

```text
b4dff51f53463f2053ad7163f6afaf7a9a24dfdfd0d538eceec22432fadb5237
```

在解压目录中重新准备，数据库来源必须已关闭或来自一致备份。以下路径要按本机实际情况调整；准备输出目录此前不能存在：

```powershell
python .\tools\multi-instance\prepare.py --output .\analysis\private-01 --installation E:\ETAS\ASCET6.4 --data E:\ETASData\ASCET6.4 --database D:\Projects\TaskDatabase --ports 32621 32622
$manifest = (Resolve-Path .\analysis\private-01\agent-b\instance.json).Path
& .\tools\multi-instance\launch.ps1 -Manifest $manifest -Background
dotnet .\tools\multi-instance\connector\dist\net8.0\AgentExample.dll $manifest
```

`prepare.py` 会生成新的 `EndpointHost.exe` 并复制匹配的 SDK DLL；不能只运行包中的 Host 而省略该依赖。连接器连接已有私有实例，不负责准备、启动或隐藏 ASCET。

显示和隐藏：

```powershell
& .\tools\multi-instance\windows.ps1 -Manifest $manifest -Action Show
& .\tools\multi-instance\windows.ps1 -Manifest $manifest -Action Hide
& .\tools\multi-instance\windows.ps1 -Manifest $manifest -Action Status
```

同一实例由一个持久 Host 拥有 API 连接。不要同时用连接器探针和 Copilot 业务 Host 各占一条连接。释放连接器不退出 ASCET；保存退出使用 ASCET 自身的正常流程。`stop.ps1` 是实验副本的强制清理工具。

## 历史证据与路径

`evidence` 中的 PID、配置和绝对路径都是原工作区的历史记录，仅供阅读。不要把历史 `instance.json` 当作当前启动配置。私有镜像嵌入绝对路径和固定端口，移动目录或只修改 JSON 不能重新配置它；必须重新准备。

原始文档中 `E:\Repo\ASCET`、`E:\Rep\AscetAgent`、`run-01` 的路径是当时的工作区定位。换机器后使用本包的相对目录阅读；运行命令使用新准备的 manifest。历史记录所引用的完整安装与数据库不在包内。

独立实例和后台隐藏的记录验证的是身份、连接与回显，不能据此认定全部模型写入、代码生成或长期运行已通过。现有 Copilot 接入私有端口仍需改业务 Host、任务绑定及调度，详见中文指南第 7 节。

## 完整性检查

ZIP 旁的 `.sha256` 是压缩包校验值。解压后可在 PowerShell 中检查包内文件：

```powershell
$packageRoot = (Get-Location).Path
$catalog = Get-Content .\manifest.json -Raw | ConvertFrom-Json
foreach ($item in $catalog.files) {
    $filePath = Join-Path $packageRoot $item.path
    if (-not (Test-Path -LiteralPath $filePath -PathType Leaf)) { throw "Missing: $($item.path)" }
    if ((Get-FileHash -LiteralPath $filePath -Algorithm SHA256).Hash -ine $item.sha256) { throw "Mismatch: $($item.path)" }
}
'Package files verified'
```
