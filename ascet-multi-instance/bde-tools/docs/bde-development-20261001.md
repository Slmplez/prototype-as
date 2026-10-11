# 普通 BDE 开发续记：2026-10-01

## 最新：新 Enum 库类型与 Block

`bde-new-enum-05` 小图、AEB_Core隔离副本、Module各三轮共9 case完成，真实Doge Tool.call及独立native/public/model/库定义核对、实际图形与library_effects、初值、preview/幂等/重名拒绝、跨组件引用冲突和精确回退全部通过。passed=true、baseline_restored=true、outstanding=[]、source_changes_during_run=[]。库类型效果保留path/OID/有序实际items；回退仅图形恢复不能授予verified_local。

01集合类型核对失败及研究清理回执错误均保留；research-cleanup-verification-03证明新库类型已移除、声明和公开图形恢复、原children身份顺序保持，之后才释放pending。02/04 pilot通过；03无效Character selector在preview被拒绝，无setter。修正为ASCII字符集验证、getEnumerationValues.asArray比较及DBProxy.readReferences.isReferencedBys引用读取。DBXmlObject分支未在线验证。

offline-contract-25为Python135、Doge11pass/6skip/724断言和version通过；24离线夹具缺native_class的失败保留。收尾ASCET PID13536，无实验进程或pending。完整tools与G0-G7仍未完成；本轮无新Enum视觉验收，不开放业务写入或独立编辑既有库类型。调用参数和限制见 [Enum工具](E:/Repo/ASCET/docs/bde-enum-tools.md)。下一步嵌套hierarchy、缺失sequence-call创建及剩余fault/identity门槛。

## 历史：深层 Undo、显示与规模结果

`bde-deletion-undo-depth-lifecycle-02` 三次真实关闭重开、100/150%、滚动往返及clear通过，Undo嵌套内容与流/entry身份/position/size全部比较，public/native/model恢复，outstanding=[]。首轮立即窗口列表有旧handle缓存，独立window-close-audit.json说明，不使用该列表证明关闭；完整UI gate仍缺广泛fixture覆盖。

千节点`bde-scale-display-1000-06` show/clear各30次，P95分别2011.664/1506.146ms、真实请求68/26帧；最终clear截图已补齐，public_restored=true。API回执时间不是可见延迟。read02 P95970.586ms、move/revert02 P95940.858/843.611ms。用户确认千节点性能已足够评估，后续集中功能缺口。

当前AEB完整fresh read30的04 P95865.576ms/max896.523ms，93帧，全字段等价。offline21为Python130、Doge11pass/6skip/716断言、version通过。下一步嵌套Undo负例、hierarchy、新enum定义、缺失sequence call创建及identity/fault/lock验收。全部tools仍未完成。

业务原件 `PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AEB_Core\AEB_Core` 只读。写入使用已有 AEB_Core 隔离副本；message/resource 使用 Module 隔离组件。状态机、新 Code Mode runtime 仍延期，自动化仍暂停。完整 G0–G7 / L0–L3 **未通过**。

## 已核实的基础结果

### 最新接续结果

`bde-formula-edit-05` 已完成三类公式各三轮，9 case内分别表达式/已有默认绑定的真实Tool.call、实际diff、独立完整模型/公式身份、幂等/负例/逆向与临时参数删除均通过；baseline_restored=true、outstanding=[]、source_changes_during_run=[]。保留formal对象/顺序，原生parser数字token以SGFormula既有identifier过滤规则排除。仅一份local cont scalar dependent fixture，不称所有公式通过。

规模生成器10-04公开API核对通过；10-01无句柄、10-02不存在selector、10-03错误插入顺序oracle保留失败，新增夹具仅Trial_Scale_*。10节点完整读取30次P95=355.928ms，35真实frames，逐次全字段同覆盖；100/1000、编辑/显示继续推进。

`bde-deletion-label-lifecycle-02` 已结束成功，删除标注实际显示/clear及当前模板三轮窗口生命周期均通过，100%/150%、滚动与回调注销有逐轮gate/截图。baseline恢复、outstanding=[]、source_changes_during_run=[]；Undo仍为浅身份/几何核对，原glyph和完整G6未验收。生产源码本轮尚未变更。下文新增文字“待验收”描述已由此分项证据更新。

标量diff的三轮实际窗口生命周期已通过，证据bde-presentation-lifecycle-01，每轮100%/150%、滚动往返、clear、回调注销和独立模型保持，baseline已恢复。随后增加删除节点精确文字残影，相关12测试和offline-contract-16全部通过（Python123/Doge11、6live skip）；新增版本的在线视觉实验bde-deletion-label-lifecycle-01在观察前被physical Escape停止，保留失败，自动清理及独立baseline恢复通过、outstanding=[]。新增文字视觉及当前模板三轮lifecycle仍待验收；原glyph未重建。下文“最终模板三轮未通过”适用于当前新增版本，旧标量三轮证据已具备。

以下更新覆盖后文同日历史进度中的“GUI激活阻塞”“model-only绘制未实现”“依赖sm枚举缺失”等旧结论。原BDE字段及node/route/sequence绘制已有实际UI样例；bde-geometry-create-01已通过200%/150%、滚动、clear、创建逆向和全baseline恢复，无遗留写入。最终模板三轮lifecycle、更多fixture及Undo entry深比较仍未通过。

完整logic和inspect现在保留enum_source/enum_values。bde-enum-full-02普通库枚举三轮创建/full同覆盖/Tool.call全分页/diff/逆向通过；逐字段路径也读出了依赖sm的内嵌类型元数据，没有伪造库身份。bde-aeb-core-full-01整份读取仍为partial，因为两个依赖图为不支持的状态机；sm使用字符串alias OID，完整formatter/bulk路径亦未验收。这是新发现的覆盖边界，不是完整AEB_Core读通过；类型项enumerator不是状态列表。状态机编辑继续延期。

完整G0–G7/L0–L3未通过，业务原件只读。最新状态和可复现证据以PROGRESS.md及bde-tools-experiment-report.md为准。

### 本轮完整读取与表格开发

- 接续新增set_table_axis / set_table_interpolation，settings-01首个普通1D轴编辑通过，插值在原生default配置副本中被重新生成为Linear，导致actual diff为空、postcondition_mismatch与逆向保护拒绝。research-inspection/research-cleanup证明完整原生/public/model基线恢复，失败保留。源码定位RBOneDStaticCharTable.updateInterpolationFromElementType:与SGOneDCharTable.get/setInterpolation:；新版插值修改声明，exact expect包含declared_interpolation（null也保留），只验证默认配置，不能称只影响一个配置。settings-02四类cont首轮完整链通过（中途修改了plan的group错误消息，不作为最终候选指纹证据）。
- settings-03前三条cont通过，sdisc轴把请求小数取整为[-3,0,4]，actual diff记录真实取整，返回postcondition_mismatch，全部正常回退。独立recovery-verification.json确认完整native/public/model基线恢复。现在Python按model_type检查整数/符号，native prepare再核对无access副本实际值等于请求，转换会改变值则写前拒绝。settings-04四类×三类型×三轮36链已全部通过完整读取/轴/声明插值/表值/逆向，source_changes_during_run=[]，outstanding=[]。不是完整eval通过。
- model-only patch没有geometry，原BDE图层不能绘制。新增show在native调用前返回PRESENTATION_UNAVAILABLE；未实现的字段显示不再以空overlay当成功。offline-contract-12的stale-overlay夹具没有geometry，错误类型先被新检查拦截；修正夹具隔离各门槛后13通过114 Python、Doge11pass/6live skip/711断言和version启动。12失败保留，没有在线修改。
- settings-aeb-01：AEB_Core隔离副本四类cont各三轮12链通过，完整Main native/public/model逐阶段检查、model-only show拒绝且日志/模型保持、全部原生/声明/图形基线恢复。该实验没有请求完整依赖read；既有sm枚举失败仍待解决，不减少read覆盖冒充成功。settings-module-01已结束通过Module同一套12链，另含完整public/bulk raw同覆盖和实际Tool.call全分页。合计60条链，三份result均version_binding_complete=true、source_changes_during_run=[]、outstanding=[]；只有小图覆盖cont/sdisc/udisc，其他两个仅cont。
- group-edit-rejection-02 --settings-only：1D/2D group各三轮6 case通过，30次实际Tool.call preview/execute拒绝、15次direct native validate拒绝，前后native/public/model保持，既有创建逆向继续有效，最终baseline恢复。所有本轮实验已退出，收尾进程检查仅ASCET PID18144，pending JSON数量为0。历史settings-01失败中的outstanding记录不改写，其独立恢复证据仍保留。
- session-read-perf30-03：新增完整table字段后的AEB_dFxTar30次fresh实际Tool.call全分页，P50 658.958ms/P95 672.241ms/max673.637ms，93真实请求帧、23474请求wire bytes，33978正文/38438响应UTF-8 bytes、3页。Bun启动104.843ms单记，全部30次小于1秒；非所有组件或冷启动承诺，无遗留宿主/写入。
- enum/distribution各三轮full同覆盖通过：bde-enum-distribution-full-01；三message九轮通过但resource失败，bde-module-block-full-01保留整体failed；错误句柄处理修复后bde-resource-full-02三轮通过。
- bde-aeb-core-full-diagnostic-01原件只读复现完整依赖失败，已定位AEB_State_Machine.sm枚举没有represented library。不是普通Main结构路径失败，不做状态机编辑研究。
- bde-table-config-audit-01完成1D/2D普通/fixed四类raw config结构审计。set_table_values仅替换既有数值values，尺寸/轴/插值/外推保持，记录原values对象、配置owner和raw config身份，逆向拒绝实际after或保留材料冲突。
- table-values-01四类cont首轮public/native/raw同覆盖及真实Tool.call读取/编辑/逆向通过。table-values-02九个1D数值场景通过后logical table创建失败，unknown与隔离正确保留；专用research-cleanup.json确认只有新声明且无occurrence、原图顺序不变，精确删除后完整baseline恢复。历史failed不改写，隔离已释放。
- logical table creation已收紧Python/Zod/native prepare在写前拒绝；table-values-03三数值类型、四类表各三轮全部36链通过，默认尺寸1/1x1，不能冒充多格验证。group-edit-rejection-01另有30次关联轴/group表preview/execute拒绝，恢复能力未被拒绝请求破坏。
- 创建1D/2D table允许max_size=1..256/[X,Y]各1..16；table-grid-02四类cont三格/2x3首轮通过。完整reader已加入尺寸/声明上限和插值/外推flags；新table-grid-03全36链通过，各格不同值，完整public/bulk/raw/Tool.call交付、局部actual diff、preview/负例/逆向及全baseline恢复。grid-01编译getter名称错误，在native开始前失败，无outstanding，保留失败。
- offline-contract-07：108Python、Doge11pass/6live skip/697断言，version成功；396creation/78read/187write共享case。不是完整在线门槛。

### 本次接续：distribution、普通节点及 Module process

- `bde-sequence-node-aeb-01` 已结束失败：array 没有 sequence call，脚本的强制假设不适用；outstanding=[]。新版必须显式 `--allow-no-sequence` 并记录实际 call 数，不能声称测试了不存在的调用。
- `bde-node-aeb-02`：array/matrix/enumeration 各三轮，完整创建/连线（适用时）/调用分配（适用时）/移动/删除/逆向，所有中间态独立 public 与 native rows 核对、最终整图/声明恢复通过。array/matrix 无 call，enum 实际绑定 calc。
- `bde-sequence-node-module-01`：resource 三轮全部通过，随后 receive_message 无 call 导致脚本拒绝，整体仍为失败；所有恢复完成。`bde-node-messages-02` 显式普通节点覆盖后三类 message 各三轮全部通过。
- 新 `set_distribution_values` 与 distribution max_size：严格数值递增、声明尺寸上限、已有独立本地默认配置；存原始 SGVectorData 深副本；grouped-table 关联轴在 prepare 拒绝。`bde-distribution-values-03` 三类型各三轮实际 Tool.call 编辑/独立 public 默认值/diff/逆向/baseline 通过。
- distribution-values-01 的最大尺寸后置条件分支遗漏，02 的 schema 负例由 eval 入口抛进程异常；两轮均完整逆向，无遗留写入。eval 入口现记录 `phase=schema_validation, tool_dispatched=false`，与实际 Tool.call 区分。
- 完整 reader 增加 distribution 类及 Module process 的独立列表、alias/GetCode；正文与实体索引保留 process。`bde-module-full-read-01` 拒绝了合法空正文，修复为只拒绝 null；02 空 Module 三轮 public/bulk 全部 raw 同覆盖，真实 Cebra 59/35请求帧，actual Tool.call 完整交付通过。空正文不证明非空正文覆盖。
- `bde-catalog-full-03` 在 AEB_Core 副本首个 variable 的完整依赖读失败：AEB_State_Machine 引用定义中的 enum 无法经公共 GetRepresentedClass 解析，失败原始数据保留，创建已逆向、outstanding=[]。该结果不算26类 full-read通过；状态机研究仍延期。
- 原生 set_sequence 的 Module 方法池现显式包含 getAllProcesses；`bde-sequence-process-module-01` 已通过 resource/send/send_receive 各三轮分配到既有 process 后移动/删除/恢复，逐阶段独立public/native及最终baseline恢复，无outstanding。
- `bde-catalog-current-03` 当前版本26类创建各一次通过，真实Tool.call/独立图与声明/实际diff/逆向恢复；不等同26类full语义读取通过。
- `doge-session-read-perf30-02`：当前reader完整读取AEB_dFxTar，30次实际Tool.call、每次fresh采集与完整分页，P50 626.264ms、P95 651.601ms、最大652.867ms、真实请求帧93，全部小于1秒。一次Bun宿主启动另记；不含LLM时间，不推广为所有组件1秒。实验宿主已退出，无遗留写入。
- 本次离线105 Python通过；Doge11 pass/6 live skip/677断言，version启动成功。它们不是在线原生或完整gate验收。

所有证据位于 `analysis/bde-experiments/2026-10-01`。上述成功样本不能合并成 G0–G7 全通过；未完成表格/公式/nested hierarchy、新enum定义、完整identity/fault/规模及视觉验收。

- `bde-catalog-current-01/result.json`：26 类创建各一次，真实 Doge Tool.call、全部分页、独立公开 API 图形/声明、自动 diff、回退与 baseline 恢复通过。该轮早于本次 sequence/default-value 扩展，不能替代新版本整体验收。
- `bde-recovery-capacity-01/result.json`：容量满时拒绝、不淘汰恢复记录；preview 不分配；写前落盘失败清理 prepared；applied 不能释放，三轮通过。原生还保留 92 条历史记录，不擅自清除。
- `bde-persistence-fault-02/result.json`、`bde-host-exit-01/result.json`、`bde-live-cancel-01/result.json`：落盘失败、工具宿主退出、实际 Tool.call 派发后取消都有在线子场景。不是 ASCET 崩溃或 setter 中途终止的证明。
- 既有实际 Tool.call 性能：每页新 Bun 进程 read30 P95 983.126 ms，最大 1015.451 ms；复用已启动 Bun 宿主但每次重新采集 read30 P95 746.219 ms，最大 787.844 ms。move/revert30 P95 614.131/590.492 ms。各自源码指纹保留在结果；不是本次新增字段后的重新测量。

## 执行顺序编辑

新增 `bd_edit.operations[].op = set_sequence_number`：精确 pin ref、原 number/method 条件、新序号；保留原生 sequence call 身份和 activator，不按 pin 顺序推断。reader 返回 `sequence.id/number/method/label/position/size`；无 activator 明确返回 null。

多个 pin 可能指向同一个 call。plan 纳入所有这些 pin 及其关联闭包；原生 prepare/apply/revert 检查序号是否被占用。实际 after 检查所有共享 pin 的序号、标签和其他字段，记录真实 patch；逆向恢复原标签。

`bde-sequence-tool-02/result.json`：AEB_Core 副本三个不同 sequence call ×3，九次真实 Doge 编辑和回退通过；18 次占用序号 preview/prepare 拒绝；每阶段独立 public getter，baseline 恢复，无本实验遗留写入。三个 call 在同一个 fixture，不能当作三个 fixture。

失败 `bde-sequence-tool-01` 保留：原生 `setSequenceNumber:` 将方法对象传给 `updateLabelGONoBasic:methodName:`，产生 `155/` 而不是 `155/calc`；序号虽恢复，标签尺寸不同，正确返回 restore_mismatch。修复显式传方法名并保留原标签。`research-cleanup.json` 验证只修该标签，完整 native baseline 和独立 public 恢复。修复脚本第一次错误地要求 StoreToCache 返回 true（实际可返回 receiver），已按已确认动作完成收尾，不改历史失败为成功。

## 创建时初值（四类三轮通过）

`create_block.initial_value` 的 Python/Zod 合同已加入：cont 有界数值，sdisc/udisc 有界整数且符合符号，log 为 boolean，enumeration 为精确枚举项名称。仅 scalar 类声明允许；数组/矩阵/表格尺寸和值尚未开放。

结构 reader 从已有 component default configuration 读取标量值，保留 configuration OID、来源和 absent/unavailable/unsupported 状态；不调用会创建配置的 getDefaultValueConfigEntry。值不是项目/实例生效配置或运行时值。新增 Cebra IEEE 浮点解码。

首轮失败和恢复：`bde-initial-value-01` 在创建后读取未赋 activator 的 call 时失败；修复 null 处理。该次创建确实发生，保留 unknown 隔离标记直到 `research-cleanup.json` 证明仅移除本次新 occurrence/declaration、旧全图/声明恢复，再清隔离。

`bde-initial-value-02` 中 variable/parameter 成功，constant 初值未生效，被实际 after 检查拒绝并回退。`03` 直接改 detached data wrapper，重读仍为 0，正确判为不匹配并回退。下一版按反编译的 unique-data 路由将 wrapper 的 dataConfig 写回实际配置：普通标量使用 default config，常量等唯一配置使用 relatedClassConfig；不把 setter 返回成功当作值已持久化。

另一个数值边界：此镜像的 String asNumber 会截断小数，已改用 Number fromString（wbAsFloat）。每次仍要求实际默认值等于请求值。

## 仍需完成

表格/分布配置、公式绑定、新 enum 定义、嵌套 hierarchy/缺失 sequence call 创建；数据库身份负例和剩余 fault/lock eval；1000 节点规模；普通 BDE overlay 的视觉/缩放/窗口/Undo 验收。数组矩阵、现有sequence分配和九项cached确定性问题已有下述分项证据。GUI激活阻塞未改变，原生show/clear回执不能代替视觉通过。

所有相对证据目录均位于 `analysis/bde-experiments/2026-10-01`。当前支持范围以实际工具 schema、能力查询及版本绑定实验为准，不能称为“所有 blocks 和所有编辑已完成”。

## 标量编辑与读取可用性补充

- bde-initial-value-05：variable/parameter/constant/enumeration 各三次初值创建及恢复通过。message 初值未开放；04 的失败与恢复保留。
- bde-scalar-edit-01/02：cont、sdisc、udisc、log、enum 五种类型首轮及各三轮通过，均为真实 Doge Tool.call。实际 diff 仅目标默认值，额外全图读取为零；独立 public 默认值核对、旧快照拒绝、编辑逆向、创建逆向及整图/声明 baseline 恢复，无遗留写入。测试 oracle 为核验执行的全图读取不属于 edit 日志成本。
- bd_find 已按 model_name 返回图形 occurrence；configuration 查询返回已采集的默认配置及 absent/unavailable 状态。依旧不声称生效配置。补充 boolean 与数字的严格类型旧值/后置条件保护。
- bde-read-questions-02：九个确定性检索问题通过实际 Doge cached Tool.call，预期来自独立 field_getters 原始数据。涵盖三处同名 VxAct 实例、精确 ref、全部入边、sequence、方法正文、公式绑定及 runtime unknown。01 暴露测试错误地预期同名唯一，保留失败；这是旧观察检索验收，非新的在线读取或 LLM 理解评分。
- set_sequence 01错用显示名查询native alias，prepare无写入拒绝并清理创建。修复后02/03已通过，详情见下文。

## 执行方法与数组配置

- bde-sequence-assignment-02/03：新建 variable 的未分配 call → calc/91000 → init/91001 → 两次逆向 → 创建逆向，首轮及三轮通过。每轮未知方法与占用序号的 preview/execute 均拒绝。方法按当前 Main 所属方法集合中的精确名称解析，保存 native method 与 alias 身份，不能用显示名代替 alias。只分配已有 call，不创建缺失 call。
- bde-array-values-03：cont/sdisc/udisc/log 四种类型各一次真实 Tool.call 通过；array 可在创建时指定 max_size=4，native 默认长度变为4；set_array_values 改成三个值，独立公开 getter核对，精确逆向回到4个值再撤销创建。不是数组所有场景门槛通过。
- array-values-01：原生 EtasAPIArrayDataElement.isWriteProtected 错误地对 SGVariable 发送 dataElement，prepare拒绝未写入；改用原生 setPhysValue 内部相同的 dataElement.isWriteProtected 访问检查，未跳过保护。02 的 udisc 请求0等于默认0，actual diff正确为空，实验误断言必须有一处diff；正常回退并清理，失败保留。
- set_matrix_values 与 matrix max_size=[X,Y] 已接入，范围16x16，采用native values[x][y]；matrix-values-01非方阵四类型在AEB_Core副本通过，4x4→2x3，独立public默认值、负例、逆向及完整baseline恢复。

## Full read与当前创建布局

- array-full-read-01：小图四类型×3，field_getters与bulk_full全部原始已采集语义相等，真实计数代理、公开getter和实际Tool.call配置编辑/逆向。matrix-full-read-01四类型各一次同覆盖核对，逐字段219–221请求帧/450–542ms，bulk35–37帧/192–206ms。这是小图结果，不替代AEB性能门槛。
- enum_values已加入structure模型行和完整reader；尚需新的enum full-read同覆盖实验。完整bulk仍未覆盖所有26类或Module process正文。
- catalog-current-02：25类创建通过，resource因sequence frame与独立fresh图不相等失败，正常逆向完成。resource-layout-04同时记录retained/fresh：锚点[2226,1785]→[2230,1790]、标签0/-和font_height13不变，dirty0→0；这是reload网格变化。
- 源证据SGItemWithSpec.loadSourceForGraphicsDB的两条路径均调用fitToRaster: SGDefaultPaneCtrl.ascetDefaultRaster。生产创建只对新增functional GO执行同样对齐。resource-raster-01三轮创建/public/diff/逆向通过；随后sequence-node-01进一步发现connector未对齐，因此对齐范围扩展到新节点及其全部parts。

## 带序号节点移动与删除

保存原生call、manager、seqNo/seqAlias、label对象与几何，执行和逆向重新核对身份/归属/顺序。仅开放没有独立execution connector的普通selector call；特殊执行连线仍prepare拒绝。移动的postcondition要求所有共享pin保持call身份与绑定，sequence位置按节点delta平移。

- sequence-node-01/02保留失败：前者新connector在reload时移动导致edge endpoint差5，后者move后内存edge有斜线而fresh图补正交点。两次outstanding均已清空，public逆向核对通过。
- move正向现在通过已有原生折线构建接口重建每条incident边，保留原storage corners；inverse仍恢复逐点深复制的原路由。sequence-node-03在AEB_Core副本variable完整创建/连线/分配/移动/删除/逆向链逐阶段public/native核对通过。
- sequence-node-small-01：不同小图fixture，无activator普通call的完整move/delete链三轮通过；每阶段独立public，全native及声明baseline恢复。sequence-node-aeb-01（array/matrix/enumeration各三轮）运行中，接续先查结果及进程，不启动第二份在线实验。

完整G0–G7仍未通过。更改后的创建/移动分支还需扩展类型、fixture、旧节点、边多重性与特殊call负例；不得把三轮小图当所有blocks完整验收。
