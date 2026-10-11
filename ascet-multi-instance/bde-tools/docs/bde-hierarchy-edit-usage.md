# 精确 hierarchy 连线与节点编辑

2026-10-01。现有六工具已经支持隔离 `Trial_*` 组件内的 Main 和指定 hierarchy scope。业务组件写入继续关闭；状态机延期。本文不是跨 Module 通路整体完成声明。

## 调用

先用 `bd_read(view="interfaces")` 看通路及已验证的外内配对，再读取将要编辑的局部结构。hierarchy path 使用父子 occurrence 的原生 ID，不能使用名称。以下 ID 仅属于 `Trial_Hierarchy_20261001_100722_242e00`。

```json
{
  "component": "BDE_Tool_Experiments\\Trial_Hierarchy_20261001_100722_242e00",
  "view": "structure",
  "scope": {"diagram": "Main/h12/h5"}
}
```

`bd_read` 返回 snapshot、generation、局部节点/pin/edge/几何和祖先 boundary context。完整交付需要读完所有 cursor。scope 最多 16 层；ID 必须规范、无前导零。缓存读取只传 snapshot，不再传 scope。

结构引用形如 `Main/h12/h5/p4`；接口视图的只读引用形如 `Main/h12/h5/n4.p4`。后者不能直接提交编辑。必须在结构快照中选择实际返回的 ref。

```json
{
  "snapshot": "<structure_snapshot>",
  "request_id": "disconnect-inner-1",
  "operations": [{"op": "disconnect_data", "target": "Main/h12/h5/<edge_ref>"}],
  "preview": true
}
```

preview 不注册恢复记录、不调用 setter。执行时移除 preview，仍须通过原生立即重验。以下例子在同 scope 的 input 空闲时连接；不是跨窗口直连。

```json
{
  "snapshot": "<returned_after_snapshot>",
  "request_id": "connect-inner-1",
  "operations": [{"op": "connect_data", "source": "Main/h12/h5/p4", "target": "Main/h12/h5/p2"}]
}
```

换源保留原边对象，使用 `rewire_data`、精确 edge ref、新 output pin，以及 `expect={source,native_connection_type}`。input 必须保持原连接；当前替换要求 native connector class 相容。`bd_revert(change_id,request_id)` 精确恢复原对象、连接点、路线和删除前的父容器顺序。两次互相依赖的编辑按逆序回退；抢先恢复前一步会返回 conflict，不调用 setter。

## 自动 Diff 与后续编辑

每次 edit 的 before/after 和实际 patch 自动持久化。成功回执含 `component`、`diagram`、`after_snapshot` 和 `after_scope`，`additional_ASCET_reads=0`；可直接用 after_snapshot 接续局部编辑。它只包含实际观察范围，不补入旧全图数据。若要操作观察范围外的对象，单独读取所需 scope。

`bd_diff(change_id)` 离线读取 journal；返回 diagram、完整观察和每项 `qualified_ref`。同 request_id 不重发 setter；不同 request_id 使用旧快照会重新检查并拒绝冲突。unknown 保留实例隔离标记，不能自动重放。

## 内部实现

根图只有一个 registry/generation 和深层 source checkpoint。子图按 root 下每一级 `diagramElement.identifier` 和 `isBlockDiagramHierarchy` 精确解析；写前、apply、inverse 再核对同一组原生 hierarchy 对象。外内 pin 用 reciprocal `oppHierNode`、manager、interface 和 child membership 身份核对。连线与 `StoreToCache` 都调用 root BlockDiagram API。

反编译证明 `getConnectionType` 实际读取 `startConnectionPoint.owner.manager.typeID`。`StoreToCache -> endModifications` 保存根图、重建逻辑并可能 auto-commit，保留图实例的端口类型缓存可能仍为 0。读取器采用同 root source 的新鲜图类型，按精确 scope、source/target ID 和完整 route 配对；重复边保留独立 ref 和 multiplicity，出现不同类型的歧义即拒绝。没有把 0 固定改成 2，也没有过滤 type 字段。原生 geometry/对象恢复仍使用保留实例。

## 证据与边界

见 [最新报告](bde-tools-experiment-report.md) 与 [本轮复现](../analysis/bde-experiments/2026-10-01/bde-hierarchy-edit-research-01/README.md)。两级同名、一入一出夹具的两层断开/重接/回退及 outer 换源已在线验证；最深层只有一个 output，未验证该层使用不同 output 的换源。

子图现增加下列 10 类 `create_block`，以及普通 occurrence 的 `delete_node`。新建 hierarchy 容器仍仅支持 Main；子图接口增删、其他创建类别、声明独立删除仍拒绝。实验性原 BDE overlay 已接入同一 change_id 的 scope 路由，视觉验收尚未完成。跨 Module Project/实例绑定、group patch 和整条通路回退继续待实现。完整 FLOW 与旧 G0-G7/L0-L3 不因局部通过而升级。

## 子图节点创建、删除与回退

可创建 `literal`、`comment`、`operator`、`variable`、`parameter`、`constant`、`receive_message`、`send_message`、`send_receive_message`、`enumeration`。消息要求所属组件是 Module；本次不新增 Project 绑定或改变消息声明 scope 的入口。

先读完整目标 scope，再使用其 snapshot 创建。例如：

```json
{
  "snapshot": "<Main/h12/h5 的完整 structure snapshot>",
  "request_id": "child-variable-001",
  "operations": [{
    "op": "create_block",
    "kind": "variable",
    "name": "BrakeRequest",
    "model_type": "cont",
    "initial_value": 0,
    "position": [900, 600]
  }]
}
```

`enumeration` 的 `definition` / `new_definition` 和 `initial_value` 与 [Enum 工具](bde-enum-tools.md) 相同。图形放在指定层级，声明属于整个组件；新枚举库类型另记 `library_effects`。创建要求完整选定 scope，不能用 connect/delete 返回的局部 after_snapshot 冒充完整图。

从实际 diff 或 after_snapshot 取新节点精确 ref，再删除：

```json
{
  "snapshot": "<create 返回的 after_snapshot>",
  "request_id": "delete-child-occurrence-001",
  "operations": [{"op": "delete_node", "target": "Main/h12/h5/n<实际 ID>"}]
}
```

删除包含该 occurrence 及同 scope 的 incident 数据边，保留变量/message/enum 声明。图形对象和父容器顺序保留用于原对象回退。`hierarchy_boundary=true` 的内部边界节点与 hierarchy 容器不能当普通节点删除。

依赖修改按逆序恢复：先 revert 删除，再 revert 创建。创建回退会移除本次声明；若父图或其他层级随后增加了该声明的 occurrence，则在 setter 前返回 conflict。Main 新建 hierarchy 的回退还核对其内部检查点；后续子图修改必须先恢复，不能随父容器一同丢弃。旧记录缺失此子图检查点时明确拒绝 hierarchy 回退。

子图节点实验与失败清理材料见 [本轮记录](../analysis/bde-experiments/2026-10-01/bde-hierarchy-nodes-research-01/README.md)。仅隔离夹具，实际完成轮数与状态以关联 result.json 为准。

## 子图实际 diff 在原 BDE 显示

启用 `ASCET_BD_NATIVE_PRESENTATION=1` 后，仍使用原来的两个调用：

```json
{"change_id":"<子图编辑返回的 change_id>","presentation":"show"}
{"change_id":"<同一个 change_id>","presentation":"clear"}
```

层级从 journal 读取，不由调用者另填。show 在线核对同 scope 的实际 after，按每一级 ID、原生父对象和唯一性定位 UI hierarchy，调用 `updateWithHierarchyGO:` 进入对应画布。禁止按名称搜索；两个同名 Stage 已验证不会混淆。UI hierarchy 与编辑 API hierarchy 是不同实例，必须分别解析，不能直接传编辑 API 对象给画布。

每组件同时一个 overlay，切换至其他 scope 后 expose 回调跳过绘制，回到原对象才恢复。其他 scope 的 clear 请求拒绝。show/clear 不重放编辑或调用 Undo；实际图形、Undo 存储内容与未保存标记分别核对。`bd_diff(change_id)` 普通查询仍离线，`presentation=show` 的当前状态核对与绘制需要在线调用。

返回 `native_call_succeeded_visual_unverified`。在线画布身份/回调计数不等于看到了正确画面；缩放、滚动、关闭重开及完整 child glyph 视觉仍须独立验收。show 可能打开/切换隔离编辑器，clear 仅移除装饰，不撤回编辑，也不还原导航位置。
