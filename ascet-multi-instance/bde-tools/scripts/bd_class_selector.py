"""Exact Class method/formal selection shared by inspection and edit research."""
from copy import deepcopy
import re


def alias(value):
    if not isinstance(value, str) or not re.fullmatch(r'(?:bytes:(?:[0-9a-f]{2}){1,128}|string:[^\x00-\x1f]{1,512})', value):
        raise ValueError('Canonical native alias required')
    return value


def validate_selector(selector):
    if not isinstance(selector, dict) or set(selector) != {'diagram', 'method_alias', 'formal_alias', 'slot'}:
        raise ValueError('Exact diagram, method_alias, formal_alias and slot required')
    if not isinstance(selector['diagram'], str) or not 1 <= len(selector['diagram']) <= 256 or re.search(r'[/\x00-\x1f]', selector['diagram']):
        raise ValueError('Exact method diagram required')
    alias(selector['method_alias'])
    alias(selector['formal_alias'])
    if selector['slot'] not in ('argument', 'return'):
        raise ValueError('Exact argument or return slot required')
    return selector


def validate_method_selector(selector):
    if not isinstance(selector, dict) or set(selector) != {'diagram', 'method_alias'}:
        raise ValueError('Exact diagram and method_alias required')
    if not isinstance(selector['diagram'], str) or not 1 <= len(selector['diagram']) <= 256 or re.search(r'[/\x00-\x1f]', selector['diagram']):
        raise ValueError('Exact method diagram required')
    alias(selector['method_alias'])
    return selector


def select_method(signature, selector):
    validate_method_selector(selector)
    methods = signature['methods']
    if len({m['alias'] for m in methods}) != len(methods):
        raise ValueError('Duplicate method identity')
    matches = [m for m in methods if m['diagram'] == selector['diagram'] and m['alias'] == selector['method_alias']]
    if len(matches) != 1 or matches[0].get('owner_matches') is not True:
        raise ValueError('Exact method alias absent, ambiguous or foreign')
    return matches[0]


def select_formal(signature, selector):
    validate_selector(selector)
    method = select_method(signature, {key: selector[key] for key in ('diagram', 'method_alias')})
    formals = method['arguments'] + ([method['return']] if method['return'] is not None else [])
    if len({f['alias'] for f in formals}) != len(formals):
        raise ValueError('Duplicate formal identity')
    selected = [f for f in formals if f['alias'] == selector['formal_alias'] and f['slot'] == selector['slot']]
    if len(selected) != 1 or selected[0].get('owner_matches') is not True:
        raise ValueError('Exact formal alias absent, ambiguous or foreign in selected slot')
    return method, selected[0]


def legacy_selector(signature, slot):
    methods = signature['methods']
    if len(methods) != 1:
        raise ValueError('Multiple methods require an explicit exact selector')
    method = methods[0]
    formals = method['arguments'] if slot == 'argument' else [method['return']]
    if len(formals) != 1 or formals[0] is None:
        raise ValueError('Multiple or absent formals require an explicit exact selector')
    return {'diagram': method['diagram'], 'method_alias': method['alias'], 'formal_alias': formals[0]['alias'], 'slot': slot}


def caller_pin_targets(discovery, selector):
    targets, seen = [], set()
    for owner in discovery['callers']:
        for scope in owner['scopes']:
            for occurrence in scope['occurrences']:
                for pin in occurrence['pins']:
                    if pin.get('method_alias') != selector['method_alias'] or pin.get('formal_alias') != selector['formal_alias']:
                        continue
                    identity = (owner['oid'], scope['diagram'], pin['id'])
                    if type(pin['id']) is not int or pin['id'] < 0 or identity in seen:
                        raise ValueError('Caller target has no unique stable scope/pin identity')
                    seen.add(identity)
                    targets.append({'component': owner['component'], 'oid': owner['oid'], 'diagram': scope['diagram'],
                        'node': occurrence['node'], 'model_ref': occurrence['model_ref'], 'pin': 'p' + str(pin['id']),
                        'selector': deepcopy(selector)})
    return sorted(targets, key=lambda row: (row['oid'], row['diagram'], row['node'], row['pin']))
