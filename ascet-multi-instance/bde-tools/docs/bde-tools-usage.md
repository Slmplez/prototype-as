# Doge BDE tools：当前实现与用法

本说明对应普通 BDE 实验实现。业务原件保持只读；当前写入只接受 `BDE_Tool_Experiments\Trial_*`，恢复限原 ASCET 进程、数据库归属与 Doge session。状态机和新 Code Mode runtime 不属于本轮开发。

新增只读 [interfaces/signal_path/interface_binding](bde-signal-interfaces-usage.md)：读取同名嵌套 hierarchy 的精确边界、Class formal 和消息角色，再在已存观察上检查路径。接口 refs 不用于 `bd_edit`。[精确子图结构编辑](bde-hierarchy-edit-usage.md) 已接入连线、指定类别创建、普通节点删除与逆向；Project message 和跨 Module/Class 整条通路仍在开发。

当前 AEB_1 存在未恢复实验的持久化 restoration hold，因此该数据库的新 edit/revert 写入被阻止。下面的创建与写入示例说明已实现的实验契约，不代表当前可以执行；只读、缓存 diff/history 和 Class 只读预检仍可使用。完整交付尚未完成，见 [交付状态](bde-delivery-status.md)。

已有 Doge 进程可本地续读不可变 cursor 文档，无需逐页启动 Python 或连接 ASCET。严格校验校验和、session、UTF-8 字节位置、预算和已交付范围；不支持或异常记录回到 Python 处理。该优化只处理仅含 cursor 的读取请求。`ASCET_BD_LOCAL_PAGING=0` 可恢复旧续页路径，首读仍真实采集 ASCET。

## 启用

在已打开 AEB_1 的 ASCET 上，通过现有 Doge 六工具调用。无需独立 MCP server。启动 Doge 前设置：

```powershell
$env:ASCET_BD_PYTHON='E:\PYTHON\python.exe'
$env:ASCET_BD_BULK_FULL='1'
$env:ASCET_BD_STRUCTURAL_WRITES='1'
$env:ASCET_BD_NATIVE_PRESENTATION='1'
```

`bd_inspect({"query":"capabilities"})` 返回实时开关、创建种类及边界。这里的 enabled 表示实验代码开放，不表示完整 eval 已通过。

## 读取与连续编辑

1. 理解已有算法用 `bd_read({"component":"完整路径","view":"logic","max_bytes":16384})`，读取所有 next_cursor。完整语义指工具声明的已采集字段，项目有效标定、数值实现仍未覆盖。
2. 精确结构编辑用 `bd_read({"component":"BDE_Tool_Experiments\\Trial_AEB_Core_20260930_123955","view":"structure"})`。默认采集 Main 节点、pin、边、布局、声明；`scope={diagram:"Main/h<ID>/h<ID>"}` 可选精确子图。不含全部方法/公式语义。
3. 用返回的 snapshot 调用 `bd_find` / `bd_inspect(query=fields)`；精确连线使用结构视图中的 `Main/pN`，不能混用 logic pin 引用。
4. 每次 `bd_edit` 只接受一个 operation。可先传 `preview:true`；执行仍重新校验当前原生对象及局部观察。
5. 成功 edit/revert 的 `after_snapshot` 来自已落盘的真实后观察，发布它不会再读 ASCET。下一步直接使用该 snapshot；它只包含实际采集范围。局部编辑后的 snapshot 不能冒充完整选定 scope 用来创建新块。

```json
{"snapshot":"<structure snapshot>","request_id":"create-v1","operations":[
  {"op":"create_block","kind":"variable","name":"EvalSpeed","model_type":"cont","position":[1800,200]}
]}
```

`position` 是 native placement center；结构数据的 `anchor` 对应该中心，`position`/`size` 则描述实际框。工具记录 ASCET 自己调整后的大小和连线路由，不以请求坐标伪造 diff。

## 创建目录

| 类别 | kind / 参数 |
|---|---|
| 基础声明 | variable、parameter、constant、resource、delta_t、implementation_cast；delta_t 名称固定为 dT；resource 只允许 Module，Class 的 resource 图形重新加载后不保留 |
| 数据与查表 | array、matrix、distribution、oned_table、twod_table、oned_table_fixed、twod_table_fixed |
| 分组表 | oned_table_group 需要 x_distribution；twod_table_group 还需要 y_distribution，均为已有 `Main/m_<hex>` distribution 精确引用 |
| 消息 | receive_message、send_message、send_receive_message；只允许 Module，AEB_Core 原件是 Class |
| 库类型实例 | enumeration、component，必须给已有库 definition 的完整路径 |
| 已有声明放置 | existing_model，name 是当前组件中的精确声明名 |
| 图形与流程 | literal、comment、operator、control、hierarchy |

operator 当前支持 `+ * & | min max - / % > < >= <= = != abs not neg verify assert bet limit wraparound`。limit 与 wraparound 使用独立固定 native conversion factory，读取保留 conversion_type 区分实际类型。固定输入数不能以不一致 arity 覆盖；可变输入数为 2–16，默认 2。control 支持 Break、IfThen、Case、While、Switch、IfThenElse、MUX；arity 是 native numOfArgs 参数，不代表所有 control 的总 pin 数。

hierarchy 可带 inputs/outputs 命名端口，每侧最多 16 个、跨两侧唯一。创建不等于支持编辑内部内容。

enum 示例：

```json
{"op":"create_block","kind":"enumeration","name":"EvalMode","definition":"BDE_Tool_Experiments\\Trial_Enum_20260930_123955","position":[1800,300]}
```

这创建枚举类型的模型实例；新建枚举库定义/枚举值列表尚未实现。variable、parameter、constant、enumeration 可提供 `initial_value`：cont 为有限数值，sdisc/udisc 为有界整数，log 为 boolean，enum 为已有枚举项精确名称。message 初值、表格维度和公式配置尚不可写；表格已有数值values可按下文固定尺寸编辑。26 种 kind 不代表 ASCET 所有 palette 对象及其所有配置都已覆盖。table创建仅cont/sdisc/udisc，logical table factory已发现原生不兼容，写前拒绝。

结构读取返回已有组件默认配置中的标量 `default_value`，保留 `source/configuration_oid/status`。`absent` 不补成 0；默认值不是项目、实例或运行时生效值。`bd_inspect(query="configuration")` 可查看已采集默认值，`bd_find` 按模型名称返回其图形实例；同名的全部实例分别保留 ref。

编辑已有独立本地标量默认值，使用模型 ref 而非图形 ref：

```json
{"op":"set_scalar_value","target":"Main/m_<hex>","expect":{"value":1.25},"value":42.125}
```

该操作只采集目标声明的局部前后数据，自动记录真实 diff，保留原生配置身份及原始值供逆向恢复。依赖参数、非本地或只读配置会拒绝。

已有 assigned call 的序号可用 `set_sequence_number` 修改：`target:"Main/pN"`、`expect:{number:155,method:"calc"}`、`number:90000`。共享同一个 sequence call 的多个 pin 一起核对；重复序号拒绝，保留原 activator。

## 编辑、diff 与回退

普通结构操作已实现 create_block、connect_data、disconnect_data、rewire_data、delete_node、set_literal、set_comment、move_node、set_edge_route。move_node/delete_node 支持普通 selector call，保留原生 call/label 身份及方法绑定；带独立执行连线 pin 的 call 仍在写前拒绝。嵌套层级修改未开放。delete_node 删除图形及 incident 边，不等于删除共享模型声明；create_block 的逆向才删除该操作新建的声明。

`set_edge_route` 的 points 包含原始两端点，2–32 个整数坐标点；只支持非零正交线段，相邻线段必须转向。两端 pin、端点位置及其他对象必须不变。回退保存每个坐标的副本，避免 ASCET 原地移动污染 checkpoint。

`bd_diff({"change_id":"edit_..."})` 和 `bd_inspect({"query":"edits"})` 从持久日志读取实际变更；不重新读取整张 BDE。

`bd_diff({"change_id":"edit_...","presentation":"show"})` 在原 BDE 画临时标记；`presentation:"clear"` 清除。2026-10-01 已有标量/表值、连线、移动、删除和新增节点的实际视觉样例，100%/150%/200%缩放、滚动及标量关闭重开有通过证据，实验均恢复基线。每次调用仍返回 `native_call_succeeded_visual_unverified`，因为该回执无法证明本次屏幕效果。完整 UI-01/02 尚缺最终候选多轮生命周期及更多类型/fixture 等验收。

标量关闭/重开三轮已在bde-presentation-lifecycle-01通过。其后新增删除节点ref/类型/旧名称文字，从记录的实际patch生成并精确转义/折行，不额外读整图；原glyph仍未重建。新增文字版本的视觉实验在观察前被用户Escape停止，已清理并恢复baseline，不能标作视觉通过或完整UI验收。

```json
{"change_id":"edit_...","request_id":"undo-v1"}
```

上例传给 bd_revert。它检查当前状态和原生父 children 顺序，再恢复保留的原生对象。不是通用 Undo，也不是按名字重建对象。成功回退落盘后释放该 terminal 恢复记录。

## 超时与回执丢失

- 同 request_id、同内容不会重复 setter；不同内容拒绝。
- 尚未派发的取消可确认 not_dispatched。派发后取消只停止等待，后台继续串行完成和落盘，返回 outcome_unknown，不能盲目重试。
- `bd_inspect({"query":"recovery","change_id":"edit_..."})` 查询原生恢复记录。
- 加 `reconcile:true` 只在原生 terminal observation、durable before 和当前观察一致时，补记真实结果并清除此请求的跨 STORE 阻断；模型 setter 次数为零。原生 partial/started 状态仍保持未知。
- 需要原 session；跨进程重启恢复不可用。重启 ASCET 不是对未知写入的自动回退。

## 当前证据

`analysis/bde-experiments/2026-09-30` 保留原始成功、失败、journal、清理与性能样本；最新入口见 `analysis/bde-experiments/PROGRESS.md`。`bde-eval-ledger-01` 汇总全部 28 个 case 的证据缺口；完整 G0–G7/L0–L3 未通过。离线测试、native API、Tool.call 和视觉证据分别记录。

## 执行方法、数组与矩阵

`set_sequence` 为已有 call 同时设置方法与序号，例如 `{"op":"set_sequence","target":"Main/pN","expect":{"number":0,"method":null},"method":"calc","number":90000}`。新建 variable 自带的未分配 call 可用此操作；没有 call 的 pin 仍拒绝。原生方法别名和显示名称不同，工具在当前图所属方法集合中精确解析并保存身份，回退可恢复未分配状态。

创建 array 可带 `max_size:4`，matrix 可带 `max_size:[4,4]`。结构读取明确给出 `default_value.values/size/max_size/declared_max_size`。数组最多256值；矩阵每轴最多16，按原生 `values[x][y]` 排列。超过采集界限明确返回not_collected，不截断后冒充完整。

已有独立本地默认数据可用 `set_array_values` 或 `set_matrix_values`：`target:"Main/m_<hex>"`、`expect:{values:<完整旧值>}`、`values:<新值>`。新数据的形状即新长度/尺寸，不能超过已声明最大尺寸。matrix必须矩形且值类型统一。原始配置使用原生深复制保留，回退检查配置身份、实际数据和最大尺寸。

在线证据：sequence-assignment-03三轮；array-values-03与matrix-values-01在AEB_Core副本四类型各一次。均有独立公开getter、实际diff、逆向、完整baseline恢复。不是全部eval门槛通过；表格、嵌套编辑、新枚举定义和原BDE视觉验收仍未完成。

`distribution` 创建允许 `max_size:1..256`。`set_distribution_values` 使用精确 model ref、`expect:{values:[...]}` 和新的 `values`，仅允许 cont/sdisc/udisc 数值轴，严格递增、长度不超过声明上限。保存原生 SGVectorData 深副本并检查配置归属与旧值，回退恢复原长度和值。被 grouped table 引用的轴在 native prepare 拒绝，尚未开放联动更新。

在线 `bde-distribution-values-03`：AEB_Core 副本三数值类型各三轮，通过独立公开 getter、实际单模型 diff、负例和完整 baseline 恢复。失败01（创建后置条件把最大尺寸当初值）与02（测试入口未捕获 schema 拒绝）仍保留；均无遗留修改。

完整 reader 新增 Module 的 `processes`，与 methods 分开，返回精确名称、alias 和公开 GetCode 字符串，保留合法空字符串。正文和 find/inspect 使用 `Main/process:<name>`；kind 为 method，`callable_kind` 为 process。`bde-module-full-read-02` 的空 Module 三轮公开/内部全部 raw 字段同覆盖且实际 Tool.call 全分页通过；非空 process 正文及 Module 全类型仍待验证。

## 固定尺寸表值编辑

结构read采集已有1D/2D表的 `default_value.values`、x/y轴、尺寸/声明上限，以及interpolation_linear/interpolation_rounded/extrapolation_constant。完整logic read中的1D表为x/y（y为表值），2D为x/y/z（z为表值），同时保留尺寸/声明上限及插值/外推flags。结构1D最多256值，2D每轴最多16；超限返回not_collected。

```json
{"op":"set_table_values","target":"Main/m_<hex>","expect":{"values":[0,0,0]},"values":[1.25,2.5,3.75]}
```

适用于独立本地普通/fixed数值table默认配置。2D按原生 `values[x][y]` 提供完整矩形；新旧维度必须相同。此操作拒绝grouped table、logical values、resize与额外轴/插值参数。edit回读实际局部结果，生成自动diff；inverse保留原生value对象，检查raw配置身份和实际after，恢复时不覆盖轴/插值/外推对象。业务组件写入仍受Trial_*隔离边界限制。

创建1D普通/fixed表可提供 `max_size:3`；2D可提供 `max_size:[2,3]`。当前边界为1D1..256、2D各轴1..16。`bde-table-grid-03`在隔离小图四类表×三数值类型×三轮、三格/非方阵2x3各格不同值通过完整读取、精确编辑、diff及baseline恢复；不替代三个fixture或全部table配置验收。`bde-group-edit-rejection-01`另有30次group/关联轴写前拒绝及恢复能力核对。

## 表格轴与声明插值

普通独立本地numeric表格可精确编辑一个已有轴；长度固定，数值必须严格递增并符合表格model_type，sdisc/udisc要求整数、udisc不允许负数，表值与另一个轴保持。fixed/grouped表的轴拒绝。native prepare还检查副本值等于请求，发生取整等转换时写前拒绝。

```json
{"op":"set_table_axis","target":"Main/m_<hex>","axis":"x","expect":{"values":[0,0,0]},"values":[-2.5,0,3.75]}
```

普通/fixed独立numeric表格可以编辑声明插值。`declared_interpolation`来自structure模型行，可能为null（使用ASCET默认选项）；另外两个flag来自其default_value。三个旧字段全部精确检查，回退恢复原值，包括null。

```json
{"op":"set_table_interpolation","target":"Main/m_<hex>","expect":{"declared_interpolation":null,"interpolation_linear":true,"interpolation_rounded":false},"mode":"rounded"}
```

插值属于表声明，会影响此声明的所有配置；当前只采集并验证组件默认配置，其余有效配置仍未知。不能将其理解为只修改一个默认配置副本。只支持linear/rounded，grouped表拒绝，外推和尺寸编辑尚未开放。settings-04在小隔离图四类表×三数值类型×三轮36链通过，完整public/bulk同覆盖、实际Tool.call全分页、精确diff、旧值/离散轴/重复请求/逆向冲突与全baseline恢复，源码未在运行中变化。settings-01及03两次失败和独立恢复证据保留。

此类 model-only diff 现在按已采集 Main occurrence 定位，在名称右侧显示字段旧值/新值；没有 occurrence 或无法构造显示内容时返回 PRESENTATION_UNAVAILABLE。标量与表值样例已在线验证；并非所有字段、类型和配置均完成视觉验收。节点/sequence 使用边界框，旧连线使用已记录 route；不会重建原 glyph 或旧名称。show/clear 检查 Undo stream 身份、位置、长度及 entry 身份，未深比较每条 entry 内部内容。

## 枚举读取边界

完整 logic 正文现在保留 `enum_source` 与 `enum_values`，`bd_inspect(query="fields")` 也返回它们。库枚举返回 `library_definition` 和已解析 definition；三轮隔离枚举创建、完整 field/bulk 同覆盖、全部 Tool.call 分页及逆向恢复通过，证据 bde-enum-full-02。旧快照没有来源字段时显示 unspecified，不伪造来源。

内嵌 SGEnumeration 的类型元数据没有库 OID，逐字段 reader 返回 `inline_type`、`definition:null`、`definition_status:"not_applicable_inline"`。AEB_Core 依赖中的 sm 另有字符串 alias 身份和状态机图；整份依赖读取仍被拒绝为不完整，不能据此声称可完整读取状态机。读到的类型项 `enumerator` 是类型元数据，不能冒充状态列表；默认字符串仍单独保留。完整批量 inline/alias 验收和状态机语义均延期。

## Class 接口改变后的结构读取

Class 参数或 return 改变后，调用方原图的存储源码可能完全不变，而旧 wrapper
仍持有旧引脚。`native_structure_v1` 现在对当前图与保留图做有界递归引脚核对；
检测到不一致，或新引脚还没有稳定原生 ID 时，返回
`INTERFACE_REFRESH_REQUIRED`，保留具体原生诊断，不发布误导性 snapshot。
需要明确刷新并保存受影响调用方图后，再获取新的结构快照和精确 refs。
read 本身不自动保存图；此防护不等于完整 Class 签名、类型或配置一致性校验。

Class 参数/return 新增、删除仍未开放为正式 `bd_edit` 操作。当前研究证明了
三调用实例的变化与签名原对象恢复，但未完成稳定引脚落盘、多组件实际 diff、
关联节点/连线删除及图形原对象回退，不能把删除声明当作完整删除。
