"""Exact interface evidence analysis. These research references are not editable."""
from collections import Counter, deque
import json


FIELDS = {
    'models': ('alias', 'name', 'scope', 'imported', 'exported', 'message', 'send', 'receive', 'send_receive', 'complex', 'definition_oid'),
    'formals': ('alias', 'name', 'argument', 'return', 'local'),
    'nodes': ('scope', 'id', 'hierarchy', 'hierarchy_pin'),
    'pins': ('scope', 'owner', 'id', 'name', 'input', 'output'),
    'edges': ('scope', 'source', 'target', 'type'),
}


def bag(rows, fields):
    return Counter(json.dumps({key: row[key] for key in fields if key in row}, sort_keys=True)
                   for row in rows)


def compare_public(native, public):
    checks = {key: bag(native[key], fields) == bag(public[key], fields)
              for key, fields in FIELDS.items()}
    def definitions(value):
        return Counter(json.dumps({'oid': row['oid'], 'path': row['path'].strip('\\'),
            'fields': sorted(bag(row.get('fields', []), ('alias', 'name')).items()),
            'formals': sorted(bag(row['formals'], FIELDS['formals']).items())}, sort_keys=True)
            for row in value['definitions'])
    checks['definition_formals'] = definitions(native) == definitions(public)
    return {'passed': all(checks.values()), 'fields': checks,
            'not_verified': ['internal method/formal alias mapping', 'hierarchy boundary pairing',
                             'configuration and layout', 'Undo contents', 'runtime signal delivery']}


def class_bindings(interfaces):
    definitions = {row['oid']: row for row in interfaces['definitions']}
    if len(definitions) != len(interfaces['definitions']):
        raise ValueError('Duplicate definition identity')
    nodes = {(row['scope'], row['id']): row for row in interfaces['nodes']}
    if len(nodes) != len(interfaces['nodes']):
        raise ValueError('Duplicate node identity in scope')
    pin_keys = [(row['scope'], row['id']) for row in interfaces['pins']]
    if len(set(pin_keys)) != len(pin_keys):
        raise ValueError('Duplicate pin identity in scope')
    result = []
    for pin in interfaces['pins']:
        node = nodes.get((pin['scope'], pin['owner']))
        if node is None:
            raise ValueError('Pin owner not collected')
        if 'definition_oid' not in node:
            continue
        row = {'scope': pin['scope'], 'instance_node_id': node['id'], 'pin_id': pin['id'],
               'definition_oid': node['definition_oid'], 'method_alias': pin.get('method_alias'),
               'formal_alias': pin.get('formal_alias'), 'status': 'not_resolved',
               'editable': False, 'body_dataflow': 'not_collected'}
        definition = definitions.get(node['definition_oid'])
        if definition is None:
            row['reason'] = 'definition_not_collected'
        elif not pin.get('method_alias') or not pin.get('formal_alias'):
            row['reason'] = 'alias_not_collected'
        elif definition.get('native_class') == 'EtasAPIStateMachine':
            row['reason'] = 'state_machine_interface_deferred'
        elif not pin.get('input') and not pin.get('output'):
            row['reason'] = 'method_selector_not_data_pin'
        else:
            matches = [formal for formal in definition['formals']
                if formal['method_alias'] == pin['method_alias'] and formal['alias'] == pin['formal_alias']]
            if len(matches) == 1:
                row.update(status='matched_native_aliases', interface_kind='method_formal', formal=matches[0])
            else:
                fields = [field for field in definition.get('fields', [])
                    if field['alias'] == pin['formal_alias'] == pin['method_alias']]
                access = (pin.get('get_access') is True and pin.get('output') is True) or (
                    pin.get('set_access') is True and pin.get('input') is True)
                if not matches and len(fields) == 1 and access:
                    row.update(status='matched_native_aliases', interface_kind='field_access', field=fields[0],
                               access='get' if pin.get('get_access') else 'set')
                else:
                    row['reason'] = 'ambiguous_alias' if len(matches) > 1 or len(fields) > 1 else 'formal_or_access_not_collected'
        result.append(row)
    return {'bindings': result, 'matched': sum(row['status'] == 'matched_native_aliases' for row in result),
            'unresolved': sum(row['status'] != 'matched_native_aliases' for row in result),
            'meaning': 'instance pin to definition formal identity; no inferred argument-to-return flow'}


IDENTITY_CHECKS = ('forward_identity', 'reverse_identity', 'manager_identity',
                   'interface_identity', 'child_membership_identity')


def graph_index(interfaces):
    nodes = {(row['scope'], row['id']): row for row in interfaces['nodes']}
    pins = {(row['scope'], row['id']): row for row in interfaces['pins']}
    if len(nodes) != len(interfaces['nodes']) or len(pins) != len(interfaces['pins']):
        raise ValueError('Duplicate scoped graphical identity')
    for (scope, native_id), row in [*nodes.items(), *pins.items()]:
        if not isinstance(scope, str) or not scope or len(scope) > 200 or type(native_id) is not int or native_id < 0:
            raise ValueError('Invalid scoped graphical identity')
        for field in ('input', 'output') if 'owner' in row else ('hierarchy', 'hierarchy_pin'):
            if type(row.get(field)) is not bool:
                raise ValueError('Graph direction/kind not collected')
    for pin in pins.values():
        if (pin['scope'], pin['owner']) not in nodes:
            raise ValueError('Pin owner outside collected graph')
    for edge in interfaces['edges']:
        source = pins.get((edge['scope'], edge['source']))
        target = pins.get((edge['scope'], edge['target']))
        if source is None or target is None:
            raise ValueError('Connection endpoint outside collected graph')
        if source['output'] is not True or target['input'] is not True:
            raise ValueError('Observed connection direction is invalid')
    return nodes, pins


def pin_ref(pin):
    return f"{pin['scope']}/n{pin['owner']}.p{pin['id']}"


def hierarchy_bindings(interfaces):
    nodes, pins = graph_index(interfaces)
    mappings = {}
    markers = {}
    for row in interfaces.get('boundaries', []):
        if row['kind'] not in ('hierarchy', 'hierarchy_boundary'):
            raise ValueError('Unknown hierarchy relation')
        key = (row['parent_scope'], row['node_id'])
        hierarchy = nodes.get(key)
        if hierarchy is None or hierarchy['hierarchy'] is not True:
            raise ValueError('Boundary owner is not a collected hierarchy')
        if row['child_scope'] != f"{key[0]}/h{key[1]}":
            raise ValueError('Boundary child scope does not match hierarchy occurrence')
        target = markers if row['kind'] == 'hierarchy' else mappings
        if row['kind'] == 'hierarchy_boundary':
            external = pins.get((key[0], row['external_pin_id']))
            if external is None or external['owner'] != key[1]:
                raise ValueError('Boundary external pin owner mismatch')
            key = (key[0], row['external_pin_id'])
        if key in target:
            raise ValueError('Duplicate hierarchy boundary identity')
        target[key] = row
    result = []
    used_internal = set()
    for external in pins.values():
        owner = (external['scope'], external['owner'])
        if nodes[owner]['hierarchy'] is not True:
            continue
        evidence = mappings.get((external['scope'], external['id']))
        row = {'kind': 'hierarchy_boundary', 'external': pin_ref(external),
               'parent_scope': owner[0], 'node_id': owner[1],
               'child_scope': f"{owner[0]}/h{owner[1]}",
               'status': 'not_resolved', 'editable': False}
        internal = None if evidence is None else pins.get((row['child_scope'], evidence.get('internal_pin_id')))
        if owner not in markers or evidence is None:
            row['reason'] = 'boundary_pairing_not_collected'
        elif evidence.get('status') != 'native_pairing_collected' or not all(evidence.get(key) is True for key in IDENTITY_CHECKS):
            row['reason'] = 'native_boundary_identity_not_verified'
        elif internal is None or internal['owner'] != evidence.get('internal_node_id') or nodes[(internal['scope'], internal['owner'])]['hierarchy_pin'] is not True:
            row['reason'] = 'internal_endpoint_not_collected'
        elif not ((external['input'] and not external['output'] and internal['output'] and not internal['input'])
                  or (external['output'] and not external['input'] and internal['input'] and not internal['output'])):
            row['reason'] = 'boundary_direction_not_opposite'
        else:
            internal_key = (internal['scope'], internal['id'])
            if internal_key in used_internal:
                raise ValueError('Duplicate internal hierarchy endpoint')
            used_internal.add(internal_key)
            source, target = (external, internal) if external['input'] else (internal, external)
            row.update(status='matched_native_identity', internal=pin_ref(internal),
                       source=pin_ref(source), target=pin_ref(target),
                       direction='enter' if external['input'] else 'leave',
                       evidence={key: evidence[key] for key in IDENTITY_CHECKS})
        result.append(row)
    return {'bindings': result, 'matched': sum(row['status'] == 'matched_native_identity' for row in result),
            'unresolved': sum(row['status'] != 'matched_native_identity' for row in result)}


def signal_path(interfaces, source_ref, target_ref, max_segments=128):
    """One shortest observed path; never infer dependencies inside a block."""
    if interfaces.get('diagram_collected') is not True:
        raise ValueError('Diagram not collected')
    _, pins = graph_index(interfaces)
    references = {pin_ref(pin): pin for pin in pins.values()}
    if source_ref not in references or target_ref not in references:
        raise ValueError('Path endpoint is not a collected exact pin reference')
    if source_ref == target_ref:
        raise ValueError('Path endpoints must be distinct')
    if references[source_ref]['output'] is not True or references[target_ref]['input'] is not True:
        raise ValueError('Path requires an output source and input target')
    hierarchy = hierarchy_bindings(interfaces)
    adjacency = {}
    for index, edge in enumerate(interfaces['edges']):
        source = pin_ref(pins[(edge['scope'], edge['source'])])
        target = pin_ref(pins[(edge['scope'], edge['target'])])
        segment = {'kind': 'diagram_connection', 'source': source, 'target': target,
                   'evidence_record': f'connection:{index}', 'native_type': edge['type'], 'editable': False}
        adjacency.setdefault(source, []).append(segment)
    for row in hierarchy['bindings']:
        if row['status'] == 'matched_native_identity':
            segment = {key: row[key] for key in ('kind', 'source', 'target', 'direction')}
            segment['evidence_ref'] = 'boundary:' + row['external']
            adjacency.setdefault(row['source'], []).append(segment)
    parents = {source_ref: None}
    queue = deque([(source_ref, 0)])
    truncated = False
    while queue and target_ref not in parents:
        current, depth = queue.popleft()
        for segment in adjacency.get(current, []):
            following = segment['target']
            if following in parents:
                continue
            if depth >= max_segments:
                truncated = True
                continue
            parents[following] = (current, segment)
            queue.append((following, depth + 1))
    path = []
    if target_ref in parents:
        current = target_ref
        while parents[current] is not None:
            current, segment = parents[current]
            path.append(segment)
        path.reverse()
    return {'status': 'observed_static_path' if path else 'path_limit_reached' if truncated else 'no_path_in_collected_relations',
            'source': source_ref, 'target': target_ref, 'segments': path, 'editable': False,
            'complete_for_requested_pin_endpoints': bool(path),
            'path_selection': 'one shortest path; other paths may exist',
            'unresolved_hierarchy_boundaries': hierarchy['unresolved'],
            'coverage': {'diagram_connections': 'collected', 'hierarchy_boundaries': 'partial' if hierarchy['unresolved'] else 'collected',
                         'class_body_dataflow': 'not_collected', 'project_messages': 'not_collected',
                         'execution': 'not_collected', 'runtime_delivery': 'not_verified'}}
