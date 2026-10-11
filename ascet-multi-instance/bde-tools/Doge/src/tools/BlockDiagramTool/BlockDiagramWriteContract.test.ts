import { expect, test } from 'bun:test'
import { readFile } from 'node:fs/promises'
import { ensureBootstrapMacro } from '../../bootstrapMacro.js'

ensureBootstrapMacro()
const { blockDiagramSchemas } = await import('./BlockDiagramTool.js')

test('write argument shapes match the Python contract', async () => {
  const cases = JSON.parse(await readFile(new URL('../../../../scripts/bde_write_contract_cases.json', import.meta.url), 'utf8'))
  for (const item of cases) {
    const schema = blockDiagramSchemas[item.tool as keyof typeof blockDiagramSchemas]
    expect(schema.safeParse(item.args).success, item.id).toBe(item.valid)
  }
})

test('graphical history finalization is explicit and typed', () => {
  const input = { change_id: 'edit_example', request_id: 'finalize-example', finalize: true, preview: true }
  expect(blockDiagramSchemas.bd_revert.safeParse(input).success).toBe(true)
  expect(blockDiagramSchemas.bd_revert.safeParse({ ...input, finalize: 'true' }).success).toBe(false)
  expect(blockDiagramSchemas.bd_edit.safeParse({ snapshot: 's_example', request_id: 'edit-example',
    operations: [{ op: 'delete_node', target: 'Main/n1' }], finalize: true }).success).toBe(false)
})
