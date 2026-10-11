"""Durable classification of a separately executed exact field compensation.

The original failed forward is never relabelled as applied/reverted. Its
compensated receipt records the successful distinct restoration and preserves
the original outcome and error. This module never dispatches a model mutation.
"""
import json
import re
from pathlib import Path
import hashlib

from bd_edit_journal import JournalError, clone, fingerprint
from bd_field_execution import validate as validate_field
from bd_native_graphical_effects import same_current
from bd_source_inverse_oracle import decode_graph, equal
import bd_instance_pending as pending


def validate_reply(reply, record, request, before):
    proof = reply.get('compensation')
    if (reply.get('profile') != 'field_failure_recovery_v1' or reply.get('native_token') != record['native_token']
            or reply.get('operation') != request['operation'] or reply.get('component_oid') != request['domain']['oid']
            or reply.get('native_state') != 'started' or reply.get('original_edit_replayed') is not False
            or reply.get('model_setters_called') != 0 or reply.get('store_called') is not False
            or type(proof) is not dict or proof.get('profile') != 'field_failure_compensation_v1'
            or proof.get('transaction') != record['transaction'] or proof.get('witness') != record['witness_token']
            or proof.get('state') != 'restored' or proof.get('original_verified') is not True
            or proof.get('original_forward_status_unchanged') is not True
            or reply.get('restored_observation') != before):
        raise JournalError('RECOVERY_UNRESOLVED', 'Fresh distinct compensation/baseline/identity binding differs')
    validate_field(reply['original_field_execution'], token=record['native_token'], operation=request['operation'],
                   direction='forward', terminal=False)
    if (proof != record['terminal_proof'] or reply['original_field_execution'] != record['original_field_execution']):
        raise JournalError('RECOVERY_UNRESOLVED', 'Fresh compensation differs from durable actual restoration')
    total = 0
    for key in ('native_progress', 'source_progress'):
        progress = proof.get(key)
        if (type(progress) is not dict or progress.get('state') != 'applied' or progress.get('direction') != 'undo'
                or any(type(progress.get(k)) is not int or progress[k] < 0
                    for k in ('cell_count', 'completed_cells', 'completed_primitives'))
                or progress['completed_cells'] != progress['cell_count']):
            raise JournalError('RECOVERY_UNRESOLVED', 'Compensation actual primitive progress is incomplete')
        total += progress['completed_primitives']
    if type(proof.get('primitive_writes')) is not int or proof['primitive_writes'] != total:
        raise JournalError('RECOVERY_UNRESOLVED', 'Compensation primitive writes differ from actual stage progress')
    if not equal(decode_graph(proof['source_after'], request['domain']['oid']),
                 decode_graph(proof['expected_source'], request['domain']['oid'])):
        raise JournalError('RECOVERY_UNRESOLVED', 'Compensation full source values/sharing differ')
    return clone(proof)


def register(log, token, preparation_folder, application_folder):
    """Import preceding durable eval files; no retroactive model dispatch claim."""
    events = log.read(token); request = events[0]['payload']
    if request.get('operation') not in ('set_literal', 'set_comment', 'move_node', 'set_edge_route') or 'reverts' in request:
        raise JournalError('RECOVERY_UNRESOLVED', 'Only an initial recorded field forward can be compensated')
    receipt = log.receipt(token, events)
    if receipt['status'] != 'outcome_unknown':
        raise JournalError('RECOVERY_UNRESOLVED', 'Exact unknown initial forward required')
    prepared_folder, applied_folder = Path(preparation_folder), Path(application_folder)
    prep = json.loads((prepared_folder / 'result.json').read_text(encoding='utf-8'))
    applied = json.loads((applied_folder / 'result.json').read_text(encoding='utf-8'))
    imported_intent_folder = Path(prep.get('retained_preparation_readonly_classification', prepared_folder))
    intent_path = imported_intent_folder / 'intent.json'
    intent = json.loads(intent_path.read_text(encoding='utf-8'))
    started_path, finished_path = applied_folder / 'compensation-started.json', applied_folder / 'compensation-finished.json'
    started, finished = [json.loads(p.read_text(encoding='utf-8')) for p in (started_path, finished_path)]
    plan, terminal = prep['preparation']['compensation'], applied['compensation_observed']
    transaction = applied['transaction']; witness = applied['witness_token']
    if (any(row.get('passed') is not True or row['domain'] != request['domain'] or row['native_token'] != token
            or row['component'].strip('\\') != request['component'].strip('\\') for row in (prep, applied))
            or prep['model_mutation_dispatched'] is not False or prep['preparation_unchanged'] is not True
            or applied['restored'] is not True or applied['original_failure_unchanged'] is not True
            or applied['pending_retained'] is not True or applied['original_edit_replayed'] is not False
            or not re.fullmatch(r'edit_[0-9a-f]{64}', transaction) or transaction == token
            or not re.fullmatch(r'main_[0-9a-f]{64}', witness)
            or intent != {'domain': request['domain'], 'native_token': token, 'transaction': transaction,
                'witness': witness, 'pending_sha256': applied['pending_sha256'], 'automatic_retry': False}
            or started != {'transaction': transaction, 'native_token': token,
                'prepared_sha256': fingerprint(plan), 'automatic_retry': False}
            or finished != {'transaction': transaction, 'status': 'restored_current_epoch',
                'primitive_writes': terminal['compensation']['primitive_writes'],
                'outcome_sha256': fingerprint(terminal), 'automatic_retry': False}
            or applied['fresh_compensation'] != terminal
            or not same_current(plan['original_native'], terminal['compensation']['original_native'])
            or any(applied['after_witness'].get(k) is not True for k in (
                'unchanged', 'native_fields_unchanged', 'source_unchanged', 'ids_unchanged',
                'physical_identity_order_unchanged', 'drawing_identity_order_unchanged'))):
        raise JournalError('RECOVERY_UNRESOLVED', 'Distinct restoration durable intent/preparation/start/outcome differs')
    record = {'profile': 'field_failure_compensation_evidence_v1', 'native_token': token,
        'transaction': transaction, 'witness_token': witness, 'domain': clone(request['domain']),
        'pending_sha256': applied['pending_sha256'], 'terminal_proof': clone(terminal['compensation']),
        'original_field_execution': clone(terminal['original_field_execution']),
        'durable_evidence': [{
            'path': str(p.resolve()), 'sha256': hashlib.sha256(p.read_bytes()).hexdigest()}
            for p in (intent_path, prepared_folder / 'result.json', started_path,
                      applied_folder / 'result.json', finished_path)],
        'mutation_dispatched_by_recovery': False, 'automatic_retry': False}
    existing = next((e['payload'] for e in events if e['kind'] == 'field_failure_compensation_evidence'), None)
    if existing is not None and existing != record:
        raise JournalError('RECOVERY_UNRESOLVED', 'Another durable compensation owns this failed forward')
    if existing is None:
        log._append(log._path(token), events, 'field_failure_compensation_evidence', record)
    return record


def reconcile(log, token, events, context, marker, marker_path, adapter, *, confirm):
    record = next(e['payload'] for e in events if e['kind'] == 'field_failure_compensation_evidence')
    request = events[0]['payload']; before = next(e['payload']['before'] for e in events if e['kind'] == 'prepared')
    expected_marker = {'domain': request['domain'], 'command': 'apply', 'native_token': token, 'automatic_retry': False}
    if (record['domain'] != context['domain'] or record['native_token'] != token or 'reverts' in request
            or marker not in (None, expected_marker)
            or marker is not None and hashlib.sha256(marker_path.read_bytes()).hexdigest() != record['pending_sha256']):
        raise JournalError('RECOVERY_UNRESOLVED', 'Original failure/compensation/quarantine binding differs')
    for evidence in record['durable_evidence']:
        if hashlib.sha256(Path(evidence['path']).read_bytes()).hexdigest() != evidence['sha256']:
            raise JournalError('RECOVERY_UNRESOLVED', 'Preceding compensation evidence bytes changed')
    fresh = adapter.field_failure_status(context['domain'], token, record['transaction'], record['witness_token'])
    proof = validate_reply(fresh, record, request, before)
    summary = {k: clone(proof[k]) for k in ('profile', 'transaction', 'witness', 'state',
        'native_progress', 'source_progress', 'primitive_writes', 'original_verified', 'original_forward_status_unchanged')}
    summary['full_proof_sha256'] = fingerprint(proof)
    result = {'change_id': token, 'native_state': fresh['native_state'], 'compensation': summary,
        'model_setters_called': 0, 'store_called': False, 'model_mutation_dispatched': False,
        'original_edit_replayed': False, 'reconciled': False, 'automatic_retry': False,
        'instance_quarantined': marker is not None, 'receipt': log.receipt(token, events)}
    if confirm:
        status = log.receipt(token, events)['status']
        if status not in ('outcome_unknown', 'compensated') or status == 'outcome_unknown' and marker is None:
            raise JournalError('RECOVERY_UNRESOLVED', 'Unknown forward lacks its original quarantine')
        if not any(e['kind'] == 'field_failure_compensation_reconciled' for e in events):
            log._append(log._path(token), events, 'field_failure_compensation_reconciled', {
                'transaction': record['transaction'], 'fresh_proof_sha256': fingerprint(fresh),
                'fresh_reply': clone(fresh),
                'dispatch_count': 0, 'automatic_retry': False})
        if status == 'outcome_unknown':
            error = log.receipt(token, events).get('error')
            log._append(log._path(token), events, 'finished', {'status': 'compensated',
                'original_status': 'outcome_unknown', 'original_error': error,
                'compensation_transaction': record['transaction'], 'restored_to_original': True,
                'primitive_writes': proof['primitive_writes'], 'automatic_retry': False})
        if marker is not None:
            pending.confirmed(marker_path)
        result.update(reconciled=True, instance_quarantined=False, receipt=log.receipt(token, events))
    return result


def completed(log, token, events, context):
    """Historical durable receipt after witness release; no current-model claim."""
    record = next(e['payload'] for e in events if e['kind'] == 'field_failure_compensation_evidence')
    reconciled = next(e['payload'] for e in events if e['kind'] == 'field_failure_compensation_reconciled')
    receipt = log.receipt(token, events)
    proof = record['terminal_proof']
    if (record['domain'] != context['domain'] or record['native_token'] != token
            or reconciled['transaction'] != record['transaction'] or reconciled['dispatch_count'] != 0
            or reconciled['automatic_retry'] is not False
            or not re.fullmatch(r'[0-9a-f]{64}', reconciled['fresh_proof_sha256'])
            or receipt['status'] != 'compensated' or receipt['original_status'] != 'outcome_unknown'
            or receipt['restored_to_original'] is not True
            or receipt['compensation_transaction'] != record['transaction']
            or proof['state'] != 'restored' or proof['original_verified'] is not True
            or proof['original_forward_status_unchanged'] is not True
            or proof['primitive_writes'] != receipt['primitive_writes']):
        raise JournalError('RECOVERY_UNRESOLVED', 'Historical compensated receipt lacks complete durable proof')
    for evidence in record['durable_evidence']:
        if hashlib.sha256(Path(evidence['path']).read_bytes()).hexdigest() != evidence['sha256']:
            raise JournalError('RECOVERY_UNRESOLVED', 'Original compensation evidence bytes changed')
    validate_field(record['original_field_execution'], token=token,
        operation=events[0]['payload']['operation'], direction='forward', terminal=False)
    total = 0
    for key in ('native_progress', 'source_progress'):
        progress = proof[key]
        if (progress['state'] != 'applied' or progress['direction'] != 'undo'
                or any(type(progress[k]) is not int or progress[k] < 0
                    for k in ('completed_primitives', 'completed_cells', 'cell_count'))
                or progress['completed_cells'] != progress['cell_count']):
            raise JournalError('RECOVERY_UNRESOLVED', 'Historical compensation progress is incomplete')
        total += progress['completed_primitives']
    if type(proof['primitive_writes']) is not int or proof['primitive_writes'] != total:
        raise JournalError('RECOVERY_UNRESOLVED', 'Historical compensation primitive count differs')
    if 'fresh_reply' in reconciled:
        if fingerprint(reconciled['fresh_reply']) != reconciled['fresh_proof_sha256']:
            raise JournalError('RECOVERY_UNRESOLVED', 'Durable fresh compensation checksum differs')
        request = events[0]['payload']; before = next(e['payload']['before'] for e in events if e['kind'] == 'prepared')
        validate_reply(reconciled['fresh_reply'], record, request, before)
    if not equal(decode_graph(proof['source_after'], context['domain']['oid']),
                 decode_graph(proof['expected_source'], context['domain']['oid'])):
        raise JournalError('RECOVERY_UNRESOLVED', 'Historical compensation source proof differs')
    return {'change_id': token, 'receipt': receipt, 'reconciled': True, 'instance_quarantined': False,
        'model_setters_called': 0, 'store_called': False, 'model_mutation_dispatched': False,
        'original_edit_replayed': False, 'automatic_retry': False,
        'source': 'durable compensated history; no verification of the current model',
        'current_model_verified': False}
