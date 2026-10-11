"""Strict offline audit of fixed Cebra PRIVATE-heap steps, never a recovery loader."""
from copy import deepcopy
import re

from bd_class_study_journal import read_events
from bd_edit_journal import canonical, fingerprint


COLLECTIONS = {'Array', 'OrderedCollection', 'Dictionary', 'IdentityDictionary', 'Set', 'IdentitySet'}
DICT_CLASSES = {'Dictionary', 'IdentityDictionary'}
SET_CLASSES = {'Set', 'IdentitySet'}
PRIMITIVES = {'field', 'array_put', 'dict_put', 'dict_remove', 'insert', 'remove', 'set_add', 'set_remove'}


def _require(condition, message):
    if not condition:
        raise ValueError('Private step evidence: ' + message)


def _positive(value):
    return type(value) is int and 0 < value <= 100000


def _integer(token):
    _require(type(token) is list and len(token) == 3 and token[0] == 'number' and
             token[1] in ('SmallInteger', 'LargeInteger') and re.fullmatch(r'-?(?:0|[1-9][0-9]*)', token[2]),
             'exact integer token required')
    return int(token[2])


def _token(value, refs):
    _require(type(value) is list and value, 'typed native value required')
    tag = value[0]
    if tag == 'nil':
        good = len(value) == 1
    elif tag == 'bool':
        good = len(value) == 2 and type(value[1]) is bool
    elif tag == 'number':
        good = len(value) == 3 and all(type(item) is str and item for item in value[1:])
    elif tag == 'symbol':
        good = len(value) == 2 and type(value[1]) is str
    elif tag == 'ref':
        good = len(value) == 2 and _positive(value[1]) and value[1] in refs
    else:
        good = False
    _require(good, 'unresolved or malformed native value token')


def _contents(row, values, refs):
    _require(type(values) is list, 'complete object values required')
    if row['kind'] == 'value':
        _require(all(type(byte) is int and 0 <= byte <= 255 for byte in values), 'exact indexed bytes required')
    elif row['class'] in DICT_CLASSES:
        for pair in values:
            _require(type(pair) is list and len(pair) == 2, 'dictionary key/value pair required')
            _token(pair[0], refs)
            _token(pair[1], refs)
        _require(len({canonical(pair[0]) for pair in values}) == len(values), 'duplicate dictionary key')
    else:
        for item in values:
            _token(item, refs)
        if row['class'] in SET_CLASSES:
            _require(len({canonical(item) for item in values}) == len(values), 'duplicate set member')


def _normalized(row):
    values = row['values']
    if row['class'] in DICT_CLASSES:
        values = sorted(values, key=lambda pair: canonical(pair[0]))
    elif row['class'] in SET_CLASSES:
        values = sorted(values, key=canonical)
    return {**row, 'values': values}


def _same(left, right):
    return {key: _normalized(row) for key, row in left.items()} == {key: _normalized(row) for key, row in right.items()}


def validate_export(export, *, minimum_primitives=3):
    _require(type(minimum_primitives) is int and minimum_primitives in (1, 3),
             'exact private study primitive bound required')
    _require(export.get('profile') == 'native_private_step_wire_v1' and export.get('action') == 'export' and
             export.get('index') == 0 and re.fullmatch(r'[0-9a-f]{32}', export.get('token', '')),
             'fixed private export identity required')
    rows = export['current']
    boundaries = export['boundaries']
    _require(type(rows) is list and rows and type(boundaries) is list, 'complete CURRENT/reference roster required')
    current = {}
    for row in rows:
        _require(set(row) == {'ref', 'class', 'kind', 'values'} and _positive(row['ref']) and
                 row['ref'] not in current and type(row['class']) is str and row['class'] and
                 row['kind'] in ('fields', 'collection', 'value'), 'duplicate or malformed CURRENT row')
        _require((row['class'] in COLLECTIONS) == (row['kind'] == 'collection'), 'native collection kind differs')
        current[row['ref']] = deepcopy(row)
    refs = set(current)
    for row in boundaries:
        _require(set(row) == {'ref', 'class', 'reference_only'} and _positive(row['ref']) and
                 row['ref'] not in refs and type(row['class']) is str and row['class'] and
                 row['reference_only'] is True, 'invalid external reference boundary')
        refs.add(row['ref'])
    _require(refs == set(range(1, len(refs) + 1)), 'reference roster gap')
    for row in current.values():
        _contents(row, row['values'], refs)
    _require(type(export['original']) is list and len(export['original']) == len(current) and
             {row['ref'] for row in export['original']} == set(current), 'complete original private field roster required')
    for row in export['original']:
        _require(set(row) == {'ref', 'class', 'kind', 'values'} and
                 all(row[key] == current[row['ref']][key] for key in ('class', 'kind')), 'original CURRENT object type differs')
        _contents(row, row['values'], refs)
    _require(type(export['additional_objects']) is list and
             len(set(export['additional_objects'])) == len(export['additional_objects']) and
             all(ref in current and current[ref]['class'] in ('Set', 'Point') for ref in export['additional_objects']),
             'unaudited generated branching allocation')
    _require(type(export['copied_objects']) is int and type(export['copied_fields']) is int and
             len(current) == export['copied_objects'] + len(export['additional_objects']) and
             sum(len(row['values']) for row in current.values() if row['kind'] == 'fields') == export['copied_fields'] +
             sum(len(current[ref]['values']) for ref in export['additional_objects'] if current[ref]['kind'] == 'fields'),
             'CURRENT does not cover every memo object/field and audited allocation')
    status = export['status']
    _require(status['state'] == 'prepared' and status['executed'] == 0 and status['recovered'] == 0 and
             status['current_checkpoint_objects'] == len(current) and
             status['current_checkpoint_fields'] == sum(len(row['values']) for row in current.values() if row['kind'] == 'fields'),
             'CURRENT coverage or preparation differs')
    _require(type(export['steps']) is list and len(export['steps']) == status['primitive_count'] >= minimum_primitives,
             'complete bounded primitive schedule required')
    for step in export['steps']:
        _require(set(step) == {'kind', 'ref', 'index', 'value'} and step['kind'] in PRIMITIVES and
                 step['ref'] in current, 'non-owned or unsupported primitive')
        _token(step['index'], refs)
        _token(step['value'], refs)
        row = current[step['ref']]
        kind = step['kind']
        if kind == 'field':
            _require(row['kind'] == 'fields' and 1 <= _integer(step['index']) <= len(row['values']), 'field target differs')
        elif kind == 'array_put':
            _require(row['class'] == 'Array' and 1 <= _integer(step['index']) <= len(row['values']), 'array target differs')
        elif kind.startswith('dict_'):
            _require(row['class'] in DICT_CLASSES, 'dictionary target differs')
        elif kind in ('insert', 'remove'):
            _require(row['class'] == 'OrderedCollection' and 1 <= _integer(step['index']) <= 100000,
                     'ordered primitive target differs')
        else:
            _require(row['class'] in SET_CLASSES and step['index'] == ['nil'], 'set target differs')
    _require(export['actual_changes'] == [] and export['recovery_plan'] == [] and export['current_matches'] is True,
             'prepared CURRENT already changed')
    _require(export['independent_ref'] in current and current[export['independent_ref']]['class'] == 'Point' and
             type(export['independent_x_before']) is int, 'exact independent Point required')
    _reply_flags(export)
    return current, refs


def _reply_flags(reply, *, observation_complete=True):
    status = reply['status']
    _require(reply['write_authorized'] is False and type(reply['model_setters_called']) is int and reply['model_setters_called'] == 0 and
             reply['native_material_retained'] is True and reply['native_archive_available'] is False and
             status['write_authorized'] is False and type(status['model_setters_called']) is int and status['model_setters_called'] == 0 and
             status['native_material_retained'] is True and status['durable_current_wal'] is False and
             status['actual_observation_complete'] is observation_complete,
             'unknown native outcome, archive claim or model authorization')


def _actual(current, changes, refs):
    _require(type(changes) is list, 'actual CURRENT diff required')
    state = deepcopy(current)
    touched = set()
    for cell in changes:
        _require(set(cell) == {'ref', 'kind', 'index', 'before', 'after'} and cell['ref'] in current,
                 'actual diff target not CURRENT owned')
        key = (cell['ref'], cell['index'])
        _require(key not in touched, 'duplicate actual cell')
        touched.add(key)
        row = state[cell['ref']]
        _require(cell['kind'] == row['kind'] and row['kind'] != 'value', 'actual diff kind differs')
        if row['kind'] == 'fields':
            index = cell['index']
            _require(type(index) is int and 1 <= index <= len(row['values']), 'actual field index differs')
            _token(cell['before'], refs)
            _token(cell['after'], refs)
            _require(cell['before'] == current[cell['ref']]['values'][index - 1] and cell['before'] != cell['after'],
                     'actual field before differs or diff is empty')
            row['values'][index - 1] = deepcopy(cell['after'])
        else:
            _require(type(cell['index']) is int and cell['index'] == 0, 'actual collection index differs')
            _contents(row, cell['before'], refs)
            _contents(row, cell['after'], refs)
            _require(_normalized({**row, 'values': cell['before']}) == _normalized(current[cell['ref']]) and
                     _normalized({**row, 'values': cell['before']}) != _normalized({**row, 'values': cell['after']}),
                     'actual collection before differs or diff is empty')
            row['values'] = deepcopy(cell['after'])
    return state


def _apply(state, step):
    state = deepcopy(state)
    values = state[step['ref']]['values']
    kind, target = step['kind'], step['value']
    if kind in ('field', 'array_put'):
        values[_integer(step['index']) - 1] = deepcopy(target)
    elif kind == 'insert':
        index = _integer(step['index'])
        _require(1 <= index <= len(values) + 1, 'insert index outside CURRENT')
        values.insert(index - 1, deepcopy(target))
    elif kind == 'remove':
        index = _integer(step['index'])
        _require(1 <= index <= len(values) and values[index - 1] == target, 'remove member outside CURRENT')
        values.pop(index - 1)
    elif kind.startswith('dict_'):
        key = step['index']
        found = next((i for i, pair in enumerate(values) if pair[0] == key), None)
        if kind == 'dict_remove':
            _require(found is not None, 'dict removal lacks CURRENT key')
            values.pop(found)
        elif found is not None:
            values[found][1] = deepcopy(target)
        else:
            values.append([deepcopy(key), deepcopy(target)])
    elif kind == 'set_add':
        _require(target not in values, 'set addition already present')
        values.append(deepcopy(target))
    else:
        _require(target in values, 'set removal lacks CURRENT member')
        values.remove(target)
    return state


def audit(root):
    events = read_events(root)
    return audit_events([(row['kind'], row['payload']) for row in events])


def audit_events(events):
    _require(events and events[0][0] == 'intent', 'intent missing')
    intent = events[0][1]
    _require(set(intent) == {'profile', 'domain', 'token', 'stop', 'production_write_authorized'} and
             intent['profile'] == 'private_step_journal_v1' and intent['production_write_authorized'] is False,
             'fixed private intent required')
    domain = intent['domain']
    _require(set(domain) == {'database', 'database_session', 'process_epoch', 'oid', 'component'} and
             all(type(value) is str and value for value in domain.values()) and
             re.fullmatch(r'BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+', domain['component']), 'exact isolated domain required')
    exported = current = refs = state = active = terminal = last = None
    original = None
    executed = recovered = discarded = reconciled = refused = host_terminations = 0
    recovery = None
    perturbed = reset = False
    for kind, body in events[1:]:
        _require(terminal is None, 'event after terminal')
        if kind == 'prepared':
            _require(exported is None and set(body) == {'export'}, 'duplicate preparation')
            exported = body['export']
            current, refs = validate_export(exported)
            original = {row['ref']: deepcopy(row) for row in exported['original']}
            _require(exported['token'] == intent['token'] and type(intent['stop']) is int and
                     1 <= intent['stop'] <= len(exported['steps']), 'prepared token/stop differs')
            state, last = deepcopy(current), exported
        elif kind == 'step_started':
            _require(exported is not None and active is None and set(body) == {'token', 'action', 'index', 'instruction'} and
                     body['token'] == intent['token'], 'overlapping or foreign dispatch')
            action, index = body['action'], body['index']
            _require(type(index) is int, 'integer request index required')
            if action == 'step':
                _require(not perturbed and recovered == 0 and index == executed + 1 <= intent['stop'] and
                         body['instruction'] == exported['steps'][index - 1], 'step differs from fixed next schedule')
            elif action == 'recover':
                _require(perturbed and not reset and recovery and index == recovered + 1 <= len(recovery) and
                         body['instruction'] == recovery[index - 1], 'recovery differs from exact touched CURRENT')
            else:
                _require(action in ('perturb', 'reset') and index == 0 and body['instruction'] == exported['independent_ref'],
                         'unknown private command')
                if action == 'perturb':
                    _require(executed == intent['stop'] and not perturbed and recovered == 0, 'independent perturbation order differs')
                else:
                    _require(perturbed and not reset and recovered == len(recovery), 'independent reset order differs')
            active = {**body, 'discarded': False}
        elif kind == 'application_receipt_discarded':
            _require(active is not None and not active['discarded'] and body == {'transport_failure': False, 'setter_replayed': False},
                     'lost application receipt lacks active intent')
            active['discarded'] = True
            discarded += 1
        elif kind == 'host_terminated':
            _require(active is not None and not active['discarded'] and
                     set(body) == {'host_pid', 'exit_code', 'transport_failure', 'setter_replayed'} and
                     _positive(body['host_pid']) and type(body['exit_code']) is int and body['exit_code'] != 0 and
                     body['transport_failure'] is True and body['setter_replayed'] is False,
                     'host termination lacks a bound unresolved intent')
            active['discarded'] = True
            host_terminations += 1
        elif kind in ('step_observed', 'reconciled'):
            _require(active is not None and set(body) == ({'reply', 'read_only'} if kind == 'reconciled' else {'reply'}) and
                     active['discarded'] == (kind == 'reconciled'), 'observation has no matching intent/lost receipt')
            reply = body['reply']
            _reply_flags(reply)
            _require(reply['profile'] == exported['profile'] and reply['token'] == intent['token'], 'reply identity changed')
            action, index = active['action'], active['index']
            if kind == 'reconciled':
                _require(body['read_only'] is True and reply['action'] == 'observe' and reply['index'] == 0,
                         'unknown outcome was replayed instead of read-only reconciliation')
                reconciled += 1
            else:
                _require(reply['action'] == action and reply['index'] == index, 'reply command differs')
            actual = _actual(current, reply['actual_changes'], refs)
            status = reply['status']
            if action == 'step':
                expected = _apply(state, active['instruction'])
                executed += 1
                _require(status['state'] == 'partial', 'primitive observation is not complete partial state')
                recovery = deepcopy(reply['recovery_plan'])
                _require(sorted(recovery, key=canonical) == sorted(reply['actual_changes'], key=canonical),
                         'recovery plan differs from actual execution cells')
                _require(status['desired_result_verified'] is (executed == len(exported['steps'])), 'desired verification differs')
                if executed == len(exported['steps']):
                    _require(_same(actual, original), 'completed steps differ from full original fields/references/collections')
            elif action == 'recover':
                expected = deepcopy(state)
                cell = active['instruction']
                row = expected[cell['ref']]
                if cell['kind'] == 'fields':
                    _require(row['values'][cell['index'] - 1] == cell['after'], 'recovery precondition differs')
                    row['values'][cell['index'] - 1] = deepcopy(cell['before'])
                else:
                    _require(_normalized(row) == _normalized({**row, 'values': cell['after']}), 'recovery collection precondition differs')
                    row['values'] = deepcopy(cell['before'])
                recovered += 1
                _require(status['state'] == ('recovered' if recovered == len(recovery) else 'recovering'), 'recovery state differs')
            else:
                expected = deepcopy(state)
                row = expected[exported['independent_ref']]
                original_x = exported['independent_x_before']
                delta = [cell for cell in reply['actual_changes'] if cell['ref'] == exported['independent_ref']]
                previous = [cell for cell in last['actual_changes'] if cell['ref'] == exported['independent_ref']]
                if action == 'perturb':
                    _require(len(delta) == 1 and not previous and delta[0]['kind'] == 'fields' and
                             _integer(delta[0]['before']) == original_x and _integer(delta[0]['after']) == original_x + 7,
                             'independent perturbation did not change exactly one field')
                    row['values'][delta[0]['index'] - 1] = deepcopy(delta[0]['after'])
                    perturbed = True
                else:
                    _require(not delta and len(previous) == 1, 'independent reset differs')
                    row['values'][previous[0]['index'] - 1] = deepcopy(previous[0]['before'])
                    reset = True
            _require(_same(expected, actual), 'observed native effect differs from the single intended primitive')
            _require(type(status['executed']) is int and status['executed'] == executed and
                     type(status['recovered']) is int and status['recovered'] == recovered,
                     'native step counters disagree; reply loss cannot prove completion')
            _require(reply['current_matches'] is _same(current, actual), 'CURRENT match claim differs from complete actual diff')
            _require(reply['desired_checkpoint_matches'] is _same(original, actual), 'original checkpoint match claim differs')
            if action != 'step':
                _require(reply['recovery_plan'] == recovery, 'retained recovery plan changed')
            state, last, active = actual, reply, None
        elif kind == 'refused':
            _require(exported is not None and active is None and
                     set(body) == {'action', 'index', 'error', 'before', 'after'} and
                     body['before'] == body['after'], 'refusal mutated observed state')
            _reply_flags(body['after'])
            _require(body['after']['token'] == intent['token'] and _same(state, _actual(current, body['after']['actual_changes'], refs)),
                     'refusal does not match independently reconstructed CURRENT')
            _require(type(body['error']) is str and body['error'].startswith('BDE_PRIVATE_WIRE_ERROR: '), 'native refusal absent')
            refused += 1
        elif kind == 'finished':
            _require(exported is not None and active is None and set(body) == {'status', 'reply'}, 'terminal lacks resolved observations')
            terminal = body['status']
            if terminal == 'writeahead_refused':
                _reply_flags(body['reply'])
                _require(executed == recovered == 0 and not perturbed and body['reply']['current_matches'] is True and
                         body['reply']['token'] == intent['token'] and body['reply']['status']['state'] == 'prepared' and
                         body['reply']['status']['executed'] == body['reply']['status']['recovered'] == 0 and
                         _same(current, _actual(current, body['reply']['actual_changes'], refs)), 'failed WAL dispatched or changed CURRENT')
            else:
                _require(terminal == 'recovered' and executed == intent['stop'] and recovered == len(recovery) and reset and
                         body['reply'] == last and _same(current, state), 'terminal CURRENT incomplete')
        else:
            raise ValueError('Private step evidence: unknown event ' + kind)
    _require(terminal is not None, 'unresolved journal is not accepted as recovered')
    return {'status': terminal, 'domain': domain, 'token': intent['token'], 'stop': intent['stop'],
            'current_objects': len(current), 'current_fields': sum(len(row['values']) for row in current.values() if row['kind'] == 'fields'),
            'additional_objects': len(exported['additional_objects']), 'primitive_count': len(exported['steps']),
            'execution_primitives': executed, 'recovery_cells': recovered, 'application_receipts_discarded': discarded,
            'readonly_reconciliations': reconciled, 'host_terminations': host_terminations,
            'refusals': refused, 'current_sha256': fingerprint(exported['current']),
            'original_projection_sha256': fingerprint(exported['original_projection']),
            'native_archive_available': False, 'model_setters_called': 0, 'write_authorized': False}


def compare_remote_studies(observed, studies, projections, domain):
    owners = {row['oid']: row for row in observed['owners']}
    _require(type(studies) is list and len(studies) == len(owners) and {row['oid'] for row in studies} == set(owners),
             'complete remote owner roster required')
    fields = {row['oid']: row for row in projections}
    _require(set(fields) == set(owners), 'complete independent projection roster required')
    counts = {key: 0 for key in ('owners', 'sessions', 'current_objects', 'current_fields', 'additional_objects', 'execution_primitives',
                                'recovery_cells', 'application_receipts_discarded', 'readonly_reconciliations', 'refusals', 'writeahead_failures')}
    for study in studies:
        _require(study['component'] == owners[study['oid']]['component'], 'remote owner identity differs')
        checks = study['checks']
        _require(checks['profile'] == 'native_private_remote_study_v1' and checks['model_setters_called'] == 0 and
                 checks['write_authorized'] is False and checks['production_inverse_available'] is False and
                 len(checks['cases']) == 3 and [row['position'] for row in checks['cases']] == [0, 1, 2], 'complete first/middle/final study required')
        counts['owners'] += 1
        for case in checks['cases']:
            receipt = audit(case['journal'])
            count = receipt['primitive_count']
            _require(case['stop'] == (1 if case['position'] == 0 else (count + 1) // 2 if case['position'] == 1 else count),
                     'first/middle/final positions are not independently covered')
            _require(receipt['domain']['oid'] == study['oid'] and receipt['domain']['component'] == study['component'] and
                     all(receipt['domain'][key] == value for key, value in domain.items()) and
                     receipt['stop'] == case['stop'] and receipt['status'] == 'recovered' and
                     receipt['primitive_count'] == case['primitive_count'] and
                     receipt['original_projection_sha256'] == fingerprint(fields[study['oid']]['scopes']),
                     'journal result owner/domain/coverage/stop differs')
            _require(case['transport_failures_tested'] is False and case['current_restored'] is True and
                     case['independent_field_preserved'] is True and case['model_setters_called'] == 0 and case['write_authorized'] is False,
                     'native transport or production claims exceed evidence')
            for key in ('execution_primitives', 'recovery_cells', 'application_receipts_discarded'):
                _require(case[key] == receipt[key], 'study counters disagree with WAL')
            counts['sessions'] += 1
            for key in ('current_objects', 'current_fields', 'additional_objects', 'execution_primitives', 'recovery_cells',
                        'application_receipts_discarded', 'readonly_reconciliations', 'refusals'):
                counts[key] += receipt[key]
        failure = audit(checks['writeahead_failure_journal'])
        _require(failure['status'] == 'writeahead_refused' and failure['execution_primitives'] == 0 and
                 failure['domain']['oid'] == study['oid'] and all(failure['domain'][key] == value for key, value in domain.items()),
                 'real write-ahead failure not recorded')
        counts['writeahead_failures'] += 1
    return counts
