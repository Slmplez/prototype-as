import { z } from 'zod/v4'
import { creationSchema } from './BlockDiagramCreationSchema.js'

const reference = z.string().min(1).max(256)
const operation = z.discriminatedUnion('op', [
  creationSchema,
  z.strictObject({ op: z.literal('connect_data'), source: reference, target: reference }),
  z.strictObject({ op: z.literal('disconnect_data'), target: reference }),
  z.strictObject({ op: z.literal('rewire_data'), target: reference, source: reference,
    expect: z.strictObject({ source: reference, native_connection_type: z.number().int().nonnegative() }).optional() }),
  z.strictObject({ op: z.literal('delete_node'), target: reference }),
  z.strictObject({ op: z.literal('move_node'), target: reference,
    position: z.tuple([z.number().int().min(1).max(100000), z.number().int().min(1).max(100000)]) }),
  z.strictObject({ op: z.literal('set_literal'), target: reference, expect: z.strictObject({ text: z.string().max(4096) }),
    value: z.strictObject({ text: z.string().min(1).max(256) }) }),
  z.strictObject({ op: z.literal('set_comment'), target: reference, text: z.string().min(1).max(256) }),
  z.strictObject({ op: z.literal('set_sequence_number'), target: reference,
    expect: z.strictObject({ number: z.number().int().min(0).max(100000), method: reference }),
    number: z.number().int().min(0).max(100000) }),
  z.strictObject({ op: z.literal('set_sequence'), target: reference,
    expect: z.strictObject({ number: z.number().int().min(0).max(100000), method: reference.nullable() }),
    number: z.number().int().min(0).max(100000), method: reference }),
])

export const groupSchema = z.strictObject({
  request_id: reference,
  mode: z.literal('connection_sequence').optional()
    .describe('Only connect_data between existing pins; permits dependent fan-out and repeated scopes with one immutable baseline.'),
  steps: z.array(z.strictObject({ snapshot: reference, operations: z.array(operation).min(1).max(1) })).min(2).max(16)
    .describe('Explicit independent sandbox component patches, one per component. All are preflighted before the first setter. Dependent same-root steps and new shared enum definitions are unavailable.'),
  preview: z.boolean().optional(),
}).refine(value => !value.mode || value.steps.every(step => step.operations[0]!.op === 'connect_data'),
  'connection_sequence accepts only connect_data')
