import { existsSync } from 'fs'
import { mkdir, open, readFile, rm, writeFile } from 'fs/promises'
import { dirname, join } from 'path'
import { tmpdir } from 'os'

export interface AscetCliLockFile {
  token: string
  pid: number
  agentId: string
  commandId: string
  toolName: string
  processName: string
  acquiredAt: string
  heartbeatAt: string
}

export interface AscetCliLock {
  path: string
  token: string
  release(): Promise<void>
}

export type AscetCliLockSnapshot =
  | { locked: false }
  | {
      locked: true
      path: string
      owner: AscetCliLockFile
      stale: boolean
      ageMs: number
      heartbeatAgeMs: number
    }

interface AscetCliLockMetadata {
  agentId: string
  commandId: string
  toolName: string
  processName: string
}

interface AscetCliLockOptions {
  lockPath?: string
  pid?: number
  acquireTimeoutMs?: number
  retryDelayMs?: number
  staleMs?: number
  heartbeatIntervalMs?: number
  now?: () => number
  tokenFactory?: () => string
  isPidAlive?: (pid: number) => boolean
}

interface AscetCliLockSnapshotOptions {
  lockPath?: string
  staleMs?: number
  now?: () => number
  isPidAlive?: (pid: number) => boolean
}

export class AscetCliLockTimeoutError extends Error {
  readonly code = 'ASCET_CLI_LOCK_TIMEOUT'

  constructor(readonly lockPath: string, readonly timeoutMs: number) {
    super(`Timed out waiting ${timeoutMs}ms for ASCET CLI lock ${lockPath}.`)
    this.name = 'AscetCliLockTimeoutError'
  }
}

export function resolveDefaultAscetCliLockPath(): string {
  const localAppData = process.env.LOCALAPPDATA
  const baseDir = localAppData
    ? join(localAppData, 'AscetAgent', 'locks')
    : join(tmpdir(), 'AscetAgent', 'locks')

  return join(baseDir, 'ascet-toolapi.lock')
}

export async function acquireAscetCliLock(
  metadata: AscetCliLockMetadata,
  options: AscetCliLockOptions = {},
): Promise<AscetCliLock> {
  const lockPath = options.lockPath ?? resolveDefaultAscetCliLockPath()
  const acquireTimeoutMs = options.acquireTimeoutMs ?? 60_000
  const retryDelayMs = options.retryDelayMs ?? 50
  const staleMs = options.staleMs ?? 120_000
  const now = options.now ?? (() => Date.now())
  const pid = options.pid ?? process.pid
  const token = options.tokenFactory?.() ?? crypto.randomUUID()
  const startedAt = now()

  await mkdir(dirname(lockPath), { recursive: true })

  while (true) {
    const timestamp = new Date(now()).toISOString()
    const lockFile: AscetCliLockFile = {
      token,
      pid,
      agentId: metadata.agentId,
      commandId: metadata.commandId,
      toolName: metadata.toolName,
      processName: metadata.processName,
      acquiredAt: timestamp,
      heartbeatAt: timestamp,
    }

    try {
      const handle = await open(lockPath, 'wx')
      try {
        await handle.writeFile(JSON.stringify(lockFile))
      } finally {
        await handle.close()
      }

      return createHeldLock(lockPath, token, lockFile, options)
    } catch (error) {
      if (!isAlreadyExistsError(error)) {
        throw error
      }
    }

    const snapshot = await getAscetCliLockSnapshot({
      lockPath,
      staleMs,
      now,
      isPidAlive: options.isPidAlive,
    })

    if (snapshot.locked && snapshot.stale) {
      await removeStaleLock(lockPath)
      continue
    }

    if (now() - startedAt >= acquireTimeoutMs) {
      throw new AscetCliLockTimeoutError(lockPath, acquireTimeoutMs)
    }

    await Bun.sleep(retryDelayMs)
  }
}

export async function getAscetCliLockSnapshot(
  options: AscetCliLockSnapshotOptions = {},
): Promise<AscetCliLockSnapshot> {
  const lockPath = options.lockPath ?? resolveDefaultAscetCliLockPath()
  const now = options.now ?? (() => Date.now())
  const staleMs = options.staleMs ?? 120_000

  if (!existsSync(lockPath)) {
    return { locked: false }
  }

  const owner = await readLockFile(lockPath)
  if (!owner) {
    return { locked: false }
  }

  const heartbeatMs = Date.parse(owner.heartbeatAt)
  const acquiredMs = Date.parse(owner.acquiredAt)
  const heartbeatAgeMs = Number.isFinite(heartbeatMs)
    ? Math.max(0, now() - heartbeatMs)
    : Number.POSITIVE_INFINITY
  const ageMs = Number.isFinite(acquiredMs)
    ? Math.max(0, now() - acquiredMs)
    : Number.POSITIVE_INFINITY
  const pidAlive = (options.isPidAlive ?? isPidAlive)(owner.pid)

  return {
    locked: true,
    path: lockPath,
    owner,
    stale: !pidAlive || heartbeatAgeMs > staleMs,
    ageMs,
    heartbeatAgeMs,
  }
}

async function createHeldLock(
  lockPath: string,
  token: string,
  lockFile: AscetCliLockFile,
  options: AscetCliLockOptions,
): Promise<AscetCliLock> {
  const heartbeatIntervalMs = options.heartbeatIntervalMs ?? 5_000
  const now = options.now ?? (() => Date.now())
  let released = false
  const heartbeat = setInterval(() => {
    if (released) {
      return
    }

    void writeFile(
      lockPath,
      JSON.stringify({
        ...lockFile,
        heartbeatAt: new Date(now()).toISOString(),
      }),
    ).catch(() => {})
  }, heartbeatIntervalMs)

  return {
    path: lockPath,
    token,
    async release(): Promise<void> {
      if (released) {
        return
      }

      released = true
      clearInterval(heartbeat)
      const current = await readLockFile(lockPath)
      if (current?.token === token) {
        await rm(lockPath, { force: true })
      }
    },
  }
}

async function readLockFile(
  lockPath: string,
): Promise<AscetCliLockFile | null> {
  try {
    const raw = await readFile(lockPath, 'utf8')
    const parsed = JSON.parse(raw) as Partial<AscetCliLockFile>
    if (
      typeof parsed.token !== 'string' ||
      typeof parsed.pid !== 'number' ||
      typeof parsed.agentId !== 'string' ||
      typeof parsed.commandId !== 'string' ||
      typeof parsed.toolName !== 'string' ||
      typeof parsed.processName !== 'string' ||
      typeof parsed.acquiredAt !== 'string' ||
      typeof parsed.heartbeatAt !== 'string'
    ) {
      return null
    }

    return parsed as AscetCliLockFile
  } catch {
    return null
  }
}

async function removeStaleLock(lockPath: string): Promise<void> {
  await rm(lockPath, { force: true })
}

function isAlreadyExistsError(error: unknown): boolean {
  return (
    typeof error === 'object' &&
    error !== null &&
    'code' in error &&
    (error as { code?: unknown }).code === 'EEXIST'
  )
}

function isPidAlive(pid: number): boolean {
  try {
    process.kill(pid, 0)
    return true
  } catch {
    return false
  }
}
