# ASCET Code Search CLI

当前入口为 `node dist/src/cli.js --agent`。Windows、Node.js 22+、.NET Framework 4 和运行中的 ASCET 6.4 为前提，ASCET 中须已打开 Database。

## 构建与启动

```powershell
cd E:\Repo\ASCET\tools\code-search
npm.cmd ci
npm.cmd run build
node dist/src/cli.js --agent
```

默认使用本机 ToolAPI 端口 32503。连接隔离实例时，在启动 CLI 前设置其真实端口：

```powershell
$env:ASCET_CODE_SEARCH_PORT='32631'
node E:\Repo\ASCET\tools\code-search\dist\src\cli.js --agent
```

编译默认 DLL 路径为 `E:\ETAS\ASCET6.4\cebra\Etas.AscetNET.dll`。其他安装位置使用 `build.ps1 -AscetDll <绝对路径>`，并在运行前设置 `ASCET_API_DLL`。

CLI 标准输入、输出为 UTF-8 JSONL，每行一个完整请求或响应。Agent 应直接启动 Node 子进程，等待响应后发送下一条请求；持续复用进程，才能使用返回的 ref 和 cursor。stdin 关闭后释放连接并退出。`--timeout 30` 设置每个已发送桥接请求的等待秒数，不包含排队时间。

## 请求

```json
{"operation":"find","component":"AEB_State_Machine","match":"exact","limit":20}
{"query":["AEBLockTime","AEB_FxTarPT"],"mode":"identifier","group_by":"object","limit":20}
{"operation":"find","target":"diagrams","component":"AEB_State_Machine","diagram":"Init","match":"exact"}
```

以下请求中的占位内容使用前一响应的实际值，原样传递：

```json
{"operation":"read","ref":"<实际 ref>","if_unchanged":true}
{"operation":"read","ref":["<实际 ref1>","<实际 ref2>"],"lines":{"start":1,"end":80}}
{"cursor":"<实际 next_cursor>"}
```

search 可省略 operation，find/read 必须指定。名称定位、范围、搜索模式、完整返回格式见 [AGENT_SIMPLE.md](AGENT_SIMPLE.md)，Agent 调用策略见 [AGENT_SEARCH_PROMPT.md](AGENT_SEARCH_PROMPT.md)。

## TypeScript 客户端

已有 JSONL 客户端可直接复用；它按顺序发送请求，并解析完整响应。以下代码在工具目录内运行，CLI 作为单个常驻子进程：

```typescript
import { JsonLineClient, ROOT } from './dist/src/bridge.js';
import { join } from 'node:path';
import type { AgentFindResponse } from './dist/src/agent-types.js';

const cli = new JsonLineClient({
  command: process.execPath,
  args: [join(ROOT, 'dist/src/cli.js'), '--agent'],
  env: process.env,
  timeoutMs: 30_000,
});
try {
  const found = await cli.request({
    operation: 'find', component: 'AEB_AxCtrlConfigFF_Modify',
    member: 'calc_pre', match: 'exact', limit: 20,
  }) as AgentFindResponse;
  if (found.status === 'ok' && found.results.length) {
    const source = await cli.request({
      operation: 'read', ref: found.results[0].ref, if_unchanged: true,
    });
    console.log(JSON.stringify(source));
  }
} finally {
  await cli.close();
}
```

## 预算与恢复

search 默认前后各 10 行、limit 50，推荐首次定位 limit 20；最大 200。limit 只限制当前页，total_hits 保留全部命中数。成功 search/read 的 JSON 总预算为 128 KiB，大正文与批量读取也会分页；has_more/next_cursor 表示剩余内容。续页只传 cursor。

新 find/search/read 读取当前保存模型；续页读取该次操作的短期快照。ref/cursor 绑定当前 CLI 会话、Database 和 ASCET PID，默认有效期 5 分钟。partial 必须检查 issues，不能据此断言全库未使用。

DATABASE_CHANGED 返回后可重新 find/search。ASCET 重启或连接损坏先返回错误，下一次 find/search 自动重建连接；重新获取 ref 后再 read。失败请求不自动重放。ASCET_BUSY 表示共享锁超时，在持有者释放后重试；重试不会自动重启 ASCET。不同 CLI 的 ref 不能互用。

多进程使用同一端口的共享锁排队。默认锁等待 2000 ms，连接空闲 250 ms 后释放；可通过 ASCET_CODE_SEARCH_LOCK_WAIT_MS、ASCET_CODE_SEARCH_IDLE_MS 调整。长时间独占连接会增加其他工具等待时间。当前不提供跨工具 Broker。

排查慢请求时可在启动 CLI 前设置 `$env:ASCET_CODE_SEARCH_TRACE='1'`。每次原生读取的 mode、PID 和计时写到 stderr，stdout 仍只返回 Agent JSONL；日志不包含查询文字或源码。未设置时不输出计时日志。

开启诊断后还记录 CPU 0 的累计/繁忙时间、ASCET 页错误增量和工作集变化。CPU 0 对应当前 ASCET 默认 affinity=1 的现场配置；页错误包含软错误，不能单凭数量判定硬盘换页。诊断失败时省略不可用计数，原查询照常执行。

## 验证

```powershell
npm.cmd test
npm.cmd run verify:agent-latency
npm.cmd run verify:cli-optimization
npm.cmd run verify:cli-acceptance
```

后三项使用已经准备并启动的隔离实例 manifest，默认路径为 `analysis\search-tools-acceptance\2026-10-02\agent-a\instance.json`；可设置 ASCET_AGENT_LATENCY_MANIFEST。CLI acceptance 会重启 manifest 指定的隔离 ASCET，守卫校验 PID、启动时间和可执行文件路径，测试结束后保留该隔离实例运行。latency/optimization 不重启 ASCET。optimization 的冻结基线由 ASCET_CLI_BASELINE 指定。

实时搜索仍受 Database 大小和图加载状态影响。当前 180 Component、870 文档、71 Diagram 测试库完成两轮热态验收，中间完整重启隔离 ASCET，1400/1400 次均低于 500 ms。默认前后各 10 行、group_by:object、limit:20，set 中位 385 ms、最大 442 ms；包含 context:0 时整体最大 455 ms。计时包含发送请求到完整 JSON 解析。两轮在快照读取和预热后测量，启动、真正冷态首读及其他数据库不属于此性能结论。最新结果与边界见 [NEXT_TASKS.md](NEXT_TASKS.md)。

提速包括请求内目录与 Pin 身份复用、Diagram 预筛选、受限定的标量构造模板和 ASCET 内 zlib 传输。模板以 class/typeID/Return 分组，仅在本次请求内复用；每个 Element 获得独立可变副本，继续执行原生模型更新、Sequence 和连接类型传播。未知结构回退原生构造。未引入变更监听、增量同步或持久源码索引，Agent JSON 不变。

## CLI 代码包

```powershell
npm.cmd run pack:cli
$env:ASCET_CLI_PACKAGE='<解压后包含 package.json 的目录>'
npm.cmd run verify:cli-package
```

代码包生成到工作区 dist，包含可运行的 Node CLI、C# Bridge、TS/C#/Smalltalk 源码、Agent 协议和逐文件 SHA-256。运行现成 CLI 无需 npm install；重建源码才需要开发依赖。包中不包含 MCP。独立目录实机验证覆盖 find/search/regex/read/分页/Init/Private Diagram，并使用随包源码另行编译后测试。
