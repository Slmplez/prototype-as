"""Validate and render bounded Main topology observations (no native writes)."""
import json
import re


UNCOLLECTED = ['model types/formulas/configuration', 'method bodies', 'nested graph contents', 'state machine']


def normalize_scope(scope):
    if not isinstance(scope, dict) or set(scope) - {'targets', 'include_layout'}:
        raise ValueError('scope accepts targets and include_layout only')
    targets = scope.get('targets')
    if not isinstance(targets, list) or not 1 <= len(targets) <= 20:
        raise ValueError('scope.targets requires 1..20 exact Main node references')
    if any(not isinstance(t, str) or not re.fullmatch(r'Main/n[0-9]+', t) for t in targets):
        raise ValueError('Only Main/n<ID> target references are implemented')
    if len(set(targets)) != len(targets) or any(t != 'Main/n' + str(int(t[6:])) for t in targets):
        raise ValueError('Target references must be unique and canonical')
    layout = scope.get('include_layout', True)
    if type(layout) is not bool:
        raise ValueError('include_layout must be boolean')
    return {'targets': sorted(targets, key=lambda t: int(t[6:])), 'include_layout': layout}


def validate(raw, scope):
    if raw.get('status') != 'ok' or not raw.get('ascet_process_epoch'):
        raise ValueError('Scoped native observation did not complete with process identity')
    for key in ('database', 'component', 'oid', 'observed_at_utc'):
        if not isinstance(raw.get(key), str) or not raw[key]:
            raise ValueError('Missing observation identity: ' + key)
    if raw.get('layout') is not scope['include_layout']:
        raise ValueError('Returned layout coverage differs from requested coverage')
    graph = raw['graph']
    nodes, pins, edges = graph['nodes'], graph['pins'], graph['edges']
    node_ids = [n['id'] for n in nodes]
    wanted = {int(t[6:]) for t in scope['targets']}
    if len(set(node_ids)) != len(node_ids) or set(node_ids) != wanted:
        raise ValueError('Missing or duplicate selected nodes')
    pin_ids = [p['native_id'] for p in pins]
    if any(type(i) is not int or i < 0 for i in node_ids + pin_ids) or len(set(pin_ids)) != len(pin_ids):
        raise ValueError('Invalid or duplicate native identity')
    by_pin = {p['native_id']: p for p in pins}
    selected_pins = set()
    for node in nodes:
        if scope['include_layout']:
            for field in ('position', 'size'):
                value = node.get(field)
                if not isinstance(value, list) or len(value) != 2 or not all(type(n) is int for n in value):
                    raise ValueError('Incomplete node layout')
        for pin in node['pins']:
            if pin['node_id'] != node['id'] or by_pin.get(pin['native_id']) != pin or pin['native_id'] in selected_pins:
                raise ValueError('Pin ownership or duplicate identity mismatch')
            selected_pins.add(pin['native_id'])
    needed = set(selected_pins)
    for edge in edges:
        if type(edge['type']) is not int or edge['type'] < 0:
            raise ValueError('Unknown connection type')
        if edge['input'] not in by_pin or edge['output'] not in by_pin:
            raise ValueError('Missing edge boundary pin')
        if edge['input'] not in selected_pins and edge['output'] not in selected_pins:
            raise ValueError('Edge outside requested incident scope')
        needed.update((edge['input'], edge['output']))
        if scope['include_layout'] and (not isinstance(edge.get('points'), list) or any(
                not isinstance(p, list) or len(p) != 2 or not all(type(n) is int for n in p) for p in edge['points'])):
            raise ValueError('Incomplete edge geometry')
    if set(by_pin) != needed:
        raise ValueError('Extraneous or missing pins')
    return {'nodes': len(nodes), 'pins': len(pins), 'edges': len(edges), 'definition_methods': 0}


def entities(record):
    result = {}
    graph = record['local_graph']
    selected = {n['id'] for n in graph['nodes']}
    def add(ref, kind, name, fields):
        result[ref] = {'ref': ref, 'key': record['oid'] + '/' + ref, 'kind': kind, 'name': name, 'fields': fields}
    for node in graph['nodes']:
        fields = {k: v for k, v in node.items() if k != 'pins'}
        add('Main/n' + str(node['id']), 'node', str(node.get('name', node.get('literal', node.get('operator', node['kind'])))), fields)
    for pin in graph['pins']:
        add(f"Main/n{pin['node_id']}.p{pin['native_id']}", 'pin', pin['name'],
            dict(pin, coverage='selected_node_pin' if pin['node_id'] in selected else 'boundary_pin_only'))
    for edge in graph['edges']:
        ref = f"Main/edge:p{edge['output']}->p{edge['input']}:{edge['type']}"
        if ref not in result:
            add(ref, 'edge', ref, {'input': edge['input'], 'output': edge['output'], 'type': edge['type'], 'multiplicity': 0})
        fields = result[ref]['fields']
        fields['multiplicity'] += 1
        if 'points' in edge:
            fields.setdefault('geometry_occurrences', []).append(edge['points'])
    # No unique native edge identity is claimed: a multiset preserves parallel
    # edges. Observation ordering must not invent a change or an editable ID.
    for row in result.values():
        if 'geometry_occurrences' in row['fields']:
            row['fields']['geometry_occurrences'].sort(key=lambda v: json.dumps(v, separators=(',', ':')))
    return result


def render(record):
    rows = ['Main: selected nodes, their pins and incident connections; boundary nodes are not collected.',
            'No method bodies, types/formulas or nested graph contents were collected. Edge refs are comparison groups, not writable edge identities.']
    for entry in entities(record).values():
        rows.append(entry['kind'] + ' ' + entry['ref'] + ' ' + json.dumps(entry['fields'], ensure_ascii=False, sort_keys=True, separators=(',', ':')))
    return '\n'.join(rows)
