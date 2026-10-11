import { createHash, randomUUID } from 'node:crypto'
import { link, mkdir, open, readFile, rename, unlink } from 'node:fs/promises'
import { join } from 'node:path'

type PageOutput = { content: string, is_error: boolean }

function canonical(value: unknown): string {
  if (value === null || typeof value === 'string' || typeof value === 'boolean') return JSON.stringify(value)
  if (typeof value === 'number' && Number.isSafeInteger(value)) return JSON.stringify(value)
  if (Array.isArray(value)) return '[' + value.map(canonical).join(',') + ']'
  if (typeof value === 'object' && value !== null) {
    const record = value as Record<string, unknown>
    return '{' + Object.keys(record).sort().map(key => JSON.stringify(key) + ':' + canonical(record[key])).join(',') + '}'
  }
  throw new Error('Use Python for noncanonical numeric metadata')
}

function hash(value: string | Buffer): string {
  return createHash('sha256').update(value).digest('hex')
}

async function record(store: string, folder: string, ref: string, prefix: string) {
  if (!new RegExp('^' + prefix + '[0-9a-fA-F]{32}$').test(ref)) throw new Error('Invalid record reference')
  const value = JSON.parse(await readFile(join(store, folder, ref + '.json'), 'utf8'))
  const { integrity_sha256: integrity, ...data } = value
  // Python's checksum is authoritative. Unsupported encodings fall back to it.
  if (hash(canonical(data)) !== integrity) throw new Error('Record integrity requires Python validation')
  return data
}

async function writeCursor(path: string, data: Record<string, unknown>) {
  const temp = path + '.' + randomUUID().replaceAll('-', '') + '.tmp'
  try {
    const stream = await open(temp, 'wx')
    try {
      await stream.writeFile(canonical({ ...data, integrity_sha256: hash(canonical(data)) }), 'utf8')
      await stream.sync()
    } finally {
      await stream.close()
    }
    await link(temp, path)
  } finally {
    await unlink(temp).catch(() => {})
  }
}

export async function resumeBlockDiagramPage(
  tool: string, args: Record<string, unknown>, session: string, store: string,
): Promise<PageOutput | undefined> {
  if (!['bd_read', 'bd_find', 'bd_inspect', 'bd_diff'].includes(tool) ||
      Object.keys(args).length !== 1 || typeof args.cursor !== 'string' || !session) return undefined
  try {
    const page = await record(store, 'cursors', args.cursor, 'c_')
    if (page.session !== session) throw new Error('Cursor session differs')
    if (typeof page.document !== 'string') throw new Error('Invalid document reference')
    const document = await record(store, 'documents', page.document, 'd_')
    if (document.session !== session || typeof document.text !== 'string' ||
        document.meta === null || typeof document.meta !== 'object' || Array.isArray(document.meta)) {
      throw new Error('Invalid document or session')
    }
    const bytes = Buffer.from(document.text, 'utf8')
    if (hash(bytes) !== document.sha256) throw new Error('Document text checksum differs')
    const offset = page.offset, budget = page.budget
    if (!Number.isSafeInteger(offset) || offset < 0 || offset > bytes.length ||
        (offset < bytes.length && (bytes[offset]! & 0xc0) === 0x80) ||
        !Number.isSafeInteger(budget) || budget < 2048 || budget > 16384) throw new Error('Invalid page range/budget')
    const meta = document.meta as Record<string, unknown>
    const meaning = 'document bytes delivered, not proof of understanding'
    const envelope = { ...meta, document: page.document,
      delivery: { status: 'complete', meaning, delivered_bytes: bytes.length, total_bytes: bytes.length },
      page: { start_byte: offset, end_byte: bytes.length, has_more: false, next_cursor: 'c_' + '0'.repeat(32) } }
    const available = budget - Buffer.byteLength(canonical(envelope)) - 2
    if (available < 128) throw new Error('Page envelope exceeds budget')
    const remaining = bytes.subarray(offset)
    let length = remaining.length
    if (length > available) {
      const newline = remaining.lastIndexOf(10, available - 1)
      length = newline >= Math.floor(available / 2) ? newline + 1 : available
      while (length > 0 && (remaining[length]! & 0xc0) === 0x80) length--
    }
    const stop = offset + length, more = stop < bytes.length
    const cursor = more ? 'c_' + randomUUID().replaceAll('-', '') : null
    if (cursor) {
      await mkdir(join(store, 'cursors'), { recursive: true })
      await writeCursor(join(store, 'cursors', cursor + '.json'), {
        document: page.document, offset: stop, budget, session,
      })
    }
    const statePath = join(store, 'delivery', hash(canonical({ session, document: page.document })) + '.json')
    let ranges: number[][]
    try {
      ranges = JSON.parse(await readFile(statePath, 'utf8'))
    } catch (error) {
      if ((error as NodeJS.ErrnoException).code !== 'ENOENT') throw error
      ranges = []
    }
    if (!Array.isArray(ranges) || ranges.some(range => !Array.isArray(range) || range.length !== 2 ||
        !range.every(Number.isSafeInteger) || range[0]! < 0 || range[1]! < range[0]! || range[1]! > bytes.length)) {
      throw new Error('Invalid document delivery ranges')
    }
    ranges.push([offset, stop])
    ranges.sort((a, b) => a[0]! - b[0]! || a[1]! - b[1]!)
    const merged: number[][] = []
    for (const [start, end] of ranges) {
      const last = merged.at(-1)
      if (last && start! <= last[1]!) last[1] = Math.max(last[1]!, end!)
      else merged.push([start!, end!])
    }
    const complete = merged.length === 1 && merged[0]![0] === 0 && merged[0]![1] === bytes.length
    const result = { ...meta, document: page.document,
      delivery: { status: complete ? 'complete' : 'partial', meaning,
        delivered_bytes: merged.reduce((sum, [start, end]) => sum + end! - start!, 0), total_bytes: bytes.length },
      page: { start_byte: offset, end_byte: stop, has_more: more, next_cursor: cursor } }
    const content = canonical(result) + '\n\n' + remaining.subarray(0, length).toString('utf8')
    if (Buffer.byteLength(content) > budget) throw new Error('Page response exceeds budget')
    const temp = statePath + '.' + randomUUID().replaceAll('-', '') + '.tmp'
    await mkdir(join(store, 'delivery'), { recursive: true })
    try {
      await Bun.write(temp, canonical(merged))
      await rename(temp, statePath)
    } finally {
      await unlink(temp).catch(() => {})
    }
    return { content, is_error: false }
  } catch {
    // Preserve the established Python errors and behavior for corrupt, missing,
    // future or unsupported records; never turn a fallback into a live read.
    return undefined
  }
}
