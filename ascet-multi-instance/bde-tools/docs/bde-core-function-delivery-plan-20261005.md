# BDE 核心功能交付方案 r12

2026-10-05，修订 `bde-functional-delivery-r12-20261005`。
首要目标：Agent 能完整理解普通 BDE、精确建改连删、自动查看实际 diff、在原 BDE
显示修改，并按局部 patch 回退及回退自身。性能记录实际成本，不作为交付阻塞。

## 2026-10-06 最新namespace/ID复用保护与下一代码交付

原namespace身份缺口已通过隔离literal/operator新完整流程：各29次正式调用、合计
6次实际history、2次finalization，原模型/顺序/alias/配置恢复并释放材料。v2 fixed
finalizer先关闭redo、设置写入barrier；Main witness纳入pins，仅剩witness时native
retire仍拒绝。pins清空后read经已有lifecycle retire发行新generation，旧snapshot
实际write的WAL只有conflict，无prepared/started。实际同组件n17在generation24/26
被literal/operator复用。两个旧已释放scope元数据退休补验通过，没有模型操作重发。

下一代码交付转到variable/enum/message的bounded图外声明body审计、原对象材料捕获、
owner/definition/configuration依赖恢复和正式双向历史；不以delete/recreate替代identity。
随后补创建局部冲突、全部适用类型及所有层级通路，视觉/持久化/故障/真实Agent/
AEB_Core/业务原件恢复/包与43required继续保留。该两类型namespace增量不提升完整case。
5,839项0live分项复核及29项回归通过，生产默认关闭，整体未交付。
[最新证据及边界](../analysis/bde-experiments/2026-10-06/bde-create-namespace-status-01/README.md)。

## 2026-10-06 此前创建历史与收尾进度

literal/operator同对象undo→redo→再次undo及原状态finalization限定在线通过，
共6次实际历史、2次收尾；完整原native/source/顺序/alias及已捕获配置恢复，
两模型材料/witness释放、pending=false。成功历史路径26次、成功收尾路径13次
正式Tool.call，31份输入封存及5,116项零在线复核通过。失败verdict及各源码绑定保留。

下一具体交付先补allocator恢复后的namespace身份边界：收尾窗口阻止新写，
完整pins含Main workflow witness，复用审计scope lifecycle退休旧generation；
fresh read获得更高generation、旧snapshot不能操作复用ID。已保存literal/operator
generation为14/18，在线retire先核对inventory，不能盲用相同generation。
原模型精确恢复与scope metadata retirement分别记录，不修改已通过模型witness。

此后补variable/enum/message完整声明body原对象/owner配置/definition历史及局部
冲突、全适用类型和跨层通路。旧材料已释放的两个模型不重发undo/finalize。
完整case/full_delivery仍false；生产默认关闭，43required及全部最终交付要求保留。
[版本绑定证据和身份缺口](../analysis/bde-experiments/2026-10-06/bde-create-history-and-finalization-status-01/README.md)。

## 2026-10-06 此前创建捕获进度

literal/operator/variable真实创建及实际diff捕获分别14/14/15次正式调用通过；
原variable捕获失败另以12次正式调用只补元数据恢复，未重发创建。完整实际材料、
typed model/default/pins、顺序及离线diff/重复回执已核对；latest严格validator
改动后的正常在线证据为variable-02。各类型旧证据仍绑定各自源码版本。

下一具体代码缺口是created原对象双向历史及局部冲突保护：先接graphical literal/
operator材料，再补variable/enum/message声明body及owner配置/definition依赖。
审计真实allocator，不盲目回填source导致ID高水位回退。该实施顺序不缩减全类型
或跨模块目标；创建捕获通过不等于创建回退完成，完整case和整体交付不提升。
原forward原对象材料仍保留；业务原件恢复、视觉/持久化/故障/Agent/AEB_Core/包
继续阻塞最终完成。生产默认关闭。
[限定证据及复核](../analysis/bde-experiments/2026-10-06/bde-create-capture-status-01/README.md)。

## 2026-10-06 最新开发：打开原 BDE 后独立文本与移动保留通过

String/source与Point/source引用重生成修补已通过限定在线验证。四个隔离
operator_fanout场景122次正式Tool.call、12次A历史、16对四代show/clear；后三个
绑定当前Point桥接版本。独立literal/move B在A的undo/redo/再次undo中保留；端点
重叠preview与实际inverse均conflict、0setter，B恢复后A完整历史及原引用恢复通过。
实际draw、完整Main native/source/physical/drawing/alias、deep Undo、dirty、persisted
owner configuration纯净检查通过。所有成功材料释放，pending=false。

冻结规划只允许同位置等内容String，或实际before/after同对象同坐标Point的来源
对应；B的新Point继续保留自身，实际CURRENT/owned-cell/端点/sharing守卫不放宽。
原编译/规划失败及准确cleanup保留。3198份输入封存，V3共47339项0live复算通过；
V1/V2对回执种类/预期conflict分页的误判保持原失败，由明确契约检查修正。
source/configuration使用封存pure validator，不冒充独立重写。102相关离线测试通过。

截图视觉/缩放/滚动/关闭重开、新桥接另两结构及独立node/edge/顺序/共享/故障
仍未通过。create双向原对象历史、全类型和Class/hierarchy/Module/Project/message/
A2A/XPass、持久化、真实Doge/AEB_Core、业务原件恢复、安装包及43required要求保留。
完整case未提升；业务29份材料/hold不变，原件未恢复；生产默认关闭、complete=false。

[本批封存、复算及范围](../analysis/bde-experiments/2026-10-06/bde-open-editor-local-history-increment-01/README.md)。

## 2026-10-06 上一开发：原 BDE 四代实际 diff 绘制通过

隔离 operator_fanout 的 exact CURRENT connect→undo→redo→再次 undo，原画布
show/clear 三轮通过；正式 native 返回增加绘制次数、expose 和 overlay 状态后，
另一次回归通过。共108次实际 Tool.call、12次 inverse、16对 show/clear。每次
核对完整 Main native/source/physical/drawing/alias、deep Undo、dirty 和组件
persisted configuration graph；最终严格恢复并释放。2490份输入封存，40746项
离线复算通过，不连接 ASCET。67项相关离线回归通过。

新增 `--prepare-editor` 只在隔离夹具基线前打开 exact-owner 编辑器，记录打开
造成的配置变化（4 roots，27→29 nodes），然后重新建立正式基线。overlay 路径
仍不自动打开编辑器或重放 edit/save/Undo。配置验证限定 persisted storage，
不声称完整数据库或 effective configuration 验收。

打开编辑器后带独立 literal B 的 local connect 规划遇到 SGLiteralGODB source
reference TOUCHED_CELL_CONFLICT，局部 inverse 零 dispatch；独立 cleanup 先B后A
完整恢复。失败保留，不放宽守卫。截图视觉、缩放/滚动/关闭重开和这一UI条件下
的独立编辑保留仍未通过。全部其他类型/层级/Class/Module/Project/A2A/XPass、
持久化/故障、Doge/AEB_Core、业务原件恢复、安装包及43required保持原要求。
完整case未提升；业务29份材料与hold不变，原件未恢复，生产默认关闭。

[封存与复算](../analysis/bde-experiments/2026-10-06/bde-native-history-display-increment-01/README.md)。

## 2026-10-06 上一开发：独立几何保留与端点冲突通过

局部connect已在三结构保留literal B，分别绑定记录源码版本。新native身份保护
代码在operator_fanout进一步通过独立move B及literal兼容检查；A的undo/redo/再次
undo保留B。移动A端点时preview和实际inverse均conflict、0setter，WAL仅intent/
finished；B恢复后A三次历史及完整原引用恢复通过。六成功场景134次正式调用、
18次实际A history，全部实验原native/source/顺序/alias恢复，成功材料释放，pending=false。

source投影现在保护实际native图像中的几何和字段对象身份；wrapper对应仍保留
完整值/sharing和原owned字段守卫。失败move01/02/03及独立准确cleanup均保留。
新历史presentation入口解析祖先绑定，绘制所请求的一代实际patch；4新增测试、
67相关离线回归通过。在线show因原测试画布未打开而在callback注册前失败；
clear/purity及A清理通过，视觉未验收，不自动创建DEFAULT Project。

3484份原输入封存；26936项0live核对通过，含从实际patch重建完整native目标。
source全投影调用封存的pure validator，未冒充独立重新实现。29份业务材料/hold
不变，原件仍未恢复。完整case没有提升，生产默认关闭。

下一交付为准备具有精确owner及完整配置baseline的隔离原画布并验证历史diff，
补当前投影另外两结构、独立node/edge、顺序/共享冲突及故障；create和其他类型/
接口/跨Module/Project通路按自身依赖继续。全部原43required和最终交付目标不变。

[封存、复算及复现](../analysis/bde-experiments/2026-10-06/bde-connect-local-history-increment-01/README.md) ·
[source/native身份机制](bde-source-native-identity-projection.md)。

## 2026-10-06 上一开发：局部连线正式历史限定通过

局部 connect planner 已接固定执行器、正式 preview/bd_revert、每代实际 diff/WAL
和只读 terminal recovery。`operator_fanout` 隔离 Main 经22次 Tool.call 完成
connect A→独立 literal B→undo A→redo A→再次 undo A→cleanup B；三个 A 的历史
都保留 B。最终原 native/source 对象引用、physical/drawing/alias 全恢复，完整独立
witness通过，A、B、witness材料释放，pending=false。生产默认关闭。

此前 tools-04/06 的 source 恢复失败保留；tools-05 的旧较弱 pass 不升级。
修复保留 store/source normalization 的实际对应关系，再向当前活动 source 投影。
失败隔离组件已由独立 source repair 恢复，没有重发原操作或跨 epoch 重绑。
42相关离线测试、bridge构建、零写native预检通过；3242项离线审计核对690份源码、
WAL/祖先链、完整typed/public/native变化与最终恢复，0live调用。全部source投影
独立复算及整批独立封存未完成，不新增完整case pass。业务原件仍未恢复。

下一步扩展另两种结构、独立node/edge及geometry/order/endpoint/shared-reference
冲突、在线故障；原BDE显示与create双向历史按自身依赖继续。全类型/接口/跨模块
通路、持久化、真实Doge/AEB_Core、原件恢复、安装包及43required目标不变。

[本轮结果与复现](../analysis/bde-experiments/2026-10-06/bde-connect-local-history-status-01/README.md)。

## 上一开发：连线局部回退的完整零写规划通过

新增固定 `bde_connect_local_plan.st`、完整 immutable probe 和独立
`bd_connect_local_plan.py`。三个隔离 Main 结构均完成实际正式 connect A、独立 literal B、
零写规划 inverse A 保留 B、cleanup B、精确 A undo/redo/再次 undo；共66次正式
setup/cleanup Tool.call。规划器本身是 eval-only 固定入口，**未执行局部连线回退**。

独立计算完整 typed、native、source 引用/sharing、physical/drawing 目标；同时检查
实际 source 已拥有的字段/index/key/member 和全部脱离的实际 anchors。source store
替换既有包装对象时，使用已审计的身份对应投影，不将无关包装对象误算为 owned 新建。
原始误判失败和一次端点 literal 变宽导致位置冲突的失败均保留；全部实验精确恢复、
connect及规划witness材料释放，pending清空；独立literal B的正式可逆历史材料未由本轮
验证释放，不宣称全部registry材料清空。7项新 integrity 负例、39项相关离线测试与 production build 通过。
7102份原输入封存；v2独立18742项复算通过，0live调用。v1仅因 touched-cell 无序诊断
列表的遍历次序失败，原 verifier/失败保留；值、引用、sharing及所有 ordered 数据未放宽。

下一代码任务是将这些已核对目标接入 connect 局部执行器、每代 actual WAL、正式
preview/revert/recovery，验证 inverse/redo/再次inverse 保留 B；再扩展后来独立 node/edge
及重叠/端点/order/共享依赖冲突。纯规划不是这一项的完成判据。原 BDE显示、create、
全类型和跨层流程、持久化、真实 Agent/AEB_Core、业务原件恢复、安装包及43required
继续全部保留。默认production关闭；整体goal active，自动化暂停，性能不阻塞。

[代码、失败与独立复算](../analysis/bde-experiments/2026-10-05/bde-connect-local-plan-increment-01/README.md)。

## 上一开发：新增连线正式工具精确历史通过

三种隔离Main结构经实际Doge Tool.call完成connect→undo→保留原对象redo→再次undo，
共57次正式调用。完整actual per-head WAL、自动实际diff、离线重复/冲突请求、固定
公共bd_inspect(query=recovery)查询通过；完整typed/public及原native/source/alias/
physical/drawing witness恢复，材料释放，隔离pending为空。宿主固定命令已接adapter、
正式journal、preview、bd_revert和公共recovery；默认production仍关闭。

本次修正journal→live锁顺序、prepare失败准确discard、full Main connect门控和实际
顺序/绘制材料归属。完整native材料留WAL，Agent diff只返回摘要。144相关离线测试
（16项新coordinator/fault测试）及宿主构建通过；1388份输入封存，独立17712项复算
通过。故障恢复仅有离线验证，不宣称在线丢回执测试通过。

两次原始driver失败为JSONL解析和错误recovery入口，原失败未覆盖；独立核对与准确
材料释放通过。首次verifier错用fields descriptor代替value image的失败保留；v2
严格核对实际值、原字段/身份及有序成员，仅Dictionary/Set按无序内容多重集合比较。

下一代码交付：connect局部保留后续编辑及冲突、原BDE显示和create双向历史。全部
适用类型/接口/跨层/Class/Module/Project/message/A2A/XPass、持久化、真实Agent/
AEB_Core、业务原件恢复和安装包仍未完成。43required仍只CONTRACT-02离线accepted，
不提升完整case判定。性能不是功能阻塞，整体目标active，自动化仍暂停。

[正式工具证据](../analysis/bde-experiments/2026-10-05/bde-connect-formal-increment-01/README.md) ·
[独立复算与首次verifier失败](../analysis/bde-experiments/2026-10-05/bde-connect-formal-increment-01/README-verifier-v2.md)。

## 上一开发：新增连线的原生精确回退链通过

`bde_connect_history.st`已接固定eval宿主，`bd_connect_history.py`独立检查完整
typed/native graphical/物理/绘制准备与actual证明。实际capture冻结原/actual native
union及source anchors，后续prepare不补造历史；共享native/source目标写前一致性
检查、一次性signature、原created/registration复用和读别名tombstone已实现。

同隔离PID45476/32641、三个Main结构共四条actual创建→undo→原对象redo→再次undo
通过，4次forward/12次history执行。完整original native/source/alias/physical/drawing
witness恢复，全部材料释放。重复fanout的e4未被新对象复用，新连线发出e5；6次旧
owner/request或错误signature执行写前拒绝，完整actual head未变。164相关回归和
production宿主构建通过，3976份原字节封存，13680项独立复算通过，复算0live调用。

范围为fixed native/exact CURRENT，不是正式Tool.call，也不支持保留后续独立编辑。
下一项把actual connect材料、完整per-head实际WAL、ownership及unknown恢复接正式
六工具，再验证preview/edit/diff/inverse/redo链、局部merge和原BDE显示。正式接入、
全类型/跨层/Class/Module/Project/message/A2A/XPass、持久化、真实Doge/AEB_Core、
业务原件恢复和安装包均未完成。43required仍只CONTRACT-02离线accepted，整体目标
active；不开放默认production门控，不将此增量当作完整case通过。

[实际原生流程、当时源码和复算](../analysis/bde-experiments/2026-10-05/bde-connect-history-increment-01/README.md)。

## 上一开发：连线原对象材料捕获与零写前置

新增固定 `bde_connect_material.st` 与 `bd_connect_material.py`。插入前保留完整
native/source、physical/drawing roster、pin/owner/connector/point/map及原fanout。
实际创建后捕获分支只接受本请求的原生factory返回对象，核对完整roster只新增该对象、
原端点与registration身份，并保留created原件及detached checkpoint。receipt不把
新对象身份填入prepared阶段，也不授权执行或managed inverse。

当前真实验证范围为三种隔离Main结构的prepare→跨调用inspect→discard；9次重复/
未执行factory/未保留actual head调用拒绝，完整native/source/身份/顺序witness均未变并
释放。155项相关离线回归及production宿主构建通过。首次C#构建的变量作用域冲突保留。

actual-created捕获分支尚未在线执行；正式Agent journal接入、第一条精确/局部inverse与
复用原连线redo仍未完成。下一代码任务接这组材料及执行前CURRENT守卫，不用重建连线
替代原对象重做。其余43required、全类型/跨层/UI/持久化/Doge/AEB_Core/包/业务原件恢复
保持全部范围。状态机与独立SDK仍延期，性能不是交付阻塞。

[源码、在线前置、失败与独立复算](../analysis/bde-experiments/2026-10-05/bde-connect-material-increment-01/README.md)。
完整冻结图的独立复算使用[v3 verifier](../analysis/bde-experiments/2026-10-05/bde-connect-material-increment-01/README-verifier-v3.md)：
仅Dictionary/Set枚举按内容比较；全部物理/绘制及有序native成员逐项保留，原失败未覆盖。
2468项独立离线核对通过，原1575份封存文件及29份业务恢复材料/hold SHA均保持一致。

## 上一开发：Main 断线/删除双向实际历史通过

修正后的正式工具在隔离 PID45476/32641 完成两条新在线流程，各10次 Tool.call：
A→独立literal B→inverse A保留B→redo A保留B→inverse redo保留B→cleanup B。
完整typed/native/source/endpoint、物理/绘制顺序与实际graphical proof核对通过；
每个实际拓扑head已自动持久化，原对象/别名/source共享引用最终恢复，witness释放。

旧失效scope在同一进程、同一根及完整原材料证明下完成metadata终态认证，没有
重放编辑、setter或store。正式query补齐实际diff和head归属。恢复方向另一次写前
`False>>+`错误保留；完整CURRENT证明0模型操作和未store，固定零步放弃及正式
rejected查证通过，恢复未消耗的执行序号后以不同request完成cleanup。隔离pending
已解除，所有原失败result和事件保留；未跨epoch重绑或操作业务库。

145项当前源码相关回归、production宿主构建及9529项封存复算通过。限定范围为
Main的disconnect/delete与独立literal B；门控默认关闭，不提升完整required case。
下一功能交付为geometry/order/dependency冲突、connect/create双向历史与原BDE
show/clear，继续保留全类型/跨层/Module/Project/message/A2A/XPass、持久化、真实
Doge/AEB_Core、业务原件恢复和安装包。43required仍仅CONTRACT-02离线accepted。

[本轮代码、实际日志、原失败和复算](../analysis/bde-experiments/2026-10-05/bde-managed-topology-lifecycle-increment-01/README.md)。

## 历史开发：managed topology 已接工具，首次在线闭环失败

Main `disconnect_data/delete_node` 的固定执行器、正式 preview/revert、完整 actual head
归属、独立 typed/physical/drawing/graphical 核对及恢复查询已接入。新增显式
`ASCET_BD_MANAGED_TOPOLOGY_INVERSE=native_source_v1`，须同时满足已有六门控；默认关闭。
144 项相关离线回归通过，最终固定执行器及恢复 reader 的零写编译/绑定通过。

首次正式 disconnect redo 到 actual_head_normalization 后失败。只读原材料核对证实
native/source、物理/绘制顺序与 endpoint 目标匹配，但 registered diagram 已刷新，
generation 由 7 变为 10，连线别名变化。执行器在归一化前的通用 read 导致旧 source
checkpoint 不匹配并刷新缓存。已移除该 read；材料执行器本身捕获实际 post-store
native/source images。修正版仅完成零写预检，**未通过完整在线双向回退**。

失败的隔离 PID45476/32641 仍保留 unknown、pending 和原生恢复材料；未重发、
未重绑或清除隔离，未运行 delete 新写入。下一项先按实际原引用证明恢复/查证
隔离事务，再验证修正版 disconnect/delete→inverse→redo→inverse→cleanup。
业务原件恢复、全部类型/通路、显示及最终 43 required 验收均继续保留。

[本轮封存结果与复算](../analysis/bde-experiments/2026-10-05/bde-managed-topology-integration-increment-01/README.md)。

## 前一项通过：正式工具自动持久化 actual topology head

固定只读 `topology_owned_head_snapshot` 从真实 owned head 导出冻结的完整 Main
before/after、parent/drawing before/after、owner/previous owner、sequence/state 和
endpoint direction。缺少历史材料则拒绝，不读取 CURRENT 来补造历史。
正式首次 retention 和后续 handoff 增加独立 `topology_head_retained` WAL 事件；
先持久化完整实际历史，才能确认元数据移交。Agent receipt 只返回 owner、sequence、
state、SHA 和已保存标记，不重复传完整图与 roster，也不因此开放拓扑 redo。

断线与删除各8次正式工具调用通过：A→literal B→inverse A保留B→cleanup B，
日志 full before/after 与独立完整观察一致，原 native/source/IDs/physical/drawing
最终恢复。一个纯读取验证冻结历史/顺序，错误 owner/state 两次拒绝，完整 witness
不变并释放。105相关回归通过；随后补充畸形图拒绝，最终12项 snapshot/fault测试
通过。日志写入失败、快照响应丢失及恢复重读的验证范围是离线，不是在线故障验收。

首个 Smalltalk模板编译失败单独保留；完整 witness 证明未修改模型并释放。
原29份业务恢复材料及hold SHA未变，业务调用0，业务原件仍未恢复。
正式 managed topology redo 仍 `REVERT_UNAVAILABLE`；本增量不提升任何完整required
case。下一代码项为从已持久化 actual head 接正式 managed prepare、执行、actual
diff/order证明、确认和再次handoff。全类型/跨层/UI/fault/持久化/Doge/AEB_Core/
原件恢复/安装包及43required保持原范围，整体complete=false。
[实现、实际日志和独立封存复算](../analysis/bde-experiments/2026-10-05/bde-topology-head-snapshot-function-increment-01/README.md)。

## 历史代码交付：从 actual owned head 规划下一次逆向目标

已实现固定 owned topology planner，使用当前 inverse owner 的实际 before/after，
计算完整 Main typed、原 native/source、physical/drawing 逆向目标，并核对端点与
真实 CURRENT。每次实际执行保留冻结顺序描述符，不补造缺失的旧历史材料。
首次回退与后续 owned 规划共用已审计 material merge，原 forward 材料不覆盖。

断线和删除各8次正式 Tool.call 完成既有首次局部 inverse 和 B 清理；在保留 B、
已回退 B 两种 CURRENT 下，四次完整规划与独立 Python/source/order oracle 一致。
保留实际 head 的额外纯读取再次通过，合计5次；错误 owner/state 两次写前拒绝。
没有执行拓扑 managed normalization、redo setter/store；redo 仍 REVERT_UNAVAILABLE。
156项最终相关回归、212项封存复算通过。7个真实版本与原失败分别保存。

旧独立 clone oracle 的 CgRGBColor sharing 分裂失败保留；新增统一实际引用表，
独立按全冻结字段、精确引用、双向 sharing 和 detached anchors核对目标，等值
alias split/join仍拒绝。29份业务材料及hold未变，业务原件仍未恢复。

下一代码项为正式 managed topology prepare、durable actual/order证明、原生 dispatch、
确认和再次 head handoff。全类型/跨层/UI/fault/持久化/Doge/AEB_Core/原件恢复/包
及43required不据本规划增量结项，整体complete=false。
[代码、原失败与完整独立复算](../analysis/bde-experiments/2026-10-05/bde-topology-owned-function-increment-01/README.md)。

## 历史代码交付：实际拓扑head归属与完整执行图

固定`bde_topology_head_handoff.st`已接正式retention/handoff协议，确认完整
native/source终态、实际parent/drawing顺序、原端点证明、执行序号及状态后，
把本次真实before/after材料交给新inverse owner。它只移交元数据，不启用redo。

首轮真实断线暴露head typed图沿用了局部targets，遗漏后续修改的无关literal。
独立完整图核对拒绝，原失败保留；单独两次正式工具调用回退B，完整原件恢复
并释放witness，没有重发A。修复为执行前后读取完整Main图，再核对并恢复
原局部观察，不改变Agent原返回范围；随后再次核对native/source材料。

最终断线/删除各8次正式Tool.call通过：inverse owner完整before/after图与独立
观察相同，physical/drawing count delta为1及4，B保留，清理后完整原对象/source/
ID/order恢复。六项零写prepare/discard、149相关最终离线回归及stages核对通过。
两个真实源码版本分别封存；29份业务材料及hold未变，业务原件仍未恢复。

下一代码项为从当前owner的actual head生成下一次typed/native/source/order局部
逆向目标，接正式managed执行、actual diff和再次handoff，保留全部ORDER/CURRENT/
端点/日志证明。拓扑redo、geometry/冲突、connect/create、全类型/跨层、原图显示、
fault/持久化、Doge/AEB_Core、业务原件恢复、包及43required均不据本增量结项。
[实现、原失败、精确清理与独立复算](../analysis/bde-experiments/2026-10-05/bde-topology-head-function-increment-01/README.md)。

## 历史增量：正式局部断线/删除回退保留后续literal

固定`bde_topology_local_inverse.st`已接入正式`bd_edit`/`bd_revert`实验路径。
用真实before/after/current native/source生成局部目标，保留原parent/drawing/
endpoint/ID及写前完整CURRENT检查；实际执行后再观测、归一化并验证目标。
六个显式实验门控默认关闭，未把拓扑加入field managed白名单或绕过ORDER。

三结构×两操作共6次prepare/discard保持完整witness不变，0模型setter/store。
一条普通断线历史10次Tool.call通过；两条断线/删除A→修改无关literal B→
回退A保留B→回退B精确恢复的正式历史分别8次Tool.call通过，共26次。
完整typed target由Python独立三方oracle核对，完整原native/source对象、ID及
physical/drawing顺序最终恢复，preview/final witness均释放。

最终149项相关离线回归及generated stages检查通过；172项独立封存复算通过。
四份证据按3个真实源码版本保留，未改写旧manifest。29份业务恢复材料与hold
SHA未变，业务原件仍未恢复。两次拓扑redo仍REVERT_UNAVAILABLE。

范围仅同隔离epoch Main断线/删除的首次局部inverse，B仅literal；未验证geometry B、
正式拓扑重叠冲突矩阵或完整managed redo。全类型/跨层/UI/fault/持久化/Doge/
AEB_Core/包及原业务件恢复保持原要求，43required不提升，整体complete=false。
下一项为每次actual head材料归属及managed拓扑redo，同时补geometry/冲突和
connect/create完整生命周期。
[实现、真实工具记录与独立复算](../analysis/bde-experiments/2026-10-05/bde-topology-local-function-increment-01/README.md)。

## 历史增量：冻结source投影与纯图像局部合并

新增固定`bde_source_logical_images.st`与`bde_frozen_image_merge.st`。历史after/current
先按结构身份投影，再对冻结字段/索引/key/member/order进行三方合并；它不读取
活体实例字段、不执行setter/store、不提供write授权。默认source对应仍检查真实
CURRENT，显式只读历史模式单独标记，未知模式拒绝。

断线与删除的真实保留材料私有副本各5项，共10项；4条Point.y/literalString独立
修改的source inverse/actual inverse-of-inverse/final inverse通过，原Point引用恢复。
断线Point真实发生native-shared替换；删除Point沿用原引用，分别记录lineage。
owned引用及introduced集合冲突拒绝；冻结后私有活体变化不改变纯规划，但完整
真实CURRENT dispatch guard拒绝。Python独立修改完整original/applied源图核对所有
值及sharing。148相关回归通过，644份源码原字节/SHA封存，活体完整witness不变并释放。

这是**source图像规划层**交付，0formal Tool.call，不证明正式拓扑回退保留另一个
edit，也未验证真实native/source共享目标兼容及parent/drawing/endpoint完整移交。
下一代码项仍是正式native/source局部拓扑执行和managed redo，不能绕过ORDER证明。
此前首次exact inverse能力保留；全类型/跨层/UI/fault/持久化/Doge/AEB_Core/包及
原业务件恢复保持原要求，43required不提升，整体complete=false。
[实现、失败、复现与独立封存复算](../analysis/bde-experiments/2026-10-05/bde-topology-source-logical-increment-01/README.md)。

## 历史增量：source结构身份对应与正式forward归一化

固定source结构对应已实现并接入正式disconnect/delete的显式实验路径。
在各自source容器及blocks/connections/others角色内，节点按冻结class+ID，连线
按冻结class+四端点ID唯一配对；数组长度变化保留fresh数组、幸存成员使用原记录。
重复身份拒绝；没有旧对应的新记录不冒充旧身份。更多真实nested/type/new-record
场景仍须验证，不能把这项实现称为全类型支持。

两条隔离正式历史分别10次Tool.call，edit→自动actual diff→首次exact inverse→
严格原native/source/IDs/physical+drawing order恢复并释放witness。断线source
归一化23个primitive，删除13个。两个bd_diff各0Cebra连接/请求帧/响应帧。
三结构×两操作六次prepare/discard完整纯净性通过，148项相关离线回归通过。

两份真实旧材料的私有副本共8项验证：无关source aliasName沿每个实际inverse head
保留、owned等值不同引用写前拒绝、重复节点ID与重复连线四端点拒绝。副本的
source局部合并不等于正式native/source拓扑保留其他edit，尤其不能假定生成Point
自动沿用旧引用。此前失败保留，均未改活体模型并释放独立witness。

新门控`ASCET_BD_TOPOLOGY_SOURCE_NORMALIZATION=identity_v1`须同时满足Main、
原source捕获和exact topology配置，默认关闭，不启用managed拓扑回退。两个正式
回退自身请求仍REVERT_UNAVAILABLE。native/source局部拓扑合并、保留另一个正式
修改、实际parent/drawing/endpoint材料移交与managed redo仍是下一代码任务。
原BDE显示、全类型/跨层、fault/持久化、真实Doge/AEB_Core、业务原件恢复和包不删减。
43required不提升；业务实例未调用，29份恢复材料与hold SHA不变，原件仍未恢复。
[代码、复现与642份源码封存证据](../analysis/bde-experiments/2026-10-05/bde-topology-source-correspondence-increment-01/README.md)。

## 历史增量：拓扑原材料与限定首次精确回退

disconnect/delete 已接首次观察前完整 native/source 原对象捕获，并记录各次执行自身的
before/after native/source/typed head。原五 block 的 parent/drawing/endpoint/detached
及 ID guard 保留。新固定 CURRENT context 修正了 capture wrapper 不能读恢复原对象
集合的问题，不重建对象、不重绑 epoch。

显式实验门控下，首次回退先确认完整 actual after 未被后续修改，再对实际原恢复
操作及 store/read 附带的字段、端点集合和 source 引用执行观测 primitive 归一化，
重算最终实际 diff。正式断线、删除一个带三条关联线的节点分别通过9次 Tool.call；
完整 native/source/IDs/physical/drawing witness 都恢复并释放。两次 bd_diff 均0Cebra帧。
三结构 × 两操作的六次 prepare/discard 纯净性通过，147项相关离线回归通过。

旧失败保留：首次预检拒绝未写；第二个不同请求恢复公开拓扑，但 native/source
身份未恢复，仍failed。单独eval修复以7native+4source primitive恢复原件，独立
witness确认后清quarantine并释放，不重发edit。29份业务恢复材料与原hold字节未变；
业务原件仍未恢复。[代码、原始证据与104项封存复算](../analysis/bde-experiments/2026-10-05/bde-topology-material-increment-01/README.md)。

能力范围仍有限：仅Main普通拓扑、完整after未变化的首次disconnect/delete回退。
`ASCET_BD_TOPOLOGY_EXACT_INVERSE=native_source_v1`及source capture须显式启用，
默认关闭。独立修改保留、source结构身份对应、connect/create的正式双向历史和
拓扑inverse-of-inverse未完成；两个正式redo请求仍明确REVERT_UNAVAILABLE。
此增量不提升任何完整required case，不替代原BDE显示、全类型/跨层、Doge/AEB_Core、
业务原件恢复和最终包。下一代码交付为结构身份对应和每个实际head的局部合并/移交。

## 本次更改：以功能缺口安排开发

按用户最新要求，核心功能完整是交付重点；一秒目标不再阻塞交付。
本次在 r12 内调整任务顺序和依赖，不新增方案版本、不提升功能或 case 状态。
六工具、全部原生适用类型/owner/scope、八工作流、43 required case、独立 oracle
及原有场景/次数保留；状态机、独立 Code Mode SDK、新宿主继续延期。

开发单位是“一个正式工具操作的完整生命周期”。先把每项缺口落实为代码任务，
再安排能验证该修改的最小实验。材料捕获、编译探针或私有副本验证只提供证据，
不能代替连线、创建、删除或回退的正式交付。类型清单和 schema 不能代表能建模。

由一个 Agent 交替推进三个任务组：普通编辑及回退、原 BDE 显示、类型及跨层通路。
局部回退仍是下一核心代码任务；原 BDE show/clear 的实现和限定验收可使用版本兼容、
实际已确认的 change，独立推进，不等整个三方冲突矩阵完成。创建及跨层适配代码也
按自身依赖推进。相关在线写入仍须满足本操作的身份、日志、冲突和精确恢复条件。

## 早前增量与运行态记录

拓扑规划增量：connect/disconnect/create/delete的实际 before/after/current值规划已实现，
支持自身inverse、独立修改保留、完整occurrence/pins/incident-edge闭包、输入占用、
endpoint owner/model身份、实际附带字段和count delta；新引用/后续修改阻止删除。
修复初稿直接修改输入pins的问题。145项相关离线回归通过；固定Smalltalk规划在三种
隔离结构上90项private typed案例与Python一致，三个完整native/source/IDs/order纯读
witness均不变并释放。私有model/共享occurrence行不证明实际声明或enum工厂可用。
这不是正式拓扑edit/inverse验收，未开启生产dispatch、未提升任何完整case。
下一具体实现是完整原native/source head捕获、结构source身份对应及原parent/drawing/
endpoint证明向新managed inverse移交；不能把delete加入field白名单后绕过原ORDER检查。
[拓扑规划实现与封存复算](../analysis/bde-experiments/2026-10-05/bde-topology-planning-increment-01/README.md)。

最新改接增量：rewire_data已接固定native/source实际patch、自动diff、首次inverse与
managed inverse-of-inverse。旧失败A以不同请求完成inverse→redo→最终恢复，6次Tool.call；
新版本e2从p12改接p10、保留另一fan-out和独立literal，双向历史及最终恢复通过，9次Tool.call；
同一edge后续改接后旧inverse写前拒绝，通过，7次Tool.call。三条完整native/source/sharing、
IDs与physical/drawing顺序witness全部恢复并释放；109项相关离线回归通过。

修复真实Set>>first错误、新prepare缺少parent checkpoint及原wrapper的manager委托。
固定当前规划器使用原保留材料；历史兼容分支从完整原wrapper.graphObject及原basic.manager
字段引用核对parent，不重建对象、不猜原parent、不重发旧请求。历史失败verdict保留。
正式inverse自有actual diff；3次diff查询各0连接/0请求帧/0响应帧。
限定同epoch隔离operator_fanout证据，不代表所有连线类型、拓扑或视觉验收。
生产local inverse默认仍关闭，r12及43required case不提升。
[改接代码与独立复算](../analysis/bde-experiments/2026-10-05/bde-rewire-function-increment-01/README.md)。

下一项转入connect/disconnect/create/delete的实际拓扑patch、原对象材料移交与双向历史；
其余field/fault/视觉/持久化、全类型及跨层接口、真实Doge/AEB_Core、业务原件恢复与包仍未完成。
以下route增量按封存版本保留，当前任务以本段和任务板最新增量为准。

当前最新增量：route-02未知事务已用不同事务的6项 native字段patch及4项 source引用
patch严格恢复，未重发原edit。正式 bd_inspect两次调用确认 compensated、保留原
outcome_unknown/错误，完整witness再核对并释放，pending已清。执行补偿仍限eval隔离原型，
生产提供只读分类；不是通用自动fault恢复。

已实证保留转折 x153重新加载为原生raster x150；prepare/validate已增加原生网格预检，
不放宽reader guard。不对齐route正式写前拒绝、完整witness不变，通过，2次Tool.call。
对齐route修改→独立literal→inverse/redo保留literal→最终完整恢复通过，9次Tool.call。
释放witness后正式历史恢复查询与bd_diff共3次Tool.call、0Cebra帧、日志不变；diff显示
实际6项native字段变化和source patch进度。75项相关离线回归通过，不表示完整case验收。

下一任务转为其余field/layout/wire/create/delete完整生命周期及准备后变化/其他冲突与
fault/视觉/持久化边界。生产 local inverse默认仍关闭，r12和43required case不变，
全类型/跨层/Class消息、真实Doge/AEB_Core、业务原件恢复和包仍未完成。
[最新连线、恢复与正式历史证据](../analysis/bde-experiments/2026-10-05/bde-route-function-increment-01/README.md)。

以下为先前增量的原始状态记录，旧失败verdict不改；当前状态以上段及任务表最新增量为准。

最新进展为固定 source 身份归一化及 `native_field_execution_v3`，显式实验门控下
接入正式工具：两个不同 literal的局部 inverse/redo保留另一修改、move_node的相同
历史均通过，各9次 Tool.call；同 literal重叠修改 preview写前拒绝通过，7次 Tool.call。
这三项最终完整 native/source/IDs/order witness恢复并释放。仍是限定操作/版本/隔离组件，
生产 local inverse默认关闭，43 required case未提升。

新 set_edge_route试验在 store后首次读取失败，报 retained/fresh连线几何找不到对应对象。
2次 Tool.call，状态 outcome_unknown，native/source已变，尚未恢复；原字段/source和
witness仍保留。当前 PID45476/32641普通写入冻结。下一代码任务首先是固定 retained
材料只读诊断、不同事务的 guarded恢复及 durable分类，不重发 edit、不删除 pending，
不重启丢失恢复引用。raster投影为待证实假设，不是已确认根因。

[最新封存证据与复算](../analysis/bde-experiments/2026-10-05/bde-source-normalization-progress-01/README.md)。
下方为前一增量的原始记录，失败 verdict保留，当前状态以本段和任务表最新增量为准。

最新增量：固定局部 native/source 执行已在明确实验门控下接入正式工具。
operator_fanout 一条 literal 的 edit→实际 diff→inverse→redo→最终恢复通过，
15次 Tool.call，四个不同 change_id/after_snapshot；完整345对象、原身份/order/source
核对通过。受限既有故障终态/元数据恢复及后续正式历史通过，不代表通用故障恢复。

两个不同 literal 分别编辑后，回退 A 保留 B 的正式 preview 仍失败；最新诊断
确定拒绝发生在 **source_merge**，`Native merged target touched-unit conflict`。
7次 Tool.call 后通过两次 distinct guarded 逆序回退完成基线恢复并释放 witness。
该试验保留 passed=false/restored=true；恢复基线不是独立修改保留通过。
生产 local_field_inverse_capable 仍为 false，MAIN-03C.5d 不结项、43 required case
不提升。下一项定位实际 source patch unit/引用合并，不降低 sharing/身份 guard。
[最新实现、失败与证据复算](../analysis/bde-experiments/2026-10-05/bde-local-source-dispatch-summary-01/README.md)。

下方 source capture 记录属于之前的增量，最新局部 dispatch 状态以上述证据为准。

指定隔离 PID45476、端口32641，epoch 为 `45476/2026-10-05T00:57:36.9808571Z`。
本轮已经通过 API 打开 manifest 精确数据库、核对路径/PID 并释放连接；旧 fresh
预检“数据库未打开”的失败保留。当前三结构各三轮 read/find/inspect/完整分页
通过（87次 Tool.call），不能外推到所有类型和接口语义覆盖。

修正了 capture 绑定失败时 raw graphical-reader 可能重复清理的问题。staged_v1
source capture 准备真实保留99个 source 原对象图像，11项私有 patch 检查通过；
完整模型准备/丢弃 witness 不变并释放，没有模型 setter/store。

operator_fanout 一条带 identity_v1 capture 的 literal 正式完整历史通过：16次
Tool.call，四个不同 change_id/after_snapshot，自动实际 diff、inverse→redo→
最终恢复及完整原生/source 独立 witness。四个终态均保留99个 before/165个
after source 对象材料，source 根身份保持一致。120项离线回归通过；三份试验
各601个源文件已按原字节/SHA封存。上述为限定材料接入/历史，不是局部三方
回退或全类型验收，也未覆盖绑定失败清理分支的在线故障注入。

下一代码交付仍为 MAIN-03C.5d：修复已接入实验路径的 source 三方合并，
验证无关修改保留、重叠修改写前拒绝、按自身实际 patch 回退及回退自身。
生产 local inverse 仍关闭。MAIN-04 显示及其他功能的独立开发继续；source
持久化、业务原件恢复和全部完整验收仍未完成。
[本轮实现与复算](../analysis/bde-experiments/2026-10-05/bde-source-capture-summary-01/README.md)。

## 已记录实现：阶段执行器和限定正式历史

固定模板已拆为 common、prepare、guard、apply、terminal 与 dispatcher。宿主
按阶段加载固定依赖，显式启用 `ASCET_BD_OPERATION_EXECUTOR=staged_v1`；默认
仍使用 legacy 路径。所有操作分支和原有五 helper/proof 合同保留，原生对象通过
同一 frame 传递。请求不能指定代码、资源或任意 selector。阶段拆分已实现并在
下述范围验证，每个操作族的进一步依赖拆分及全类型认证仍未完成。

该实验版本的隔离实例保留 8 个数据库文件后重启，当时核对 PID27044、端口32641，epoch
为 `27044/2026-10-04T22:54:05.5335975Z`。该 epoch 已结束；业务实例
与业务原件未参与本轮写入。旧 epoch 的内存引用仍禁止重绑。

- 固定阶段的零写编译、绑定、preview 已通过；fresh345 原生对象、字段/source、
  IDs 和 physical/drawing order 不变，witness 已释放。整体 preflight 的失败
  verdict 保留：跨重启 source sharing 与旧恢复基线不同。
- 三种结构各三轮正式 read/find/inspect/完整分页预检通过。
- 三种结构各三轮 literal 正式历史通过：9 条流程、144 次 Tool.call，包含
  edit→自动实际 diff→inverse→redo→最终恢复。每条保存四个不同 change_id 和
  after_snapshot；严格 v2 原生/source/root proof、完整公开/native 基线和独立
  witness 均通过。没有重发旧 undo 或旧 compensation。
- 这些证明当前 epoch 内的限定 literal 历史，不覆盖局部三方冲突、原 BDE 视觉、
  其他图操作、所有类型或跨重启持久化；没有新增完整 required case pass。

[实现与独立复算](../analysis/bde-experiments/2026-10-05/bde-staged-executor-summary-01/README.md)
保存了 raw 证据、源码封存和恢复范围。29 份业务原件恢复文件及 hold 字节未变；
原件仍未恢复，继续阻止最终交付。

## 保留的失败与功能缺口

MAIN-03C.5d 新增限定增量：Python 三方字段/layout 规划已接首次 inverse、
inverse-of-inverse、preview、日志准备和恢复查证；固定 native 值规划器在三结构
各三轮、144 个私有值案例上与 Python 一致。递归 typed copier 已替换观察快照及
delete/inverse 的 typed 复制。92 项离线回归通过；新版本一条 literal 完整双向
历史和一条 delete 原对象恢复通过。完整源代码及独立证据均已封存。

5d 仍未结项：production local_field_inverse_capable 为 false。最新实验路径已接入
原生/source 局部执行并通过单条 literal 历史，但 source 合并拒绝独立修改，正式
第三方变化/重叠冲突历史未完成。当前没有放开生产写入；delete 的回退自身也未由本轮实现。
[最新实现与复算](../analysis/bde-experiments/2026-10-05/bde-local-field-guard-summary-01/README.md)。

旧 epoch 的一次 literal inverse 故障已完成 4 个 source slot 补偿与正式恢复确认，
fresh 345 原生对象、字段/引用、IDs、physical/drawing order 和完整 source 核对通过。
这是既有故障的局部验证，不是正常 edit→inverse→redo→最终恢复的完整验收。

此前预检 `bde-five-block-source-preflight-02` 已结束，结果失败：

- trace 记录 `bde_structure_read.st` 和 session guard 编译通过；随后
  `bde_structure_edit.st`（126490 字符）在 EsCompiler 调用返回后、结果类型确认
  完成前断线，报 `920 No connection`。尚未到五 block 绑定/操作执行。
- 指定的隔离 PID45256 已不在进程列表，32641 无监听。上述记录定位了阶段，
  没有证明模板长度、语法或某个 native 方法就是退出根因。
- 重启后的完整 source 与旧恢复基线的共享引用关系不同；忽略共享关系时 leaf 值
  和 shape 相同只是诊断信息。持久化精确恢复未通过，不能降低 oracle 或称为恢复成功。
- 预检没有执行模型 setter/store；进程退出后无法完成 fresh unchanged proof。
  其 witness 保留记录不代表原生内存材料还能使用，禁止将旧引用重绑到下一 epoch。

失败记录和 582 个源文件的原 SHA/字节已封存。业务原件的恢复材料与 hold 保留；
原件未恢复仍阻止最终交付。PID45256 是历史退出实例；该失败之后已有隔离重启，
编译退出根因仍未证实。[失败实验](../analysis/bde-experiments/2026-10-05/bde-five-block-source-preflight-02/result.json)。

## 架构与工具合同

| 层 | 交付内容 |
|---|---|
| 六个 Agent 工具 | 精确 scope/object/pin/edge/instance 引用；typed schema；完整分页与预算；已验证能力可查询 |
| Snapshot 与索引 | 不可变语义/拓扑/layout 视图；完整性与缺失内容明确；离线 read/find/diff/history |
| 操作协调器 | 单活体连接串行业务操作；持久 intent、局部 guard、实际观察、confirmed/failed/unknown 与恢复查询 |
| 按操作的原生执行器 | 固定编译块和经审计原生调用；只加载本操作所需依赖；共同的材料捕获、patch、proof 合同 |
| Journal、inverse 与显示 | 实际 before/after patch、after_snapshot、新 inverse 的日志；原 BDE overlay；精确恢复材料内部保留 |

保留 `bd_read / bd_find / bd_inspect / bd_edit / bd_diff / bd_revert` 与 Doge typed route。
不增加独立 SDK。能力状态按 type×owner/scope×operation 记录：implemented、正式入口
可用、限定在线验证、完整 case 验收。声明了 schema 或 factory 不能宣传为功能已完成。

每个 edit 的合同是：精确定位 → 无模型修改预检 → 持久 intent → 局部写前 guard →
执行与 store 附带变化捕获 → actual diff/proof → durable outcome → after_snapshot。
回执足以确认本次修改，Agent 不必为 diff 重新读取整图；unknown 不能当作 failed
盲重发。日志/分页和已记录 diff 不额外连接 ASCET。COST-01 保留。

inverse 根据实际 patch 生成，以字段/index/key/member/order 与结构不变量检查冲突，
保留无关修改，并形成可再次回退的新 change。原生身份和完整恢复材料留在内部，
不得从 JSON 或同名重建对象冒充精确恢复。show/clear 独立于模型编辑，须验证模型
与 Undo 纯净性以及实际可见效果。

## 原生执行器改造任务

| 任务 | 改什么 | 退出条件 |
|---|---|---|
| MAIN-03C.5a 编译定位 | 保存本次退出材料；审计 compile result/class lookup 边界；在新的精确隔离实例先验固定 reader，再逐依赖预检 | 每步 source hash、阶段、返回/异常、帧可追溯；无 setter/store；不重复未知结果调用 |
| MAIN-03C.5b 按操作拆分 | 从大编辑模板拆出公共材料/guard、field/layout、wire、create/delete、inverse；各模块依赖显式，保留固定五 block proof 合同 | 宿主仅编译当前操作所需模块；旧 guard/proof 不丢失；每个模块有隔离零写预检 |
| MAIN-03C.5c 持久 source 提交 | 沿 sourceKey/cache、setModify 与数据库提交调用链审计；验证 source patch 的 dirty/store/flush 时序 | 不盲加第二次 diagram store；严格 native/source 前后核对与重启后 source fidelity 通过；进程身份分开 |
| MAIN-03C.5d 局部三方合并 | 统一 Python/native/source 的 patch 单元前置条件、独立变化合并与 inverse_expected | 重叠写在修改前拒绝；同容器/同投影无关变化保留；不回填整份旧 source |
| MAIN-03C.5e 首条闭环 | literal 正式 read→edit→actual diff→原 BDE show/clear→inverse→redo→最终恢复；接故障状态查询 | 正式 Tool.call 与严格独立 oracle 全通过；完整日志、after_snapshot、恢复材料归属和显示证据 |
| MAIN-03C.5f 扩展操作 | comment/move/route、connect/disconnect/rewire、create/delete 按项复用协调器并各自验收 | 每项具备正式入口、局部实际 diff、冲突、完整双向历史、显示及独立恢复核对 |

当前退出条件：5a 的固定阶段零写预检已限定通过，退出根因仍未确定；5b 已交付
阶段拆分，操作族拆分未完；5e 已通过上述 literal 双向历史，冲突及显示未完。
5c 持久 source、5d 原生/source 局部三方执行、5f 其他操作保持未完成。下一核心代码
任务为 **MAIN-03C.5d**；**MAIN-04** 原 BDE 显示可独立交付，5c 持久化同时按
实际 setter/store 路径审计。fresh 新 epoch 检查有必要，旧 epoch 成功记录不重复计数。

5d 的明确交付是统一 Python、原生字段和 source patch 的三方预期：由本次实际
before/after patch 与当前值计算局部 inverse_expected，检查同一字段、index/key、
member/order 和结构依赖。重叠修改在 setter/store 前拒绝；同对象、同容器、同
source 投影内的无关修改保留。source 的实际写入仍使用保留的原生引用，只反转
属于本 change 的 patch 单元。准备后变化须在执行前再核对，未知结果查证后处理。

用正式 Tool.call 验证独立字段/同容器无关变化、重叠字段/顺序/依赖冲突，以及
inverse→redo→最终恢复；独立 oracle 同时核对原身份、完整 source sharing 和
保留的第三方变化。literal 原 BDE show/clear、Undo 纯净性与可见证据独立接入；
comment/move/route、断线/改接/连线、删除/创建逐项复用并交付同样的闭环。
每项新验证都必须对应代码变化、失败或尚未解决的功能缺口。

这些是代码交付任务，不能以新增探针/编译数量结项。5a 不要求先重复整个历史；
5b/5d 的静态与离线实现可以在隔离进程恢复期间推进。5e 的在线写入必须满足该操作
稳定预检、实际 journal/恢复合同及精确当前实例条件。5c 保留为必要持久化验收，
不能把 epoch 内恢复证明外推为重启后恢复；未通过时不得声明持久化恢复已交付。

拆分后的缓存若采用，只能按 source hash + runtime/epoch/依赖版本绑定固定块，
重启失效；不开放 Agent 任意 Smalltalk，不跨 epoch 复用 remote handles。
一次失败先定位具体阶段、保留状态，下一次实验须有代码/诊断假设变化。
source 持久化缺口来自静态假设，实际修复调用和时序仍须审计验证。

## 按功能交付的顺序

| 包 | 功能 | 完成判据 |
|---|---|---|
| F1 / BDE-01、02 | 完整 read/find/inspect；literal/comment/move/route；断线/改接/连线；删除/基础创建 | 每项正式工具闭环，精确双向历史与原 BDE 显示；稳定当前版本验证 |
| F2 / BDE-03 | variable/parameter/constant → enum → message → component/公式 → 数组/矩阵/分布/表 → 其余原生适用类型 | 声明/定义/occurrence/端口逐 type×owner/scope 验建改连删恢复；不能只复用已有模型 |
| F3 / BDE-04、05 | hierarchy 边界；Class 输入/输出/in-out、argument/return、字段 get/set 和 caller | 同名/层级/实例精确绑定；所有受影响 caller 的实际变化与局部回退通过 |
| F4 / BDE-06 | Module message 收发；Project A2A/XPass 绑定、执行配置；Class/hierarchy/Module 端到端路径 | 按合法接口逐段连线，逐资源日志和失败补偿；完整生命周期与执行配置验收 |
| F5 / BDE-07、08 | 故障/身份/视觉；真实 Doge；指定 AEB_Core；业务原件恢复；安装包 | 43 required case、全类型支持矩阵、真实安装使用与原件恢复全部通过 |

跨层路径不能直接跨 scope 接边；连线核对 pin 方向、类型/shape、owner/scope、
占用输入和 fan-out。删除分别处理 occurrence 与共享声明/定义，并核对受影响引用。
多资源路径记录部分成功与补偿状态，不宣称全局原子提交。A2A/XPass 模型绑定与
执行配置不冒充未经实际测试的外部总线传输。

显示和验收跟随每项操作接入。顺序用于组织交付，不是全局开发锁；没有无关类型
或 case adapter 的完整验收，不阻止独立实现。每项活体写入自己的前置条件不放宽。

## 可执行任务与阻塞处理

| 顺序 | 具体代码交付 | 本项完成判据 |
|---|---|---|
| 当前运行前置 | 恢复精确隔离库、fresh read、gated source capture 准备 | 当前 epoch 完整身份/读纯净性核对；零写准备真实捕获原材料；失败保留 |
| MAIN-03C.5d | 把 native/source 原引用材料接入三方局部执行及回退自身 | 正式 edit 的实际 patch；无关修改保留；重叠写前拒绝；双向完整历史及身份/sharing 恢复 |
| MAIN-04，可独立推进 | 原 ASCET BDE show/clear 与删除、连线、字段修改标记 | 实际可见；模型/source/Undo 纯净；缩放、滚动、关闭/重开生命周期按原 case 验收 |
| MAIN-02、03D、5f | comment/move/route、disconnect/rewire/connect、delete/create 按操作接日志和 inverse | 每项精确 pin/edge/occurrence 定位；实际附带变化记录；局部冲突和回退自身通过 |
| MAIN-05 | 每个适用类型的声明/定义、occurrence、端口、编辑与删除 | variable/parameter/constant、enum、message 优先；随后公式/组件、数组矩阵/表和其余原生类型；逐 type×owner×scope 验收 |
| HIERARCHY / CLASS | 层级接口及 Class input/output/in-out、argument/return、字段 get/set、caller 更新 | 同名和多实例精确绑定；跨调用正式提交；受影响 caller 的实际 diff、局部恢复及回退自身 |
| MESSAGE / FLOW | Module message 收发、Project A2A/XPass 绑定及执行配置、connect_path | 按合法边界逐段连接；资源分组实际日志、冲突、部分失败/unknown 查证及补偿；不直接跨 scope 接边 |
| 持久化与交付 | dirty/cache/commit、重启 source fidelity、真实 Doge/AEB_Core、原件恢复、安装包 | 43 required case 全通过；原件恢复；实际安装使用；全部普通适用类型/通路覆盖 |

每个操作记录“缺实现”和“缺验证”两份清单，且注明精确版本与资源范围。通用
适配器覆盖与正式验收覆盖分开记录；原生不适用的类型/作用域组合须有审计依据，
不能用它免除任何 required case。逐类型创建必须实际新建，不能用复用已有节点替代。

发生运行态阻塞时，先保留材料、定位阶段并隔离受影响资源。只有代码或诊断假设
改变才重试；两次有新假设的尝试仍不能恢复时，记录下一诊断交付，转做 MAIN-04、
MAIN-05 或接口/通路的独立实现，后续有新证据再接续在线验证。此规则改变开发
调度，不放宽写前条件、删除保护、unknown 查证或最终精确恢复要求。

验收脚本随对应功能接入，采用原有场景、次数和完整独立 oracle。既有成功仅在
源码/实例范围兼容时复用；源码变更、失败、运行 epoch 变化或未解决问题才补验。
性能保留耗时、真实帧数和覆盖数据，不新增延迟优化主线或性能专用重复试验。

## 验收与汇报

报告按功能列：已实现、正式可用、限定在线验证、完整验收，以及缺实现/缺验证、
当前恢复状态、证据版本和下一代码交付；不用实验数或测试数表示完成百分比。
隔离探针、私有对象试验、正式 Tool.call、真实 Doge、完整 case 分别标明证据范围。
失败原件及旧版本 pass 都保留，不能把修方案或封存源码记成新功能 pass。

全部 43 required case 与原有独立 oracle/场景/次数保持不变。PERF-01/02/03
只报告；完整分页、成本合同、精确身份、局部冲突、回退自身、unknown 恢复与原
BDE 显示仍是必需功能。最终测试使用精确隔离副本中的
`\PlatformLibrary\Package\AEB_AutomaticEmergencyBrake\Private\AEB_Core\AEB_Core`。
真实 Doge 任务不能被直接 Tool.call 夹具替代。

业务原件恢复、持久 source fidelity、全部适用类型/接口/通路及安装包仍未完成。
自动化保持暂停，不新增 subagent。只有所有功能和交付验收达标才停止整体目标。

[任务表](bde-core-function-workboard.json) · [覆盖矩阵](bde-core-function-coverage.json) ·
[本次调度调整与核对](../analysis/bde-experiments/2026-10-05/bde-functional-focus-plan-01/README.md) ·
[原 r12 修订记录](../analysis/bde-experiments/2026-10-05/bde-functional-delivery-r12-01/README.md)。
