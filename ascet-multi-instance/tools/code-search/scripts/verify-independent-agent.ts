import assert from 'node:assert/strict';
import { execFile } from 'node:child_process';
import { promisify } from 'node:util';
import { createHash } from 'node:crypto';
import { appendFile, mkdir, readFile, writeFile } from 'node:fs/promises';
import { homedir } from 'node:os';
import { join, resolve } from 'node:path';
import { pathToFileURL } from 'node:url';
import { performance } from 'node:perf_hooks';
import { ROOT } from '../src/bridge.js';
import { agentToolRequest } from '../src/agent-tools.js';
import type { AgentAnswerAttempt } from '../src/agent-answer.js';

const runFile = promisify(execFile);
const directory = resolve(process.argv[2] ?? join(ROOT, 'experiments/independent-agent', new Date().toISOString().replace(/[:.]/g, '-')));
const packaged = resolve(process.argv[3] ?? join(ROOT, '../../dist/ascet-code-search-cli-0.2.0-20261003T082534141Z'));
const selectedIds = process.argv[4]?.split(',');
const sdkPath = resolve(process.env.ASCET_AGENT_PI_SDK ?? join(process.env.APPDATA!, 'npm/node_modules/@earendil-works/pi-coding-agent/dist/index.js'));
const agentDir = join(homedir(), '.pi/agent');
const taskPlan = JSON.parse(await readFile(join(ROOT, 'AGENT_EVALUATION_TASKS_V2.json'), 'utf8'));
const original = JSON.parse(await readFile(join(ROOT, taskPlan.base_tasks), 'utf8')).tasks;
const tasks = [...original.map((t: any) => ({ ...t, requirement: taskPlan.base_task_overrides[t.id] ?? t.requirement })), ...taskPlan.additional_tasks]
  .filter(t => !selectedIds || selectedIds.includes(t.id));
assert.ok(tasks.length && (!selectedIds || tasks.length === selectedIds.length));
const instancePath = resolve(process.env.ASCET_AGENT_LATENCY_MANIFEST ?? join(ROOT, '../../analysis/search-tools-acceptance/2026-10-02/agent-a/instance.json'));
const instance = JSON.parse(await readFile(instancePath, 'utf8')); assert.equal(instance.port, 32631);
const definitions = await Promise.all(['find', 'search', 'read'].map(async op => JSON.parse(await readFile(join(packaged, 'agent-simple-' + op + '-tool-definition.json'), 'utf8'))));
const prompt = await readFile(join(packaged, 'AGENT_SEARCH_PROMPT.md'), 'utf8');
await mkdir(directory, { recursive: true }); await mkdir(join(directory, 'agent-cwd'), { recursive: true });
await appendFile(join(directory, 'requests.jsonl'), '');
const report: any = { status: 'running', started_utc: new Date().toISOString(), directory, packaged,
  evaluation_mode: taskPlan.evaluation_mode, tasks: {}, steps: [], selected_tasks: tasks.map(t => t.id),
  prompt_sha256: createHash('sha256').update(prompt).digest('hex'),
  schema_sha256: createHash('sha256').update(JSON.stringify(definitions)).digest('hex'),
  tasks_sha256: createHash('sha256').update(JSON.stringify(tasks)).digest('hex'),
  operation_injected_by_adapter: true,
  boundary: 'Independent execution uses the installed pi SDK and user-configured default model. Per-task fresh histories, delivered CLI prompt/schemas and only three ASCET tools. Source oracles are not given to the model. Task quality requires separate evidence assessment; model self-assessments are not automatically counted as passes. One measured run, not a universal success-rate or latency claim.' };
const save = () => writeFile(join(directory, 'report.json'), JSON.stringify(report, null, 2) + '\n');
let launched = false, activeSession: any;
async function lifecycle(action: 'start' | 'finish') {
  const { stdout } = await runFile(process.execPath, [join(ROOT, 'dist/scripts/agent-evaluation-lifecycle.js'), action, directory],
    { windowsHide: true, timeout: 60_000, maxBuffer: 4 * 1024 * 1024 });
  await appendFile(join(directory, 'driver-lifecycle.log'), stdout);
  console.log(JSON.stringify({ event: 'lifecycle', action, result: JSON.parse(stdout) }));
}
function parseAnswer(text: string): unknown {
  try { return JSON.parse(text); } catch { return null; }
}
try {
  const manifest = JSON.parse(await readFile(join(packaged, 'manifest.json'), 'utf8'));
  for (const entry of manifest.files) {
    const bytes = await readFile(join(packaged, entry.path)); assert.equal(bytes.length, entry.bytes);
    assert.equal(createHash('sha256').update(bytes).digest('hex'), entry.sha256);
  }
  report.package_files_verified = manifest.files.length;
  const { AgentToolClient } = await import(pathToFileURL(join(packaged, 'dist/src/index.js')).href) as typeof import('../src/index.js');
  report.answer_repair_limit = taskPlan.limits.max_answer_retries ?? 2;
  const pi: any = await import(pathToFileURL(sdkPath).href);
  const runtime = await pi.ModelRuntime.create({ signal: AbortSignal.timeout(45_000), allowModelNetwork: false });
  const settings = pi.SettingsManager.create(join(directory, 'agent-cwd'), agentDir);
  const loader = new pi.DefaultResourceLoader({ cwd: join(directory, 'agent-cwd'), agentDir, settingsManager: settings,
    noExtensions: true, noSkills: true, noPromptTemplates: true, noThemes: true, noContextFiles: true,
    systemPrompt: prompt + '\nUse only the three ASCET tools. Do not request filesystem/shell tools. The final answer must follow the requested JSON format. No reference solutions or previous task results are available.' });
  await loader.reload();
  const makeSession = (customTools: unknown[]) => pi.createAgentSession({ cwd: join(directory, 'agent-cwd'), agentDir,
    modelRuntime: runtime, settingsManager: settings, resourceLoader: loader, customTools,
    tools: customTools.map((t: any) => t.name), sessionManager: pi.SessionManager.inMemory() });
  const smoke = await makeSession([]); activeSession = smoke.session;
  activeSession.setAutoCompactionEnabled(false); activeSession.setAutoRetryEnabled(false);
  assert.deepEqual(activeSession.getActiveToolNames(), []);
  report.model = { provider: activeSession.model?.provider, id: activeSession.model?.id, thinking: activeSession.thinkingLevel };
  if (process.env.ASCET_AGENT_EXPECTED_MODEL) assert.equal(report.model.provider + '/' + report.model.id, process.env.ASCET_AGENT_EXPECTED_MODEL, 'Pinned evaluation model changed');
  const smokeTimer = setTimeout(() => { void activeSession?.abort(); }, 45_000);
  try {
    await activeSession.prompt('Do not call any tool. Reply with exactly READY.');
    const answer = activeSession.messages.filter((m: any) => m.role === 'assistant').at(-1);
    assert.equal(answer?.stopReason, 'stop', answer?.errorMessage ?? 'Model readiness check failed');
    assert.ok(answer.content.some((c: any) => c.type === 'text' && c.text.includes('READY')));
  } finally { clearTimeout(smokeTimer); activeSession.dispose(); activeSession = undefined; }
  console.log(JSON.stringify({ event: 'model_ready', model: report.model, tasks: tasks.length }));
  await lifecycle('start'); launched = true; await save();
  const identity = JSON.parse(await readFile(join(directory, 'setup.json'), 'utf8')).identity;
  for (const task of tasks) {
    const caseStart = performance.now(), calls: any[] = [], attempts: any[] = [], rawAnswers: AgentAnswerAttempt[] = [];
    const requirements = taskPlan.answer_requirements?.[task.id] ?? {};
    let initialCalls = 0;
    const client = new AgentToolClient({ command: process.execPath, args: [join(packaged, 'dist/src/cli.js'), '--agent'], timeoutMs: 90_000,
      env: { ...process.env, ASCET_CODE_SEARCH_PORT: '32631', ASCET_CODE_SEARCH_EXTERNAL_LOCK: '0' } });
    let tail: Promise<unknown> = Promise.resolve(), timedOut = false;
    const tools = definitions.map(d => ({ name: d.name, label: d.name, description: d.description,
      parameters: { type: 'object', ...d.inputSchema }, execute: async (callId: string, args: any, signal?: AbortSignal) => {
        const queued = performance.now();
        const pending = tail.then(async () => {
          if (signal?.aborted) throw new Error('Task aborted before ASCET access');
          if (calls.length >= taskPlan.limits.max_cli_requests_per_task) throw new Error('Evaluation request budget exhausted; finish with available evidence');
          const request = agentToolRequest(d.name, args);
          const started = performance.now(), response: any = await client.call(d.name, args), ms = performance.now() - started;
          const bytes = Buffer.byteLength(JSON.stringify(response)); assert.ok(bytes <= 128 * 1024);
          if (response.debug?.ascet_pid !== undefined) assert.equal(response.debug.ascet_pid, identity.pid);
          const row = { step: report.steps.length + 1, task: task.id, tool: d.name, tool_call_id: callId,
            arguments: args, request, response, ms, queue_ms: started - queued, bytes };
          await appendFile(join(directory, 'requests.jsonl'), JSON.stringify(row) + '\n'); calls.push(row);
          report.steps.push({ ...row, response: undefined, status: response.status }); await save();
          console.log(JSON.stringify({ event: 'cli_result', task: task.id, step: row.step, tool: d.name, status: response.status,
            ms: Math.round(ms * 10) / 10, bytes, calls: calls.length }));
          return { content: [{ type: 'text', text: JSON.stringify(response) }], details: { step: row.step, ms, bytes } };
        });
        tail = pending.catch(() => {}); return pending;
      } }));
    let timer: NodeJS.Timeout | undefined;
    const taskAbort = new AbortController();
    try {
      const result = await makeSession(tools); activeSession = result.session;
      activeSession.setAutoCompactionEnabled(false); activeSession.setAutoRetryEnabled(false);
      const names = activeSession.getActiveToolNames().toSorted(); assert.deepEqual(names, definitions.map(d => d.name).toSorted());
      activeSession.subscribe((e: any) => {
        if (e.type === 'tool_execution_end') attempts.push({ tool_call_id: e.toolCallId, tool: e.toolName, is_error: e.isError,
          ...(e.isError ? { error: e.result?.content?.filter((c: any) => c.type === 'text').map((c: any) => c.text).join('\n') } : {}) });
      });
      console.log(JSON.stringify({ event: 'task_start', task: task.id, reference_budget: task.request_budget }));
      timer = setTimeout(() => { timedOut = true; taskAbort.abort(); void activeSession?.abort(); }, taskPlan.limits.max_task_ms);
      await activeSession.prompt(task.requirement + '\nReference request budget: ' + task.request_budget +
        '. Hard maximum ' + taskPlan.limits.max_cli_requests_per_task + ' CLI calls. Stop when evidence is sufficient or missing capability is established.\n' + taskPlan.answer_format);
      const lastAnswer = () => activeSession.messages.filter((m: any) => m.role === 'assistant').at(-1);
      const answerText = () => lastAnswer()?.content.filter((c: any) => c.type === 'text').map((c: any) => c.text).join('\n') ?? '';
      const initialText = answerText(); initialCalls = calls.length;
      const recordAnswer = async (text: string) => {
        rawAnswers.push({ text, validation: client.validateAnswer(text, requirements) });
        await writeFile(join(directory, task.id + '.answer-attempts.json'), JSON.stringify(rawAnswers, null, 2) + '\n');
      };
      await recordAnswer(initialText);
      const completion = await client.completeAnswer(initialText, async feedback => {
        await appendFile(join(directory, 'answer-feedback.jsonl'), JSON.stringify({ task: task.id, attempt: rawAnswers.length,
          feedback, utc: new Date().toISOString() }) + '\n');
        await activeSession.prompt(feedback); const corrected = answerText(); await recordAnswer(corrected); return corrected;
      }, requirements, { max_retries: report.answer_repair_limit, signal: taskAbort.signal });
      const messages = activeSession.messages.filter((m: any) => m.role === 'assistant');
      const last = messages.at(-1), text = completion.attempts.at(-1)!.text;
      const answerValidation = completion.attempts.at(-1)!.validation;
      const usage = messages.reduce((a: any, m: any) => ({ input: a.input + (m.usage?.input ?? 0), output: a.output + (m.usage?.output ?? 0),
        cache_read: a.cache_read + (m.usage?.cacheRead ?? 0), cost: a.cost + (m.usage?.cost?.total ?? 0) }), { input: 0, output: 0, cache_read: 0, cost: 0 });
      report.tasks[task.id] = { requirement: task.requirement, type: task.type, request_budget: task.request_budget,
        cli_requests: calls.length, cli_errors: calls.filter(c => c.response.status === 'error').length,
        tool_errors: attempts.filter(a => a.is_error).length, attempts, timed_out: timedOut,
        stop_reason: last?.stopReason, model_error: last?.errorMessage, final_text: text, parsed_answer: parseAnswer(text), usage,
        original_final_text: initialText, answer_attempts: completion.attempts, completion_status: completion.status,
        initial_cli_requests: initialCalls, repair_cli_requests: calls.length - initialCalls, answer_requirements: requirements,
        answer_validation: answerValidation,
        total_task_ms: performance.now() - caseStart, total_cli_ms: calls.reduce((s, c) => s + c.ms, 0),
        total_response_bytes: calls.reduce((s, c) => s + c.bytes, 0), evidence_steps: calls.map(c => c.step) };
      await writeFile(join(directory, task.id + '.json'), JSON.stringify(report.tasks[task.id], null, 2) + '\n');
      console.log(JSON.stringify({ event: 'task_end', task: task.id, calls: calls.length,
        outcome: report.tasks[task.id].parsed_answer?.outcome, timed_out: timedOut, stop_reason: last?.stopReason,
        completion: completion.status, answer_attempts: completion.attempts.length,
        total_ms: Math.round(report.tasks[task.id].total_task_ms) }));
    } catch (error) {
      report.tasks[task.id] = { requirement: task.requirement, cli_requests: calls.length, attempts, timed_out: timedOut,
        type: task.type, request_budget: task.request_budget, original_final_text: rawAnswers[0]?.text,
        answer_attempts: rawAnswers, final_text: rawAnswers.at(-1)?.text, parsed_answer: parseAnswer(rawAnswers.at(-1)?.text ?? ''),
        completion_status: 'interrupted', answer_requirements: requirements, initial_cli_requests: initialCalls,
        answer_validation: rawAnswers.at(-1)?.validation,
        repair_cli_requests: initialCalls ? calls.length - initialCalls : 0,
        evidence_steps: calls.map(c => c.step),
        execution_error: error instanceof Error ? error.message : String(error), total_task_ms: performance.now() - caseStart };
      await writeFile(join(directory, task.id + '.json'), JSON.stringify(report.tasks[task.id], null, 2) + '\n');
      console.log(JSON.stringify({ event: 'task_failed', task: task.id, error: report.tasks[task.id].execution_error }));
    } finally {
      if (timer) clearTimeout(timer); if (activeSession) { activeSession.dispose(); activeSession = undefined; }
      await tail; await client.close(); await save();
    }
  }
  report.status = 'recorded'; report.completed_utc = new Date().toISOString(); await save();
} catch (error) {
  report.status = launched ? 'recorded' : 'failed'; report.execution_error = error instanceof Error ? error.message : String(error);
  process.exitCode = 1; await save(); console.log(JSON.stringify({ event: 'execution_failed', error: report.execution_error }));
} finally {
  if (activeSession) { await activeSession.abort(); activeSession.dispose(); }
  if (launched) {
    try { await lifecycle('finish'); } catch (error) { report.cleanup_error = String(error); process.exitCode = 1; await save(); }
  }
}
