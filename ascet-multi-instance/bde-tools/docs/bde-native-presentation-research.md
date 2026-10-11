# 原生 BDE 显示接口：源码审计与在线证据

2026-10-01 当前增量：Main与精确child scope的实际diff已接Doge show/clear。子图按UI父子ID链解析，UI/API对象不同，不用openHierarchy:名称搜索。presentation03三轮9cases、18对show/clear、54次原生画布检查和21拒绝通过，全部恢复；无本轮视觉验收。最新证据与复现见[子图展示研究](../analysis/bde-experiments/2026-10-01/bde-hierarchy-presentation-research-01/README.md)。下文保留早期研究记录。

2026-09-30 01:44。已验证进入原 BDE 的对象链；尚未实现原 BDE diff 叠加。隔离对象为 `BDE_Tool_Experiments\Trial_20260929_155551_0f73b7`，业务模型未修改。

## 已验证对象链

```text
CodeComponent.Edit()
  → EtasSpecificationViewAPI
  → view → SGBlockDiagramEditorView
  → uiController → SGBlockDiagramEditorC
  → graphPaneController → SGPaneController
  → selectedGOs → OrderedCollection
```

新增 `scripts/AscetBdeViewProbe.cs`：固定隔离组件路径/OID/数据库，不接受任意 selector，不执行模型 setter/save/Undo。没有 dirty 编辑器时通过公开 Edit 打开 BDE；有一个 dirty 编辑器时只读取该现存 view，并校验它的组件 OID，其他情况拒绝。采集真实类名、修改标记、选择集合、两个 literal 的字段前后值。`scripts/bde_view_experiment.py` 编译、加锁、通过回环代理计数、保存结果；通过条件包含局部字段及 dirty 数量前后一致。

证据：[view-summary.json](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/view-summary.json)。

- view-02：在线打开原生 BDE，2074.595ms，97请求帧；字段一致、dirty 0→0。窗口标题和原生画布通过 Computer Use 实际查看，两个 literal 可见。
- UI 单击0.0后，原生状态栏显示 `Graphic ID: 3`，与工具 Main/n3 对应。但 Undo 从灰色变为可用，后续 dirty=1；尚未隔离点击、编辑器模式及 API 观察的因果关系。
- view-03：原先的 strict dirty guard 正确拒绝研究流程，未执行修改。
- view-04/05：仅检查同一个已打开的隔离 dirty view，`graphic_modified=true`，`selectedGOs` 仍为空。不能把视觉反馈当作原生精确选择已通过。
- 独立拓扑/layout 读取仍与基线完全一致。Escape 未清除 dirty。关闭本轮编辑器时出现 Store Changes in Graphic，选择 No 放弃仅此实验的界面状态；[view-cleanup](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/view-cleanup/result.json) 独立确认图元、pin、连接、几何及进程/组件身份均恢复，dirty=0。没有使用原生 Undo。
- view-01 为失败探针：输出前使用非字符串 Dictionary key 导致序列化问题，进程异常退出；改为字符串 key 后通过。原始退出诊断保留，未把该次计为在线成功。

上述耗时不是 diff 显示耗时或稳定性能统计；尚无叠加绘制。

## 可利用但尚未开放的入口

| 接口 | 源码证据 | 当前结论 |
|---|---|---|
| `Component.Edit` → `EtasAPIItem.edit` | Common/Component.cs；EtasAPIItem.st:2174，内部 syncExecInUI | 已在线打开原编辑器；有明确 UI 调度 |
| `EtasUserInterfaceAPI.view` → `RBUserInterface.uiController` | EtasUserInterfaceAPI.st:13；RBUserInterface.st:494 | 在线类名链确认 |
| `graphPaneController` | SGGraphicSpecificationViewerC.st:379 | 在线确认 SGPaneController |
| `selectGOWithID:` | SGGraphicSpecificationViewerC.st:5681；ASDAscetLinkManager.st:1922 | 按 identifier 遍历层级，选元素、切层级、setSelectStateWithGO、滚动；未调用，不能承诺 UI 线程/无 dirty/无 Undo 副作用 |
| `selectedGOs` | RBPaneModeController.st:13 | 委托 currentMode，依赖编辑模式；本次单击后为空 |
| `setSelectStateWithGO:` | RBPaneModeController.st:1307 | 切 normalMode、unmark、changeToActiveState；不是独立叠加层 |
| `highlightGODisplay:` / `unHighlightGODisplay:` | RBGraphicObject.st:275 / :245 | 基类 no-op；特定 connector 等覆盖，不能用于通用 literal diff |
| `undoRedoPossible:` | SGPaneController.st:1776 | 调用 mementoStream；该 getter 在 :1071 懒创建并写回 stream。排除出无副作用观察探针，尚未在线调用 |
| Cebra dispatch | EtasCebraToolServer.st:818 | 源码有独立 Etas Cebra Process；不能假设任意内部调用在 UI 线程 |

Smalltalk 是静态恢复代码，不等同原始源码或已证明运行等价。表中的在线结论仅限已实际调用项，不由 selector 存在推断能力。

## 对实现的约束

1. 定位使用精确组件/进程/图元身份；显示前验证当前对象仍匹配 patch。布局坐标用于绘制，不用作编辑身份。
2. 原生选择仅作为未来的导航候选，不能作为 diff 展示完成条件。即使能高亮当前对象，也无法展示删除对象、旧连线和多个版本字段。
3. 临时图层需追踪画布坐标转换、缩放、滚动、重绘回调及撤销清理，验证隐藏不改变模型、不新建 memento。禁止修改图元永久颜色来模拟临时 diff。
4. 先证明固定 UI 调度入口，再调用内部定位/绘制方法；不向 agent 开放任意 Smalltalk 或任意 selector。
5. 模型 edit receipt 与 presentation receipt 分开；显示失败只重试显示，不重复 setter。

复现对象链探针（会打开固定测试 BDE；用新目录）：

```powershell
E:/PYTHON/python.exe scripts/bde_view_experiment.py --output analysis/bde-experiments/2026-09-30/view-NEXT
```

探针不自动关闭编辑器，以便检查真实画布。执行者须记录 UI 动作、检查未保存状态并收尾；不要为了让实验通过而自动保存未知编辑器。


## 2026-09-30：结构编辑与原生绘制接续

已实现隔离结构 profile、10 种 typed 结构操作、局部实际 patch、请求后置条件检查、同 ASCET 进程保留对象回退及 Doge 路由。独立公开 API 核对重连/带边节点删除/带迁移状态删除/迁移动作/改名/迁移创建及恢复。证据及完整边界见 [结构实现报告](E:/Repo/ASCET/docs/bde-structural-implementation.md)，机器可读汇总见 [structural-summary.json](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/structural-summary.json)。较早报告中“尚无结构实现”由本节修正，但不得据此勾选整体业务验收。

`bd_diff(change_id, presentation=show|clear)` 已接线并独立记录展示回执，未完成 UI 验收。在线首次打开状态机 gc 未就绪；第二次 show 成功后真实 expose 回调暴露 CwDrawingArea/gc 类型错误，clear 超时/API 空句柄。修复从 clientData 获取包装对象并捕获异常，尚待在线复测。失败在 doge-structure-overlay-01/02 保留；按用户授权重启后停在数据库 Rebuild now 提示，界面自动操作无法激活。需进入 AEB_1 后先恢复隔离 t8 priority 4→3。旧进程 inverse 已失效，不宣称跨重启精确回退。

提速通用性已补充到 [原生批量方法](E:/Repo/ASCET/docs/ascet-native-batch-method.md)：进程内有界循环+纯值传输、显式恢复记录、图 wrapper 重载/身份、Cebra 平铺参数、route 存储坐标、ESDL alias 及 UI 回调契约。完整 AEB 读取 P95 780.592ms 仍是既有覆盖样例结果，不能外推到任意结构操作。
