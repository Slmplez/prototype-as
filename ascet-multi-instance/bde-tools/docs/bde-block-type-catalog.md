# BDE 类型与操作查询

普通 BDE 的现有六工具新增 `bd_inspect(query="block_types")`。它从当前
typed schema/后端合同返回类型及操作目录，不读取 ASCET，不启用写入。
完整清单或单类型详情均使用既有字节预算与 cursor 分页。

先查看目标作用域的清单：

```json
{"query":"block_types","owner_kind":"module","diagram_scope":"Main","max_bytes":2048}
```

查询 enum 在子图中的创建条件：

```json
{"query":"block_types","block_kind":"enumeration","owner_kind":"module","diagram_scope":"child"}
```

这里的 `creation_route=declared_isolated_route` 表示已有代码入口；不是针对
某个 live snapshot 的写入许可。`creation.required/optional` 给出创建参数，
`field_operations`、`occurrence_operations`、`connection_operations` 给出当前
条件操作；具体类型、配置、端口存在性、依赖、占用和冲突仍由 preview/apply
核对。继续执行时读取真实 ref，不能从名称或本目录生成 ref。

| 例子 | 目录中的实际限制 |
|---|---|
| Class 的 receive_message | Module owner required，创建入口拒绝 |
| child 的 array | child 创建路径未实现；已有 Main 路径不能推广为 child 支持 |
| child 的 enumeration | 已有创建路径；child 不开放 set_scalar_value |
| hierarchy container | 不开放普通 move_node/delete_node；接口使用独立 port 操作 |
| message | enum 支持引用已有类型；channel 编辑和初始值编辑仍未开放 |
| Class formal | 当前仅4种 primitive input 创建；output/in-out、enum/complex 和永久局部 inverse 未完成 |

返回 `native_inventory_complete=false`、`complete_function_acceptance=not_certified`
是当前状态，不是 agent 应忽略的字段。目录列出26个现有创建 family，完整原生
清单还需核对其它 GUI 工厂、端口和相关正式操作。

在任意 read 工具中以 cursor 单独续页，例如 `bd_read({"cursor":"c_..."})`。
同一分页文档保持同一合同观察，不能把单页或断开的 JSON 片段当作全清单。

## 已验证范围

- 静态原生核对：26个 family 的 native factory selector均找到绑定；23个
  operator的输入数、7个 control及创建 schema 与后端清单一致。共104个
  owner/scope组合的合同记录。来源是反编译源码和索引，未证明运行时等价。
- `SGInitializeServer` 额外发现 junction、statement_block、procedure_parameter、
  sequence_call、self、return、instance_field 共7类工厂候选；不能把它们直接
  算成已支持，也不能未核对适用范围就全部排除。Class native源码另有4条
  primitive/complex argument/return创建合同。下一步核对这些候选及端口。
- 真实 Doge Tool.call：12次调用、9项断言，包含2KiB完整分页、enum子图、
  Class消息拒绝、child array缺口、operator输入数和非法owner在schema拒绝。
  独立回环代理记录0连接/0请求帧/0响应帧。只证明离线目录工具流程。
- 35项针对性Python测试、21项Doge测试通过；6项Doge在线测试跳过，不能作为
  在线证明。首次分页测试误用旧回执格式导致的KeyError及原测试源码已保留，
  修正后通过；没有重写失败结果。
- 随后静态审计补录自己的source hash，35项报告中的该审计脚本保持旧源版本。
  最终脚本重新执行静态目录核对及3项NativeInventoryTests通过，其他正式
  查询/Doge源指纹未变；未宣称重跑完整offline suite。

[静态原生目录](../analysis/bde-experiments/2026-10-04/bde-native-inventory-02/inventory.json) ·
[实际 Tool.call](../analysis/bde-experiments/2026-10-04/bde-block-catalog-tool-01/result.json) ·
[Python针对性回归](../analysis/bde-experiments/2026-10-04/bde-block-catalog-tests-02/result.json) ·
[Doge回归](../analysis/bde-experiments/2026-10-04/bde-block-catalog-doge-tests-01/result.json)。

整体台账 [Ledger79](../analysis/bde-experiments/2026-10-04/bde-eval-ledger-79/report.json)
仍是42 not_run /1原件恢复blocked，647个唯一证据文件存在；本增量不把任何
完整功能case改为pass。汇总与最终源绑定见
[增量汇总](../analysis/bde-experiments/2026-10-04/bde-block-catalog-summary-01/result.json)。

复现：

```powershell
E:\PYTHON\python.exe scripts/bde_function_inventory.py --output analysis/bde-experiments/2026-10-04/bde-native-inventory-NEXT
E:\PYTHON\python.exe scripts/bde_block_catalog_experiment.py --output analysis/bde-experiments/2026-10-04/bde-block-catalog-tool-NEXT
```

输出目录必须尚不存在。第二条只执行离线目录 Tool.call并监测一个未使用的
回环端点；不连接运行中的ASCET、不创建业务组件。两项都不授予完整eval case通过。
