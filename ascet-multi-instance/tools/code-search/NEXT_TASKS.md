# Code Search 后续任务

## 最新修复验收：2026-10-04

当前 CLI 包为 `ascet-code-search-cli-0.2.0-20261003T160348448Z`。已完成 Agent 证据管理、严格回答校验与修正、指定搜索的完整分页校验，以及源码连续分页读取证明。599 项离线测试、11 个端到端场景/87 次请求、24 次包与源码重建调用、98 次新旧结果一致性检查通过。

最后 49 次新版热查询有一次超过 500 ms，冷态也有超标；自然语言解释正确性仍须单独评审。当前证据与后续优先级见 [AGENT_EVIDENCE_REPAIR_REPORT.md](AGENT_EVIDENCE_REPAIR_REPORT.md)。以下保留之前的迭代历史。

更新：2026-10-03。当前交付采用常驻 CLI JSONL，[CLI.md](CLI.md) 是启动说明，[AGENT_SIMPLE.md](AGENT_SIMPLE.md) 是当前接口。当前规划不包含 MCP 开发。

补充验收发现边界缺口：此前 1400 次仅覆盖推荐 limit:20 的预热配置，不能证明所有配置或冷态达标。默认/最大分页与 occurrence 扩展测试有长尾，get|set 正则中位 533 ms；三个独立重启后的首次源码读取均约 1.04 秒。当前继续优化，整体目标尚未完成。[失败记录](experiments/cli-boundaries/2026-10-02T19-07-52-969Z/report.json)。

本轮已修复 `get/get` 和 `missing_port/missing` 等原生生成名称的片段搜索漏报。71 图的 13,247 个字段/片段检查和 17 组预筛选开关对照通过；分组/分支正则的 66 次 CLI 对照通过。受限定的 Literal-only 无连接图已直接读取保存字段，其余图继续原生转换；全部图结构和源码审计一致。三重启、1200 次扩展验收已结束：16 次热态超过 500 ms，最大 7.535 秒，三次冷态首读约 1.03 秒，整体未达标。[当前失败记录](experiments/cli-boundaries/2026-10-02T20-02-23-274Z/report.json)。旧交付包尚未更新。

新增 stderr 诊断记录 CPU 0 占用、ASCET 页错误与工作集变化，默认关闭。400 次带阶段诊断的扩展查询有一次正则耗时 509 ms，其余低于 500 ms；首读 1.05 秒。[诊断记录](experiments/cli-boundaries/2026-10-02T20-17-22-671Z/report.json)。随后三重启、1200 次诊断已结束：71 次热态超过 500 ms，最大 7.831 秒；三个首次源码查询为 1033/1080/1075 ms。最大样本中 CPU 0 繁忙约 7.766 秒、ASCET CPU 约 0.859 秒，扫描阶段也出现延长，需排查单核调度竞争。[长尾记录](experiments/cli-boundaries/2026-10-02T20-29-58-153Z/report.json)。这说明时间大量不在 ASCET 自身 CPU 执行，但尚不能将具体等待原因认定为已查清。

Literal 快速路径的 33 项现场边界检查通过，覆盖空图、双字节文字、多行/分隔符文本、零 ID、无效/重复/交叉 ID、隐藏类别、未知节点和整图回退，包含隐藏类别的原生输出对照。[边界记录](experiments/literal-gates/2026-10-02T20-51-36-955Z/report.json)。测试发现原生 `DBString` 未被副本与审计支持，已修复；完整源码和 71 图仍一致。请求内构造器归属检查复用实验未证明稳定收益，未接入。

正则 Worker 传输改为每请求唯一源码表，保留每个文档独立的搜索 spans 和返回元数据，并剔除匹配不用的 diagram_fields。真实 870 文档、60 组交替 A/B 的全部结果一致；源码字符传输由 2,918,176 降到 793,752，Worker 往返中位从 16.864 降到 11.906 ms。[Worker 记录](experiments/worker-payload/2026-10-02T20-50-14-642Z/report.json)。没有跨请求源码缓存，公开 JSON 不变。

冷态记录探针发现 214 个 Code Container 的原始记录读取约 16 ms、原生还原约 374 ms。[原始记录诊断](experiments/cold-scan-profile/2026-10-02T20-50-27-326Z/report.json)。独立匿名 Loader 的源码和全部图结构对照通过，首次容器还原约 344 ms，其中临时内存段删除约 282 ms；这些阶段包含关系不可相加。[Loader 诊断](experiments/container-loader/2026-10-02T20-56-17-509Z/report.json)。批量段清理没有证明收益，未接入；直接字节筛选 set 时所有 214 条记录均通过，仅 95 个真正命中，亦未接入。诊断路径修复了启动端口就绪等待，但不预热源码。旧交付包仍不包含当前修复。

## 已完成

- TypeScript/C# 构建和 501 项离线测试通过，包括原生 zlib 传输、损坏数据、大小限制、Unicode 和尾随输入验证。
- CLI 会话恢复：Database 不匹配、空闲释放后重连、确定性 ASCET_BUSY、ASCET 完整重启后下一请求重建连接通过。
- 同一 CLI 拒绝重启前 ref；两个 CLI 不能互用 ref；新 ref 可读取保存的 Private Diagram。
- search/read 使用 128 KiB 输出预算；全文和混合批量读取支持分页。
- 71 张 Diagram、142 次冷态副本读取及 71 次保存源审计通过；覆盖 38 Class、32 Module、一个状态机 Init。
- 98 次最终 CLI A/B 查询验证首屏内容与冻结版本相同；完整源码及所有 Diagram 结构一致。
- 新实现两轮 1400/1400 次 CLI 上下文/延迟查询全部低于 500 ms，中间完整重启隔离 ASCET；整体最大 455 ms。六类调用流程通过：Method 定位读取、BDE 对象局部连接、State Machine Init、Private Diagram、默认请求、搜索续页。旧实现 526/530 ms 的失败样本仍保留。
- 增加 native Diagram 复制/加载/遍历耗时；批量字段匹配共用一次小写转换。
- 试验跳过 fitToRaster 和分段转义未证明稳定收益，已撤回，保留标准加载路径及原转义规则。
- Diagram 内已读 Pin 身份在同一次遍历中复用；未知端点保留原生 Getter。连接类型仍来自原生传播。
- BDE 传输按图发送一次 Component/Diagram 身份；解码还原后执行相同结构和版本校验。set 内部传输由约 1.20 MB 降至 0.93 MB，Agent JSON 不变。
- Data GO 的 owned headless factory 在连接时编译，仅用于受限定的原生标量/Return 路径；Vector、自定义 graphicObject 和特殊布局回退。完整 Pin/Sequence/连接类型仍按原生模型计算。
- 标量默认构造按 class/typeID/Return 在本次请求内复用复制计划；各 Element 的可变对象独立，原生模型更新仍执行。865 项现场断言验证循环、共享关系、修改隔离和回退，完整图结构及源码与冻结版本一致。
- 大响应在 ASCET 内使用 zlib level 1 和原生 Base64，set 的实际传输约为 172 KB；小响应、不可压缩内容和库不可用时回退。10 个原生传输/回退测试通过。
- modified-object 目录输入仅在请求内复用；20/312/624 个 held DBObject 输入与原生查询逐字段一致，finally 恢复原目录状态。未保存的新建/删除编辑流程仍未覆盖。
- 最终 CLI 包已通过含空格目录解压、153 个文件哈希验证、无需 npm 安装运行和随包 TS/C#/Smalltalk 源码重建；9 个现场 CLI 调用通过。

## 当前性能

以下来自默认 CPU affinity=1 的单一常驻 CLI，包含请求发送到完整 JSON 解析。测试库有 180 个 Component、870 个文档、71 张 Diagram。两轮之间完整重启隔离 ASCET；均在快照读取和预热后测量。默认前后各 10 行、group_by:object、limit:20，各 100 次；另有 compact context=0 的 700 次。共 1400/1400 低于 500 ms。启动和首个 CLI 查询单独记录；真正冷态首读、其他库和系统负载不属于此性能结论。

| 查询 | 中位 | 最大 | 超过 500 ms |
| --- | ---: | ---: | ---: |
| AEBLockTime identifier | 175 ms | 201 ms | 0/100 |
| 三变量 batch | 294 ms | 371 ms | 0/100 |
| identifier regex | 178 ms | 205 ms | 0/100 |
| return | 361 ms | 404 ms | 0/100 |
| set | 385 ms | 442 ms | 0/100 |
| 未命中 | 131 ms | 156 ms | 0/100 |
| 限定 Component identifier | 10 ms | 15 ms | 0/100 |

两轮热态 500 ms 验收通过。整体最慢 455 ms；重启后最慢 442 ms。交替 A/B 保留首屏、全部命中数和完整图结构：set 中位 531→404 ms、return 479→361 ms、batch 392→293 ms。此前仅省略显示标签的实现仍有 1/700 达到 530 ms；新模板复制优化进一步降低构造耗时。压缩发生在 ASCET 内，Data GO 仍保留原生类型传播；直接保存结构 reader 没有接入。Smalltalk 旧阶段时钟约 16 ms 粒度；实验 QPC 验证 load 为主要耗时，但生产未启用精细计时 instrumentation。

## 后续顺序

| 优先级 | 任务 | 验收标准 | 状态 |
| --- | --- | --- | --- |
| P1 | 原生保存结构读取可行性 | 列出搜索实际需要的字段与其保存源/getter 对应关系；证明能保留 Element、Pin、Method 调用、连接、Hierarchy、Sequence 和 Public/Private 身份；未知结构明确降级 | 保存字段已探测，原生关系已核对；连接类型仍需原生传播 |
| P1 | 通用读取优化原型 | 与标准 detached getter 在全部 71 张图逐字段对照，再扩大 Class/Module/State Machine、嵌套图与冷态样本；首屏、全量命中与源码审计一致 | Pin/元数据复用、受限定请求内模板、原生传输压缩已通过；受限 Literal-only 读取已接入，其余图继续原生转换 |
| P1 | 全库 500 ms 再验收 | 冻结 CLI A/B；分别记录热态、首次查询和完整重启后的请求；保存每个超标样本；不通过改 total_hits 或隐式停扫获取更快成绩 | 扩展 1200 次有 16 次热态超标，三个冷态首读均失败；正在采集长尾诊断和分拆原生加载成本 |
| P1 | Agent 实际任务评估 | 同名 Component 选择、Method binding 与实现区分、对象局部读取、续页、过期 ref 恢复；从误用记录决定接口调整 | 自动调用流程已过，LLM 任务评估待做 |
| P1 | CLI 发布包 | 仅打包 CLI 产物、桥接器、接口与文档；在新目录中验证启动与 find/search/read；保存版本和哈希 | 已完成，153 个文件校验和源码重建通过 |
| P2 | 未保存修改覆盖 | 新建、删除、重命名的真实 dirty-cache 工作流与目录查询对照，最终恢复模型并核对保存源 | 非空 held 输入通过；真实编辑工作流待补 |
| P2 | 跨工具统一连接调度 | 单连接所有者、队列界限、会话路由、取消和可观测等待；与现有 BDE 工具共同验收 | 当前只有共享锁，Broker 待设计 |
| P2 | 任务驱动的覆盖扩展 | State/Transition 拓扑或其他缺失事实，来源必须可证实、输出缺失必须明确 | 按任务再决定 |

优化不得引入变更监听、增量同步或持久源码索引，不改 total_hits/查询语义。页内 preview 省略与真实未读取范围须区分。Dataset 和 Formula 仍是独立工具领域。

## 本轮证据

- [当前迭代汇总](experiments/cli-iteration-20261003/REPORT.md)
- [原生保存结构研究](BDE_STORAGE_RESEARCH.md)
- [最终 CLI 包](../../dist/ascet-code-search-cli-0.2.0-20261002T185921630Z.zip)
- [解压及源码重建验收](experiments/cli-package/2026-10-02T18-59-41-733Z/report.json)
- [当前 CLI A/B](experiments/cli-optimization/2026-10-02T18-45-19-195Z/report.json)
- [第一轮 700 次默认 CPU 延迟](experiments/agent-latency/2026-10-02T18-46-17-949Z/report.json)
- [重启后第二轮 700 次延迟](experiments/agent-latency/2026-10-02T18-51-13-064Z/report.json)
- [当前 CLI 重启验收](experiments/cli-acceptance/2026-10-02T18-50-46-321Z/report.json)
- [当前冷态验证](experiments/cold-read/2026-10-02T18-50-29-536Z/report.json)
- [865 项复制边界断言](experiments/template-copy/2026-10-02T18-49-29-058Z/report.json)
- [预筛选通用性](experiments/prefilter/2026-10-02T18-49-47-865Z/report.json)
- [原生传输与回退](experiments/native-transport/2026-10-02T18-49-30-197Z/report.json)
- [非空目录输入](experiments/modified-directory/2026-10-02T18-50-13-792Z/report.json)
- [旧实现重启后超标样本](experiments/agent-latency/2026-10-02T17-42-32-465Z/report.json)
- [仅省略标签后超标样本](experiments/agent-latency/2026-10-02T17-58-32-957Z/report.json)

上轮证据：

- [汇总报告](experiments/cli-polish-20261002/REPORT.md)
- [最终 CLI A/B](experiments/cli-optimization/2026-10-02T13-19-14-984Z/report.json)
- [CLI 延迟及六类流程](experiments/agent-latency/2026-10-02T13-21-28-382Z/report.json)
- [CLI 重启与锁恢复](experiments/cli-acceptance/2026-10-02T13-26-34-010Z/report.json)
- [冷态副本读取](experiments/cold-read/2026-10-02T13-16-52-512Z/report.json)

所有现场操作限定于 manifest 对应的复制数据库和 32631 端口。完整源码指纹为 5cb29e83cf0588949d1f22e6621292199976cd8ca4df8dac88bfc64e8549c4df。
