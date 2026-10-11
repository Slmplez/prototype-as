# Pi 六工具候选接口

当前使用手册与 build E 边界说明见 [SEARCH_TOOLS_GUIDE.zh-CN.md](SEARCH_TOOLS_GUIDE.zh-CN.md)。本页保留各轮开发记录；旧轮次的成绩及默认值描述应按其日期理解。

这是 `task` 配置的接口说明。原三工具仍保留；默认配置仍为 `baseline`。评测结果见本轮独立对照报告，不能用离线测试通过数代替真实 Agent 成功率。

当前交付与验收见 [TASK_ACCEPTANCE.zh-CN.md](TASK_ACCEPTANCE.zh-CN.md)。task profile 默认启用最终引用/BDE Pin 校验和逐用户请求 Intent 守卫。生产守卫与关闭守卫的首次采样分别记录；历史结果保留在下文。

本轮补充规则：普通代码/符号搜索不猜测 `kinds:["method"]`；只有明确限定 Method 时才加此过滤。State/Transition 的 Action 正文使用 `ascet_read_code`，拓扑和 Method binding 使用 `ascet_inspect_state`，按返回的 `read_tool/next_call` 分组读取。Junction 属于 State Machine 拓扑，用 `find target:states`，不是 BDE `object_kinds`。

独占的不支持请求、需要先澄清的请求直接返回带 intent 的最终 JSON，不调用工具。`intent.decision:unsupported` 对应 `outcome:unsupported`；`clarify` 对应 `partial`。`located` 表示请求所需证据已读全；若只要求定位图形 Method 和共用 Diagram，不要求不存在的文本正文。额外用途未证实应在 answer 说明；若用户明确要求核实该用途，未找到证据仍应返回 partial。保存的赋值与连接不能证明执行周期或运行时调度。

## 加载与 CLI

```powershell
$env:ASCET_PI_TOOL_PROFILE='task'
pi -e .\dist\src\pi-extension.js
```

纯 CLI 使用同一实现：

```powershell
$env:ASCET_PI_TOOL_PROFILE='task'
node dist/src/cli.js --agent
```

每行发送一个 `{ "tool": "工具名", "arguments": { ... } }`，每行返回一个 JSON。保持进程存活，在同一进程内传递返回的 ref。Pi 注册工具可并发调用；共享 CLI 排队执行完整业务请求，名称解析和查询在同一个队列入口内完成。加载扩展仅注册工具，第一次有效调用才启动 CLI/Bridge 并连接 ASCET。

默认连接 `127.0.0.1:32503`；已准备的其他实例用 `ASCET_CODE_SEARCH_PORT` 指定。本轮评测仅使用隔离实例 32631。

## 六个工具

| 工具 | 用途 | 主要参数 |
|---|---|---|
| `ascet_find` | 按名字定位或列出 Component、Method/Process、Diagram、BDE Object、State、Transition | `target`, `name?`, `match?`, `scope?`, `limit?` |
| `ascet_search_code` | 搜索保存的文本代码，包括 State/Transition Action | `queries`, `scope?`, `context?`, `limit?` |
| `ascet_search_bde` | 搜索原始 BDE 字段，按放置对象合并命中并给出直接连接预览 | `queries`, `scope?`, `limit?` |
| `ascet_read_code` | 全文、行范围、保序批量读取文本代码 | `refs`, `lines?`, `if_unchanged?` |
| `ascet_read_bde` | 读取 Diagram 列表或局部对象的 Pins、连接及 Hierarchy 边界 | `refs`, `depth?`, `direction?` |
| `ascet_inspect_state` | 读取 State/Transition 端点、优先级、Action 槽位和 Method 绑定 | `refs` |

所有工具都支持仅含 `cursor` 的续页请求，必须调用产生该游标的同一个工具。

## 参数约定

`queries` 始终为数组，每项为 `{text, mode?, case_sensitive?, multiline?, dotall?}`。每个查询独立执行，不会将多个变量合成 AND 查询。`mode` 默认为 `text`；完整符号使用 `identifier`；模式匹配使用 ECMAScript `regex`。多行代码匹配需设置 `multiline:true`；正则点号需要跨换行时另设 `dotall:true`。

筛选字段全部放入 `scope`，不得放到请求顶层。字段内数组表示 OR，不同字段表示 AND：

```json
{
  "components": [{"name":"AEB_AxCtrlConfigFF_Modify"}],
  "members": ["calc_pre"],
  "kinds": ["method"],
  "variants": ["ASDL"]
}
```

`components` 和 `diagrams` 每项只能有 `name`、`path`、`ref` 其中一个字段。Component 只表示所属组件，不能在后面拼接 `Main`、Method 或 Action。Diagram 名称在 Component 范围内精确解析：优先使用 `{name:"Main"}` 或返回的 Diagram ref。未知、多义或不完整的范围会报错，不会自动扩大到全库。

`members` 是完整的原生成员名，State/Transition 路径可能为 `Main/AEB_State_Off`。`variants` 保留实际原生字符串，ESDL 对应 `ASDL`。`implementations` 是实际 OID，基础 Implementation 为 `""`，不得写 `null`、`base` 或显示名称。

已定位一份文本代码后，`ascet_search_code` 可直接复制该项的 `search_scope`：

```json
{"queries":[{"text":"force","mode":"identifier"}],"scope":{"code_ref":"<本次返回的文本代码 ref>"}}
```

`code_ref` 必须单独放在 scope 中。CLI 精确锁定所属 Component、成员 ID、代码种类、Variant 和 Implementation；不接受 Diagram、BDE 对象或 binding ref。它限定的是保存代码身份，查询仍读取当前保存内容。不能再混入另一个 Component/member 等筛选；需要改变范围时重新使用普通 scope。返回的 `applied_scope` 显示实际执行的完整范围，其中 `member_ids` 是 CLI 从 ref 解析的成员身份。

`ascet_find.target` 必填：`components/members/diagrams/objects/states/transitions`。省略 `name` 列出目标；`match` 默认为 `exact`，名字片段用 `contains`。`scope.object_kinds` 仅适用于 `target:"objects"`。State/Transition 对象查找只使用 Component/Diagram/visibility 范围。

`refs` 始终为真实数组，单项也不能用字符串代替。不同读取工具接受不同 ref 类型；混用会在读取前返回 `WRONG_REF_TYPE` 和 `next_tool`。同一批次的范围选项应用于全部 ref，保留输入顺序及重复项。批量回读按实际嵌套 JSON 和模型文本估算首屏大小，各项分别返回自己的 `has_more/next_cursor`；逐项消费续页才能获得完整结果，续页和重放不再次读取原生模型。内容不会因预算被静默丢弃。必需元数据或单条记录仍超限时，`next_calls` 给出保留原行范围、depth/direction、顺序和重复项的单 ref 请求；工具没有执行这些重试。部分项预算失败时只建议重读失败项。

`ascet_read_bde` 读取局部对象时 `depth` 为 `0/1/2`，`direction` 为 `incoming/outgoing/both`，默认局部读取为 `1/both`。整个 Diagram ref 不接受这两个字段。depth 0 用于读取目标对象完整 Pins；邻接端点展示不代表邻居完整接口。日常 Agent 接口提供列表和局部读取；旧 CLI 的完整原始 `include_graph` 仍作为高级入口保留。

`limit` 为每页结果数量，范围 `1..200`，默认 50。输出另受字节预算约束；不能据单页结果判断不存在或完整覆盖。默认 Pi 的结构输出与模型文本预算各为 32 KiB。

task 六工具的 `next_cursor` 是短句柄，例如 `p-<会话随机值>-1`。原样传给返回它的工具，只传 `cursor`。CLI 在当前会话保存底层长游标，不要求 Agent 解码 JSON 或签名。句柄五分钟过期，缓存有界；其他会话不能使用。同一游标重放保持同一分页内容及后续句柄。`clear`/连接重建会清除句柄，须重新查找；游标不能作为证据 ref。

## 调用示例

定位 Method，获得其 Variant、Implementation 和 ref：

```json
{"tool":"ascet_find","arguments":{"target":"members","name":"calc_pre","scope":{"components":[{"name":"AEB_AxCtrlConfigFF_Modify"}]}}}
```

已知范围内同时搜索两个完整变量：

```json
{"tool":"ascet_search_code","arguments":{"queries":[{"text":"AEB_AXCAxLimDiff","mode":"identifier"},{"text":"loc_AxTarLim","mode":"identifier"}],"scope":{"components":[{"name":"AEB_AxCtrlConfigFF_Modify"}],"kinds":["method"],"variants":["ASDL"]},"context":{"before":5,"after":5},"limit":20}}
```

搜索 BDE 里的对象字段：

```json
{"tool":"ascet_search_bde","arguments":{"queries":[{"text":"C_AEB_AXCDeadZonePos","mode":"identifier"}],"scope":{"components":[{"name":"AEB_AxCtrlConfigFF_Modify"}]}}}
```

以下 ref 和 cursor 占位符必须替换为本次进程实际返回的完整值：

```json
{"tool":"ascet_read_code","arguments":{"refs":["<returned code ref>"],"lines":{"start":2,"end":5}}}
{"tool":"ascet_read_bde","arguments":{"refs":["<returned BDE object ref>"],"depth":0,"direction":"both"}}
{"tool":"ascet_inspect_state","arguments":{"refs":["<returned State or Transition ref>"]}}
{"tool":"ascet_search_bde","arguments":{"cursor":"<returned next_cursor>"}}
```

## 返回与读取路径

`target:diagrams` 同时发现 BDE 与 State Machine Diagram，包括空 Diagram。`diagram_type` 明确为 `bde` 或 `state_machine`。State Machine Diagram ref 只选择范围，不是 BDE 正文；返回 `scope_only:true` 和查 States/Transitions 的 `next_calls`。`scope.diagrams:[{name:"Main"}]` 在指定 Component 内解析，两种 Diagram 均保留实际所属 Component 和源身份。Public/Private、Variant、Implementation 限制参与名称解析，找不到或歧义不会变为全库查询。

例如：

```json
{"tool":"ascet_find","arguments":{"target":"states","name":"AEB_State_Off","scope":{"components":[{"name":"AEB_State_Machine"}],"diagrams":[{"name":"Main"}]}}}
```

读文本的 `lines.start/end` 是包含结束行的请求范围；`line_coverage.selected` 是截到实际保存行数的范围，`page` 是本页涉及的行，`complete_lines` 是本页完整包含的行（没有则为 null）。它们均使用包含结束行的行号。`code_range` 仍保留精确 Unicode 行列位置，结束位置不包含在正文里。空正文逻辑行数为 1；请求 1..2 时实际覆盖 1..1，不能宣称存在第 2 行。分页切在行内时，该行不会列为本页完整行；完整正文需合并所有续页。

模型收到 JSON，代码字符串不经过重写。返回的 `task_tool` 标明实际入口，`applied_scope` 标明解析后范围，`scope_identities` 提供内部名称解析所得身份。带原生身份的文档项补充 `identity`，内容为 `component_path/kind/member/variant/implementation`；可读取对象补充 `read_tool`，Agent 应直接照此选择工具。

可读取项另提供 `next_call:{tool,arguments}`，可复制调用并按用户要求增加 lines 或 depth/direction。读取错误可能提供 `next_calls`：按 ref 类型及可用参数分组的建议，保留组内顺序和重复项；工具并未执行这些建议。整个 Diagram 的建议不包含局部 depth/direction，Agent 应分别调用并说明各组范围。

局部 BDE 已读结果中的 `next_call`（程序结构化返回）保留该对象实际使用的 depth/direction，重复调用不会无意回到默认 depth 1/both；其他对象的建议独立。模型显示会省略已读局部结果里重复的 `next_call`，保留 ref、read_tool 和实际分页游标。发现结果仍提供下一步调用建议。

程序的结构化读取返回 `read_evidence:{id,requested}`。模型可见 JSON 只显示 `read_scope`，保留原始 refs、指定的行范围或局部 depth/direction，局部默认值明确展开。内部读取编号不送入模型作为引用；引用只能原样复制实际 `ref`。同一次读取的续页保留内部标识，不同范围的读取有不同标识。用户要求 depth 0 时，不能把随后 depth 1 的连接写入 depth 0 的结果。这是证据来源信息，不保证 Agent 解读正确。

局部 BDE 的模型 JSON 用 `requested_object` 表示入参 ref 指向的对象；该对象内的 `pins` 和 `pin_ids_on_page` 只属于它。`neighbors` 将每个邻居及其 `endpoint_pins` 放在同一项；邻居端点不代表完整邻居接口。`diagram_context` 保存图的拥有者、Diagram 身份和 Diagram ref，局部对象 ref 不再标为 `kind:diagram`。Hierarchy 显示 `root` 或实际嵌套路径。连接仍使用原始 `from/to`，连接终点不能代替本次读取对象。Pins 按页提供，消费同一次读取的全部页面后才能声称完整。`structuredContent` 保留原始 `object/pins` 结构，原文字符串逐字保留。

模型 JSON 先展示 read_scope、requested_object，再展示连接和邻居。完整原生读取还提供 `requested_object.pin_count`：该对象在当前快照中的接口 Pin 总数，按 Diagram 内的 hierarchy 与 node_id 确定，不含邻居 Pins。分页时总数保持不变，`pin_ids_on_page` 仍只包含本页该对象的 Pins；来源读取不完整时不提供 pin_count。outgoing/incoming 选择连线方向，不改变本次查询的对象身份。

局部连线和 Hierarchy 边界的模型显示保留端点 `ref/name/pin/pin_id`，直接显示两端名称。若端点的其他字段与本页 `requested_object` 或 `neighbors` 中同一 ref 的字段完全相等，就只在对象处显示一次；按 ref 可还原端点信息。未在本页出现的对象、不同字段和未知字段不会省略。程序结构化输出仍带完整端点。对象上的旧 `component_path` 若等于 `referenced_component_path`，模型只显示后者，避免把引用目标误认为 Diagram 的拥有者。

`depth:0` 只读取目标接口，模型 JSON 保留该范围的 `connections:[]`，并用 `connections_not_read` 说明连接不在本次范围中。这个空数组不能证明图上没有连线；也不能因此自行扩大用户指定的 depth。`depth:1/2` 才检查实际连接，仍须区分方向和分页范围。该说明只影响模型显示，程序收到的原生结构字段保留。不能将不同 depth/direction 的读取混入同一结论。

Method 等保存项补充原生 `language`，如 `c`、`esdl`、`ascet_graph`。查 C 候选时依据 `language:c`，不要猜 Variant 名称。Object/State 名称使用顶层 `name`，不能放到 `scope.members`；Schema 在进入原生读取前验证这类参数。

实际注册的六工具描述、guidelines 和 JSON Schema 另见 `agent-task-tool-definitions.json`。

批量 BDE 首屏中的一项示例（实际 ref 和 cursor 必须来自本次会话）：

```json
{"ref":"<returned object ref>","has_more":true,"next_cursor":"<returned next_cursor>","requested_object":{"name":"AxCtrlLimGradAxMin","pins":[]},"connections":[]}
```

本页的空 `pins/connections` 数组不能证明对象没有 Pins 或连接；先消费该项游标。例如 `ascet_read_bde({cursor: item.next_cursor})`，此时只传游标，不再传原 refs、depth 或 direction。批次中有多个游标时分别消费，按每页 `ref/read_scope` 归入对应读取。

State/Transition 的 Method 绑定提供结构事实，不含绑定 Method 实现。使用 `ascet_inspect_state` 得到绑定身份，再用 `ascet_find` 定位真实 Method、用 `ascet_read_code` 读其代码。Action 槽位如果有独立代码 ref，则直接使用返回的 `read_tool`。

State/Transition 模型显示将相同拥有者、Diagram、Variant、Implementation 等重复元数据放在父项；`related_context` 说明相关项省略的共享字段从父项继承。不同值显式保留，Method 绑定的 component_oid、method_alias、method 均保留。Transition 的 `code_slots.method_binding` 已是该次原生读取返回的绑定事实；只核实绑定名称时不必为取得相同事实重复读取。需要 State 详细关系或 Actions 时读端点 ref，明确要求独立读取某槽位时读槽位 ref，需要实现正文时另找真实 Method。父项的重复读取建议被省略，相关对象的调用建议与分页仍保留。

State/Transition 批量读取的一项如果放不下其端点元数据，会先返回如下待续页项，而非报整批预算失败：

```json
{"ref":"<returned State or Transition ref>","deferred":true,"has_more":true,"next_cursor":"<returned next_cursor>","expires_utc":"<snapshot expiry>"}
```

它尚未返回 State 事实；不能据此断言“没有 Action”或“没有端点”。继续调用 `ascet_inspect_state({cursor:item.next_cursor})` 后读取该项。`returned_count` 包括这些已接受、待分页交付的项，并非已读证据计数。证据账本在实际返回内容后才标记该 ref 已读取，端点 ref 的出现也不代表端点已被读取。所有批量读取保留顺序和重复项，各项游标独立；独立续页使用完整单页预算，内容来自原始快照，不重新读取 ASCET。确实无法装入单页的 State 元数据仍报错，不返回无法使用的游标。

Ref/cursor 属于当前 CLI 会话、Database 和 ASCET 进程；重连或重载后重新获取。游标必须原样复制并只传 `cursor`。工具关闭后 CLI/Bridge 随之退出。发送过的请求不会因传输失败而自动重放。

覆盖范围是已保存的代码与 BDE。Runtime 值/调度、Dataset 数值、表插值配置、生成代码、未保存编辑不在范围内。对完全超出范围的请求直接说明限制，无需试探性检索。

## 评测解释

本轮使用真实 Pi 1.0.2 和 `deepseek/deepseek-flash`，每个任务新建独立对话，只提供所选配置的 ASCET 工具。28 个旧意图案例测试回归；16 个新需求测试参数、范围和证据。16 个案例已用于第二轮调整，因此后续得分属于开发回归。另有 8 个在第二轮代码冻结后确定的任务，涉及其他 Class、literal 和嵌套 Hierarchy。各组复用当前原生数据库，不代表独立数据库的泛化验收。

参数接受率只反映已识别的参数错误；未分类运行错误另列。范围合规率仅统计预先标注的显式约束。任务证据通过率检查指定原生事实；严格通过还要求输出格式及意图声明。以上均不能认证所有调用的语义精准率或全部自然语言解释。

2026-10-05 新评测使用 v2：意图自报与实际行为分开，主任务通过要求实际工具行为、原生证据和答案契约。接受完整的等价全量或分开 Public/Private 查询；Component 准备查找不套用最终 Diagram 范围；同一 State/Transition 的结构检查可作为 Action 正文读取准备。旧分数、答案和事件保留，重评分单独保存。新计划在模型调用前校验局部图 facts 字段，并明确要求 connections 数组。Pi 1.0.2 已对相同公共 guidelines 去重，本轮改善规则与示例，不以重复规则次数推算提示长度。

第三轮完整对照每构建 80 个单次任务。原 v4 评分是控制 61/80、候选 69/80；两组统一修正未声明 `facts.code` 的 State 输出检查后，v5 为 63/80、71/80。V6 再按已经返回的 Component 路径和 Diagram 源 OID 识别等价范围，修复换 ref 后将完整查询误判为未完成的问题，统一评分为 64/80、72/80。不同 Component、同名不同 Diagram、过期或未知 ref、变化的查询和筛选条件不会合并。完整原生正文仍必须实际回读，评分器没有修改模型答案。

后续批量预算专项各 8 次，统一成功为 6/8、7/8，非预期调用错误 2 次、0 次；参数说明专项各 12 次，两组均 12/12，未观察到额外成功率提升。后续专项不能代替对最后构建重跑完整 80 案例。本轮 200 次尝试、所有评分版本及关闭审计记录位于 `experiments/pi-agent-eval/2026-10-05-precision-03`，汇总见 `ITERATION-REPORT.zh-CN.md`。

最终构建后续验收在第 73 个案例收到 DeepSeek `402 Insufficient Balance`：72 个案例完成、58 个通过，1 次模型服务失败、7 个未尝试；按全部实际尝试为 58/73（79.5%），不能宣称已通过完整 80 案例。已分类调用参数接受率 209/210（99.5%），显式范围标注 40/44（90.9%），二者均不是所有调用的语义精准率。

独立 Tutorial 数据库的真实 CLI 验证核对了 508 份保存正文、66 张 BDE、504 个局部读取、64 个对象合并搜索及两个空 Private Diagram。22 个 State/Transition 的测试定位器字段错误修正后，单独复验通过；首次失败报告保留。AUTOSAR 的 InitializationModule 另有 10 项检查通过。这些是程序调用与原生快照核对，尚未完成独立 LLM 意图验收。已冻结 24 个 Tutorial 和 8 个 AUTOSAR Pi 任务，待模型余额恢复后执行。

独立库仍有明确覆盖缺口：Tutorial 65 个连续时间 Class 和 XOR Class 读取异常；AUTOSAR 两张图的源复制与审计不支持 EsAtom。全库搜索必须保留 partial 及相关 issues。独立评测只允许计划冻结的具体错误集合，明确标记覆盖不完整；新的错误、错误消失或改变都会使验收中断。生产工具构建和 Bridge 未改，本轮只补了独立评测框架。详情见 [最终验收报告](experiments/pi-agent-eval/2026-10-05-precision-03/FINAL-ACCEPTANCE.zh-CN.md)。

## 2026-10-07 批量读取打磨

本轮按用户要求排除 AUTOSAR EsAtom 开发。公共请求信息只计一次预算；单项 State 元数据过大时使用独立续页；BDE 的 depth 0 模型输出明确连接未读。全量离线回归 793/793 通过。真实隔离 ASCET 对照中，旧构建的 8 项 Transition 批读为 8 项预算错误，新构建的 8 项和 32 项批读均成功续页，端点、优先级和全部 Action 槽位与旧构建逐项读取一致。32 项首屏模型 JSON 为 6541 字节，低于 32768 字节限制。测试数据库源码和图形未变，隔离进程已关闭，其他 ASCET 进程未改动。

真实 BDE 样本为 `AEB_dFxTar/Main/C_AEB_AXCDeadZoneNeg`：目标接口 Pin ID 为 56，depth 1/outgoing 读到 1 条实际连线。首轮测试脚本误用所属 Component 后失败的记录保留，改正为 AEB_dFxTar 后单独重跑通过。旧测试写死分摊预算的断言已改为验证公开单页上限、全部正文和游标重放。记录见 `experiments/pi-agent-eval/2026-10-07-polish-04`，这些 CLI 与回归结果不能代替 Agent 成功率。

实际 Pi 同组 5 个任务各运行一次：旧构建 4/5、候选第一版 3/5、候选第二版 3/5；调用数分别为 24、24、22，调用参数接受率均为 100%，均无工具调用错误。第二版仍有扩大 depth 0 范围和漏报目标 Pins 的答案错误；不能据此宣称成功率提高。所有原始答案、失败和中间版本均保留，没有修改答案或挑选重试结果。该组是已知困难任务的小样本，不是全库或独立数据库成功率。

用户随后要求不再反复启停 ASCET：测试改为复用 agent-a 的同一 PID、启动时间和端口，并核对实际数据库；收尾只检查源码/图形不变，保留实例。`keep-running.json` 锁定具体 PID/启动时间，自动 stop 会拒绝关闭这个实例。运行中的旧评测收尾因此被拦截，原 `cleanup_error: INSTANCE_RETAINED` 记录保留；随后独立的 `live-04-reuse` 验收通过，确认 PID 44900 始终未变、端口仍开放、其他 ASCET 进程未变。最终离线回归（含保留实例标记测试）为 **799/799**。汇总见 [本轮完整记录](experiments/pi-agent-eval/2026-10-07-polish-04/summary.json)。

## 2026-10-07 局部范围与接口显示打磨

修复局部 BDE 重复读取建议丢失 depth/direction 的问题，新增原生目标 pin_count，将 read_scope 和 requested_object 提前展示，省略已读局部结果中重复的调用建议。原生 Pins、端点、连接与字符串不改写；程序结构化响应仍保留正确的调用建议，发现结果也保留导航能力。

离线回归 **809/809** 通过，包括 0/1/2 深度与 incoming/outgoing/both 的九种重复调用验证、目标与邻居区分、源数据保真、分页计数和输出预算。真实 CLI 再次验证 State 8/32 项批读及 BDE Pin/连线，源码、图形均未变。

本轮预先固定同一组 12 个 Pi 任务，旧构建与新构建各执行一次：通过 **9/12 → 10/12**，调用 **45 → 38**，参数接受 **43/45 → 37/38**（95.6% → 97.4%），工具输出给模型的累计字节 **223338 → 169385**。新版的一次错误是空 refs 被拒绝，随后 Agent 恢复；失败没有删除。参数接受率不等于调用语义精准率，较少调用也不自动证明更正确。

Module 接口和深层 Instance 的 depth 0 样本由失败转为通过；仍有 State Method 绑定未实际回读，以及另一个 BDE 样本把连线终点当作请求对象。12 个任务只覆盖选定的困难样本，尚不能证明完整 80 案例或独立数据库的泛化成功率。所有原始答案、事件、源码构建和评分器均冻结保留；两组均复用 PID 44900，结束后保持运行。详见 [本轮对照记录](experiments/pi-agent-eval/2026-10-07-polish-05/summary.json)。

## 2026-10-07 完整评测与两轮返回打磨

本轮新增三组完整的 80 案例，每个构建每案执行一次，共 240 次真实 Pi 尝试。使用相同计划、Pi 1.0.2、deepseek/deepseek-flash 和 v6 评分，保留所有原始答案、事件、失败和冻结构建；不修复答案，不挑选重试结果。第一轮只保留连线端点 ref/Pin，第二轮恢复直接显示端点名称，并强调接口的名称、ref 与 Pins 必须来自同一对象读取。State/Transition 共享元数据精简继续保留。

| 指标 | 本轮旧版对照 | 精简第一版 | 第二版候选 |
|---|---:|---:|---:|
| 严格任务通过 | 73/80（91.25%） | 68/80（85%） | 71/80（88.75%） |
| 参数接受率 | 237/241（98.34%） | 235/237（99.16%） | 223/224（99.55%） |
| 意外调用错误 | 3 | 1 | 0 |
| 工具调用数 | 241 | 237 | 224 |
| 已标注范围合规（原标签） | 48/50 | 47/50 | 47/50 |

每组均包含一次故意用错工具续页的错误恢复任务，因此第二版的唯一工具错误是预期错误。参数接受率不等于调用语义精准率。范围标签也有局限：例如精确双 Component 的成员查询、分别查询 Public/Private 被原标注器误判；同一案例额外使用 contains 探索则确实改变了原精确名称限制。原标签未改，不据此宣称所有调用的真实范围准确率。

**结论：参数使用与阅读负担改善，但没有证明整体任务成功率提高。** 第二版仍为 opt-in 候选，默认 baseline 未切换。失败仍包括把连线终点作为接口主体、未按要求追问歧义、局部深度选错、分页完成事实不符，以及把 cursor 当 evidence ref、增加不允许的答案字段等。三组是同一开发任务集的迭代，不是独立数据库或未见任务的泛化证明。

评测还有需要单独审查的约束：Transition 已返回原生 Method 绑定，原评分仍要求独立读取绑定；接线任务要求完整 Pins，评分却额外指定 depth 0；部分 facts 字段没有声明类型，却按固定类型评分。这些问题已记录，**没有借此改写本轮分数**。后续应先明确任务语义、字段类型和允许的等价证据路径，再继续优化成功率，避免为了满足隐藏步骤而增加无意义调用。

最终离线回归 **813/813**，真实 State 8/32 项批读、接口 Pins、连接及绑定核验通过。另对历史 **1,040 个真实返回**重放，核对 134 个局部 BDE 页面、69 个 State/Transition 页面及 684 个连线端点，确认精简后可还原原有事实。在相同输入返回上，第二版局部 BDE 显示字节减少 **12.4%**，State/Transition 减少 **36.5%**；这只衡量显示体积，不代替任务成功率。

全过程复用本任务 ASCET PID **44900**，没有重启本实例。第一版的原收尾审计因另一个实验目录的 ASCET 进程清单发生变化而失败，记录保留；本实例源码和图形检查通过。随后独立核验及第二版最终审计均通过，确认数据库指纹未变、PID/启动时间一致、端口仍开放。

完整记录见 [三组汇总](experiments/pi-agent-eval/2026-10-07-polish-07/summary.json)，可查看 [真实 BDE 返回样例](experiments/pi-agent-eval/2026-10-07-polish-07/bde-agent-response.example.json) 与 [真实 State 返回样例](experiments/pi-agent-eval/2026-10-07-polish-07/state-agent-response.example.json)。样例 ref 仅属于录制会话，使用工具时需重新发现对象。独立 Tutorial 的 Pi 意图验收仍未执行，本轮未切换数据库；AUTOSAR EsAtom 不在开发范围内。

## 2026-10-07 最终提示与对象证据打磨

在上述构建基础上，task profile 又加入了几项通用约束：`cursor/next_cursor` 只能控制分页，不能放进 `evidence_refs`；`facts` 只放调用者请求的字段，禁止 `inference/inferred` 等辅助对象；查询返回 `has_more:true` 时优先使用同一工具的 `{cursor}`，替代大 `limit` 查询必须保持原始 queries 和 scope（包括原本省略的过滤器）；局部 BDE 结果明确 `requested_object.role=query_subject`、`neighbors.role=connection_neighbor`，并提供 `pin_ids_complete`；State Transition 需要核对两端和 binding ref；未明确原生类别时不猜 `object_kinds`。用户明确说“不要猜组件”时，先澄清且不做候选扫描；Variant 候选统一放在 `facts.variants`。

离线回归仍为 **813/813**。定向复测四个上一轮失败案例为 **4/4**：Variant 候选、请求对象与目标接口、同范围批量分页替代、游标边界。随后完整 80 案例单次评测结果：

| 构建 | 严格通过 | 工具调用 | 参数接受率 | 意外工具错误 |
|---|---:|---:|---:|---:|
| polish-11（提示初版） | 76/80 | 217 | 216/217（99.54%） | 0 |
| polish-14（最终提示） | 75/80 | 225 | 223/225（99.11%） | 1 |

两组都完成 80/80，没有模型服务失败；差异来自真实 Pi 单次采样，不能把定向 4/4 当作完整组 80/80。polish-14 的失败包含两个证据引用误写（引用了当前结果没有返回的 ref）、一个跨轮 follow-up 搜索范围任务，以及两个意图/图形成员案例；原始答案和事件均保留，未自动修复或挑选重试。完整记录见 [polish-11](experiments/pi-agent-eval/2026-10-07-polish-11/candidate-pi-01/report.json)、[polish-14](experiments/pi-agent-eval/2026-10-07-polish-14/candidate-pi-01/report.json)，定向记录见 [polish-13](experiments/pi-agent-eval/2026-10-07-polish-13/candidate-targeted-01/report.json)。

本轮仍复用 ASCET PID **44900**、端口 32631 和同一数据库，没有启停本实例；两次完整组 closeout 均确认数据库源码/图形未变、实例保持运行。当前默认 profile 未切换，生产 API 仍保持 opt-in task profile 的边界。剩余最值得继续优化的是返回一个明确的可引用 ref 清单，减少 Agent 在大型局部 BDE 输出中自行拼接不存在的 `d*` ref；这属于调用结果呈现优化，不涉及 AUTOSAR EsAtom。

随后已实现 `citable_refs`：它只由当前模型页实际出现的 requested object、neighbor、连接端点、边界和 Diagram ref 组成，并在 task guidelines 中要求 Agent 只从该白名单复制引用。离线回归保持 **813/813**；四个局部 BDE/证据案例定向复测 **4/4**，调用数由 21 降到 10。再次完整 80 案例单次评测为 **74/80**，工具调用 221 次、参数接受率 220/221（99.55%）、模型服务失败 0、closeout 通过；其中评分器有 1 个自身异常记录，所有原始答案和事件均保留。由于真实 Pi 采样存在波动，当前应报告完整组区间 **74–76/80**，而不是宣称确定性满分。最终进程核对仍为 PID 44900 / 127.0.0.1:32631，未重启 ASCET。

本阶段生产改动集中在 [src/task-tools.ts](src/task-tools.ts)：提示约束、BDE 对象角色、Pin 完整性标记和 `citable_refs`；结构化 API、Bridge 和数据库内容没有改写。最新完整评测记录见 [polish-17](experiments/pi-agent-eval/2026-10-07-polish-17/candidate-pi-01/report.json)，回归日志见 [offline-01](experiments/pi-agent-eval/2026-10-07-polish-15-offline.log)。

## 2026-10-07 调用可靠性修复

针对上一轮发现的六类问题完成修复：

- 局部 BDE 模型结果增加 `facts_mapping`。`facts.pin_ids` 只能复制 `requested_object.pin_ids_on_page`；`neighbors[].endpoint_pins` 明确标为连线端点上下文。目标对象和邻居继续保留各自 `role`、`ref` 和层级。
- 所有 task 工具的模型结果都提供当前页的 `citable_refs`；带 `has_more:true` 的顶层结果提供 `continuation_required:true` 与可直接调用的 `continuation_call:{tool,arguments:{cursor}}`。游标仍不属于证据。
- task 工具在 Schema 校验前把带游标的附加旧参数归一为 `{cursor}`，因此 `{target,cursor}` 会进入游标归属检查并返回 `CURSOR_TOOL_MISMATCH`；legacy 三工具仍保持严格的游标-only 校验。
- Pi task profile 在最终结算前用当前 `AgentEvidence` 校验最终 JSON 的 `evidence_refs`。伪造或过期 ref 会触发一次有上限的校正请求；跨用户轮次仍可引用同一会话内有效 ref。评测脚本设置 `ASCET_PI_VALIDATE_FINAL=0`，保留首答、调用和失败，不自动改写评测分数。
- 含 `intent` 的评测案例会收到与通用“不要输出 intent”提示互不冲突的专用协议，要求每轮第一次工具调用前声明 intent，并在最终 JSON 保留 intent；这修复了提示冲突造成的意图漏报。
- `cross-tool-cursor-recovery` 评分分支对缺失错误行和历史 Schema 错误做保护，永远记录失败检查而不抛出 `scoring_error`。

验证：离线全套 **816/816** 通过；评分器专项 **34/34** 通过；在现有 ASCET PID **44900**、端口 32631 上实测 `{target,cursor}` 得到 `CURSOR_TOOL_MISMATCH`，随后原工具使用同一游标成功续页。ASCET 未重启，PID、启动时间和端口保持不变。
