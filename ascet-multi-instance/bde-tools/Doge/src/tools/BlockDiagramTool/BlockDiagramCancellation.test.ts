import { expect, test } from 'bun:test'
import { ensureBootstrapMacro } from '../../bootstrapMacro.js'

ensureBootstrapMacro()
const { runBlockDiagramBackend } = await import('./BlockDiagramTool.js')

test('pre-dispatch cancellation confirms no backend was started', async () => {
  const controller = new AbortController()
  controller.abort()
  const result = await runBlockDiagramBackend('bd_edit', { request_id: 'cancel-before' }, 'test', controller.signal)
  expect(JSON.parse(result.content)).toMatchObject({ code: 'CANCELLED_BEFORE_DISPATCH', model_modified: false })
})

test('cancellation after dispatch never labels a write as not executed', async () => {
  // Empty operations cannot mutate, even in a host with sandbox writes enabled.
  const controller = new AbortController()
  const promise = runBlockDiagramBackend('bd_edit', { request_id: 'cancel-after', operations: [] }, 'test', controller.signal)
  controller.abort()
  expect(JSON.parse((await promise).content)).toMatchObject({
    code: 'WRITE_OUTCOME_UNKNOWN', automatic_retry: false, backend_may_be_running: true,
  })
})
