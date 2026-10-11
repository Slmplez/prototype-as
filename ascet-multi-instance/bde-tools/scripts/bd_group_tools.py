"""Six-tool integration for explicit independent-resource groups in the sandbox."""
from contextlib import contextmanager
import json
import os

import bd_service as service
from bd_edit_journal import JournalError, fingerprint
from bd_group_journal import GroupJournal, validate_group
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_structural_tools import plan, publish_after
from bd_structure_scope import diagram_of


def journal():
    return GroupJournal(service.STORE / 'groups', StructureJournal(service.STORE / 'edits'))


@contextmanager
def adapters(request):
    adapter = NativeStructureAdapter(request['component'], request['diagram'])
    try:
        yield adapter
    finally:
        adapter.close()


def request_for(args, session):
    if args.get('mode') == 'construction_sequence':
        from bd_construction_sequence import request_for as construction_request
        return construction_request(args, session)
    steps = []
    group = 'flow_' + fingerprint({'session': session, 'request_id': args['request_id']})
    for index, step in enumerate(args['steps']):
        record = service.load_record(step['snapshot'], 's_', 'snapshots')
        if 'structure' not in record:
            service.fail('INVALID_INPUT', 'Group edits require structure snapshots')
        action, arguments, before = plan(record, step['operations'][0])
        domain = {'session': record['session'], 'database': record['database'], 'oid': record['oid'],
                  'process_epoch': record['ascet_process_epoch']}
        patch = {'domain': domain, 'component': record['component'], 'diagram': diagram_of(record),
            'request_id': 'group-step-' + fingerprint({'group': group, 'index': index}),
            'operation': action, 'arguments': arguments, 'expect': fingerprint(before)}
        item = {'snapshot': step['snapshot'], 'request': patch}
        if args.get('mode') == 'connection_sequence':
            item['baseline'] = record['structure']
        steps.append(item)
    request = {'session': session, 'request_id': args['request_id'], 'steps': steps}
    if 'mode' in args:
        request['mode'] = args['mode']
    validate_group(request)
    return request


def publish(log, receipt):
    result = {**receipt, 'steps': []}
    for step in receipt['steps']:
        local = step['receipt']
        try:
            source = log.local.read(local['change_id'])[0]['payload']
            if 'reverts' in source:
                source = log.local.read(source['reverts'])[0]['payload']
            local = publish_after(log.local, local, source['domain'], source['component'])
        except Exception as error:
            local = {**local, 'after_snapshot': None, 'snapshot_publication_error': str(error), 'automatic_retry': False}
        result['steps'].append({**step, 'receipt': local})
    return result


def execute(tool, args, session, budget):
    if os.environ.get('ASCET_BD_STRUCTURAL_WRITES') != '1':
        service.fail('CAPABILITY_UNAVAILABLE', 'Resource groups require structural sandbox writes')
    log = journal()
    from bd_sandbox_edit import binding
    def bind(request, snapshot, component):
        return binding(request, component, snapshot)
    try:
        if tool == 'bd_edit':
            request = request_for(args, session)
            if args.get('preview'):
                with service.live_lock():
                    log.preflight(request, adapters)
                receipt = {'status': 'preview', 'setter_called': False, 'atomic': False,
                    'all_resources_checked': True, 'recovery_record_created': False, 'execution_revalidates': True}
            else:
                receipt = publish(log, log.execute(request, adapters, service.live_lock, bind))
        elif args.get('preview'):
            source = log.read(args['change_id'])[0]['payload']
            if source['session'] != session:
                service.fail('IDENTITY_UNRESOLVED', 'Original group session required')
            with service.live_lock():
                steps = log.preflight_revert(args['change_id'], adapters)
            receipt = {'status': 'preview', 'setter_called': False, 'atomic': False,
                'all_resources_checked': True, 'resource_changes': [row[1] for row in steps],
                'recovery_record_created': False, 'execution_revalidates': True}
        else:
            receipt = publish(log, log.revert(args['change_id'], args['request_id'], session, adapters, service.live_lock, bind))
        result = service.paged(service.dump(receipt), {'tool': tool, 'status': receipt['status'],
            'change_id': receipt.get('change_id'), 'capability': 'experimental_resource_group'}, session, budget)
        result['is_error'] = receipt['status'] not in ('preview', 'completed', 'reverted')
        return result
    except JournalError as error:
        service.fail(error.code, str(error))


def diff(args, session, budget):
    log = journal()
    try:
        data = log.diff(args['change_id'])
        if 'presentation' in args:
            if log.read(args['change_id'])[0]['payload'].get('mode') in ('connection_sequence', 'construction_sequence'):
                from bd_connection_presentation import present as present_connections
                data = present_connections(log, args, session, adapters)
                result = service.paged(service.dump(data), {'change_id': args['change_id'], 'record_type': 'resource_group'}, session, budget)
                result['is_error'] = not data['resources'] or any(row['result']['is_error'] for row in data['resources'])
                return result
            # Each pane checks its recorded after; display is not atomic.
            resources = []
            for row in data['resource_differences']:
                if row['status'] not in ('applied_observed', 'postcondition_mismatch', 'verified_local'):
                    continue
                try:
                    from bd_native_presentation import present
                    result = present({'change_id': row['change_id'], 'presentation': args['presentation']}, session, budget)
                    header, body = result['content'].split('\n\n', 1)
                    page = json.loads(header)['page']
                    while page['has_more']:
                        remaining = service.resume(page['next_cursor'], session)
                        header, chunk = remaining['content'].split('\n\n', 1)
                        body += chunk
                        page = json.loads(header)['page']
                    result = {'is_error': result['is_error'], **json.loads(body)}
                    resources.append({'index': row['index'], 'change_id': row['change_id'], 'result': result})
                except service.ToolError as error:
                    resources.append({'index': row['index'], 'change_id': row['change_id'], 'result': {
                        'is_error': True, 'code': error.code, 'message': str(error), **error.details}})
            data = {'change_id': args['change_id'], 'presentation': args['presentation'], 'atomic': False,
                'resources': resources, 'visual_verification': 'not_verified', 'model_edit_replayed': False}
        result = service.paged(service.dump(data), {'change_id': args['change_id'], 'record_type': 'resource_group',
            'source': 'resource journals; presentation invokes native panes only when requested'}, session, budget)
        if 'presentation' in args:
            result['is_error'] = not data['resources'] or any(row['result']['is_error'] for row in data['resources'])
        return result
    except JournalError as error:
        service.fail(error.code, str(error))
