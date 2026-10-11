"""Offline, bounded discovery of durable edits; never opens an ASCET adapter."""
import json
import re

import bd_service as service
from bd_edit_journal import EditJournal, JournalError, fingerprint


def history(args, session, budget):
    if set(args) - {'query', 'snapshot', 'component', 'database', 'max_bytes'}:
        service.fail('INVALID_INPUT', 'Edit history accepts snapshot, component and database filters only')
    for key in ('component', 'database'):
        if key in args and (not isinstance(args[key], str) or not args[key]):
            service.fail('INVALID_INPUT', key + ' must be a nonempty string')
    snapshot = service.load_record(args['snapshot'], 's_', 'snapshots') if args.get('snapshot') else None
    log = EditJournal(service.STORE / 'edits')
    bindings = service.STORE / 'edit-bindings'
    ids = {p.name for p in log.root.glob('edit_*') if p.is_dir()}
    ids.update(p.stem for p in bindings.glob('edit_*.json'))
    rows, diagnostics = [], []
    for change_id in sorted(ids):
        if not re.fullmatch(r'edit_[0-9a-f]{64}', change_id):
            continue
        try:
            events = log.read(change_id)
            if not events or events[0]['kind'] != 'intent':
                raise JournalError('JOURNAL_INCOMPLETE', 'No published edit intent')
            request = events[0]['payload']
            structural = 'operation' in request or ('reverts' in request and 'target' not in request)
            if 'operation' in request:
                from bd_structure_journal import validate_request
                validate_request(request)
            elif structural:
                if set(request) != {'domain', 'request_id', 'reverts'} or not isinstance(request['request_id'], str) or not 1 <= len(request['request_id']) <= 256:
                    raise JournalError('JOURNAL_CORRUPT', 'Malformed structural inverse intent')
                log._path(request['reverts'])
                domain = request['domain']
                if not isinstance(domain, dict) or set(domain) != {'session', 'database', 'oid', 'process_epoch'} or any(not isinstance(v, str) or not v for v in domain.values()):
                    raise JournalError('JOURNAL_CORRUPT', 'Invalid structural inverse identity')
            else:
                log._validate(request)
            domain = request['domain']
            if change_id != 'edit_' + fingerprint({'domain': domain, 'request_id': request['request_id']}):
                raise JournalError('JOURNAL_CORRUPT', 'Intent identity does not match directory')
            context = json.loads((bindings / (change_id + '.json')).read_text(encoding='utf-8'))
            checksum = context.pop('integrity_sha256')
            if service.digest(context) != checksum or context['domain'] != domain:
                raise JournalError('JOURNAL_CORRUPT', 'Binding checksum or domain mismatch')
            component = context['component']
            if not isinstance(component, str) or not isinstance(context['snapshot'], str):
                raise JournalError('JOURNAL_CORRUPT', 'Invalid edit context')
            if snapshot and (domain['database'].casefold(), domain['oid']) != (snapshot['database'].casefold(), snapshot['oid']):
                continue
            if args.get('component') and component.casefold() != args['component'].casefold():
                continue
            if args.get('database') and domain['database'].casefold() != args['database'].casefold():
                continue
            receipt = log.receipt(change_id, events)
            observed = next((e['payload'] for e in reversed(events) if e['kind'] == 'observed'), {})
            differences = observed.get('differences', receipt.get('differences', []))
            row = {'change_id': change_id, 'record_type': 'edit', 'status': receipt['status'],
                'request_id': request['request_id'], 'target': request.get('target'), 'operation': request.get('operation'),
                'component': component, 'snapshot': context['snapshot'], 'domain': domain,
                'started_at_utc': events[0]['utc'], 'last_event_utc': events[-1]['utc'],
                'reverts': request.get('reverts'),
                'changed_fields': sorted({d.get('field', d.get('ref', 'unknown')) for d in differences}),
                'parent_order_changes': len(receipt.get('parent_order_differences', [])),
                'conflict_fields': sorted(receipt.get('conflicts', {})),
                'automatic_retry': False}
            resource_checks = [event for event in events if event['kind'] == 'commit_resource_checked']
            if resource_checks:
                from bd_commit_resources import status as resource_status, summary as resource_summary
                prepared = next((event['payload'].get('commit_resources_prepared') for event in events
                                 if event['kind'] == 'prepared'), None)
                checked = resource_status(resource_checks[-1]['payload'], token=change_id,
                                          component_oid=domain['oid'], checked=True)
                if checked['prepared_receipt'] != prepared:
                    raise JournalError('JOURNAL_CORRUPT', 'Resource history differs from original preparation')
                row['commit_resource_check'] = dict(check_count=len(resource_checks),
                    as_of_utc=resource_checks[-1]['utc'], event_sha256=resource_checks[-1]['checksum'],
                    summary=resource_summary(checked), model_edit_claimed=False,
                    is_fresh_live_observation=False, detail_tool='bd_diff(change_id)')
            rows.append(row)
        except (JournalError, OSError, ValueError, KeyError, TypeError, AttributeError) as error:
            # Filtering cannot be trusted for damaged/missing identities. Report
            # these separately, even with filters, rather than hide lost writes.
            diagnostics.append({'change_id': change_id, 'record_type': 'edit_history_diagnostic',
                'status': 'unreadable', 'code': error.code if isinstance(error, JournalError) else 'JOURNAL_CORRUPT',
                'filter_match': 'unknown', 'automatic_retry': False})
    from bd_group_tools import journal as group_journal
    from bd_group_journal import validate_group
    groups = group_journal()
    for directory in sorted(groups.root.glob('flow_*')):
        try:
            events = groups.read(directory.name)
            intent = events[0]['payload']
            if directory.name != 'flow_' + fingerprint({'session': intent['session'], 'request_id': intent['request_id']}):
                raise JournalError('JOURNAL_CORRUPT', 'Group identity differs from its intent')
            source = groups.read(intent['reverts'])[0]['payload'] if 'reverts' in intent else intent
            validate_group(source)
            requests = [step['request'] for step in source['steps']]
            if snapshot and not any((r['domain']['database'].casefold(), r['domain']['oid']) ==
                                   (snapshot['database'].casefold(), snapshot['oid']) for r in requests):
                continue
            if args.get('component') and not any(r['component'].casefold() == args['component'].casefold() for r in requests):
                continue
            if args.get('database') and requests[0]['domain']['database'].casefold() != args['database'].casefold():
                continue
            receipt = groups.receipt(directory.name, events)
            rows.append({'change_id': directory.name, 'record_type': 'resource_group', 'status': receipt['status'],
                'request_id': intent['request_id'], 'components': [r['component'] for r in requests],
                'resource_changes': [step['receipt']['change_id'] for step in receipt['steps']],
                'unknown_steps': receipt['unknown_steps'], 'atomic': False, 'automatic_retry': False,
                'started_at_utc': events[0]['utc'], 'last_event_utc': events[-1]['utc'], 'reverts': intent.get('reverts')})
        except (JournalError, OSError, ValueError, KeyError, TypeError, IndexError) as error:
            diagnostics.append({'change_id': directory.name, 'record_type': 'edit_history_diagnostic',
                'status': 'unreadable', 'code': error.code if isinstance(error, JournalError) else 'JOURNAL_CORRUPT',
                'filter_match': 'unknown', 'automatic_retry': False})
    from bd_class_tools import read_intent as class_intent, diff as class_diff, SOURCE as CLASS_SOURCE
    from bd_class_study_journal import read_events as class_events
    for directory in sorted((service.STORE / 'class-edits').glob('edit_*')):
        try:
            intent = class_intent(directory.name)
            domain = intent['domain']
            component = intent['identity']['component']
            events = class_events(directory / 'native.wal') if (directory / 'native.wal').exists() else []
            patch = class_diff(directory.name)
            owners = next((e['payload']['owners'] for e in events if e['kind'] == 'prepared_all'), [])
            if snapshot and not any((domain['database'].casefold(), row['oid']) ==
                    (snapshot['database'].casefold(), snapshot['oid']) for row in owners + [intent['identity']]):
                continue
            if args.get('component') and args['component'].casefold() not in {row['component'].casefold() for row in owners + [intent['identity']]}:
                continue
            if args.get('database') and domain['database'].casefold() != args['database'].casefold():
                continue
            rows.append({'change_id': directory.name, 'record_type': CLASS_SOURCE, 'status': patch['status'],
                'request_id': intent['request_id'], 'operation': intent['operation'], 'component': component,
                'components': [row['component'] for row in owners], 'snapshot': intent.get('snapshot'), 'domain': domain,
                'started_at_utc': events[0]['utc'] if events else '', 'last_event_utc': events[-1]['utc'] if events else '',
                'reverts': intent.get('reverts'), 'after_snapshot': patch.get('after_snapshot'),
                'inverse_policy': intent['inverse_policy'], 'automatic_retry': False})
        except (JournalError, OSError, ValueError, KeyError, TypeError, AttributeError) as error:
            diagnostics.append({'change_id': directory.name, 'record_type': 'edit_history_diagnostic',
                'status': 'unreadable', 'code': error.code if isinstance(error, JournalError) else 'JOURNAL_CORRUPT',
                'filter_match': 'unknown', 'automatic_retry': False})
    rows.sort(key=lambda r: (r['started_at_utc'], r['change_id']), reverse=True)
    text = '\n'.join(service.dump(r) for r in rows + diagnostics) or 'No recorded edits.'
    return service.paged(text, {'query': 'edits', 'records': len(rows), 'diagnostics': len(diagnostics),
        'source': 'durable journal only; no native read',
        'scope': 'all sessions/epochs; snapshot filters database and component OID; diagnostics are unfiltered',
        'consistency': 'frozen listing; in-flight edits may be incomplete'}, session, budget)
