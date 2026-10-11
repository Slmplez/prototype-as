import { z } from 'zod/v4'
import { creationSchema } from './BlockDiagramCreationSchema.js'

const reference = z.string().min(1).max(256)
const createdPin = (direction: 'input' | 'output') => z.strictObject({
  step: z.number().int().min(0).max(15),
  direction: z.literal(direction),
  name: reference.optional(),
})
const kinds = new Set(['literal', 'comment', 'operator', 'control', 'hierarchy', 'variable', 'parameter', 'constant',
  'receive_message', 'send_message', 'send_receive_message', 'array', 'matrix', 'distribution',
  'oned_table', 'twod_table', 'oned_table_fixed', 'twod_table_fixed', 'resource', 'delta_t',
  'implementation_cast', 'enumeration', 'component', 'oned_table_group', 'twod_table_group', 'existing_model'])
const createdDefinition = z.strictObject({ step: z.number().int().min(0).max(15) })
const identifier = z.string().regex(/^[A-Za-z_][A-Za-z0-9_]{0,63}$/)
const position = z.tuple([z.number().int().min(-100000).max(100000), z.number().int().min(-100000).max(100000)])
const dependentCreation = z.strictObject({
  op: z.literal('create_block'),
  kind: z.enum(['enumeration', 'receive_message', 'send_message', 'send_receive_message']),
  name: identifier,
  position,
  definition: createdDefinition,
  model_type: z.literal('enum').optional(),
  message_scope: z.enum(['local', 'imported', 'exported']).optional(),
  initial_value: identifier.optional(),
}).refine(value => value.kind === 'enumeration'
  ? value.model_type === undefined && value.message_scope === undefined
  : value.model_type === 'enum' && value.initial_value === undefined,
'Enum messages require model_type=enum; enum variables alone accept initial_value')
const distribution = z.union([z.string().regex(/^Main\/m_[0-9a-f]+$/), createdDefinition])
const dependentTable = z.union([
  z.strictObject({ op: z.literal('create_block'), kind: z.literal('oned_table_group'), name: identifier,
    position, x_distribution: distribution }),
  z.strictObject({ op: z.literal('create_block'), kind: z.literal('twod_table_group'), name: identifier,
    position, x_distribution: distribution, y_distribution: distribution }),
])
const dependentOccurrence = z.strictObject({ op: z.literal('create_block'), kind: z.literal('existing_model'),
  position, model: createdDefinition })
const declarationKinds = new Set([...kinds].filter(kind => !['literal', 'comment', 'operator', 'control', 'hierarchy', 'existing_model'].includes(kind)))

export const constructionSteps = z.array(z.strictObject({
  snapshot: reference,
  operations: z.tuple([z.union([
    creationSchema.refine(value => kinds.has(value.kind), 'Creation kind has no dependent recovery validation'),
    dependentCreation,
    dependentTable,
    dependentOccurrence,
    z.strictObject({ op: z.literal('connect_data'),
      source: z.union([reference, createdPin('output')]),
      target: z.union([reference, createdPin('input')]),
    }),
  ])]),
})).min(2).max(16).refine(steps => steps.every((step, index) => {
  const op = step.operations[0]
  if (op.op === 'create_block') {
    for (const field of ['x_distribution', 'y_distribution', 'model'] as const) {
      if (!(field in op)) continue
      const dependency = (op as Record<string, unknown>)[field]
      if (typeof dependency !== 'object' || dependency === null) continue
      const previousIndex = (dependency as { step: number }).step
      const previous = steps[previousIndex]?.operations[0]
      if (previousIndex >= index || previous?.op !== 'create_block'
        || (field === 'model' ? !declarationKinds.has(previous.kind) : previous.kind !== 'distribution')) return false
    }
  }
  if (op.op === 'create_block' && 'definition' in op && typeof op.definition === 'object') {
    const previous = steps[op.definition.step]?.operations[0]
    return op.definition.step < index && previous?.op === 'create_block'
      && previous.kind === 'enumeration' && 'new_definition' in previous
  }
  return op.op !== 'connect_data' || [op.source, op.target].every(endpoint =>
    typeof endpoint === 'string' || (endpoint.step < index && steps[endpoint.step]?.operations[0].op === 'create_block'))
}), 'Created pins must reference an earlier creation step')
