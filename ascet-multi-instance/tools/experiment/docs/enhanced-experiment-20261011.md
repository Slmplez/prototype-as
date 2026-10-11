# Experiment 0.2 增强功能及验收

2026-10-11，在隔离 ASCET 6.4 Offline PC 实例上完成多阶段用例、数值结构数据读写、原生波形解析和 DCM 往返。MCP 工具由16个增加到19个，新增 `exp_read_data`、`exp_write_data`、`exp_waveform`；其他能力扩展现有工具。CLI、MCP与TypeScript Broker共用实现。

## 多阶段输入与断言

`exp_run_case.caseSpec` 支持以下格式。signalRef 必须来自当前会话；示例中的引用需要替换。

```json
{
  "initialization": "preserve",
  "signalRefs": ["requestRef", "stateRef"],
  "stages": [
    {"name": "idle", "durationSeconds": 0.05, "sampleSeconds": 0.01},
    {"name": "activate", "durationSeconds": 0.1, "sampleSeconds": 0.01,
     "writes": [{"signalRef": "requestRef", "value": true}]},
    {"name": "cancel", "durationSeconds": 0.05, "sampleSeconds": 0.01,
     "writes": [{"signalRef": "requestRef", "value": false}]}
  ],
  "assertions": [
    {"signalRef": "stateRef", "kind": "transition", "states": [11,21,11]},
    {"signalRef": "stateRef", "kind": "hold", "fromSeconds": 0.06,
     "toSeconds": 0.15, "durationSeconds": 0.05, "condition": {"equals": 21}},
    {"signalRef": "stateRef", "kind": "final", "condition": {"equals": 11}}
  ]
}
```

阶段也可用 `stimuli:[{"channel":"in/compute","offset":0.75}]` 改变**已有常量数值激励**。整个用例先检查引用、写入资格和激励通道，再初始化和执行。阶段写入要求可标定信号；不可标定的普通输入通过激励通道驱动。`writes` 是初始标定，阶段内的 `writes` 在该阶段开始应用。reset顺序为停止、重置变量和参数、一个初始化事件、初始标定、各阶段。

| kind | 检查含义 |
| --- | --- |
| `final` | 时间窗口内最后一个快照符合condition |
| `range` | 时间窗口内全部采样点符合condition |
| `eventually` | 时间窗口内至少一个采样点符合condition |
| `hold` | 连续符合condition的采样点覆盖至少durationSeconds |
| `transition` | 从首个目标状态开始，按顺序观测states；默认拒绝未列出的中间状态。allowIntermediate:true可检查有序子序列 |

condition为`{"equals":数值/布尔/枚举名}`或`{"min":数值,"max":数值}`。fromSeconds/toSeconds均相对用例起始仿真时间，窗口端点包含在内。取消或窗口未覆盖时断言不能判为通过。状态序列不允许相邻重复状态。旧版 `{min,max}` 最终值断言和 `chunks/stepSeconds` 格式保持支持。

阶段以**实际返回仿真时间**完成，最后一个事件可能越过请求端点；不会用“调用次数×请求秒数”伪造持续时间。ASCET的时间步进不前进时有界执行事件直到前进，仍无进度则报错。最多100阶段、10000样本，取消在已完成的原生步进之间响应。结果返回实际阶段端点和最大观测间隔。

这些断言证明采样点上的行为。保持或严格转换断言不证明两个采样点之间没有短暂跳变。需要更密集证据时缩小sampleSeconds，或使用原生记录文件。

实机验收：AEB闲置、激活、取消三个阶段，共25个快照，实际端点0.05/0.15/0.20秒；范围、到达、0.05秒保持、状态`11→21→11`和最终值五个断言通过。PID的0.5→0.75激励转换和保持断言也通过。

## 数组、矩阵和曲线

`exp_signals`新增dataKind和shape。曲线不再被旧版isVectoredType误判为标量。`exp_read_data`要求暂停或停止，一次返回kind、shape、values和axes。矩阵按`values[x][y]`组织，shape为`[xSize,ySize]`；数组和一维曲线shape为`[size]`。所有公开索引从0开始，原生1基索引仅在固定模板内部转换。

```json
{"sessionId":"session","signalRef":"matrixRef","shape":[3,2],
 "cells":[{"part":"values","index":[2,1],"value":-3.5}]}
```

曲线坐标使用`{"part":"xAxis","index":[1],"value":8.32}`。最多4096个数据单元、512个修改；不调整大小。写入前检查当前维度、全部索引、重复单元、物理区间和量化后的坐标单调性。写入要求暂停，按单元写入并回读；返回`matchesRequested`区分精确值与量化值。部分失败保留每个单元的applied/failed/notAttempted证据，不回滚、不自动重放。

曲线实测：值10→9.5→10；坐标8.32回读8.3203125，报告量化差异。非法索引、区间外值、下降坐标以及量化后重合坐标均在第一处写入前拒绝。

数组和矩阵在单独ESDL fixture中验收：3元素数组、3×2矩阵，读写首尾单元后，方法`return ArrayParam[0] + MatrixParam[0][0];`的运行输出确实为19；随后恢复原数组和矩阵。fixture只存在于隔离数据库，不修改AEB算法，也不随源码发布。二维特性表的访问分支已接入，但独立的二维表单元与坐标写入未在本次单独验收。

## 原生波形采集与分析

```text
exp_record(configure, signalRefs=[...])
exp_record(set_output, path=<新文件绝对路径>)
exp_record(start)
exp_step / exp_write ...
exp_record(stop) → artifact.path
exp_waveform(path=artifact.path, maxPoints=200)
```

configure显式替换已有Data Logger的通道，返回previousChannels；要求暂停/停止且记录器未活动。不创建记录器，不保存实验环境；调用方用previousChannels重新发现引用后可恢复通道。输出不能覆盖已有文件。停止返回**已完成的文件**和SHA256；ASCET自动递增后的recording.file是下一次输出文件，不能将其误当本次文件。

解析支持小端MDF 2.x/3.x、固定长度记录、一个或多个记录组、前置/前后记录ID、数值整型/浮点通道，以及恒等/线性物理转换。每组必须有单位为秒的时间主通道。拒绝损坏或循环块链、截断、记录数不符、非单调时间、越界数据以及尚未支持的转换。MDF4、文本通道和非线性转换不在本版范围。上限64MiB文件、512通道、200万个解码单元。

完整波形保存为`artifacts/waveforms/<SHA256>.json`，返回rawArtifact。统计在全量数据上计算，包括数量、min/max/mean/RMS、最终值、转换总数和梯形积分；transitions最多保留1000个，超出时transitionsTruncated:true，完整values/time仍保留。maxPoints只影响响应中的时间/值预览，不影响完整文件或统计。

`completeFile:true`表示已解析所有声明的记录和通道；`completeSimulation:false`明确不推断未记录的变量或时间段。原生记录器采样可能包含重复时间戳。后台快照用例仍要求记录器未活动；原生完整记录采用上面的显式工具流程。

AEB实机生成MDF 2.00，39条原生记录、3个业务通道加TIME。解析保留全部记录，ESPAEBDecAct的0→1转换和制动力输出均可见；返回5点预览仍使用全部39点计算统计。另有独立MDF3测试，覆盖12位有符号打包通道、线性物理转换、全量统计和损坏文件拒绝。

## DCM往返

`exp_parameters(save,path)`校验新DCM文件已经生成并返回字节数和SHA256；`load`检查文件大小和格式头，再调用原生导入。文件传输使用60秒原生超时上限，大模型导入不能用标量读取的5秒上限。

导入支持`expected:[{"signalRef":"pRef","value":0.4}]`，返回实际回读与逐项passed；不匹配时返回PARAMETER_READBACK_MISMATCH。原生导入可能忽略不属于当前实验或不可导入的参数；selected readback不能证明任意第三方DCM每个条目都已加载。

本次AEB全量往返：导出135006字节DCM，包含638个FESTWERT、47个KENNLINIE和12个KENNFELD块；修改一个标量参数和曲线，导入后回读恢复，再重导出。除创建时间等文件头注释外，**全部697个数据块文本一致**。原生导入自动排除依赖参数，该模型的完整重导出仍与基线一致。没有修改AEB模型源码来满足验收。

## 复验与发布范围

`npm.cmd test`：21/21；`verify:enhanced`：AEB多阶段、曲线、全量DCM往返和MDF采集解析；`verify:structured`：独立ESDL数组矩阵模型；`verify:live`：PID常量/pulse激励、分段用例、多阶段输入、取消及性能；`verify:mcp`：19工具协议烟测；`verify:guards`：原生边界校验；`verify:aeb-behavior`：原有8场景/39检查点回归。

运行这些测试前设置ASCET_EXPERIMENT_MANIFEST。verify:structured另外要求ASCET_STRUCTURED_FIXTURE指向已准备的隔离ESDL组件，可用ASCET_STRUCTURED_CONFIGURATION指定配置，默认Default。该组件需有参数ArrayParam(3)、MatrixParam(3×2)，compute方法返回两者首单元之和，周期事件为compute。测试结束关闭实验；AEB验收恢复参数和记录通道，不提交数据库。

发布内容仅包含源码、合成测试、脚本和文档。模型AMD、数据库、DCM/MDF、生成代码、SDK DLL、Host EXE、私有诊断执行器及完整验收产物均不发布。
