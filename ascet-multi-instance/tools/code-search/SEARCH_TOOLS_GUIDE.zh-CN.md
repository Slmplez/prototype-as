# ASCET 代码与 BDE 搜索工具：使用、接入与验证

更新日期：2026-10-11，build E。本文说明 `task` 六工具接口；旧三工具是兼容入口。完整参数 Schema 以 [agent-task-tool-definitions.json](agent-task-tool-definitions.json) 为准。历史评测不覆盖、不重评分；本轮结果在 [TASK_POLISH_E_METRICS.json](TASK_POLISH_E_METRICS.json)。

## 1. 工具解决什么问题

Agent 可以按 ASCET 原生身份定位 Component、Method/Process、Diagram、BDE 对象和 State/Transition；搜索保存的文本代码及图形对象字段；再按返回的引用读取全文或局部证据。工具只读，连接已经运行的 ASCET。

适合的任务包括：寻找变量赋值、同时统计多个符号的使用、定位 Init、区分文本 Method 与图形 Method、查看放置对象接口和连线、读取状态 Action、核对 Transition 两端及 Method 绑定。

覆盖与边界：

| 内容 | 当前能力 | 应如何解释 |
|---|---|---|
| 保存的 ESDL/ASDL、C 文本 | 查找、搜索、全文/行范围读取 | 返回保存正文，不是生成的 C |
| Header、External C/H、Process | 按实际 source kind 搜索和读取 | 不把所有正文猜成 Method |
| BDE Diagram | 名称发现、对象字段搜索、列表/局部读取 | 图形是结构化保存事实，不是可靠反编译的 ESDL |
| 图形 Init/getter/其他 Method | 发现所属 Diagram 及共享成员 | 名字不证明独立文本实现或外部用途 |
| State/Junction/Transition | 拓扑、端点、Action 槽位、Method 绑定 | 绑定与实现正文分别读取 |
| Public/Private Diagram | 可发现和过滤，保留 visibility | 全部类型的真实覆盖不能仅由 Schema 支持推断 |
| Hierarchy 与 Component 引用 | 局部边界、实际字段和端点上下文 | 不自动展开被引用 Class 的实现 |
| Dataset 数值、表插值配置 | 本工具范围之外 | 不为确认符号而执行无意义搜索 |
| 未保存编辑、生成代码、运行时值/调度 | 本工具范围之外 | 保存赋值不能证明每周期执行 |
| AUTOSAR EsAtom | 不作为本轮补全目标 | 不把未覆盖对象转换成猜测正文 |

公式搜索属于另一条工具线；本文不将 Formula Catalog 搜索混入 code/BDE 工具。

## 2. 环境、编译和启动

源码目录是 `E:\Repo\ASCET\tools\code-search`。Git 交付目录为 `E:\Repo\ASCET\prototype-as\ascet-multi-instance\tools\code-search`，分支 `ascet-code-search-tools`。源码目录本身不是 Git 仓库。

要求 Windows、Node.js >=22、已安装的 ASCET 6.4/Cebra .NET API，以及可用的 .NET Framework x86 编译器。当前验证使用 Node 24.4.1、Pi 1.0.2；模型评测使用 `deepseek/deepseek-flash`。ETAS DLL 不随本项目交付。

在选定的工具目录执行：

```powershell
npm.cmd ci
npm.cmd run build:ts
powershell.exe -NoProfile -ExecutionPolicy Bypass -File .\build.ps1 -BridgeOnly -AscetDll 'E:\ETAS\ASCET6.4\cebra\Etas.AscetNET.dll'
npm.cmd test
```

`build.ps1` 的默认 DLL 路径如上，安装在其他位置时显式传 `-AscetDll`。运行时 DLL 配置与编译参数不同；设置运行时环境变量不能替代编译参数。

纯 CLI 不依赖 MCP，也不需要界面：

```powershell
$env:ASCET_CODE_SEARCH_PORT='32631' # 示例：应填写要连接的现存实例端口
node .\dist\src\cli.js --agent --max-page-bytes 32768 --model-bytes 32768
```

CLI 的 stdin/stdout 是 JSON Lines：一个完整 JSON 请求占一行，一个 JSON 返回占一行。保持进程存活；不要把多行格式化 JSON 逐行发送，也不要为每个请求启动新的 CLI。日志和帮助输出走 stderr。

默认端口为 32503。32631 是本次验收实例，不是所有用户的固定端口。工具连接关闭只释放自己的 Bridge，不关闭 ASCET；本次验证保持 PID 40652 和数据库不变。

## 3. 六个工具

| 工具 | 主要输入 | 返回与下一步 |
|---|---|---|
| `ascet_find` | `target`、可选 `name/match/scope/limit` | 名称、实际表示、身份、ref、读工具建议 |
| `ascet_search_code` | `queries`、可选 `scope/context/limit` | 独立查询的命中统计、代码片段及身份 |
| `ascet_search_bde` | `queries`、可选 `scope/limit` | 原始图形字段命中，按对象合并，直接连线预览 |
| `ascet_read_code` | `refs`、可选 `lines/if_unchanged` | 原文、覆盖范围或分页结果 |
| `ascet_read_bde` | `refs`、局部对象可选 `depth/direction` | Diagram 列表或请求对象 Pins/连接/边界 |
| `ascet_inspect_state` | `refs` | State/Transition 拓扑、端点和绑定 |

所有工具支持 `{cursor:"实际返回的句柄"}`。继续分页时只发送 cursor，且调用发出该 cursor 的同一个工具。

CLI 请求外壳：

```json
{"tool":"ascet_find","arguments":{"target":"components","name":"AEB_dFxTar"}}
```

Pi 调用时没有外壳，直接把 `arguments` 对象传给对应工具。

### 3.1 名称查找

`target` 必填，可选值为 `components/members/diagrams/objects/states/transitions`。不传 name 时列出对应目标。match 默认 exact；contains 用于名称片段匹配。这是名称匹配，不是编辑距离纠错、语义向量搜索或自动模糊排序。

```json
{"tool":"ascet_find","arguments":{"target":"members","name":"calc_pre","scope":{"components":[{"name":"AEB_AxCtrlConfigFF_Modify"}]}}}
{"tool":"ascet_find","arguments":{"target":"diagrams","scope":{"components":[{"name":"AEB_dFxTar"}]}}}
{"tool":"ascet_find","arguments":{"target":"objects","name":"C_AEB_AXCDeadZoneNeg","scope":{"components":[{"name":"AEB_dFxTar"}],"diagrams":[{"name":"Main"}]}}}
```

对象名字放在 name，不放在 scope.members。Junction 属于 State Machine 拓扑，使用 `target:states`；`object_kinds:["junction"]` 非法。

### 3.2 搜索文本

queries 必须是数组，1..64 项；每项 text 长度 1..1024，不能含 NUL。每个查询独立执行；数组不表示 AND。重复输入不应由 Agent 自行合并后改变对应关系。

| 参数 | 含义 | 默认/限制 |
|---|---|---|
| `mode:text` | 字面子串 | 默认模式；`*` 是字面星号 |
| `mode:identifier` | 完整符号出现 | 不把符号片段当完整变量 |
| `mode:regex` | ECMAScript 正则 | 无需 `/.../` 包裹，flags 通过参数表达 |
| `case_sensitive` | 是否区分大小写 | 默认不区分；精确范围名称另有严格解析 |
| `multiline` | 允许跨行扫描正文 | 默认 false |
| `dotall` | 正则点号可匹配换行 | 默认 false，不替代 multiline |
| `context.before/after` | 前后逻辑行 | 各 0..100；整个 context 省略时各 10 |
| `limit` | 每页返回数量 | 默认 50，1..200，另受字节预算限制 |

显式传 context 对象时，未指定的一侧是 0。例如 `{before:20}` 表示前 20 行、后 0 行；需要双侧时都写上。多行命中的上下文可合并成一个片段，因此不能按 snippets 数量统计出现次数。

同时搜索两个变量：

```json
{
  "tool":"ascet_search_code",
  "arguments":{
    "queries":[
      {"text":"AEB_AXCAxLimDiff","mode":"identifier"},
      {"text":"loc_AxTarLim","mode":"identifier"}
    ],
    "scope":{"components":[{"name":"AEB_AxCtrlConfigFF_Modify"}],"kinds":["method"],"variants":["ASDL"]},
    "context":{"before":15,"after":15},
    "limit":20
  }
}
```

正则查询和跨行查询的合法参数示例，是否命中取决于当前保存正文：

```json
{"tool":"ascet_search_code","arguments":{"queries":[{"text":"\\bAxTar[A-Za-z0-9_]*\\b","mode":"regex"}],"scope":{"components":[{"name":"AEB_AxCtrlConfigFF_Modify"}]}}}
{"tool":"ascet_search_code","arguments":{"queries":[{"text":"AxTarRaw.*?;\\s*\\n.*?AxTar","mode":"regex","multiline":true,"dotall":true}],"scope":{"components":[{"name":"AEB_AxCtrlConfigFF_Modify"}]},"context":{"before":10,"after":10}}}
```

不要把“名称包含”和“正文子串”称为拼写容错；当前没有语义检索。正则在独立可复用 Worker 中匹配，1000 ms 匹配期限用于阻止病态表达式阻塞；它不是完整查询耗时保证。错误 `REGEX_TIMEOUT` 后简化表达式，不能据此判定零命中。

可搜索的文本 source kinds：`method/process/header/external_c/external_h/state_entry/state_static/state_exit/transition_trigger/transition_action/transition_condition`。普通变量全代码搜索不默认添加 `kinds:["method"]`，否则会漏掉状态 Action；只有用户明确要求 Method 时才加。

### 3.3 搜索 BDE

```json
{"tool":"ascet_search_bde","arguments":{"queries":[{"text":"C_AEB_AXCDeadZonePos","mode":"identifier"},{"text":"C_AEB_AXCDeadZoneNeg","mode":"identifier"}],"scope":{"components":[{"name":"AEB_dFxTar"}],"diagrams":[{"name":"Main"}]},"limit":20}}
```

匹配的是保存图形原始字段，并将同一放置对象的多个字段命中合并。结果可包含命中字段和直接连接预览；预览不足以证明完整邻居接口或全图覆盖。要核实某个对象的接口/连线，读取该对象 ref。

同名对象可能出现在不同 Diagram、Hierarchy 或放置位置；保留每个对象身份，不按显示名字去重。`scope.object_kinds` 仅用于 find objects，不能放在 search_bde 输入中。

BDE 字段命中用于定位原生对象，不代表自动理解执行逻辑。字段展示中的文本/位置与 Method 正文不同；不能把字符串拼接顺序当作图形数据流顺序。

## 4. 范围与原生身份

所有筛选放在 scope，不能放到请求根部。字段内数组为 OR，不同字段为 AND。

```json
{
  "components":[{"name":"AEB_AxCtrlConfigFF_Modify"}],
  "members":["calc_pre"],
  "kinds":["method"],
  "variants":["ASDL"],
  "implementations":[""]
}
```

规则如下：

- Component 是拥有者 Class/Module/State Machine；Main 是 Diagram，calc_pre 是 Method，ES1130 是 Variant，不能混入 components。
- components/diagrams 每个选择器只能包含 name/path/ref 其中一个；已知短名字用 name，实际返回完整路径用 path，不猜 Public/Private 文件夹。
- components/diagrams 最多各 8 个选择器。多数其他筛选数组最多 32 项，visibility 最多 2 项。
- members 是实际成员名字或完整 State/Transition 路径，例如 `Main/AEB_State_Off`；不是 Component 名字。
- variants 是原生字符串，ESDL 的 Variant 字符串是 ASDL；不能自动改大小写、去掉空白。
- implementations 是真实 OID；基础 Implementation 为 `""`，不能用 null、base 或显示名称。
- visibility 只接受 public/private；Diagram visibility 与文件路径中出现 Private 不是同一概念。
- 错误或歧义范围报错，不自动退回全库。find 的范围不会隐式传递给后续 search。

各入口允许的过滤不同。find components 只接受 components 范围；find objects 接受 components/diagrams/visibility/object_kinds；find states/transitions 接受 components/diagrams/visibility。完整 Schema 会拒绝无效组合。

### 单份正文范围 code_ref

文本发现结果给出 `search_scope:{code_ref:实际ref}`。复制它可锁定 Component、成员 ID、kind、Variant 和 Implementation：

```json
{"tool":"ascet_search_code","arguments":{"queries":[{"text":"AxTarRaw","mode":"identifier"}],"scope":{"code_ref":"<本次返回的文本 ref>"}}}
```

这是保存正文身份，不是冻结文件版本；重新查询时仍读取当前保存内容。code_ref 必须单独占据 scope，不能附加其他筛选。不接受 Diagram、放置对象或 binding ref。

只在用户要求单份正文内搜索时使用；不能将“该 Component 中所有使用统计”替换成一个 Method 的 code_ref。响应的 applied_scope 显示实际解析范围；成员内部 ID 来自工具，不由 Agent 编造。

## 5. 文本全文、行范围与批量读取

先 find/search 取得 ref，再读：

```json
{"tool":"ascet_read_code","arguments":{"refs":["<实际文本ref>"]}}
{"tool":"ascet_read_code","arguments":{"refs":["<实际文本ref>"],"lines":{"start":12,"end":40}}}
{"tool":"ascet_read_code","arguments":{"refs":["<ref1>","<ref2>"],"if_unchanged":true}}
```

refs 必须是数组，1..32 项；保留输入顺序和重复项。lines 使用从 1 开始、包含结束行的范围，应用于这一批的所有文本 ref。`if_unchanged` 是保存内容变化检查，不是证据永久有效保证；发现变化时按实际错误提示重新查找和读取。

`line_coverage.selected` 是请求范围裁剪到实际正文后的范围；page 是本页涉及的行，complete_lines 是本页完整提供的行，没有则为 null。code_range 使用精确 Unicode 行列范围，结束位置不包含在正文里。一个长行被分页切开时不能把该行当作本页完整行。空正文逻辑行数为 1。

真实样本 `DBR_Force2Pressure.Init` 的 ASDL 保存正文是：

```esdl
pressure = 0;
```

此样本通过原生正文比对，不由图形节点重建。真实批量返回在 [read-code.json](docs/examples/read-code.json)，特意重复同一个 ref 两次，验证保序和重复项保留。录制样本的 ref 已过期。

## 6. BDE 局部读取与图形语义

```json
{"tool":"ascet_read_bde","arguments":{"refs":["<实际放置对象ref>"],"depth":0,"direction":"both"}}
{"tool":"ascet_read_bde","arguments":{"refs":["<实际放置对象ref>"],"depth":1,"direction":"outgoing"}}
```

对象局部默认 depth 1、direction both。depth 0 读取自身接口，不读取连接；1/2 读取一跳/两跳连接。incoming/outgoing 相对于请求对象，不把目标改成线的终点。整个 Diagram ref 不接受 depth/direction；需要局部查询先 find objects。

模型可见 JSON 的关键分组：

| 字段 | 含义 | Agent 必须保持的边界 |
|---|---|---|
| `requested_object` | 入参指向的请求对象 | 不以邻居或目的接口替代它 |
| `requested_object.pins` | 本页自身 Pins | 数值 ID 在 pin.id，名字在 pin.name |
| `pin_ids_on_page` | 本页自身 Pin ID | facts.pin_ids 从这里收集 |
| `pin_count` | 自身原生 Pin 总数 | 不含邻居，不按连接数估计 |
| `pin_ids_complete` | 本页自身 Pins 是否完整 | false 时不能直接宣称完整接口 |
| `connections` | 保存连线和两端 pin/ref/name | 端点是连接上下文，不是完整接口 |
| `neighbors[].endpoint_pins` | 邻居在该局部视图涉及的 Pins | 不拷入目标 facts.pin_ids |
| `boundaries` | Hierarchy 边界信息 | 不跨边界猜测被引用组件实现 |
| `diagram_context` | 所属 Diagram 与 Component 身份 | Diagram ref 和对象 ref 分开 |
| `read_scope` | 本次 refs/depth/direction | 不把不同读取范围混为同一证据 |
| `citable_refs` | 本页实际返回的引用集合 | 原样复制，不拼接 d/n 后缀 |

depth 0 返回 connections/neighbors 空数组，只说明此次没有读取它们，不说明数据库没有连线。需要邻居的完整接口时，另读邻居 ref 的 depth 0。

真实对象 `AEB_dFxTar.Main.C_AEB_AXCDeadZoneNeg` 的 depth 0/both 返回自身 Pin 56，名字 `get/get`，input false、output true，Pin 总数 1。其所属 Diagram 为 Main，BD，基础 Implementation，visibility public；共享图形成员包括 AEBdFxTar 与 calc。

完整模型和结构返回分别保存于 [bde-interface.json](docs/examples/bde-interface.json)；实际 outgoing 连接在 [bde-outgoing.json](docs/examples/bde-outgoing.json)。这些是录制会话的事实，不是所有数据库的固定值。

该真实 outgoing 页的一条连接如下，名称与 ID 明确分开；本次请求对象仍是 C_AEB_AXCDeadZoneNeg：

```json
{
  "from":{"ref":"s3urQXdX_3:n1","name":"C_AEB_AXCDeadZoneNeg","pin":"get/get","pin_id":56},
  "to":{"ref":"s3urQXdX_3:n3","name":"AxCtrlDevDeadZone","pin":"calc/AxCtrlDevDeadZoneNeg","pin_id":32}
}
```

录制 ref 不可直接复用。若调用方约定 facts.from_pin/to_pin 为名称字符串，应填 get/get 与 calc/AxCtrlDevDeadZoneNeg；数值 56/32 放 *_pin_id，不能把整个端点对象填入名称字段。

图形 Init 和 getter 也遵循该规则。find members 返回 diagram 表示时读 Diagram/对象，不能以名字 Init 推断它一定是状态机 Entry Action。放置 getter 的输出 Pin 是保存图形接口证据；外部接线须由保存连线证明。

## 7. State、Transition 与 Action

```json
{"tool":"ascet_find","arguments":{"target":"states","name":"AEB_State_Off","scope":{"components":[{"name":"AEB_State_Machine"}],"diagrams":[{"name":"Main"}]}}}
{"tool":"ascet_find","arguments":{"target":"transitions","scope":{"components":[{"name":"AEB_State_Machine"}],"diagrams":[{"name":"Main"}]}}}
{"tool":"ascet_inspect_state","arguments":{"refs":["<实际State或Transition ref>"]}}
```

读取路径按返回 read_tool/next_call 决定：

1. State/Junction/Transition 拓扑 ref 与 `*_binding` ref：ascet_inspect_state。
2. `state_entry/state_static/state_exit` 及 `transition_trigger/transition_action/transition_condition` 文本 ref：ascet_read_code。
3. Method 绑定证明的是引用关系，不是其完整实现。用户要求实现时，按真实拥有者、Method、Variant/Implementation 继续定位读取。
4. 用户要求核实 Transition 时读取 Transition、start_state/end_state 对象和相关绑定；仅内联显示 Method 名字不能代替所要求的读取证据。

State Machine Diagram ref 是范围选择对象，返回 `scope_only:true` 和查询 states/transitions 的 next_calls；不能直接当 BDE 正文读。

真实 State 结构与 Action 正文在 [inspect-state.json](docs/examples/inspect-state.json) 和 [read-action.json](docs/examples/read-action.json)。保存语句能证明存在赋值，不能证明调度周期、执行顺序或运行时当前状态。

真实 `AEB_State_Machine.Main/AEB_State_Off` 的 `state_static` 正文包括以下内容，直接读取保存原文；完整 JSON 保留 CRLF 和最后换行：

```esdl
/* */
/* Initialization of AEB-state-signals */
AEBState=11;
AEBActive = false;
AEBBAActive = false;
AEBIBActive = false;

tAEB = 0.0;

/* Decrement timer for locking time */
if (AEBLockTime > 0.0)
{
   AEBLockTime = AEBLockTime - C_AEBdT;
}
```

这证明倒计时语句位于该状态的 Static Action；不能因注释写 Initialization 就把整个正文分类成 Init/Entry，也不能证明每 5 ms 执行一次。

## 8. 返回 JSON、分页与输出预算

正常返回以 status 表达本次操作状态；error 返回 code/message，并可包含 field/next_tool/next_calls。工具状态与最终任务 outcome 是不同层次，不要将工具 ok 当作任务 located。

模型文本与 structuredContent 也不同：模型视图将请求对象/邻居分组、减少重复字段；程序结构返回保留原始 object/pins 和读取审计信息。CLI stdout 是程序结构 JSON；Pi content 文本是模型视图。二者都保留保存原文，不把图转换成猜测代码。

| 字段 | 使用方法 |
|---|---|
| `task_tool` | 确认实际入口 |
| `applied_scope/scope_identities` | 核对执行范围与名称解析身份 |
| `identity` | Component path、kind、member、Variant、Implementation |
| `read_tool/next_call` | 下一步正确读取入口 |
| `returned_hits/total_hits` | 本页与完整匹配的统计；多 query 按各自结果读取 |
| `returned_count/total_count` | 目录查找数量；不能当正文出现次数 |
| `has_more/next_cursor` | 是否仍有页面，以及精确续页控制 |
| `continuation_required/continuation_call` | 模型视图的续页提示 |
| `deferred:true` | 该批量项尚未提供事实，沿该项 cursor 继续 |
| `read_evidence` | 程序内部审计；id 不可作为证据引用 |

结果可能因条数或字节预算分页，不会通过字符串末尾静默裁剪来冒充完整正文。多 query 一页不必包含每个 query 的全部片段。统计复制工具返回值，不重数 snippets。

完整分页流程：

```json
{"tool":"ascet_search_code","arguments":{"queries":[{"text":"AxTarLim","mode":"identifier"}],"limit":1}}
{"tool":"ascet_search_code","arguments":{"cursor":"<上页next_cursor>"}}
```

一直沿同工具、原 cursor 到 has_more false。批量 read 各项可能独立分页，分别续完需要的项；父批次已返回不表示所有项内容已完整。相同 cursor 重放保持分页内容和后续句柄，读取续页不再次读取原生模型。

task 入口兼容 `{target,...,cursor}` 等模型残留字段：存在字符串 cursor 时以 cursor 为准，其他字段忽略，从而进入原游标归属检查。推荐只发 cursor；混入过滤器不能更改冻结分页范围。跨工具错误返回 `CURSOR_TOOL_MISMATCH`，按建议回原工具，不创建新查询假装原查询已完成。真实错误样本：[cursor-mismatch.json](docs/examples/cursor-mismatch.json)。

默认资源边界：

| 资源 | AgentSession 默认 | Pi 默认 |
|---|---:|---:|
| 快照/游标 TTL | 5 分钟 | 沿用会话 TTL |
| 缓存组数 | 16 | 沿用 |
| 最大引用数量 | 8192 | 沿用 |
| 缓存总字节 | 64 MiB | 沿用 |
| 单快照 | 32 MiB | 沿用 |
| 结构化单页 | 128 KiB | 显式设 32 KiB |
| 模型文本单页 | 受会话预算配置约束 | 显式设 32 KiB |
| 原生调用 timeout | CLI 默认 30 秒 | 默认 30 秒 |
| 完整业务 operation timeout | CLI 默认 120 秒 | 默认 120 秒 |

必需元数据或单条记录本身超预算时返回预算错误和缩小请求建议，不无限放大输出。混合批次建议保留顺序、重复项、原行范围和 depth/direction；只重试失败项，建议未由工具自动执行。

## 9. ref、证据与最终答案

ref 例如 `s3urQXdX_3:n1`：它是当前 CLI 会话中工具分配的身份句柄，不是路径、不编码可供 Agent 修改的固定编号。s 前缀会随会话/结果组改变，d/n 后缀不应被解码后拼接使用。

引用会受 TTL、缓存淘汰、CLI 关闭、数据库/实例变化影响。发现后传给同一持久会话读取；跨进程、旧评测或文档中的 ref 不能直接复用。过期后重新 find/search，不把旧引用替换成猜测的新引用。

Pi 的最终引用校验以当前 evidence ledger 为依据。合法 ref 不证明对应内容已经读全；located 还取决于任务需要的证据与完整性。citable_refs 是当前返回对象列表，不是永久证明。

最终答案契约：

```json
{
  "outcome":"located",
  "answer":"已读取所请求对象的保存接口。",
  "evidence_refs":["<实际已读取ref>"],
  "missing_evidence":[],
  "facts":{"requested_object_ref":"<同一个ref>","pin_ids":[56]},
  "intent":{
    "action":"read","decision":"execute","terms":["C_AEB_AXCDeadZoneNeg"],
    "scope":{"components":["AEB_dFxTar"],"members":[]},"clarification_fields":[]
  }
}
```

这是格式示例，占位符不是可调用/可引用 ref。真实录制值只能说明对应样本。outcome 为 located/partial/not_found/unsupported；facts 只包含调用方要求字段，推断和局限放 answer/missing_evidence。

完整 BDE Pin 事实要求唯一已读取请求对象，pin_ids 只能来自它的 Pins，不能混入邻居。读取多个对象时提供 requested_object_ref 区分主体。若用户只要求部分证据，不需要为了 located 无目的地读取全图。

守卫能拒绝已识别的非法/过期 ref、嵌套 ref、cursor 引用、错误 Pin 归属和某些伪造完整性声明；它不核验任意自然语言段落的全部含义，不能承诺消除模型误解。

## 10. Pi 加载、Intent 与类型约定

### 加载

```powershell
$env:ASCET_PI_TOOL_PROFILE='task'
$env:ASCET_CODE_SEARCH_PORT='32631'
pi -e .\dist\src\pi-extension.js
```

默认配置仍是 baseline，task 是显式选择。扩展加载只注册六工具；第一次有效执行才创建 CLI/Bridge 并连接 ASCET。不支持或澄清请求应不触发连接。

### 每轮 Intent

执行工具前，Agent 在本轮用户请求的第一次 ASCET 调用之前发送独立文本块：

```json
{"intent":{"action":"search","decision":"execute","terms":["AxTarRaw"],"scope":{"components":["AEB_AxCtrlConfigFF_Modify"],"members":["calc_pre"]},"clarification_fields":[]}}
```

action 表达目标，decision 表达是否执行；缺拥有者的读取可声明 action read、decision clarify。声明里的 components/members 是字符串数组，与工具 scope 的选择器结构不同。最终答案复制声明；修复属于同一轮，不应重新改意图。

decision clarify/unsupported 只输出一个带 intent 的最终 JSON，不先输出独立声明，也不调用工具。clarify 对应 outcome partial 并给出明确问题；unsupported 对应 outcome unsupported。

build E 范围守卫只检查 action search 的初始 search_code/search_bde 调用，核对声明 components/members 与调用 scope。遗漏/多出/错误 owner、错误 member、无当前身份证据的 ref 会被拦截，返回 `INTENT_SCOPE_MISMATCH` 及建议，原查询不执行。游标归属由 CLI 负责；discovery、read、connections 不被这一范围守卫强锁。

它没有自动从用户自然语言提取正确 intent，也没有硬锁所有 kind/Variant/Diagram 条件。合法拥有者内不恰当收窄范围、错误意图声明等仍需要评测发现。建议调用不是自动执行，也不是对所有任务语义的证明。

### 调用方提供 facts Schema

最终字段类型应在调用前明确，不根据名字猜测：from_pin/to_pin 可以约定为名称字符串；ID 另用 from_pin_id/to_pin_id；shared_diagram/error_observed 可以约定为 boolean。

```powershell
$env:ASCET_PI_FACTS_SCHEMA='{"type":"object","properties":{"from_pin":{"type":"string"},"to_pin":{"type":"string"}},"required":["from_pin","to_pin"],"additionalProperties":false}'
```

也可通过 `createAscetExtension({toolProfile:'task',factsSchema:...})` 设置。Schema 每次扩展会话固定，最大 16 KiB；Ajv 不做类型强转、不填默认值、不移除字段。无 Schema 时保持既有行为，不验证任意业务字段类型。

引用/范围/BDE/类型校验失败时，Pi 最多允许一次最终答案修复；再次失败记录 rejected，不循环重试。accepted 只表示通过这些守卫，不能当作任务语义成功。

纯 CLI 不处理模型 Intent 和最终答案，不会自动应用 Pi hooks。直接 TS 接入需要由调用方维护这些约束或复用扩展；不要误以为 CLI 成功即可证明最终 JSON 合法。

## 11. TypeScript 接入与并发

共享一个 AgentToolClient，把已发现 ref 传给下一次调用：

```typescript
import { AgentToolClient } from './dist/src/agent-tools.js';

const client = new AgentToolClient({
  env: { ...process.env, ASCET_CODE_SEARCH_PORT: '32631' }
});
try {
  const found = await client.call('ascet_find', {
    target: 'members', name: 'Init',
    scope: { components: [{ name: 'DBR_Force2Pressure' }], variants: ['ASDL'] }
  }) as any;
  if (found.status === 'error') throw new Error(found.message);
  const ref = found.results?.find((x: any) => x.read_tool === 'ascet_read_code')?.ref;
  if (!ref) throw new Error('当前范围未发现可读文本；检查表示和分页');
  const body = await client.call('ascet_read_code', { refs: [ref] });
  console.log(JSON.stringify(body));
} finally {
  await client.close(); // 只关闭本客户端，不关闭 ASCET
}
```

该示例定位单个 Init 候选；需要全部候选时先消费 find 全部分页，再分工具批读。该示例不包含 Pi 的意图/最终修复 hooks。

Pi 工具注册 `executionMode:parallel`；独立工具调用可提交并发。共享 CLI 将完整业务请求串行排队，名称解析与读取处于同一业务入口，SessionBridge 也串行原生请求。因此 parallel 表示 Agent 可并发提交，不代表 ASCET 原生引擎并行执行。

跨 CLI 进程还需连接协调。C# Bridge 通过 LocalAppData/AscetBdeTools 下按端口区分的 lock 文件字节锁租用连接，默认等待 2000 ms。锁保护连接占用，不是跨进程共享 ref 或统一调度器。`ASCET_CODE_SEARCH_EXTERNAL_LOCK=1` 会跳过内置锁，仅在调用方已有可靠外部协调时使用；日常不要设置。

运行中的 ASCET 连接能力有限。多个 Agent 优先共享持久客户端/调度入口；不可把“每个 Agent 启一个 Bridge”当作安全并发设计。不可变返回快照的分析可在连接外并行进行。

## 12. 提取与性能机制

执行路径：

```text
Agent/Pi 六工具
  → task 参数校验与规范化
  → 持久 JSONL CLI，业务串行
  → 原生范围身份解析、保守预筛
  → C# Bridge / Cebra / 固定只读 Smalltalk 查询
  → 保存文本、BDE/State 原生事实快照
  → TypeScript 匹配/对象合并/分页
  → 程序 JSON、模型投影、Evidence ledger
  → 最终引用/Pin/Intent/可选类型校验
```

反编译和 exported AXL 用于确认原生对象结构、槽位与加载流程；生产工具通过受控读取获取保存事实。图形不是靠字符串拼出 ESDL；对不支持结构保留边界，不将某个节点特例推广为万能反编译器。

速度优化来自范围前置、保守原生预筛、单连接批读、减少跨边界 RPC、同请求正文准备复用、延迟片段构建及不可变快照分页。正则必要字串无法安全证明时不做该预筛，最终由 TS 匹配保证结果。

当前没有新增 Rust SIMD 或 Aho–Corasick 路径，也没有采用变化监听增量索引。缓存和分页快照有界，不意味着数据库编辑自动通知工具；有保存变化时重新查询，读取一致性要求按实际返回检查。

冷态成本包括 CLI/Bridge 建立连接、ASCET 容器首次加载、读取范围规模和快照生成；热态/续页避免部分成本。范围、正文大小、上下文和输出页数都影响耗时。历史特定数据库的亚秒结果不能推广为所有查询的硬保证；本次重点是调用精准率和任务成功率。

## 13. 错误恢复

| 错误/现象 | 正确处理 |
|---|---|
| `INVALID_REQUEST` | 按 field/next_calls 修正，保留原查询和范围 |
| `AMBIGUOUS_SCOPE` | 展示实际候选、补 owner/Diagram/Variant，不猜 |
| `WRONG_REF_TYPE` | 按 next_tool/read_tool 分组，使用实际 ref |
| `CURSOR_TOOL_MISMATCH` | 将原 cursor 原样送回发出它的工具 |
| ref/cursor 过期或被淘汰 | 在同一现存数据库重新 find/search |
| 数据库身份不匹配 | 不继续旧引用；下一 find/search 重建工具连接 |
| `ASCET_RESTARTED` | 旧实例引用失效，重新发现；工具不自动重启 ASCET |
| `REGEX_TIMEOUT` | 简化模式或缩小范围，不能解释为零命中 |
| 输出/快照预算错误 | 缩小 scope/context/limit，或按建议拆读取 |
| `OPERATION_TIMEOUT` | 该 CLI 关闭；客户端重建连接并重新发现 |
| `INTENT_REQUIRED/INTENT_SCOPE_MISMATCH` | 修正声明流程或调用范围，不改原任务目标 |
| 最终 `INVALID_FINAL_ANSWER` | 修正引用、主体归属和类型；最多一次修复 |

无法完整读取时用 partial，并列出缺失证据。not_found 要求在用户范围完成相关搜索；局部空连接、未读页面或被取消查询不证明不存在。

取消请求不要依赖重启 ASCET。队列尚未执行的请求可以取消；进行中的原生读取有释放/排空边界，不能声称瞬间中断引擎。PiClient 在资源不可用时清理旧客户端并重建，旧 evidence 不能继续引用。

## 14. 验证方法与结果

验证分三层：离线协议/边界回归；真实 SDK→CLI→ASCET 与原生事实比对；实际 Pi 模型任务。它们不能互相替代。

本轮离线 836/836、真实 SDK 17/17。真实检查包含 9 种 depth/direction、请求 Pin 对照、引用类型、Action 正文、游标恢复、code_ref 身份和最终非法引用拒绝；原生保存代码/图形指纹及 ASCET PID/启动时间保护通过。

build E 的 Pi 评测采用 V6 计划：保持原 80 案例与事实评分，并为 5 个案例显式增加调用方可见的类型 Schema；定向组 24 案例、完整首答组 80 案例。V6 输出合同与 V5 不完全相同，不能将分数差全部归因于工具改进。

本轮定向生产守卫组 24/24；完整首答组在已尝试 30 项后因 DeepSeek 402 Insufficient Balance 中止，其中 28 项通过、1 项任务失败、1 项模型服务失败，50 项未尝试。全部分母、辅助意图偏差和失败说明见 [TASK_POLISH_E.zh-CN.md](TASK_POLISH_E.zh-CN.md)。当前不能称为完成 80 项验收。历史 build D 首答 72/80，范围标签符合 45/50，定向 19/20；历史记录见 [TASK_POLISH.zh-CN.md](TASK_POLISH.zh-CN.md)，不回写旧成绩。

复现命令，每次使用新目录，先确认 manifest 指向允许读取的现存实例：

```powershell
npm.cmd test
node scripts/verify-task-acceptance.mjs experiments/new-live
node scripts/run-task-guarded-eval.mjs experiments/new-guarded guarded PI_AGENT_PRECISION_V6.json
node scripts/run-task-guarded-eval.mjs experiments/new-first first-attempt PI_AGENT_PRECISION_V6.json
```

两组 live Pi 验收依次执行，不同时占用同一实例连接。first-attempt 每案例只采样一次，关闭 Intent/最终修复守卫；guarded 单独验证生产守卫流程。所有原始模型消息、失败、修复和评分保留，不挑成功重试替代首答。

参数接受率衡量 Schema/执行是否被接受；范围符合衡量已标注调用限制；任务通过衡量 rubric 要求的事实和步骤。辅助 Intent 精确符合另外统计。生产 accepted 不等于语义成功；同数据库开发集不是独立泛化基准。

## 15. 实际返回样本与源码导航

样本由本轮真实验收 report 提取，包含原请求、模型可见 JSON（记录存在时）及程序结构返回。仅作阅读/离线研究；所有录制引用需重新发现才能调用。

| 文件 | 用途 |
|---|---|
| [find-bde.json](docs/examples/find-bde.json) | 按 Component/Diagram 定位实际对象 |
| [bde-interface.json](docs/examples/bde-interface.json) | 自身 Pins 与 depth 0 边界 |
| [bde-outgoing.json](docs/examples/bde-outgoing.json) | 连接端点与邻居分组 |
| [read-code.json](docs/examples/read-code.json) | Init 保存原文、重复批读 |
| [inspect-state.json](docs/examples/inspect-state.json) | 状态拓扑与 Action 槽位 |
| [read-action.json](docs/examples/read-action.json) | 直接读取状态 Action |
| [search-code-ref.json](docs/examples/search-code-ref.json) | 精确正文身份搜索 |
| [cursor-mismatch.json](docs/examples/cursor-mismatch.json) | 跨工具游标错误与归属提示 |

源码分工：

| 文件/模块 | 职责 |
|---|---|
| `src/task-tools.ts` | 六工具 Schema、参数规范化、scope 解析、模型投影 |
| `src/tool-contracts.ts` | profile 与工具公开契约 |
| `src/cli.ts` | 持久 JSONL 入口、业务串行、timeout |
| `src/agent-tools.ts` | TS AgentToolClient、引用账本 |
| `src/agent-session.ts` | ref/快照缓存、分页和预算 |
| `src/search-session.ts` | 原生查询和匹配会话 |
| `src/prefilter.ts`、`src/matcher.ts`、`src/match-queries.ts` | 保守预筛、位置/上下文、正则 Worker |
| `src/diagram-objects.ts`、`src/object-pages.ts` | BDE 对象及局部分页 |
| `src/state-topology.ts`、`src/read-state-machine.ts` | State/Transition 身份和读取 |
| `src/pi-extension.ts`、`src/pi-client.ts` | Pi 注册、lazy 资源、最终守卫 |
| `src/task-intent.ts`、`src/task-scope-guard.ts` | 每轮声明与初始搜索范围约束 |
| `src/task-facts-schema.ts` | 调用方最终 facts 类型契约 |
| `src/agent-evidence.ts`、`src/task-bde-evidence.ts` | 当前引用、读取范围、请求对象 Pin 账本 |
| `src/session-bridge.ts`、`CodeSearchBridge.cs`、`*.st` | 连接恢复、连接锁、原生只读提取 |
| `test/` | 离线边界回归 |
| `scripts/verify-task-acceptance.mjs` | 真实 SDK 与原生事实比对 |
| `scripts/verify-pi-agent-eval.ts`、`scripts/run-task-guarded-eval.mjs` | 模型采样、冻结构建、评分与收尾 |

后续改进优先来自真实失败：正确识别用户意图、保持全部筛选限制、只读取所需证据、正确解释图形主体/端点、消费必要分页。不要通过扩展无关数据范围或减少失败记录来提高看起来的成功率。
