# ASCET Code Search MCP

Build and start from `E:\Repo\ASCET\tools\code-search`:

```powershell
npm.cmd ci
npm.cmd run build
npm.cmd run start:mcp
```

`mcp-config.json` contains the stdio registration for Agent clients. The server
registers `ascet_code_search`, `ascet_code_find`, and `ascet_code_read` through the
official MCP SDK. It has no UI. Starting it does not open an ASCET connection
until a valid tool request needs model data. This repository does not change
the user's global Codex or Claude configuration.

The MCP tool name selects the operation; omit the JSONL `operation` field:

```json
{"name":"ascet_code_find","arguments":{"target":"diagrams","diagram":"Init","match":"exact"}}
{"name":"ascet_code_search","arguments":{"query":["AEBLockTime","AEB_FxTarPT"],"mode":"identifier","group_by":"object","limit":20}}
{"name":"ascet_code_read","arguments":{"ref":"<ref returned in this MCP session>","lines":{"start":10,"end":80}}}
{"name":"ascet_code_read","arguments":{"cursor":"<next_cursor returned by read>"}}
```

All three tools share one AgentSession. Refs and cursors cannot be transferred
to another MCP process. Read text pages use immutable snapshots; fresh searches
read the current saved database. Public/Private membership comes from actual
Specification membership. Dataset values, Formula definitions, generated code
and unsaved editor buffers are outside this tool.

The native C# bridge acquires the existing BDE byte-range lock before connecting.
For port 32503 the path is `%LOCALAPPDATA%\AscetBdeTools\local-ascet.lock`.
Isolated ports use `local-ascet-<port>.lock`. Only the STA thread accesses ASCET.
An idle connection releases both Cebra and the lock after 250 ms, while Agent
refs and page snapshots remain in TypeScript. A competing process waits at most
2 seconds and receives recoverable `ASCET_BUSY` if the lock stays occupied.
This serializes native operations; it does not provide a database transaction
or a fair shared broker queue across Agent sessions.

`DATABASE_CHANGED` before a read preserves the connection. A broken transport
or process generation rejects the current request; CLI/MCP SessionBridge opens
a fresh bridge for the next call. It never replays the failed request or restarts
ASCET. Old live refs still enforce database/process/source identity. A direct
library `Bridge` remains fail-closed; use `SessionBridge` for automatic recovery.

Successful JSONL reads share a 128 KiB default budget. MCP uses 40 KiB body pages
so its text and structured copies fit together below 128 KiB. Large reads return
`has_more`, `next_cursor`, and original `code_range` coordinates. Full raw graphs
that do not fit return `PAGE_TOO_LARGE`; use diagram text or object reads.

Environment options:

| Variable | Default | Meaning |
| --- | --- | --- |
| `ASCET_CODE_SEARCH_PORT` | `32503` | Loopback ASCET endpoint; listener PID is checked |
| `ASCET_API_DLL` | installed ASCET 6.4 DLL | SDK assembly |
| `ASCET_CODE_SEARCH_IDLE_MS` | `250` | Idle release interval, 1-60000 ms |
| `ASCET_CODE_SEARCH_LOCK_WAIT_MS` | `2000` | Lock acquisition wait, 0-60000 ms |

`ASCET_CODE_SEARCH_EXTERNAL_LOCK=1` is reserved for verification wrappers already
holding the same lock. Normal clients must leave it unset. Lock cooperation
requires every external ASCET client to use the same lock; an unmanaged Cebra
connection can still occupy the server.

The BDE prefilter examines only query-local saved storage and resolved model
names. Known special ports retain ASCET naming, including `get/get`. Unknown
storage, cycles, unrecognized nodes, or resolution errors fall back to the full
detached reader. Switch/Conversion graphs currently use that full path. No
persistent source index, change listener, or incremental synchronization is used.

Read-only BDE getters use the detached hierarchy directly and do not initialize
the native mutation server. The saved source is still copied and audited. ASCII
field escaping uses VM substring replacement; Unicode uses the original escape
path. The TypeScript bridge negotiates gzip/base64 for internal payloads above
64 KiB, retaining raw JSON for older clients and small responses. Compression
does not change Agent JSON or its read budget. The decoded native payload is
bounded at 512 MiB; larger responses fail explicitly.
