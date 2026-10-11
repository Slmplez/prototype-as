# ASCET Code Search

保存代码和 BDE 的 TypeScript 搜索工具，通过 C# Bridge 读取已安装 ASCET 6.4 的保存内容。六个 Agent 工具提供名称定位、代码搜索、BDE 搜索、代码读取、BDE 局部读取及 State/Transition 检查；CLI 内部串行访问 ASCET。

## 安装与验证

需要 Node.js 22+；真实模型读取还需要 Windows、已许可的 ASCET 6.4 和本机 `Etas.AscetNET.dll`。

```powershell
npm ci
npm test
$env:ASCET_API_DLL='C:\ETAS\ASCET6.4\cebra\Etas.AscetNET.dll'
powershell -NoProfile -ExecutionPolicy Bypass -File build.ps1 -BridgeOnly -AscetDll $env:ASCET_API_DLL
npm run start:agent
```

将 DLL 路径替换为实际安装目录。`npm test` 包含离线契约、分页、BDE 和 Pi SDK 回归；它不等价于真实 ASCET 或 LLM 验收。运行时、供应商 DLL、许可和数据库由使用者提供。

## 文档

- [详细使用与开发手册：六工具、真实 JSON、分页、并发、Intent 和证据边界](SEARCH_TOOLS_GUIDE.zh-CN.md)
- [build E 打磨与 Pi 评测结果](TASK_POLISH_E.zh-CN.md)
- [CLI 输入输出与生命周期](CLI.md)
- [六工具协议与开发记录](PI_TASK_TOOLS.zh-CN.md)
- [Pi 接入](PI_TOOLS.md)
- [任务拆分和验收标准](TASK_BREAKDOWN.zh-CN.md)
- [前期任务交付与实测结果](TASK_ACCEPTANCE.zh-CN.md)

Pi 的六工具配置通过 `ASCET_PI_TOOL_PROFILE=task` 启用；默认三工具配置保持兼容。Task 配置的最终答案引用校验及逐用户回合 Intent 校验默认启用。完整评测会单独记录首次模型结果，保留原始事件与失败记录。
