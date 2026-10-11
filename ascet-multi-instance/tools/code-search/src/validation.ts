import type { NormalizedQuery, NormalizedSearch, ReadRequest, ReadStateMachineRequest } from './types.js';
import { compileRegex } from './patterns.js';
import { validateFilters } from './filters.js';

export function isRecord(value: unknown): value is Record<string, unknown> {
  return value !== null && typeof value === 'object' && !Array.isArray(value);
}

function rejectUnknown(value: Record<string, unknown>, allowed: string[], prefix: string): void {
  const unknown = Object.keys(value).filter(k => !allowed.includes(k)).sort();
  if (unknown.length) throw new Error(prefix + unknown.join(', '));
}

export function validateRequest(value: unknown): NormalizedQuery {
  if (!isRecord(value)) throw new Error('Request must be an object');
  rejectUnknown(value, ['id', 'query', 'mode', 'case_sensitive', 'multiline', 'dotall', 'scope', 'expected_database', 'result_format', 'context_before', 'context_after', 'filters'], 'Unsupported fields: ');
  if (Object.hasOwn(value, 'filters')) validateFilters(value.filters);
  const query = value.query;
  if (typeof query !== 'string' || !query || [...query].length > 1024 || query.includes('\0')) {
    throw new Error('query must contain 1-1024 characters without NUL');
  }
  const mode = Object.hasOwn(value, 'mode') ? value.mode : 'text';
  if (mode !== 'text' && mode !== 'identifier_occurrence' && mode !== 'regex') {
    throw new Error('mode must be text, identifier_occurrence or regex; semantic references are not implemented');
  }
  if (mode === 'identifier_occurrence' && !/^[A-Za-z_][A-Za-z_0-9]*$/.test(query)) {
    throw new Error('identifier_occurrence requires one C/ESDL identifier');
  }
  const sensitive = Object.hasOwn(value, 'case_sensitive') ? value.case_sensitive : false;
  if (typeof sensitive !== 'boolean') throw new Error('case_sensitive must be boolean');
  for (const key of ['multiline', 'dotall']) {
    if (Object.hasOwn(value, key) && typeof value[key] !== 'boolean') throw new Error(key + ' must be boolean');
  }
  if (!value.multiline && /[\r\n]/u.test(query)) throw new Error('Newline queries require multiline: true');
  if (value.multiline && mode === 'identifier_occurrence') throw new Error('multiline requires text or regex mode');
  if (value.dotall && (mode !== 'regex' || !value.multiline)) throw new Error('dotall requires regex mode and multiline: true');
  if (mode === 'regex') compileRegex(query, sensitive, value.dotall === true);
  for (const key of ['context_before', 'context_after']) {
    if (Object.hasOwn(value, key) && (!Number.isInteger(value[key]) || (value[key] as number) < 0 || (value[key] as number) > 100)) {
      throw new Error(key + ' must be an integer from 0 to 100');
    }
  }
  if (Object.hasOwn(value, 'scope') && value.scope !== 'database') throw new Error('Only database scope is implemented');
  if (Object.hasOwn(value, 'expected_database') && (typeof value.expected_database !== 'string' || !value.expected_database)) {
    throw new Error('expected_database must be a nonempty path');
  }
  if (Object.hasOwn(value, 'result_format') && value.result_format !== 'expanded' && value.result_format !== 'shared') {
    throw new Error('result_format must be expanded or shared');
  }
  return { id: value.id ?? null, query, mode, case_sensitive: sensitive,
    ...(Object.hasOwn(value, 'multiline') ? { multiline: value.multiline as boolean } : {}),
    ...(Object.hasOwn(value, 'dotall') ? { dotall: value.dotall as boolean } : {}) };
}

export function validateSearch(value: unknown): NormalizedSearch {
  if (!isRecord(value)) throw new Error('Request must be an object');
  const batch = Object.hasOwn(value, 'queries');
  let queries: NormalizedQuery[];
  if (!batch) queries = [validateRequest(value)];
  else {
    rejectUnknown(value, ['id', 'queries', 'scope', 'expected_database', 'result_format', 'context_before', 'context_after', 'filters'], 'Unsupported batch fields: ');
    if (Object.hasOwn(value, 'filters')) validateFilters(value.filters);
    if (!Array.isArray(value.queries) || value.queries.length < 1 || value.queries.length > 64) {
      throw new Error('queries must be an array of 1-64 query objects');
    }
    const options = Object.fromEntries(['scope', 'expected_database', 'result_format', 'context_before', 'context_after']
      .filter(k => Object.hasOwn(value, k)).map(k => [k, value[k]]));
    queries = value.queries.map(item => {
      if (!isRecord(item) || Object.keys(item).some(k => !['id', 'query', 'mode', 'case_sensitive', 'multiline', 'dotall'].includes(k))) {
        throw new Error('Batch items accept only id, query, mode, case_sensitive, multiline and dotall');
      }
      return validateRequest({ ...options, ...item });
    });
  }
  return { id: value.id ?? null, queries, batch,
    ...(Object.hasOwn(value, 'filters') ? { filters: validateFilters(value.filters) } : {}),
    result_format: (value.result_format ?? 'expanded') as 'expanded' | 'shared',
    ...(Object.hasOwn(value, 'context_before') ? { context_before: value.context_before as number } : {}),
    ...(Object.hasOwn(value, 'context_after') ? { context_after: value.context_after as number } : {}),
    ...(Object.hasOwn(value, 'expected_database') ? { expected_database: value.expected_database as string } : {}) };
}

export function validateRead(value: unknown): ReadRequest {
  if (!isRecord(value)) throw new Error('Request must be an object');
  rejectUnknown(value, ['operation', 'id', 'target', 'expected_database', 'expected_source_sha256'], 'Unsupported read fields: ');
  if (value.operation !== 'read') throw new Error('operation must be read');
  if (!isRecord(value.target)) throw new Error('target must contain component_oid and document_id');
  rejectUnknown(value.target, ['component_oid', 'document_id'], 'Unsupported target fields: ');
  const { component_oid, document_id } = value.target;
  if (typeof component_oid !== 'string' || !component_oid || component_oid.length > 256 || /[\r\n\0]/u.test(component_oid)) {
    throw new Error('target.component_oid must be a nonempty OID');
  }
  if (typeof document_id !== 'string' || !/^[0-9a-f]{64}$/.test(document_id)) throw new Error('target.document_id must be a search result document_id');
  if (typeof value.expected_database !== 'string' || !value.expected_database) throw new Error('expected_database is required when reading a document');
  if (Object.hasOwn(value, 'expected_source_sha256') &&
      (typeof value.expected_source_sha256 !== 'string' || !/^[0-9a-f]{64}$/.test(value.expected_source_sha256))) {
    throw new Error('expected_source_sha256 must be a SHA-256 hex digest');
  }
  return value as unknown as ReadRequest;
}

export function validateReadStateMachine(value: unknown): ReadStateMachineRequest {
  if (!isRecord(value)) throw new Error('Request must be an object');
  rejectUnknown(value, ['operation', 'id', 'component_oid', 'expected_database'], 'Unsupported state-machine read fields: ');
  if (value.operation !== 'read_state_machine') throw new Error('operation must be read_state_machine');
  if (typeof value.component_oid !== 'string' || !value.component_oid || value.component_oid.length > 256 || /[\r\n\0]/u.test(value.component_oid)) {
    throw new Error('component_oid must be a nonempty OID');
  }
  if (typeof value.expected_database !== 'string' || !value.expected_database) throw new Error('expected_database is required when reading a state machine');
  return value as unknown as ReadStateMachineRequest;
}
