"""Explicitly gated Doge integration for verified sandbox literal operations."""
from contextlib import contextmanager
import os
import re

import bd_service as service
from bd_edit_journal import EditJournal, JournalError, fingerprint
from bd_native_literal import NativeLiteralAdapter


def enabled():
    return os.environ.get('ASCET_BD_SANDBOX_WRITES') == '1'


def journal():
    return EditJournal(service.STORE / 'edits')


def binding(request, component, snapshot):
    change_id = 'edit_' + fingerprint({'domain': request['domain'], 'request_id': request['request_id']})
    folder = service.STORE / 'edit-bindings'
    folder.mkdir(exist_ok=True)
    path = folder / (change_id + '.json')
    value = {'component': component, 'snapshot': snapshot, 'domain': request['domain']}
    value['integrity_sha256'] = service.digest(value)
    # Snapshot is contextual evidence only; local before comes from the API.
    if not path.exists():
        try:
            service.write_once(path, value)
        except FileExistsError:
            pass
    import json
    existing = json.loads(path.read_text(encoding='utf-8'))
    checksum = existing.pop('integrity_sha256')
    if service.digest(existing) != checksum or existing['component'] != component or existing['domain'] != request['domain']:
        service.fail('JOURNAL_CONFLICT', 'Edit context is corrupt or conflicts with existing identity')
    return change_id


def load_binding(change_id):
    # Let the journal validate the ID before forming a filesystem path.
    journal().read(change_id)
    import json
    path = service.STORE / 'edit-bindings' / (change_id + '.json')
    if not path.is_file():
        service.fail('REVERT_UNAVAILABLE', 'Missing original edit context')
    row = json.loads(path.read_text(encoding='utf-8'))
    checksum = row.pop('integrity_sha256')
    if service.digest(row) != checksum:
        service.fail('JOURNAL_CORRUPT', 'Edit context integrity mismatch')
    return row


def execute(tool, args, session, budget):
    if not enabled():
        service.fail('CAPABILITY_UNAVAILABLE', 'Model writes are disabled. Experimental sandbox literal writes require ASCET_BD_SANDBOX_WRITES=1.', model_modified=False)
    log = journal()
    try:
        if tool == 'bd_edit':
            if set(args) - {'snapshot', 'request_id', 'operations', 'preview'}:
                service.fail('INVALID_INPUT', 'Unexpected edit fields')
            record = service.load_record(args.get('snapshot'), 's_', 'snapshots')
            operations = args.get('operations')
            if not isinstance(operations, list) or len(operations) != 1:
                service.fail('CAPABILITY_UNAVAILABLE', 'Only one isolated set_literal operation is enabled', model_modified=False)
            op = operations[0]
            if not isinstance(op, dict) or op.get('op') != 'set_literal':
                service.fail('CAPABILITY_UNAVAILABLE', 'Only isolated set_literal is enabled', model_modified=False)
            if set(op) != {'op', 'target', 'expect', 'value'} or not isinstance(op['expect'], dict) or not isinstance(op['value'], dict) or set(op['expect']) != {'text'} or set(op['value']) != {'text'}:
                service.fail('INVALID_INPUT', 'Invalid literal operation')
            entry = service.entities(record).get(op['target'])
            if not entry or entry['kind'] != 'node' or entry['fields'].get('kind') != 'BlockDiagramLiteral':
                service.fail('TARGET_NOT_FOUND', 'Snapshot must contain the exact literal target')
            domain = {'session': record['session'], 'database': record['database'], 'oid': record['oid'], 'process_epoch': record.get('ascet_process_epoch')}
            request = {'domain': domain, 'request_id': args.get('request_id'), 'target': op['target'],
                'expect': {'literal': op['expect']['text']}, 'value': op['value']['text']}
            component, snapshot = record['component'], record['snapshot']
        else:
            if set(args) - {'change_id', 'request_id', 'preview'}:
                service.fail('INVALID_INPUT', 'Unexpected revert fields')
            request = log.prepare_literal_revert(args.get('change_id'), args.get('request_id'))
            context = load_binding(args['change_id'])
            component, snapshot = context['component'], context['snapshot']
            domain = request['domain']
            if context['domain'] != domain:
                service.fail('JOURNAL_CORRUPT', 'Edit domain mismatch')
        if domain['session'] != session:
            service.fail('IDENTITY_UNRESOLVED', 'Writes require the original Doge session')
        if not re.fullmatch(r'BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+', component.strip('\\')):
            service.fail('CAPABILITY_UNAVAILABLE', 'Experimental writes are restricted to BDE_Tool_Experiments/Trial_* components', model_modified=False)
        log._validate(request)
        if not re.fullmatch(r'[+-]?(?:[0-9]+(?:\.[0-9]*)?|\.[0-9]+)(?:[eE][+-]?[0-9]+)?', request['value']) or len(request['value']) > 128:
            service.fail('INVALID_INPUT', 'Only bounded numeric literal text is enabled')
        if 'preview' in args and type(args['preview']) is not bool:
            service.fail('INVALID_INPUT', 'preview must be boolean')
        adapter = NativeLiteralAdapter(component)
        @contextmanager
        def native_session():
            with service.live_lock():
                try:
                    yield
                finally:
                    adapter.close()  # Shutdown also stays under the live lock.
        if args.get('preview'):
            with native_session():
                before = log._observation(adapter.observe(domain, request['target']), domain, request['target'])
            conflicts = {key: {'expected': value, 'actual': before['fields'][key]}
                for key, value in request['expect'].items() if before['fields'][key] != value}
            receipt = {'status': 'conflict' if conflicts else 'preview', 'before': before['fields'],
                'requested_literal': request['value'], 'conflicts': conflicts, 'setter_called': False,
                'planned_finalize': 'StoreToCache; may rebuild logic and auto-commit', 'outside_scope': 'not_observed'}
        else:
            binding(request, component, snapshot)
            receipt = log.execute_literal(request, adapter, native_session)
        failed = receipt['status'] not in ('verified_local', 'no_change', 'preview')
        result = service.paged(service.dump(receipt), {'tool': tool, 'capability': 'experimental_unconnected_sandbox_numeric_literal',
            'status': receipt['status'], 'change_id': receipt.get('change_id')}, session, budget)
        result['is_error'] = failed
        return result
    except JournalError as error:
        service.fail(error.code, str(error))
