import { expect, test } from 'bun:test'
import { blockDiagramSchemas } from './BlockDiagramTool.js'

const selector = { diagram: 'Main', method_alias: 'bytes:01', formal_alias: 'bytes:02', slot: 'argument' }
const operation = { op: 'delete_class_formal', selector,
  layout_policy: 'follow_verified_pins_and_orthogonal_routes', sequence_policy: 'no_implicit_changes' }
const request = { snapshot: 's_snapshot', request_id: 'class-delete', operations: [operation] }

test('Class formal schemas require exact aliases and explicit effect policies', () => {
  expect(blockDiagramSchemas.bd_edit.safeParse(request).success).toBe(true)
  expect(blockDiagramSchemas.bd_edit.safeParse({ ...request, operations: [{ ...operation, selector: { ...selector, slot: 'return' }, sequence_policy: 'allow_unassigned' }] }).success).toBe(true)
  for (const invalid of [
    { ...operation, selector: { name: 'Input' } },
    { ...operation, layout_policy: 'auto' },
    { ...operation, sequence_policy: 'allow_unassigned' },
    { ...operation, selector: { ...selector, formal_alias: 'same-name' } },
    { ...operation, force: true },
  ]) expect(blockDiagramSchemas.bd_edit.safeParse({ ...request, operations: [invalid] }).success).toBe(false)
})

test('Class complete-owner read cannot accept incident scope fields', () => {
  const input = { component: 'BDE_Tool_Experiments\\Trial_Class', view: 'class_interface' }
  expect(blockDiagramSchemas.bd_read.safeParse(input).success).toBe(true)
  expect(blockDiagramSchemas.bd_read.safeParse({ snapshot: 's_saved', view: 'class_interface' }).success).toBe(true)
  expect(blockDiagramSchemas.bd_read.safeParse({ ...input, scope: { diagram: 'Main' } }).success).toBe(false)
  expect(blockDiagramSchemas.bd_read.safeParse({ ...input, scope: { targets: ['Main/n1'] } }).success).toBe(false)
})

test('Class argument creation uses a method identity and bounded typed input', () => {
  const creation = { op: 'create_class_argument', selector: { diagram: 'Main', method_alias: 'bytes:01' },
    name: 'Acceleration', model_type: 'cont', layout_policy: operation.layout_policy, sequence_policy: 'no_implicit_changes' }
  for (const model_type of ['cont', 'sdisc', 'udisc', 'log']) {
    expect(blockDiagramSchemas.bd_edit.safeParse({ ...request, preview: true, operations: [{ ...creation, model_type }] }).success).toBe(true)
  }
  for (const invalid of [
    { ...creation, selector: { ...creation.selector, formal_alias: 'bytes:02' } },
    { ...creation, selector: { ...creation.selector, method_alias: 'calc' } },
    { ...creation, selector: { ...creation.selector, diagram: 'Other' } },
    { ...creation, name: 'calc/Signal' },
    { ...creation, name: 'x'.repeat(65) },
    { ...creation, model_type: 'enum' },
    { ...creation, direction: 'out' },
    { ...creation, sequence_policy: 'allow_unassigned' },
  ]) expect(blockDiagramSchemas.bd_edit.safeParse({ ...request, preview: true, operations: [invalid] }).success).toBe(false)
})
