"""Independently check exact CURRENT inverse effects from pure observation values."""
from copy import deepcopy
import json
import re


COLLECTIONS = ('Array', 'OrderedCollection', 'Dictionary', 'IdentityDictionary', 'Set', 'IdentitySet')


def require(condition, message):
    if not condition:
        raise ValueError(message)


def _cell(cell):
    require(type(cell) is dict and type(cell.get('native_class')) is str
            and 'native_key' in cell, 'Complete native value descriptor required')
    if 'native_ref' in cell:
        require('value' not in cell and type(cell['native_ref']) is str
                and re.fullmatch(r'c[1-9][0-9]*', cell['native_ref']), 'Exact native observation alias required')
        identity = ('ref', cell['native_ref'])
    else:
        require('value' in cell and type(cell['value']) in (str, int, float, bool, type(None)),
                'Native value lacks identity or scalar value')
        identity = ('value', cell['native_class'], json.dumps(cell['value'], allow_nan=False))
    if cell['native_class'] == 'Point':
        require('native_ref' in cell and type(cell.get('point')) is list and len(cell['point']) == 2
                and all(type(value) in (int, float) for value in cell['point']),
                'Complete historical Point observation required')
    return identity


def _collection(change, role):
    kind = change['native_class']
    if kind in ('Dictionary', 'IdentityDictionary'):
        entries = change.get(role + '_entries')
        require(type(entries) is list and all(type(pair) is list and len(pair) == 2 for pair in entries),
                'Complete native dictionary entries required')
        values = {}
        for key, value in entries:
            identity = _cell(key)
            require(identity not in values, 'Duplicate or ambiguous dictionary observation key')
            if kind == 'IdentityDictionary':
                require('native_ref' in key or key['native_class'] not in ('String', 'ByteArray'),
                        'IdentityDictionary mutable keys require exact identity aliases')
            _cell(value)
            values[identity] = (deepcopy(key), deepcopy(value))
    else:
        members = change.get(role + '_members')
        require(type(members) is list, 'Complete native collection members required')
        identities = [_cell(member) for member in members]
        if kind in ('Set', 'IdentitySet'):
            require(len(set(identities)) == len(identities), 'Duplicate or ambiguous set observation member')
            values = {identity: deepcopy(member) for identity, member in zip(identities, members)}
        else:
            values = deepcopy(members)
    require(type(change.get(role + '_size')) is int and change[role + '_size'] == len(values),
            'Native collection size differs from its complete values')
    return values


def _effect(change):
    require(type(change) is dict and type(change.get('native_ref')) is str
            and re.fullmatch(r'c[1-9][0-9]*', change['native_ref'])
            and type(change.get('native_class')) is str and 'native_key' in change,
            'Inverse effect lacks exact native target metadata')
    identity = (change['native_class'], change['native_key'])
    if change.get('kind') == 'field':
        require(type(change.get('index')) is int and change['index'] > 0
                and type(change.get('field')) is str and bool(change['field']), 'Exact native field required')
        _cell(change.get('before'))
        _cell(change.get('after'))
        key = (change['native_ref'], 'field', change['index'])
        identity += (change['field'],)
        left, right = deepcopy(change['before']), deepcopy(change['after'])
    else:
        require(change.get('kind') == 'collection' and change['native_class'] in COLLECTIONS,
                'Unaudited native inverse collection kind')
        key = (change['native_ref'], 'collection')
        left, right = [_collection(change, role) for role in ('before', 'after')]
    require(left != right, 'Inverse effect must change exactly observed values')
    return key, identity, left, right


def _primitive(kind, change, left, right):
    if change['kind'] == 'field':
        require(kind == 'field' or kind in ('position', 'manager') and change['field'] == kind,
                'Inverse primitive kind differs from its exact native field')
    elif change['native_class'] == 'OrderedCollection':
        if kind == 'remove':
            candidates = [index for index in range(len(left)) if right == left[:index] + left[index + 1:]]
        elif kind == 'insert':
            candidates = [index for index in range(len(right)) if left == right[:index] + right[index + 1:]]
        else:
            candidates = []
        require(len(candidates) == 1, 'Ordered inverse must have one exact insertion/removal slot')
    elif change['native_class'] == 'Array':
        require(kind == 'put' and len(left) == len(right)
                and sum(a != b for a, b in zip(left, right)) == 1, 'Array inverse must change one fixed slot')
    elif change['native_class'] in ('Dictionary', 'IdentityDictionary'):
        removed, added = set(left) - set(right), set(right) - set(left)
        modified = {key for key in set(left) & set(right) if left[key] != right[key]}
        require(kind == 'dict_remove' and len(removed) == 1 and not added and not modified
                or kind == 'put' and not removed and len(added) + len(modified) == 1,
                'Dictionary inverse must alter exactly one key binding')
    else:
        require(all(left[key] == right[key] for key in set(left) & set(right)),
                'Set inverse alters an existing member descriptor')
        require(kind == 'set_remove' and len(set(left) - set(right)) == 1 and not set(right) - set(left)
                or kind == 'set_add' and len(set(right) - set(left)) == 1 and not set(left) - set(right),
                'Set inverse must add/remove exactly one member')


def inspect_collateral_inverse(changes, plan, prefix, actual=None):
    require(type(changes) is list and type(plan) is list and type(prefix) is str and prefix.endswith('/'),
            'Complete collateral and ordered inverse plan required')
    wanted, state, identities = {}, {}, {}
    for change in changes:
        key, identity, before, after = _effect(change)
        require(key not in state, 'Duplicate native collateral target')
        wanted[key], state[key], identities[key] = before, after, identity
    if actual is not None:
        require(type(actual) is list and len(actual) == len(plan), 'Actual inverse history omits a physical action')
    for index, row in enumerate(plan, 1):
        require(type(row) is dict and row.get('command') == prefix + str(index)
                and type(row.get('expected_native_changes')) is list and len(row['expected_native_changes']) == 1,
                'Inverse plan reorders actions or lacks exact effects')
        change = row['expected_native_changes'][0]
        key, identity, before, after = _effect(change)
        require(key in state and identities[key] == identity and state[key] == before,
                'Inverse action touches another target or differs from its exact prefix')
        _primitive(row.get('kind'), change, before, after)
        if actual is not None:
            require(type(actual[index - 1]) is list and len(actual[index - 1]) == 2
                    and actual[index - 1][0] == row['command']
                    and type(actual[index - 1][1]) is list and len(actual[index - 1][1]) == 1,
                    'Actual inverse receipt differs from its planned physical action')
            require(_effect(actual[index - 1][1][0]) == (key, identity, before, after),
                    'Actual inverse effect differs from the complete sealed plan')
        state[key] = after
    require(state == wanted, 'Inverse does not restore every complete collateral value')
    return {'targets_verified': len(wanted), 'inverse_steps_verified': len(plan)}


def inspect_primitive_inverse(forward, inverse):
    require(type(forward) is list and type(inverse) is list and len(forward) == len(inverse),
            'Complete primitive inverse roster required')
    for index, (applied, undone) in enumerate(zip(reversed(forward), inverse), 1):
        require(type(applied) is dict and type(undone) is dict
                and type(applied.get('expected_native_changes')) is list
                and len(applied['expected_native_changes']) == 1,
                'Primitive inverse requires an exact forward effect')
        inspect_collateral_inverse(applied['expected_native_changes'],
            [{**undone, 'command': 'undo_apply/1'}], 'undo_apply/')
        require(undone.get('command') == f'undo_apply/{index}', 'Primitive inverse order differs')
    return len(inverse)


def inspect_store_inverse(row, command, changes):
    require(command in ('publish_store', 'restore_store') and row.get('store_inverse_plans_sealed') is True,
            'Exact sealed native store inverse required')
    proof = inspect_collateral_inverse(changes, row.get(command + '_undo_plan'), 'undo_' + command + '/')
    require(type(row.get(command + '_undo_steps')) is int
            and row[command + '_undo_steps'] == proof['inverse_steps_verified'],
            'Native store inverse counter differs from the complete plan')
    return proof
