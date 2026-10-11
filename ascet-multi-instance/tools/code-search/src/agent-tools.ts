import { join } from 'node:path';
import { JsonLineClient, ROOT, type ClientOptions, type RequestOptions } from './bridge.js';
import { ToolError } from './patterns.js';
import { isRecord } from './validation.js';
import { onlyKeys } from './agent-validation.js';
import { AgentEvidence } from './agent-evidence.js';
import { completeAgentAnswer, validateAgentAnswer, type AgentAnswerRequirements, type AgentAnswerRepairOptions, type AgentAnswerAttempt } from './agent-answer.js';
import { TASK_OPERATIONS, canonicalTaskRequest, isTaskTool } from './task-tools.js';

const operations = { ascet_code_find: 'find', ascet_code_search: 'search', ascet_code_read: 'read', ...TASK_OPERATIONS } as const;
export type LegacyAgentToolName = 'ascet_code_find' | 'ascet_code_search' | 'ascet_code_read';
export type AgentToolName = keyof typeof operations;
export interface AgentToolCall { tool: AgentToolName; arguments: Record<string, unknown> }

/** The selected tool supplies the operation; cursor continuation remains cursor-only. */
export function agentToolRequest(name: string, args: unknown): Record<string, unknown> {
  if (!Object.hasOwn(operations, name)) throw new ToolError('INVALID_REQUEST', 'tool must be ascet_code_find, ascet_code_search or ascet_code_read');
  if (!isRecord(args)) throw new ToolError('INVALID_REQUEST', 'arguments must be a JSON object');
  if (Object.hasOwn(args, 'cursor')) {
    // Task-profile tools normalize cursor calls before validation so a stale
    // target/query cannot hide the originating-tool mismatch. Keep the legacy
    // three-tool contract strict for callers that depend on schema errors.
    if (isTaskTool(name)) return { cursor: args.cursor };
    onlyKeys(args, ['cursor']); return { ...args };
  }
  const operation = operations[name as AgentToolName];
  if (isTaskTool(name)) return { ...args, operation };
  if (Object.hasOwn(args, 'operation') && args.operation !== operation) {
    throw new ToolError('INVALID_REQUEST', 'operation conflicts with ' + name + '; omit operation when calling a named tool');
  }
  if (operation === 'read' && !Object.hasOwn(args, 'ref')) throw new ToolError('INVALID_REQUEST', 'ref is required: pass one returned ref string or an actual array of returned refs');
  if (operation === 'search' && !Object.hasOwn(args, 'query')) throw new ToolError('INVALID_REQUEST', 'query is required: pass a string, {text, mode, ...}, or an array of search terms');
  return { ...args, operation };
}

/** All three tools share one persistent JSONL process and its serialized connection. */
export class AgentToolClient {
  private readonly client: JsonLineClient;
  readonly evidence = new AgentEvidence();
  constructor(options: Partial<ClientOptions> = {}) {
    this.client = new JsonLineClient({ command: process.execPath, args: [join(ROOT, 'dist/src/cli.js'), '--agent'], ...options });
  }
  get usable(): boolean { return this.client.usable; }
  async call(name: AgentToolName, args: unknown, options: RequestOptions = {}): Promise<unknown> {
    const request = agentToolRequest(name, args);
    try {
      const response = await this.client.request({ tool: name, arguments: args }, options);
      this.evidence.record(isTaskTool(name) ? canonicalTaskRequest(name, args, isRecord(response) ? response.applied_scope : undefined) : request, response); return response;
    } catch (error) { this.evidence.clear(); throw error; }
  }
  validateAnswer(text: string, requirements: AgentAnswerRequirements = {}) {
    return validateAgentAnswer(text, this.evidence, requirements);
  }
  completeAnswer(text: string, repair: (feedback: string, attempt: AgentAnswerAttempt) => Promise<string>,
    requirements: AgentAnswerRequirements = {}, options: AgentAnswerRepairOptions = {}) {
    return completeAgentAnswer(text, this.evidence, repair, requirements, options);
  }
  beginTask(): void { this.evidence.clear(); }
  close(): Promise<void> { this.evidence.clear(); return this.client.close(); }
}
