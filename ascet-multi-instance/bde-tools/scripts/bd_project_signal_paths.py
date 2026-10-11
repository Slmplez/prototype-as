"""Join captured instance pin relations; never infer runtime message delivery."""
from collections import Counter, deque
import re

import bd_service as service
from bd_project_messages import analyze_messages, declaration_key, validate_instances
from bd_signal_interfaces import graph_index, hierarchy_bindings, pin_ref
from bd_class_body import instance_body_segments


DECLARATION_FIELDS = ('name', 'scope', 'message', 'imported', 'exported', 'send', 'receive', 'send_receive')


def project_signal_path(project, components, source, target, max_segments=128):
    if 'project_messages' not in project:
        raise ValueError('A project_messages observation is required')
    token = project.get('database_session_identity')
    if not isinstance(token, str) or not re.fullmatch('[0-9a-f]{32}', token):
        raise ValueError('Native database object identity is required for cross-component joins')
    if project.get('database_identity_basis') != 'native_dbAccess_and_dbInterface_object_identity':
        raise ValueError('Unsupported database identity evidence')
    from bd_project_tools import entities
    instances = {ref: row['fields'] for ref, row in entities(project).items()
                 if row['fields'].get('interface_kind') in ('project_module_instance', 'project_component_instance')}
    validate_instances(project['project_messages'], project['oid'])
    resolution = analyze_messages(project['project_messages'])
    contexts, refs, adjacency, accesses = {}, {}, {}, {}
    unresolved_boundaries = 0

    def endpoint(instance, ref):
        return {'instance': instance, 'ref': ref}

    def add_edge(left, right, evidence):
        adjacency.setdefault(left, []).append({**evidence,
            'source': endpoint(*left), 'target': endpoint(*right), 'editable': False})

    for instance_ref, record in components:
        if instance_ref in contexts:
            raise ValueError('Duplicate component observation for the same instance')
        instance = instances.get(instance_ref)
        if instance is None:
            raise ValueError('Unknown exact Project instance reference')
        if 'interfaces' not in record or record['oid'] != instance['definition_oid']:
            raise ValueError('Component observation does not match the instance definition')
        for field in ('database', 'ascet_process_epoch', 'session', 'database_session_identity', 'database_identity_basis'):
            if not project.get(field) or project[field] != record.get(field):
                raise ValueError('Incomparable component evidence: ' + field)
        data = record['interfaces']
        if data.get('diagram_collected') is not True:
            raise ValueError('Component pin graph was not collected')
        nodes, pins = graph_index(data)
        declarations = {row['alias']: row for row in data['models']}
        if len(declarations) != len(data['models']):
            raise ValueError('Duplicate component declaration alias')
        contexts[instance_ref] = {'record': record, 'instance': instance, 'models': declarations}
        for pin in pins.values():
            key = (instance_ref, pin_ref(pin))
            refs[key] = pin
            node = nodes[(pin['scope'], pin['owner'])]
            model = declarations.get(node.get('model_alias'))
            if model is not None and model.get('message') is True:
                declaration = (record['oid'], model['alias'])
                accesses.setdefault((instance_ref, declaration), []).append((key, pin, model))
        multiplicity = Counter(service.dump({k: row[k] for k in ('scope', 'source', 'target', 'type')})
                               for row in data['edges'])
        for index, edge in enumerate(data['edges']):
            left = (instance_ref, pin_ref(pins[(edge['scope'], edge['source'])]))
            right = (instance_ref, pin_ref(pins[(edge['scope'], edge['target'])]))
            add_edge(left, right, {'kind': 'diagram_connection', 'snapshot': record['snapshot'],
                'evidence_record': f'connection:{index}', 'native_type': edge['type'],
                'multiplicity': multiplicity[service.dump({k: edge[k] for k in ('scope', 'source', 'target', 'type')})]})
        hierarchy = hierarchy_bindings(data)
        unresolved_boundaries += hierarchy['unresolved']
        for row in hierarchy['bindings']:
            if row['status'] == 'matched_native_identity':
                add_edge((instance_ref, row['source']), (instance_ref, row['target']),
                    {'kind': 'hierarchy_boundary', 'snapshot': record['snapshot'],
                     'evidence_ref': 'boundary:' + row['external'], 'direction': row['direction']})

    blocked = []
    class_count = 0
    for child_ref, ctx in contexts.items():
        instance = ctx['instance']
        if instance.get('instance_kind') != 'Class':
            continue
        parent_ref = instance.get('parent_ref')
        parent = contexts.get(parent_ref)
        if parent is None:
            blocked.append({'instance': child_ref, 'reason': 'parent_Class_context_not_supplied'})
            continue
        segments = instance_body_segments(parent['record'], ctx['record'], instance)
        if not segments:
            blocked.append({'instance': child_ref, 'reason': 'Class_formal_body_access_not_collected'})
        for relation in segments:
            left = (parent_ref, relation['parent_pin'])
            right = (child_ref, relation['body_pin'])
            if relation['direction'] == 'body_to_parent':
                left, right = right, left
            add_edge(left, right, relation)
            class_count += 1
    chain_refs = {tuple(row['instance_chain']): ref for ref, row in instances.items()}
    for binding in resolution['bindings']:
        imported = binding['import']
        import_key = declaration_key(imported)
        import_contexts = [ref for ref, ctx in contexts.items() if ctx['record']['oid'] == import_key[0]]
        if not import_contexts:
            continue
        diagnostic = {'import': list(import_key), 'status': binding['status'],
                      'instance_resolution': binding['instance_resolution']}
        if (binding['status'] != 'unique_declaration_candidate'
                or binding['instance_resolution'] != 'bounded_owner_chains_collected'):
            blocked.append({**diagnostic, 'reason': 'declaration_or_instance_mapping_unresolved'})
            continue
        exported = binding['candidates'][0]
        export_key = declaration_key(exported)
        import_chains = binding['import_owner_chains']
        export_chains = binding['candidate_owner_chains'][0]
        if len(import_chains) != 1 or len(export_chains) != 1:
            blocked.append({**diagnostic, 'reason': 'instance_mapping_not_unique'})
            continue
        import_ref = chain_refs.get(tuple(import_chains[0]))
        export_ref = chain_refs.get(tuple(export_chains[0]))
        if import_ref not in contexts or export_ref not in contexts:
            blocked.append({**diagnostic, 'reason': 'component_observation_not_supplied'})
            continue
        for ref, declaration in ((import_ref, imported), (export_ref, exported)):
            local = contexts[ref]['models'].get(declaration['alias'])
            if local is None or any(local.get(k) != declaration.get(k) for k in DECLARATION_FIELDS):
                raise ValueError('Project and component message declarations disagree')
            if 'global_label' in local and local['global_label'] != declaration.get('global_label'):
                raise ValueError('Project and component message global labels disagree')
        pairs = [(import_ref, imported, export_ref, exported), (export_ref, exported, import_ref, imported)]
        linked = 0
        for sender_ref, sender, receiver_ref, receiver in pairs:
            if not (sender['send'] or sender['send_receive']) or not (receiver['receive'] or receiver['send_receive']):
                continue
            sender_pins = accesses.get((sender_ref, declaration_key(sender)), [])
            receiver_pins = accesses.get((receiver_ref, declaration_key(receiver)), [])
            for left, send_pin, _ in sender_pins:
                if send_pin['input'] is not True or send_pin.get('set_access') is not True:
                    continue
                for right, receive_pin, _ in receiver_pins:
                    if receive_pin['output'] is not True or receive_pin.get('get_access') is not True:
                        continue
                    add_edge(left, right, {'kind': 'message_binding', 'project_snapshot': project['snapshot'],
                        'project_oid': project['oid'], 'import': list(import_key), 'export': list(export_key),
                        'sender_declaration': list(declaration_key(sender)),
                        'receiver_declaration': list(declaration_key(receiver)),
                        'evidence': 'unique_captured_candidate_and_native_selection',
                        'candidate_oracle': 'not_independently_verified', 'runtime_delivery': 'not_verified'})
                    linked += 1
        if not linked:
            blocked.append({**diagnostic, 'reason': 'complementary_message_access_not_collected'})

    source_key = (source['instance'], source['ref'])
    target_key = (target['instance'], target['ref'])
    if source_key not in refs or target_key not in refs or source_key == target_key:
        raise ValueError('Path endpoints must be distinct collected exact instance pin references')
    if refs[source_key]['output'] is not True or refs[target_key]['input'] is not True:
        raise ValueError('Path requires an output source and input target')
    parents = {source_key: None}
    queue = deque([(source_key, 0)])
    truncated = False
    while queue and target_key not in parents:
        current, depth = queue.popleft()
        for segment in adjacency.get(current, []):
            following = (segment['target']['instance'], segment['target']['ref'])
            if following in parents:
                continue
            if depth >= max_segments:
                truncated = True
                continue
            parents[following] = (current, segment)
            queue.append((following, depth + 1))
    path = []
    current = target_key
    if current in parents:
        while parents[current] is not None:
            current, segment = parents[current]
            path.append(segment)
        path.reverse()
    return {'status': 'observed_declared_static_path' if path else 'path_limit_reached' if truncated else 'no_path_in_collected_relations',
        'source': source, 'target': target, 'segments': path, 'editable': False,
        'complete_for_requested_pin_endpoints': bool(path), 'complete_signal_path': False,
        'path_selection': 'one shortest path in captured relations; other paths may exist',
        'consistency': 'non_atomic_observations', 'blocked_bindings': blocked,
        'observations': [{'instance': ref, 'snapshot': ctx['record']['snapshot'],
                          'instance_chain': ctx['instance']['instance_chain']} for ref, ctx in contexts.items()],
        'coverage': {'native_database_object_identity': 'matched', 'database_reload_lifecycle': 'not_verified',
            'hierarchy_boundaries': 'partial' if unresolved_boundaries else 'collected',
            'independent_compatibility_candidate_oracle': 'not_verified', 'class_formal_body_boundaries': class_count,
            'class_body_dataflow': 'captured diagram edges only; no inferred argument-to-return behavior',
            'execution': 'not_collected', 'runtime_delivery': 'not_verified'}}


def inspect(project, args):
    components = [(item['instance'], service.load_record(item['snapshot'], 's_', 'snapshots'))
                  for item in args['components']]
    try:
        return project_signal_path(project, components, args['source'], args['target'])
    except (ValueError, KeyError, TypeError) as error:
        service.fail('INCOMPARABLE_FLOW', str(error))
