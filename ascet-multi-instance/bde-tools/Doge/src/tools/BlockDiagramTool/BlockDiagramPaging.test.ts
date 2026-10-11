import { afterAll, expect, test } from 'bun:test'
import { execFileSync } from 'node:child_process'
import { mkdir, mkdtemp, readdir, rm } from 'node:fs/promises'
import { tmpdir } from 'node:os'
import { join } from 'node:path'
import { fileURLToPath } from 'node:url'
import { resumeBlockDiagramPage } from './BlockDiagramPaging.js'

const root = await mkdtemp(join(tmpdir(), 'bde-page-contract-'))
const scripts = fileURLToPath(new URL('../../../../scripts', import.meta.url))
const python = process.env.ASCET_BD_PYTHON || 'python'
const session = 'offline-page-contract'
const fixtureScript = `import json, sys
sys.stdout.reconfigure(encoding='utf-8')
sys.path.insert(0, sys.argv[1])
import bd_service as service
request = json.loads(sys.stdin.buffer.read())
for name in ('documents', 'cursors', 'delivery'):
    (service.STORE / name).mkdir(parents=True, exist_ok=True)
if request['action'] == 'page':
    result = service.paged(request['text'], request['meta'], request['session'], request['budget'])
elif request['action'] == 'cursor':
    original = service.load_record(request['cursor'], 'c_', 'cursors')
    original.update(request['fields'])
    original.pop('integrity_sha256')
    original['integrity_sha256'] = service.digest(original)
    ref = 'c_' + 'e' * 32
    service.write_once(service.STORE / 'cursors' / (ref + '.json'), original)
    result = {'cursor': ref}
elif request['action'] == 'corrupt':
    path = service.STORE / request['folder'] / (request['ref'] + '.json')
    value = json.loads(path.read_text(encoding='utf-8'))
    value['integrity_sha256'] = '0' * 64
    path.write_text(service.dump(value), encoding='utf-8')
    result = {}
print(service.dump(result))`

function invokePython(store: string, code: string, input: unknown) {
  return JSON.parse(execFileSync(python, ['-c', code, scripts], {
    input: JSON.stringify(input), encoding: 'utf8', windowsHide: true,
    env: { ...process.env, ASCET_BD_STORE: store, LOCALAPPDATA: join(root, 'isolated-native-state') },
  }))
}

function fixture(store: string, fields: Record<string, unknown>) {
  return invokePython(store, fixtureScript, { action: 'page', text: 'x'.repeat(6000),
    meta: { fixture: 'offline_only' }, session, budget: 2048, ...fields })
}

function resumePython(store: string, cursor: string, selectedSession = session) {
  return JSON.parse(execFileSync(python, [join(scripts, 'bd_service.py')], {
    input: JSON.stringify({ tool: 'bd_read', args: { cursor }, session: selectedSession }),
    encoding: 'utf8', windowsHide: true,
    env: { ...process.env, ASCET_BD_STORE: store, LOCALAPPDATA: join(root, 'isolated-native-state') },
  }))
}

function unpack(result: { content: string }) {
  const split = result.content.indexOf('\n\n')
  return { header: JSON.parse(result.content.slice(0, split)), body: result.content.slice(split + 2) }
}

afterAll(async () => { await rm(root, { recursive: true, force: true }) })

test('local continuation matches independent Python pages, UTF-8 bytes and delivery counts at every budget', async () => {
  const text = ('long record ' + '\u4fe1\u53f7\ud83d\ude80'.repeat(420) + '\nshort\n').repeat(9)
  for (const budget of [2048, 8192, 16384]) {
    const store = join(root, 'budget-' + budget)
    const first = unpack(fixture(store, { text, budget }))
    let cursor: string | null = first.header.page.next_cursor
    let body = first.body
    while (cursor) {
      const expected = unpack(resumePython(store, cursor))
      const actual = await resumeBlockDiagramPage('bd_read', { cursor }, session, store)
      expect(actual).toBeDefined()
      expect(actual!.is_error).toBe(false)
      expect(Buffer.byteLength(actual!.content)).toBeLessThanOrEqual(budget)
      const page = unpack(actual!)
      const expectedHeader = { ...expected.header, page: { ...expected.header.page, next_cursor: null } }
      const actualHeader = { ...page.header, page: { ...page.header.page, next_cursor: null } }
      expect(actualHeader).toEqual(expectedHeader)
      expect(page.body).toBe(expected.body)
      body += page.body
      cursor = page.header.page.next_cursor
      if (!cursor) {
        expect(page.header.delivery.status).toBe('complete')
        expect(page.header.delivery.delivered_bytes).toBe(Buffer.byteLength(text))
      }
    }
    expect(body).toBe(text)
  }
}, 20000)

test('Python resumes durable cursors produced locally and repeated cursors keep the same byte range', async () => {
  const store = join(root, 'interop')
  const first = unpack(fixture(store, {}))
  const cursor = first.header.page.next_cursor
  const second = unpack((await resumeBlockDiagramPage('bd_find', { cursor }, session, store))!)
  const repeated = unpack((await resumeBlockDiagramPage('bd_inspect', { cursor }, session, store))!)
  expect(repeated.body).toBe(second.body)
  expect(repeated.header.delivery.delivered_bytes).toBe(second.header.delivery.delivered_bytes)
  const third = unpack(resumePython(store, second.header.page.next_cursor))
  expect(third.header.document).toBe(first.header.document)
  expect(third.header.page.start_byte).toBe(second.header.page.end_byte)
})

test('missing intermediate pages cannot become complete delivery', async () => {
  const store = join(root, 'gap')
  const first = unpack(fixture(store, {}))
  const { cursor } = invokePython(store, fixtureScript, { action: 'cursor', cursor: first.header.page.next_cursor,
    fields: { offset: 5900 } })
  const last = unpack((await resumeBlockDiagramPage('bd_diff', { cursor }, session, store))!)
  expect(last.header.page.has_more).toBe(false)
  expect(last.header.delivery.status).toBe('partial')
  expect(last.header.delivery.delivered_bytes).toBe(first.header.page.end_byte + 100)
})

test('session mismatch, corrupt records and missing records fall back to authoritative Python errors', async () => {
  const store = join(root, 'refusals')
  const first = unpack(fixture(store, {}))
  const cursor = first.header.page.next_cursor
  expect(await resumeBlockDiagramPage('bd_read', { cursor }, 'other', store)).toBeUndefined()
  expect(JSON.parse(resumePython(store, cursor, 'other').content).code).toBe('CURSOR_SESSION_MISMATCH')
  invokePython(store, fixtureScript, { action: 'corrupt', folder: 'documents', ref: first.header.document })
  expect(await resumeBlockDiagramPage('bd_read', { cursor }, session, store)).toBeUndefined()
  expect(JSON.parse(resumePython(store, cursor).content).code).toBe('SNAPSHOT_CORRUPT')
  const count = (await readdir(join(store, 'cursors'))).length
  expect(await resumeBlockDiagramPage('bd_read', { cursor: 'c_' + 'f'.repeat(32) }, session, store)).toBeUndefined()
  expect((await readdir(join(store, 'cursors'))).length).toBe(count)
})

test('invalid offset, UTF-8 continuation and budget retain Python refusal without publishing cursors', async () => {
  const cases = [{ offset: -1 }, { offset: 1 }, { offset: 999999 }, { budget: 16385 }]
  for (let index = 0; index < cases.length; index++) {
    const store = join(root, 'invalid-' + index)
    const first = unpack(fixture(store, { text: '\u4fe1'.repeat(6000) }))
    const { cursor } = invokePython(store, fixtureScript, { action: 'cursor', cursor: first.header.page.next_cursor,
      fields: cases[index] })
    const count = (await readdir(join(store, 'cursors'))).length
    expect(await resumeBlockDiagramPage('bd_read', { cursor }, session, store)).toBeUndefined()
    expect(resumePython(store, cursor).is_error).toBe(true)
    expect((await readdir(join(store, 'cursors'))).length).toBe(count)
  }
})

test('floating metadata and non-BMP key ordering use Python without reencoding the record', async () => {
  for (const [index, meta] of [{ number: 1.5 }, { '\u{10000}': 'a', '\ue000': 'b' }].entries()) {
    const store = join(root, 'fallback-' + index)
    const first = unpack(fixture(store, { meta }))
    expect(await resumeBlockDiagramPage('bd_read', { cursor: first.header.page.next_cursor }, session, store)).toBeUndefined()
    expect(resumePython(store, first.header.page.next_cursor).is_error).toBe(false)
  }
})

test('write, malformed, combined and missing-session inputs never access the store', async () => {
  const store = join(root, 'not-created')
  for (const [tool, args, selectedSession] of [
    ['bd_edit', { cursor: 'c_' + '1'.repeat(32) }, session],
    ['bd_revert', { cursor: 'c_' + '1'.repeat(32) }, session],
    ['bd_read', { cursor: 'c_' + '1'.repeat(32), component: 'anything' }, session],
    ['bd_diff', { cursor: 'c_' + '1'.repeat(32), presentation: 'show' }, session],
    ['bd_read', { cursor: null }, session], ['bd_read', { cursor: 'c_' + '1'.repeat(32) }, ''],
  ] as const) {
    expect(await resumeBlockDiagramPage(tool, args, selectedSession, store)).toBeUndefined()
  }
  await mkdir(join(root, 'sentinel'))
  expect(await Bun.file(join(store, 'any')).exists()).toBe(false)
})
