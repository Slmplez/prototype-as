# ASCET Smalltalk 方法源码恢复

179,892 / 179,893 个方法记录已重建（99.9994%）；11,911 个类源码文件。

- 已解析全部 35 个镜像：对象边界错误为 0，未解释尾部字节为 0。
- 提取 179,893 个紧凑方法记录，其中 105,925 个共享字节码引用全部定位成功。
- 179,892 个方法记录已绑定类名和 selector；另有 1 个无绑定记录保留在原始方法清单中。
- 已重建 179,892 个可绑定的完整方法体：127,688 个顺序方法、52,204 个包含显式控制流的方法。按方法记录去重，快照的重复类绑定不重复计数。
- 还有 0 个已绑定方法未生成完整源码；加上 1 个无绑定记录，合计 1 个方法记录尚未形成完整具名源码。孤立记录的无名主体另行保存。
- `ascet.icx` 的 88,725 个普通对象全部识别了类；没有找到普通 `CompiledMethod` 实例，也没有独立紧凑方法段。其方法引用已连接到静态依赖镜像；旧式 Abt 类字典、`EsMethodArray` 和扩展表又找回了 4,009 个此前无绑定的方法记录。

从 [可搜索索引](index.html) 打开镜像和类。每个 `.st` 使用 Smalltalk file-out 风格；同目录 `recovery.jsonl` 保存方法地址、镜像文件偏移、绑定来源、原始字节码和恢复状态。原始镜像及逐记录字节码保留在 [方法证据](../../analysis/smalltalk-recovery/methods/) 中。

## 恢复语义与边界

这是依据 ESVM40.dll 原生指令处理程序重建的源码，并非原始开发源码。保留类名、方法名、实例变量名和可解析的共享变量名；参数、临时变量及辅助变量使用生成名称。带分支的方法使用局部程序计数器表达控制流，以保留跳转和求值顺序。只对所有可达指令和字面量都已理解的方法输出完整方法体；未支持的情况不写占位方法。

恢复器区分消息调用的保留结果、丢弃结果和级联模式，检查 super 的词法类与 receiver，按镜像继承链恢复实例变量布局。旧式 Abt 镜像的 `EsEntryPointList` 类布局、`EsMethodArray` 字典和扩展表也会参与绑定恢复。已支持无捕获的简单代码块字面量；代码块内嵌字节必须单独恢复并覆盖，才允许跳过其非主路径字节。

未恢复原注释、原排版和原变量命名。1 个方法记录没有可确认的类名和 selector，因此保留在原始方法清单中而没有伪造绑定。尚未重新编译或在 ASCET 中执行这些源码；重建的类定义、全局环境、外部插件和 native primitive 快速路径也未齐备，因此这些文件不是可直接替换安装的完整工程。生成控制流引入辅助局部变量，尚未验证其编译器变量数量上限或全部方言语法。

## 无绑定方法审计

- `ASDBase.ic` `0x204c8f64`：9 个内嵌代码块字面量，18 处引用（含快照重定位副本）；没有方法字典引用。[已重建的无名方法体](../../analysis/smalltalk-recovery/orphan-ASDBase.ic-0x204c8f64.body.txt)。

[逐引用审计](../../analysis/smalltalk-recovery/orphan-method-audit.json)列出 35 个镜像中的原始和重定位地址、文件偏移及引用对象。无名方法体只是字节码的静态重建，不是可安装的 file-out 方法；仅凭代码行为无法确认类名或 selector。

## 校验

- 全量检查：35 个镜像对象边界与文件末尾、共享字节码目标、方法 selector 参数个数、指令边界、字面量/实例变量/栈变量范围、分支目标、控制流栈深一致性。
- 独立检查：Unicorn 在隔离内存中模拟原 DLL 的 x86 指令，验证整数运算及负数除法/余数、区间比较、布尔分支、返回模式和参数帧顺序。不启动 ASCET、不执行宿主 DLL。
- [测试日志](../../analysis/smalltalk-recovery/tests.log)、[文件哈希与源码条目校验](../../analysis/smalltalk-recovery/source-audit.json)、[快照对象审计](../../analysis/smalltalk-recovery/snapshot-audit.json)。

## 主要未恢复项

以下数字按每个方法首先遇到的阻碍统计，不能相加解释为所有指令的总出现次数。



## 镜像覆盖

| 镜像 | 方法记录 | 已重建方法 |
|---|---:|---:|
| abtdah.ic | 797 | 797 |
| abtdau.ic | 513 | 513 |
| abtdbf.ic | 216 | 216 |
| abtdbh.ic | 814 | 814 |
| abtdol.ic | 40 | 40 |
| abtxmlp.ic | 1,296 | 1,296 |
| ascet.icx | 0 | 0 |
| ASDBase.ic | 131,680 | 131,679 |
| ASDConvUtil_base.ic | 174 | 174 |
| ASDDocumentor.ic | 1,206 | 1,206 |
| ASDGenUtil_base.ic | 387 | 387 |
| ASDStartup.ic | 3 | 3 |
| async.ic | 315 | 315 |
| cfsnls.ic | 1,779 | 1,779 |
| dbgrun.ic | 299 | 299 |
| dde.ic | 253 | 253 |
| drgdrp.ic | 218 | 218 |
| EHOOKS.ic | 432 | 432 |
| eprun.ic | 7 | 7 |
| eshell.ic | 124 | 124 |
| ETargetCommon.ic | 389 | 389 |
| ETargetCommonToolbox.ic | 2 | 2 |
| ETargetPrototyping.ic | 29 | 29 |
| extwid.ic | 5,068 | 5,068 |
| HwAccessETarget.ic | 405 | 405 |
| kernel.ic | 4,360 | 4,360 |
| lib.ic | 2,921 | 2,921 |
| ole.ic | 346 | 346 |
| oleb.ic | 263 | 263 |
| parse.ic | 957 | 957 |
| psupp.ic | 12,918 | 12,918 |
| sci.ic | 652 | 652 |
| winsys.ic | 5,828 | 5,828 |
| xxx.ic | 513 | 513 |
| xxx_dyn.ic | 4,689 | 4,689 |

## 复现

在仓库根目录使用 Python；原生独立测试依赖 `tools/python` 内的 Unicorn 2.1.4。

```powershell
E:\PYTHON\python.exe scripts/smalltalk_image.py
E:\PYTHON\python.exe scripts/recover_smalltalk_methods.py
E:\PYTHON\python.exe scripts/audit_smalltalk_orphans.py
E:\PYTHON\python.exe scripts/decompile_smalltalk.py
E:\PYTHON\python.exe scripts/test_smalltalk_recovery.py
E:\PYTHON\python.exe scripts/report_smalltalk_recovery.py
E:\PYTHON\python.exe scripts/build_report.py
```

解码依据包括 [256 个原生处理程序](../../analysis/smalltalk-recovery/opcode-handlers/)、[虚拟机 C 伪代码](../../analysis/smalltalk-recovery/vm-c/) 与 [格式和语义说明](../../analysis/smalltalk-recovery/FORMAT.md)。
