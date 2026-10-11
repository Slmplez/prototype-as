# BDE owner object record patch 增量

结论：隔离 Module/source 两条原 CTreeSearchObjectRecord 的原样写回，以及六阶段真实版本字段 patch/inverse/redo/inverse 已在线通过；source inverse 保留 Module 上的另一项真实修改。新连接独立读取 owner 两次、references 两次，public Module bookends 精确相同，zero-native confirmer 只清本次 pending。没有启停 ASCET。

这是对象记录执行层的限定通过：本次没有修改 serialized graphical payload、没有 model setter/store/commit，没有验证模型/source/cache完整闭包；formal owner journal binding 和 production connection inverse 未完成。Message 完整60矩阵仍0/60、43 required不升级、整体T0–T9和最终交付未完成。

## 覆盖与证据

| 实验 | 真正执行与结果 |
| --- | --- |
| `bde-owner-noop-live-02` | 两条 original raw write，2 write / 0 delete；全部 owner/reference原样 |
| `bde-owner-noop-fresh-01` + `confirm-01` | full owners/reference独立双读，零native确认，exact=true |
| `bde-owner-patch-live-02` | source+1 → Module+1 → source inverse（Module+1保留）→ Module inverse → source redo → source inverse；6 write / 0 delete |
| 同次准备控制 | 7 native refusals；空 executor导出篡改后私有image保持，0write/delete |
| 同次执行控制 | 6 replay、1 stale prepare、1 prepare后stale execute，真实零writer |
| `bde-owner-patch-fresh-01` + `confirm-01` | full owner/reference两读精确等于before，public bookends相同，仅清确切purpose/token的pending |

原 Module/source owner records 长5526/4554bytes。Search global ID来源为反编译 getters，1-based offsets3/11/124，不能套用reference contiguous布局。执行器只写existing records，max2patch，max4MiB/raw、8MiB/group；同owner重叠修改返回冲突，不拼接serialized payload。

240项本次相关离线控制通过（含32项新增自包含owner测试）；不是240次在线验收，也不累计历史重叠结果。冻结971源码/依赖文件、289归档源码hash核对通过。完整sources和native原材料保存在本地，不把licensed DLL、数据库、epoch/token/pending/WAL带入便携包。

失败材料保留：`bde-owner-noop-compile-01`漏括号；`owner-noop-live-01`父validator连续key误判；`owner-patch-compile-01`漏括号；`owner-patch-live-01`旧Dictionary无removeAll。均在fixed writer授权前停止；没有伪造缺失的native terminal回执，也没有改写原failed verdict。

## 复现方式

可安全重复运行本地报告控制（fresh output目录）：

```powershell
E:\PYTHON\python.exe -X utf8 scripts\bde_persistent_owner_increment.py --output analysis\bde-experiments\2026-10-11\bde-owner-patch-increment-02
```

在线历史writer与已清pending的confirmer不重放。新实验须重新核验endpoint/epoch/database/dirty、fresh准备、parent durable before/pending握手，使用新output。当前包保持production v3 apply/history拒写，不以本研究开放agent生产写权限。

下一项：原同次graph/config witness下的fresh serializer与实际graphical payload，再联合owner/reciprocal/model/source/cache闭包；formal journal-bound inverse；T5.1真实连线→actual diff→原BDE显示→冲突→精确回退，随后全部既定功能与最终验收。
