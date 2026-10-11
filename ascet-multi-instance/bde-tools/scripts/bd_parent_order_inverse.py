"""Audit order-only native probe receipts. This cannot grant model-write acceptance."""
from bd_collection_merge import merge_order
from bd_edit_journal import fingerprint


SCENARIOS = {
    'exact': True,
    'independent_addition': True,
    'independent_deletion': True,
    'ambiguous_gap': False,
    'reordered': False,
    'attached_original': False,
    'changed_parent_member': False,
    'changed_collection_binding': False,
    'stale_order': True,
    'stale_positions': True,
}


def validate_probe(value):
    if (type(value) is not dict or value.get('profile') != 'native_parent_order_probe_v1'
            or type(value.get('model_setters_called')) is not int or value['model_setters_called'] != 0
            or value.get('production_dispatch') is not False
            or value.get('complete_acceptance') is not False
            or value.get('dispatcher_compiled') is not True or value.get('dispatcher_bound') is not True):
        raise ValueError('Exact order-only native receipt required; no production authority')
    cases = value.get('cases')
    if type(cases) is not list or len(cases) != len(SCENARIOS):
        raise ValueError('Complete parent order scenario coverage required')
    seen = set()
    for row in cases:
        if type(row) is not dict:
            raise ValueError('Exact native scenario object required')
        mode = row.get('scenario')
        if mode not in SCENARIOS or mode in seen:
            raise ValueError('Duplicate or unknown parent order scenario')
        seen.add(mode)
        if row.get('compatible') is not SCENARIOS[mode] or row.get('private_reset') is not True:
            raise ValueError('Native verdict or complete private reset differs')
        if row.get('stale_refused') is not (mode in ('stale_order', 'stale_positions')):
            raise ValueError('Prepared order/position conflict was not verified')
        for name in ('before', 'after', 'current'):
            order = row.get(name)
            if (type(order) is not list or len(order) > 100000
                    or any(type(v) is not int or v <= 0 for v in order) or len(set(order)) != len(order)):
                raise ValueError('Exact unique native member tokens required')
        before, after, current = (row[name] for name in ('before', 'after', 'current'))
        removed = [v for v in before if v not in after]
        if len(removed) != 1 or after != [v for v in before if v not in removed]:
            raise ValueError('Order-only probe must delete exactly one original identity')
        kernel = merge_order(*[[str(v) for v in order] for order in (before, after, current)])
        if SCENARIOS[mode]:
            if not kernel['compatible'] or fingerprint(row.get('merged')) != fingerprint([int(v) for v in kernel['merged']]):
                raise ValueError('Native merged order differs from independent Python kernel')
            positions = [[int(step['ref']), step['index'] + 1] for step in kernel['splices'] if step['op'] == 'insert']
            if fingerprint(row.get('positions')) != fingerprint(positions):
                raise ValueError('Native original insertion positions differ')
            if mode == 'independent_addition' and not set(current) - set(before):
                raise ValueError('Independent native member addition is missing')
            if mode == 'independent_deletion' and not set(after) - set(current):
                raise ValueError('Independent native member deletion is missing')
        elif row.get('merged') is not None or row.get('positions') != []:
            raise ValueError('Conflicting native plan exposes executable restoration positions')
        if mode in ('ambiguous_gap', 'reordered') and kernel['compatible']:
            raise ValueError('Independent order kernel did not confirm the conflict')
    return {'cases': len(seen), 'compatible': sum(SCENARIOS.values()),
            'refused': len(seen) - sum(SCENARIOS.values()), 'prepared_refusals': 2,
            'scope': 'parent order helper on private native graphics only',
            'production_dispatch': False, 'complete_acceptance': False}
