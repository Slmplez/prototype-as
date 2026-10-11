# ASCET Code Search CLI

This package contains the compiled CLI, C# bridge, TypeScript/C# sources, embedded Smalltalk readers, and the current Agent contracts. It requires Windows, Node.js 22+, .NET Framework 4, and an ASCET 6.4 installation with an open Database. The CLI runtime uses Node built-ins and requires no npm installation.

## Run

From the extracted package directory:

```powershell
node dist/src/cli.js --agent
```

The default ToolAPI endpoint is 127.0.0.1:32503. Set the actual endpoint and DLL location before starting when necessary:

```powershell
$env:ASCET_CODE_SEARCH_PORT='32631'
$env:ASCET_API_DLL='E:\ETAS\ASCET6.4\cebra\Etas.AscetNET.dll'
node dist/src/cli.js --agent
```

Send one UTF-8 JSON request per line on stdin; read one complete response per line on stdout. Keep the process alive and send requests serially. Closing stdin releases the Bridge connection. Agent applications should spawn Node directly with piped stdin/stdout.

```json
{"operation":"find","component":"AEB_State_Machine","member":"init","match":"exact","limit":20}
{"operation":"find","target":"states","component":"AEB_State_Machine","match":"exact"}
{"operation":"find","target":"transitions","component":"AEB_State_Machine","match":"exact"}
{"query":["AEBLockTime","AEB_FxTarPT"],"mode":"identifier","group_by":"object","limit":20}
{"operation":"read","ref":"<ref from the same running CLI>","if_unchanged":true}
{"cursor":"<next_cursor from the same running CLI>"}
```

Requests and results use [AGENT_SIMPLE.md](AGENT_SIMPLE.md). The Agent prompt is [AGENT_SEARCH_PROMPT.md](AGENT_SEARCH_PROMPT.md). The three `agent-simple-*-tool-definition.json` files describe find/search/read for the CLI client.

The model-facing schemas omit `operation`. Send named calls to the same running CLI using this envelope, or use the exported `AgentToolClient` adapter:

```json
{"tool":"ascet_code_find","arguments":{"component":"AEB_State_Machine","member":"init","match":"exact"}}
{"tool":"ascet_code_read","arguments":{"ref":"<returned readable ref>"}}
{"tool":"ascet_code_search","arguments":{"cursor":"<returned next_cursor>"}}
```

```javascript
import { AgentToolClient } from './dist/src/index.js';
const tools = new AgentToolClient();
try {
  const found = await tools.call('ascet_code_find', { component: 'DBR_Force2Pressure', member: 'init', match: 'exact' });
  const body = await tools.call('ascet_code_read', { ref: found.results[0].ref, if_unchanged: true });
  console.log(body);
} finally { await tools.close(); }
```

The adapter preserves named-tool identity in the CLI envelope and validates its operation without parsing/altering refs or changing scope. Raw `operation` requests remain supported. Detailed raw-CLI guidance is in [AGENT_SEARCH_REFERENCE.md](AGENT_SEARCH_REFERENCE.md). Results expose native owning `component_type` when available. BDE hits, local nodes and connection endpoints expose `referenced_component_path`; the local node `component_path` alias remains for compatibility. These identities do not change saved-source hashes.

The package also declares three parallel Pi extension tools with a shared persistent CLI. See [PI_TOOLS.md](PI_TOOLS.md). Standalone CLI execution still uses only Node built-ins; loading the Pi extension requires its packaged `ajv` dependency.

### Validate Agent Answers

`AgentToolClient.evidence` tracks returned selectors, scope, expiry and complete saved-text reads for the current task. It retains metadata only. Call `beginTask()` when starting another task in the same CLI session. Raw JSONL users can feed normalized operation request/response pairs into the exported `AgentEvidence` ledger; use `agentToolRequest` to normalize named envelopes first.

The caller can require a strict final answer and retry invalid answers using its own model:

```javascript
const result = await tools.completeAnswer(finalText, async feedback => {
  return agent.continueWith(feedback); // Your Agent may call the same three tools.
}, { complete_text_read: true, scoped_text_read: true }, { max_retries: 2 });
// result.status: accepted/rejected; attempts preserves each original response.
```

Answers must contain exactly `outcome`, `answer`, `evidence_refs`, `missing_evidence`. Allowed outcomes are `located`, `partial`, `not_found`, `unsupported`. Cursors and failed-read echoes cannot be cited. Partial/unsupported answers must name the evidence gap. `not_found` requires a complete zero-hit operation; this proves absence only within that operation's scope and supported coverage.

Optional requirements include `read_refs`, `complete_code_refs` (saved text or diagram_text), `complete_text_read`, `scoped_text_read`, `text_component` (returned ref or exact owner path), `complete_search`, `all_search_pages` and `multiline_regex_match`. Positive `located` answers must satisfy them. Ranged reads do not prove a full Method. Graphical local reads do not prove text or a complete Diagram. Full-source continuations must be contiguous and have the same ref. Changes, expiry, invalidation and task reset revoke relevant evidence.

Use `complete_search: {query:['AxAct','VxAct','FxDriver'],mode:'identifier'}` to require full delivery of that particular search batch. This leaves unrelated exploration pages optional. The query argument shape and matching/scope arguments must agree with the actual request; limit/context/grouping are ignored. A fresh matching query can replace an older snapshot. Different matching arguments/scopes cannot replace each other. `all_search_pages` is the stricter opt-in policy requiring all distinct searches in the task to be exhausted. Feedback includes the required search arguments and up to five outstanding cursor selectors. An empty cursor list does not prove completion: the required query may never have run (for example, `text` cannot satisfy `identifier`). A multiline-regex requirement needs a full read of the same cited member that actually matched.

This opt-in caller API validates format and retrieval preconditions. It cannot judge whether natural-language explanations correctly describe the source or runtime behavior. Keep separate source/trace review. The CLI remains a deterministic tool and never contacts a model itself.

`find.name` is a literal name/path condition for the selected `target`, including Components, members and Diagrams. Existing `component`/`member`/`diagram` name fields remain valid. Conflicting duplicate conditions are rejected rather than silently combined.

`search.query` accepts a string, a single `{text, mode, ...}` object, or an array of either. Per-query options override only supplied top-level defaults. Source ranges count CRLF, lone CR and LF as line breaks and retain original absolute line numbers.

Search/read output is bounded to 128 KiB with pagination. `total_hits` counts the complete search; `limit` limits only the page. Default context is 10 lines before and after a text hit. New operations read the current saved model; continuations use the operation's short-lived snapshot. Ref and cursor belong to one CLI session, Database, and ASCET PID. After a restart, reacquire refs. `partial` requires inspecting `issues`.

`find target:objects` lists native BDE objects, including unnamed ones; use `in.object_kind` and a whole Diagram ref in `in.diagram` to limit discovery. `find target:states/transitions` includes objects with empty saved code slots. A State read returns incoming/outgoing and code_slots refs; a Transition read returns start_state/end_state, saved priority and code_slots refs. Read those refs for details or code. State/Transition refs always validate saved topology/slot revisions and reject BDE-only depth/direction/include_graph. Large relations paginate within the shared budget. Saved priority/connections do not assert runtime behavior.

Scoped hot Transition/BDE discovery measured approximately 50-65 ms. The first structural query after a full isolated restart took 1,077 ms; cold-start latency was not below 500 ms. Table Dataset interpolation/extrapolation is not exposed by this package.

There is no background synchronization or persistent source index. This package does not include MCP. In the current 180-Component/870-document/71-Diagram test Database, two serial hot CLI runs separated by a full isolated ASCET restart passed 1400/1400 searches below 500 ms. Default-context `set` had a 385 ms median and 442 ms maximum; including context=0, the maximum across all samples was 455 ms. Default context was 10 lines on each side, group_by object, limit 20, with full hit counts. Timing covers request send through complete JSON parsing. Both timed runs followed snapshot reads and warmup; startup, truly cold first reads, other Database sizes and system workloads are outside this measured result.

Scalar default graphic construction uses request-local templates grouped by class, typeID and Return status. Every Element receives independent mutable copies before native model updates, Sequence handling and connection-type propagation. Custom constructors, unsupported graph nodes or complex hash keys fall back to native construction. No model or graphic templates are retained between requests.

Large native responses use ASCET-side zlib level 1 and Windows Base64 encoding before Cebra transport. Small or incompressible responses stay plain; an unavailable compressor falls back to plain transport. The Bridge also supports its previous gzip transport. Agent JSON is unchanged.

## Rebuild

The sources are included for development. Install the development dependencies only when rebuilding:

```powershell
npm.cmd install
powershell.exe -NoProfile -ExecutionPolicy Bypass -File build.ps1 -AscetDll 'E:\ETAS\ASCET6.4\cebra\Etas.AscetNET.dll'
```

`manifest.json` records the packaged files, sizes, and SHA-256 hashes. The repository retains the regression suite and live acceptance reports; they are not part of this runtime package.
