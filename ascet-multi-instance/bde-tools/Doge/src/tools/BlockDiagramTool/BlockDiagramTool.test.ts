import { afterAll, expect, test } from 'bun:test'
import { mkdir, mkdtemp, rm, writeFile } from 'node:fs/promises'
import { tmpdir } from 'node:os'
import { join } from 'node:path'
import { ensureBootstrapMacro } from '../../bootstrapMacro.js'
import type { ToolUseContext } from '../../Tool.js'

ensureBootstrapMacro()
const { BlockDiagramTools, blockDiagramSchemas } = await import('./BlockDiagramTool.js')
const store = process.env.ASCET_BD_TEST_STORE || await mkdtemp(join(tmpdir(), 'doge-bd-test-'))
await mkdir(store, { recursive: true })
const previousStore = process.env.ASCET_BD_STORE
process.env.ASCET_BD_STORE = store

afterAll(async () => {
  if (previousStore === undefined) delete process.env.ASCET_BD_STORE
  else process.env.ASCET_BD_STORE = previousStore
  if (!process.env.ASCET_BD_TEST_STORE) await rm(store, { recursive: true, force: true })
})

const context = { abortController: new AbortController() } as ToolUseContext

test.skipIf(process.env.ASCET_BD_STRUCTURAL_LIVE_TEST !== '1')('Doge structure read, precise transition edit, offline diff/history and separate-process revert', async () => {
  const previousWrites = process.env.ASCET_BD_STRUCTURAL_WRITES
  process.env.ASCET_BD_STRUCTURAL_WRITES = '1'
  const evidence: Record<string, unknown> = {}
  async function invoke(name: string, args: Record<string, unknown>) {
    const tool = BlockDiagramTools.find(t => t.name === name)!
    const schema = blockDiagramSchemas[name as keyof typeof blockDiagramSchemas]
    expect(schema.safeParse(args).success).toBe(true)
    const { data } = await tool.call(args, context)
    evidence[name + Object.keys(evidence).length] = data
    await writeFile(join(store, 'structure-live-evidence.json'), JSON.stringify(evidence, null, 2))
    expect(data.is_error, data.content).toBe(false)
    return { header: JSON.parse(data.content.split('\n\n')[0]!), body: data.content.split('\n\n').slice(1).join('\n\n') }
  }
  const read = await invoke('bd_read', { component: 'BDE_Tool_Experiments\\Trial_state_20260930_011719', view: 'structure', max_bytes: 16384 })
  expect(read.header.diagram_kind).toBe('state_machine')
  expect(read.header.page.has_more).toBe(false)
  const rows = read.body.split('\n').map(line => JSON.parse(line))
  const transition = rows.find(r => r.ref === 'Main/t8')
  expect(transition).toBeDefined()
  const edit = await invoke('bd_edit', { snapshot: read.header.snapshot, request_id: 'structure-priority', operations: [{ op: 'set_transition_priority', target: 'Main/t8', priority: transition.priority + 1 }] })
  const receipt = JSON.parse(edit.body)
  expect(receipt.status).toBe('applied_observed')
  expect(receipt.differences).toHaveLength(1)
  expect(receipt.differences[0].ref).toBe('t8')
  try {
    if (process.env.ASCET_BD_NATIVE_PRESENTATION === '1') {
      const tool = BlockDiagramTools.find(t => t.name === 'bd_diff')!
      expect(tool.isReadOnly({ change_id: receipt.change_id, presentation: 'show' })).toBe(false)
      try {
        const shown = await invoke('bd_diff', { change_id: receipt.change_id, presentation: 'show' })
        expect(JSON.parse(shown.body).presentation_status).toBe('native_call_succeeded_visual_unverified')
      } finally {
        const cleared = await invoke('bd_diff', { change_id: receipt.change_id, presentation: 'clear' })
        expect(JSON.parse(cleared.body).native.presentation).toBe('cleared')
      }
    }
  const diff = await invoke('bd_diff', { change_id: receipt.change_id, max_bytes: 16384 })
  expect(diff.header.source).toContain('no native read')
  } finally {
    try {
      const revert = await invoke('bd_revert', { change_id: receipt.change_id, request_id: 'structure-priority-inverse' })
      expect(JSON.parse(revert.body).status).toBe('verified_local')
    } finally {
      if (previousWrites === undefined) delete process.env.ASCET_BD_STRUCTURAL_WRITES
      else process.env.ASCET_BD_STRUCTURAL_WRITES = previousWrites
    }
  }
  const history = await invoke('bd_inspect', { query: 'edits', component: 'BDE_Tool_Experiments\\Trial_state_20260930_011719', max_bytes: 16384 })
  expect(history.header.diagnostics).toBe(0)
  expect(history.header.records).toBe(2)
}, 30000)

test('Doge registry contains the six Block Diagram native tools', async () => {
  const { getAllBaseTools } = await import('../../tools.js')
  const names = getAllBaseTools().map(t => t.name)
  for (const tool of BlockDiagramTools) {
    expect(names.filter(n => n === tool.name)).toHaveLength(1)
    expect(tool.isConcurrencySafe({})).toBe(false)
  }
}, 30000)

test('native Tool.call reaches Python backend and maps model output', async () => {
  const tool = BlockDiagramTools.find(t => t.name === 'bd_inspect')!
  const { data } = await tool.call({ query: 'capabilities' }, context)
  expect(data.is_error).toBe(false)
  expect(data.content).toContain('bd_read')
  expect(data.content).toContain('automatic_recording')
  const mapped = tool.mapToolResultToToolResultBlockParam(data, 'tool-use-test')
  expect(mapped.is_error).toBe(false)
  expect(mapped.content).toBe(data.content)
  expect(Buffer.byteLength(data.content)).toBeLessThanOrEqual(12288)
})

test('automatic history is available through the native schema and backend', async () => {
  expect(blockDiagramSchemas.bd_inspect.safeParse({ query: 'changes', component: '\\Library\\Example' }).success).toBe(true)
  expect(blockDiagramSchemas.bd_diff.safeParse({ change_id: 'chg_' + '1'.repeat(32) }).success).toBe(true)
  const inspect = BlockDiagramTools.find(t => t.name === 'bd_inspect')!
  const { data } = await inspect.call({ query: 'changes' }, context)
  expect(data.is_error).toBe(false)
  expect(JSON.parse(data.content.split('\n\n')[0]!).records).toBe(0)
})

test('local topology scope is explicit and bounded in the native schema', () => {
  expect(blockDiagramSchemas.bd_read.safeParse({ component: '\\Library\\Example', scope: { targets: ['Main/n15'], include_layout: true } }).success).toBe(true)
  expect(blockDiagramSchemas.bd_read.safeParse({ component: '\\Library\\Example', scope: { targets: ['state/transition'] } }).success).toBe(false)
  expect(blockDiagramSchemas.bd_read.safeParse({ component: '\\Library\\Example', scope: { targets: [] } }).success).toBe(false)
})

test('edit history query is available with writes disabled', async () => {
  expect(blockDiagramSchemas.bd_inspect.safeParse({ query: 'edits', database: 'example' }).success).toBe(true)
  const inspect = BlockDiagramTools.find(t => t.name === 'bd_inspect')!
  const { data } = await inspect.call({ query: 'edits', database: 'nonexistent-history-test-database' }, context)
  expect(data.is_error).toBe(false)
  expect(JSON.parse(data.content.split('\n\n')[0]!).records).toBe(0)
})

test.skipIf(process.env.ASCET_BD_HISTORY_TEST !== '1')('offline Doge discovers previously captured real edits and actual patch values', async () => {
  const inspect = BlockDiagramTools.find(t => t.name === 'bd_inspect')!
  const diff = BlockDiagramTools.find(t => t.name === 'bd_diff')!
  const responses: string[] = []
  let { data } = await inspect.call({ query: 'edits', max_bytes: 2048 }, context)
  let listing = ''
  let pages = 0
  while (true) {
    expect(data.is_error).toBe(false)
    expect(Buffer.byteLength(data.content)).toBeLessThanOrEqual(2048)
    responses.push(data.content)
    const separator = data.content.indexOf('\n\n')
    const header = JSON.parse(data.content.slice(0, separator))
    expect(header.records).toBe(2)
    expect(header.diagnostics).toBe(0)
    listing += data.content.slice(separator + 2)
    expect(++pages).toBeLessThan(30)
    if (!header.page.next_cursor) break
    ;({ data } = await inspect.call({ cursor: header.page.next_cursor }, context))
  }
  const rows = listing.split('\n').map(line => JSON.parse(line))
  expect(rows.map(row => row.request_id)).toEqual(['doge-sandbox-restore', 'doge-sandbox-long'])
  expect(rows[0].reverts).toBe(rows[1].change_id)
  expect(rows[1].changed_fields).toEqual(['literal', 'position', 'size'])
  const patch = await diff.call({ change_id: rows[1].change_id }, context)
  expect(patch.data.is_error).toBe(false)
  const body = JSON.parse(patch.data.content.split('\n\n')[1]!)
  expect(body.observations[0].before.fields.literal).toBe('0.0')
  expect(body.observations[0].after.fields.literal).toBe('123456789012345.125')
  await writeFile(join(store, 'history-evidence.json'), JSON.stringify({ evidence: 'offline Tool.call over copied real native edit journals; no new live test or model inference', pages, rows, responses, patch: patch.data }, null, 2))
}, 30000)

test.skipIf(process.env.ASCET_BD_LIVE_TEST !== '1')('native Doge local read uses declared coverage and cached field inspection', async () => {
  const read = BlockDiagramTools.find(t => t.name === 'bd_read')!
  const inspect = BlockDiagramTools.find(t => t.name === 'bd_inspect')!
  const component = '\\PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Private\\AutomaticBraking\\AEB_dFxTar'
  const { data } = await read.call({ component, scope: { targets: ['Main/n15', 'Main/n176'], include_layout: true } }, context)
  if (data.is_error) throw new Error(data.content)
  const envelope = JSON.parse(data.content.split('\n\n')[0]!)
  expect(envelope.counts.nodes).toBe(2)
  expect(envelope.collected.not_collected).toContain('method bodies')
  expect(data.content).toContain('Main/n15.p72')
  const result = await inspect.call({ snapshot: envelope.snapshot, query: 'fields', targets: ['Main/n176'], fields: ['literal', 'position'] }, context)
  expect(result.data.is_error).toBe(false)
  expect(result.data.content).toContain('0.0')
}, 30000)

test('write schema rejects unknown operations and execution refuses unverified writes', async () => {
  expect(blockDiagramSchemas.bd_edit.safeParse({ snapshot: 's1', request_id: 'r1', operations: [{ op: 'evaluate', code: 'anything' }] }).success).toBe(false)
  const tool = BlockDiagramTools.find(t => t.name === 'bd_edit')!
  const { data } = await tool.call({ snapshot: 's1', request_id: 'r1', operations: [{ op: 'set_literal', target: 'Main/n176', expect: { text: '0.0' }, value: { text: '0.1' } }] }, context)
  expect(data.is_error).toBe(true)
  expect(JSON.parse(data.content).code).toBe('CAPABILITY_UNAVAILABLE')
  expect(tool.mapToolResultToToolResultBlockParam(data, 'edit-test').is_error).toBe(true)
})

test.skipIf(process.env.ASCET_BD_SANDBOX_LIVE_TEST !== '1')('Doge edits, records and reverts an isolated numeric literal', async () => {
  const previous = process.env.ASCET_BD_SANDBOX_WRITES
  process.env.ASCET_BD_SANDBOX_WRITES = '1'
  const read = BlockDiagramTools.find(t => t.name === 'bd_read')!
  const edit = BlockDiagramTools.find(t => t.name === 'bd_edit')!
  const diff = BlockDiagramTools.find(t => t.name === 'bd_diff')!
  const revert = BlockDiagramTools.find(t => t.name === 'bd_revert')!
  let changeId: string | undefined
  const checked = async (tool: typeof read, args: Record<string, unknown>) => {
    const { data } = await tool.call(args, context)
    if (data.is_error) throw new Error(data.content)
    return { envelope: JSON.parse(data.content.split('\n\n')[0]!), body: JSON.parse(data.content.split('\n\n')[1]!) }
  }
  try {
    const component = '\\BDE_Tool_Experiments\\Trial_20260929_155551_0f73b7'
    const { data } = await read.call({ component, scope: { targets: ['Main/n3'], include_layout: true } }, context)
    if (data.is_error) throw new Error(data.content)
    const snapshot = JSON.parse(data.content.split('\n\n')[0]!).snapshot
    const request = { snapshot, request_id: 'doge-sandbox-long', operations: [{ op: 'set_literal', target: 'Main/n3', expect: { text: '0.0' }, value: { text: '123456789012345.125' } }] }
    const preview = await checked(edit, { ...request, preview: true })
    expect(preview.body.status).toBe('preview')
    expect(preview.body.setter_called).toBe(false)
    const applied = await checked(edit, request)
    changeId = applied.body.change_id
    expect(applied.body.status).toBe('verified_local')
    expect(applied.body.differences.map((d: { field: string }) => d.field).sort()).toEqual(['literal', 'position', 'size'])
    const repeated = await checked(edit, request)
    expect(repeated.body).toEqual(applied.body)
    const patch = await checked(diff, { change_id: changeId })
    expect(patch.envelope.source).toContain('no native read')
    expect(patch.body.observations[0].after.fields.literal).toBe('123456789012345.125')
  } finally {
    try {
      if (changeId) {
        const restored = await checked(revert, { change_id: changeId, request_id: 'doge-sandbox-restore' })
        expect(restored.body.status).toBe('verified_local')
        const patch = await checked(diff, { change_id: restored.body.change_id })
        expect(patch.body.observations[0].after.fields).toEqual({ literal: '0.0', position: [80, 93], size: [40, 14] })
      }
    } finally {
      if (previous === undefined) delete process.env.ASCET_BD_SANDBOX_WRITES
      else process.env.ASCET_BD_SANDBOX_WRITES = previous
    }
  }
}, 60000)

test.skipIf(process.env.ASCET_BD_LIVE_TEST !== '1')('native Doge tool reads live ASCET, finishes every page and compares two observations', async () => {
  const read = BlockDiagramTools.find(t => t.name === 'bd_read')!
  const inspect = BlockDiagramTools.find(t => t.name === 'bd_inspect')!
  const find = BlockDiagramTools.find(t => t.name === 'bd_find')!
  const diff = BlockDiagramTools.find(t => t.name === 'bd_diff')!
  const component = '\\PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Private\\AutomaticBraking\\AEB_dFxTar'
  let { data } = await read.call({ component }, context)
  if (data.is_error) throw new Error(data.content)
  expect(data.is_error).toBe(false)
  let envelope = JSON.parse(data.content.split('\n\n')[0]!)
  const before = envelope.snapshot
  expect(envelope.recording.status).toBe('baseline')
  expect(envelope.counts).toMatchObject({ nodes: 56, pins: 120, edges: 60, definition_methods: 21 })
  let text = data.content.slice(data.content.indexOf('\n\n') + 2)
  let pages = 1
  while (envelope.page.next_cursor) {
    ;({ data } = await read.call({ cursor: envelope.page.next_cursor }, context))
    expect(data.is_error).toBe(false)
    expect(Buffer.byteLength(data.content)).toBeLessThanOrEqual(12288)
    envelope = JSON.parse(data.content.split('\n\n')[0]!)
    text += data.content.slice(data.content.indexOf('\n\n') + 2)
    expect(++pages).toBeLessThan(30)
  }
  expect(envelope.delivery.status).toBe('complete')
  expect((text.match(/^n\d+ /gm) || []).length).toBe(56)
  expect((text.match(/^  p\d+ /gm) || []).length).toBe(120)
  expect((text.match(/^e\d+ /gm) || []).length).toBe(60)
  const found = await find.call({ snapshot: before, query: 'AEB_AxCtrlConfigKp_Modify', kind: 'node' }, context)
  expect(found.data.content).toContain('Main/n259')
  const field = await inspect.call({ snapshot: before, query: 'fields', targets: ['Main/n15.p72'], fields: ['sequence'] }, context)
  expect(field.data.content).toContain('321')
  const again = await read.call({ component, view: 'overview' }, context)
  expect(again.data.is_error).toBe(false)
  const observed = JSON.parse(again.data.content.split('\n\n')[0]!)
  const after = observed.snapshot
  expect(observed.recording.status).toBe('unchanged')
  expect(observed.recording.before).toBe(before)
  const compared = await diff.call({ before, after }, context)
  expect(compared.data.is_error).toBe(false)
  expect(JSON.parse(compared.data.content.split('\n\n')[0]!).changes).toBe(0)
  const recorded = await diff.call({ change_id: observed.recording.change_id }, context)
  expect(recorded.data.is_error).toBe(false)
  expect(JSON.parse(recorded.data.content.split('\n\n')[0]!).after).toBe(after)
  const history = await inspect.call({ query: 'changes', snapshot: after }, context)
  expect(history.data.is_error).toBe(false)
  expect(JSON.parse(history.data.content.split('\n\n')[0]!).records).toBe(2)
}, 120000)
