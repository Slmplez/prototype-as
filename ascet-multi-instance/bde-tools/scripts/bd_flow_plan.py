"""Immutable plans for explicit existing-pin BDE segments, with no live reads."""
import re

import bd_service as service
from bd_edit_journal import JournalError, fingerprint
from bd_group_tools import request_for
from bd_structural_tools import plan
from bd_structure_scope import diagram_of


def inspect(args, session):
    if 'steps' in args:
        if set(args) - {'query', 'steps', 'max_bytes'}:
            service.fail('INVALID_INPUT', 'Use construction steps or existing-pin segments')
        from bd_construction_sequence import request_for as construction_request
        try:
            request = construction_request({'request_id': 'validate-plan', 'steps': args['steps']}, session)
        except JournalError as error:
            service.fail(error.code, str(error))
        value = {'session': session, 'mode': 'construction_sequence', 'steps': args['steps'],
                 'resources': [{'component': step['request']['component'], 'oid': step['request']['domain']['oid'],
                                'diagram': step['request']['diagram'], 'snapshot': step['snapshot']} for step in request['steps']],
                 'relation_scope': 'explicit create/connect operations with actual created-pin dependency resolution',
                 'atomic': False, 'complete_signal_path': False,
                 'source': 'immutable structure snapshots; zero live reads',
                 'not_verified': ['inter-segment semantic bindings', 'shared interface creation', 'execution and runtime delivery'],
                 'execution': 'initial scopes and independent creations preflighted; future pin/model/definition selectors validated from actual prior patches before their setter',
                 'recovery': 'whole-group native identity/order and virtual actual-patch checks before reverse per-step restoration'}
        return store(value)
    if set(args) - {'query', 'segments', 'max_bytes'} or not isinstance(args.get('segments'), list) or not 2 <= len(args['segments']) <= 16:
        service.fail('INVALID_INPUT', 'flow_plan requires 2..16 explicit diagram segments')
    steps, resources, inputs = [], [], set()
    for segment in args['segments']:
        if not isinstance(segment, dict) or set(segment) != {'snapshot', 'source', 'target'}:
            service.fail('INVALID_INPUT', 'A segment requires snapshot/source/target')
        record = service.load_record(segment['snapshot'], 's_', 'snapshots')
        if record.get('session') != session or 'structure' not in record:
            service.fail('IDENTITY_UNRESOLVED', 'Plan requires structure observations from the current session')
        operation = {'op': 'connect_data', 'source': segment['source'], 'target': segment['target']}
        _, arguments, _ = plan(record, operation)
        rows = {row['ref']: row for row in record['structure']['entries']}
        source, target = arguments[1:3]
        if rows[source].get('output') is not True or rows[target].get('input') is not True or source == target:
            service.fail('INVALID_INPUT', 'A diagram segment requires distinct output/input pins')
        key = (record['oid'], diagram_of(record), target)
        if key in inputs or any(row['kind'] == 'edge' and row['target'] == target for row in rows.values()):
            service.fail('PRECONDITION_CONFLICT', 'Planned input is occupied or used by another segment')
        inputs.add(key)
        steps.append({'snapshot': segment['snapshot'], 'operations': [operation]})
        resources.append({'component': record['component'], 'oid': record['oid'], 'diagram': diagram_of(record),
                          'snapshot': record['snapshot']})
    try:
        request_for({'request_id': 'validate-plan', 'mode': 'connection_sequence', 'steps': steps}, session)
    except JournalError as error:
        service.fail(error.code, str(error))
    value = {'session': session, 'mode': 'connection_sequence', 'steps': steps, 'resources': resources,
             'relation_scope': 'explicit existing-pin diagram segments', 'atomic': False,
             'source': 'immutable structure snapshots; zero live reads', 'complete_signal_path': False,
             'not_verified': ['inter-segment message/Class/hierarchy bindings', 'execution schedule', 'runtime delivery'],
             'execution': 'all live resources preflighted, actual dependent patches recorded, unknown stops execution',
             'recovery': 'all connection identities and inverse dependencies preflighted, then reverse local restoration'}
    return store(value)


def store(value):
    token = 'plan_' + fingerprint(value)
    value['plan_ref'] = token
    folder = service.STORE / 'flow-plans'
    folder.mkdir(exist_ok=True)
    try:
        service.write_once(folder / (token + '.json'), value)
    except FileExistsError:
        pass
    return value


def load(token, session):
    if not isinstance(token, str) or not re.fullmatch(r'plan_[0-9a-f]{64}', token):
        service.fail('INVALID_REFERENCE', 'Invalid immutable flow plan reference')
    import json
    path = service.STORE / 'flow-plans' / (token + '.json')
    if not path.is_file():
        service.fail('TARGET_NOT_FOUND', 'Flow plan is absent from this store')
    value = json.loads(path.read_text(encoding='utf-8'))
    content = {key: item for key, item in value.items() if key != 'plan_ref'}
    if value.get('plan_ref') != token or 'plan_' + fingerprint(content) != token:
        service.fail('JOURNAL_CORRUPT', 'Flow plan checksum differs')
    if value['session'] != session:
        service.fail('IDENTITY_UNRESOLVED', 'Original flow plan session required')
    return value


def edit(args, session, budget):
    value = load(args['operations'][0]['plan_ref'], session)
    from bd_group_tools import execute
    return execute('bd_edit', {'request_id': args['request_id'], 'mode': value['mode'], 'steps': value['steps'],
                              **({'preview': args['preview']} if 'preview' in args else {})}, session, budget)
