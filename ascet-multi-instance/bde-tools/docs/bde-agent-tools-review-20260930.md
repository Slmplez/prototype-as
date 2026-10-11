# 普通 BDE Agent Tools 与 Code Mode 独立审查

2026-09-30。审查者：本线程独立子代理 `/root/review_bde_agent_tools`。范围为普通 BDE；状态机扩展延期。只读静态审查，未执行 ASCET 写入或 UI 操作。主代理复核了异常清 checkpoint、preview 及宿主超时代码。本报告不宣称已在线复现下述故障；本轮未修改实现。

结论：保留六工具、不可变观察、局部编辑日志、原生固定批量模板和独立展示层的总体架构。未识别出须立即停止现有隔离实验的 P0；5 项 P1 是扩大写入范围或 Code Mode 集成前的阻塞项，另有1项 P2。

## 1. P1：拒绝请求会使先前编辑的回退失效

证据：[bde_structure_edit.st:159](E:/Repo/ASCET/scripts/bde_structure_edit.st:159)、[bde_structure_read.st:10](E:/Repo/ASCET/scripts/bde_structure_read.st:10)。

成功编辑 A 后，编辑 B 在 prepare 因 Input occupied、Wrong pin direction 或不支持层级删除失败；异常处理不区分执行阶段，无条件删除 scope 的 checkpoint。下次 observe 重建 diagram 注册并增加 generation，A 的 actual after 与原生恢复图不再匹配。一次未写模型的参数错误因此会破坏之前已完成修改的恢复能力。

修正：纯校验失败保留 checkpoint；仅在可能已修改或存储结果未知时失效，并记录恢复能力变化。验收增加“成功 A→拒绝 B→回退 A”，同时验证真正的未知写入仍使不可信引用失效。

## 2. P1：原生缓存身份域缺少数据库及组件归属

证据：[bde_structure_read.st:7](E:/Repo/ASCET/scripts/bde_structure_read.st:7)、[bde_structure_edit.st:13](E:/Repo/ASCET/scripts/bde_structure_edit.st:13)。

进程全局 registry 键只有 OID/diagramName。同进程切换为保留相同 OID 的数据库副本且 source equals 时，会复用旧 registry.diagram。C# 检查新 component 的数据库/OID，未验证旧 diagram 的真实归属。

影响是过期数据、无效对象及目标归属混淆风险；没有在线跨库写入证据。修正需纳入数据库会话与底层 specification/component 归属，数据库关闭/重开/切换统一失效。单加路径不足以识别同路径重开。以隔离数据库副本做负例，保留业务原件。

## 3. P1：删除恢复未检查父容器顺序

证据：[bde_structure_edit.st:15](E:/Repo/ASCET/scripts/bde_structure_edit.st:15)、[bde_structure_read.st:123](E:/Repo/ASCET/scripts/bde_structure_read.st:123)。retained 保存父容器和数字下标；计算 next 但未保存。restore 只检查下标不越界，按旧 ix 插入。观察按 ref 排序，没有父 children 顺序或邻居身份。

[SGGraphicsBlockDB.st:1079](E:/Repo/ASCET/unpacked/smalltalk-source/ASDBase.ic/SGGraphicsBlockDB.st:1079) 的 equals 将 internalBlocks 按 ID 排序比较，不能充当顺序版本号。若删除后父容器重排而字段、计数、generation 不变，回退可能在错误位置插入而仍通过结构行比较。GUI 重排/store 如何映射到该源结构，仍需在线负例。

修正：保存并检查父容器顺序或相邻对象身份，明确允许保留的无关重排；独立恢复核对包含顺序，不能仅比较排序后的记录。

## 4. P1：串行锁按 STORE 隔离，未按 ASCET 实例隔离

证据：[bd_service.py:85](E:/Repo/ASCET/scripts/bd_service.py:85)。不同 ASCET_BD_STORE 的两个进程获得各自 live.lock，可同时访问同一 ASCET 及其全局 registry。isConcurrencySafe=false 只能约束单个宿主。

修正：桥接边界按 ASCET PID、启动 epoch、连接端点建立共享互斥/调度器，与日志目录解耦。重启重新绑定。先用可控离线 worker 验证跨 STORE 调度，再做隔离在线组合验证，不直接在业务模型试并发。

## 5. P1：取消与宿主超时丢失写入结果语义

证据：[BlockDiagramTool.ts:127](E:/Repo/ASCET/Doge/src/tools/BlockDiagramTool/BlockDiagramTool.ts:127)、[BlockDiagramTool.ts:87](E:/Repo/ASCET/Doge/src/tools/BlockDiagramTool/BlockDiagramTool.ts:87)、[bd_native_literal.py:51](E:/Repo/ASCET/scripts/bd_native_literal.py:51)。

仅启动前检查 abort，运行中取消未传递；90秒宿主超时统一返回 BACKEND_UNAVAILABLE，未带 request/change 恢复标识，也没有子进程树和 ASCET 已接受调用的收尾协调。Python12秒超时会 kill/wait C#，durable started 防同请求重放，历史也可查询；这些保护不证明宿主强杀后原生调用已经停止。

修正：启动前发布持久 operation handle。未 started 可取消；已 started 停止等待但保持结果待查，不报告“未执行”。超时返回 outcome_unknown 与查询标识，交由受监管 worker 收尾。不要仅给 execFile 加 abort 就宣称写入取消成功。

## 6. P2：preview 没有验证原生操作约束

证据：[bd_structural_tools.py:173](E:/Repo/ASCET/scripts/bd_structural_tools.py:173)、[bde_structure_edit.st:60](E:/Repo/ASCET/scripts/bde_structure_edit.st:60)。

preview 只比较当前观察与旧观察。计划阶段检查 ref 类型但不检查 pin 方向、input 占用、层级/sequence 删除约束，因此必然会执行失败的操作仍可得到成功 preview，误导 Code Mode 多步计划。

修正：抽出不创建恢复记录、不失效 checkpoint 的原生 validate/plan，preview 与 prepare 共用。分别报告身份、支持范围和约束是否满足。

## 推荐修复顺序

1. 拒绝请求不破坏之前的恢复能力。
2. 数据库会话、组件/图真实归属和 generation 统一身份域。
3. ASCET 实例级 operation runner、跨 STORE 互斥、取消与未知结果查询。
4. 删除顺序冲突和 preview 语义验证。

Code Mode SDK 尚未实现不是本次代码缺陷。SDK 应经过同一受控 operation runner 和宿主权限分派，持有不可变 Observation、typed status、durable operation handle，只通过显式 emit 返回模型需要的结果。不得另开直调 Python 的旁路。局部后观察及连续编辑可以随后补齐。

## 证据边界

普通 BDE 四种操作的隔离闭环及公开 API 恢复核对见 [bde-focus-validation-01](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/bde-focus-validation-01/result.json)。完整 AEB 同覆盖性能见 [bulk-01](E:/Repo/ASCET/analysis/bde-experiments/2026-09-30/bulk-01/validation.json)。上述成功不覆盖拒绝请求后恢复、跨数据库、跨 STORE、运行中取消和排序冲突。

旧状态机 fixture 已由 overlay-recovery-01 与 overlay-delete-state-restore-01 恢复，不是当前遗留恢复任务。structural-validation.json 的旧状态属于历史证据。本轮未新增测试或在线复现，也未实施修复。
