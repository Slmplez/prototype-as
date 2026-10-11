import { expect, test } from 'bun:test'
import { readFile } from 'node:fs/promises'
import { ensureBootstrapMacro } from '../../bootstrapMacro.js'

ensureBootstrapMacro()
const { blockDiagramSchemas } = await import('./BlockDiagramTool.js')

test('read argument shape corpus matches Python before any native calls', async () => {
  const cases = JSON.parse(await readFile(new URL('../../../../scripts/bde_read_contract_cases.json', import.meta.url), 'utf8'))
  for (const item of cases) {
    const schema = blockDiagramSchemas[item.tool as keyof typeof blockDiagramSchemas]
    expect(schema.safeParse(item.args).success, item.id).toBe(item.valid)
  }
})
