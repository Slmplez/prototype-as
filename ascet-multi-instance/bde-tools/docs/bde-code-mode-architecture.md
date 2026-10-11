# 普通 BDE 的 Code Mode 架构

**当前暂缓：** 用户最新要求先设计和开发 BDE tools 本身，其他无需关心。本文保留为后续参考，SDK、执行器和宿主框架扩展不在当前执行范围，也不是 BDE tools 交付前置条件。

2026-09-30。当前按“agent 写 JavaScript 调用受控 BDE SDK，数据在执行环境处理，显式输出选定结果”定义 Code Mode。本仓库 Doge/src 尚未找到现成的 Code Mode 执行器；本文是目标设计，现有六个 BDE 工具和原生 adapter 可复用，不代表执行器已接入。

审查后修订：当前依赖及验收以 [普通 BDE 执行计划 B1–B9](E:/Repo/ASCET/docs/bde-only-execution-plan.md) 为准。身份、实例互斥、恢复与取消不再放到 SDK 接入之后；它们是在线调用尤其是写入口的前置条件。下述接口与批次均未因本次计划修订自动完成。

## 两个执行层

JavaScript 执行层承担查询、筛选、确定性比较、步骤编排；ASCET 固定 Smalltalk 模板承担真实对象遍历、局部检查与模型修改。用户脚本不传入 ASCET 编译，不开放任意 selector。Code Mode 降低模型往返和上下文成本，原生批量层降低 Cebra 往返；分别测量。

## SDK 契约

| 接口 | 返回 | 当前基础与需要补齐 |
|---|---|---|
| bd.read({component, profile}) | 不可变 Observation：身份、覆盖、节点/pin/边/定义/方法集合 | 底层已有 logic/structure 读取；需结构化返回，统一身份映射 |
| observation.nodes/pins/edges | 可遍历结构化记录，保留精确 ref | 普通 Main 结构数据已有；不能假定完整层级和语义 |
| observation.get(ref), incoming(pin), outgoing(pin) | 当前观察中的记录或关联集合 | SDK 建立本地索引，无新 ASCET 读取 |
| bd.inspect({observation, targets, fields}) | 字段值及 known/not_collected 等状态 | 复用已有离线 inspect；实时刷新必须显式调用 |
| bd.inspect({operation_id}) | 排队/执行/已确认/未知结果与关联 change_id | 目标扩展；由共享 operation runner 提供持久查询，不要求全图 read |
| bd.edit({observation, request_id, operation}) | EditReceipt：status、change_id、实际 patch、覆盖和恢复等级 | 复用现有单操作日志；普通 BDE 四种结构操作已验证 |
| bd.diff({change_id}) | 完整结构化实际 patch | 离线日志；无需再 read |
| bd.revert({change_id, request_id}) | 逆向 EditReceipt 或冲突 | 同进程恢复边界保持 |
| bd.present({change_id, action}) | 独立 PresentationReceipt | 调用现有 show/clear；普通 BDE 视觉与生命周期验收待补 |
| emit(value) | 有界模型输出 | 执行器提供，统计输出字节和截断状态，不默认打印完整观察 |

以上是设计名称，不是已经可导入的 SDK。短 ref 只能在其观察内解析；logic 与 structure 映射未验证前不得互用。

## 数据与分页

1. 后端原生记录只序列化一次为结构化协议。普通工具的可读正文由同一数据生成，SDK 不长期依赖解析自然语言或渲染文本。
2. SDK 可以自动消费同一不可变文档的所有 cursor，或暴露异步记录迭代器。检查 document、观察身份、字节偏移、结束标志及总预算，禁止跨观察拼接。
3. 当前分页可能在长 JSON 行中间断开。不能逐页 split lines 后直接 JSON.parse；在协议迁移前须完整拼接或正确保留未完成记录。
4. snapshot/store 内保留全部已采集数据；模型只看到 emit 选择的内容。分别记录 collected、available_to_code、emitted_to_model；代码读全不代表模型理解了全部逻辑。
5. Observation 不可变。本地 map/filter 不写模型。未采集字段返回 not_collected，不转为默认值或空连接。
6. 首次完整语义读取可用于理解；后续目标查询/邻接检查使用本地索引和显式局部刷新。定义及方法按身份去重，并允许把指定正文输出给模型。

## 写入与编排

所有写操作通过宿主工具调度器，保留 schema、能力、会话、权限和审计；不能为了 Code Mode 直接暴露 runBlockDiagramBackend 绕开宿主分派。工具内部继续执行 prepared→started→apply→actual after→postcondition→journal。

原生执行前由共享 runner 发布持久 operation handle，映射 request_id 与之后产生的 change_id。operation handle、幂等请求、实际 patch、观察不是同一个身份。未 started 的取消需得到执行器确认；started 后取消表示停止等待，调用可能仍在执行。宿主超时返回 outcome_unknown 和查询标识，worker 负责收尾；不能用 BACKEND_UNAVAILABLE 代替写结果状态，也不能在未知调用仍可能执行时放行下一个依赖写入。

preview 与 prepare 共用不分配恢复记录的原生语义校验，报告身份、支持范围和约束检查结果。成功 preview 不免除 apply 的再次检查；错误参数不得令此前成功编辑的恢复失效。

普通 BDE 一次单操作，request_id 必填。脚本的 Promise.all 不代表 ASCET 并发：在线请求在共享桥接边界串行，离线计算可以独立处理。当前 live.lock 与 STORE 绑定，推广前需要绑定 ASCET 实例而非单个存储目录。

多步骤默认不是事务。收到 conflict/postcondition_mismatch/outcome_unknown 后停止依赖后续步骤，返回已完成 change_ids、失败步骤及恢复能力；不得自动重放整段脚本或宣称所有步骤回滚。中途取消或输出超预算时仍保留可发现的修改回执。

edit 返回局部后观察是下一项优化：新引用标明范围，只能支持覆盖内的后续操作。不得把 actual patch 直接合并旧全图后标为当前完整模型，因为 GUI 可能同期修改其他位置。

## 最小示例（目标接口，尚未实现）

```javascript
const graph = await bd.read({ component, profile: 'structure' })
const edge = graph.get(edgeRef)
const pin = graph.get(newSourcePinRef)
if (edge.kind !== 'edge' || pin.kind !== 'pin' || !pin.output) {
  throw new Error('目标不是数据边或新源不是输出 pin')
}
const change = await bd.edit({
  observation: graph.id,
  request_id: requestId,
  operation: { op: 'rewire_data', target: edge.ref, source: pin.ref },
})
emit({ status: change.status, change_id: change.change_id, patch: change.patch })
```

名称匹配必须得到唯一结果后再取精确 ref。示例不自动挑选第一个同名节点，不自动回退，也不假定 structure 已包含理解组件所需的全部方法与参数。

## 实施批次（以 BDE 主计划为依赖）

| 批次 | 工作 | 前置及退出条件 |
|---|---|---|
| C0 | 复用可靠原生执行基础 | B1–B4：拒绝不破坏恢复、完整身份域、实例共享 runner、可查询取消/未知状态、顺序恢复和真实 preview。Code Mode 不另建旁路 |
| C1 | 结构化协议与 SDK 数据模型 | 对应 B6；离线协议设计可提前。兼容现有六工具；分页、UTF-8、coverage、typed errors、精确 ref 映射通过 |
| C2 | 只读 SDK 与本地索引 | 对应 B7 只读部分；在线访问依赖 B2/B3。get/incoming/outgoing/filter 不重复在线采集；完整数据可逐页读全；emit 明确预算和覆盖 |
| C3 | 宿主 Code Mode 执行器接入 | 先对接/落实执行器及权限分派，再开放写 SDK。验证时间、内存、输出、调用次数和取消；不能以 Node vm 冒充安全沙箱 |
| C4 | edit/diff/revert/present SDK | C0–C3 与 B5/B6 验收通过；单操作写入、持久 handle、失败停止、回执不因取消/超预算丢失；普通隔离 BDE 全链路通过 |
| C5 | 局部后观察及连续编辑 | 对应 B8；只在已采集范围内连续修改。多步非事务，部分完成明确；已有互斥/取消/未知结果保证继续回归，不延期到此才实现 |

最终 Code Mode 对比属于 B9：同一任务、同等原始采集覆盖，分别测原生耗时、工具/模型往返和 emit 字节。脚本不默认输出整图，筛选也不能作为省略任务所需逻辑的理由。

本阶段不扩展状态机。不承诺 Code Mode 自动降低原生读取耗时：同等完整采集下主要先减少模型上下文与多轮调用，原生性能继续独立验证。
