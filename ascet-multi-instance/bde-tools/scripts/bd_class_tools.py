"""Opt-in isolated Class formal deletion with durable separate apply and inverse.

The current inverse requires the exact all-owner after baseline. It deliberately
refuses later graph changes; this is not the general patch-preserving inverse.
"""
from collections import Counter
import json
import os
from pathlib import Path
import re
import time
import uuid

import bd_service as service
import bd_instance_pending as pending
from bd_edit_journal import JournalError, fingerprint
from bd_class_interface_contract import deletion_effects
from bd_class_selector import select_formal, validate_selector
import bd_class_creation as creation
from bd_class_study_journal import actual_diff, audit, read_events
from bd_source_inverse_oracle import inspect_candidate
from bd_source_dependencies import inspect_dependencies

OPERATION = 'delete_class_formal'
OPERATIONS = (OPERATION, creation.OPERATION)
SOURCE = 'native_class_interface_v1'
SOURCES = ('AscetClassInterfaceStudy.cs', 'AscetClassResourceClosure.cs', 'AscetClassStudyJournal.cs',
    'AscetClassInterfaceProbe.cs', 'AscetStructureRead.cs', 'AscetStructureExperiment.cs',
    'bde_class_interface_probe.st', 'bde_class_interface_study.st', 'bde_structure_read.st',
    'bde_class_callers.st', 'bde_class_materialize.st', 'bde_class_formal_selector.st',
    'bde_database_identity.st', 'bde_class_configuration_read.st', 'bde_class_recovery_probe.st',
    'bde_public_graph_read.st', 'bde_public_signature_read.st', 'bde_class_configuration_oracle_v2.st',
    'bde_class_read_template_cache.st', 'bde_class_observation_batch.st', 'bde_class_configuration_guard.st')
SOURCES += ('bde_class_source_inverse_plan.st', 'bde_persisted_source_graph.st',
            'bde_class_registry_extension_guard.st', 'bde_class_registry_extension_probe.st',
            'bde_class_source_candidate.st', 'bde_class_source_runtime_probe.st',
            'bde_class_retained_runtime_capture.st', 'bde_class_retained_runtime_probe.st',
            'bde_native_storage_witness.st', 'bde_class_runtime_patch_probe.st',
            'bde_class_pin_layout_plan.st', 'bde_class_model_publication.st',
            'bde_class_native_signature_probe.st',
            'current_class_identity_plan.st', 'current_class_identity_probe.st',
            'current_class_native_capture.st', 'current_class_native_actions.st',
            'current_class_execution.st', 'current_class_context_probe.st')
SOURCES += ('bde_class_method_selector.st', 'bde_class_argument_creation.st', 'bde_class_detached_projection.st',
            'bde_class_local_inverse_bindings.st', 'bde_class_binding_checkpoint_probe.st',
            'bde_native_collection_merge.st', 'bde_native_collection_merge_probe.st',
            'bde_native_keyed_collection_plan.st', 'bde_native_graph_clone.st',
            'bde_native_graph_clone_probe.st', 'bde_native_graph_splice.st', 'bde_native_graph_splice_probe.st',
            'bde_native_private_collection_plan.st', 'bde_native_private_execution.st',
            'bde_native_private_remote_prepare.st', 'bde_native_private_wire.st', 'AscetPrivateStepStudy.cs')


def build():
    sources = [service.ROOT / 'scripts' / name for name in SOURCES]
    binary = service.ROOT / 'analysis/live-api/AscetClassTools.exe'
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    service.ensure_probe()
    if not binary.exists() or binary.stat().st_mtime < max(p.stat().st_mtime for p in sources + [dll, Path(__file__)]):
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        service.run_process([str(compiler), '/nologo', '/platform:x86', '/main:AscetClassInterfaceStudy',
            '/r:System.Web.Extensions.dll', f'/r:{dll}', f'/out:{binary}',
            *[f'/resource:{p},{p.name}' for p in sources if p.suffix == '.st'],
            *[str(p) for p in sources if p.suffix == '.cs']], 30, build_step=True)
    return binary


def load(path):
    path = Path(path)
    try:
        value = json.loads(path.read_text(encoding='utf-8'))
        if path.name in ('intent.json', 'receipt.json', 'inverse.json'):
            checksum = value.pop('integrity_sha256')
            if service.digest(value) != checksum:
                raise ValueError('Managed Class record checksum differs')
        return value
    except (OSError, ValueError, KeyError, TypeError) as error:
        raise JournalError('JOURNAL_CORRUPT', 'Invalid Class record: ' + str(path)) from error


def write(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    if path.name in ('intent.json', 'receipt.json', 'inverse.json'):
        value = {**value, 'integrity_sha256': service.digest(value)}
    service.write_once(path, value)


def domain(record):
    return {'session': record['session'], 'database': record['database'], 'oid': record['oid'],
            'process_epoch': record['ascet_process_epoch']}


def require_sandbox(component):
    if not isinstance(component, str) or not re.fullmatch(r'BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+', component.strip('\\')):
        raise JournalError('CAPABILITY_UNAVAILABLE', 'Class interface tools currently require an isolated Trial_* definition and callers')


def validate_operation(op):
    if isinstance(op, dict) and op.get('op') == creation.OPERATION:
        try:
            creation.validate_operation(op)
        except (TypeError, ValueError) as error:
            raise JournalError('INVALID_INPUT', 'Invalid typed Class argument creation') from error
        return
    if (not isinstance(op, dict) or set(op) != {'op', 'selector', 'layout_policy', 'sequence_policy'} or op['op'] != OPERATION or
            op['layout_policy'] != 'follow_verified_pins_and_orthogonal_routes' or
            op['sequence_policy'] not in ('no_implicit_changes', 'allow_unassigned')):
        raise JournalError('INVALID_INPUT', 'Explicit exact Class selector, verified native layout and sequence policies required')
    try:
        validate_selector(op['selector'])
    except (TypeError, ValueError) as error:
        raise JournalError('INVALID_INPUT', 'Invalid Class formal selector') from error
    if op['selector']['slot'] == 'argument' and op['sequence_policy'] != 'no_implicit_changes':
        raise JournalError('INVALID_INPUT', 'Argument removal does not allow implicit sequence changes')


def native_selector(op):
    return creation.native_selector(op) if op['op'] == creation.OPERATION else op['selector']


def native_operation(op):
    return 'closed_create_argument' if op['op'] == creation.OPERATION else 'closed_delete_' + op['selector']['slot']


def validate_effects(raw, op):
    if op['op'] == creation.OPERATION:
        return creation.creation_effects(raw, op)
    return deletion_effects(raw, allow_pin_layout=True, allow_adjacent_corner_layout=True,
        allow_unassigned_sequence=op['sequence_policy'] == 'allow_unassigned', verify_restoration=False)


def observation(raw, phase):
    state_key = 'before' if phase == 'observed' else phase
    state = raw[state_key]
    paths = [row['component'] for row in state['callers']] + [state['signature']['path']]
    identities = {row['component']: row['oid'] for row in state['discovery']['callers']}
    identities[state['signature']['path']] = state['signature']['oid']
    stable = {**state, 'callers': [{key: value for key, value in caller.items()
        if key not in ('cached', 'cached_error', 'public_retained', 'public_fresh')} for caller in state['callers']]}
    return {'observation': stable, 'owners': [{'component': path, 'oid': identities[path], 'native_recovery': 'prepared',
        'scopes': raw[f'owner_scopes_{phase}_{i}']} for i, path in enumerate(paths)]}


def snapshot(raw, phase, session, change_id=None):
    observed = observation(raw, phase)
    value = {key: raw[key] for key in ('database', 'component', 'oid', 'ascet_process_epoch', 'database_session')}
    value.update({'snapshot': 's_' + uuid.uuid4().hex, 'session': session, 'source': SOURCE,
        'class_interface': observed, 'scope': {'profile': SOURCE, 'root': 'Main', 'include_layout': True},
        'dirty_editors': [raw['dirty_before'], raw.get('dirty_after')],
        'counts': dict(Counter(row['kind'] for owner in observed['owners'] for graph in owner['scopes'].values() for row in graph['entries'])),
        'unresolved_bindings': 'effective configuration and complete external type content not collected',
        'read_strategy': 'bounded native Class all-owner observation; ' + raw.get('public_graph_strategy', 'public_oracle'),
        'sampling': 'non_atomic; complete recorded owner scopes and persisted configuration storage, strict all-owner inverse',
        'write_resource_error': raw.get('write_resource_error'),
        'observed_at_utc': time.strftime('%Y-%m-%dT%H:%M:%SZ', time.gmtime())})
    if 'read_phases_ms' in raw:
        value['read_phases_ms'] = raw['read_phases_ms']
    roster = [{'component': row['component'], 'oid': row['oid'], 'scopes': sorted(row['scopes'])} for row in observed['owners']]
    lines = [service.dump({'owners': roster, 'methods': observed['observation']['signature']['methods'],
        'configuration_storage_sha256': fingerprint(observed['observation']['configurations']),
        'write_resource_error': raw.get('write_resource_error'),
        'not_collected': ['effective instance values', 'external type content', 'runtime scheduling']})]
    for owner in observed['owners']:
        for name, graph in sorted(owner['scopes'].items()):
            lines.extend(service.dump({'ref': owner['oid'] + '/' + name + '/' + row['ref'],
                **{k: v for k, v in row.items() if k != 'ref'}}) for row in graph['entries'])
    value['logic'] = '\n'.join(lines)
    if change_id:
        value['edit_origin'] = {'change_id': change_id, 'source': 'actual native Class observation'}
    value['integrity_sha256'] = service.digest(value)
    if change_id:
        write(service.STORE / 'snapshots' / (value['snapshot'] + '.json'), value)
    else:
        service.commit_observation(value)
    return value


def invoke(inputs, output, command, selector=None, wal=None, quarantine=None):
    from bde_class_interface_study import endpoint_process
    identity = load(inputs)
    acquire_read_identity = identity.get('identity_resolution') == 'native_read'
    if 'identity_resolution' in identity and (not acquire_read_identity or command != 'observe' or wal or quarantine or
            identity.get('caller_resolution') != 'native'):
        raise JournalError('INVALID_INPUT', 'Native identity acquisition is limited to a read-only observation')
    binary = build()
    arguments = [str(binary), str(inputs), str(output), command]
    if selector is not None:
        arguments.append(str(selector))
    process_pid = endpoint_process()
    env = {'ASCET_BD_STUDY_ENDPOINT_PID': str(process_pid),
           'ASCET_BD_ENDPOINT_PORT': os.environ.get('ASCET_BD_ENDPOINT_PORT', '32503')}
    if wal:
        env.update({'ASCET_BD_CLASS_JOURNAL': str(wal.resolve()), 'ASCET_BD_CLASS_PENDING': str(quarantine)})
    import subprocess
    try:
        process = subprocess.run(arguments, capture_output=True, timeout=90, env={**os.environ, **env})
    except (OSError, subprocess.TimeoutExpired) as error:
        raise JournalError('OUTCOME_UNKNOWN' if wal else 'READ_TIMEOUT', 'Class bridge did not return; inspect its durable WAL without replaying') from error
    result = load(output) if output.exists() else {}
    expected_epoch = result.get('ascet_process_epoch') if acquire_read_identity else identity['ascet_process_epoch']
    if ((acquire_read_identity and str(result.get('ascet_process_epoch', '')).split('/', 1)[0] != str(process_pid)) or
            (result.get('ascet_process_epoch') != expected_epoch and
            not (process.returncode != 0 and result.get('ascet_process_epoch') is None and result.get('model_mutation_dispatched') is False)) or
            endpoint_process() != process_pid):
        raise JournalError('IDENTITY_UNRESOLVED', 'Class endpoint process changed during the call')
    return result, process.returncode


def inputs(record):
    return {'status': 'ok', **{key: record[key] for key in ('database', 'component', 'oid', 'ascet_process_epoch')},
            'caller_resolution': 'native', 'journal_session': record['session'],
            'expected_database_session': record['database_session']}


def capture(component, session):
    require_sandbox(component)
    from bd_class_impact_tools import capture_raw
    with service.live_lock():
        started = time.perf_counter()
        acquire_read_identity = os.environ.get('ASCET_BD_CLASS_OBSERVATION_MODE', 'bulk_public_v1') == 'bulk_public_v1'
        if acquire_read_identity:
            observe_input = {'status': 'ok', 'component': component.strip('\\'), 'caller_resolution': 'native',
                'identity_resolution': 'native_read'}
        else:
            initial, _, _ = capture_raw(component)
            observe_input = inputs({**initial, 'session': session})
        initial_ms = (time.perf_counter() - started) * 1000
        folder = service.STORE / 'raw' / ('class_observe_' + uuid.uuid4().hex)
        folder.mkdir()
        input_path, output = folder / 'input.json', folder / 'raw.json'
        write(input_path, observe_input)
        raw, code = invoke(input_path, output, 'observe')
        complete_ms = (time.perf_counter() - started) * 1000
        if code or raw.get('status') != 'observed' or raw.get('model_setters_called') != 0 or raw.get('outstanding') is not False:
            raise JournalError('READ_INCOMPLETE', 'Class complete owner observation failed; raw evidence: ' + str(output))
        if acquire_read_identity:
            from bd_class_impact_tools import validate_observation
            try:
                validate_observation({**raw, 'status': 'ok', **{key: raw['before'][key]
                    for key in ('signature', 'discovery')}}, component.strip('\\'))
            except (KeyError, TypeError, ValueError) as error:
                raise JournalError('READ_INCOMPLETE', 'Complete read caller identity validation failed') from error
        raw['read_phases_ms'] = {'identity_and_caller_probe': initial_ms,
            'complete_bridge_and_guards': complete_ms - initial_ms, 'live_capture_total': complete_ms}
        write(folder / 'timing.json', raw['read_phases_ms'])
        return snapshot(raw, 'observed', session)


def root(change_id):
    if not isinstance(change_id, str) or not re.fullmatch(r'edit_[0-9a-f]{64}', change_id):
        raise JournalError('INVALID_INPUT', 'Exact Class change id required')
    return service.STORE / 'class-edits' / change_id


def owns(change_id):
    return isinstance(change_id, str) and re.fullmatch(r'edit_[0-9a-f]{64}', change_id) is not None and (root(change_id) / 'intent.json').is_file()


def entities(record):
    result = {}
    for owner in record['class_interface']['owners']:
        for name, graph in owner['scopes'].items():
            for row in graph['entries']:
                ref = owner['oid'] + '/' + name + '/' + row['ref']
                result[ref] = {'ref': ref, 'key': ref, 'kind': row['kind'],
                    'name': str(next((row[k] for k in ('name', 'model_name', 'literal', 'operator', 'control') if row.get(k) is not None), row['ref'])),
                    'fields': row}
    for method in record['class_interface']['observation']['signature']['methods']:
        ref = record['oid'] + '/method:' + method['alias']
        result[ref] = {'ref': ref, 'key': ref, 'kind': 'method', 'name': method['name'], 'fields': method}
    return result


def diff(change_id):
    folder = root(change_id)
    intent = read_intent(change_id)
    path = folder / 'native.wal'
    if not path.exists():
        receipt = load(folder / 'receipt.json') if (folder / 'receipt.json').exists() else {'status': 'outcome_unknown', 'automatic_retry': False}
        return {**receipt, 'change_id': change_id, 'record_type': SOURCE, 'actual_effects': 'not_observed', 'live_frames': 0}
    bound_events(intent, path)
    patch = actual_diff(path)
    return {**patch, 'change_id': change_id, 'record_type': SOURCE, 'request_id': intent['request_id'],
        'reverts': intent.get('reverts'), 'inverse_policy': 'strict_all_owner_after_baseline',
        'production_class_edit_enabled': False, 'experimental_tools_adapter': True,
        'after_snapshot': load(folder / 'receipt.json').get('after_snapshot') if (folder / 'receipt.json').exists() else None}


def read_intent(change_id):
    intent = load(root(change_id) / 'intent.json')
    try:
        validate_operation(intent['operation'])
        if (intent['domain'] != domain(intent['identity']) or
                change_id != 'edit_' + fingerprint({'domain': intent['domain'], 'request_id': intent['request_id']})):
            raise ValueError('Class intent identity differs')
        require_sandbox(intent['identity']['component'])
    except (KeyError, TypeError, ValueError) as error:
        raise JournalError('JOURNAL_CORRUPT', 'Class intent is not bound to this change') from error
    return intent


def bound_events(intent, path):
    events = read_events(path)
    native = events[0]['payload']
    identity = intent['identity']
    if (native['domain'] != intent['domain'] or native['component'] != identity['component'] or
            native['database_session'] != identity['database_session'] or
            native['selector'] != native_selector(intent['operation']) or
            native['operation'] != native_operation(intent['operation']) or
            native.get('execution_phase') != ('inverse_only' if intent.get('reverts') else 'apply_only')):
        raise JournalError('JOURNAL_CORRUPT', 'Native Class WAL differs from its managed intent')
    if intent.get('reverts'):
        origin = native.get('retained_origin') or {}
        if Path(origin.get('journal', '')).resolve() != (root(intent['reverts']) / 'native.wal').resolve():
            raise JournalError('JOURNAL_CORRUPT', 'Class inverse WAL belongs to another application')
    return events


def terminal_raw(change_id):
    """Reconstruct only complete terminal evidence; never infer missing steps."""
    folder = root(change_id)
    intent = read_intent(change_id)
    checked = audit(folder / 'native.wal')
    expected = 'retained_restored' if intent.get('reverts') else 'retained_applied'
    if checked['status'] != expected:
        raise JournalError('RECOVERY_UNRESOLVED', 'Complete Class terminal WAL required; partial operations stay quarantined')
    events = bound_events(intent, folder / 'native.wal')
    prepared = next(e['payload'] for e in events if e['kind'] == 'prepared_all')
    phase = 'restored' if intent.get('reverts') else 'after'
    terminal = next(e['payload'] for e in events if e['kind'] == 'observed' and e['payload']['phase'] == phase)
    identity = intent['identity']
    raw = {key: identity[key] for key in ('database', 'component', 'oid', 'ascet_process_epoch', 'database_session')}
    raw.update({'status': expected, 'outstanding': not bool(intent.get('reverts')),
        'operation': native_operation(intent['operation']),
        'selector': native_selector(intent['operation']), 'journal': str((folder / 'native.wal').resolve()),
        'before': prepared['observation'], phase: terminal['observation'],
        'dirty_before': 'not_collected_in_WAL', 'dirty_after': 'not_collected_in_WAL'})
    for state, label in ((prepared, 'before'), (terminal, phase)):
        raw.update({f'owner_scopes_{label}_{i}': owner['scopes'] for i, owner in enumerate(state['owners'])})
    # Keep the original bridge output intact, including failures and diagnostics.
    if (folder / 'raw.json').exists():
        observed = load(folder / 'raw.json')
        for key in ('database', 'component', 'oid', 'ascet_process_epoch', 'database_session', 'operation', 'selector', 'before', phase):
            if observed.get(key) != raw[key]:
                raise JournalError('JOURNAL_CORRUPT', 'Bridge output differs from durable Class evidence: ' + key)
        for i, owner in enumerate(terminal['owners']):
            if observed.get(f'owner_scopes_{phase}_{i}') != owner['scopes']:
                raise JournalError('JOURNAL_CORRUPT', 'Bridge output omits terminal Class owner scopes')
        raw.update({key: observed[key] for key in ('dirty_before', 'dirty_after') if key in observed})
    return intent, raw, checked


def confirm_marker(change_id, intent):
    path = pending.pending_path(intent['domain'])
    if not path.exists():
        return
    marker = load(path)
    original_id = intent.get('reverts', change_id)
    expected_token = str((root(original_id) / 'native.wal').resolve())
    expected_command = 'class_inverse' if intent.get('reverts') else 'class_apply'
    if (marker['domain'] != intent['domain'] or marker['native_token'] != expected_token or
            marker['command'] != expected_command):
        raise JournalError('INSTANCE_OUTCOME_UNKNOWN', 'Another request owns the Class quarantine')
    pending.confirmed(path)


def publish_terminal(change_id, intent, raw):
    folder = root(change_id)
    is_inverse = bool(intent.get('reverts'))
    receipt_path = folder / 'receipt.json'
    if receipt_path.exists():
        receipt = load(receipt_path)
        if receipt['status'] != ('verified_class_inverse' if is_inverse else 'verified_class_apply'):
            raise JournalError('RECOVERY_UNRESOLVED', 'Existing Class receipt is not a verified terminal result')
    else:
        if not is_inverse:
            validate_effects(raw, intent['operation'])
        after = snapshot(raw, 'restored' if is_inverse else 'after', intent['domain']['session'], change_id)
        patch = actual_diff(folder / 'native.wal')
        receipt = {'change_id': change_id, 'status': 'verified_class_inverse' if is_inverse else 'verified_class_apply',
            'after_snapshot': after['snapshot'], 'reverts': intent.get('reverts'), 'automatic_retry': False,
            'actual_patch_summary': {'definition_changed': patch['definition_effect']['before'] != patch['definition_effect']['after'],
                'resources': [{'component': row['component'], 'diagram': row['diagram'], 'changes': len(row['differences'])}
                    for row in patch['resource_effects']]}, 'diff': {'change_id': change_id, 'native_requests': 0},
            'inverse_policy': intent['inverse_policy'], 'model_modified': True, 'runtime_scheduling_verified': False,
            'original_bde_presentation': 'experimental_show_clear; visual_lifecycle_not_verified'}
        write(receipt_path, receipt)
    if is_inverse:
        pointer = {'change_id': change_id, 'request_id': intent['request_id'], 'after_snapshot': receipt['after_snapshot']}
        target = root(intent['reverts']) / 'inverse.json'
        if target.exists():
            if load(target) != pointer:
                raise JournalError('JOURNAL_CORRUPT', 'Original Class change has a different inverse pointer')
        else:
            write(target, pointer)
    return receipt


def recovery(args, session, budget):
    if set(args) - {'query', 'change_id', 'reconcile', 'max_bytes'} or type(args.get('reconcile', False)) is not bool:
        raise JournalError('INVALID_INPUT', 'Class recovery accepts change_id and optional reconcile boolean')
    change_id = args['change_id']
    intent = read_intent(change_id)
    path = root(change_id) / 'native.wal'
    checked = audit(path) if path.exists() else {'status': 'outcome_unknown', 'dispatch_count': 'unknown'}
    if path.exists():
        bound_events(intent, path)
    result = {'change_id': change_id, 'native_state': checked['status'], 'reconciled': False,
        'automatic_retry': False, 'model_setters_called': 0, 'instance_quarantined': pending.pending_path(intent['domain']).exists(),
        'source': 'durable Class WAL; no live read', 'partial_recovery': 'not_available'}
    if args.get('reconcile'):
        if intent['domain']['session'] != session:
            raise JournalError('IDENTITY_UNRESOLVED', 'Original Doge session required for Class reconciliation')
        with service.live_lock():
            intent, raw, _ = terminal_raw(change_id)
            # A fresh read prevents a stored terminal result from releasing a
            # barrier after the database, process or any owner has changed.
            folder = service.STORE / 'raw' / ('class_reconcile_' + uuid.uuid4().hex)
            folder.mkdir()
            write(folder / 'input.json', inputs(intent['identity']))
            current, code = invoke(folder / 'input.json', folder / 'raw.json', 'observe')
            if code or current.get('status') != 'observed' or current.get('model_setters_called') != 0:
                raise JournalError('RECOVERY_UNRESOLVED', 'Class reconciliation observation failed; no setters were dispatched')
            phase = 'restored' if intent.get('reverts') else 'after'
            if observation(current, 'observed') != observation(raw, phase):
                raise JournalError('PRECONDITION_CONFLICT', 'Current Class owners differ from the durable terminal baseline')
            receipt = publish_terminal(change_id, intent, raw)
            confirm_marker(change_id, intent)
            result.update(reconciled=True, receipt=receipt, instance_quarantined=False,
                source='durable Class terminal evidence plus fresh complete-owner read; zero setters')
    return service.paged(service.dump(result), {'query': 'recovery', 'change_id': change_id, 'record_type': SOURCE}, session, budget)


def execute(tool, args, session, budget):
    if os.environ.get('ASCET_BD_CLASS_WRITES') != '1':
        raise JournalError('CAPABILITY_UNAVAILABLE', 'Class interface edits require ASCET_BD_CLASS_WRITES=1 and remain isolated and experimental')
    is_inverse = tool == 'bd_revert'
    allowed = {'change_id', 'request_id', 'preview', 'max_bytes'} if is_inverse else {'snapshot', 'request_id', 'operations', 'preview', 'max_bytes'}
    required = {'change_id', 'request_id'} if is_inverse else {'snapshot', 'request_id', 'operations'}
    if (not required <= set(args) or set(args) - allowed or not isinstance(args.get('request_id'), str) or not 1 <= len(args['request_id']) <= 256 or
            type(args.get('preview', False)) is not bool or
            not is_inverse and (not isinstance(args.get('operations'), list) or len(args['operations']) != 1)):
        raise JournalError('INVALID_INPUT', 'Class edit requires one operation, a bounded request id and exact typed arguments')
    if is_inverse:
        original = root(args['change_id'])
        original_intent = read_intent(args['change_id'])
        if original_intent.get('reverts'):
            raise JournalError('CAPABILITY_UNAVAILABLE', 'Redo of a Class inverse is not supported')
        _, applied, _ = terminal_raw(args['change_id'])
        record = original_intent['identity']
        op = original_intent['operation']
        request = {'request_id': args['request_id'], 'domain': domain(record), 'operation': op, 'reverts': args['change_id']}
    else:
        record = service.load_record(args['snapshot'], 's_', 'snapshots')
        if record.get('source') != SOURCE:
            raise JournalError('INCOMPATIBLE_SCOPE', 'Class formal edit requires view=class_interface')
        if record.get('write_resource_error') and not args.get('preview'):
            raise JournalError('CAPABILITY_UNAVAILABLE', 'Class observed resource set cannot be edited: ' + record['write_resource_error'])
        op = args['operations'][0]
        validate_operation(op)
        try:
            if op['op'] == creation.OPERATION:
                creation.creation_plan(record['class_interface'], op)
            else:
                select_formal(record['class_interface']['observation']['signature'], op['selector'])
        except (TypeError, ValueError, KeyError) as error:
            if op['op'] == creation.OPERATION:
                raise JournalError('PRECONDITION_CONFLICT', 'Class creation method/argument/caller preconditions failed: ' + str(error)) from error
            raise JournalError('TARGET_NOT_FOUND', 'Exact formal is absent from the Class snapshot') from error
        request = {'request_id': args['request_id'], 'domain': domain(record), 'operation': op,
            'snapshot': record['snapshot'], 'expected_sha256': fingerprint(record['class_interface'])}
    require_sandbox(record['component'])
    if record['session'] != session:
        raise JournalError('IDENTITY_UNRESOLVED', 'Class writes require the original Doge session')
    if args.get('preview'):
        if is_inverse:
            return inverse_preview(args['change_id'], original_intent, applied, args['request_id'], session, budget)
        return preview(record, op, args['request_id'], session, budget)
    if op['op'] == creation.OPERATION and not creation.NATIVE_WRITE_ACCEPTED:
        pending.check_restoration(domain(record))
        raise JournalError('CAPABILITY_UNAVAILABLE', 'Parameterized Class argument creation is implemented but awaits live all-owner apply/inverse acceptance; preview is available')
    change_id = 'edit_' + fingerprint({'domain': request['domain'], 'request_id': request['request_id']})
    folder = root(change_id)
    native_temporary = folder / 'native.wal' / ('000000.json.' + '0' * 32 + '.tmp')
    if len(str(native_temporary.resolve())) >= 260:
        raise JournalError('CAPABILITY_UNAVAILABLE', 'Native .NET Class journal path is too long; choose a shorter tool store before editing')
    intent = {**request, 'identity': {key: record[key] for key in ('database', 'component', 'oid', 'ascet_process_epoch', 'database_session', 'session')},
              'inverse_policy': 'strict_all_owner_after_baseline'}
    with service.live_lock():
        if folder.exists():
            if load(folder / 'intent.json') != intent:
                raise JournalError('REQUEST_ID_CONFLICT', 'Class request id already has a different immutable intent')
            receipt = load(folder / 'receipt.json') if (folder / 'receipt.json').exists() else diff(change_id)
            if receipt['status'] in ('verified_class_apply', 'verified_class_inverse'):
                _, terminal, _ = terminal_raw(change_id)
                receipt = publish_terminal(change_id, intent, terminal)
                # Reconciliation must re-read current owners before clearing a
                # leftover barrier; replay itself stays completely offline.
            return response(receipt, tool, change_id, session, budget)
        if is_inverse and (original / 'inverse.json').exists():
            raise JournalError('REVERT_UNAVAILABLE', 'Class change already has a confirmed inverse')
        pending.check(request['domain'])
        write(folder / 'intent.json', intent)
        input_value = inputs(record)
        if is_inverse:
            retained = original / 'retained.json'
            if retained.exists():
                if load(retained) != applied:
                    raise JournalError('JOURNAL_CORRUPT', 'Class retained baseline differs from the complete WAL')
            else:
                write(retained, applied)
            input_value['retained_study_path'] = str(retained.resolve())
        else:
            write(folder / 'expected.json', record['class_interface'])
            input_value['expected_observation_path'] = str((folder / 'expected.json').resolve())
            input_value['prepared_pending_token'] = str((folder / 'native.wal').resolve())
        write(folder / 'input.json', input_value)
        write(folder / 'selector.json', native_selector(op))
        quarantine = pending.begin(request['domain'], 'class_inverse' if is_inverse else 'class_apply',
                                   applied['journal'] if is_inverse else str((folder / 'native.wal').resolve()))
        command = native_operation(op)
        raw, code = invoke(folder / 'input.json', folder / 'raw.json', 'inverse_retained' if is_inverse else 'retain_' + command,
                           folder / 'selector.json', folder / 'native.wal', quarantine)
        check = audit(folder / 'native.wal') if (folder / 'native.wal').exists() else None
        expected = 'retained_restored' if is_inverse else 'retained_applied'
        if code or raw.get('status') != expected or check is None or check['status'] != expected:
            known_refusal = raw.get('model_mutation_dispatched') is False and (check is None or check['dispatch_count'] == 0)
            receipt = {'change_id': change_id, 'status': 'rejected_before_dispatch' if known_refusal else 'outcome_unknown',
                'model_modified': False if known_refusal else 'unknown', 'automatic_retry': False,
                'native_error': raw.get('error'), 'inverse_policy': intent['inverse_policy'], 'reverts': request.get('reverts')}
            write(folder / 'receipt.json', receipt)
            if known_refusal and (is_inverse or raw.get('outstanding') is False):
                confirm_marker(change_id, intent)
            return response(receipt, tool, change_id, session, budget)
        if is_inverse:
            if raw['restored']['configurations'] != applied['before']['configurations'] or raw.get('outstanding') is not False:
                raise JournalError('VERIFICATION_FAILED', 'Class inverse left different storage or outstanding recovery')
        else:
            try:
                validate_effects(raw, op)
            except (KeyError, TypeError, ValueError) as error:
                raise JournalError('VERIFICATION_FAILED', 'Class actual effects do not satisfy the explicit policies; retained material and WAL remain: ' + change_id) from error
        terminal_raw(change_id)
        try:
            receipt = publish_terminal(change_id, intent, raw)
        except (OSError, KeyError, TypeError, ValueError) as error:
            raise JournalError('OUTCOME_UNKNOWN', 'Class native terminal WAL retained; receipt publication failed. Inspect recovery for ' + change_id) from error
        confirm_marker(change_id, intent)
        return response(receipt, tool, change_id, session, budget)


def preview(record, operation, request_id, session, budget):
    from bd_class_preview import deletion_plan, recovery_checks
    is_creation = operation['op'] == creation.OPERATION
    plan = creation.creation_plan if is_creation else deletion_plan
    try:
        plan(record['class_interface'], operation)
    except (KeyError, TypeError, ValueError) as error:
        raise JournalError('CAPABILITY_UNAVAILABLE', 'Class preview coverage is incomplete: ' + str(error)) from error
    with service.live_lock():
        folder = service.STORE / 'raw' / ('class_preview_' + uuid.uuid4().hex)
        folder.mkdir(parents=True)
        write(folder / 'expected.json', record['class_interface'])
        input_value = inputs(record)
        input_value['expected_observation_path'] = str((folder / 'expected.json').resolve())
        input_value['recovery_probe_selector'] = native_selector(operation)
        if is_creation:
            input_value['creation_probe_selector'] = native_selector(operation)
        write(folder / 'input.json', input_value)
        raw, code = invoke(folder / 'input.json', folder / 'raw.json', 'observe')
        if (code or raw.get('status') != 'observed' or raw.get('model_setters_called') != 0 or
                raw.get('model_mutation_dispatched') is not False or raw.get('outstanding') is not False or
                raw.get('dirty_before') != 0 or raw.get('dirty_after') != 0 or
                is_creation and raw.get('native_creation_preflight') != 'validated'):
            raise JournalError('PRECONDITION_CONFLICT', 'Class read-only preflight failed; no setter was dispatched. Evidence: ' + str(folder / 'raw.json'))
        current = observation(raw, 'observed')
        if (current != record['class_interface'] or raw.get('database_session') != record['database_session'] or
                raw.get('ascet_process_epoch') != record['ascet_process_epoch']):
            raise JournalError('PRECONDITION_CONFLICT', 'Class complete owner observation or native identity differs from the snapshot')
        try:
            value = plan(current, operation)
        except (KeyError, TypeError, ValueError) as error:
            raise JournalError('CAPABILITY_UNAVAILABLE', 'Class preview coverage is incomplete: ' + str(error)) from error
        holds = pending.restoration_holds(record['database'])
        try:
            native = recovery_checks(current['owners'], raw.get('native_recovery_probe'), inverse=False)
        except (KeyError, TypeError, ValueError) as error:
            raise JournalError('READ_INCOMPLETE', 'Class native recovery probe is incomplete; no setter dispatched') from error
        reasons = list(native['refusal_reasons'])
        if raw.get('write_resource_error'):
            reasons.append({'code': 'UNSUPPORTED_REFERENCES', 'detail': raw['write_resource_error']})
        if holds:
            reasons.append({'code': 'DATABASE_RESTORATION_REQUIRED', 'records': [row['record'] for row in holds]})
        if is_creation and not creation.NATIVE_WRITE_ACCEPTED:
            reasons.append({'code': 'NATIVE_CREATION_NOT_ACCEPTED', 'detail': 'Parameterized all-owner apply/inverse and fault gates remain unverified'})
        value.update(status='class_creation_preview' if is_creation else 'class_deletion_preview', request_id=request_id, snapshot=record['snapshot'],
            observed_preconditions='same complete collected owner baseline; non_atomic',
            write_resource_error=raw.get('write_resource_error'),
            write_eligibility='refused' if reasons else 'prepare_required',
            refusal_reasons=reasons, native_recovery=native,
            restoration_records=[row['record'] for row in holds],
            model_setters_called=0, recovery_record_created=False, edit_request_reserved=False,
            inverse_policy='strict_all_owner_after_baseline', raw_evidence=str(folder / 'raw.json'))
    return service.paged(service.dump(value), {'tool': 'bd_edit', 'preview': True,
        'capability': SOURCE, 'status': value['status']}, session, budget)


def inverse_preview(change_id, intent, applied, request_id, session, budget):
    from bd_class_preview import inverse_plan, recovery_checks
    from bd_class_inverse_analysis import analyze_inverse
    from bde_class_interface_study import endpoint_process
    value = inverse_plan(actual_diff(root(change_id) / 'native.wal'))
    value.update(status='class_inverse_preview', change_id=change_id, request_id=request_id,
        inverse_policy='strict_all_owner_after_baseline', model_setters_called=0,
        recovery_record_created=False, edit_request_reserved=False,
        observed_preconditions='not_checked', native_recovery='not_checked', patch_analysis='not_checked')
    record = intent['identity']
    with service.live_lock():
        reasons = []
        holds = pending.restoration_holds(record['database'])
        if holds:
            reasons.append({'code': 'DATABASE_RESTORATION_REQUIRED', 'records': [row['record'] for row in holds]})
        if (root(change_id) / 'inverse.json').exists():
            load(root(change_id) / 'inverse.json')
            reasons.append({'code': 'REVERT_UNAVAILABLE', 'detail': 'Original change already has a confirmed inverse'})
        if not reasons:
            try:
                process_pid = endpoint_process()
            except (RuntimeError, OSError) as error:
                reasons.append({'code': 'NATIVE_ENDPOINT_UNAVAILABLE', 'detail': str(error)})
            else:
                if str(process_pid) != record['ascet_process_epoch'].split('/', 1)[0]:
                    reasons.append({'code': 'IDENTITY_UNRESOLVED', 'detail': 'Retained native process expired; no reconnect or original-object reconstruction'})
        if not reasons:
            folder = service.STORE / 'raw' / ('class_inverse_preview_' + uuid.uuid4().hex)
            folder.mkdir(parents=True)
            expected = observation(applied, 'after')
            events = read_events(root(change_id) / 'native.wal')
            before = next(row['payload'] for row in events if row['kind'] == 'prepared_all')
            write(folder / 'expected.json', expected)
            input_value = inputs(record)
            # Preview must collect the changed state before analyzing it. The
            # actual inverse keeps its separate exact native baseline guard.
            input_value['recovery_probe_selector'] = native_selector(intent['operation'])
            source_planning = os.environ.get('ASCET_BD_CLASS_SOURCE_PLANNING') == '1'
            if source_planning:
                input_value['native_class_source_plan_oracle'] = 'plan'
            write(folder / 'input.json', input_value)
            raw, code = invoke(folder / 'input.json', folder / 'raw.json', 'observe')
            value['raw_evidence'] = str(folder / 'raw.json')
            if (code or raw.get('status') != 'observed' or raw.get('model_setters_called') != 0 or
                    raw.get('model_mutation_dispatched') is not False or raw.get('outstanding') is not False or
                    raw.get('dirty_before') != 0 or raw.get('dirty_after') != 0):
                raise JournalError('PRECONDITION_CONFLICT', 'Class inverse preview complete-owner observation failed; no setter dispatched. Evidence: ' + str(folder / 'raw.json'))
            current = observation(raw, 'observed')
            if source_planning:
                value['native_source_patch_analysis'] = validate_source_plans(raw, current, before=before, applied=expected)
            if (raw.get('database_session') != record['database_session'] or
                    raw.get('ascet_process_epoch') != record['ascet_process_epoch']):
                raise JournalError('PRECONDITION_CONFLICT', 'Class inverse preview database or native generation changed')
            try:
                analysis = analyze_inverse(before, expected, current)
            except (KeyError, TypeError, ValueError) as error:
                raise JournalError('READ_INCOMPLETE', 'Class inverse collected graph analysis is incomplete; no setter dispatched') from error
            try:
                native = recovery_checks(current['owners'], raw.get('native_recovery_probe'), inverse=True)
            except (KeyError, TypeError, ValueError) as error:
                raise JournalError('READ_INCOMPLETE', 'Class native inverse probe is incomplete; no setter dispatched') from error
            value.update(native_recovery=native, patch_analysis=analysis,
                observed_preconditions='same complete collected actual after; non_atomic' if analysis['original_after_matches']
                    else 'changed collected observation; analyzed only; non_atomic')
            reasons.extend(native['refusal_reasons'])
            if not analysis['original_after_matches']:
                reasons.append({'code': 'STRICT_INVERSE_BASELINE_REQUIRED',
                    'detail': 'Native whole-owner restore still requires exact actual after; analysis does not authorize a merged inverse'})
            if raw.get('write_resource_error'):
                reasons.append({'code': 'UNSUPPORTED_REFERENCES', 'detail': raw['write_resource_error']})
        value.update(write_eligibility='refused' if reasons else 'execute_recheck_required', refusal_reasons=reasons,
            restoration_records=[row['record'] for row in holds],
            not_checked=['effective instance values', 'external type content', 'retained detached object field contents',
                'future GUI changes', 'runtime scheduling'])
    return service.paged(service.dump(value), {'tool': 'bd_revert', 'preview': True, 'change_id': change_id,
        'capability': SOURCE, 'status': value['status']}, session, budget)


def validate_source_plans(raw, current, *, before=None, applied=None):
    if (type(raw) is not dict or type(current) is not dict or type(current.get('owners')) is not list
            or not current['owners'] or (before is None) != (applied is None)):
        raise JournalError('READ_INCOMPLETE', 'Complete source planning observations required')
    plans = raw.get('native_class_source_plans')
    expected = {}
    for owner in current['owners']:
        if (type(owner) is not dict or type(owner.get('oid')) is not str or not owner['oid']
                or owner['oid'] in expected or type(owner.get('component')) is not str
                or type(owner.get('scopes')) is not dict or type(owner['scopes'].get('Main')) is not dict
                or type(owner['scopes']['Main'].get('generation')) is not int):
            raise JournalError('READ_INCOMPLETE', 'Unique exact native source planning owner roster required')
        expected[owner['oid']] = owner
    if type(plans) is not list or len(plans) != len(expected):
        raise JournalError('READ_INCOMPLETE', 'Native source planning owner roster is incomplete')
    seen = set()
    verified_plans = []
    for row in plans:
        if (type(row) is not dict or type(row.get('oid')) is not str
                or row['oid'] not in expected or row['oid'] in seen):
            raise JournalError('READ_INCOMPLETE', 'Duplicate or foreign native source planning owner')
        seen.add(row['oid'])
        owner = expected[row['oid']]
        result = row.get('result')
        if (row.get('component') != owner['component'] or type(result) is not dict
                or result.get('profile') != 'class_persisted_source_inverse_plan_v1'
                or result.get('mode') != 'plan' or result.get('oid') != owner['oid']
                or type(result.get('component')) is not str
                or result['component'].strip('\\') != owner['component'].strip('\\')
                or type(result.get('generation')) is not int
                or result['generation'] != owner['scopes']['Main']['generation']
                or type(result.get('model_setters_called')) is not int or result['model_setters_called'] != 0
                or any(result.get(key) is not False for key in
                       ('store_called', 'write_authorized', 'native_merge_executor_available'))
                or type(result.get('schema')) is not list or not result['schema']
                or type(result.get('source_classes')) is not dict or not result['source_classes']):
            raise JournalError('READ_INCOMPLETE', 'Native source planning result is incomplete or misbound')
        plan = result.get('plan')
        if (type(plan) is not dict or type(plan.get('compatible')) is not bool
                or plan.get('inputs_unchanged') is not True
                or any(type(plan.get(key)) is not list for key in
                       ('conflicts', 'changed_paths', 'preserved_paths', 'block_order_plans'))
                or plan['compatible'] != (not plan['conflicts'])
                or any(type(plan.get(key)) is not bool for key in
                       ('merged_equals_original', 'merged_equals_current'))
                or any(type(path) is not str for path in plan['changed_paths'] + plan['preserved_paths'])):
            raise JournalError('READ_INCOMPLETE', 'Native source inverse candidate is incomplete')
        try:
            complete_oracle = inspect_candidate(result, owner['oid'])
            dependencies = inspect_dependencies(result, owner['oid'], owner, before, applied, current) if before is not None else 'not_checked'
        except (ValueError, KeyError, TypeError, RecursionError) as error:
            raise JournalError('READ_INCOMPLETE', 'Complete native source candidate verification failed: ' + str(error)) from error
        verified_plans.append({**row, 'result': {**{key: item for key, item in result.items() if key != 'source_graphs'},
            'complete_source_oracle': complete_oracle,
            'candidate_dependencies': dependencies,
            'source_graph_sha256': {role: service.digest(graph) for role, graph in result['source_graphs'].items()}}})
    return {'profile': 'class_persisted_source_inverse_plan_v1', 'owners': verified_plans,
            'all_sources_compatible': all(row['result']['plan']['compatible'] for row in plans),
            'all_candidate_dependencies_valid': before is not None and all(
                row['result']['candidate_dependencies']['compatible'] for row in verified_plans),
            'write_authorized': False, 'native_merge_executor_available': False,
            'not_verified': ['signature merging and signal direction/type compatibility', 'native merged source publication',
                             'journaled partial failure recovery', 'retained identity after merged restore']}


def response(receipt, tool, change_id, session, budget):
    value = service.paged(service.dump(receipt), {'tool': tool, 'change_id': change_id, 'capability': SOURCE,
        'status': receipt['status']}, session, budget)
    value['is_error'] = receipt['status'] not in ('verified_class_apply', 'verified_class_inverse')
    return value
