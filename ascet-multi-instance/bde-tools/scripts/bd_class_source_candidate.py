"""Verify staged native inverse sources and their durable non-model lifecycle WAL."""
import re

from bd_edit_journal import JournalError
from bd_class_study_journal import read_events
from bd_source_inverse_oracle import inspect_candidate

PROFILE = 'class_source_candidate_v1'
ACTIONS = ('prepare', 'inspect', 'audit', 'release', 'status')


def _require(condition, message):
    if not condition:
        raise ValueError(message)


def _token(token):
    _require(type(token) is str and re.fullmatch(r'cand_[0-9a-f]{64}', token) is not None,
             'Canonical source candidate token required')


def _receipt(receipt, token, action, oid, definition_oid, generation):
    _require(type(receipt) is dict and receipt.get('profile') == PROFILE
             and receipt.get('token') == token and receipt.get('action') == action
             and receipt.get('oid') == oid and receipt.get('definition_oid') == definition_oid
             and type(receipt.get('generation')) is int and receipt['generation'] == generation,
             'Source candidate identity/action/generation differs')
    _require(type(receipt.get('model_setters_called')) is int and receipt['model_setters_called'] == 0
             and all(receipt.get(key) is False for key in
                     ('store_called', 'write_authorized', 'native_merge_executor_available')),
             'Source candidate cannot authorize model mutation')
    if action == 'status':
        _require(receipt.get('state') in ('prepared', 'absent')
                 and receipt.get('candidate_present') is (receipt['state'] == 'prepared')
                 and 'source_plan' not in receipt, 'Status cannot claim fresh candidate verification')
        return
    _require(receipt.get('state') == ('released' if action == 'release' else 'prepared'),
             'Source candidate state differs from the actual action')
    if action == 'release':
        _require('source_plan' not in receipt, 'Release cannot claim fresh candidate verification')
        return
    _require(receipt.get('current_baseline_verified') is True and receipt.get('scope_pinned') is True
             and type(receipt.get('native_object_count')) is int and receipt['native_object_count'] >= 0
             and type(receipt.get('native_collection_count')) is int and receipt['native_collection_count'] > 0
             and type(receipt.get('private_negative_count')) is int
             and receipt['private_negative_count'] == (13 if action == 'audit' else 0),
             'Complete current candidate witness required')
    if action == 'prepare':
        _require(type(receipt.get('preparation_reused')) is bool, 'Explicit native candidate reuse result required')
    plan = receipt.get('source_plan')
    _require(type(plan) is dict and plan.get('profile') == 'class_persisted_source_inverse_plan_v1'
             and plan.get('mode') == 'plan' and plan.get('oid') == oid
             and type(plan.get('generation')) is int and plan['generation'] == generation
             and type(plan.get('model_setters_called')) is int and plan['model_setters_called'] == 0
             and all(plan.get(key) is False for key in ('store_called', 'write_authorized', 'native_merge_executor_available')),
             'Candidate sources belong to another owner or generation')
    inspect_candidate(plan, oid)
    if 'runtime_source_audit' in receipt:
        from bd_class_source_runtime import inspect_runtime
        _require(action == 'audit', 'Runtime source proof belongs only to a candidate audit')
        inspect_runtime(receipt['runtime_source_audit'], token, oid, generation,
                        expected_source=plan['source_graphs']['current'])
    if 'retained_runtime_audit' in receipt:
        from bd_class_source_runtime import inspect_retained_runtime
        _require(action == 'audit', 'Retained runtime proof belongs only to a candidate audit')
        inspect_retained_runtime(receipt['retained_runtime_audit'], token, oid, generation,
                                 expected_sources=plan['source_graphs'])
    if 'runtime_patch_audit' in receipt:
        from bd_class_runtime_patch import inspect_runtime_patch
        _require(action == 'audit', 'Runtime patch proof belongs only to a candidate audit')
        inspect_runtime_patch(receipt['runtime_patch_audit'], token, oid, generation,
                              expected_source=plan['source_graphs']['candidate'],
                              expected_current_source=plan['source_graphs']['current'], expected_definition_oid=definition_oid,
                              expected_source_graphs=plan['source_graphs'])


def validate_receipts(raw, current, token, action, *, before, applied):
    """Use the complete source/dependency oracle, never a native compatibility bit."""
    from bd_class_tools import validate_source_plans
    try:
        _token(token)
        _require(action in ACTIONS and type(current) is dict, 'Exact candidate action/context required')
        owners = current['owners']
        expected = {owner['oid']: owner for owner in owners}
        _require(len(expected) == len(owners) and all(type(oid) is str for oid in expected),
                 'Unique source candidate owners required')
        rows = raw.get('native_class_source_candidates')
        _require(type(rows) is list and len(rows) == len(expected), 'Complete source candidate roster required')
        seen, plans = set(), []
        for row in rows:
            _require(type(row) is dict and type(row.get('oid')) is str
                     and row['oid'] in expected and row['oid'] not in seen,
                     'Foreign or duplicate source candidate owner')
            owner = expected[row['oid']]
            _require(row.get('component') == owner['component'], 'Candidate owner path differs')
            receipt = row['receipt']
            _receipt(receipt, token, action, row['oid'], current['observation']['signature']['oid'],
                     owner['scopes']['Main']['generation'])
            if 'retained_runtime_audit' in receipt:
                from bd_class_source_runtime import inspect_retained_runtime
                generations = {}
                for phase, context in (('original', before), ('applied', applied)):
                    roster = context['owners']
                    mapped = {item['oid']: item for item in roster}
                    _require(len(mapped) == len(roster) and set(mapped) == set(expected),
                             'Retained runtime history owner roster differs')
                    generations[phase] = mapped[row['oid']]['scopes']['Main']['generation']
                inspect_retained_runtime(receipt['retained_runtime_audit'], token, row['oid'],
                                         owner['scopes']['Main']['generation'],
                                         expected_sources=receipt['source_plan']['source_graphs'],
                                         expected_generations=generations,
                                         expected_scopes={phase: {item['oid']: item for item in context['owners']}
                                             [row['oid']]['scopes'] for phase, context in (('original', before), ('applied', applied))})
            runtime = receipt.get('runtime_source_audit', {})
            if 'storage_witness' in runtime:
                from bd_storage_witness import inspect_storage_witness
                inspect_storage_witness(runtime['storage_witness'], row['oid'], owner['scopes']['Main']['generation'],
                    expected_source=receipt['source_plan']['source_graphs']['current'], expected_scopes=owner['scopes'])
            if 'runtime_patch_audit' in receipt:
                from bd_class_runtime_patch import inspect_runtime_patch, created_formal_alias
                inspect_runtime_patch(receipt['runtime_patch_audit'], token, row['oid'], owner['scopes']['Main']['generation'],
                    expected_source=receipt['source_plan']['source_graphs']['candidate'], expected_scopes=owner['scopes'],
                    expected_current_source=receipt['source_plan']['source_graphs']['current'],
                    expected_definition_oid=current['observation']['signature']['oid'],
                    expected_source_graphs=receipt['source_plan']['source_graphs'],
                    expected_formal_alias=created_formal_alias(before, applied, receipt['runtime_patch_audit']['selector']))
                if 'layout_storage_witnesses' in receipt['runtime_patch_audit']:
                    historical = {image['phase']: image['storage_witness']
                                  for image in receipt['retained_runtime_audit']['captures']}
                    _require(all(receipt['runtime_patch_audit']['layout_storage_witnesses'][phase] == historical[phase]
                                 for phase in ('original', 'applied')),
                             'Native layout history differs from separately retained storage witnesses')
            seen.add(row['oid'])
            if action not in ('release', 'status'):
                plans.append({'component': row['component'], 'oid': row['oid'], 'result': receipt['source_plan']})
        analysis = None
        if action not in ('release', 'status'):
            analysis = validate_source_plans({'native_class_source_plans': plans}, current, before=before, applied=applied)
            _require(analysis['all_sources_compatible'] is True and analysis['all_candidate_dependencies_valid'] is True,
                     'Staged candidate source or dependencies are incompatible')
        return {'profile': PROFILE, 'token': token, 'action': action, 'owners_verified': len(rows),
                'source_analysis': analysis, 'model_setters_called': 0, 'store_called': False,
                'write_authorized': False, 'native_merge_executor_available': False}
    except (ValueError, KeyError, TypeError, RecursionError) as error:
        raise JournalError('READ_INCOMPLETE', 'Invalid native candidate receipts: ' + str(error)) from error


def audit_candidate_journal(root):
    """Separate an unknown private candidate outcome from any model write."""
    try:
        events = read_events(root)
        intent = events[0]['payload']
        _token(intent.get('token'))
        action = intent.get('action')
        _require(intent.get('operation') == 'class_source_candidate' and action in ACTIONS
                 and type(intent.get('model_setters_called')) is int and intent['model_setters_called'] == 0
                 and intent.get('store_called') is False,
                 'Exact non-model candidate intent required')
        current = intent['current_observation']
        owners = intent['owners']
        _require(type(owners) is list and 0 < len(owners) <= 8
                 and len({row['oid'] for row in owners}) == len(owners)
                 and owners == [{'component': row['component'], 'oid': row['oid']} for row in current['owners']]
                 and current['observation']['signature']['oid'] == intent['definition_oid']
                 and intent['definition_oid'] in {row['oid'] for row in owners}
                 and all(type(intent.get(key)) is str and intent[key] for key in
                         ('database', 'database_session', 'process_epoch')),
                 'Complete candidate journal domain/roster required')
        active, finished, refusal = None, None, None
        completed = []
        for event in events[1:]:
            kind, body = event['kind'], event['payload']
            _require(finished is None, 'Candidate event follows a terminal record')
            if kind == 'candidate_step_started':
                _require(active is None and refusal is None and len(completed) < len(owners),
                         'Candidate step overlaps or follows a refusal')
                expected = {'index': len(completed), 'oid': owners[len(completed)]['oid'],
                            'action': action, 'token': intent['token']}
                _require(body == expected, 'Candidate step differs from exact prepared roster')
                active = body
            elif kind == 'candidate_step_completed':
                _require(active is not None and body.get('index') == active['index'] and body.get('oid') == active['oid'],
                         'Candidate completion has no matching started event')
                if 'native_error' in body:
                    _require(set(body) == {'index', 'oid', 'native_error'} and type(body['native_error']) is str
                             and body['native_error'].startswith('BDE_CLASS_SOURCE_CANDIDATE_ERROR: '),
                             'Candidate refusal is not a known native response')
                    refusal = body['native_error']
                else:
                    _require(set(body) == {'index', 'oid', 'receipt'}, 'Unexpected candidate receipt fields')
                    owner = current['owners'][active['index']]
                    _receipt(body['receipt'], intent['token'], action, owner['oid'], intent['definition_oid'],
                             owner['scopes']['Main']['generation'])
                completed.append(body)
                active = None
            elif kind == 'finished':
                _require(active is None and type(body.get('completed_count')) is int
                         and body['completed_count'] == len(completed)
                         and type(body.get('model_setters_called')) is int and body['model_setters_called'] == 0
                         and body.get('store_called') is False,
                         'Candidate terminal record lacks completed evidence')
                _require(body.get('status') == ('native_refusal' if refusal else 'recorded')
                         and (refusal is not None or len(completed) == len(owners)),
                         'Candidate terminal record omits owners or disguises refusal')
                finished = body
            else:
                raise ValueError('Unknown candidate event: ' + kind)
        status = finished['status'] if finished else ('candidate_outcome_unknown' if active else 'candidate_incomplete')
        return {'profile': PROFILE, 'token': intent['token'], 'action': action, 'status': status,
                'expected_owners': len(owners), 'completed_owners': len(completed), 'native_refusal': refusal,
                'active_step': active, 'terminal_checksum': events[-1]['checksum'],
                'model_setters_called': 0, 'store_called': False, 'automatic_retry': False,
                'native_merge_executor_available': False, 'write_authorized': False}
    except (ValueError, KeyError, TypeError, RecursionError) as error:
        raise JournalError('JOURNAL_CORRUPT', 'Invalid candidate WAL: ' + str(error)) from error
