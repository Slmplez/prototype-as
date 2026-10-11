"""Independently check actual private runtime patch effects and complete source values."""
import re

from bd_service import digest
from bd_source_inverse_oracle import decode_graph, equal


def created_formal_alias(before, applied, selector):
    """Use real signature/WAL observations to identify the exact added alias."""
    methods = []
    for context in (before, applied):
        found = [method for method in context['observation']['signature']['methods'] if method['alias'] == selector[1]]
        if len(found) != 1:
            raise ValueError('Exact added formal method alias missing from edit observations')
        methods.append(found[0])
    old, new = methods
    aliases = {formal['alias'] for formal in old['arguments']}
    added = [formal for formal in new['arguments'] if formal['alias'] not in aliases]
    if (len(added) != 1 or len(new['arguments']) != len(old['arguments']) + 1
            or new['arguments'][:-1] != old['arguments'] or new['arguments'][-1] != added[0]
            or added[0]['model_type'] != selector[3] or added[0]['name'].rsplit('/', 1)[-1] != selector[2]):
        raise ValueError('Exact single Class creation alias/order differs from original edit WAL')
    return added[0]['alias']


def inspect_runtime_patch(value, token, oid, generation, *, expected_source, expected_scopes=None,
                          expected_formal_alias=None, expected_current_source=None, expected_definition_oid=None,
                          expected_source_graphs=None, retained=False):
    if (type(value) is not dict or value.get('profile') != 'class_current_runtime_patch_v1'
            or re.fullmatch(r'cand_[0-9a-f]{64}', token) is None or value.get('token') != token
            or value.get('oid') != oid or type(value.get('generation')) is not int
            or value['generation'] != generation or generation <= 0):
        raise ValueError('Exact current-bound private runtime patch required')
    if (type(retained) is not bool or value.get('private_graph_restored') is not (not retained)
            or value.get('live_original_unchanged') is not True
            or type(value.get('model_setters_called')) is not int or value['model_setters_called'] != 0
            or any(value.get(key) is not False for key in ('store_called', 'write_authorized', 'native_merge_executor_available'))):
        raise ValueError('Private runtime patch must restore its graph and cannot authorize model writes')
    selector = value.get('selector')
    if (type(selector) is not list or len(selector) != 4 or selector[-1] not in ('cont', 'sdisc', 'udisc', 'log')
            or any(type(item) is not str or not item for item in selector)
            or re.fullmatch(r'[A-Za-z_][A-Za-z0-9_]{0,63}', selector[2]) is None
            or value.get('created_native_identity_verified') is not True
            or type(value.get('created_formal_alias')) is not str
            or re.fullmatch(r'(?:bytes:(?:[0-9a-f]{2}){1,128}|string:[^\x00-\x1f]{1,512})', value['created_formal_alias']) is None
            or expected_formal_alias is not None and value['created_formal_alias'] != expected_formal_alias):
        raise ValueError('Exact created Class argument selector required')
    targets = value.get('targets')
    if type(targets) is not list or not 0 <= len(targets) <= 8192:
        raise ValueError('Complete exact runtime patch target table required')
    no_target = not targets
    if (value.get('no_graphical_target_required') is not no_target
            or type(value.get('definition_oid')) is not str or not value['definition_oid']
            or expected_definition_oid is not None and value['definition_oid'] != expected_definition_oid):
        raise ValueError('Exact definition identity and graphical target policy required')
    if no_target and (expected_definition_oid != oid or expected_current_source is None
            or not equal(decode_graph(expected_source, oid), decode_graph(expected_current_source, oid))):
        raise ValueError('Empty patch requires the exact definition and independent complete unchanged source')
    seen = set()
    for row in targets:
        if (type(row) is not dict or set(row) != {'kind', 'native_key'} or row.get('kind') not in ('node', 'pin')
                or type(row.get('native_key')) is not str or row['native_key'] in seen
                or re.fullmatch(r'Main(?:/h(?:0|[1-9][0-9]*))*/' + ('n' if row['kind'] == 'node' else 'p')
                                + r'(?:0|[1-9][0-9]*)', row['native_key']) is None):
            raise ValueError('Exact unique native node/pin target keys required')
        seen.add(row['native_key'])
        if expected_scopes is not None:
            scope, ref = row['native_key'].rsplit('/', 1)
            entries = expected_scopes.get(scope, {}).get('entries', [])
            found = [entry for entry in entries if entry['ref'] == ref and entry['kind'] == row['kind']]
            if len(found) != 1:
                raise ValueError('Runtime patch target is not in the independent current scope')
    changes = value.get('actual_private_changes')
    steps = value.get('private_inverse_steps')
    if (type(changes) is not list or len(changes) > 100000 or type(steps) is not int or steps < 0
            or (steps != 0 if retained else bool(changes) != (steps > 0)) or not no_target and not changes):
        raise ValueError('Actual private field/collection diff and exact inverse required')
    for row in changes:
        if (type(row) is not dict or row.get('kind') not in ('fields', 'collection')
                or type(row.get('native_class')) is not str or not row['native_class']
                or type(row.get('index')) is not int):
            raise ValueError('Exact runtime patch field/collection locator required')
        if row['kind'] == 'fields':
            if row['index'] <= 0 or any(type(row.get(key)) is not str or not row[key]
                                       for key in ('field', 'before_class', 'after_class')):
                raise ValueError('Exact runtime patch field difference required')
        elif row['index'] != 0 or any(type(row.get(key)) is not int or row[key] < 0
                                     for key in ('before_size', 'after_size')):
            raise ValueError('Exact runtime patch collection difference required')
    candidate = decode_graph(expected_source, oid)
    if not equal(candidate, decode_graph(value.get('expected_source_graph'), oid)):
        raise ValueError('Private runtime patch expected source differs from the independent merged candidate')
    generated = decode_graph(value.get('generated_source_graph'), oid)
    matches = equal(candidate, generated)
    if type(value.get('runtime_candidate_matches')) is not bool or value['runtime_candidate_matches'] is not matches:
        raise ValueError('Native runtime patch match claim disagrees with complete independent values')
    result = {'profile': value['profile'], 'complete_candidate_source_matches': matches,
            'definition_oid': value['definition_oid'], 'no_graphical_target_required': no_target,
            'created_formal_alias': value['created_formal_alias'], 'created_native_identity_verified': True,
            'targets': targets, 'actual_private_changes': changes, 'private_inverse_steps': steps,
            'private_graph_restored': not retained, 'live_original_unchanged': True,
            'expected_source_sha256': digest(value['expected_source_graph']),
            'generated_source_sha256': digest(value['generated_source_graph']),
            'write_authorized': False, 'native_merge_executor_available': False,
            'not_verified': ['merged runtime publication', 'native Class local inverse', 'durable recovery']}
    if 'native_layout_audit' in value or 'layout_storage_witnesses' in value:
        from bd_class_pin_layout import plan_pin_layout, inspect_native_layout
        if expected_source_graphs is None:
            raise ValueError('Native layout audit requires the independent complete source history')
        layout_plan = None
        if expected_scopes is not None:
            layout_plan = plan_pin_layout(expected_source_graphs, oid, definition_oid=value['definition_oid'],
                current_scopes=expected_scopes, storage_witnesses=value.get('layout_storage_witnesses'),
                target_keys=[target['native_key'] for target in targets])
            result['layout_oracle'] = layout_plan
        result['native_layout_audit'] = inspect_native_layout(value.get('native_layout_audit'), oid, generation,
                                                             plan=layout_plan, actual_changes=changes)
    return result
