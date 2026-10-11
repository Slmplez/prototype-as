# ASCET 6.4 反编译与静态重建源码

本目录是 `E:\Repo\ASCET` 中已有反编译结果的源码交付，不是供应商原始开发工程。2026-10-11 整理，保留所选原文件字节，并逐文件核对 SHA-256；完整上传范围以 [manifest.json](manifest.json) 和 [SHA256SUMS](SHA256SUMS) 为准。

## 源码入口

| 目录 | 主要内容 | 当前文件数 |
|---|---|---:|
| [unpacked/dotnet](unpacked/dotnet) | 全面处理输出的 C# 反编译源码、工程声明与工具警告 | 5,988 个 `.cs` |
| [decompiled](decompiled) | 最初导出的 ETAS 核心 .NET 快捷副本，部分与上述结果重复 | 1,725 个 `.cs` |
| [unpacked/java](unpacked/java) | ASCET 安装归档中的 Java 反编译源码及处理记录 | 22,977 个 `.java` |
| [unpacked/smalltalk-source](unpacked/smalltalk-source) | 镜像内类与方法的 Smalltalk 静态重建源码 | 11,911 个 `.st` |
| [analysis/smalltalk-recovery/vm-c](analysis/smalltalk-recovery/vm-c) | ESVM40 VM 的部分原生 C 反编译结果及地址索引 | 70 个 `.c` |
| [scripts](scripts) | 反编译、解析、恢复与校验脚本及本地模块依赖 | 以清单为准 |

Java 文件数是本轮从目录实际枚举得到的值；早期工作区说明中的 20,133 是旧统计，不用它代替当前清单。C# 两个目录分别保留，快捷副本不代表额外独立程序集。

## Smalltalk 恢复范围

原恢复记录为 179,893 个方法记录，其中 179,892 个已绑定类名和 selector 并生成具名方法体；35 个镜像已解析。11,911 个类文件按镜像分目录，`ascet.icx` 通过依赖镜像连接方法，不重复计数。

入口：[Smalltalk 原恢复说明](unpacked/smalltalk-source/README.md)、[离线 HTML 索引](unpacked/smalltalk-source/index.html)、[覆盖记录](unpacked/smalltalk-source/coverage.json)。HTML 下载后可本地阅读；GitHub 不会直接执行其脚本。

保留 class、selector 及可解析变量名；参数、临时变量和显式控制流辅助变量可能是恢复器生成的名字。源码来自字节码静态重建，不能视为原注释、原格式或完整可重新安装的工程。

唯一未确认绑定的记录 `ASDBase.ic / 0x204c8f64` 另有[无名方法主体](analysis/smalltalk-recovery/orphan-ASDBase.ic-0x204c8f64.body.txt)与[引用审计](analysis/smalltalk-recovery/orphan-method-audit.json)。没有为它猜测类名或 selector。

## 与代码/BDE 搜索工具的关系

工具实现位于 [../ascet-multi-instance/tools/code-search](../ascet-multi-instance/tools/code-search)。本目录用于查原生类、selector、对象结构、加载和保存机制；工具运行时依旧通过 C# Bridge 与固定只读 Smalltalk 查询读取当前保存模型，而不是在这些反编译文本中代替实际数据库查询。

例如 `.NET` 的 Etas.AscetNET/Cebra 消息调用链在 dotnet/decompiled 下；`ASDBase.ic` 包含 ASCET 图形、组件、状态机和数据库相关类。检索时可以直接使用：

```powershell
rg -n 'SGToolServer|optionToolServer|loadClass' unpacked/smalltalk-source
rg -n 'sendMessage|initToolSocket|answerOrder' decompiled/Etas.AscetNET
rg --files unpacked/smalltalk-source -g '*Formula*' -g '*Diagram*' -g '*State*'
```

名称/字符串命中只证明文本存在。具体语义需结合方法体、调用者、对象身份和实际只读验证，不能仅从 selector 名字推断行为。

## 交付与证据边界

本次上传的是可阅读源码、文本工程/资源声明、离线索引及必要分析记录。大型逐方法字节码 `recovery.jsonl`、完整 method-index、安装副本、镜像、供应商 DLL、原始 class/JAR/二进制、许可文件和项目数据库不包含在本目录中。

`manifest.excluded` 记录扫描源码目录时按文本允许列表排除的文件，包括 recovery.jsonl 与图像资源；安装/原始归档目录根本不参与扫描。元数据中关于安装和原始字节码的历史路径只是来源记录，不表示这些文件已上传。

原 Smalltalk README 的“方法证据”链接依赖本地完整分析工作区；这些大文件保留在原工作区，不随源码目录提交。本次通过 manifest 校验文件交付，不把旧测试日志当作此次重新执行恢复器的结果。

部分 `.csproj` 引用安装组件或资源，因此不是开箱即用的构建承诺。混合 C++/CLI、第三方 Java/.NET 方法可能存在工具警告；原工具日志、decompiler-warnings 和 [limitations-and-errors.json](analysis/full/limitations-and-errors.json) 保留。70 个 VM `.c` 只是部分原生恢复，不是 ASCET 全部 C/C++ 源码。

本次没有重新反编译、重新执行全部恢复器测试或验证软件整体运行等价性，也没有启动、关闭或修改运行中的 ASCET。

## 文件校验

在本目录执行如下 Node.js 命令即可逐文件验证 manifest 中记录的原始 payload：

```powershell
node --input-type=module -e 'import fs from "node:fs";import crypto from "node:crypto";const m=JSON.parse(fs.readFileSync("manifest.json"));for(const f of m.files){const b=fs.readFileSync(f.path);const h=crypto.createHash("sha256").update(b).digest("hex");if(b.length!==f.bytes||h!==f.sha256)throw new Error("Mismatch: "+f.path);}console.log("Verified "+m.files.length+" source/evidence files");'
```

manifest、SHA256SUMS、本说明和打包脚本自身由此次整理生成，不是供应商恢复文件；Git commit 记录它们的版本。包生成脚本：[prepare-source-upload.mjs](prepare-source-upload.mjs)。从完整原工作区生成时须选现有 Git 克隆，且目标 `ascet-reverse-engineering` 尚不存在。

恢复脚本需要原始安装/镜像、相关工具依赖和本地路径配置；仅有本次源码目录不足以重新完成恢复。格式与实现笔记见 [FORMAT.md](analysis/smalltalk-recovery/FORMAT.md)，校验来源见 [source-audit.json](analysis/smalltalk-recovery/source-audit.json) 与 [snapshot-audit.json](analysis/smalltalk-recovery/snapshot-audit.json)。
