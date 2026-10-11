import { createRequire } from 'node:module';
import type { ValidateFunction } from 'ajv';
import { isRecord } from './validation.js';

const Ajv = createRequire(import.meta.url)('ajv');
/** Caller-provided types, never inferred from field names or evaluation answers. */
export class TaskFactsSchema {
  private readonly validator?: ValidateFunction;
  readonly prompt?: string;
  constructor(schema?: unknown) {
    if (schema === undefined) return;
    if (!isRecord(schema)) throw new Error('ASCET factsSchema must be a JSON Schema object');
    const encoded = JSON.stringify(schema);
    if (Buffer.byteLength(encoded) > 16 * 1024) throw new Error('ASCET factsSchema exceeds 16 KiB');
    const ajv = new Ajv({ strict: false, allErrors: true, coerceTypes: false, useDefaults: false, removeAdditional: false });
    this.validator = ajv.compile(schema);
    this.prompt = 'The caller supplies this final facts JSON Schema (types only, not reference answers). Copy saved values into facts with these exact types; do not substitute endpoint objects for names/IDs or a Diagram name for a boolean. Return one final JSON object. facts_schema: ' + encoded;
  }
  validate(facts: unknown): string[] {
    if (!this.validator || this.validator(facts)) return [];
    return (this.validator.errors ?? []).slice(0, 8).map(error => 'facts' + error.instancePath + ': ' + error.message);
  }
}
