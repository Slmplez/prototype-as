import { performance } from 'node:perf_hooks';
import type { JsonValue, TSchema } from '@earendil-works/pi-ai';
import type { ExtensionAPI, ToolExposure } from '@earendil-works/pi-coding-agent';
import { getToolContracts, validateToolInput, validateToolOutput, type ToolProfile } from './tool-contracts.js';
import { renderAgentResult } from './agent-result-view.js';
import { PiClient, type PiClientOptions } from './pi-client.js';
import { ToolError } from './patterns.js';
import { isRecord } from './validation.js';
import { TaskToolError } from './task-tools.js';
import { TaskIntentState, TASK_INTENT_PROTOCOL } from './task-intent.js';

export interface AscetExtensionOptions extends PiClientOptions { exposure?: Extract<ToolExposure, 'direct' | 'deferred' | 'codemode'>; toolProfile?: ToolProfile; requireIntent?: boolean }

export function createAscetExtension(options: AscetExtensionOptions = {}) {
  return function ascetExtension(pi: ExtensionAPI): void {
    const profile = options.toolProfile ?? (process.env.ASCET_PI_TOOL_PROFILE === 'task' ? 'task' : process.env.ASCET_PI_TOOL_PROFILE === 'optimized' ? 'optimized' : 'baseline');
    const owner = new PiClient({ ...options, client: { ...options.client,
      env: { ...process.env, ...options.client?.env, ASCET_PI_TOOL_PROFILE: profile } } });
    let answerRepairUsed = false;
    const intentState = new TaskIntentState();
    const requireIntent = profile === 'task' && (options.requireIntent ?? process.env.ASCET_PI_REQUIRE_INTENT !== '0');
    // A low-level model turn also starts during a repair. Reset only when a
    // new user prompt starts; otherwise repeated invalid answers can loop.
    pi.on('before_agent_start', () => { answerRepairUsed = false; intentState.reset(); });
    pi.on('message_end', event => {
      if (!requireIntent || event.message.role !== 'assistant') return;
      for (const part of event.message.content) if (part.type === 'text') intentState.observe(part.text);
    });
    pi.on('tool_call', event => {
      if (!requireIntent || !event.toolName.startsWith('ascet_')) return;
      const reason = intentState.beforeTool();
      if (reason) return { block: true, reason };
    });
    // Task profile answers are consumed as machine-readable JSON by agents and
    // downstream automation. Validate citations at the final settlement
    // boundary, where all tool results for the turn are available. One bounded
    // continuation lets Pi correct a fabricated/expired ref without creating a
    // retry loop. Evaluation harnesses can set ASCET_PI_VALIDATE_FINAL=0 to
    // preserve first-attempt scoring.
    pi.on('agent_before_settle', async event => {
      if (profile !== 'task' || process.env.ASCET_PI_VALIDATE_FINAL === '0' || event.outcome !== 'completed') return;
      const messages: any[] = event.context?.contextMessages ?? [];
      const assistant = [...messages].reverse().find(message => message?.role === 'assistant');
      const text = Array.isArray(assistant?.content) ? assistant.content.filter((part: any) => part?.type === 'text').map((part: any) => part.text).join('\n') : '';
      const validation = owner.validateFinalAnswer(text);
      if (requireIntent) {
        let intent: unknown, outcome: unknown;
        try { const answer = JSON.parse(text); intent = answer?.intent; outcome = answer?.outcome; } catch { /* JSON validation already records the format failure. */ }
        validation.errors.push(...intentState.validateFinal(intent, outcome));
        validation.valid = validation.errors.length === 0;
      }
      if (validation.valid) return { entries: [{ type: 'custom', customType: 'ascet_answer_validation', data: { status: 'accepted' } }] };
      if (answerRepairUsed) return { entries: [{ type: 'custom_message', customType: 'ascet_answer_validation',
        content: JSON.stringify({ status: 'rejected', code: 'INVALID_FINAL_ANSWER', errors: validation.errors }), display: true }], continue: false };
      answerRepairUsed = true;
      return { entries: [{ type: 'custom_message', customType: 'ascet_answer_validation',
        content: 'ASCET final answer validation failed. Return exactly one JSON object with valid outcome, answer, evidence_refs, missing_evidence and facts.' + (requireIntent ? ' Include the declared intent.' : '') + ' Use only actual unexpired refs returned by this tool session; never invent or modify a ref, and never cite a cursor. Errors: ' + validation.errors.slice(0, 4).join(' | '), display: false }], continue: true };
    });
    pi.on('session_shutdown', async () => { await owner.close(); });
    for (const contract of getToolContracts(profile)) pi.registerTool({
      name: contract.name, label: contract.name, description: contract.description,
      promptSnippet: contract.description, promptGuidelines: requireIntent ? [...contract.guidelines, TASK_INTENT_PROTOCOL] : contract.guidelines,
      parameters: contract.inputSchema as TSchema,
      outputSchema: contract.outputSchema as TSchema,
      executionMode: 'parallel', exposure: options.exposure ?? 'direct',
      annotations: { readOnlyHint: true },
      namespace: { name: 'ascet_code', description: 'Saved ASCET code and BDE Diagram search.',
        instructions: profile === 'task' ? 'Find names and Variant choices; search_code matches text bodies, search_bde matches original graph fields. Read text, BDE and State/Transition refs with their corresponding tools. Independent queries are not AND.' : 'Use find for literal names, search for source/original fields, and read returned refs. Query arrays are independent. Local BDE reads preserve Pins and Hierarchy boundaries; they do not expand referenced implementations. State/Transition code_slots refs select saved code. Whole raw graphs must fit the budget. Deferred discovery needs an active tool_search; codemode needs an active codemode tool.' },
      async execute(toolCallId, params, signal) {
        try {
          validateToolInput(contract.name, params, profile);
          const result = await owner.call(contract.name, params, signal);
          const projectionStarted = performance.now();
          validateToolOutput(contract.name, result.response);
          const text = renderAgentResult(result.response, profile);
          if (Buffer.byteLength(text) > (options.maxModelBytes ?? 32 * 1024)) throw new ToolError('OUTPUT_BUDGET_EXCEEDED', 'CLI result exceeded the model budget; narrow scope or read fewer refs');
          return { content: [{ type: 'text' as const, text }], structuredContent: result.response as JsonValue,
            isError: isRecord(result.response) && result.response.status === 'error',
            details: { tool_call_id: toolCallId, generation: result.generation, ...result.timings,
              projection_ms: performance.now() - projectionStarted } };
        } catch (error) {
          const response = { status: 'error' as const, code: error instanceof ToolError ? error.code : 'REQUEST_FAILED',
            message: (error instanceof Error ? error.message : String(error)).slice(0, 1000),
            ...(error instanceof TaskToolError ? { field: error.field, next_tool: error.next_tool, next_calls: error.next_calls } : {}) };
          return { content: [{ type: 'text' as const, text: renderAgentResult(response, profile) }], structuredContent: response as JsonValue,
            isError: true, details: { tool_call_id: toolCallId } };
        }
      },
    });
  };
}

export default createAscetExtension();
