# 全量语义读取提速与并发分析

2026-09-30。业务样例 AEB_dFxTar，仅只读。这里的完整性指现有 reader 已采集字段，仍不包含生效项目配置、完整 numeric implementation 等未实现语义。

## 当前结果

2026-10-02：最新同覆盖读取由固定 ASCET 内部查询和已有 Doge 进程本地续页完成。AEB_dFxTar 30 次真实完整读取中位数 584.959 ms、P95 663.115 ms、最大 667.626 ms，33978 字节正文及全部三页均计时；实际请求 93 帧。独立逐字段公开 API 首尾读取与全部已采集字段、有序数组完全一致。应用启动 105.495 ms 单列，无模型快照缓存替代在线采集。

同时保留前一轮 30 次的 P95 1113.425 ms 和两次慢样本；当时离线套件同时运行，未证实因果关系。新读取器按目标监听端口确认 ASCET 进程及启动时间，修复多实例时 epoch=null 的错误，前后复核身份。见 [最新报告](bde-tools-experiment-report.md)；下文为历史阶段结果，不代表当前耗时。完整有效标定、numeric implementation、其他类型/规模及全量工具验收仍未完成。

## 历史已实现且验证的优化

最终方案保留相同原始语义输出，在单次观察中去重模型对象和 pin，并避免只为读取 ID 创建临时 .NET 包装对象。

| 同一轮、随机交错各三次 | 旧完整 reader | 新完整 reader |
|---|---:|---:|
| 中位端到端耗时（含连接、清理、代理） | 12,627.348 ms | 8,492.358 ms |
| 实际 Cebra 请求帧 | 9,891 | 6,494 |
| 原始输出 bytes | 161,591 | 162,244 |
| 清理中位耗时 | 1,556 ms | 1,213 ms |
| 干净通过 | 3/3 | 3/3 |

耗时减少32.75%，请求帧减少34.34%。输出增加来自诊断 profile，不是模型数据增减。此前12.28秒是上一轮单次结果，本轮用重新测量的12.63秒作为对照，避免混用环境时段。

验证比较全部原始顶层内容，仅排除时间戳、耗时、cleanup 和 profile。保留并比较完整定义、方法代码、公式、默认数据、注释、重复引用、每个 edge occurrence、sequence 及分页校验。六份结果全部相等，dirty始终0。计数：56节点、120 pin、60边、7定义、21方法正文、19依赖参数、24公式绑定。`build()` 的结构及公式检查也通过。

实现位于 `scripts/AscetReadProbe.cs`：

- 模型217次出现，对133个独立对象采样，复用84次。键包含当前组件OID、原生模型xmlOID和wrapper类型，避免同名对象合并。
- pin共240次出现，复用120次；缓存限制在单个graph，负数/无效ID不复用。所有连接occurrence仍输出，没有按连接ID去重。
- 单字段重复调用复用已读name/model type/argument flags及value key。
- pin owner ID直接用原public wrapper所用的`getBlockDiagramElement`和`identifier`，省去不需要的class分派及wrapper清理；远程分页同样直接读identifier。
- 每次启动新reader，缓存不会跨`bd_read`复用。Doge envelope新增sampling描述：重复引用采用本次第一次观察。GUI并发修改仍非原子；不能再把重复引用的相等当作第二次独立读取证明。编辑仍必须重新核对前置字段。

第一阶段仅去重的另一轮结果为11.42→8.11秒、9891→6790帧。不同轮次的系统负载有差异，不能将8.11与8.49直接比较来判定后续优化快慢；最终轮同环境对照如上。

## 剩余耗时在哪里

最终版本分段中位数：连接/解析/配置约169ms，主图+方法参数+分页3530ms，根模型枚举303ms，七个定义合计约3188ms，清理1213ms。分段中位数之和不必等于总耗时中位数。

连接初始化只有约0.17秒，因此持久worker仅省建连并不能让8秒变成1秒。JSON只有约162KB，压缩输出也不是主要提速手段。关键仍是数千次远程调用、API调度、对象分派与清理。

## 并发读如何设计

反编译依据：

1. `decompiled/Etas.AscetNET/de.etas.cebra.toolAPI/ToolAPI.cs` 的同步call发送并等待response；`call(mc,false)`不注册response，不能用它实现读取结果的流水线。
2. `decompiled/Etas.AscetNET/de.etas.cebra.socket/ClientSender.cs` 的三参数sendMessage会生成message ID并登记ClientOrder；ToolClient按message ID分发响应。
3. `unpacked/smalltalk-source/ASDBase.ic/EtasCebraToolServer.st` 的run在同一连接循环receive→Fassade.start；`Fassade.st`的start通过block.value同步evaluate并send。恢复代码支持“单连接逐条执行”，不是每条getter独立fork。
4. 连接层有独立Etas Cebra Process和serverCounterLimitExceeded检查。这不能证明多连接具有多核并行或模型访问隔离；不得更改限制以强行增加连接。

建议按层拆开：

| 层次 | 实现方式 | 当前结论 |
|---|---|---|
| agent任务 | 多个任务提交read计划，调度器合并同一观察内的重复目标 | 可设计，未实现请求合并 |
| ASCET采集 | 单一桥接owner，固定只读字段白名单，有界getter流水线；edit/revert独占 | 现有live_lock仍串行；流水线只做研究验证 |
| 依赖读取 | 先取得对象/定义身份，再调度独立字段；禁止依赖未返回的句柄 | 需要显式任务依赖图 |
| 离线处理 | 快照完整后并行搜索、分析、diff；纯读取与分页交付账本写入分离 | 数据处理可并行；当前工具统一isConcurrencySafe=false，尚未放开 |
| 多连接 | 每连接独立会话/句柄，先做2连接等覆盖及故障对照 | 尚未实验，不承诺2倍/4倍收益 |

离线并发放开前，尤其需要修复同一document的delivery范围读改写竞争；当前不能简单把Doge的isConcurrencySafe改为true。

真正更有潜力的下一步是**服务端固定批量投影**：在ASCET内一次收集一组对象的多个已审计字段，返回数组，减少帧数。它与同时发送许多单字段getter不同。现已验证固定EsCompiler临时代码块入口，见下方08:30结果；不向agent暴露任意Smalltalk源码/selector。

## 已试验而未采用的方案

固定getter流水线使用ClientSender带response登记的重载，每组4个独立getter，随后逐一等待结果。它不减少帧数。第一版把getScope直接读取导致方法参数返回API error31；原public wrapper会将该情况表示成null。三个失败均保留，没有记成0.4秒“加速”。修正为保留public GetScope后，同覆盖单次为8843.009→8346.027ms，帧数均6790。样本不足以证明稳定收益，因此流水线没有进入正式reader。研究源码及二进制单独保留。

初次基线连接拒绝是ASCET当时未运行。按用户授权启动已安装ASCET，自动恢复AEB_1后重新取同进程基线；没有改写epoch绕过比较。当前实验epoch为29468/2026-09-29T23:45:26.6000105Z。

## 证据与复现

- `analysis/bde-experiments/2026-09-30/full-speed-01/final-comparison/results.json`：随机交错对照、真实帧计数、哈希、失败及耗时。
- 同目录`coverage-recheck.json`：六份结果全字段核对及完整性计数。
- `full-speed-01/doge-store`：Doge在线全读、全部分页、再次全读和零差异记录。定向Tool.call测试1pass/27assertions，约20.56秒包含多次调用；不是单次read延迟。
- Python测量完整性负例4项、服务13项通过。未执行写工具，未发起模型agent推理。

复现时使用新的输出目录，保持ASCET打开AEB_1：

```powershell
E:/PYTHON/python.exe scripts/bde_full_read_experiment.py --output analysis/bde-experiments/2026-09-30/full-speed-NEXT --before-binary analysis/live-api/AscetReadProbeBeforeDedup.exe --repeats 3
```

旧二进制须留在DLL旁。实验持有与Doge相同的live_lock；不与其他在线实验并发。保留失败，不重复采集已验证组合来制造更多“通过”样本。

## 临时代码块批量读取（2026-09-30 08:30）

已按用户建议实现 Cebra → EsCompiler evaluate: → 临时 BlockContextTemplate → 当前内存对象 → 固定标量结果。代码不安装类方法、不使用调用方源码、不写模型。两个编译模板仅在一次 reader 进程内复用，断连前显式 destroyObjectForId；模型/pin 缓存仍只活在一次观察内。

模型模板读取 name/comment/isMethodArgument/isMethodReturn；pin 模板读取 name/input/output/owner identifier/sequence number/activator。getScope 保留公开包装层，避免把其 error31→null 行为改掉。253个对象投影都使用同步 value:，不是多个连接并发，也不是一次遍历整图；整个观察仍非原子。

| 最终字节编码版本，同进程随机各3次 | 上轮去重 reader | 临时代码块 reader |
|---|---:|---:|
| 端到端中位耗时 | 8237.633 ms | 6722.471 ms |
| 实际请求帧 | 6494 | 5164 |
| 输出 bytes 中位数 | 162244 | 162281 |
| cleanup 中位耗时 | 1068 ms | 920 ms |
| 等覆盖、无协议错误、dirty=0 | 3/3 | 3/3 |

同轮耗时再降18.39%，帧数降20.48%。不能拿前一轮9.73→6.84秒或更早12.63→8.49秒相乘来宣称确定的总加速比；系统负载不同。所有原始语义字段及 build() 完整性核对通过，仍为56节点/120pin/60边/7定义/21方法正文/19依赖参数/24公式绑定。额外输出为profile。生产路径已默认启用，ASCET_BD_READ_BATCH=0 可选择保留的单字段读取路径；错误不会自动静默回退或伪造部分成功。

关键反编译利用：EsCompiler class evaluate:for:warningLevel:onWarning:ifFail: → compileForEvaluation → 执行临时块；Fassade serialize:；EtasCebraMessage catItem:；EsString asCebraString；Object handleExceptionsIn:ifFail:。模板只调用经过核对的固定 getter，返回严格类型/长度数据。EsCompiler 编译结果必须为本机实际观察到的 BlockContextTemplate。

传输采用纯ASCII JSON：字符串表示为 asCebraString 原始字节的整数数组，C#按旧桥相同的系统代码页解码。避免旧 CebraMessage.buildBody 先将整段二进制按系统代码页转字符、再套字节偏移造成的混合行异常，也不把旧 String 字节错误当Unicode码点。边界探针通过214/208字节、引号、反斜线、换行、空字符串、nil、负的大整数；这不是整个数据库的多语言文本兼容性证明。

保留的失败：

- probe/：混合数组在389帧后触发桥解码异常，约55秒超时，未计收益。staged.log定位到row22序列化；row-types确认字段全是预期String/boolean/integer，不能归因为API错误对象。
- format-probe.txt：错误假设编译结果类名为BlockClosure，实际BlockContextTemplate；改为严格匹配实测类名。
- ascii-01/：错误使用本机不支持的Character asciiValue，触发ASCET系统错误；crash.log有明确walkback。ascii-02/基线为空句柄。纠正为经反编译核对的访问并加入handleExceptionsIn:ifFail:，最终直接传Cebra字节，无需Character选择器。
- ASCET在UI恢复检查期间从27332变为17788；此轮未成功发送任何重启/退出动作，不声称是本工具完成重启。全部成功对照重新在17788同epoch取基线，无篡改身份。
- format-ascii.txt/error：探针用String容纳20013字符导致构造失败（不是模型读取失败）；改用真实Cebra字节验证，未宣称本机String是Unicode字符串。

证据：analysis/bde-experiments/2026-09-30/batch-01/bytes-final/results.json、coverage-recheck.json、validation.json、format-bytes.txt。Doge真实Tool.call全读/全部分页/二次全读/零diff：1pass、27assertions、整个流程13.19秒；证据doge-store。Python覆盖负例4项、服务13项通过；不是新的写入验证或模型agent自主工具选择验证。

复现：保持AEB_1打开，使用新的输出目录运行 scripts/bde_full_read_experiment.py --output NEW_DIRECTORY --before-binary analysis/live-api/AscetReadProbeBeforeBatch.exe --repeats 3。无需设置批量开关，默认启用。scripts/AscetBatchFormatProbe.cs为独立只读边界探针。

下一步：进一步批量对象集合及定义元数据，以减少剩余5164帧；先审计每个getter是否隐式修改，再按同等覆盖验证。原BDE diff显示、连线/删除/状态机、通用回退仍未完成。

## 完整临时代码块导出：1秒样例验收（2026-09-30 08:56）

用户要求继续自我迭代。已实现两步独立迭代：bde_bulk_graph.st把整个图的节点/pin/边/sequence循环移到ASCET；bde_bulk_full.st进一步把模型、引用定义、方法代码、默认标量/表格、公式及绑定移入同一个固定临时代码块。它们嵌入AscetReadProbe.exe资源中；bd_service按资源mtime重建，binary hash同时覆盖模板。不是可由agent输入任意源码的eval工具。

### 等覆盖对照

| 同进程随机各3次，包含代理/连接/清理 | 上轮字段批量 | 完整服务端批量 |
|---|---:|---:|
| 中位端到端探针耗时 | 5941.148 ms | 378.459 ms |
| 实际请求帧 | 5164 | 93 |
| cleanup中位耗时 | 831 ms | 10 ms |
| 原始输出bytes中位数 | 162281 | 161924 |
| 全字段一致、dirty0、无协议错误 | 3/3 | 3/3 |

本轮探针耗时降低93.63%，请求帧降低98.20%。上轮6.72秒是另一时段，不能用它当这轮对照。357字节输出差异来自profile，不是删减模型字段。完整JSON仍约162KB；ASCII带类型返回协议线上响应约512KB，这个版本选择无损、可核对的编码而非最小wire体积。

中间整图批量版本graph-01仅单次：6133.555→4653.812ms/5164→3899帧，原始字段相同；没有在这一步停下，也没将它当1秒结果。第一次full-01/full-compile-02因临时代码块内部变量重定义而编译失败，约0.3秒失败时间不计作成功。改名后full-compile-03首次全字段相等424.391ms，再做上述随机对照。

### Doge端到端

Doge进程运行中，每次bd_read都创建新的Python及.NET helper、重新编译临时块、完整在线采集、写入不可变快照和观察记录；不复用上一次模型值，也未使用持久ASCET连接。

| 测量边界 | 次数 | 中位ms | 样本P95（nearest-rank） | 最慢ms |
|---|---:|---:|---:|---:|
| 首个响应，包含全部采集及快照保存 | 20 | 496.210 | 507.394 | 507.644 |
| 另一轮：全部4页逻辑正文交付 | 20 | 762.368 | 780.592 | 783.751 |

第二轮每次交付32871字节逻辑正文；原始全字段另存在快照raw中。40份原始数据逐字段核对同一旧reader基线，覆盖56节点、120pin、60边、7定义、21方法正文、19依赖参数、24公式绑定。取全部分页不重复在线采集，固定同一snapshot并确认delivery=complete。时间不含模型推理/思考、用户停顿、Doge启动及ASCET启动；包含每次reader进程启动，不是旧快照命中时间。这是本机本组件的有限样本P95，不是跨所有组件或系统负载的SLA。

Doge原生Tool.call完整流程（read→分页→find→inspect→再次read→diff→history）另行1pass/27assertions，1731ms为含两次读等多个工具调用的整个流程。无真实模型推理测试。最终服务新增read_strategy字段，在snapshot/manifest可见full_native_bulk；capabilities明确experimental_bulk_read是否启用及类型边界。

### 接入方式与范围

高速完整导出目前显式启用：启动Doge前设置 `$env:ASCET_BD_BULK_FULL='1'`。工具schema不变，仍用bd_read/bd_find/bd_inspect/bd_diff。未启用时保留已验证的字段批量reader；ASCET_BD_READ_BATCH=0仍可关闭旧路径的单对象字段批量。图批量ASCET_BD_BULK_GRAPH=1只保留为研究过渡路径，与full同时设置时full优先。

不默认替换所有组件读取的原因是类型覆盖：当前full模板支持离散方法图、scalar、1D/2D table、complex class引用。AEB样例覆盖这些类型；独立读取隔离双literal组件（2节点/2pin/0边/0定义）同样与旧reader全字段相等，196.623ms/35帧，无写入。array/matrix/enumeration等其他模型类型及状态机未迁移，未知类型明确报错，不返回伪完整结果。层级图递归已实现但还没有独立含层级fixture的在线验收。完整布局、生效项目/实例配置、numeric implementation仍不是现有全量reader覆盖，不能用本结果声称这些也被读全了。

传输用固定类型标记：字符串保持Cebra原始字节和原系统代码页，字典键也走值编码避免名称中的引号/非ASCII破坏JSON；浮点直接传IEEE字节，避免十进制printString损失精度。解码拒绝重复字典键、非法字节、错误浮点长度。离线15项边界断言通过，包括32/64位1.25、负零、引号/反斜线/换行、空串/nil和损坏数据。它们不是在线完整性证据；在线证据另列。

### 证据及下一步

analysis/bde-experiments/2026-09-30/bulk-01/：full-comparison/results.json；doge-latency-01与doge-all-pages-01的timings/summary/coverage；doge-flow-01；empty-definitions/results.json；validation.json；失败原始输出和失败模板完整保留。Python服务13、比较负例4通过；Doge生产TS模块未改，只有analysis中的独立测量脚本。

复现对照：设置ASCET_BD_BULK_FULL=1，运行scripts/bde_full_read_experiment.py --output NEW_DIRECTORY --before-binary analysis/live-api/AscetReadProbeBeforeBulk.exe --repeats 3。Doge分布测量运行本目录doge-latency.ts，ASCET_BD_LATENCY_OUTPUT必须为新目录，ASCET_BD_LATENCY_ALL_PAGES=1测全部页；无需开启写权限。

下一步以覆盖和可靠性为主：扩展其他模型种类及嵌套层级fixture、严格类型失败/取消/重启边界、跨组件大小的延迟分布；完成后才考虑将高速模式默认启用。继续原BDE实际diff显示、精确连线/删除、状态机和通用回退；这些整体tools目标仍未全部实现。1秒样例验收不替代这些功能验收。
