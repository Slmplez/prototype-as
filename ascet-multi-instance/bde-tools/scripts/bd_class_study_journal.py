"""Read and audit isolated native Class write-ahead journals without ASCET calls."""
import hashlib
import json
from pathlib import Path

from bd_edit_journal import JournalError, fingerprint


def read_events(root):
    events = []
    for source in sorted(Path(root).glob('*.json')):
        try:
            row = json.loads(source.read_text(encoding='utf-8'))
            if set(row) != {'sequence', 'kind', 'utc', 'previous', 'payload_json', 'checksum'}:
                raise ValueError('Unexpected envelope')
            if (type(row['sequence']) is not int or row['sequence'] != len(events) or
                    source.name != f'{len(events):06d}.json' or
                    row['previous'] != (events[-1]['checksum'] if events else None)):
                raise ValueError('Broken sequence')
            if any(not isinstance(row[key], str) for key in ('kind', 'utc', 'payload_json', 'checksum')):
                raise ValueError('Invalid event fields')
            body = '\n'.join((str(row['sequence']), row['kind'], row['utc'], row['previous'] or '', row['payload_json']))
            if hashlib.sha256(body.encode('utf-8')).hexdigest() != row['checksum']:
                raise ValueError('Broken checksum')
            row['payload'] = json.loads(row['payload_json'])
            if not isinstance(row['payload'], dict):
                raise ValueError('Invalid payload')
        except (OSError, KeyError, ValueError, TypeError) as error:
            raise JournalError('JOURNAL_CORRUPT', 'Invalid Class write-ahead event: ' + str(source)) from error
        events.append(row)
    if not events or events[0]['kind'] != 'intent':
        raise JournalError('JOURNAL_CORRUPT', 'Class journal has no intent')
    return events


def observation_hashes(payload):
    hashes = {'signature': fingerprint(payload['observation']['signature']),
            'callers': fingerprint(payload['observation']['discovery']),
            'owner_scopes': {row['oid']: {scope: fingerprint(value) for scope, value in row['scopes'].items()}
                             for row in payload['owners']}}
    for key in ('body', 'public_signature'):
        if key in payload['observation']:
            hashes[key] = fingerprint(payload['observation'][key])
    if 'configurations' in payload['observation']:
        from bd_class_configuration import validate_graph
        values = payload['observation']['configurations']
        if set(values) != {row['oid'] for row in payload['owners']}:
            raise ValueError('Class observation omits complete owner configuration storage')
        hashes['configuration_storage'] = {oid: validate_graph(graph, oid)['sha256'] for oid, graph in values.items()}
    return hashes


def dispatch_plan(intent, owners):
    operation = intent['operation']
    if operation not in ('closed_delete_argument', 'closed_delete_return', 'closed_create_argument'):
        raise JournalError('JOURNAL_CORRUPT', 'Unsupported Class journal operation')
    definition = next(row for row in owners if row['oid'] == intent['domain']['oid'])
    rows = []
    def add(step, phase, owner, command):
        rows.append({'step': step, 'phase': phase, 'component': owner['component'], 'oid': owner['oid'], 'command': command,
                     **({'database_session': intent['database_session']} if 'database_session' in intent else {})})
    if operation != 'closed_create_argument':
        for index, owner in enumerate(owners):
            add(f'prune_{index}', 'apply', owner, 'prune_argument' if operation.endswith('argument') else 'prune_return')
    add('signature_apply', 'apply', definition, operation[7:])
    for index, owner in enumerate(owners):
        add(f'store_{index}', 'apply', owner, 'apply')
    add('signature_restore', 'inverse', definition, 'restore')
    for index in range(len(owners) - 1, -1, -1):
        add(f'restore_{index}', 'inverse', owners[index], 'restore')
    phase = intent.get('execution_phase', 'apply_and_inverse')
    if phase not in ('apply_and_inverse', 'apply_only', 'inverse_only'):
        raise JournalError('JOURNAL_CORRUPT', 'Unsupported Class execution phase')
    return [row for row in rows if phase == 'apply_and_inverse' or row['phase'] == ('apply' if phase == 'apply_only' else 'inverse')]


def _audit(root):
    events = read_events(root)
    prepared = None
    preflight = None
    active = None
    dispatched = []
    completed = []
    observations = {}
    inverse = None
    finished = None
    plan = []
    intent = events[0]['payload']
    phase = intent.get('execution_phase', 'apply_and_inverse')
    origin = intent.get('retained_origin')
    source_before = source_after = None
    if origin is not None:
        if phase != 'inverse_only':
            raise JournalError('JOURNAL_CORRUPT', 'Retained source is only valid for an inverse')
        source_events = read_events(origin['journal'])
        source_intent = source_events[0]['payload']
        if source_intent.get('execution_phase') != 'apply_only' or source_intent.get('retained_origin') is not None:
            raise JournalError('JOURNAL_CORRUPT', 'Inverse source is not an independent retained application')
        source_receipt = audit(origin['journal'])
        if (source_receipt['status'] != 'retained_applied' or source_events[-1]['checksum'] != origin['terminal_checksum'] or
                any(intent[key] != source_intent[key] for key in ('domain', 'component', 'operation', 'selector', 'database_session'))):
            raise JournalError('JOURNAL_CORRUPT', 'Inverse source binding differs from retained application')
        source_before = next(e['payload'] for e in source_events if e['kind'] == 'prepared_all')
        source_after = next(e['payload'] for e in source_events if e['kind'] == 'observed')
    for event in events[1:]:
        kind, body = event['kind'], event['payload']
        if finished is not None:
            raise JournalError('JOURNAL_CORRUPT', 'Class event after terminal record')
        if kind == 'prepared_all':
            if prepared is not None or dispatched:
                raise JournalError('JOURNAL_CORRUPT', 'Invalid Class preparation order')
            owners = body['owners']
            identity = events[0]['payload']
            discovery = body['observation']['discovery']
            expected = {row['oid']: row['component'] for row in discovery['callers']}
            expected[identity['domain']['oid']] = identity['component']
            if (len(owners) != len(expected) or {row['oid']: row['component'] for row in owners} != expected or
                    any(row.get('native_recovery') != 'prepared' or not row.get('scopes') for row in owners) or
                    body['observation']['signature']['oid'] != identity['domain']['oid']):
                raise JournalError('JOURNAL_CORRUPT', 'Class preparation omits exact owner recovery')
            for caller in discovery['callers']:
                owner = next(row for row in owners if row['oid'] == caller['oid'])
                if any(scope['diagram'] not in owner['scopes'] for scope in caller['scopes']):
                    raise JournalError('JOURNAL_CORRUPT', 'Class preparation omits caller scope')
            if any(value.get('diagram') != name for row in owners for name, value in row['scopes'].items()):
                raise JournalError('JOURNAL_CORRUPT', 'Class scope identity mismatch')
            prepared = body
            plan = dispatch_plan(events[0]['payload'], owners)
            if source_after is not None and observation_hashes(body) != observation_hashes(source_after):
                raise JournalError('JOURNAL_CORRUPT', 'Inverse preparation differs from retained actual after')
        elif kind == 'preflight_observed':
            if prepared is None or preflight is not None or dispatched:
                raise JournalError('JOURNAL_CORRUPT', 'Invalid Class preflight order')
            if observation_hashes(prepared) != observation_hashes(body):
                raise JournalError('JOURNAL_CORRUPT', 'Class preflight differs from preparation')
            preflight = body
        elif kind == 'step_started':
            if preflight is None or active is not None or body['step'] in {row['step'] for row in dispatched}:
                raise JournalError('JOURNAL_CORRUPT', 'Class dispatch lacks preparation or overlaps')
            owner = next((row for row in prepared['owners'] if row['oid'] == body['oid']), None)
            if owner is None or owner['component'] != body['component']:
                raise JournalError('JOURNAL_CORRUPT', 'Class dispatch owner was not prepared')
            if body['phase'] not in ('apply', 'inverse', 'cleanup'):
                raise JournalError('JOURNAL_CORRUPT', 'Unknown Class dispatch phase')
            if body['phase'] != 'cleanup' and (len(dispatched) >= len(plan) or body != plan[len(dispatched)]):
                raise JournalError('JOURNAL_CORRUPT', 'Class dispatch differs from exact prepared plan')
            if body['phase'] == 'inverse' and inverse is None:
                raise JournalError('JOURNAL_CORRUPT', 'Class inverse lacks complete preflight')
            active = body
            dispatched.append(body)
        elif kind == 'step_completed':
            if active is None or body['step'] != active['step'] or not isinstance(body.get('native_result'), str):
                raise JournalError('JOURNAL_CORRUPT', 'Class completion has no matching started event')
            expected_result = {'prune_argument': 'pruned', 'prune_return': 'pruned', 'delete_argument': 'added',
                               'delete_return': 'added', 'create_argument': 'added', 'apply': 'applied', 'restore': 'restored'}[active['command']]
            if body['native_result'] != expected_result:
                raise JournalError('JOURNAL_CORRUPT', 'Class native receipt does not confirm the planned step')
            completed.append({**active, 'native_result': body['native_result']})
            active = None
        elif kind == 'observed':
            if active is not None or body['phase'] in observations or preflight is None:
                raise JournalError('JOURNAL_CORRUPT', 'Invalid Class actual observation order')
            if body['phase'] not in ('after', 'restored'):
                raise JournalError('JOURNAL_CORRUPT', 'Unknown Class observation phase')
            expected_count = sum(row['phase'] == 'apply' for row in plan) if body['phase'] == 'after' else len(plan)
            if len(completed) != expected_count or body['phase'] == 'restored' and inverse is None:
                raise JournalError('JOURNAL_CORRUPT', 'Class observation precedes complete phase dispatch')
            if (len(body['owners']) != len(prepared['owners']) or
                    {row['oid']: (row['component'], sorted(row['scopes'])) for row in body['owners']} !=
                    {row['oid']: (row['component'], sorted(row['scopes'])) for row in prepared['owners']}):
                raise JournalError('JOURNAL_CORRUPT', 'Class actual observation omits owner')
            observations[body['phase']] = body
        elif kind == 'inverse_preflight':
            if active is not None or inverse is not None or 'after' not in observations:
                raise JournalError('JOURNAL_CORRUPT', 'Class inverse preflight order invalid')
            if observation_hashes(observations['after']) != observation_hashes(body):
                raise JournalError('JOURNAL_CORRUPT', 'Class inverse preflight differs from actual after')
            if body.get('native_owner_checks') != ['verified'] * len(prepared['owners']):
                raise JournalError('JOURNAL_CORRUPT', 'Class inverse omits native owner guards')
            inverse = body
        elif kind == 'finished':
            finished = body
        else:
            raise JournalError('JOURNAL_CORRUPT', 'Unknown Class journal event: ' + kind)
    status = 'outcome_unknown' if active or dispatched and not finished else 'interrupted_before_apply'
    if finished:
        if finished.get('status') in ('restored', 'retained_restored'):
            if (active or inverse is None or 'restored' not in observations or finished.get('outstanding') is not False or
                    len(completed) != len(plan) or dispatched != plan):
                raise JournalError('JOURNAL_CORRUPT', 'Class restored receipt lacks evidence')
            target = finished.get('inverse_target') if finished['status'] == 'retained_restored' else prepared
            if finished['status'] == 'retained_restored' and phase != 'inverse_only' or finished['status'] == 'restored' and phase != 'apply_and_inverse':
                raise JournalError('JOURNAL_CORRUPT', 'Class terminal status differs from execution phase')
            if source_before is not None and observation_hashes(target) != observation_hashes(source_before):
                raise JournalError('JOURNAL_CORRUPT', 'Inverse target differs from original retained baseline')
            if not target or observation_hashes(target) != observation_hashes(observations['restored']):
                raise JournalError('JOURNAL_CORRUPT', 'Class collected baseline is not restored')
            status = finished['status']
        elif finished.get('status') == 'retained_applied':
            if (active or inverse is not None or 'after' not in observations or finished.get('outstanding') is not True or
                    events[0]['payload'].get('execution_phase') != 'apply_only' or len(completed) != len(plan) or dispatched != plan):
                raise JournalError('JOURNAL_CORRUPT', 'Class retained application lacks complete evidence')
            status = 'retained_applied'
        elif finished.get('status') == 'rejected_before_dispatch' and not dispatched:
            status = 'rejected_before_dispatch'
        elif finished.get('status') == 'needs_recovery':
            status = 'outcome_unknown' if active else 'needs_recovery'
        else:
            raise JournalError('JOURNAL_CORRUPT', 'Invalid Class terminal status')
    hashes = {key: observation_hashes(value) for key, value in observations.items()}
    if intent.get('journal_version', 1) == 1:
        hashes = {key: {k: v for k, v in value.items() if k not in ('body', 'public_signature')} for key, value in hashes.items()}
    return {'record_type': 'class_interface_study', 'status': status, 'automatic_retry': False,
            'database_session': events[0]['payload'].get('database_session'),
            **({'retained_source_binding_verified': source_before is not None} if phase == 'inverse_only' or intent.get('journal_version') == 2 else {}),
            'prepared_owners': len(prepared['owners']) if prepared else 0,
            'prepared_scopes': sum(len(row['scopes']) for row in prepared['owners']) if prepared else 0,
            'dispatch_count': len(dispatched), 'completed_count': len(completed), 'unknown_step': active,
            'steps': completed, 'observations': hashes,
            'fingerprint_coverage': 'collected signature/caller bindings and owner scope fields; not complete types/effective configurations',
            'production_class_edit_enabled': False}


def audit(root):
    try:
        return _audit(root)
    except (KeyError, ValueError, TypeError, StopIteration) as error:
        raise JournalError('JOURNAL_CORRUPT', 'Incomplete Class journal evidence') from error


def actual_diff(root):
    """Actual multi-owner deltas; no whole-graph live read or native mutation."""
    from bd_structure_journal import differences
    receipt = audit(root)
    events = read_events(root)
    before = next((e['payload'] for e in events if e['kind'] == 'prepared_all'), None)
    after_phase = 'restored' if events[0]['payload'].get('execution_phase') == 'inverse_only' else 'after'
    after = next((e['payload'] for e in events if e['kind'] == 'observed' and e['payload']['phase'] == after_phase), None)
    if before is None or after is None:
        return {**receipt, 'actual_effects': 'not_observed'}
    owners = {row['oid']: row for row in after['owners']}
    resources = []
    for owner in before['owners']:
        observed = owners[owner['oid']]
        if set(owner['scopes']) != set(observed['scopes']):
            raise JournalError('JOURNAL_CORRUPT', 'Class diff scope set changed')
        for scope, value in owner['scopes'].items():
            resources.append({'component': owner['component'], 'oid': owner['oid'], 'diagram': scope,
                              'differences': differences(value, observed['scopes'][scope])})
    configuration_effects = []
    if 'configurations' in before['observation']:
        previous = observation_hashes(before)['configuration_storage']
        current = observation_hashes(after)['configuration_storage']
        configuration_effects = [{'oid': oid, 'before_sha256': sha, 'after_sha256': current[oid],
                                 'unchanged': sha == current[oid]} for oid, sha in sorted(previous.items())]
    return {**receipt, 'definition_effect': {'before': before['observation']['signature'],
                                           'after': after['observation']['signature']}, 'resource_effects': resources,
            **({'configuration_effects': configuration_effects} if 'configurations' in before['observation'] else {}),
            'outside_collected_scope': 'not_observed', 'live_frames': 0}


def verify_study(root, study):
    """Cross-check durable observations/receipts against the independent study file."""
    receipt = audit(root)
    if receipt['status'] != 'restored' or study.get('status') != 'ok' or study.get('outstanding') is not False:
        raise JournalError('JOURNAL_CORRUPT', 'Completed native study and restored journal required')
    events = read_events(root)
    intent = events[0]['payload']
    if (intent['operation'] != study['operation'] or intent['selector'] != study['selector'] or
            intent['component'] != study['component'] or intent['domain']['oid'] != study['oid'] or
            intent['domain']['database'] != study['database'] or
            intent['domain']['process_epoch'] != study['ascet_process_epoch'] or
            intent.get('database_session') != study.get('database_session')):
        raise JournalError('JOURNAL_CORRUPT', 'Native study and journal identity differ')
    prepared = next(e['payload'] for e in events if e['kind'] == 'prepared_all')
    states = {'before': prepared}
    states.update({e['payload']['phase']: e['payload'] for e in events if e['kind'] == 'observed'})
    for phase, durable in states.items():
        if durable['observation'] != study[phase]:
            raise JournalError('JOURNAL_CORRUPT', 'Native study and durable observation differ')
        for index, owner in enumerate(durable['owners']):
            if owner['scopes'] != study[f'owner_scopes_{phase}_{index}']:
                raise JournalError('JOURNAL_CORRUPT', 'Native study and durable owner scopes differ')
    for step in receipt['steps']:
        name = step['step']
        if name == 'signature_apply':
            raw_key = 'apply'
        elif name == 'signature_restore':
            raw_key = 'restore'
        else:
            prefix, index = name.rsplit('_', 1)
            raw_key = {'prune': 'closure_prune_', 'store': 'caller_store_', 'restore': 'caller_restore_'}[prefix] + index
        if study.get(raw_key) != step['native_result']:
            raise JournalError('JOURNAL_CORRUPT', 'Native study and durable dispatch receipt differ')
    return {**receipt, 'raw_observations_and_receipts_match': True}


def verify_restored_observation(root, study, observation):
    """Only known, fully restored studies can release quarantine after a fresh read."""
    receipt = verify_study(root, study)
    events = read_events(root)
    intent = events[0]['payload']
    before = next(e['payload'] for e in events if e['kind'] == 'prepared_all')
    identity = intent['domain']
    if (observation.get('status') != 'observed' or observation.get('model_setters_called') != 0 or
            type(observation.get('model_setters_called')) is not int or observation.get('outstanding') is not False or
            observation.get('dirty_before') != 0 or observation.get('dirty_after') != 0 or
            observation.get('database') != identity['database'] or observation.get('oid') != identity['oid'] or
            observation.get('component') != intent['component'] or
            observation.get('ascet_process_epoch') != identity['process_epoch'] or
            not intent.get('database_session') or observation.get('database_session') != intent['database_session']):
        raise JournalError('PRECONDITION_CONFLICT', 'Fresh Class restoration identity/clean-state mismatch')
    current = observation['before']
    original = before['observation']
    if any(current[key] != original[key] for key in ('signature', 'discovery', 'body', 'public_signature')):
        raise JournalError('PRECONDITION_CONFLICT', 'Fresh Class signature/definition baseline differs')
    if 'configurations' in original and current.get('configurations') != original['configurations']:
        raise JournalError('PRECONDITION_CONFLICT', 'Fresh Class configuration storage baseline differs')
    if (len(current['callers']) != len(original['callers']) or
            any(a['component'] != b['component'] or a['public_tree'] != b['public_tree']
                for a, b in zip(current['callers'], original['callers']))):
        raise JournalError('PRECONDITION_CONFLICT', 'Fresh Class caller public baseline differs')
    for index, owner in enumerate(before['owners']):
        if observation.get(f'owner_scopes_observed_{index}') != owner['scopes']:
            raise JournalError('PRECONDITION_CONFLICT', 'Fresh Class complete owner scope baseline differs')
    return {**receipt, 'independent_current_baseline_verified': True, 'model_setters_called': 0}
