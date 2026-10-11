# ASCET 代码搜索历史详细协议

> 本文保留兼容入口的历史说明，包括旧版无 limit 的完整返回协议；不作为当前 Agent 接入文档。当前 CLI 使用 [CLI.md](CLI.md) 和 [AGENT_SIMPLE.md](AGENT_SIMPLE.md)，search/read 均有 128 KiB 输出预算。正式接口及恢复行为以这些文档和当前代码为准。

Agent 接入推荐使用[精简接口](AGENT_SIMPLE.md)：`node dist/src/cli.js --agent`。名称定位用 ascet_code_find，正文搜索用 ascet_code_search，完整读取用 ascet_code_read；三个工具共用同一会话。搜索通过 snippets 合并正文和上下文，图形 Method 默认只返回支持的逻辑语句。当前 Agent JSON 使用 Method、Process、Diagram、State、Transition 字段，见 [术语与迁移表](ASCET_TERMINOLOGY.md)。本文以下保留详细协议说明。

只读搜索正在运行的 ASCET 6.4 当前数据库。生产入口是 TypeScript 编译后的 `dist/src/cli.js`，通过 Node.js JSONL 标准输入/输出调用，也可直接导入 `dist/src/index.js`。默认搜索全数据库，不要求指定 Project。

这个目录提供可调用的程序和工具定义；尚未注册到 MCP、Doge 或其他 agent runtime，也没有修改原生搜索窗口。

当前选定方案使用 `src/*.ts`、`CodeSearchBridge.cs`，工具定义包括 `agent-tool-definition.json`（`ascet_code_search`）、`agent-read-tool-definition.json`（`ascet_code_read`）、`agent-state-read-tool-definition.json`（状态机读取）和 `agent-page-tool-definition.json`（`ascet_code_search_page`）。各工具共用同一个常驻 JSONL 进程。每次新搜索/读取直接访问 ASCET 当前模型；分页续页只使用同一次查询的短期结果。构建、生产运行、离线测试与在线验证均无需 Python。按用户要求，不采用变更监听、增量同步、后台定期刷新或持久化源码索引。

新增分页接口和实测说明见仓库根目录 `docs/code-search-pagination-20261001.md`。旧版 `ascet_code_search` 保持完整返回、不接受 `limit`；新增入口使用 `operation: search_page`，默认返回最多 50 个命中位置，之后只传 `cursor`。直接调用库时须复用一个 `SearchSession`，不能每页重新创建会话。

`snapshot_index.py`、对应测试及 `experiments/snapshot-agent-tool-definition.json` 仅保留为历史性能实验，不接入 agent 搜索入口。实验结果见 `docs/code-search-index-tests-20261001.md`，其中毫秒级快照成绩不代表当前实时入口性能。

## 使用

需要 Windows、Node.js 22+、.NET Framework 4、ASCET 6.4 和当前已打开数据库。固定连接本机端口 32503，要求只有一个 ASCET 进程。不要同时启动其他 ToolAPI 读写实验。

```powershell
cd E:\Repo\ASCET
npm.cmd --prefix tools/code-search ci
npm.cmd --prefix tools/code-search run build
'{"query":"P_AEBdT","mode":"identifier_occurrence","case_sensitive":true}' | node tools/code-search/dist/src/cli.js
```

安装依赖后也可运行 `tools/code-search/build.ps1` 同时构建 TS 与 C#；`-BridgeOnly` 仅构建 C#。默认 ASCET DLL 为 `E:\ETAS\ASCET6.4\cebra\Etas.AscetNET.dll`。其他安装位置编译时用 `build.ps1 -AscetDll <绝对路径>`，运行时同时设置 `ASCET_API_DLL`。`package-lock.json` 固定开发依赖，生产 Node 入口没有 npm 运行依赖。

Agent 应直接用 `node.exe` 启动一个常驻子进程，避免 npm 启动日志混入 JSONL。逐行写请求、逐行读完整 JSON，等前一条完成后再发下一条。进程首次请求包含 Node/.NET 启动、ASCET 连接和固定查询块编译；后续请求复用同一串行连接。`--timeout 30` 控制每条已发送请求等待桥接响应的秒数，不含排队等待；超时不会返回虚假的完整结果。传输损坏或超时后连接作废，需要重启搜索进程。

### TypeScript 直接调用

下面示例从仓库根目录运行。编译后的入口同时提供 `.d.ts` 类型声明：

```typescript
import { Bridge, search, type SearchRequest } from './tools/code-search/dist/src/index.js';

const bridge = new Bridge(30);
try {
  const request: SearchRequest = {
    query: 'P_AEBdT', mode: 'identifier_occurrence', result_format: 'shared',
  };
  const result = await search(request, bridge);
  // 消费 result；partial 时检查 errors，不当作完整结果。
} finally {
  await bridge.close();
}
```

实际 Agent 在整个会话中复用同一个 `Bridge`，退出时才关闭。直接调用 `search()` 在输入/连接/协议错误时抛出异常；JSONL CLI 将其转换成 `status: error`。同一 Bridge 上的并发调用在进程内自动串行排队；不同 Bridge 或不同 Agent 进程之间没有全局锁，应共用同一个拥有连接的服务。

```json
{"id":"q1","query":"return","mode":"text"}
{"id":"q2","query":"P_AEBdT","mode":"identifier_occurrence","case_sensitive":true}
{"id":"q3","query":"C_AEBdT","expected_database":"d:\\ETASData\\ASCET6.4\\Database\\AEB_1"}
```

`text` 是字面子串；`*`、`.` 等在此模式下没有正则/通配符含义。`identifier_occurrence` 要求一个 C/ESDL 标识符，并检查前后字符边界。这两种模式的大小写不敏感只针对 ASCII 字母。`regex` 是 JavaScript/ECMAScript Unicode 正则表达式。注释和字符串也算文本出现位置。此工具不能证明某一次出现绑定到哪个变量声明，不能把结果当作语义引用或读写分析。

### 正则、跨行与前后文

正则使用 `mode: regex`，表达式不带 `/.../` 分隔符。JSON 字符串中的反斜线必须转义，例如 `\\b`、`\\s`。支持分组、分支、字符类、量词、前后断言和反向引用；不是 PCRE，也不是 shell 的 `*` 通配符。

```json
{"query":"\\b[PC]_AEB[A-Za-z_0-9]*\\b","mode":"regex","context_before":2,"context_after":2,"result_format":"shared"}
```

默认逐逻辑行匹配正则，不能跨行。`multiline: true` 允许匹配跨越换行；`dotall: true` 进一步允许正则中的 `.` 匹配换行，必须同时指定 `mode: regex` 与 `multiline: true`。`^`、`$` 采用行边界语义；正则使用 Unicode 模式，不区分大小写时遵循 JavaScript `iu` 规则，例如 `k` 可能匹配 `K`，与旧文本模式的 ASCII 折叠不同。

```json
{"query":"if\\s*\\([^)]*\\)\\s*\\{.*?return[^;]*;","mode":"regex","multiline":true,"dotall":true,"context_before":2,"context_after":2,"result_format":"shared"}
```

字面代码片段同样可使用 `multiline: true`。正文和查询中的 CRLF/CR 都归一化成 LF 后匹配；空格、缩进仍须一致：

```json
{"query":"foo();\nbar();","mode":"text","multiline":true,"case_sensitive":true,"context_before":1,"context_after":1}
```

`query` 仍为 1–1024 个 Unicode 码点，禁止 NUL。没有 `multiline: true` 时禁止实际换行；JSONL 的每个请求仍必须在一个物理行上，以 JSON `\n` 表示查询中的换行。`identifier_occurrence` 不接受 `multiline: true`。

`context_before`、`context_after` 各为 0–100 的整数，默认 0。上下文截在文档边界，重叠或相邻窗口合并，保留行号。展开格式在每个结果的 `context` 中返回 `{start_line,end_line,lines}` 数组；`lines` 是按行号排列的行文本，`end_line` 包含在窗口中。共享格式返回 `context_sets`，与 `match_sets` 使用同一个 `results[i].match_set` 索引。即使前后文为 0，跨行模式也返回覆盖整段匹配的窗口。

正则或跨行结果的每个 `matches` 行额外包含 `ranges`，与该行 `columns` 一一对应：`start_line/start_column/end_line/end_column`。结束位置不包含在匹配内，起止行列均为 1 起的 Unicode 码点位置。`matches` 按匹配起始行分组，`matched_lines` 统计实际覆盖的不同逻辑行。零长度正则命中返回起止相同的位置，按 Unicode 码点向前推进，避免死循环。

包含正则的批量在一个可复用的独立执行线程中串行匹配，整批匹配阶段有 1000ms 截止时间，包含必要的线程启动与结果传回。超过后终止该线程，返回 `status: error`、`code: REGEX_TIMEOUT`、`complete: false`；下个请求重建线程，ASCET 连接保持可用。线程不保留跨查询正文索引。`SearchSession.close()` 会释放线程；直接调用 `search()` 使用进程内复用且空闲时不阻止进程退出的线程。这与桥接的 `--timeout` 不同，也不是任意正则都能低于 500ms 的保证。

### 按命中身份读取完整代码

将搜索结果中的 `component_oid`、`document_id` 和顶层 `database` 传给 `read` 请求；需要确保内容未变化时附上结果的 `source_sha256`。下面为 TS 中可直接使用的调用：

```typescript
import { readDocument } from './tools/code-search/dist/src/index.js';

if ('results' in result && result.results.length > 0) {
  const hit = result.results[0];
  const source = await readDocument({
    operation: 'read',
    target: { component_oid: hit.component_oid, document_id: hit.document_id },
    expected_database: result.database,
    expected_source_sha256: hit.source_sha256,
  }, bridge);
  // source.document.text 是该方法/版本或状态机槽位的完整原始正文。
}
```

以上调用应放在前面示例的 `try` 内，在关闭 Bridge 之前；CLI 使用相同的 JSON 结构。`execute(request, bridge)` 可统一分派搜索和读取，直接 `search()` 只接受搜索请求。

`expected_database` 对读取必填，用于防止切库后按另一数据库的同名身份读取。`expected_source_sha256` 可选，不一致时返回 `code: SOURCE_CHANGED`；目标消失时返回 `DOCUMENT_NOT_FOUND`；组件读取有错误且无法确定目标存在时返回 `READ_INCOMPLETE`。这些错误不会切断健康的 ASCET 连接；数据库身份校验失败属于桥接错误，仍需重启搜索进程。

成功响应含 `operation: read`、`scope: document`、`document`、`line_count` 和读取状态。`document` 保留搜索结果的所有身份/状态机元数据，并增加完整 `text`；保留原始换行，SHA-256 对原始文本计算。`line_count` 按 CRLF/CR/LF 逻辑行计数，空正文是 1 行。内部通过 OID 直接定位组件，跳过全库目录查询，再读取该组件源码，`coverage` 只描述这个读取范围。所有请求重新读取模型；没有用搜索时的旧正文替代当前值。

完整读取的单位是一个方法/版本、header、external C/H、状态机动作/条件槽位或 `graphical_method` 图形表示。`*_binding` 文档只返回绑定方法名及 alias；图形方法另有自己的文档。

也可以通过同一 JSONL 进程一次读取一个状态机组件的全部支持源码：

```json
{"operation":"read_state_machine","component_oid":"040qm00100001m8714ag81ugur0dk","expected_database":"d:\\ETASData\\ASCET6.4\\Database\\AEB_1"}
```

TS 对应导出为 `readStateMachine(request, bridge)`；Agent 工具定义见 `agent-state-read-tool-definition.json`。这是新增入口，不能向旧 Bridge 直接发送，须运行 `npm.cmd run build` 同步更新 C# 与嵌入的 Smalltalk。

返回 `documents` 中的正文、hash、位置和 `line_count`，以及 `diagrams`、`methods`、`graphical_bodies`、`unread_method_bodies`。包含六类状态/转移文本与绑定、当前组件实际存储的方法文本版本及支持的图形方法。方法正文与绑定按 alias 关联，重复绑定不会重复读取方法。触发器的 `body_status: state_machine_event` 表示由状态机图实现的事件入口。仅在源存储确有记录时输出方法文本，内部 `procSourceAt:` 对不存在记录返回的空字符串不会伪装成方法体。这里的源码访问函数与组件外部连线用的 getter/MemberGetPort 是不同概念。

该操作的完整性契约比单文档 read 更严格：`source_read_complete` 表示支持范围内的源码与元数据读取成功，`binding_resolution_complete` 表示绑定已定位到触发事件或可读文本/图形；`complete` 还要求没有未读取的组件方法体。未支持图形返回 `status: partial`、`complete: false`、`errors` 和 `unread_method_bodies`，已有证据仍返回。即使 `complete:true` 也只适用于 `state_machine_source_bundle_v2`，不包括状态转移拓扑、组件外部接口布局及调用方连线、生成代码、跨组件调用链或未提交的编辑器缓冲区。

`graphical_bodies` 保留图源 OID、节点、元素 alias、GET 返回端口、SET 输入端口、连线、方法 alias 与执行序号。当前完整支持范围是状态机所属图形方法里的直接标量赋值：普通变量的 SET，输入来自数值/布尔常量或本地标量 GET。复杂运算、嵌套图、索引访问、歧义连线及未知存储布局显式标记为未完整解析。

图形文档使用 `kind: graphical_method`、`variant: BD`、`language: ascet_graph`、`representation: graphical_model`，位置在 `graphical_location`，成员身份为实际方法 alias。正文包含派生赋值和方法涉及的图节点；完整 Specification 图另在 `graphical_bodies` 中。派生文字不是原始 ESDL 或生成 C，哈希针对该派生表示。完整支持的同图多方法按执行绑定分开；不支持的图仅返回标明 PARTIAL 的共享 Specification 证据，不能将其中每个节点认定为该方法实际执行的逻辑。

真实样本 `Init/init` 为执行序号 10 的 `AEBLockTime = 0.0;`。可以全库搜索 `{"query":"AEBLockTime = 0.0;","context_before":1}`，再以命中身份调用 `read`。简明样本见 `samples/AEB_State_Machine.Init.md`。

不存在的组件返回 `COMPONENT_NOT_FOUND`，非状态机返回 `NOT_A_STATE_MACHINE`，模型读取错误显式报告。所有调用重新读当前模型；没有跨请求正文缓存或变更监听。

实际样本见 `samples/AEB_State_Machine.json` 和可读的 `samples/AEB_State_Machine.md`。只读验证：`npm.cmd run verify:state-bundle`；它依赖 AEB_1 中该样本，独立原生遍历对照、检查旧 read 兼容性，并记录首次/常驻完整 JSON 时延与全部失败尝试。运行前应构建 Bridge，且不要与其他 ToolAPI 任务并行。

### 批量实时搜索

Agent 已知多个关键词时，使用 `queries` 一次提交 1–64 项，共享一次实时目录/正文读取：

```json
{"id":"batch1","result_format":"shared","queries":[{"id":"parameter","query":"P_AEBdT","mode":"identifier_occurrence","case_sensitive":true},{"id":"constant","query":"C_AEBdT","mode":"identifier_occurrence"},{"id":"keyword","query":"return"}]}
```

`query` 与 `queries` 二选一。批量项接受 `id`、`query`、`mode`、`case_sensitive`、`multiline`、`dotall`；`scope`、`expected_database`、`result_format`、`context_before`、`context_after`、`filters` 放在请求顶层。允许混合普通、正则和跨行查询。整批输入先校验，包括正则语法；有一项不合法就拒绝整批，不访问 ASCET。

批量响应以 `searches` 数组按输入顺序返回各项，每项保留自己的 `id`、查询方式、命中统计和结果。顶层 `status`、`complete`、`errors`、`database`、`observed_utc` 和 `coverage` 适用于整批；部分读取失败时整批 `complete: false`。每个新的 JSONL 请求都会重新读取模型，不沿用上一批正文。查询逐项执行各自的匹配规则，本版没有使用 Aho–Corasick 或持久索引。

### 限定搜索范围

单次搜索、批量搜索和分页首请求均接受 `filters`，不指定时仍搜索当前数据库。以下示例在一个状态机组件内同时搜索变量与 Init 派生赋值：

```json
{"operation":"search_page","limit":50,"filters":{"component_oids":["040qm00100001m8714ag81ugur0dk"]},"queries":[{"id":"variable","query":"AEBLockTime","mode":"identifier_occurrence"},{"id":"assignment","query":"AEBLockTime = 0.0;","mode":"text"}]}
```

可用字段为 `component_oids`、`member_ids`、`member_names`、`kinds`、`implementation_oids`、`variants`。每项是 1–64 个字符串组成的数组；同字段内取并集，不同字段取交集，按元数据值精确匹配且区分大小写。`implementation_oids:[""]` 表示基础实现，`variants:["ASDL","PC"]` 表示两种代码 Variant；图形表示用 `BD`。组件 OID 使用 ASCET 的 29 字符身份；建议直接使用上次结果中的值。范围为空集时正常返回零命中。

`filters` 作用于整批，不接受每个 query 独立的范围；不同范围可在同一常驻进程依次提交请求。这里的 `member_names` 是精确范围过滤，正文仍须匹配 `query`，并非独立的名称模糊搜索。响应回显实际过滤条件，`coverage` 描述本次读取范围。

组件 OID 通过原生数据库代理直接定位；Implementation、Variant 和文本方法字段在源码读取前过滤。状态槽位的成员过滤发生在状态树遍历期间；图形 Specification 为保证完整性原子读取后再按成员过滤。过滤不是持久索引，仍可能需要在所选范围内遍历。需要同时重建 TS 与 C#，旧 Bridge 不能静默忽略过滤条件。

## 结果与范围

返回 `results`，每一项是一个代码文档/版本，包含组件 OID、路径、Implementation OID、代码 Variant、成员标识与名称、正文 SHA-256、`matches`。每个匹配行含 `line`、全部 `columns` 和该行文本。行列从 1 开始，列按 Unicode 码点计数。重复出现采用不重叠匹配。

默认 `result_format: expanded` 保持上述格式。可选 `result_format: shared` 将相同正文的匹配数组只发送一次：`results[i].match_set` 是索引，指向该搜索结果的 `match_sets` 数组。例如读取 `matches = search_result['match_sets'][document['match_set']]`。批量响应中每个 `searches[i]` 拥有自己的 `match_sets`，不能跨项引用。所有版本、行文本和列号仍完整返回；没有丢弃重复版本。高命中查询推荐 agent 直接消费共享格式。

不截断命中，不隐藏超时；`total_occurrences` 是所有代码版本中的出现次数，相同源码在两个版本中会分别计数。没有分页和 `limit`。大结果量会增加完整结果序列化、传输和解析耗时。

`coverage_profile: text_and_state_machine_sources_v2` 明确限定当前覆盖范围。旧版 `native_find_text` 仅覆盖文本组件；它不等于 ASCET 全部原生搜索能力，之前遗漏了状态机：

代码搜索不读取 Dataset 的参数数值、数组或表格。查某个参数名在代码中的出现位置，只需搜索下面列出的源码。Dataset 的公式模板与参数绑定用于另一类“参数依赖搜索”，不属于当前代码搜索入口；相关读取研究留在 `experiments/dataset-20261001/`，没有接入默认查询。

- 带 specification 的有效非容器组件，以 `isCClass/isASDLClass` 判断是否含目标代码。
- `component code` 及全部 `handwrittenImplCode` 的 external code containers。
- 方法/Process 的已有文本正文、C local header、external C/H 文本，保留各 Implementation 和 Variant。
- 状态机的 Entry/Static/Exit ESDL，以及转移 Action/Condition ESDL；存储中若有 Trigger ESDL 也会读取。递归包含层级状态自身动作和内部状态/转移。
- 状态和转移绑定的方法名称，返回 `*_binding` kind、`language: method_reference` 和 `binding` 中的本组件 OID、方法 alias、名称。绑定结果中的行列针对方法名，不是方法体；不会递归展开所绑定的图形方法。
- 状态机组件所属图形方法（包括 Init）的派生图形表示。图数据每次读取后交由 TypeScript 解析再匹配，不按原生文本预筛，以免漏掉派生赋值。匹配可落在赋值或图形 JSON 字段中，行列针对这份表示。
- 不生成代码、不调用 `createDefaultMakeConfig`；无已有文本的图形 Process 不会变成文本搜索结果。
- 不涵盖一般 Block Diagram 图形逻辑、生成代码、尚未提交到模型存储的编辑器文字或语义变量引用。具体见返回值 `excluded`。

状态机的正文 kind 为 `state_entry/state_static/state_exit/transition_trigger/transition_action/transition_condition`，方法绑定在相应 kind 后加 `_binding`。`member_id` 是图源 OID 加包含层级的图形 ID 路径，例如 `sourceOID/s4/s7` 或 `sourceOID/s4/t16`；不能只按名称或末尾数字定位。`member_name` 为可读的图/层级/状态名称，转移显示为 `Transition #ID`。

每条状态机命中还有 `location`：`diagram_source_oid`、`diagram_name`、`hierarchy_state_ids`、`element_type`、`element_id`、`slot`。同名状态和不同层级的相同局部 ID 不会合并。状态机正文不是 Implementation 代码变体，`implementation_oid` 为空、`variant` 为 `ASDL`。直接搜索示例：

```json
{"query":"AEBLockTime","mode":"identifier_occurrence","result_format":"shared"}
{"queries":[{"query":"Trigger_IB_From_Off"},{"query":"trigger","mode":"identifier_occurrence"}],"result_format":"shared"}
```

`complete: true` 只表示上述明确范围已经读完并返回全部命中。任何组件读取错误返回 `status: partial`、`complete: false` 和 `errors`；连接/协议失败返回 `status: error`。`coverage` 保留目录、组件、代码容器、文档和字符统计，另有 `state_machine_components/state_machine_diagrams/states/transitions/method_bindings/state_tree_max_depth`。身份冲突、绑定无法解析或传输损坏会显式报错，避免静默丢失结果。

每次查询都从实时模型读取，使用 `freshness: live_model_read_each_request`。仅在同一请求内复用相同文本的匹配和编码结果，没有跨请求正文缓存，不依赖未经验证的修改时间戳。查询期间前后复核当前数据库路径；单个 Smalltalk 查询块内读取模型。外部 C/H 文件若被别的程序在读取期间修改，不提供跨文件事务快照保证。

## 实现

`CodeSearchBridge.cs` 保持一个 Cebra 连接，编译内置固定 `native-snapshot.st`，查询词和过滤条件作为数据参数传递，不拼接进 Smalltalk 源码。批量查询在原生端取各必要子串的候选并集；大小写和标识符边界在 TypeScript 按每项要求精确复核。跨行字面查询选择其中最长的非空行。正则只对可证明必要子串的简单串联表达式预筛，例如 `\\b[PC]_AEB[A-Za-z_0-9]*\\b` 可筛 `_AEB`；分组、分支、断言等无法证明时不预筛。`iu` 的 K/S 特殊 Unicode 折叠也保守处理。只要批量中一项没有安全预筛词，就读取过滤范围内全部正文后匹配。

分页首请求仍计算完整命中坐标，按本页位置生成上下文预览；相同正文的上下文行共享。缓存预算按对象遍历估算，无需把完整结果序列化为巨大的临时 JSON；这是保守的数据核算预算，不是 JavaScript 堆内存硬上限。`limit` 减少输出量，不能让首次读取提前停止。

原生输出在每次请求内通过 `#SOURCE`/`#SOURCE_REF` 只传输一次相同正文，所有文档身份仍分别传输。`src/protocol.ts` 校验引用和身份，在请求内复用正文 SHA-256；`src/matcher.ts` 在请求内复用换行归一化、ASCII 折叠和行起点表。文档 ID 保持旧版 Python 的 SHA-256 序列化兼容；JS 的 UTF-16 下标经过代理对修正，仍返回 Unicode 码点列号。缺失/重复/多余的正文引用导致错误，避免不完整数据被当作完整结果。`coverage.transported_unique_sources` 和 `transported_unique_characters` 统计本次实际传回的正文；原有 documents/characters 仍统计扫描范围全部版本。

桥接内部 `snapshot` 模式读取全部源码，`reference` 模式调用实际 `SGBrowseManager` 的方法、header 和 external source 搜索函数，用于完整性对照；它们不属于公开 agent 搜索参数。读取器避开 local header 为 nil 时原生 getter 的惰性初始化。原生对照路径遵循原生 getter 行为，测试应在已加载模型上进行。

图形读取器 `graph-source-reader.st` 只访问存储，不打开编辑器、不生成代码。单张图读取成功后才写入协议，失败记录 errors 并继续读取其他图。`graphical_specifications/graphical_method_documents/graphical_nodes/graphical_connections` 单独统计图形内容；`returned_documents` 含派生文档，`graphical_representation_characters` 为派生字符数。原有 `documents/characters` 与 `transported_unique_*` 不把派生文字计为存储文本。

`state-source-reader.st` 是编译时嵌入的固定状态机读取块，通过 `specSourceInternalOrNil` 直接读取当前模型存储树。它不调用 `getDiagram:`、`actionAlias` 或 `mementoStream`，不重载编辑器图形、不惰性写 alias、不创建 Undo。原生变量引用搜索另走 `SGViewPaneController>>allGOsUsedElement:` → 状态/转移 `referenceElement:` → `findIdentifiers:`；不能用 C/ESDL Find 的测试代表状态机已经覆盖。

`timings.search_ms` 不包括最后一次 JSON 写出及客户端解析。当前验收以 `scripts/verify-live.ts` 外部计时为准：从进程启动/请求写入前，到完整 JSON 收到并解析完，不是首条结果耗时。

## 验证

当前优化验收见 `experiments/search-optimization/latest.json`。`npm.cmd run verify:optimization` 使用现有 ASCET 跨任务锁，串行比较保留的旧版本与新版，验证实时全量快照指纹、批量结果、范围过滤、完整回读及分页位置。状态稳定性和延迟结论仅覆盖报告中的数据库与样本。

Init 图形支持：70 项离线测试通过。`experiments/state-machine-read-20261001/validation-v2.json` 中，31 次状态机读取、25 次单文档回读、12 次 Init 全库搜索均通过。30 次常驻整机读取中位数 68.34ms、最大 72.83ms；首次含启动 288.87ms；Init 搜索中位数 93.06ms、最大 170.06ms。独立存储探针对照全部 24 条状态代码/绑定及 Init 的 59 条原始字段记录，前后稳定。原搜索回归见同目录 `graph-search-regression.json`，27 次请求均正确且低于 500ms，包括 12/64 项批量。这些为已加载模型的完整 JSON 往返测量。详细说明见 `docs/code-search-init-20261001.md`。

```powershell
npm.cmd --prefix tools/code-search test
npm.cmd --prefix tools/code-search run verify:live
npm.cmd --prefix tools/code-search run verify:advanced
```

可追加 `-- --output <报告路径> --repeats 3`。验证器记录全部尝试、超过 500ms 的样本及失败，分别统计常驻单次、12/64 词批量和新进程调用，并把搜索结果与无筛选全量读取、原生 Find 函数逐位置/逐行比对。完整性对照使用独立码点扫描，并核对元数据、行文本及前后模型指纹。它先读取参考正文，不会重启 ASCET，因此测量的是已加载模型，不能证明真正冷数据库首次加载也低于 0.5 秒。只有 `resident_target_passed` 为 true 才表示该次数据库/运行状态下的常驻样本全部达标。完整性失败退出码为 1，正确但未达到延迟目标退出码为 2。

0.2.0 新能力验收见 `advanced-validation-20261001.json` 与 `docs/code-search-advanced-20261001.md`：45 项离线测试通过；174 次在线请求包括 171 次成功搜索/读取及 3 次预期错误，逐位置/正文/哈希/元数据验证均通过。119 个不同文档的完整读取中位数 71.19ms、最大 96.15ms；混合批量最大 184.40ms。首次新进程的正则搜索含启动耗时为 384.39ms，其余正则单次样本最高约 172ms。前后模型指纹一致。该成绩来自已加载的当前数据库。

0.1.0 TypeScript 迁移时的历史验收见 `ts-live-validation-20261001.json` 与 `docs/code-search-typescript-20261001.md`。当时 31 项 Node 离线测试通过，包含 180 组冻结的旧 Python 结果对照。79 次实时完整请求正确且均低于 500ms：共享格式常驻单次中位数 104.69ms、最大 166.67ms；展开格式中位数 103.39ms、最大 234.88ms；12 词批量最大 186.73ms，64 词混合批量最大 285.54ms。新 Node/C# 进程首次查询 288.41ms（ASCET 已加载）。

### Python 历史参考

`code_search.py`、`test_code_search.py`、`verify_*.py`、`benchmark_native.py` 保留旧实现与历史实验的复现能力，不再是生产入口或 TS 构建/测试依赖。冻结的 `test/python-golden.json` 由旧实现生成，Node 测试直接读取 JSON，无需安装 Python。以下旧报告均为 Python 成绩，不代表 TypeScript 测量。

2026-10-01 优化后 `live-validation-20261001-07-dedup.json`：44 次常驻展开格式查询中位数 107.7ms、最大 238.0ms；9 组全量位置及 4 组原生对照全部通过。`realtime-validation-20261001-01.json` 中同样 9 个关键词逐次实时调用中位数 1131.5ms，合并为一次共享格式请求为 207.4ms；80 个测量组的全部位置、元数据和原始行文本一致。64 项上限另测 3 次，中位数 275.5ms、最大 392.3ms。更多结果见 `docs/code-search-realtime-polish-20261001.md`。

上述旧成绩不含状态机。补齐后的 `live-validation-20261001-08-state-machines.json`：47 次常驻单次查询中位数 124.86ms、最大 219.66ms。`realtime-validation-20261001-02-state-machines.json`：12 词批量共享格式中位数 219.73ms、最大 235.77ms；64 项混合批量最大 357.41ms，全部 60 个测量组的位置、元数据、原始行文本一致。5 个状态机、13 个状态、19 条转移新增 36 段 ESDL 和 14 处方法绑定，50 条记录与独立原生存储遍历一致。35 项离线测试与 VM 内独立临时对象的嵌套测试通过。详情见 `docs/code-search-state-machines-20261001.md`。

这些数据来自已运行、已加载的共享 ASCET，不能保证真正冷启动或任意规模都低于 500ms；之前首个新进程请求出现过 1074.4ms。原生 Windows Find 只按 CRLF 分行，本工具支持 CRLF、LF、CR，验证器分别核对两种语义。Process 与非空 external C/H 在本库没有可供在线验证的样本。嵌套状态及 Entry/Static/Exit 方法绑定用临时对象验证；实际库只有平级状态和 Trigger 方法绑定，尚无真实嵌套库对照。

若返回空 API 句柄，先检查其他 ToolAPI 任务是否正在连接或编辑、当前数据库是否可访问。失败后重启搜索进程；工具不会自行重启 ASCET 或改写用户模型。
