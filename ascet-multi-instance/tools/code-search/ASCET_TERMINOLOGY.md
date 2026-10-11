# ASCET 搜索与读取术语

| kind | ASCET 对象 | 定位字段 | read 内容 |
|---|---|---|---|
| method / process | 保存文本的 Method / Process | method / process | code |
| diagram | BDE Diagram，包括 State Machine 的 Init | diagram、diagram_oid、diagram_methods | diagram_text；include_graph:true 增加 graph |
| state_entry / state_static / state_exit | State Action | diagram、state、state_id、state_hierarchy_ids | code |
| transition_condition / transition_action / transition_trigger | Transition 代码 | diagram、transition、transition_id、state_hierarchy_ids | code |
| state_*_binding / transition_*_binding | Method 绑定 | 相应 State/Transition 字段 | method_binding；不含被绑定实现 |
| header / external_c / external_h | 保存的 C/Header 代码 | component_path、variant、implementation | code |

Component 是组件通称，包括 Class、Module、State Machine。Diagram 不能与 Method 混用：一张 BDE Diagram 可以属于多个 Methods/Processes。图形名称查找和 in.member 选择其拥有的整张图，diagram_methods 明示共享关系。

`visibility` 是父 Diagram 在 Component 的 Public/Private Specifications 集合中的归属，不是路径里的文件夹名，也不是 Method 的访问级别。图的身份是 Component OID + Diagram source OID；名称和 visibility 可以变化。不同 Diagram 可以有同名或相同节点编号，必须保留 Diagram 身份。`find.target:diagrams` 列出 BDE 图（含空图和状态机 Init），`in.diagram` 使用整图 ref 或配合一个 Component 的 source OID 精确限定。

ref 是会话返回的临时读取凭据，绑定 Database、ASCET 进程、Component、代码身份及采集内容版本，不是模型中的 Element Reference。Component ref 只能限定 in.component。read 必须直接使用实际返回值；ref 过期后重新 search/find。对象模式的外层 ref 读取整张 Diagram，hits/连接端点的 ref 读取局部对象；不要解析或拼接 ref 中的字符。

diagram_text 是模型事实的可读清单，包含节点、引脚、连线和 Sequence。它不是保存的 ESDL，也不根据图形推导赋值、控制流或函数实现。图形搜索仅匹配真实字段值，清单中的编号、类型标签、连线箭头不参与搜索；跨行不能跨越不同模型字段。搜索与回读使用相同清单坐标。

graph.scope:diagram 表示目标是该 Diagram 及其层级。节点/引脚 ID 必须与 scope 一起使用；不同层级可重复编号。connections.id 是本份规范化清单的序号，不是持久 ASCET ID。boundaries 使用真实内部/外部引脚身份配对，不按相同名称猜配。comments 只有 scope/text，因为部分注释没有持久 ID。

group_by:object 的 hits[].kind 表示 Element、Literal、Operator、Control、Hierarchy 等实际图形对象；外层 kind 仍为 diagram。matched_fields/evidence 是命中原因；occurrences 是合并前文字出现次数。局部 read 的 scope:local 表示当前 Hierarchy 内按 depth/direction 选出的连线邻域。include_graph:true 的 graph.scope:local 为本页原始记录，分页时须合并；diagram_ref 返回整图读取凭据。边界对端有独立 ref，不自动跨层遍历。

diagram_methods 是拥有该图的声明；sequences 是实际引脚调用的 Method 名称与顺序号，不表示完整控制流证明。nodes[].component_path 是实例所引用的定义路径；这里只读取实例/引脚，不自动读取引用 Component 的全部实现。

根 status 表示成功、变化或不完整；未知图节点与读取失败进入 issues，不能用 partial 结果证明不存在。if_unchanged 比较图形结构、原始字段、拥有 Method 与当前接口引脚，不比较布局坐标。

迁移：Agent 的 graphical_method 已改为 diagram，原 method:init 改由 diagram_methods 表达；旧过滤值收到 INVALID_REQUEST。旧的一行 AEBLockTime = 0.0; 推导表示已移除。需查询 AEBLockTime 或 Literal 0.0，再回读节点/连线。低层 legacy read_state_machine 保留历史兼容接口，不是 Agent 通用 BDE 入口。
