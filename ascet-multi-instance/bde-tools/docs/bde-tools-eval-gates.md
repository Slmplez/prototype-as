# 普通 BDE Tools Eval 门槛 v2：核心功能完整交付

2026-10-05 当前执行方案为 **r12：按操作交付完整 BDE 核心功能**。
性能只报告；六工具、全类型/层级/Class/Module/Project/message/A2A/XPass、
43 required case 与独立 oracle/原有次数保留。
下一代码任务拆为 compile/result 定位、按操作固定执行器、持久 source 提交、
局部三方 guard、首条正式双向历史和其余图操作；显示与验收随每项操作接入。
旧 epoch 的一次 source 补偿已正式确认，但完整正常历史尚未通过。
最新零写预检在大编辑模板编译结果确认阶段断线，隔离进程已退出；
跨重启完整 source 共享关系不同，持久化精确恢复未通过。旧内存引用不重绑。
读取/离线日志/独立实现继续推进；相关在线写入仍须满足自身稳定预检与恢复条件。
本次修订没有新功能 pass，整体交付尚未完成；原件恢复和实际包仍必需。
[当前方案](bde-core-function-delivery-plan-20261005.md) ·
[最新失败证据](../analysis/bde-experiments/2026-10-05/bde-five-block-source-preflight-02/result.json)。

## 历史方案与规范（下方保留原记录，case 条款不变）

当前执行方案为 **r8：核心功能完整交付优先**，见
[五个功能包与下一项正式代码交付](bde-core-function-delivery-plan-20261005.md)。
性能只报告；每项操作同时验实际diff、冲突、精确双向恢复与原BDE显示。
字段patch绑定/编译与非零私有执行已通过；实际模型恢复仍未验证，见任务表最新增量。
本次仅修订方案，没有新增功能pass；下方增量和旧方案按各自记录版本保留。

2026-10-04 用户调整为核心功能完整优先。机器策略升级
`bde-tools-eval-v2-functional-delivery`：PERF-01/02/03 改为非阻塞报告；COST-01
与功能正确性保留，既有 [FLOW eval](bde-signal-flow-eval.md) 14 case 纳入 G8，
全部类型覆盖/Doge/AEB_Core/package 纳入 G9。原实验与旧 ledger 不改写。
接口读取或单 message 创建通过不能授予完整通路编辑通过。当前执行见
[核心功能方案](bde-core-function-delivery-plan-20261004.md)。

当前执行方案 r7 按 BDE-01–08 的实际工具流程交付，复用独立验收入口。
先闭合一条字段/layout 历史流程，再补连续操作、类型和跨组件能力；每条
在线写入仍需自身日志、冲突和精确恢复前置。原 BDE 显示随编辑接入，
回退自身和完整视觉证据仍必需。缺无关适配器不阻塞独立开发。
MAIN-03C.1–5 接完整材料、实际字段 patch、局部恢复、正式记录及在线/显示。
两条 literal strict native 失败保留；公开值恢复不能授予完整原生恢复通过。
不放宽既有 oracle，失败 witness 在材料分类前保留。此处修订是计划，
不改变下方规范 case、机器策略、次数或已有 verdict。
43项 required、3项性能报告、机器策略、规范 case 条款及所需次数不变。
完整 verdict 绑定版本/作用域，可从全部必需场景、断言、fixture、次数和
独立 oracle 重算；partial ledger 不授予 pass，不能改 evidence.json 冒充
通过。原生穷尽清单、真实 agent/AEB_Core、原件恢复和实际包仍是完整门槛。

最新独立验收入口 v1 已接固定 G0离线适配器与逐测试/子测试/原始JUnit证据，
支持完整场景重算和源码/原始材料校验。首轮CONTRACT-02离线合同通过，
CONTRACT-01/03因穷尽形状/正式日志路径缺口仍not_run；其他在线/视觉/agent
完整case尚未接执行规格。此入口仍partial，L0未通过。机器policy v2规则未
改动；其中历史runner_status文字不作为当前实现状态，以正式任务表和新
结果为准。[运行方式及证据](bde-tools-acceptance-runner.md)。

2026-09-30。范围仅普通 BDE tools：read/find/inspect/edit/diff/revert 与原 BDE 显示；不建设 Code Mode、宿主框架或状态机评测。本文件定义后续实现的退出条件，不表示当前已经达标。机器可读门槛见 [bde-tools-eval-policy.json](E:/Repo/ASCET/docs/bde-tools-eval-policy.json)。

## 判定原则

采用逐项硬门槛，不计算能相互抵消的加权总分。判定绑定实现版本、ASCET版本、数据库/进程身份、fixture、操作类型、采集字段和测试环境；不能把小图成功推广成通用支持。

- `pass`：该 case 在所需证据层级与次数下全部断言成立。
- `fail`：实际执行后任一必要断言不成立。定位失败也必须保留，不重跑抹去。
- `not_run`：缺证据、次数不足，或只有历史不同版本的结果。
- `blocked`：环境/夹具条件未满足，没有得到本次结论。
- `not_applicable`：仅用于在运行前能力矩阵中已明确不支持的正向功能；其“明确拒绝且无写入”反例仍必测。必需 case 不允许改成 N/A。

某交付档位全部 required cases 为 pass 才可宣布通过；not_run/blocked 不算通过。修复后重跑失败及受影响项，旧失败永久保留，新结果注明替代的版本与原因。故障注入得到预期 conflict/unknown 是正确结果，不计为意外工具失败。

未单独规定次数的在线功能 case，每个必需场景至少3次，全部断言通过。次数
用于检验可重复性，不代替fixture类型覆盖；G3/G5/G6的具体数量优先。本版
含43个必需功能 case 和3个性能报告项；没有新增30次性能采样前置条件。

## 交付档位

| 档位 | 可声明能力 | 必须通过 |
|---|---|---|
| L0 合同与离线回归 | schema、分页、状态、日志等离线行为已验证；不代表 ASCET 在线正确 | G0 |
| L1 普通 BDE 读取 | 声明类型/字段范围可完整采集和精确定位，输出范围诚实 | G0、G1、G2 的只读部分 |
| L2 隔离组件编辑 | 已声明操作可精确编辑、自动 diff、冲突检查与同进程回退 | L1、G2 全部、G3、G4、G5 |
| L3 本阶段工具完整验收 | 全部类型/跨层级通路、原 BDE 显示、Doge 和 AEB_Core 任务及交付包完整通过 | L2、G6、G7 的 COST-01、G8、G9 |

通过 L2/L3 不会自动修改业务写入开关。跨重启恢复不在当前恢复承诺内，旧逆向请求重启后可靠拒绝是必测项。性能不足一秒不会阻塞功能完整交付；不得据此宣称达到一秒，也不得用性能成功抵消功能缺口。

## G0：工具合同与离线回归

| Case | 触发场景 | 硬门槛 |
|---|---|---|
| CONTRACT-01 | 每个工具的合法/非法参数、未知op、不支持的层级/sequence等 | 100% schema与后端能力一致；非法或不支持请求在写前拒绝；错误附可判断状态，不能把 unknown 报为未写入 |
| CONTRACT-02 | 2–16KiB预算、长记录跨页、UTF-8、重复cursor、缺页/篡改 | 字节重组与原文完全一致；无丢失/重复/跨观察拼接；超预算明确失败或继续游标；不静默截断 |
| CONTRACT-03 | request_id重放/内容变化，写前落盘失败、after落盘失败、日志损坏 | 同意图不重放setter；同ID不同意图拒绝；prepared/started持久化失败不写；started后结果丢失保留unknown和可查询记录 |

次数：相关离线测试100%通过，0 skip冒充通过。fixture/fake只证明该层合同，不证明原生接口。

## G1：完整读取与可理解数据

| Case | 独立核对 | 硬门槛 |
|---|---|---|
| READ-01 | 与公开API/旧逐字段reader和受控fixture规格核对节点、pin、边、字段、定义、方法、公式及执行关系 | 对声明字段逐项相等；对象召回率与精确率均100%；保留多重边和有意义顺序。未采集/未解析显式报告 |
| READ-02 | 全量与局部读取投影，含边界pin、入边/出边、共享定义及长方法 | 共同字段100%一致；局部不能把未采集对象当删除或断线；续页和历史snapshot不新增ASCET采集 |
| READ-03 | 从工具正文回答预先定义的问题：某输入全部来源、节点类型、所用方法正文、公式依赖、声明执行关系 | 每个支持的问题都有可定位ref与原始证据，答案与fixture oracle完全一致；范围不足必须明确未采集，不臆测运行值 |
| READ-04 | read/find/inspect/diff日志查询前后观察模型与编辑器 | 无请求外模型变化；纯查询不调用模型setter；dirty/Undo若无法独立核实，不能声称无副作用通过 |

READ-03 使用确定性问题与标准答案验证工具提供的信息是否足够，不引入新LLM评测平台；它不能证明模型已经理解整个程序。数据类型未支持时验证明确拒绝，不能拿overview顶替完整logic。

## G2：精确身份与约束

| Case | 场景 | 硬门槛 |
|---|---|---|
| ID-01 | 同名/同值节点、多重同端点数据边、集合重排；find/inspect反查 | 只解析预期原生对象；歧义显式拒绝；logic/structure/layout不可未经校验混用ref |
| ID-02 | 重启、同路径数据库重开、同OID数据库副本切换、图重载 | 旧ref/缓存失效或明确重新绑定；绝不操作旧归属图。覆盖真实数据库会话及原生组件归属，而不只检查字符串路径 |
| ID-03 | 读取后目标被修改、嵌套原位变化；同时改变无关对象 | 目标/必要约束变化拒绝；声明可保留的无关变化不被覆盖；全图保守拒绝须明确记录限制，不能冒充局部冲突能力 |
| ID-04 | preview与prepare：方向错误、已占用input、不支持操作、合法后再变更 | 非法请求均拒绝；preview无业务写入、不占恢复record；执行仍重新校验。校验失败不令旧恢复失效 |

L1要求ID-01/02只读路径；L2增加写入和回退负例以及ID-03/04。

## G3：实际编辑与自动 diff

| Case | 场景 | 硬门槛 |
|---|---|---|
| EDIT-01 | 每个开放操作：literal、connect、disconnect、rewire、delete_node；后续新op自动加入 | 精确目标正确率100%；请求后置条件满足；独立全fixture读取确认没有未授权结构/字段变化；失败不报告成功 |
| DIFF-01 | 原生自动改变尺寸/位置/路由，或出现额外变化 | journal before/after来自实际读；与独立前后差异相同，实际patch召回率/精确率100%；标明允许副作用和超出范围变化，不只记录请求字段 |
| DIFF-02 | edit完成后直接查diff/历史，重复查、后端断开再查 | 无需agent再次read全图；查询纯日志，新增Cebra请求=0；持久记录可定位原请求及逆向关系 |
| EDIT-02 | 成功A→非法B→回退A，同请求重复、同ID改参数 | B拒绝无setter且不破坏A恢复；重复执行真实setter次数=1；内容冲突不写 |

eval可全图读取小型隔离fixture进行独立核对，生产edit仍必须局部读取。允许原生副作用由op合同预先声明；观察到未声明变化必须报告而不能藏进允许字段列表。首次验收每op至少在3个适用fixture上各3次；修改未影响的既有通过用例可复用有源码依赖指纹的证据。

## G4：删除与回退

| Case | 场景 | 硬门槛 |
|---|---|---|
| REVERT-01 | 删除带边节点、断线、重连、字段编辑后恢复 | 原生对象身份、端点、多重关系、字段、路由、父容器顺序恢复一致；不得同名重建冒充原对象 |
| REVERT-02 | 修改后目标又变、父children重排、无关对象改变 | 冲突拒绝且不写；可兼容无关变化按明确规则保留；不能仅因排序后的行相同就宣布恢复正确 |
| REVERT-03 | 图/进程失效、容量耗尽、显式释放、重复revert | 已失效恢复明确拒绝；满额写前拒绝或按预先声明策略处理；不静默淘汰可恢复对象；回退请求幂等 |

恢复顺序须由独立读取保留原顺序核对。结构行排序是比较便利，不是顺序正确性的oracle。

## G5：故障、幂等与实例互斥

| Case | 注入点 | 硬门槛 |
|---|---|---|
| FAULT-01 | 写前持久化、prepare之后、started之后、setter执行后回执前、store/after日志阶段 | 每个阶段有独立证据；未started不写，可能已写不报未写；unknown不自动重发setter；request/change或operation查询标识可找回状态 |
| FAULT-02 | 调用中取消、宿主退出、C#超时、ASCET异常 | 停止等待不伪报原生停止；有持久恢复材料或明确无法恢复原因；未知调用未收尾时不盲目放行依赖写入 |
| LOCK-01 | 两个工具进程不同STORE连接同一ASCET，及进程重启 | 在线临界区不重叠；先可控离线worker，再隔离在线验证；锁域与实例绑定而不是日志目录 |

每个故障点至少3次，预期结果全部满足；只有模拟的项目标为offline，不满足对应live要求。测试使用隔离组件/数据库副本；未恢复的实验立即停止后续写入并保留材料，不删除失败目录。

## G6：原 BDE 显示与工具闭环

| Case | 场景 | 硬门槛 |
|---|---|---|
| UI-01 | 普通BDE新增、修改、删除节点/连线的patch | 原编辑器正确对象及旧位置可见；颜色之外有可区分标识；无需外部网页代替。调用成功不是视觉通过 |
| UI-02 | 100%/150%缩放、滚动往返、clear、关闭/重开、连续show/clear | 无错位/残影，网格完整重绘；回调注册清理；模型与Undo不受污染；显示失败不重放edit。至少3轮 |
| FLOW-01 | 从现有工具入口read→find/inspect→edit→diff→show/clear→revert | 无人工补ref或直接修改日志；执行状态、coverage和能力明确；验证图内容与恢复。至少3个不同任务各3次 |

既有状态机截图不能替代普通BDE证据。UI缺截图/原生状态核对则not_run；不开展状态机新测试。无需新建Code Mode或宿主执行器。

## G7：性能与成本

PERF 项仅报告，不阻塞交付，也不要求为时间目标再次采集30个样本。已有
样本与失败按原版本保留；新增功能报告实际计时边界、范围、帧数与字节。
需要比较性能时仍必须同覆盖，不删字段/定义/恢复材料；P95采用nearest-rank，
注明样本数、冷/热、版本和全部尝试，不能只保留最快成功样本。

| 指标 | 门槛 | 说明 |
|---|---|---|
| PERF-01：AEB_dFxTar声明完整语义read | 非阻塞报告实际延迟/帧/字节和样本范围 | 包含全部正文分页，不拿首屏或缓存命中冒充完整在线读取。既有30次样本可复用，功能正确性另行验收 |
| PERF-02：普通BDE局部edit/revert | 非阻塞报告实际延迟/帧/字节和样本范围 | 含持久化和回读，不将整个研究实验当作单请求；旧1221/1065ms超时目标失败仍保留，但不阻塞功能交付 |
| COST-01：edit及离线查询的远程成本 | edit中无整组件语义抓取；diff(change_id)、历史、分页新增Cebra请求=0 | 用代理/selector计数验证。允许当前局部定位枚举Main，报告实际扫描对象数及总图大小，不能称O(局部节点数) |
| PERF-03：规模与显示 | 报告1000节点图的read/edit/revert、show/clear耗时及P50/P95/max | 初版无全类型1秒保证；声明范围若含大图，必须预先补充该范围预算后再宣称性能验收。API绘制返回与真正可见延迟分开 |

COST-01 是 L3 必需功能合同；PERF-01/02/03 是非阻塞报告项。性能超出旧预算
保留真实数值，不改成通过；若实验出现错误连线、数据丢失、unknown 写入或
无法恢复，这些仍按相应功能 case 阻塞交付。不能拿小图结果推广大图。

## 最小 fixture 集

| Fixture | 目的 | 范围 |
|---|---|---|
| F-small | literal/operator、空输入/已连接输入、fan-out、incident边 | 10–30节点的可控普通BDE；恢复后逐字段核对 |
| F-medium | 同名/同值、多种pin、重排、长路由、定义复用 | 约100节点；只含已声明支持的类型 |
| F-large | 扫描与分页、容量、规模成本 | 约1000节点；受控生成并记录生成规则 |
| F-identity | 多重边或边身份歧义、图重载、同OID数据库副本 | ASCET不能合法构造的结构测试拒绝路径，不伪造在线支持 |
| F-text | 非ASCII、转义、多页方法、公式与依赖 | 不丢字符/精度/方法正文；读覆盖与unknown正确 |
| F-business-readonly | AEB_dFxTar | 仅只读语义与性能对照，不做写入/删除/恢复实验 |

三个适用编辑fixture须结构不同，不把同一fixture复制三次计数。既有Trial_data小fixture可作为起点，不能单独满足全部类型及规模覆盖。

## 证据及判定记录

每个case记录：case_id、实现和模板sha256、依赖文件清单、工具/ASCET版本、OS/硬件、flags、数据库与组件OID、进程epoch、图generation、fixture规格、请求/预期、原始before/after、独立oracle来源、实际journal/receipt、原生状态、采样数、耗时与Cebra帧/字节、失败原因、清理/恢复结果。UI另保留截图和步骤，性能保留所有原始样本。

共享reader/editor/身份/日志改变时，关联case的旧通过结果需重新评估；仅文档修改不要求重复在线测试。不同版本结果可作背景，不能不注明地拼成当前全绿。独立oracle不能调用同一被测formatter再自证；公开API无法覆盖的字段用第二读取路径/fixture规范补齐，否则标缺证据。

建议记录结构：

```json
{
  "policy": "bde-tools-eval-v2-functional-delivery",
  "candidate": {"source_manifest": "source-sha256.json", "ascet_version": "6.4"},
  "scope": {"diagram": "ordinary_bde", "operations": ["rewire_data"], "recovery": "same_process"},
  "case_id": "EDIT-02",
  "status": "not_run",
  "evidence_level": "live",
  "trials_required": 3,
  "trials_completed": 0,
  "assertions": {},
  "artifacts": [],
  "restoration": "not_run"
}
```

上述为结果格式设计。当前 bde_acceptance.py 已实现固定G0离线场景执行与
完整case判定/重算，其他组尚未接完整执行规格；旧 partial ledger保持独立。
现有 bde_data_validation.py、bde_rejection_recovery_experiment.py、bde_experiments.py
及针对性unittest继续作为后续在线执行基础，不新建通用eval平台。

## 当前基线盘点（不是新版本验收）

| 现有证据 | 可支持的结论 | 按v1仍缺什么 |
|---|---|---|
| bulk-01/validation.json | 历史AEB同覆盖与20次全分页P95=780.592ms | 当前依赖版本指纹核对、30次样本与更广fixture |
| bde-focus-validation-01/result.json | 四种普通BDE结构操作各一次修改/diff/回退/公开API恢复核对 | 每op三种fixture各三次、身份/顺序/失败场景；最近native改动后按依赖复核 |
| bde-rejection-recovery-01/result.json | A成功→占用/方向非法preview和prepare拒绝→A回退，独立恢复通过 | EDIT-02三次、更多preview限制、apply/store故障分支 |
| 9项日志+3项preview离线测试 | 部分合同、未知结果不重放和preview路由 | 不能当全G0通过或原生故障验收 |

上表保留历史 v1 证据边界。当前 v2 的完整功能门槛仍未通过；按核心功能
方案补正式 Class 局部回退、类型/接口、跨层级通路、原图显示与 AEB_Core/
Doge/package。身份、故障与恢复证据随对应正式操作补齐，不再扩大性能统计。
