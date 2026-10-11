import { expect, test } from 'bun:test'
import { mkdir, writeFile, readFile } from 'node:fs/promises'
import { join } from 'node:path'
import { ensureBootstrapMacro } from '../../bootstrapMacro.js'
import type { ToolUseContext } from '../../Tool.js'

ensureBootstrapMacro()
const { BlockDiagramTools, blockDiagramSchemas } = await import('./BlockDiagramTool.js')

test('ordinary BDE creation and node edit schemas cover the supported surface', async () => {
  const base = { snapshot: 's_' + '1'.repeat(32), request_id: 'create' }
  const cases = JSON.parse(await readFile(new URL('../../../../scripts/bde_creation_contract_cases.json', import.meta.url), 'utf8'))
  for (const item of cases) {
    expect(blockDiagramSchemas.bd_edit.safeParse({ ...base, operations: [item.operation] }).success, item.id).toBe(item.valid)
  }
  expect(blockDiagramSchemas.bd_edit.safeParse({ ...base, operations: [{ op: 'create_block', kind: 'perform_selector', name: 'bad', position: [1, 2] }] }).success).toBe(false)
  expect(blockDiagramSchemas.bd_edit.safeParse({ ...base, operations: [{ op: 'move_node', target: 'Main/n1', position: [500, 200] }] }).success).toBe(true)
})

test.skipIf(process.env.ASCET_BD_CREATION_LIVE_TEST !== '1')('Doge Tool.call creates, wires, edits, moves, deletes and reverts on the AEB_Core copy', async () => {
  const folder = process.env.ASCET_BD_TEST_STORE
  if (!folder) throw new Error('Use a new persistent ASCET_BD_TEST_STORE for recoverable evidence')
  await mkdir(folder, { recursive: true })
  const oldStore = process.env.ASCET_BD_STORE
  const oldWrites = process.env.ASCET_BD_STRUCTURAL_WRITES
  process.env.ASCET_BD_STORE = folder
  process.env.ASCET_BD_STRUCTURAL_WRITES = '1'
  const calls: unknown[] = []
  const stack: string[] = []
  const context = { abortController: new AbortController() } as ToolUseContext
  async function invoke(toolName: string, args: Record<string, unknown>) {
    const tool = BlockDiagramTools.find(t => t.name === toolName)!
    expect(blockDiagramSchemas[toolName as keyof typeof blockDiagramSchemas].safeParse(args).success).toBe(true)
    const started = performance.now()
    const { data } = await tool.call(args, context)
    calls.push({ tool: toolName, args, data, elapsed_ms: performance.now() - started })
    await writeFile(join(folder!, 'creation-tool-call.json'), JSON.stringify({ calls, outstanding: stack }, null, 2))
    const parts = data.content.split('\n\n')
    return { data, header: JSON.parse(parts[0]!), body: parts.slice(1).join('\n\n') }
  }
  async function edit(snapshot: string, operation: Record<string, unknown>, request: string) {
    const result = await invoke('bd_edit', { snapshot, request_id: request, operations: [operation] })
    expect(result.header.page.has_more).toBe(false)
    const receipt = JSON.parse(result.body)
    if (['applied_observed', 'postcondition_mismatch'].includes(receipt.status)) stack.push(receipt.change_id)
    expect(result.data.is_error, result.data.content).toBe(false)
    expect(receipt.additional_ASCET_reads).toBe(0)
    expect(receipt.after_snapshot).toMatch(/^s_[0-9a-f]{32}$/)
    return receipt
  }
  try {
    const read = await invoke('bd_read', { component: 'BDE_Tool_Experiments\\Trial_AEB_Core_20260930_123955', view: 'structure', max_bytes: 16384 })
    expect(read.data.is_error, read.data.content).toBe(false)
    const literal = await edit(read.header.snapshot, { op: 'create_block', kind: 'literal', name: '1.0', position: [1700, 1300] }, 'create-literal')
    const node = literal.differences.find((d: any) => d.after?.kind === 'node').after
    const output = literal.differences.find((d: any) => d.after?.kind === 'pin' && d.after.output).after.ref
    const op = await edit(literal.after_snapshot, { op: 'create_block', kind: 'operator', name: '+', arity: 2, position: [2000, 1300] }, 'create-operator')
    const input = op.differences.find((d: any) => d.after?.kind === 'pin' && d.after.input).after.ref
    const wire = await edit(op.after_snapshot, { op: 'connect_data', source: 'Main/' + output, target: 'Main/' + input }, 'wire')
    const text = await edit(wire.after_snapshot, { op: 'set_literal', target: 'Main/' + node.ref, expect: { text: '1.0' }, value: { text: '123456.789' } }, 'text')
    const move = await edit(text.after_snapshot, { op: 'move_node', target: 'Main/' + node.ref, position: [1800, 1400] }, 'move')
    const deleted = await edit(move.after_snapshot, { op: 'delete_node', target: 'Main/' + node.ref }, 'delete')
    const diff = await invoke('bd_diff', { change_id: deleted.change_id, max_bytes: 16384 })
    expect(diff.data.is_error).toBe(false)
    expect(diff.header.source).toContain('no native read')
  } finally {
    try {
      while (stack.length) {
        const undo = await invoke('bd_revert', { change_id: stack.at(-1), request_id: 'undo-' + stack.length })
        expect(undo.data.is_error, undo.data.content).toBe(false)
        expect(JSON.parse(undo.body).status).toBe('verified_local')
        stack.pop()
      }
      await writeFile(join(folder, 'creation-tool-call.json'), JSON.stringify({ calls, outstanding: stack }, null, 2))
    } finally {
      if (oldStore === undefined) delete process.env.ASCET_BD_STORE
      else process.env.ASCET_BD_STORE = oldStore
      if (oldWrites === undefined) delete process.env.ASCET_BD_STRUCTURAL_WRITES
      else process.env.ASCET_BD_STRUCTURAL_WRITES = oldWrites
    }
  }
}, 90000)
