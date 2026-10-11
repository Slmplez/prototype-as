"""Exercise real Class creation plus an independent ordinary edit without relaxing inverse guards."""
import argparse
from copy import deepcopy
import json
import os
from pathlib import Path
import traceback

import bd_service as service
import bd_class_tools as tools
import bd_class_creation as creation
import bd_instance_pending as pending
from bd_class_inverse_analysis import analyze_inverse
from bd_class_study_journal import audit, read_events
from bd_read_contract import validate as validate_read
from bd_source_inverse_oracle import decode_graph
from bd_class_source_candidate import audit_candidate_journal, validate_receipts
from bd_class_source_runtime import inspect_runtime, inspect_retained_runtime
from bd_class_runtime_patch import inspect_runtime_patch
from bde_isolated_runtime import live_manifest
from bde_tool_client import ToolClient
import bde_experiments as bench


def require(condition, message):
    if not condition:
        raise ValueError(message)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--matrix', type=Path, required=True)
    parser.add_argument('--recipe', choices=('base', 'extended', 'mixed'), required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    parser.add_argument('--source-plan', action='store_true', help='Observe an actual native persisted-source inverse candidate; no model setters')
    parser.add_argument('--move-owner-index', type=int, choices=(0, 1, 2), default=0)
    parser.add_argument('--move-diagram', default='Main', help='Exact existing source scope for the independent connected-literal move')
    parser.add_argument('--connect-new-input', action='store_true',
                        help='Connect to the exact newly created formal and require a candidate dependency refusal')
    parser.add_argument('--stage-candidate', action='store_true',
                        help='Retain and journal exact private sources/bindings; inspect, audit, refuse stale, then release without model setters')
    parser.add_argument('--runtime-source-audit', action='store_true',
                        help='Independently compare complete sources generated from private copies of the retained native current graphs')
    parser.add_argument('--retained-runtime-audit', action='store_true',
                        help='Capture original/applied native images during edits and verify their complete sources after an independent edit')
    parser.add_argument('--storage-witness-audit', action='store_true',
                        help='Verify exact native storage return objects for all original/applied/current scope members')
    parser.add_argument('--runtime-patch-audit', action='store_true',
                        help='Execute and restore an exact current-clone input-removal patch and compare its complete source with the merged candidate')
    parser.add_argument('--model-publication-study', action='store_true',
                        help='Actually publish all merged graphs and signature, observe public APIs, then restore current state with a durable model WAL')
    parser.add_argument('--current-identity-audit', action='store_true',
                        help='Bind the retained patch to exact CURRENT native objects before the first publication setter')
    parser.add_argument('--current-execution-preflight', action='store_true',
                        help='Prepare sealed CURRENT primitive and native-capture material only; no CURRENT actions are executed')
    parser.add_argument('--current-context-guard-audit', action='store_true',
                        help='Reject and restore altered private context witnesses before any CURRENT model setters')
    parser.add_argument('--current-execution-study', action='store_true',
                        help='Use the dedicated CURRENT physical protocol with complete preparation and recovery WALs')
    parser.add_argument('--current-complete-study', action='store_true',
                        help='Explicit isolated opt-in for the full unfaulted CURRENT forward/store/inverse lifecycle')
    parser.add_argument('--current-prepare-recovery-fault', action='store_true',
                        help='Persist the first CURRENT dispatch and quarantine, then fail before its native action')
    parser.add_argument('--current-native-fault-command',
                        help='Exact CURRENT primitive/store command to fail after its native action before accounting')
    parser.add_argument('--current-native-fault-owner', type=int, choices=(0, 1, 2, 3), default=0)
    parser.add_argument('--publication-fault-after-dispatch', type=int,
                        help='Research-only loss of the coordinator WAL completion after an actual native signature/store action')
    args = parser.parse_args()
    require(not args.connect_new_input or args.source_plan, 'New-input dependency experiment requires source planning')
    require(not args.stage_candidate or args.source_plan and not args.connect_new_input,
            'Candidate staging requires a compatible source/dependency planning experiment')
    require(not args.runtime_source_audit or args.stage_candidate, 'Runtime source audit requires candidate staging')
    require(not args.retained_runtime_audit or args.runtime_source_audit,
            'Retained runtime audit requires the complete current-runtime/source candidate experiment')
    require(not args.storage_witness_audit or args.retained_runtime_audit,
            'Storage witnesses require original/applied/current runtime source audits')
    require(not args.runtime_patch_audit or args.storage_witness_audit,
            'Runtime patch experiment requires all original/applied/current storage witnesses')
    require(not args.model_publication_study or args.runtime_patch_audit,
            'Model publication requires the complete audited native patch profile')
    require(not args.current_identity_audit or args.model_publication_study
            and args.publication_fault_after_dispatch is None,
            'Current identity audit requires a complete publication study without completion-loss injection')
    require(not args.current_execution_preflight or args.current_identity_audit,
            'CURRENT execution preparation requires the full exact identity audit')
    require(not args.current_context_guard_audit or args.current_execution_preflight,
            'CURRENT context audit requires full preparation')
    require(not args.current_execution_study or args.current_execution_preflight,
            'CURRENT physical protocol requires complete native preparation')
    require(not args.current_prepare_recovery_fault or args.current_execution_study
            and args.publication_fault_after_dispatch is None,
            'CURRENT pre-native fault requires the dedicated protocol without completion-loss injection')
    require(not args.current_native_fault_command or args.current_execution_study
            and not args.current_prepare_recovery_fault and args.publication_fault_after_dispatch is None,
            'CURRENT after-native fault requires a dedicated execution without other fault injection')
    require(not args.current_complete_study or args.current_execution_study and not args.current_prepare_recovery_fault
            and not args.current_native_fault_command and args.publication_fault_after_dispatch is None,
            'Complete CURRENT study requires the isolated full protocol without fault injection')
    require(args.publication_fault_after_dispatch is None or args.model_publication_study
            and 1 <= args.publication_fault_after_dispatch <= 12,
            'Completion-loss research requires the actual model publication profile and a bounded dispatch')
    manifest, _, epoch = live_manifest(args.manifest)
    owned = service.ROOT / 'analysis/bde-experiments'
    source, output = args.matrix.resolve(), args.output.resolve()
    require(source.is_relative_to(owned) and output.is_relative_to(owned)
            and not output.is_relative_to(source), 'Separate owned matrix/experiment required')
    matrix = json.loads((source / 'result.json').read_text(encoding='utf-8'))
    require(matrix.get('passed') is True and matrix['completed_rounds'] == 36
            and matrix['process_epoch'] == epoch and matrix['database'].lower() == manifest['database'].lower(),
            'Complete independently restored same-instance native matrix required')
    fixtures = [row for row in matrix['fixtures'] if row['recipe'] == args.recipe]
    require(len(fixtures) == 1, 'Unique exact fixture required')
    fixture = fixtures[0]
    tools.require_sandbox(fixture['component'])
    original = json.loads((source / (args.recipe + '-cont') / 'study-2.json').read_text(encoding='utf-8'))
    baseline = tools.observation(original, 'before')
    require(args.move_owner_index < len(baseline['owners']) - 1, 'Exact caller owner index required')
    move_owner = baseline['owners'][args.move_owner_index]
    require(args.move_diagram in move_owner['scopes'], 'Exact existing independent-move scope required')
    structure_args = {'component': move_owner['component'], 'scope': {'diagram': args.move_diagram},
                      'view': 'structure', 'max_bytes': 8192}
    def reject_input(code, message):
        raise ValueError(code + ': ' + message)
    validate_read('bd_read', structure_args, reject_input)
    operation = {'op': creation.OPERATION, 'selector': fixture['method_selector'],
                 'name': 'LocalInverseInput', 'model_type': 'cont',
                 'layout_policy': 'follow_verified_pins_and_orthogonal_routes', 'sequence_policy': 'no_implicit_changes'}
    creation.creation_plan(baseline, operation)
    output.mkdir(parents=True, exist_ok=False)
    service.STORE = output / 'state'
    for name in ('raw', 'snapshots', 'changes', 'documents', 'cursors', 'delivery'):
        (service.STORE / name).mkdir(parents=True)
    sources = [path for path in (service.ROOT / 'scripts').glob('*')
               if path.suffix in ('.py', '.cs', '.st')
               and path.name.startswith(('bd', 'AscetClass', 'AscetStructure', 'AscetPrivate'))]
    sources += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    sources += [service.ROOT / 'scripts' / name for name in
                ('current_class_identity_plan.st', 'current_class_identity_probe.st',
                 'current_class_native_capture.st', 'current_class_native_actions.st',
                 'current_class_execution.st', 'current_class_capture_probe.st', 'current_class_inverse_probe.st',
                 'current_class_context_probe.st',
                 'CurrentClassIdentityProbe.cs', 'inspect_current_class_identity.py')]
    sources.append(service.ROOT / 'Doge/scripts/bde-tool-call-eval.ts')
    hashes = lambda: {str(path.relative_to(service.ROOT)): service.digest(path.read_bytes()) for path in sources}
    inputs = lambda: {str(path.relative_to(source)): service.digest(path.read_bytes())
                      for path in source.rglob('*') if path.is_file()}
    result = {'passed': False, 'full_delivery': False, 'local_inverse_implemented': False,
              'scope': 'actual Class creation/ordinary edit, source dependencies and strict native refusal, then separate verified compensation',
              'ordinary_operation': 'connect_created_input' if args.connect_new_input else 'move_node',
              'recipe': args.recipe, 'process_epoch': epoch, 'source_manifest': hashes(),
              'input_hashes': inputs(), 'rounds': [], 'tool_calls': [],
              'not_verified': ['native patch-preserving Class inverse', 'other independent changes/faults', 'whole delivery']}

    def save():
        temporary = output / 'result.tmp'
        temporary.write_text(json.dumps(result, indent=2), encoding='utf-8')
        temporary.replace(output / 'result.json')

    client = ToolClient(output, 'class-independent-' + output.name, result['tool_calls'].append)
    client.env.update(ASCET_BD_CLASS_WRITES='1', ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_CLASS_IMPACT_UPSTREAM_PORT=str(manifest['port']), ASCET_BD_CLASS_CREATION_BULK='1',
        ASCET_BD_CLASS_QUERY_CACHE='1', ASCET_BD_CLASS_OBSERVATION_BATCH='1',
        ASCET_BD_CLASS_CONFIGURATION_GUARD='1')
    if args.source_plan:
        client.env['ASCET_BD_CLASS_SOURCE_PLANNING'] = '1'
    if args.retained_runtime_audit:
        client.env['ASCET_BD_CLASS_RETAINED_RUNTIME'] = '1'
    if args.storage_witness_audit:
        client.env['ASCET_BD_CLASS_STORAGE_WITNESS'] = '1'
        os.environ['ASCET_BD_CLASS_STORAGE_WITNESS'] = '1'
    if args.model_publication_study:
        os.environ['ASCET_BD_CLASS_MODEL_PUBLICATION_STUDY'] = '1'
    if args.current_identity_audit:
        os.environ['ASCET_BD_CLASS_CURRENT_IDENTITY_AUDIT'] = '1'
    if args.current_execution_preflight:
        os.environ['ASCET_BD_CLASS_CURRENT_EXECUTION_PREFLIGHT'] = '1'
    if args.current_execution_study:
        os.environ['ASCET_BD_CLASS_CURRENT_EXECUTION_STUDY'] = '1'
    if args.current_complete_study:
        os.environ['ASCET_BD_CLASS_CURRENT_COMPLETE_STUDY'] = '1'
    if args.current_native_fault_command:
        os.environ['ASCET_BD_CLASS_CURRENT_FAULT_STUDY'] = '1'
    if args.publication_fault_after_dispatch is not None:
        os.environ['ASCET_BD_CLASS_PUBLICATION_FAULT_STUDY'] = '1'
    os.environ['ASCET_BD_ENDPOINT_PORT'] = str(manifest['port'])
    log = Path(manifest['logs']) / 'crash.log'
    initial_log = log.read_bytes()
    save()

    def call(row, tool, arguments, mode='bulk_public_v1', error_expected=False, track=None):
        live_manifest(args.manifest)
        client.env['ASCET_BD_CLASS_OBSERVATION_MODE'] = mode
        with bench.proxy(upstream_port=manifest['port']) as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            head, body, error = client.call(tool, arguments)
        row.update(tool=tool, arguments=arguments, request=wire['request'].result(),
                   response=wire['response'].result(), wire_errors=wire['errors'], is_error=error)
        if track is not None and head.get('status') in (
                'verified_class_apply', 'applied_observed', 'outcome_unknown'):
            owner, kind = track
            owner[kind + '_outstanding'] = True
            owner['change_id' if kind == 'class' else 'ordinary_change_id'] = head['change_id']
            if head['status'] == 'outcome_unknown':
                owner[kind + '_outcome_unknown'] = True
        save()
        require(not wire['errors'] and row['request']['parse_error'] is None
                and row['response']['parse_error'] is None, 'Complete parsed native frames required')
        live_manifest(args.manifest)
        require(error is error_expected, body)
        return head, body if tool == 'bd_read' else json.loads(body)

    def read_class(row, expected=None):
        head, _ = call(row, 'bd_read', {'component': fixture['component'],
            'view': 'class_interface', 'max_bytes': 8192}, 'public_oracle')
        record = service.load_record(head['snapshot'], 's_', 'snapshots')
        require(record['dirty_editors'] == [0, 0] and record['ascet_process_epoch'] == epoch
                and record['oid'] == fixture['oid'] and not record.get('write_resource_error'),
                'Complete Class identity/coverage required')
        if expected is not None:
            require(record['class_interface'] == expected, 'Complete independent Class baseline differs')
        return record

    def source_plan(record, folder, mode):
        folder.mkdir()
        probe_input = tools.inputs(record)
        probe_input['native_class_source_plan_oracle'] = mode
        if args.stage_candidate and mode == 'schema':
            probe_input['native_class_source_candidate_compile'] = True
            if args.runtime_source_audit:
                probe_input['native_class_source_runtime_oracle'] = True
            if args.retained_runtime_audit:
                probe_input['native_class_retained_runtime_oracle'] = True
            if args.runtime_patch_audit:
                probe_input['native_class_runtime_patch_oracle'] = True
            if args.model_publication_study:
                probe_input['native_class_model_publication_compile'] = True
            if args.current_identity_audit:
                probe_input['native_class_current_identity_compile'] = True
        if mode == 'plan':
            probe_input['native_registry_extension_oracle'] = True
        tools.write(folder / 'input.json', probe_input)
        previous_port = os.environ.get('ASCET_BD_PROBE_PORT')
        try:
            with service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                live_manifest(args.manifest)
                os.environ['ASCET_BD_PROBE_PORT'] = str(wire['port'])
                observed, code = tools.invoke(folder / 'input.json', folder / 'raw.json', 'observe')
            live_manifest(args.manifest)
            parsed = not wire['errors'] and all(wire[name].result()['parse_error'] is None
                                                for name in ('request', 'response'))
            return observed, {'passed': code == 0 and parsed
                and observed.get('status') == 'observed'
                and observed.get('model_setters_called') == 0
                and observed.get('model_mutation_dispatched') is False,
                'exit_code': code, 'error': observed.get('error'),
                'request': wire['request'].result(), 'response': wire['response'].result(),
                'wire_errors': wire['errors']}
        finally:
            if previous_port is None:
                os.environ.pop('ASCET_BD_PROBE_PORT', None)
            else:
                os.environ['ASCET_BD_PROBE_PORT'] = previous_port

    def candidate_action(record, folder, token, action):
        folder.mkdir()
        expected = folder / 'expected.json'
        tools.write(expected, record['class_interface'])
        probe_input = {**tools.inputs(record), 'expected_observation_path': str(expected),
                       'native_class_source_candidate': {'token': token, 'action': action}}
        if args.runtime_source_audit and action == 'audit':
            probe_input['native_class_source_runtime_oracle'] = True
        if args.retained_runtime_audit and action == 'audit':
            probe_input['native_class_retained_runtime_oracle'] = True
        if args.runtime_patch_audit and action == 'audit':
            probe_input['native_class_runtime_patch_oracle'] = True
        tools.write(folder / 'input.json', probe_input)
        previous_port = os.environ.get('ASCET_BD_PROBE_PORT')
        try:
            with service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                live_manifest(args.manifest)
                os.environ['ASCET_BD_PROBE_PORT'] = str(wire['port'])
                observed, code = tools.invoke(folder / 'input.json', folder / 'raw.json', 'observe')
            live_manifest(args.manifest)
            result = {'passed': code == 0 and observed.get('status') == 'observed'
                      and observed.get('model_setters_called') == 0 and observed.get('model_mutation_dispatched') is False,
                      'exit_code': code, 'error': observed.get('error'),
                      'request': wire['request'].result(), 'response': wire['response'].result(), 'wire_errors': wire['errors']}
            result['passed'] = result['passed'] and not wire['errors'] and all(
                result[key]['parse_error'] is None for key in ('request', 'response'))
            if observed.get('candidate_journal'):
                result['journal'] = audit_candidate_journal(observed['candidate_journal'])
            return observed, result
        finally:
            if previous_port is None:
                os.environ.pop('ASCET_BD_PROBE_PORT', None)
            else:
                os.environ['ASCET_BD_PROBE_PORT'] = previous_port

    def model_publication(record, folder, token):
        from bd_class_model_publication import inspect_publication
        folder.mkdir()
        expected = folder / 'expected.json'
        tools.write(expected, record['class_interface'])
        probe_input = {**tools.inputs(record), 'expected_observation_path': str(expected),
            'native_class_model_publication': {'token': token,
                'pending_path': str(pending.pending_path(tools.domain(record)))}}
        if args.publication_fault_after_dispatch is not None:
            probe_input['native_class_model_publication']['fault_after_dispatch'] = args.publication_fault_after_dispatch
        if args.current_identity_audit:
            probe_input['native_class_current_identity_audit'] = True
        if args.current_execution_preflight:
            probe_input['native_class_current_execution_preflight'] = True
        if args.current_context_guard_audit:
            probe_input['native_class_current_context_guard_audit'] = True
        if args.current_execution_study:
            probe_input['native_class_current_execution_study'] = True
            tools.write(folder / 'public-before.json', before_value)
            tools.write(folder / 'public-applied.json', after_value)
            probe_input['current_execution_public_context'] = {
                'before': str((folder / 'public-before.json').resolve()),
                'applied': str((folder / 'public-applied.json').resolve())}
        if args.current_complete_study:
            probe_input['native_class_current_complete_study'] = True
        if args.current_native_fault_command:
            probe_input['native_class_current_fault'] = {
                'owner_index': args.current_native_fault_owner, 'command': args.current_native_fault_command}
        tools.write(folder / 'input.json', probe_input)
        previous_port = os.environ.get('ASCET_BD_PROBE_PORT')
        previous_fault = os.environ.get('ASCET_BD_CLASS_JOURNAL_FAIL_EVENT')
        try:
            if args.current_prepare_recovery_fault:
                os.environ['ASCET_BD_CLASS_JOURNAL_FAIL_EVENT'] = 'before_native'
            with service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                pending.check(tools.domain(record))
                live_manifest(args.manifest)
                os.environ['ASCET_BD_PROBE_PORT'] = str(wire['port'])
                observed, code = tools.invoke(folder / 'input.json', folder / 'raw.json', 'observe')
            live_manifest(args.manifest)
            proof = {'passed': code == 0 and observed.get('status') == ('current_execution_restored' if args.current_execution_study else 'publication_restored')
                and observed.get('model_mutation_dispatched') is True and observed.get('outstanding') is False,
                'exit_code': code, 'error': observed.get('error'),
                'request': wire['request'].result(), 'response': wire['response'].result(), 'wire_errors': wire['errors']}
            require(proof['passed'], 'Actual model publication/restoration failed: ' + str(proof['error']))
            require(not wire['errors'] and all(proof[name]['parse_error'] is None for name in ('request', 'response')),
                    'Model publication requires complete parsed Cebra frames')
            if args.current_execution_study:
                from bd_class_current_prefix import inspect_current_prefix
                classified = observed['current_execution_restored_classification']
                proof['verification'] = inspect_current_prefix(observed, read_events(observed['model_publication_journal']),
                    classified['publication'], classified['owners'])
                require(proof['verification']['terminal'], 'CURRENT execution has no complete exact physical cycle')
            else:
                proof['verification'] = inspect_publication(observed, token, record['class_interface'],
                    before=before_value, applied=after_value, plans=staged['native_class_source_candidates'])
            if args.current_identity_audit:
                from bd_class_current_identity import inspect_current_identity
                prepared = read_events(observed['model_publication_journal'])[1]['payload']['owners']
                proof['current_identity'] = inspect_current_identity(
                    observed.get('current_identity_preflight'), token, record['class_interface'], prepared)
                tools.write(folder / 'current-identity-proof.json', proof['current_identity'])
            if args.current_execution_preflight:
                from bd_class_current_execution import inspect_preflight, inspect_ready_classification
                proof['current_execution'] = inspect_preflight(observed, token, record['class_interface'], prepared)
                proof['current_classification'] = inspect_ready_classification(observed, token, record['class_interface'], prepared)
                tools.write(folder / 'current-execution-proof.json', proof['current_execution'])
                tools.write(folder / 'current-classification-proof.json', proof['current_classification'])
            if args.current_context_guard_audit:
                proof['current_context_guards'] = []
                for field, phase, count in (('current_context_guard_audit', 'ready', 0),
                                            ('current_context_guard_publishing_audit', 'publishing', 2)):
                    audit_guard = observed.get(field, {})
                    require(audit_guard.get('profile') == 'class_current_context_guard_audit_v1'
                            and audit_guard.get('passed') is True and audit_guard.get('token') == token
                            and audit_guard.get('model_setters_called') == 0
                            and audit_guard.get('owners_verified') == len(record['class_interface']['owners'])
                            and audit_guard.get('complete_source_faults', 0) > 0
                            and audit_guard.get('full_native_original_restored') is True
                            and audit_guard.get('group_state') == phase
                            and audit_guard.get('model_steps_before') == audit_guard.get('model_steps_after') == count
                            and audit_guard.get('production_executor_available') is False
                            and len(audit_guard.get('cases', [])) == audit_guard.get('assertions')
                            and len(set(audit_guard.get('cases', []))) == audit_guard.get('assertions'),
                            'CURRENT guard rejection audit lacks full restoration or unchanged prefix evidence')
                    proof['current_context_guards'].append(audit_guard)
            return proof
        finally:
            if previous_fault is None:
                os.environ.pop('ASCET_BD_CLASS_JOURNAL_FAIL_EVENT', None)
            else:
                os.environ['ASCET_BD_CLASS_JOURNAL_FAIL_EVENT'] = previous_fault
            if previous_port is None:
                os.environ.pop('ASCET_BD_PROBE_PORT', None)
            else:
                os.environ['ASCET_BD_PROBE_PORT'] = previous_port

    try:
        tools.build()
        for index in range(args.repeats):
            row = {'round': index, 'class_outstanding': False, 'ordinary_outstanding': False, 'before': {}}
            result['rounds'].append(row)
            before = read_class(row['before'], baseline)
            if args.source_plan and index == 0:
                schema, result['source_schema_preflight'] = source_plan(before, output / 'source-schema', 'schema')
                if args.stage_candidate:
                    require(schema.get('native_source_candidate_compiled') is True,
                            'Candidate native compilation must succeed before Class creation')
                    if args.runtime_source_audit:
                        require(schema.get('native_source_runtime_compiled') is True,
                                'Runtime source native binding must succeed before edits')
                    if args.retained_runtime_audit:
                        require(schema.get('native_retained_runtime_compiled') is True,
                                'Retained runtime native binding must succeed before edits')
                    if args.runtime_patch_audit:
                        require(schema.get('native_runtime_patch_compiled') is True,
                                'Runtime patch native binding must succeed before edits')
                    if args.model_publication_study:
                        require(schema.get('native_model_publication_compiled') is True,
                                'Model publication native binding must succeed before edits')
                    if args.current_identity_audit:
                        require(schema.get('native_current_identity_compiled') is True,
                                'Current identity reader must compile before edits')
                require(result['source_schema_preflight']['passed'],
                        'Native source schema preflight failed before edits: ' + str(schema.get('error')))
                require(tools.observation(schema, 'observed') == before['class_interface'],
                        'Native source schema preflight changed complete baseline')
                for source_owner in schema['native_class_source_plans']:
                    decode_graph(source_owner['result']['current_source_graph'], source_owner['oid'])
            row['create'] = {}
            _, created = call(row['create'], 'bd_edit', {'snapshot': before['snapshot'],
                'request_id': f'create-{index}', 'operations': [deepcopy(operation)]}, track=(row, 'class'))
            require(created['status'] == 'verified_class_apply', 'Actual verified Class creation required')
            row.update(change_id=created['change_id'], class_outstanding=True)
            save()
            raw = tools.load(tools.root(created['change_id']) / 'raw.json')
            events = read_events(tools.root(created['change_id']) / 'native.wal')
            before_value = next(event['payload'] for event in events if event['kind'] == 'prepared_all')
            after_value = next(event['payload'] for event in events
                               if event['kind'] == 'observed' and event['payload']['phase'] == 'after')
            after_value = {key: value for key, value in after_value.items() if key != 'phase'}
            require(args.move_owner_index < len(after_value['owners']) - 1, 'Exact caller owner index required')
            owner = after_value['owners'][args.move_owner_index]
            require(args.move_diagram in owner['scopes'], 'Exact existing independent-move scope required')
            row['structure_read'] = {}
            head, _ = call(row['structure_read'], 'bd_read', structure_args)
            structure = service.load_record(head['snapshot'], 's_', 'snapshots')['structure']
            require(structure == owner['scopes'][args.move_diagram], 'Ordinary reader changed Class scope identity or values')
            old_entries = {entry['ref']: entry for entry in
                           before_value['owners'][args.move_owner_index]['scopes'][args.move_diagram]['entries']}
            candidates = [entry for entry in structure['entries'] if entry['kind'] == 'node'
                          and entry.get('native_class') == 'SGLiteralGO' and old_entries.get(entry['ref']) == entry]
            require(candidates, 'An exact untouched original literal is required')
            target = candidates[0]
            ordinary_op = {'op': 'move_node', 'target': args.move_diagram + '/' + target['ref'],
                           'position': [target['anchor'][0] + 40, target['anchor'][1] + 40]}
            if args.connect_new_input:
                before_methods = {method['alias']: method for method in before_value['observation']['signature']['methods']}
                after_method = next(method for method in after_value['observation']['signature']['methods']
                                    if method['alias'] == operation['selector']['method_alias'])
                original_aliases = {formal['alias'] for formal in before_methods[after_method['alias']]['arguments']}
                added_formals = [formal for formal in after_method['arguments'] if formal['alias'] not in original_aliases]
                require(len(added_formals) == 1, 'One exact actually created formal required')
                caller = next(caller for caller in after_value['observation']['discovery']['callers'] if caller['oid'] == owner['oid'])
                selected_scope = next(scope for scope in caller['scopes'] if scope['diagram'] == args.move_diagram)
                pins = [(occurrence, pin) for occurrence in selected_scope['occurrences'] for pin in occurrence['pins']
                        if pin['method_alias'] == after_method['alias'] and pin['formal_alias'] == added_formals[0]['alias']]
                require(pins, 'Created formal must have an exact selected caller occurrence')
                occurrence, pin = pins[0]
                destination = 'p' + str(pin['id'])
                graph_pins = [entry for entry in structure['entries'] if entry['kind'] == 'pin'
                              and entry['owner'] == target['ref'] and entry['output'] is True]
                destination_rows = [entry for entry in structure['entries'] if entry['ref'] == destination]
                require(len(graph_pins) == 1 and len(destination_rows) == 1
                        and destination_rows[0]['owner'] == 'n' + str(occurrence['node'])
                        and destination_rows[0]['input'] is True, 'Exact directional observed endpoint bindings required')
                require(not any(entry['kind'] == 'edge' and entry['target'] == destination for entry in structure['entries']),
                        'Created input must be unoccupied')
                ordinary_op = {'op': 'connect_data', 'source': args.move_diagram + '/' + graph_pins[0]['ref'],
                               'target': args.move_diagram + '/' + destination}
                row['created_input_dependency'] = {'formal_alias': added_formals[0]['alias'],
                    'method_alias': after_method['alias'], 'owner_oid': owner['oid'], 'diagram': args.move_diagram,
                    'block_id': occurrence['node'], 'connector_id': pin['id']}
            row['move'] = {}
            _, moved = call(row['move'], 'bd_edit', {'snapshot': head['snapshot'],
                'request_id': f'move-{index}', 'operations': [ordinary_op]}, track=(row, 'ordinary'))
            require(moved['status'] == 'applied_observed', 'Actual independently verified ordinary edit required')
            row.update(ordinary_change_id=moved['change_id'], ordinary_outstanding=True)
            save()
            row['current_read'] = {}
            current_record = read_class(row['current_read'])
            analysis = analyze_inverse(before_value, after_value, current_record['class_interface'])
            tools.write(output / f'analysis-{index}.json', {'before': before_value,
                'after': after_value, 'current': current_record['class_interface'], 'analysis': analysis})
            row['value_analysis'] = analysis
            require(not analysis['original_after_matches'], 'Real independent move did not change the Class observation')
            if args.source_plan:
                observed, row['source_plan'] = source_plan(current_record, output / f'source-plan-{index}', 'plan')
                row['source_plans'] = [{**item, 'result': {key: value for key, value in item['result'].items()
                                       if key != 'source_graphs'}} for item in observed.get('native_class_source_plans', [])
                                      if type(item) is dict and type(item.get('result')) is dict]
                if row['source_plan']['passed']:
                    try:
                        registry_checks = observed.get('native_registry_extension_checks')
                        require(type(registry_checks) is list and len(registry_checks) == len(current_record['class_interface']['owners']),
                                'Complete owner registry negative checks required')
                        require(all(item['checks']['negative_count'] == 10 and item['checks']['current_guard_matches'] is True
                            and item['checks']['model_setters_called'] == 0 and item['checks']['registry_modified'] is False
                            for item in registry_checks), 'Private checkpoint negative checks failed')
                        row['registry_negative_checks'] = registry_checks
                        row['native_source_analysis'] = tools.validate_source_plans(observed, current_record['class_interface'],
                            before=before_value, applied=after_value)
                        row['source_plan']['complete_candidate_verified'] = True
                        dependencies_valid = row['native_source_analysis']['all_candidate_dependencies_valid']
                        require(dependencies_valid is not args.connect_new_input,
                                'Candidate dependency validation contradicted the actual ordinary operation')
                        if args.connect_new_input:
                            require(row['native_source_analysis']['all_sources_compatible'],
                                    'Value merge must be independently compatible before the dependency refusal')
                            dependency = row['created_input_dependency']
                            conflicts = [conflict for item in row['native_source_analysis']['owners']
                                if item['oid'] == dependency['owner_oid']
                                for conflict in item['result']['candidate_dependencies']['conflicts']]
                            require(any(conflict.get('code') == 'SOURCE_DANGLING_ENDPOINT'
                                and conflict.get('diagram') == dependency['diagram'] and conflict.get('side') == 'end'
                                and conflict.get('block_id') == dependency['block_id']
                                and conflict.get('connector_id') == dependency['connector_id'] for conflict in conflicts),
                                'Actual new incident edge must refuse its exact removed endpoint')
                            row['exact_dependency_conflict_verified'] = True
                        if args.stage_candidate:
                            token = 'cand_' + service.digest({'output': str(output), 'round': index,
                                'class_change_id': created['change_id'], 'ordinary_change_id': moved['change_id']})
                            row.update(candidate_token=token, candidate_outstanding=True)
                            save()
                            for candidate_op in ('prepare', 'inspect', 'audit'):
                                staged, proof = candidate_action(current_record, output / f'candidate-{candidate_op}-{index}', token, candidate_op)
                                row['candidate_' + candidate_op] = proof
                                require(proof['passed'] and proof['journal']['status'] == 'recorded',
                                        'Native candidate ' + candidate_op + ' did not complete: ' + str(proof.get('error')))
                                verified = validate_receipts(staged, current_record['class_interface'], token, candidate_op,
                                    before=before_value, applied=after_value)
                                require(verified['source_analysis'] == row['native_source_analysis'],
                                        'Retained candidate sources differ from the independent source/dependency preview')
                                proof['verified_receipts'] = verified
                                if args.runtime_source_audit and candidate_op == 'audit':
                                    proof['runtime_sources'] = [inspect_runtime(
                                        item['receipt']['runtime_source_audit'], token, item['oid'],
                                        item['receipt']['generation'],
                                        expected_source=item['receipt']['source_plan']['source_graphs']['current'],
                                        expected_scopes=next(owner for owner in current_record['class_interface']['owners']
                                            if owner['oid'] == item['oid'])['scopes'])
                                        for item in staged['native_class_source_candidates']]
                                if args.retained_runtime_audit and candidate_op == 'audit':
                                    proof['retained_runtime_sources'] = [inspect_retained_runtime(
                                        item['receipt']['retained_runtime_audit'], token, item['oid'],
                                        item['receipt']['generation'],
                                        expected_sources=item['receipt']['source_plan']['source_graphs'],
                                        expected_generations={phase: next(owner for owner in context['owners']
                                            if owner['oid'] == item['oid'])['scopes']['Main']['generation']
                                            for phase, context in (('original', before_value), ('applied', after_value))},
                                        expected_scopes={phase: next(owner for owner in context['owners']
                                            if owner['oid'] == item['oid'])['scopes']
                                            for phase, context in (('original', before_value), ('applied', after_value))})
                                        for item in staged['native_class_source_candidates']]
                                    changed_capture = next(item for item in staged['native_class_source_candidates']
                                        if item['oid'] == current_record['class_interface']['owners'][args.move_owner_index]['oid'])
                                    require(changed_capture['receipt']['retained_runtime_audit']['captures'][1]
                                            ['historical_live_fields_match_capture'] is False,
                                            'The independently moved historical live graph did not differ from its captured image')
                                    proof['historical_live_mutation_detected'] = True
                                if args.storage_witness_audit and candidate_op == 'audit':
                                    require(all('storage_witness' in item for item in proof['runtime_sources'])
                                        and all('storage_witness' in image for item in proof['retained_runtime_sources']
                                                for image in item['captures']), 'Complete original/applied/current storage witnesses required')
                                    proof['storage_witnesses_verified'] = True
                                if args.runtime_patch_audit and candidate_op == 'audit':
                                    proof['runtime_patches'] = [inspect_runtime_patch(
                                        item['receipt']['runtime_patch_audit'], token, item['oid'], item['receipt']['generation'],
                                        expected_source=item['receipt']['source_plan']['source_graphs']['candidate'],
                                        expected_source_graphs=item['receipt']['source_plan']['source_graphs'],
                                        expected_current_source=item['receipt']['source_plan']['source_graphs']['current'],
                                        expected_definition_oid=current_record['class_interface']['observation']['signature']['oid'],
                                        expected_scopes=next(owner for owner in current_record['class_interface']['owners']
                                            if owner['oid'] == item['oid'])['scopes'])
                                        for item in staged['native_class_source_candidates']]
                                    save()
                                    require(all(item['complete_candidate_source_matches'] for item in proof['runtime_patches']),
                                            'Private native runtime patch did not generate the complete merged source')
                                if candidate_op == 'prepare':
                                    require(all(item['receipt']['preparation_reused'] is False
                                        for item in staged['native_class_source_candidates']), 'Fresh candidate unexpectedly reused a token')
                            replayed, proof = candidate_action(current_record, output / f'candidate-prepare-replay-{index}', token, 'prepare')
                            row['candidate_prepare_replay'] = proof
                            require(proof['passed'] and proof['journal']['status'] == 'recorded'
                                    and all(item['receipt']['preparation_reused'] is True
                                        for item in replayed['native_class_source_candidates']),
                                    'Repeated candidate prepare did not reuse the retained private material')
                            proof['verified_receipts'] = validate_receipts(replayed, current_record['class_interface'], token, 'prepare',
                                before=before_value, applied=after_value)
                            require(proof['verified_receipts']['source_analysis'] == row['native_source_analysis'],
                                    'Repeated candidate preparation replaced its original source/material bindings')
                            if args.model_publication_study:
                                row['model_publication'] = model_publication(current_record,
                                    output / f'model-publication-{index}', token)
                                save()
                    except Exception:
                        row['source_plan'].update(passed=False, error=traceback.format_exc())
                        publication_raw = output / f'model-publication-{index}' / 'raw.json'
                        if args.current_execution_study and publication_raw.exists():
                            failed = tools.load(publication_raw)
                            if failed.get('model_publication_outstanding') is True:
                                row['current_execution_outstanding'] = True
                                save()
                                raise ValueError('CURRENT execution remains quarantined; use bde_class_current_recovery.py before ordinary/Class compensation')
                row['source_plan_unchanged'] = {}
                read_class(row['source_plan_unchanged'], current_record['class_interface'])
                save()
            row['inverse_preview'] = {}
            if args.source_plan and not row['source_plan']['passed']:
                # Restore through the unchanged strict policy before reporting a
                # failed research oracle; do not leave edits for a parser error.
                client.env.pop('ASCET_BD_CLASS_SOURCE_PLANNING', None)
            _, preview = call(row['inverse_preview'], 'bd_revert', {'change_id': created['change_id'],
                'request_id': f'preview-{index}', 'preview': True})
            require(preview['write_eligibility'] == 'refused' and preview['model_setters_called'] == 0,
                    'Strict inverse preview must refuse a modified owner')
            if args.source_plan and row['source_plan']['passed']:
                row['formal_source_analysis_matches'] = preview['native_source_patch_analysis'] == row['native_source_analysis']
            row['strict_refusal'] = {}
            _, refused = call(row['strict_refusal'], 'bd_revert', {'change_id': created['change_id'],
                'request_id': f'refuse-{index}'}, error_expected=True)
            require(refused['status'] == 'rejected_before_dispatch' and refused['model_modified'] is False,
                    'Changed Class owner reached a native restore setter')
            refused_raw = tools.load(tools.root(refused['change_id']) / 'raw.json')
            require(refused_raw['model_mutation_dispatched'] is False, 'Strict inverse dispatched a setter')
            rejected_wal = tools.root(refused['change_id']) / 'native.wal'
            if rejected_wal.exists():
                require(audit(rejected_wal)['dispatch_count'] == 0, 'Strict inverse WAL contains a native mutation')
            row['unchanged_after_refusal'] = {}
            read_class(row['unchanged_after_refusal'], current_record['class_interface'])
            row['move_inverse'] = {}
            _, compensated = call(row['move_inverse'], 'bd_revert', {'change_id': moved['change_id'],
                'request_id': f'move-inverse-{index}'})
            require(compensated['status'] in ('verified_local', 'applied_observed'), 'Ordinary move inverse is unverified')
            row['ordinary_outstanding'] = False
            save()
            row['applied_again'] = {}
            applied_record = read_class(row['applied_again'], tools.observation(raw, 'after'))
            if args.stage_candidate and row.get('candidate_outstanding'):
                try:
                    stale, stale_proof = candidate_action(applied_record, output / f'candidate-stale-{index}', row['candidate_token'], 'inspect')
                    row['candidate_stale_refusal'] = stale_proof
                    require(stale_proof['exit_code'] != 0 and stale_proof.get('journal', {}).get('status') == 'native_refusal'
                            and 'Native candidate current baseline changed' in stale_proof['journal']['native_refusal']
                            and stale.get('model_mutation_dispatched') is False,
                            'An actual ordinary inverse must make the retained candidate stale before execution')
                except Exception:
                    row['candidate_stale_error'] = traceback.format_exc()
                finally:
                    released, proof = candidate_action(applied_record, output / f'candidate-release-{index}', row['candidate_token'], 'release')
                    row['candidate_release'] = proof
                    if proof['passed'] and proof.get('journal', {}).get('status') == 'recorded':
                        proof['verified_receipts'] = validate_receipts(released, current_record['class_interface'],
                            row['candidate_token'], 'release', before=before_value, applied=after_value)
                        row['candidate_outstanding'] = False
                    save()
            row['applied_after_candidate_release'] = {}
            read_class(row['applied_after_candidate_release'], tools.observation(raw, 'after'))
            row['class_inverse'] = {}
            _, restored = call(row['class_inverse'], 'bd_revert', {'change_id': created['change_id'],
                'request_id': f'class-inverse-{index}'})
            require(restored['status'] == 'verified_class_inverse', 'Class exact inverse after compensation failed')
            row.update(class_outstanding=False, inverse_change_id=restored['change_id'])
            save()
            row['final'] = {}
            read_class(row['final'], baseline)
            require(not pending.pending_path(tools.domain(before)).exists(), 'Complete restoration left a pending barrier')
            if args.source_plan:
                require(row['source_plan']['passed'],
                        'Native source planning failed; complete baseline restored: ' + str(row['source_plan']['error']))
                require(row['formal_source_analysis_matches'],
                        'Formal source analysis differs; complete baseline restored')
            if args.stage_candidate:
                require(not row.get('candidate_outstanding') and 'candidate_stale_error' not in row,
                        'Candidate lifecycle is incomplete; native/Class baselines were separately compensated')
            row.update(passed=True, complete_baseline_restored=True,
                       collected_graph_compatible=analysis['collected_graph_compatible'])
            save()
            print(json.dumps({'round': index, 'passed': True,
                              'collected_graph_compatible': analysis['collected_graph_compatible']}), flush=True)
        result['passed'] = all(row.get('passed') is True for row in result['rounds'])
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        current_log = log.read_bytes()
        result['crash_log_append_only'] = current_log.startswith(initial_log)
        appended = current_log[len(initial_log):] if result['crash_log_append_only'] else current_log
        (output / 'crash-log-appended.txt').write_bytes(appended)
        result['new_assertion_count'] = appended.count(b'Dumping walkback to file:')
        result['source_drift'] = [name for name, digest in hashes().items() if digest != result['source_manifest'][name]]
        result['inputs_unchanged'] = inputs() == result['input_hashes']
        result['passed'] = result['passed'] and result['inputs_unchanged'] and not result['source_drift']
        result['passed'] = result['passed'] and result['crash_log_append_only'] and not result['new_assertion_count']
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'local_inverse_implemented', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
