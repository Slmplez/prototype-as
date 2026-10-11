// Cross-field shape constraints; scalar types and lengths live in the Zod schema.
export function validReadInput(tool: string, args: Record<string, unknown>): boolean {
  if ('cursor' in args) return Object.keys(args).length === 1
  if (tool === 'bd_read') {
    const scope = args.scope as Record<string, unknown> | undefined
    return ('component' in args) !== ('snapshot' in args)
      && (!('scope' in args) || ('component' in args && !['interfaces', 'project_messages', 'class_interface'].includes(String(args.view))
        && (args.view === 'structure' ? !!scope && 'diagram' in scope : !!scope && 'targets' in scope)))
  }
  if (tool === 'bd_find') return 'snapshot' in args && 'query' in args
  if (tool === 'bd_diff') {
    return ('change_id' in args ? !('before' in args) && !('after' in args) : 'before' in args && 'after' in args)
      && (!('presentation' in args) || 'change_id' in args)
  }
  const allowed: Record<string, string[]> = {
    capabilities: [], snapshots: [], changes: ['snapshot', 'component', 'database'], edits: ['snapshot', 'component', 'database'],
    block_types: ['block_kind', 'owner_kind', 'diagram_scope'],
    recovery: ['change_id', 'reconcile'], fields: ['snapshot', 'targets', 'fields'], checks: ['snapshot'], configuration: ['snapshot'],
    signal_path: ['snapshot', 'targets'], interface_binding: ['snapshot', 'targets'],
    project_signal_path: ['snapshot', 'components', 'source', 'target'],
    flow_plan: ['segments', 'steps'],
    class_callers: ['component', 'selector'],
  }
  const fields = allowed[String(args.query)]
  if (!fields || Object.keys(args).some(k => !['query', 'max_bytes', ...fields].includes(k))) return false
  if (args.query === 'recovery') return 'change_id' in args
  if (args.query === 'class_callers') return typeof args.component === 'string' && args.component.replace(/^\\+|\\+$/g, '').includes('\\')
  if (args.query === 'flow_plan') return ('segments' in args) !== ('steps' in args)
  if (['fields', 'checks', 'configuration', 'signal_path', 'interface_binding', 'project_signal_path'].includes(String(args.query)) && !('snapshot' in args)) return false
  if (args.query === 'project_signal_path') return ['components', 'source', 'target'].every(k => k in args)
  if (['fields', 'signal_path', 'interface_binding'].includes(String(args.query)) && !('targets' in args)) return false
  return args.query !== 'signal_path' || (Array.isArray(args.targets) && args.targets.length === 2)
}
