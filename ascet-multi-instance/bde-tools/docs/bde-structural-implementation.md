# BDE 结构工具实现、验证与未完成项

## 最新更新：普通 BDE 拒绝请求与 preview

2026-09-30：只推进 BDE tools，Code Mode/宿主框架和状态机扩展暂缓。`bde_structure_edit.st` 以 mutationStarted 区分纯校验失败和可能已修改的失败，只有后者移除 checkpoint。新增固定 validate 命令复用 prepare 的方向、占用和支持范围检查，但不向 registry 注册恢复记录；Python preview 已接入，原生拒绝不再返回成功 preview，执行时仍重新校验。

证据 [bde-rejection-recovery-01/result.json](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/bde-rejection-recovery-01/result.json)：普通隔离图重连 A 成功，Input occupied/Wrong pin direction 的 preview 和 prepare 均拒绝，拒绝日志无 started，after/generation 与公开 API 内容不变，A 回退后 native/public 均与原件一致。整个研究流程891.768ms/954请求帧，不是单 edit 延迟。9项日志+3项preview路由离线测试通过。未在线注入 apply/store 异常，未测试层级/sequence拒绝；这些不因本轮通过自动获得覆盖。历史回调/fixture 待恢复段落由 PROGRESS 最新记录覆盖。

2026-09-30。本轮已将结构 read、10 种 typed edit、实际 diff、同进程局部回退接入 Doge。写入只开放隔离 `BDE_Tool_Experiments\Trial_*`，业务原件未写入。**整体需求尚未全部验收。**

## Agent 调用契约

1. `bd_read(component=..., view="structure")`：Main 图节点/pin/连接，或状态/迁移、原始 ESDL/alias、priority、几何。返回不可变 snapshot、generation、明确 coverage，并按预算分页。所有页交付不等于读懂；方法正文与定义需完整 logic profile。
2. `bd_edit(snapshot=..., request_id=..., operations=[...])`：单条 typed 操作。`ASCET_BD_STRUCTURAL_WRITES=1` 才启用。目标使用当前 structure snapshot 的 `Main/nN`、`Main/pN`、`Main/eN`、`Main/tN`；不能混用完整 logic reader 的 refs。行内端点目前仍是同图短 ref。
3. 工具自动从目标展开关联闭包、冻结已有边界 refs，局部回读做 fingerprint 前置条件，记录 prepared/started 后执行；返回实际 before/after 行差异及 `requested_effect_verified`。无需 agent 再读整个 BDE 形成 diff。
4. `bd_diff(change_id="edit_...")` 和 `bd_inspect(query="edits")` 只读持久日志，零 ASCET 采集。相同 request_id+相同请求直接返回原记录；不同内容冲突；unknown 绝不自动重放。
5. `bd_revert(change_id=..., request_id=...)` 局部比较 current==actual after，使用原生保留对象恢复，生成独立逆向 patch。ASCET 重启、图实例失效或目标冲突时拒绝。没有通用磁盘崩溃恢复。
6. `bd_diff(change_id=..., presentation="show"|"clear")` 是单独的实验展示入口，需 `ASCET_BD_NATIVE_PRESENTATION=1`。show 要求原会话/进程/OID，且当前局部状态等于 recorded after；clear 不读模型。展示记录存于 `presentations`，不会重放 edit 或修改 edit 日志。原生调用成功仅返回 `native_call_succeeded_visual_unverified`。

```json
{"snapshot":"s_...","request_id":"rewire-1","operations":[{"op":"rewire_data","target":"Main/e11","source":"Main/p6"}]}
```

`e11` 只是当时隔离样例的 ref，调用时须使用新 snapshot 中的实际值。

## 操作与证据

以下路径均位于 `analysis/bde-experiments/2026-09-30/`，保留失败记录。性能是单次研究流程总时间，不是每个 edit 的 P95。

| 操作 | 已实现边界 | 在线证据 | 整个研究流程 |
|---|---|---|---:|
| connect_data | 同层、合法 output→空 input | session-connect-12，修改/重放/回退 | 374.432ms / 120 requests |
| disconnect_data | 指定确切连接 | session-disconnect-01，恢复原生对象 | 331.687ms / 120 |
| rewire_data | 保持连接对象与目标输入，换源输出 | public-rewire-02，独立公开 API 端点/路由恢复相等 | 523.735ms / 516 |
| delete_node | 普通无 sequence 节点，带 incident 边；拒绝层级 | public-delete-connected-01，独立完整夹具相等 | 566.995ms / 466 |
| delete_state | 普通 SGStateGO，带 incident 迁移；拒绝边界 pin | public-delete-state-02，独立状态/迁移相等 | 404.685ms / 312 |
| create_transition | state→state，显式输入/输出几何点 | public-create-transition-01，创建 t11 后回退 | 413.669ms / 399 |
| delete_transition | 精确迁移 ID，不能仅按两端识别 | 原生删除/保留恢复及 delete_state 闭包已验证；单独 Doge 操作未独立全流程测量 | 未单独测量 |
| set_transition_priority | 迁移 priority，区别于 BD sequence | session-priority-01；doge-structure-01 跨 helper 回退 | Doge 整流程 1.309s，无帧代理 |
| set_transition_esdl | action/condition；保存 raw source+alias | session-condition-01、public-action-02 | action 426.381ms / 372 |
| rename_state | 有界合法标识符 | public-rename-state-01，独立核对 | 489.259ms / 372 |

原先 `applied_observed` 只说明实际 after 已采集。本轮新增后置条件检查；不符返回 `postcondition_mismatch` 并保留真实差异，可在 current==after 时恢复。**上表较早证据不自动获得新增校验覆盖**；新增校验已在优先级 Doge 在线路径和离线错误注入测试执行。

## 精确性实现及限制

- 原生固定 reader/edit blocks：`bde_structure_read.st`、`bde_structure_edit.st`。客户端不接收自由 Smalltalk；所有模型操作仍经过 Cebra 和审计过的原生关系维护接口。
- 普通连接 identifier=-1，不能当作唯一 ID。保留图实例和对象身份注册表；重载时 generation 改变，旧匹配失效。节点、pin、transition 使用各自原生 ID。
- 删除保存对象/父容器/原顺序/连接点，恢复时按原位置插回；不是创建同名对象伪装精确恢复。一次失败试验曾丢失 fixture 数据连接，已通过单独日志修复重建；不能宣称该历史阶段连接身份连续。
- 重连保存 `storageCornerPoints`，恢复时不重复端点。ESDL 恢复同时恢复 ASDL、旧方法调用和 alias，避免指针保留但内部值已变。
- 局部 read 不取全部方法正文，但仍枚举整个 Main 定位。记录中的全图计数会导致无关结构增删也保守冲突；尚未证明所有无关变化都可保留。
- checkpoint 当前为浅拷贝源+equals，不能保证发现任意内部嵌套原位修改，外部保存失效负例未通过在线验证。因此不开放业务写入。
- scope registry 上限 64、edge identity 上限 4096、native edit records 上限 128；自动释放/淘汰未实现，满额明确失败。恢复对象仅在原 ASCET 进程内存中。
- 状态机 trigger/方法绑定、entry/static/exit 写入、初始状态、迁移 retarget、状态机 boundary pin/层级操作尚未开放。现有结构 reader 也不是完整状态机执行语义。

## 原 BDE 展示的真实状态

`overlay-03`/`overlay-clear-01`：原 BDE UI 线程中固定绘制/清除调用成功，dirty 0→0、memento 对象身份不变；不是视觉验收，也没证明 memento 内部内容不变。

`doge-structure-overlay-01`：state editor 首次打开后 gc 尚未就绪，立即重绘报 UndefinedObject/setFunction。清除和模型回退成功。

`doge-structure-overlay-02`：show 返回成功，但后续真实 expose 事件触发 `CwDrawingArea does not understand gc`，clear 超时、API 空句柄、回退未执行。日志已保留。根因是回调实际 widget 与 RBScrolledDrawingArea 包装对象不同。修复改为从 clientData 取 wrapper，并在回调中捕获异常、初始检查 gc、同步失败清除注册。**修复尚未在线复测。**

随后按用户授权重启 ASCET（17788→35804）。最后成功 dirty 检查为 0；新进程在 AEB_1“Rebuild now?”提示等待输入。界面工具 click 报 `coordinate input geometry is unavailable`，刷新激活报 `failed to activate captured window`，已停止重试并请求用户点击“否”。隔离 state fixture t8 的优先级预期仍是 4，需新进程读取后恢复为 3；不得把旧 native inverse 当作重启可用。

当前回调修复、删除幽灵图形、多重同端点迁移辨识、缩放/滚动重绘、窗口销毁清理、定位和交互字段详情，均不能列为完成。业务模型未因此写入。

## 可复现入口

```powershell
E:\PYTHON\python.exe -m unittest discover -s scripts -p 'test_bd_*.py'
$env:ASCET_BD_PYTHON='E:\PYTHON\python.exe'
$env:ASCET_BD_STRUCTURAL_LIVE_TEST='1'
$env:ASCET_BD_NATIVE_PRESENTATION='1'
# 新的空证据目录；先确保 ASCET 健康、隔离 fixture 已恢复。
$env:ASCET_BD_TEST_STORE='E:\Repo\ASCET\analysis\bde-experiments\2026-09-30\NEW_RUN'
# 从 Doge 目录运行
C:\Users\ZJR\.bun\bin\bun.exe test src/tools/BlockDiagramTool/BlockDiagramTool.test.ts -t 'Doge structure read'
```

下一步先恢复 fixture 并验证回调修复，再补外部保存冲突负例、结构独立核对和剩余状态机语义，最后做业务只读覆盖与各操作独立延迟分布。自动化 bde 保持暂停。

最终离线验证：Python 42/42 passed；Doge 6 passed、5 live/history skipped、32 assertions，version=1.0.0-ASCET。py_compile通过。证据 analysis/bde-experiments/2026-09-30/structural-validation.json。native callback修复未在线验收；fixture恢复待数据库进入。
