"""Independent checks for exact retained-object connect history, not write authority."""
import re

from bd_edit_journal import JournalError, clone
from bd_topology_inverse import plan
from bd_parent_order_effects import validate_preparation
import bd_drawing_order_effects as drawing
from bd_native_graphical_effects import validate_current, same_current, validate_actual_diff

PREPARATION_KEYS = frozenset(('profile', 'native_token', 'owner_change_id', 'result_change_id',
    'state', 'sequence', 'before', 'expected', 'signature', 'parent_before', 'parent_expected',
    'drawing_before', 'drawing_expected', 'graphical_current', 'created_original_retained',
    'alias_reserved', 'model_setters_called', 'store_called', 'write_authorized', 'local_merge_enabled'))
ACTUAL_KEYS = frozenset(('profile', 'observation', 'execution', 'parent_before', 'parent_after',
    'drawing_before', 'drawing_after', 'graphical_current', 'graphical_actual',
    'created_original_retained', 'alias_reserved', 'native_target_verified', 'source_target_verified'))
EXECUTION_KEYS = frozenset(('profile', 'native_token', 'head_change_id', 'result_change_id', 'sequence',
    'before_state', 'after_state', 'model_operations', 'drawing_assignments', 'store_started',
    'store_completed', 'phase', 'native_primitives', 'source_primitives', 'terminal_verified'))


def _invalid(message):
    raise JournalError('CONNECT_HISTORY_INVALID', message)


def preparation(value, *, token, owner, state, result_id, sequence, current, expected,
                historical_before=None, historical_after=None, component_oid=None):
    local = type(value) is dict and value.get('profile') == 'native_connect_local_preparation_v1'
    keys = PREPARATION_KEYS | {'local_plan'} if local else PREPARATION_KEYS
    if (type(value) is not dict or set(value) != keys
            or any(type(item) is not str or not re.fullmatch(r'edit_[0-9a-f]{64}', item)
                   for item in (token, owner, result_id))
            or result_id in (token, owner) or state not in ('applied', 'reverted')
            or type(sequence) is not int or not 1 <= sequence < 100000):
        _invalid('Exact connection history identities and preparation required')
    contract = dict(profile='native_connect_local_preparation_v1' if local else 'native_connect_exact_preparation_v1', native_token=token,
        owner_change_id=owner, result_change_id=result_id, state=state, sequence=sequence,
        before=current, expected=expected)
    if (any(value[key] != item for key, item in contract.items())
            or any(value[key] is not True for key in ('created_original_retained', 'alias_reserved'))
            or type(value['sequence']) is not int
            or type(value['model_setters_called']) is not int or value['model_setters_called'] != 0
            or any(value[key] is not False for key in ('store_called', 'write_authorized'))
            or value['local_merge_enabled'] is not local
            or type(value['signature']) is not str
            or not re.fullmatch(re.escape(token) + r'/c[1-9][0-9]*', value['signature'])):
        _invalid('Actual head, zero-write preparation or exact-only contract differs')
    try:
        if local:
            from bd_connect_local_plan import validate_plan
            evidence = value['local_plan']
            validate_plan(evidence, token=token, owner=owner, state=state, sequence=sequence,
                original=historical_before, applied=historical_after, current=current,
                expected=expected, oid=component_oid)
            for outer, inner in (('parent_before', 'parentCurrent'), ('parent_expected', 'parentExpected'),
                    ('drawing_before', 'drawingCurrent'), ('drawing_expected', 'drawingExpected')):
                if value[outer] != evidence[inner]:
                    _invalid('Formal local preparation differs from complete frozen target ' + inner)
            if not same_current(value['graphical_current'], evidence['native_current']):
                _invalid('Graphical CURRENT differs from the complete native local-plan image')
        if current.get('targets') != [] or expected.get('targets') != []:
            _invalid('Complete Main typed observations required')
        left = {row['ref']: row for row in current['entries']}
        right = {row['ref']: row for row in expected['entries']}
        if (any(left[ref] != right[ref] for ref in left.keys() & right.keys())
                or any(current[key] != expected.get(key) for key in set(current) - {'entries', 'lookup_edges'})
                or (len(left) - len(right)) != (1 if state == 'applied' else -1)):
            _invalid('A connect inverse cannot own survivor fields, metadata or another topology edit')
        inverse = plan(expected, current, current, operation='connect_data')
        if not inverse['compatible'] or inverse['expected'] != expected:
            _invalid('Typed target must invert exactly one connection with complete endpoint closure')
        a, b = value['parent_before'], value['parent_expected']
        validate_preparation(a, b, token=token, diagram='Main')
        drawing.validate_preparation(value['drawing_before'], value['drawing_expected'], token=token,
            diagram='Main', physical_before=a, physical_expected=b)
        for left, right in ((a, b), (value['drawing_before'], value['drawing_expected'])):
            before, after = left['members'], right['members']
            bigger, smaller = (before, after) if state == 'applied' else (after, before)
            introduced = set(bigger) - set(smaller)
            if (len(introduced) != 1 or len(bigger) != len(smaller) + 1
                    or [ref for ref in bigger if ref not in introduced] != smaller):
                _invalid('Exact one-edge inverse must preserve all other ordered members')
        if set(a['members']) ^ set(b['members']) != (
                set(value['drawing_before']['members']) ^ set(value['drawing_expected']['members'])):
            _invalid('Physical and drawing inverse must own the same native edge')
        validate_current(value['graphical_current'])
    except (ValueError, KeyError, TypeError) as error:
        _invalid(str(error))
    return clone(value)


def observed(value, prepared):
    local = prepared['profile'] == 'native_connect_local_preparation_v1'
    if (type(value) is not dict or set(value) != ACTUAL_KEYS
            or value['profile'] != ('native_connect_local_actual_v1' if local else 'native_connect_exact_actual_v1')):
        _invalid('Complete actual connection history receipt required')
    proof = value['execution']
    if type(proof) is not dict or set(proof) != EXECUTION_KEYS:
        _invalid('Complete native connection execution proof required')
    expected = dict(profile='native_connect_local_execution_v1' if local else 'native_connect_exact_execution_v1', native_token=prepared['native_token'],
        head_change_id=prepared['owner_change_id'], result_change_id=prepared['result_change_id'],
        sequence=prepared['sequence'] + 1, before_state=prepared['state'],
        after_state='reverted' if prepared['state'] == 'applied' else 'applied', phase='terminal')
    if (any(proof[key] != item for key, item in expected.items())
            or any(proof[key] is not True for key in ('store_started', 'store_completed', 'terminal_verified'))
            or any(type(proof[key]) is not int or proof[key] < 0
                   for key in ('sequence', 'model_operations', 'drawing_assignments', 'native_primitives', 'source_primitives'))
            or proof['model_operations'] < 1
            or proof['drawing_assignments'] != len(prepared['drawing_expected']['members'])
            or any(value[key] is not True for key in ('created_original_retained', 'alias_reserved',
                'native_target_verified', 'source_target_verified'))
            or value['observation'] != prepared['expected']
            or any(value[actual] != prepared[wanted] for actual, wanted in (
                ('parent_before', 'parent_before'), ('parent_after', 'parent_expected'),
                ('drawing_before', 'drawing_before'), ('drawing_after', 'drawing_expected')))):
        _invalid('Actual state, identity, typed graph or complete order differs from durable preparation')
    try:
        if not same_current(value['graphical_current'], prepared['graphical_current']):
            _invalid('Actual execution changed its complete CURRENT binding')
        validate_actual_diff(value['graphical_current'], value['graphical_actual'])
        if local:
            # Reconstruct every actual native cell independently from the
            # immutable CURRENT plus the actual patch; boolean target flags
            # alone cannot certify the local write.
            rows = {r['ref']: clone(r) for r in value['graphical_current']['objects']}
            for row in value['graphical_actual']['new_objects']:
                rows[row['ref']] = clone(row)
            for change in value['graphical_actual']['changes']:
                row = rows[change['object']]
                if change['kind'] == 'fields':
                    row['value'][change['index'] - 1] = clone(change['after'])
                else:
                    row['value'] = clone(change['after'])
            reconstructed = dict(profile='native_graphical_current_v1', complete=True, objects=list(rows.values()))
            if not same_current(reconstructed, prepared['local_plan']['native_expected']):
                _invalid('Full actual native patch differs from the independently computed local target')
    except (ValueError, KeyError, TypeError) as error:
        _invalid(str(error))
    return clone(value)
