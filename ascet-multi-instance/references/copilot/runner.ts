import { existsSync } from 'fs'
import { resolve } from 'path'

// Bun 1.3.x on Windows: existsSync returns false for backslash paths.
function safeExistsSync(p: string): boolean {
  return existsSync(p.replaceAll('\\', '/'))
}
import { getCwd } from '../../utils/cwd.js'
import type {
  AscetCommandContract,
  AscetUnifiedCliExecution,
} from './contracts'
import { createAscetRegistry, type AscetRegistry } from './registry'
import type { AscetArtifactStore } from './artifactStore'
import { createAscetArtifactStore } from './artifactStore'
import {
  acquireAscetCliLock,
  type AscetCliLock,
} from './cliLock'
import type { AscetSerialExecutor } from './lock'
import { createAscetSerialExecutor } from './lock'
import { normalizeAscetOutput, type AscetNormalizedOutput } from './normalizers'
import {
  getGlobalAscetOperationHealthStore,
  type AscetOperationFailureReason,
  type AscetOperationHealthStore,
} from './operationHealth'
import { killProcessTree } from './processKiller'
import {
  decideAscetRoute,
  shouldDedupeAscetRoute,
  type AscetExecutionProfile,
} from './routePolicy'
import {
  createReadPool,
  createReadWorkerClient,
  ReadWorkerExitedError,
  ReadWorkerProtocolError,
  ReadWorkerRequestError,
  ReadWorkerTimeoutError,
  type ReadPool,
  type ReadPoolRequest,
} from './readPool'
import { createWriteWorkerClient } from './writeHost/writeWorkerClient'
import {
  WriteWorkerExitedError,
  WriteWorkerProtocolError,
  WriteWorkerRequestError,
  WriteWorkerTimeoutError,
  type WriteHostRequest,
  type WriteWorkerClient,
} from './writeHost/types'
import {
  AscetCommandExecutionError,
  AscetMissingRequiredArgsError,
  AscetCommandTimeoutError,
  AscetExecutionTimeoutError,
  AscetExecutableNotFoundError,
  AscetJsonParseError,
  AscetQueueTimeoutError,
} from './errors'
import { resolveAscetExecutablePath } from './distributionPaths'
import {
  AscetSchedulerExecutionTimeoutError,
  AscetSchedulerQueueTimeoutError,
  ASCET_SCHEDULER_DEFAULTS,
  buildAscetDedupeKey,
  getGlobalAscetScheduler,
  type AscetScheduler,
} from './scheduler'

export interface AscetRunnerExecuteResult {
  exitCode: number
  stdout: string
  stderr: string
}

export interface AscetRunnerExecuteOptions {
  cwd: string
  timeoutMs: number
  cliLock?: {
    agentId: string
    commandId: string
    toolName: string
    processName: string
    acquireTimeoutMs?: number
    lockPath?: string
  }
}

export type AscetRunnerExecuteFn = (
  executablePath: string,
  argv: string[],
  options: AscetRunnerExecuteOptions,
) => Promise<AscetRunnerExecuteResult>

export interface AscetRunRequest {
  command: AscetCommandContract
  args?: Record<string, unknown>
  outputMode?: 'text' | 'json'
  cwd?: string
  timeoutMs?: number
  queueTimeoutMs?: number
  agentId?: string
  toolName?: string
  signal?: AbortSignal
  executionProfile?: AscetExecutionProfile
}

export interface AscetRunResult {
  commandId: string
  executablePath: string
  argv: string[]
  exitCode: number
  stdout: string
  stderr: string
  parsedJson?: unknown
  normalized: AscetNormalizedOutput
}

export interface AscetRunner {
  run(request: AscetRunRequest): Promise<AscetRunResult>
  shutdown(): Promise<void>
}

type AscetRunnerReadPool = Pick<ReadPool, 'run'> &
  Partial<Pick<ReadPool, 'shutdown'>>
type AscetRunnerWriteHost = Pick<WriteWorkerClient, 'run'> &
  Partial<Pick<WriteWorkerClient, 'shutdown'>>
type UnifiedCliEnvelope = {
  ok?: boolean
  result?: unknown
  error?: {
    code?: string
    message?: string
  } | null
  meta?: {
    mode?: string
    operation?: string
  } | null
}

const READ_POOL_ENV_VAR = 'ASCET_EXPERIMENTAL_READ_POOL'
const WRITE_HOST_ENV_VAR = 'ASCET_EXPERIMENTAL_WRITE_HOST'
const DEFAULT_READ_POOL_MAX_WORKERS = 1
const DEFAULT_SCHEDULER_EXECUTION_TIMEOUT_BUFFER_MS = 5_000
const DEFAULT_HOST_RECOVERY_TIMEOUT_MS = 30_000
const DEFAULT_READ_HOST_EXE_RELATIVE_PATH =
  'src/ascetcli/output/ascet-csharp/bin/AscetReadHost.exe'

function resolveEffectiveOutputMode(
  request: AscetRunRequest,
): 'text' | 'json' {
  if (request.outputMode) {
    return request.outputMode
  }
  return request.command.defaultOutputMode
}

function isBlankStringValue(value: unknown): value is string {
  return typeof value === 'string' && value.trim().length === 0
}

function allowsBlankRequiredString(
  request: AscetRunRequest,
  argName: string,
): boolean {
  return request.command.id === 'AscetListComponents' && argName === 'folder-path'
}

function buildArgv(request: AscetRunRequest): string[] {
  const args = request.args ?? {}
  const effectiveOutputMode = resolveEffectiveOutputMode(request)
  const argv: string[] = []
  const missingArgs: string[] = []

  for (const argDef of request.command.args) {
    const value = args[argDef.name]

    if (argDef.kind === 'positional') {
      if (isBlankStringValue(value) && allowsBlankRequiredString(request, argDef.name)) {
        argv.push('')
        continue
      }

      if (
        value === undefined ||
        value === null ||
        value === false ||
        isBlankStringValue(value)
      ) {
        if (argDef.required && !allowsBlankRequiredString(request, argDef.name)) {
          missingArgs.push(argDef.name)
        }
        continue
      }
      argv.push(String(value))
      continue
    }

    if (argDef.name === '--json') {
      if (request.command.supportsJson && effectiveOutputMode === 'json') {
        argv.push('--json')
      }
      continue
    }

    if (argDef.kind === 'flag') {
      if (value === true) {
        argv.push(argDef.name)
      }
      continue
    }

    if (argDef.kind === 'option') {
      if (
        value === undefined ||
        value === null ||
        value === false ||
        isBlankStringValue(value)
      ) {
        if (argDef.required) {
          missingArgs.push(argDef.name)
        }
        continue
      }
      argv.push(argDef.name, String(value))
    }
  }

  if (missingArgs.length > 0) {
    throw new AscetMissingRequiredArgsError(request.command.id, missingArgs)
  }

  return argv
}

async function defaultExecute(
  executablePath: string,
  argv: string[],
  options: AscetRunnerExecuteOptions,
): Promise<AscetRunnerExecuteResult> {
  let lock: AscetCliLock | null = null
  if (options.cliLock) {
    lock = await acquireAscetCliLock(options.cliLock, {
      lockPath: options.cliLock.lockPath,
      acquireTimeoutMs: options.cliLock.acquireTimeoutMs,
    })
  }

  const process = Bun.spawn([executablePath, ...argv], {
    cwd: options.cwd,
    stdout: 'pipe',
    stderr: 'pipe',
  })

  let timedOut = false
  const timer = setTimeout(() => {
    timedOut = true
    void killProcessTree(process)
  }, options.timeoutMs)

  try {
    const [exitCode, stdout, stderr] = await Promise.all([
      process.exited,
      new Response(process.stdout).text(),
      new Response(process.stderr).text(),
    ])

    if (timedOut) {
      throw new AscetCommandTimeoutError(executablePath, options.timeoutMs)
    }

    return {
      exitCode,
      stdout,
      stderr,
    }
  } finally {
    clearTimeout(timer)
    await lock?.release()
  }
}

function ensureExecutableExists(executablePath: string): void {
  if (!safeExistsSync(executablePath)) {
    throw new AscetExecutableNotFoundError(executablePath)
  }
}

function isFeatureFlagEnabled(value: string | undefined): boolean {
  if (!value) {
    return false
  }

  const normalized = value.trim().toLowerCase()
  return normalized === '1' || normalized === 'true' || normalized === 'yes'
}

function normalizeHostPayloadKey(name: string): string {
  if (name === '--kind' || name === '--method-kind' || name === '--json') {
    return ''
  }

  if (
    name === 'class|module|statemachine' ||
    name === 'class|module|statemachine|enumeration'
  ) {
    return 'kind'
  }

  if (name === 'abstract|process|action|condition|trigger') {
    return 'methodKind'
  }

  if (name === 'set-method|set-header|set-external-c-code') {
    return 'operation'
  }

  const trimmed = name.replace(/^--/, '')
  return trimmed.replace(/-([a-z0-9])/gi, (_, char: string) =>
    char.toUpperCase(),
  )
}

function buildHostPayload(
  request: AscetRunRequest,
): Record<string, unknown> | undefined {
  const rawArgs = request.args ?? {}
  const payload: Record<string, unknown> = {}
  const argDefsByName = new Map(
    request.command.args.map((argDef) => [argDef.name, argDef]),
  )

  for (const [name, value] of Object.entries(rawArgs)) {
    const argDef = argDefsByName.get(name)
    const omitBlankOptionalString =
      isBlankStringValue(value) && argDef?.required !== true

    if (
      value === undefined ||
      value === null ||
      value === false ||
      omitBlankOptionalString
    ) {
      continue
    }

    const payloadKey = normalizeHostPayloadKey(name)
    if (!payloadKey) {
      continue
    }

    payload[payloadKey] = value
  }

  if (
    request.command.id === 'AscetListFolders' &&
    payload.rootPath === undefined
  ) {
    if (payload.root !== undefined) {
      payload.rootPath = payload.root
    } else if (payload.folderPath !== undefined) {
      payload.rootPath = payload.folderPath
    }
  }

  return Object.keys(payload).length > 0 ? payload : undefined
}

function shouldFallbackFromReadPoolError(error: unknown): boolean {
  if (
    error instanceof ReadWorkerExitedError ||
    error instanceof ReadWorkerProtocolError ||
    error instanceof ReadWorkerTimeoutError
  ) {
    return true
  }

  return (
    error instanceof ReadWorkerRequestError &&
    [
      'unsupported_command',
      'invalid_argument',
      'invalid_envelope',
      'invalid_json',
      'child_command_timeout',
    ].includes(error.code ?? '')
  )
}

function getReadPoolOperationFailureReason(
  error: unknown,
): AscetOperationFailureReason | undefined {
  if (error instanceof ReadWorkerTimeoutError) {
    return 'read_host_timeout'
  }

  if (error instanceof ReadWorkerProtocolError) {
    return 'read_host_protocol_error'
  }

  if (error instanceof ReadWorkerExitedError) {
    return 'read_host_exited'
  }

  if (error instanceof ReadWorkerRequestError) {
    if (error.code === 'child_command_timeout') {
      return 'child_command_timeout'
    }

    if (
      [
        'unsupported_command',
        'invalid_argument',
        'invalid_envelope',
        'invalid_json',
      ].includes(error.code ?? '')
    ) {
      return 'read_host_request_error'
    }
  }

  return undefined
}

function persistOperationHealth(
  operationHealth: AscetOperationHealthStore,
): void {
  void operationHealth.flush().catch(() => {})
}

function createReadPoolResult(
  request: AscetRunRequest,
  result: unknown,
): AscetRunnerExecuteResult {
  const stdout =
    request.command.supportsJson &&
    resolveEffectiveOutputMode(request) === 'json' &&
    result !== undefined
      ? JSON.stringify(result)
      : result === undefined
        ? ''
        : String(result)

  return {
    exitCode: 0,
    stdout,
    stderr: '',
  }
}

function createWriteHostResult(
  request: AscetRunRequest,
  result: unknown,
): AscetRunnerExecuteResult {
  const stdout =
    request.command.supportsJson &&
    resolveEffectiveOutputMode(request) === 'json' &&
    result !== undefined
      ? JSON.stringify(result)
      : result === undefined
        ? ''
        : String(result)

  return {
    exitCode: 0,
    stdout,
    stderr: '',
  }
}

function resolveExecutionExecutablePath(
  repoRoot: string,
  command: AscetCommandContract,
  cwd: string,
): string {
  return resolveAscetExecutablePath({
    executableRelativePath: command.execution.executableRelativePath,
    repoRoot,
    cwd,
  })
}

function buildRouteArgv(
  execution: AscetUnifiedCliExecution,
): string[] {
  const argv = [execution.subcommand]
  if (
    (execution.subcommand === 'exec' || execution.subcommand === 'batch') &&
    typeof execution.operation === 'string' &&
    execution.operation.trim().length > 0
  ) {
    argv.push(execution.operation.trim())
  }
  return argv
}

function buildInvocationArgv(
  command: AscetCommandContract,
  commandArgv: string[],
): string[] {
  if (command.execution.kind === 'standalone') {
    return commandArgv
  }

  return [...buildRouteArgv(command.execution), ...commandArgv]
}

function tryParseJson(text: string): unknown | undefined {
  const trimmed = text.trim()
  if (trimmed.length === 0) {
    return undefined
  }

  try {
    return JSON.parse(trimmed)
  } catch {
    return undefined
  }
}

function isUnifiedCliEnvelope(value: unknown): value is UnifiedCliEnvelope {
  return !!value && typeof value === 'object' && 'ok' in value && 'meta' in value
}

function unwrapUnifiedCliSuccessPayload(value: unknown): unknown {
  if (!isUnifiedCliEnvelope(value)) {
    return value
  }

  return value.result
}

function buildStructuredErrorFromUnifiedCliEnvelope(
  envelope: UnifiedCliEnvelope,
): string {
  const code = envelope.error?.code?.trim() || 'execution_failed'
  const operation = envelope.meta?.operation?.trim() || 'exec'
  const message = envelope.error?.message?.trim() || 'ASCET command failed.'
  return `${code}:${operation}:${message}`
}

function resolveRunnerDefaultCwd(
  cwd: string | undefined,
  repoRoot: string,
): string {
  if (cwd?.trim()) {
    return resolve(cwd)
  }

  try {
    return resolve(getCwd())
  } catch {
    try {
      return resolve(process.cwd())
    } catch {
      return resolve(repoRoot)
    }
  }
}

export function createAscetRunner(options?: {
  repoRoot?: string
  cwd?: string
  serialExecutor?: AscetSerialExecutor
  artifactStore?: AscetArtifactStore
  execute?: AscetRunnerExecuteFn
  summaryThresholdBytes?: number
  enableReadPool?: boolean
  readPool?: AscetRunnerReadPool | null
  readPoolFactory?: () =>
    | Promise<AscetRunnerReadPool | null>
    | AscetRunnerReadPool
    | null
  enableWriteHost?: boolean
  writeHost?: AscetRunnerWriteHost | null
  writeHostFactory?: () =>
    | Promise<AscetRunnerWriteHost | null>
    | AscetRunnerWriteHost
    | null
  scheduler?: Pick<AscetScheduler, 'submit' | 'getSnapshot'>
  databasePathProvider?: () => string
  registry?: Pick<AscetRegistry, 'getCommand'>
  recoverHost?: () => Promise<unknown>
  cliLockPath?: string
  operationHealth?: AscetOperationHealthStore
}): AscetRunner {
  const repoRoot = resolve(options?.repoRoot ?? import.meta.dir, '../..', '..')
  const serialExecutor =
    options?.serialExecutor ?? createAscetSerialExecutor()
  const artifactStore = options?.artifactStore ?? createAscetArtifactStore()
  const execute = options?.execute ?? defaultExecute
  const summaryThresholdBytes = options?.summaryThresholdBytes ?? 4096
  const readPoolEnabled =
    options?.enableReadPool ??
    isFeatureFlagEnabled(process.env[READ_POOL_ENV_VAR])
  const writeHostEnabled =
    options?.enableWriteHost ??
    isFeatureFlagEnabled(process.env[WRITE_HOST_ENV_VAR])
  const scheduler = options?.scheduler ?? getGlobalAscetScheduler()
  const databasePathProvider =
    options?.databasePathProvider ?? (() => 'current')
  const registry = options?.registry ?? createAscetRegistry()
  const operationHealth =
    options?.operationHealth ?? getGlobalAscetOperationHealthStore()
  let defaultReadPoolPromise: Promise<AscetRunnerReadPool | null> | null = null
  let defaultWriteHostPromise: Promise<AscetRunnerWriteHost | null> | null = null
  let recoveryCommandPromise: Promise<AscetCommandContract> | null = null
  let shutdownPromise: Promise<void> | null = null
  let closed = false

  function getDefaultCwd(): string {
    return resolveRunnerDefaultCwd(options?.cwd, repoRoot)
  }

  function getReadHostExecutablePath(cwd: string): string {
    return resolveAscetExecutablePath({
      executableRelativePath: DEFAULT_READ_HOST_EXE_RELATIVE_PATH,
      repoRoot,
      cwd,
    })
  }

  function createShutdownError(): Error {
    return new Error('ASCET runner has been shut down')
  }

  async function getDefaultReadPool(): Promise<AscetRunnerReadPool | null> {
    if (closed) {
      throw createShutdownError()
    }

    if (!readPoolEnabled) {
      return null
    }

    if (options?.readPool !== undefined) {
      return options.readPool
    }

    if (!defaultReadPoolPromise) {
      defaultReadPoolPromise = (async () => {
        const defaultCwd = getDefaultCwd()
        const readHostExecutablePath = getReadHostExecutablePath(defaultCwd)

        if (options?.readPoolFactory) {
          return await options.readPoolFactory()
        }

        try {
          ensureExecutableExists(readHostExecutablePath)
        } catch (error) {
          if (error instanceof AscetExecutableNotFoundError) {
            return null
          }
          throw error
        }

        return createReadPool({
          maxWorkers: DEFAULT_READ_POOL_MAX_WORKERS,
          createWorkerClient: ({ slotId }) => {
            const process = Bun.spawn([readHostExecutablePath], {
              cwd: defaultCwd,
              stdin: 'pipe',
              stdout: 'pipe',
              stderr: 'pipe',
            })

            return createReadWorkerClient({
              workerId: `ascet-read-host-${slotId}`,
              process,
            })
          },
        })
      })()
    }

    return await defaultReadPoolPromise
  }

  async function getDefaultWriteHost(): Promise<AscetRunnerWriteHost | null> {
    if (closed) {
      throw createShutdownError()
    }

    if (!writeHostEnabled) {
      return null
    }

    if (options?.writeHost !== undefined) {
      return options.writeHost
    }

    if (!defaultWriteHostPromise) {
      defaultWriteHostPromise = (async () => {
        const defaultCwd = getDefaultCwd()
        const command = {
          execution: {
            kind: 'unified_cli' as const,
            executableRelativePath:
              'src/ascetcli/output/ascet-csharp/bin/AscetCli.exe',
            subcommand: 'exec' as const,
            operation: 'create_component',
          },
        } as AscetCommandContract
        const ascetCliPath = resolveExecutionExecutablePath(
          repoRoot,
          command,
          defaultCwd,
        )

        if (options?.writeHostFactory) {
          return await options.writeHostFactory()
        }

        try {
          ensureExecutableExists(ascetCliPath)
        } catch (error) {
          if (error instanceof AscetExecutableNotFoundError) {
            return null
          }
          throw error
        }

        const process = Bun.spawn([ascetCliPath, 'host', '--lane', 'write'], {
          cwd: defaultCwd,
          stdin: 'pipe',
          stdout: 'pipe',
          stderr: 'pipe',
        })

        return createWriteWorkerClient({
          workerId: 'ascet-write-host',
          process,
        })
      })()
    }

    return await defaultWriteHostPromise
  }

  async function getRecoveryCommand(): Promise<AscetCommandContract> {
    if (!recoveryCommandPromise) {
      recoveryCommandPromise = registry.getCommand('AscetReadDomainQuickCheck')
    }

    return await recoveryCommandPromise
  }

  async function recoverHost(): Promise<unknown> {
    if (options?.recoverHost) {
      return await options.recoverHost()
    }

    const command = await getRecoveryCommand()
    const cwd = getDefaultCwd()
    const executablePath = resolveExecutionExecutablePath(repoRoot, command, cwd)
    ensureExecutableExists(executablePath)
    const argv = buildInvocationArgv(
      command,
      buildArgv({
        command,
        args: {},
        outputMode: 'text',
      }),
    )
    const result = await execute(executablePath, argv, {
      cwd,
      timeoutMs: DEFAULT_HOST_RECOVERY_TIMEOUT_MS,
      cliLock: {
        agentId: 'system',
        commandId: command.id,
        toolName: 'AscetSchedulerMaintenance',
        processName: executablePath.split(/[\\/]/).at(-1) ?? executablePath,
        acquireTimeoutMs: 5_000,
        lockPath: options?.cliLockPath,
      },
    })

    if (result.exitCode !== 0) {
      throw new AscetCommandExecutionError({
        commandId: command.id,
        exitCode: result.exitCode,
        stdout: result.stdout,
        stderr: result.stderr,
      })
    }

    return result
  }

  function buildCliLockMetadata(
    request: AscetRunRequest,
    processName: string,
    queueTimeoutMs: number,
  ): NonNullable<AscetRunnerExecuteOptions['cliLock']> {
    return {
      agentId: request.agentId ?? 'default',
      commandId: request.command.id,
      toolName: request.toolName ?? request.command.family,
      processName,
      acquireTimeoutMs: queueTimeoutMs,
      lockPath: options?.cliLockPath,
    }
  }

  async function runWithCliLock<T>(
    request: AscetRunRequest,
    processName: string,
    queueTimeoutMs: number,
    run: () => Promise<T>,
  ): Promise<T> {
    const lock = await acquireAscetCliLock(
      buildCliLockMetadata(request, processName, queueTimeoutMs),
      {
        lockPath: options?.cliLockPath,
        acquireTimeoutMs: queueTimeoutMs,
      },
    )

    try {
      return await run()
    } finally {
      await lock.release()
    }
  }

  return {
    async run(request: AscetRunRequest): Promise<AscetRunResult> {
      if (closed) {
        throw createShutdownError()
      }

      const defaultCwd = getDefaultCwd()
      const cwd = resolve(request.cwd ?? defaultCwd)
      const executablePath = resolveExecutionExecutablePath(
        repoRoot,
        request.command,
        cwd,
      )
      const timeoutMs = request.timeoutMs ?? 30_000
      const commandArgv = buildArgv(request)
      const argv = buildInvocationArgv(request.command, commandArgv)
      const effectiveOutputMode = resolveEffectiveOutputMode(request)
      const canReuseDefaultCwd = cwd === defaultCwd
      const route = decideAscetRoute({
        request,
        effectiveOutputMode,
        readPoolEnabled,
        writeHostEnabled,
        canReuseDefaultCwd,
        operationHealth,
      })
      let executableReady = false
      const invokeLegacy = async (): Promise<AscetRunnerExecuteResult> => {
        if (!executableReady) {
          ensureExecutableExists(executablePath)
          executableReady = true
        }

        return await execute(executablePath, argv, {
          cwd,
          timeoutMs,
          cliLock: buildCliLockMetadata(
            request,
            executablePath.split(/[\\/]/).at(-1) ?? executablePath,
            route.queueTimeoutMs,
          ),
        })
      }

      let execution: AscetRunnerExecuteResult
      try {
        const executeSelectedLane =
          async (): Promise<AscetRunnerExecuteResult> => {
            if (route.lane === 'serial') {
              if (route.writeHostEligible) {
                const writeHost = await getDefaultWriteHost()

                if (!writeHost) {
                  throw new AscetExecutableNotFoundError(executablePath)
                }

                return await serialExecutor.runExclusive(
                  request.command.id,
                  async () => {
                    try {
                      const result = await runWithCliLock(
                        request,
                        'AscetWriteHost.exe',
                        route.queueTimeoutMs,
                        async () =>
                          await writeHost.run({
                            commandId: request.command.id,
                            payload: buildHostPayload(request),
                            timeoutMs,
                          } satisfies WriteHostRequest),
                      )
                      return createWriteHostResult(request, result)
                    } catch (error) {
                      if (
                        error instanceof WriteWorkerExitedError ||
                        error instanceof WriteWorkerProtocolError ||
                        error instanceof WriteWorkerTimeoutError ||
                        error instanceof WriteWorkerRequestError
                      ) {
                        throw new AscetCommandExecutionError({
                          commandId: request.command.id,
                          exitCode: 2,
                          stdout: '',
                          stderr: `${error.code ?? 'write_host_failed'}:${request.command.operation ?? request.command.id}:${error.message}`,
                        })
                      }

                      throw error
                    }
                  },
                )
              }

              return await serialExecutor.runExclusive(
                request.command.id,
                invokeLegacy,
              )
            }

            if (route.lane === 'read-pool') {
              const readPool = await getDefaultReadPool()

              if (closed) {
                throw createShutdownError()
              }

              if (!readPool) {
                return await invokeLegacy()
              }

              try {
                const poolRequest: ReadPoolRequest = {
                  commandId: request.command.id,
                  payload: buildHostPayload(request),
                  timeoutMs,
                }
                const result = await runWithCliLock(
                  request,
                  'AscetReadHost.exe',
                  route.queueTimeoutMs,
                  async () => await readPool.run(poolRequest),
                )
                return createReadPoolResult(request, result)
              } catch (error) {
                if (shouldFallbackFromReadPoolError(error)) {
                  const reason = getReadPoolOperationFailureReason(error)
                  if (reason) {
                    operationHealth.recordFailure({
                      commandId: request.command.id,
                      reason,
                    })
                    persistOperationHealth(operationHealth)
                  }
                  return await invokeLegacy()
                }
                throw error
              }
            }

            return await invokeLegacy()
          }

        const dedupeKey = shouldDedupeAscetRoute(request.command)
          ? buildAscetDedupeKey({
              databasePath: databasePathProvider(),
              commandId: request.command.id,
              args: request.args,
            })
          : undefined

        execution = await scheduler.submit({
          agentId: request.agentId ?? 'default',
          toolName: request.toolName ?? request.command.family,
          commandId: request.command.id,
          kind: route.schedulerKind,
          priority: route.priority,
          resourceKey: ASCET_SCHEDULER_DEFAULTS.resourceKey,
          dedupeKey,
          cooldownKey: route.cooldownKey,
          cooldownMs: route.cooldownMs,
          queueTimeoutMs: route.queueTimeoutMs,
          executionTimeoutMs:
            timeoutMs + DEFAULT_SCHEDULER_EXECUTION_TIMEOUT_BUFFER_MS,
          signal: request.signal,
          recover: recoverHost,
          recoveryTimeoutMs:
            DEFAULT_HOST_RECOVERY_TIMEOUT_MS +
            DEFAULT_SCHEDULER_EXECUTION_TIMEOUT_BUFFER_MS,
          run: executeSelectedLane,
        })
      } catch (error) {
        if (error instanceof AscetSchedulerQueueTimeoutError) {
          throw new AscetQueueTimeoutError(request.command.id, error.timeoutMs)
        }
        if (error instanceof AscetSchedulerExecutionTimeoutError) {
          throw new AscetExecutionTimeoutError(
            request.command.id,
            error.timeoutMs,
          )
        }
        if (error instanceof AscetCommandTimeoutError) {
          throw new AscetCommandTimeoutError(request.command.id, timeoutMs)
        }
        throw error
      }

      if (execution.exitCode !== 0) {
        let normalizedStderr = execution.stderr
        if (
          request.command.execution.kind === 'unified_cli' &&
          execution.stdout.trim().length > 0
        ) {
          const parsedEnvelope = tryParseJson(execution.stdout)
          if (isUnifiedCliEnvelope(parsedEnvelope) && parsedEnvelope.error) {
            normalizedStderr = buildStructuredErrorFromUnifiedCliEnvelope(
              parsedEnvelope,
            )
          }
        }

        throw new AscetCommandExecutionError({
          commandId: request.command.id,
          exitCode: execution.exitCode,
          stdout: execution.stdout,
          stderr: normalizedStderr,
        })
      }

      let parsedJson: unknown
      if (
        request.command.supportsJson &&
        effectiveOutputMode === 'json' &&
        execution.stdout.trim().length > 0
      ) {
        try {
          parsedJson = JSON.parse(execution.stdout)
          if (request.command.execution.kind === 'unified_cli') {
            parsedJson = unwrapUnifiedCliSuccessPayload(parsedJson)
          }
        } catch (error) {
          throw new AscetJsonParseError(
            request.command.id,
            execution.stdout,
            error,
          )
        }
      }

      const normalized = await normalizeAscetOutput({
        command: request.command,
        stdout: execution.stdout,
        parsedJson,
        artifactStore,
        summaryThresholdBytes,
      })

      return {
        commandId: request.command.id,
        executablePath,
        argv,
        exitCode: execution.exitCode,
        stdout: execution.stdout,
        stderr: execution.stderr,
        parsedJson,
        normalized,
      }
    },

    async shutdown(): Promise<void> {
      if (shutdownPromise) {
        return await shutdownPromise
      }

      closed = true
      shutdownPromise = (async () => {
        const pool =
          options?.readPool !== undefined
            ? options.readPool
            : defaultReadPoolPromise
              ? await defaultReadPoolPromise
              : null
        const writeHost =
          options?.writeHost !== undefined
            ? options.writeHost
            : defaultWriteHostPromise
              ? await defaultWriteHostPromise
              : null

        await pool?.shutdown?.()
        await writeHost?.shutdown?.()
      })()

      await shutdownPromise
    },
  }
}
