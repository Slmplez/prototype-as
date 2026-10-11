# 面向 Agent 的精简接口

启动一个常驻进程，逐行发送 JSON、逐行读取响应：

```powershell
node E:\Repo\ASCET\tools\code-search\dist\src\cli.js --agent
```

当前交付采用 CLI JSONL，启动、环境配置及客户端例子见 [CLI.md](CLI.md)。工具定义使用 `agent-simple-find-tool-definition.json`、`agent-simple-search-tool-definition.json`、`agent-simple-read-tool-definition.json`，对应 find/search/read 三种操作。find/read 请求必须带 operation；search 可以省略。三个操作共享常驻 AgentSession，才能传递 ref/cursor。库调用使用 `new AgentSession(reader)`；退出时关闭 session 和 reader。原生 Bridge 自动获取跨进程 BDE 共享锁，空闲 250 ms 后释放连接和锁；CLI 使用 SessionBridge 在故障后的下一次请求重建工具连接。

按工具名调用时，Agent 入参不含 operation；CLI 接受 `{"tool":"ascet_code_find","arguments":{"member":"init"}}`，也可使用导出的 `AgentToolClient.call(name,args)` 自动补入操作。以上 operation 要求仅用于原始 CLI 请求，仍保持兼容。`prompt-examples.json` 使用按工具名调用的入参。

find 的 name 统一表示所选 target 的名称或路径条件，例如 `{"target":"components","name":"DBR_Force2Pressure","match":"exact"}`。成员和 Diagram 也接受 name，原有 component/member/diagram 字段继续可用。重复名称条件不一致时返回 INVALID_REQUEST。

Agent 调用策略使用 [AGENT_SEARCH_PROMPT.md](AGENT_SEARCH_PROMPT.md)，合法请求样例见 `prompt-examples.json`。初次定位推荐 `context:10, limit:20`；context 省略时默认前后各 10 行，limit 省略时为 50。

## ASCET 术语与 JSON

Method、Process、Diagram、State、Transition 的字段与范围见 [术语与迁移表](ASCET_TERMINOLOGY.md)。文字搜索片段使用 `snippets[].text`，命中位置在 `snippets[].matches`；BDE 对象模式使用 `hits`。完整读取分别使用 code、diagram_text 或 method_binding；对象 ref 返回局部结构。

结果的 component_type 来自同一次读取的原生所属 Component 元数据，例如 SGClass/SGModule/SGSmClass；不会从 kind、语言或路径推断。BDE 命中、局部对象和连接端点统一提供 referenced_component_path，表示引用目标；外层 component_path 表示所属 Component。旧局部对象的 component_path 作为引用路径别名保留。

## 按名称定位与列目录

知道 Component/Method 名称时先用 `ascet_code_find`，无需正文包含名称：

```json
{"operation":"find","component":"AEB_AxCtrlConfigFF_Modify","member":"calc_pre","match":"exact"}
```

返回 `target:"members"`、`returned_count/total_count` 和 `results[]`，每项只有 ASCET 身份与可直接 read 的 ref，不携带正文。省略 member 即列出支持的代码项，包含空的文本 Method；同一 State 的不同 Action、同一 Method 的不同 Implementation/Variant 分别返回。

```json
{"operation":"find","target":"components","component":"AEB_Trigger_BA_From_IB"}
```

Component 查找只返回 ref、component_path、component_type。把 Component ref 传给 `in.component`，再查成员或搜正文；它不能直接 read：

```json
{"operation":"find","in":{"component":"<Component 结果的 ref>"},"limit":20}
```

| find 参数 | 默认与语义 |
|---|---|
| `operation` | 必须为 `find` |
| `target` | 默认 members；components 列 Component；diagrams 列 BDE Diagram；objects 列 BDE 节点；states/transitions 列保存状态机对象，包含空代码对象 |
| `component` | Component 名称或完整模型路径，按 match 匹配 |
| `member` | Method/Process 名称或 State/Transition 路径；省略则列目录 |
| `diagram` | 仅 target:diagrams 使用，按 match 匹配图名；重名图按身份分别返回 |
| `name` | 仅 objects/states/transitions 使用，匹配对象名称或 State/Transition 路径；省略包含无名/空代码对象 |
| `match` | 默认 contains：字面子串；exact：完整名称/路径相等；不支持正则或通配符 |
| `case_sensitive` | 名称匹配默认 false，使用 Unicode 小写折叠 |
| `in` | 与 search 相同的精确范围；target:components 只接受 in.component |
| `limit` | 默认 50，最大 200；此处限制元数据记录数量，不是正文命中数 |
| `database` / `debug` | 与 search 相同 |

续页只传 cursor。已知 Component 名称时，先读取当前目录筛选，再读取所选 Component 的支持源码以建立 read 版本依据；仅按 member 全局查找仍需要读取支持的源码。没有名称索引或后台同步。members 是“支持的保存代码/绑定目录”，并非全部 Method/事件声明目录；没有记录不代表模型没有该声明。普通 BDE 与 Init 按 Diagram 返回；项目可达性仍不在接口覆盖范围。

按 name/member 查找成员时，BDE 结果额外返回 matched_members，列出满足此次名称条件的图内 Method/Process；diagram_methods 仍保留整张图的成员列表。matched_members:[] 表示只有 Diagram 名称命中，不证明存在或不存在同名声明。文本结果直接使用 method/process，不增加此字段。续页保留 matched_members；read 返回新鲜保存内容，不携带此次查询标记，也不会把整张图裁成一个 Method。

结构目录只接受 `in.component/diagram/visibility`；objects 另外支持 `in.object_kind`，与代码搜索的 `in.kind` 分开：

```json
{"operation":"find","target":"objects","in":{"diagram":"<diagram-ref>","object_kind":["hierarchy","element"]},"limit":20}
{"operation":"find","target":"states","component":"AEB_State_Machine","match":"exact"}
{"operation":"find","target":"transitions","component":"AEB_State_Machine","match":"exact"}
```

BDE 对象目录返回所属 Component/Diagram、类型、名称、Hierarchy、node_id 和 ref；对象回读沿用局部结构。State 对象回读返回 `code_slots/incoming/outgoing`，Transition 回读返回 `start_state/end_state/priority/code_slots`，这些列表和端点均带可继续读取的 ref。State_kind/native_type 区分 Hierarchy State、Junction 等；空 code_slots 表示无保存代码槽位。关系读取也按 128 KiB 预算分页，续页复用该次快照；批量逐项续页。结构对象 ref 始终校验包含关系和槽位的版本，模型已变化则重新 find。缺失/歧义端点或无效优先级返回 null 和 partial/issues，不推断运行语义。

## 多 Diagram 与 Public/Private

```json
{"operation":"find","target":"diagrams","component":"AEB5ms","match":"exact"}
```

```json
{"operation":"find","target":"diagrams","diagram":"Init","match":"exact","in":{"visibility":"private"}}
```

图形结果新增 `visibility:"public"|"private"`，来自 Component 的 Specification 集合，与路径中 Public/Private 文件夹无关。不明或矛盾归属返回 partial/issues，不推测为 public。State/Transition 也返回父 Diagram 的 visibility；这不代表绑定 Method 的访问级别。

```json
{"query":["VehicleSpeed","BrakeRequest"],"mode":"identifier","group_by":"object","in":{"diagram":["<实际 Diagram ref1>","<实际 Diagram ref2>"]},"limit":20}
```

`in.diagram` 接收整图 ref；也可使用 Diagram source OID，但必须同时明确一个 `in.component`。跨组件选择使用 ref 数组，保留各 Component/Diagram 配对，不产生交叉组合。不能传图名、节点 ref 或 Method ref；找图名使用 find。`in.visibility` 可传单值或数组，省略则两边都查。Diagram 范围只查明确属于图的内容，与显式 method/process/header 等文本 kind 组合报 INVALID_REQUEST。它与 `in.member`、Component 等范围取交集；按 Method 仍选择整张所属图。

Diagram 身份、归属和名称筛选在原生图形 getter 之前执行。find 为入选图读取实际正文版本，之后的 read 仍读取新鲜内容。改名和 Public/Private 移动会改变版本；以旧 ref 作搜索范围允许读取新内容，以 `read.if_unchanged:true` 回读则拒绝变化。refs 固定 Database/PID，ASCET 重启后重新 find。

专项测试和性能边界见 [多 Diagram 验收](experiments/multiple-diagrams/REPORT.md)。

## 常用入参

```json
{"query":"AEBLockTime"}
```

```json
{"query":["AEBLockTime","AEB_FxTarPT"],"mode":"identifier"}
```

```json
{"query":["AEB_FxTarPT",{"text":"AEBLockTime","mode":"identifier"},{"text":"\\b[PC]_AEB[A-Za-z_0-9]*\\b","mode":"regex","id":"calibration"}],"context":10,"limit":20}
```

```json
{"query":"AEB_FxTarPT = 250000;\nAEB_LDMSelectedControllerPT = LDMSelectedController_None;","context":{"before":10,"after":20}}
```

```json
{"query":"AEBLockTime","in":{"component":"040qm00100001m8714ag81ugur0dk","member":"init","kind":"diagram"}}
```

拿到搜索响应后，将下面的占位文本替换为实际值：

```json
{"query":"return","in":{"component":"<上次结果的 ref>"}}
```

```json
{"operation":"read","ref":"<上次结果的 ref>"}
```

读取多个候选的 Method 实现时，合并为一次调用：

```json
{"operation":"read","ref":["<实际 ref1>","<实际 ref2>"],"if_unchanged":true}
```

```json
{"cursor":"<上一页的 next_cursor>"}
```

| 参数 | 默认与语义 |
|---|---|
| `query` | 唯一必填搜索参数；一个字符串、一个 `{text, mode, id, ...}` 对象，或 1–64 项数组。数组项可为字符串或查询对象 |
| `mode` | `text` 字面搜索；`identifier` 完整标识符；`regex` 正则。批量项可覆盖顶层模式 |
| `case_sensitive` | 默认 false；文本/标识符为 ASCII 折叠，正则为 ECMAScript Unicode 规则 |
| `context` | 默认前后各 10 行；数字同时控制前后文，或分别指定 `{before, after}`，每侧 0–100 行；显式 0 关闭前后文，对象中未指定的一侧为 0 |
| `group_by` | 默认 occurrence；object 将同一 BDE 对象的多字段命中先归并再分页，文本仍返回 snippets |
| `limit` | 默认 50，最大 200；整批共享。occurrence 计文字出现位置；object 计 BDE 对象加文本出现位置，查询间轮流分配 |
| `in` | 可省略，默认当前全库。支持 component/member/member_id/kind/variant/implementation，各字段支持单值或数组 |
| `multiline` | 含实际换行的 query 自动开启；也可显式设置。标识符模式不支持跨行 |
| `dotall` | 默认 false；仅正则可用，开启时默认同时启用 multiline，使 `.` 可匹配换行 |
| `database` | 可选的当前数据库身份校验；用 ref 限定组件时自动绑定原数据库 |
| `debug` | 默认 false；开启后返回数据库、coverage、timings 等诊断信息，续页沿用 |

上下文以当前 Method、Process 或 State/Transition 代码为边界，不会扩展到相邻对象。重叠窗口合并，命中行与上下文在每项结果内只出现一次。最多保留 40 行上下文，并补入不在窗口内的命中行；超过行数或页面字节预算时用 omitted_lines/截断字段说明。多个 query 仍分别返回自身结果，跨查询不合并正文。需要完整实现时使用 read。

没有自动将 `*` 猜成通配符，也不猜词义或符号关系。多个查询分别返回命中，不表示 AND 条件。`in.member` 精确过滤 Method/Process 名称或 State/Transition 完整路径；独立名称查找用 find。`in.component` 接受 OID 或同会话 search/find 返回的 ref，后者表示该结果所属整个 Component。其他范围字段与元数据精确匹配，区分大小写；同字段多值取并集，不同字段取交集。`implementation:""` 选择基础 Implementation。

## 返回与读取

搜索固定返回 `searches[]`，每项含 `index/query/mode/returned_hits/total_hits/has_more/results`；输入有 id 时原样保留。结果以 `component_path` 表示 Component 路径，按 kind 返回 `method`、`process`、`state` 或 `transition`。State/Transition 和 BDE Diagram 还返回 `diagram/diagram_oid`；State/Transition 的 ID 与层级保留，同名对象不会合并。非基础 Implementation 保留 implementation，绑定结果使用 method_binding。完整术语和字段迁移表见 [ASCET_TERMINOLOGY.md](ASCET_TERMINOLOGY.md)。

每个结果的 snippets 按连续行分组，text 中换行后的行号依次递增；matches 只给出位置，不重复正文。例如：

```json
{"snippets":[{"start_line":1,"text":"AEBLockTime = 0.0;","matches":[{"line":1,"columns":[1]}]}]}
```

长行缩短时 snippet 内额外返回 `line_previews:[{line,start_column,truncated_before,truncated_after}]`；省略的上下文行数在结果的 `omitted_lines`。全部行列为 1 起的 Unicode 码点坐标，正则和跨行 matches[].ranges 的结束位置不包含在匹配内；列号始终针对原行，不是缩短后的 text。

响应只保留一个顶层 status。搜索的 ok 表示支持范围读取完整；partial 表示读取不完整，issues 给出 READ_INCOMPLETE 及定位原因。搜索 has_more 表示命中是否还有下一页，不能据此推断代码预览完整。成功页上限 128 KiB，达到字节限制时可能少于 limit，并返回 limited_by:"bytes"。极端超大固定元数据明确报错。Agent read（包括全文、整图及混合批量）同样使用 128 KiB 总预算；大正文自动分页，局部图沿用结构分页。

ref 绑定 Database、ASCET 进程身份、Component OID、代码/Diagram 身份及发现时的内容版本。文本返回 code，图形返回 diagram_text，绑定返回 method_binding。图形 kind 为 diagram，diagram_methods 列出共享此图的 Methods/Processes；in.member 选择整张拥有图，不能据此把全部逻辑归给一个 Method。status 为 ok、changed、partial 或 error；if_unchanged:true 会拒绝源码或已采集图形/接口事实发生变化的结果。

BDE 的 diagram_text 是节点、引脚、连线、Sequence 和层级边界的事实清单，不生成推测的 ESDL。搜索只匹配真实 Element/调用/引脚名称、Literal、操作符、控制块、转换、注释和引用 Component 路径；编号、字段名、连线格式不参与。跨行图形匹配限定单个字段。整图 read 的 include_graph:true 增加 graph.scope:diagram；部分图返回 partial/issues。未知节点的其他可读字段仍能被发现。当前接口不再接受 graphical_method 过滤值，请改用 diagram。

`read.ref` 支持字符串或 1–32 项数组。字符串返回单个读取结果；数组返回 status/requested_count/returned_count/results，results 与输入逐项对应，重复 ref 也保留。数组项不重复 status；正常项只有内容、身份和行数，无 source_read_complete 或 changed_since_search。完整真实返回见 [agent-read-same-component.json](experiments/agent-interface/agent-read-same-component.json)。

同组件的多个 ref 在单次调用中共用一次模型读取和解码；跨组件仍串行读取，每次新调用重新读取，不保留跨请求源码缓存。`if_unchanged`、`include_graph` 和 `debug` 对全批生效。跨组件读取不是原子快照。

`read.lines:{start:20,end:80}` 选择包括端点的原文行范围；end 超过 line_count 时取到末尾，start 超出返回 LINE_RANGE_NOT_FOUND。适用于 code 或 diagram_text，批量对每项使用同一范围；不适用于对象 ref/Method binding，不能与 include_graph 同用。正文保留原始换行。范围或分页返回 code_range（1 起 Unicode 行列，结束位置不包含）、has_more/next_cursor/expires_utc；line_count 始终为完整原文行数。长行也可分页，按次序拼接每页 code/diagram_text，行列不因裁剪改变。仅含 cursor 的续页使用当前回读的不可变快照，不再次访问 ASCET，发现期限不延长。小型完整读取保持精简格式。

整图 include_graph 的 raw graph 仍作为完整结构返回；结构本身超预算时明确 PAGE_TOO_LARGE，改读 diagram_text 或对象 ref。批量为每项分配预算，元数据仍超总预算时要求减少 ref 数量。缓存无法容纳整个分页快照时返回 SNAPSHOT_TOO_LARGE，不给出无法兑现的游标。

当前原生桥接器的 DATABASE_CHANGED 前置校验失败保留连接，工具返回该错误码后可直接重新 find/search。CLI 使用 SessionBridge：连接故障先返回错误，下一次 find/search 自动重建工具连接，不重放失败请求、不重启 ASCET。直接使用库 Bridge 时仍需自行重建连接；ASCET 进程变化后必须重新发现 ref。

非法/过期 ref、混合 Database 或混合 ASCET 进程身份在模型访问前整批拒绝。Method 等目标删除、if_unchanged 下内容变化或未能取得目标代码时，失败项返回 {ref,error:{code,message}}，错误码分别为 CODE_NOT_FOUND、SOURCE_CHANGED 或 READ_INCOMPLETE。已经取得的内容若读取不完整，则保留内容并附带 issues。批量状态优先级：全部失败为 error；有任一失败或不完整为 partial；否则有变化为 changed；其余为 ok。因此 partial 与内容变化可以同时发生，需检查每项的 error/issues。returned_count 统计实际返回内容的项数，包含部分内容与重复 ref；全部失败也保留 results 对应关系。连接故障、Database 切换或 ASCET 重启中止整批。

ref/cursor 只在同一进程会话内有效，默认到搜索创建后五分钟过期，也可能被容量淘汰。默认最多保留 16 个查询的引用、合计 8192 个结果标识。`expires_utc` 是到期上限，不保证不会提前淘汰。REF_EXPIRED/CURSOR_EXPIRED 后重新搜索。每个搜索快照内，同一 Method 等结果（同一 Implementation/Variant）跨分页和批量查询共享 ref；同名但不同身份的结果拥有不同 ref。

程序以异常拒绝非法请求；JSONL 返回 `{status:"error",code,message}`。整批先校验，一项错误就不访问 ASCET。

非法搜索入参统一返回 INVALID_REQUEST，非法正则返回 INVALID_REGEX；错误提示使用 `identifier`、`in.component`、`context.before/after` 等 Agent 参数名称。已有 INVALID_LIMIT、REF_EXPIRED 等专用错误码保留。

## BDE 对象命中与局部读取

精确定位图形对象时，建议显式使用 object 模式：

```json
{"query":"C_AEB_AXCDeadZonePos","mode":"identifier","group_by":"object","in":{"component":"040qm00ah4001ng70sfv1fh1n7clq","kind":"diagram"},"limit":20}
```

每个 Diagram 结果的外层保留 Component 路径、diagram、diagram_methods 和整图 ref，内部 hits 按实际节点身份合并多字段命中。同名节点、同一个 Element 的多个图形实例不合并；多个 query 各自计数。文本代码仍用 snippets。total_hits/returned_hits 的单位因此是“BDE 对象 + 文本出现次数”，不是纯文本出现次数。

hit 的 name、matched_fields/evidence 给出匹配证据。occurrences 仅在归并前次数大于 1 时出现。默认最多 8 项证据，每项 240 码点；长名称标记 name_truncated，证据缩短给出 start_offset/truncated_before/truncated_after；遗漏项由 omitted_evidence 计数。context 只控制文本/occurrence 片段，不扩大 object 的图形证据。

connections 默认最多 6 条直接连线，以 from_pin/to 或 from/to_pin 表示方向；省略量在 omitted_connections。Pin 或 Sequence 专属命中只取相关 Pin 的连接。boundary 单独表达真实层级对应，未显示的数量在 omitted_boundaries。有限页面预算会先缩短连接预览，再减少对象数。宽泛 get/AEB 的对象结果包含更多连接信息，可能比原有行片段更大。

复制 hit 或连接端点返回的实际 ref：

```json
{"operation":"read","ref":"<对象 ref>","depth":1,"direction":"both"}
```

| 局部 read 参数 | 语义 |
|---|---|
| `depth` | 默认 1，可取 0/1/2；0 只读对象及其 Pins，1/2 沿原始连线展开一/两层 |
| `direction` | 默认 both，可选 incoming/outgoing；按 Output Pin → Input Pin 的信号方向，数据库绘制起止点可能相反 |
| `include_graph` | 默认 false；为 true 时另附 graph.scope:local 原始记录 |
| `ref` | 支持最多 32 项数组；每项维持所属搜索的身份与到期时间 |

这些参数不适用于整图或文本 ref，混用会在访问 ASCET 前拒绝。对象读取返回 scope:local、object、nodes、pins、connections、boundaries 和 diagram_ref；使用 diagram_ref 可读取整图。depth 不跨 Hierarchy，也不展开引用 Component 的实现；通过 boundary 对端 ref 明确跨层。局部返回仅沿实际结构展示邻域，不生成推测 ESDL 或数据依赖。无原生 ID 的 Comment 返回父 Diagram/Hierarchy 的 ref。

默认 pins 包含目标对象的全部接口，邻居只包含参与当前连接或 boundary 的 Pins。要看邻居完整接口，将其 ref 作为新目标以 depth:0 读取；include_graph:true 则保留当前邻域所有 Pins。局部 object/nodes 的可选 component_path 来自原始节点，表示该 Element 引用的 Component 路径；外层 component_path 仍是 Diagram 所属 Component。可将内部路径传给 find.component 定位引用 Component 的真实 Method，不需要先读取 raw graph。该路径不能直接传给 in.component，需先 find 获得 ref 或 OID。

局部读取每页最多 100 个节点、200 条连接、300 条总记录、128 KiB；批量时每项分配页面字节预算。has_more:true 时只传该项 next_cursor 继续调用 read。续页固定本次 read 的快照。graph.scope:local 在分页时是记录片段，节点/Pin/连接可能分布于不同页；需合并全部页才构成完整局部集合。普通 connections 已带端点名称与 ref。

对象 ref 始终校验发现时的整张 Diagram 版本，即使 if_unchanged:false 也拒绝变化，返回 SOURCE_CHANGED 并要求重新搜索，避免节点编号重用造成误读。ref 和局部 cursor 沿用原发现期限，read 不延长期限。图形页面、对象/邻居 refs 与原有结果共用会话容量预算。

局部 read 按 Component 分组，仅加载实际请求的 Diagram，再裁剪局部内容。相同 Diagram 的多个对象共用一次图读取；文本/图形可以混合批量。没有跨请求源码缓存。

<!-- cli-package-contract-end -->
## 验证与兼容

当前验收：498 项离线测试通过；71 张 Diagram 的全部字段和完整源码与冻结版本一致，98 次 CLI A/B 查询首屏相同。142 次冷态副本读取、71 次原保存源审计，以及隔离 ASCET 完整重启后连接恢复、旧 ref 拒绝、Private Diagram 查找/读取通过。最新结果见 [本轮报告](experiments/cli-iteration-20261002/REPORT.md)。

BDE 仍使用完整独立 source 副本和原生加载，只在一次读图中复用已验证的 Pin 身份，并压缩内部传输中的重复图身份。Agent 入参和返回 JSON 不变。最新默认 context:10、group_by:object、limit:20 热态实测：限定 Component 约 11 ms，identifier 235 ms，三变量 batch 376 ms，return 481 ms，set 543 ms。全库 500 ms 目标尚未全面达成；直接保存结构 reader 尚未启用。原生字段关系与限制见 [保存结构研究](BDE_STORAGE_RESEARCH.md)。下面保留历史验收记录。

对象模式和局部读取的初次验收见 [对象搜索验证报告](experiments/object-search/REPORT.md)，用法见 [完整真实 JSON](BDE_OBJECT_JSON_EXAMPLES.json)。下方数字均为历史版本结果。

旧的 `node dist/src/cli.js` 和 `SearchSession` 保留原始协议。精简入口共用原来的读取、正则、分页引擎；一个常驻串行 ASCET 连接，没有变更监听、增量同步或持久源码索引。

通用 BDE 版本已通过 313 项离线测试；最新泛化测试覆盖当前库 65 张 Diagram、5,869 个字段、6,161 次查询核对，以及最终 1,141 次实机 JSONL 回归请求。已修复重复/冲突 Hierarchy boundary 的解码校验。详见 [泛化批量测试报告](experiments/diagram-generality/REPORT.md)。初版验收见 [通用图形报告](experiments/diagrams/REPORT.md)，完整返回见 [完整请求/返回](AGENT_JSON_EXAMPLES.json)。以下历史数据仅记录当时版本，不代表当前 BDE 覆盖或时延。

```powershell
npm.cmd --prefix tools/code-search test
npm.cmd --prefix tools/code-search run verify:models
npm.cmd --prefix tools/code-search run verify:objects
npm.cmd --prefix tools/code-search run verify:diagram-generality
npm.cmd --prefix tools/code-search run verify:agent
npm.cmd --prefix tools/code-search run verify:agent-polish
```

实时报告在 `experiments/agent-interface/latest.json`；该目录 `agent-*.json` 为完整真实输出样本。测试采用现有共享 ASCET 锁，比较同一数据库的详细格式和精简格式：逐位置、范围、预览及上下文对照，验证所有分页、通过 ref 读取实现和 ref 组件范围，检查测试前后的模型指纹。

2026-10-01 验收：164 次 JSONL 请求通过，模型指纹稳定。已加载 AEB_1 数据库上，简单搜索首响应中位数为 102.64 ms，紧凑 JSON 从 3617 字节降到 1159 字节；混合批量从 14035 字节降到 6211 字节，中位数 129.51 ms。精简接口主要减少输出与参数负担，本轮未证明搜索引擎本身进一步提速。每场景三次常驻样本，启动另计；不代表冷数据库或任意正则耗时。

2026-10-02 批量读取实现验收：126 项离线测试和 268 次 JSONL 请求通过，源码指纹稳定；另用真实 Reader 计数确认 5 份同组件代码仅发生一次组件读取。10 轮交替对比中，OneBit 的 5 份代码逐条回读中位数 99.50 ms，批量 18.81 ms；跨 3 组件的 3 个方法分别为 41.89 ms 与 44.14 ms。跨组件本轮未证明提速。搜索本身未改算法，本轮简单查询中位数 112.15 ms。原始记录见 [本轮报告](experiments/agent-interface/validation-2026-10-01T23-29-10-333Z.json)，时间为常驻 JSONL 端到端，数据库已加载，不包含 Agent 模型思考或冷数据库加载。

2026-10-02 ASCET 术语与 JSON 调整验收：127 项离线测试、268 次真实 JSONL 请求及另 2 次原生读取计数库调用通过，源码指纹稳定。验证搜索和读取使用一致的 Method/Process/Diagram/State/Transition 身份，文本代码、图形 Method 表示和 Method 绑定分别返回。工具定义的入参结构、默认值和请求示例保持一致。当前完整返回样本已更新，历史报告保留旧字段；本轮报告见 [validation-2026-10-01T23-48-03-300Z.json](experiments/agent-interface/validation-2026-10-01T23-48-03-300Z.json)。

2026-10-02 默认上下文调整验收：Agent 的 context 默认由 0 改为前后各 10 行，显式 0 及分别指定 before/after 仍有效。127 项离线测试、268 次实机 JSONL 请求及另 2 次读取计数库调用通过，模型指纹稳定。AEBLockTime 的示例从此前 context:1 返回 5 行，扩展为当前默认返回第 1–15 行，无上下文省略。简单搜索 3 次中位数 108.26 ms、最大 111.63 ms，响应 1440 字节；仅代表已加载数据库的本次样本。见 [本轮报告](experiments/agent-interface/validation-2026-10-02T00-46-41-124Z.json) 与已更新的 [完整 JSON 示例](AGENT_JSON_EXAMPLES.json)。

2026-10-02 状态精简验收：Agent 响应只保留顶层 status；正常批量项移除重复 status/source_read_complete/changed_since_search，异常时才附带 error/issues。127 项离线测试覆盖正常、内容变化、部分失败、全部失败以及不完整与变化同时发生；268 次实机 JSONL 请求和另 2 次读取计数库调用通过，模型指纹稳定。25 项状态机样本重新实时导出，状态字段从 77 个减少为 1 个；紧凑 JSON 从 15325 字节降至 13522 字节，代码内容逐项一致。实机报告见 [本轮报告](experiments/agent-interface/validation-2026-10-02T01-12-15-801Z.json)。
