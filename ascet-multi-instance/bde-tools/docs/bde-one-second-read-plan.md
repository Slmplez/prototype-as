# BDE完整在线读取1秒目标

2026-09-30。用户目标：1秒内。本计划最初未达标；08:56更新：AEB_dFxTar完整在线采集及全部4页交付，20次样本P95=780.592ms，已验证样例达标，见本文末尾更新。本计划采用每次重新采集全部既有语义，不用缓存命中或缩减范围代替全读。

## 当前验证

2026-10-02：AEB_dFxTar 当前 30 次完整声明语义读取 P95=663.115 ms、最大 667.626 ms，全部三页/33978 字节计时，93 个真实请求帧，与独立公开 API 首尾观察逐字段一致。多实例身份修复和本地不可变续页已验证。Class 四 owner/七 scope 另有 30 次 P95=933.749 ms；两个 profile 分开报告。慢样本和失败未删，完整有效配置、其他 roots/types/cold/千节点及全交付仍未通过。见 [当前报告](bde-tools-experiment-report.md)；下面是历史优化规划与瓶颈。

## 实测瓶颈

batch-01/bytes-final三轮中位6722.471ms/5164请求帧；阶段中位：connect/resolve/config179ms，主图/方法参数/分页2427ms，根模型255ms，七个定义2774ms，cleanup920ms（各阶段中位之和不必等于总中位）。本轮增加选择器计数，仅统计固定请求前缀中的selector，不记录参数、模型内容或临时代码。单次在线profile6027.230ms，原始语义与上一轮同epoch基线完全相同，dirty0。此单次耗时用于剖析，不当作新优化的性能收益。

| 实际请求 | 次数 |
|---|---:|
| destroyObjectForId: | 877 |
| className: | 656 |
| identifier | 376 |
| diagramElement | 240 |
| element / xmlOID | 各217 |
| serialize: | 200 |
| 已有临时块value: | 253 |

释放+类型查询1533次，占29.69%；加identifier/diagramElement/element/xmlOID/serialize共2783次，占53.89%。这只是帧数比例，不能直接当成耗时比例。串行RPC仍是结构性开销；增加并发不能消除这些工作。

## 目标架构

单次请求解析精确组件身份后，调用固定exportComponent模板。遍历节点/pin/边、模型、引用定义及方法、默认值/表格和公式绑定全部在ASCET内完成。使用Dictionary/Array/WriteStream形成纯值输出；只把根对象、临时代码块和必要结果句柄交给Cebra，内部模型对象不逐个注册为远程句柄。稳定OID及图元ID仍完整输出，重复边保留，循环定义用本次visited集合处理。

概念流程（不是已有接口名）：

bd_read → attach/resolve → fixed exportComponent block → graph + definitions + defaults + bindings → bounded scalar payload → schema/identity/coverage validation → immutable snapshot + response。

目标把5164帧降到几十帧；这是工程预算，尚无该版本测量。可以按图、定义、数据三个固定批次过渡，最终用一至数次导出。先验证整个内存遍历时间，再决定是否值得让helper常驻。常驻可缓存编译块和连接，不能把旧模型值当作新read；ASCET PID/epoch/数据库变化必须重新初始化。冷启动与连接复用分别报告，不混为同一结果。

保留现有原始语义schema和公开包装层约定（如GetScope的error31→null）；定义路径、wrapper_type字段需确定映射，不能在客户端重新查每个对象。布局属于后续额外覆盖，单独量化增加的成本，不能悄悄从完整BDE目标删掉。getter审计继续避开会修复/初始化模型的入口，例如已知SGVariable.formula，使用已验证的只读槽路径。

## 实施顺序及门槛

1. 主图集合导出：根图一次遍历所有节点、pin、边、sequence，内部完成对象类型映射。逐字段核对和帧数统计通过后才接入。
2. 完整依赖闭包导出：7个定义、21方法正文、模型元数据、默认标定及表格、19依赖参数/24绑定一起导出。包含现有所有metadata及重复occurrence；不能只验证计数。
3. 返回协议：复用已验证的Cebra字节编码原则，改为固定嵌套值schema；长文本保留、不做有损摘要；边界长度及错误明确失败。如需分块，先冻结同一份导出结果，再分页读，不能每页重新遍历当前模型。
4. 生命周期：清理少数导出临时对象，验证异常/取消时的释放。整块运行也不自动等于原子快照；需要证实ASCET调度/版本检测后才声称一致性。
5. 端到端：分别测ASCET内遍历、编码/传输、Python格式化/持久化、Doge Tool.call。现有6.72秒是探针端到端（含代理/清理），不是已量出的单次完整Tool.call延迟。全量内容先采集完再返回首个工具页；后续不可变分页交付另计。最终至少报告相同环境多轮p50/p95/最大值和冷/热状态，目标p95<1000ms，不用一个最快样本验收。

建议1秒预算（待验证，非预测）：启动/定位150ms、服务端完整遍历450ms、编码/传输150ms、格式化/持久化/工具返回150ms、清理100ms。若单独完整内存遍历已经超过450ms，先优化集合遍历/分派；若超过1秒，则明确无法靠网络批量达到目标，保留完整读实测和局部增量的独立指标。

## 本轮交付及证据

scripts/bde_experiments.py增加可选ASCET_BD_TRACE_SELECTORS=1；只在请求方向统计selector。新增碎片/合并帧、多调用类型、参数不泄漏测试，test_bde_experiments.py 4通过。one-second-01/results.json记录5164帧全部归类（含1个unclassified关闭帧）、真实wire bytes、完整原始语义验证。未改生产reader、未写ASCET、未宣称1秒实现。

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
