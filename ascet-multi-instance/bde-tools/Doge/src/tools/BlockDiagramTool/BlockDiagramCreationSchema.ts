import { z } from 'zod/v4'

const identifier = z.string().regex(/^[A-Za-z_][A-Za-z0-9_]{0,63}$/)
const text = z.string().min(1).max(256)
const common = {
  op: z.literal('create_block'),
  position: z.tuple([z.number().int().min(-100000).max(100000), z.number().int().min(-100000).max(100000)])
    .describe('Native placement center in diagram coordinates.'),
}
const definition = z.string().max(2048).regex(/^\\?[^\\]+(?:\\[^\\]+)+\\?$/)
  .describe('Full existing library definition path; does not create a new library type.')

// Kind-specific objects also expose the required fields to JSON-schema consumers.
export const creationSchema = z.discriminatedUnion('kind', [
  z.strictObject({ ...common, kind: z.enum(['variable', 'parameter', 'constant']),
    name: identifier, model_type: z.enum(['', 'cont', 'sdisc', 'udisc', 'log']).optional(),
    initial_value: z.union([z.number().min(-1000000000).max(1000000000), z.boolean()]).optional(),
  }).refine(value => {
    if (value.initial_value === undefined) return true
    if (value.model_type === 'log') return typeof value.initial_value === 'boolean'
    if (typeof value.initial_value !== 'number') return false
    return !['sdisc', 'udisc'].includes(value.model_type ?? '') || (Number.isInteger(value.initial_value) && (value.model_type !== 'udisc' || value.initial_value >= 0))
  }, 'Initial value must match scalar model_type'),
  z.strictObject({ ...common, kind: z.literal('array'), name: identifier,
    model_type: z.enum(['', 'cont', 'sdisc', 'udisc', 'log']).optional(), max_size: z.number().int().min(1).max(256).optional() }),
  z.strictObject({ ...common, kind: z.literal('matrix'), name: identifier,
    model_type: z.enum(['', 'cont', 'sdisc', 'udisc', 'log']).optional(), max_size: z.tuple([z.number().int().min(1).max(16),z.number().int().min(1).max(16)]).optional() }),
  z.strictObject({ ...common, kind: z.literal('distribution'), name: identifier,
    model_type: z.enum(['', 'cont', 'sdisc', 'udisc', 'log']).optional(), max_size: z.number().int().min(1).max(256).optional() }),
  z.strictObject({ ...common, kind: z.enum(['oned_table', 'oned_table_fixed']),
    name: identifier, model_type: z.enum(['', 'cont', 'sdisc', 'udisc']).optional(), max_size: z.number().int().min(1).max(256).optional() }),
  z.strictObject({ ...common, kind: z.enum(['twod_table', 'twod_table_fixed']),
    name: identifier, model_type: z.enum(['', 'cont', 'sdisc', 'udisc']).optional(), max_size: z.tuple([z.number().int().min(1).max(16),z.number().int().min(1).max(16)]).optional() }),
  z.strictObject({ ...common, kind: z.enum(['receive_message', 'send_message', 'send_receive_message']),
    name: identifier, model_type: z.enum(['', 'cont', 'sdisc', 'udisc', 'log', 'enum']).optional(),
    definition: definition.refine(value => !value.includes('|'), 'Message definition cannot contain pipe').optional(),
    message_scope: z.enum(['local', 'imported', 'exported']).optional()
      .describe('Explicit declaration scope. Omission preserves the native factory default; receive is imported, send/send_receive exported.'),
  }).refine(value => (value.model_type === 'enum') === (value.definition !== undefined), 'Only enum messages require an existing definition'),
  z.strictObject({ ...common, kind: z.enum(['resource', 'implementation_cast']), name: identifier }),
  z.strictObject({ ...common, kind: z.literal('oned_table_group'), name: identifier,
    x_distribution: z.string().regex(/^Main\/m_[0-9a-f]+$/) }),
  z.strictObject({ ...common, kind: z.literal('twod_table_group'), name: identifier,
    x_distribution: z.string().regex(/^Main\/m_[0-9a-f]+$/), y_distribution: z.string().regex(/^Main\/m_[0-9a-f]+$/) }),
  z.strictObject({ ...common, kind: z.literal('delta_t'), name: z.literal('dT') }),
  z.strictObject({ ...common, kind: z.literal('enumeration'), name: identifier,
    definition: definition.optional(),
    new_definition: z.strictObject({ name: identifier, items: z.array(identifier).min(1).max(256) })
      .describe('Create a new enum type in the sandbox component folder, then its BDE occurrence. Inverse refuses new references or changed items.').optional(),
    initial_value: identifier.optional(),
  }).refine(value => (value.definition !== undefined) !== (value.new_definition !== undefined), 'Choose definition or new_definition')
    .refine(value => !value.new_definition || new Set(value.new_definition.items).size === value.new_definition.items.length, 'Enum items must be unique')
    .refine(value => !value.new_definition || value.initial_value === undefined || value.new_definition.items.includes(value.initial_value), 'Initial value must belong to enum items'),
  z.strictObject({ ...common, kind: z.literal('component'), name: identifier, definition }),
  z.strictObject({ ...common, kind: z.enum(['existing_model', 'literal', 'comment']), name: text }),
  z.strictObject({ ...common, kind: z.literal('operator'),
    name: z.enum(['&', '|', 'not', 'bet', '+', '-', '*', '/', '%', 'min', 'max', '>', '<', '>=', '<=', '=', '!=', 'neg', 'abs', 'verify', 'assert', 'limit', 'wraparound']),
    arity: z.number().int().min(1).max(16).optional().describe('Fixed operators require their native input count; omission uses it. Adjustable operators default to 2.'),
  }).refine(value => {
    const fixed: Record<string, number> = { '-': 2, '/': 2, '%': 2, '>': 2, '<': 2, '>=': 2, '<=': 2, '=': 2, '!=': 2,
      abs: 1, not: 1, neg: 1, verify: 1, assert: 1, bet: 3, limit: 1, wraparound: 1 }
    return value.arity === undefined || (fixed[value.name] === undefined ? value.arity >= 2 : value.arity === fixed[value.name])
  }, 'Arity must match the native operator input count'),
  z.strictObject({ ...common, kind: z.literal('control'),
    name: z.enum(['Break', 'IfThen', 'Case', 'While', 'Switch', 'IfThenElse', 'MUX']),
    arity: z.number().int().min(2).max(16).optional() }),
  z.strictObject({ ...common, kind: z.literal('hierarchy'), name: identifier,
    inputs: z.array(identifier).max(16).optional(), outputs: z.array(identifier).max(16).optional(),
  }).refine(value => {
    const ports = [...(value.inputs ?? []), ...(value.outputs ?? [])]
    return new Set(ports).size === ports.length
  }, 'Hierarchy port names must be unique across inputs and outputs'),
])
