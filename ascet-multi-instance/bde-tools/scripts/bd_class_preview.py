"""Read-only Class plans and native recovery guards; never actual edit diff."""
from bd_class_selector import caller_pin_targets, select_formal


def deletion_plan(observed, operation):
    state = observed['observation']
    selector = operation['selector']
    method, formal = select_formal(state['signature'], selector)
    definition_oid = state['signature']['oid']
    owners = observed['owners']
    if len({owner['oid'] for owner in owners}) != len(owners):
        raise ValueError('Duplicate observed Class owner')
    definitions = [owner for owner in owners if owner['oid'] == definition_oid]
    if len(definitions) != 1 or definitions[0]['component'] != state['signature']['path']:
        raise ValueError('Class definition owner differs from its signature')
    bindings = caller_pin_targets(state['discovery'], selector)
    by_owner = {owner['oid']: owner for owner in owners}
    scoped = {}
    for binding in bindings:
        owner = by_owner.get(binding['oid'])
        if owner is None or owner['component'] != binding['component'] or binding['diagram'] not in owner['scopes']:
            raise ValueError('Caller formal pin is outside the observed owner scopes')
        scoped.setdefault((binding['oid'], binding['diagram']), []).append(binding)
    model_ref = 'm_' + formal['alias'].removeprefix('bytes:')
    if not formal['alias'].startswith('bytes:'):
        raise ValueError('Exact byte formal identity required')
    resources = []
    for owner in owners:
        removed_owner_pins = 0
        for scope, graph in sorted(owner['scopes'].items()):
            entries = {row['ref']: row for row in graph['entries']}
            if len(entries) != len(graph['entries']) or graph['diagram'] != scope:
                raise ValueError('Scope identity or native row identities are ambiguous')
            nodes, pins, models, sibling_pins = set(), set(), set(), set()
            if owner['oid'] == definition_oid:
                models = {ref for ref, row in entries.items() if row['kind'] == 'model' and ref == model_ref}
                nodes = {ref for ref, row in entries.items() if row['kind'] == 'node' and row.get('model_ref') == model_ref}
                pins = {ref for ref, row in entries.items() if row['kind'] == 'pin' and row['owner'] in nodes}
            else:
                for binding in scoped.get((owner['oid'], scope), []):
                    pin = entries.get(binding['pin'])
                    node_ref = 'n' + str(binding['node'])
                    node = entries.get(node_ref)
                    if (pin is None or pin['kind'] != 'pin' or pin['owner'] != node_ref or
                            node is None or node['kind'] != 'node' or node.get('model_ref') != binding['model_ref'] or
                            binding['pin'] not in node['pins']):
                        raise ValueError('Exact caller formal pin/node/model binding changed')
                    pins.add(binding['pin'])
                for caller in state['discovery']['callers']:
                    if caller['oid'] != owner['oid']:
                        continue
                    for caller_scope in caller['scopes']:
                        if caller_scope['diagram'] != scope:
                            continue
                        for occurrence in caller_scope['occurrences']:
                            for pin in occurrence['pins']:
                                ref = 'p' + str(pin['id'])
                                if pin['method_alias'] == method['alias'] and ref not in pins:
                                    if ref not in entries or entries[ref]['kind'] != 'pin':
                                        raise ValueError('Remaining callable pin is not observed')
                                    sibling_pins.add(ref)
            for ref in pins:
                pin = entries[ref]
                if pin['owner'] not in entries or ref not in entries[pin['owner']]['pins']:
                    raise ValueError('Formal pin ownership is inconsistent')
            edges = {ref for ref, row in entries.items() if row['kind'] == 'edge' and
                     (row['source'] in pins or row['target'] in pins)}
            retained_edges = {ref for ref, row in entries.items() if row['kind'] == 'edge' and ref not in edges and
                              (row['source'] in sibling_pins or row['target'] in sibling_pins)}
            sequence_candidates = sorted(ref for ref in sibling_pins if entries[ref].get('sequence') is None) if selector['slot'] == 'return' else []
            if pins or models:
                resources.append({'component': owner['component'], 'oid': owner['oid'], 'diagram': scope,
                    'remove': {'nodes': sorted(nodes), 'pins': sorted(pins), 'edges': sorted(edges), 'models': sorted(models)},
                    'layout_candidates': {'retained_pins': sorted(sibling_pins), 'retained_edges': sorted(retained_edges)},
                    'possible_unassigned_sequence_pins': sequence_candidates})
            removed_owner_pins += len(pins)
        if removed_owner_pins == 0:
            raise ValueError('This Class deletion requires a fully observed placed formal pin closure in every owner')
    return {'selector': selector, 'formal': {'name': formal['name'], 'alias': formal['alias'], 'slot': formal['slot']},
        'resources': resources, 'planned_removal_counts': {key: sum(len(row['remove'][key]) for row in resources)
            for key in ('nodes', 'pins', 'edges', 'models')},
        'actual_effects': 'not_observed; read-only preview',
        'layout': 'candidate pins/routes only; actual positions and sequence identities require apply observations',
        'sequence_policy': operation['sequence_policy'],
        'not_checked': ['execution-time prepare guards', 'effective instance values',
            'external type content', 'future GUI changes', 'runtime scheduling']}


def inverse_plan(patch):
    if patch.get('status') != 'retained_applied' or patch.get('actual_effects') == 'not_observed':
        raise ValueError('Complete actual applied Class patch required')
    return {'planned_definition_effect': {'before': patch['definition_effect']['after'],
            'after': patch['definition_effect']['before']},
        'planned_resource_effects': [{**row, 'differences': [
            {**delta, 'before': delta['after'], 'after': delta['before']} for delta in row['differences']]}
            for row in patch['resource_effects']],
        'planned_configuration_effects': [{**row, 'before_sha256': row['after_sha256'], 'after_sha256': row['before_sha256']}
            for row in patch.get('configuration_effects', [])],
        'actual_effects': 'not_observed; planned inverse of durable actual edit diff',
        'restoration': 'retained original objects required; no reconstruction or redo'}


def recovery_checks(owners, probes, inverse):
    if not isinstance(probes, list) or len(probes) != len(owners):
        raise ValueError('Complete per-owner native recovery probes required')
    by_oid = {row['oid']: row for row in probes}
    if len(by_oid) != len(probes) or set(by_oid) != {owner['oid'] for owner in owners}:
        raise ValueError('Native recovery probe owner roster differs')
    reasons, signatures, materials = [], [], []
    for owner in owners:
        probe = by_oid[owner['oid']]
        if probe['component'] != owner['component'] or set(probe['checks']) != {'signature', 'material'}:
            raise ValueError('Native recovery owner identity or check profile differs')
        signature, material = probe['checks']['signature'], probe['checks']['material']
        for row, bools in ((signature, ('registry_present', 'record_present', 'selector_matches',
                'original_formal_binding_matches', 'after_signature_identity_matches')),
                (material, ('registry_present', 'record_present', 'selector_matches', 'native_owner_matches',
                'specification_matches', 'stored_source_matches', 'original_object_identities_match',
                'current_graphical_fields_observed', 'original_graphical_fields_checkpoint_present',
                'original_graphical_fields_match', 'original_binding_checkpoint_present',
                'original_full_collections_match', 'after_binding_checkpoint_present', 'after_native_bindings_match'))):
            if (any(type(row[key]) is not bool for key in bools) or type(row['retained_records']) is not int or
                    row['retained_records'] < 0 or type(row['capacity']) is not int or row['capacity'] != 8 or
                    not isinstance(row['state'], str) or
                    row['record_present'] and (not row['registry_present'] or row['retained_records'] == 0) or
                    not row['registry_present'] and row['retained_records'] != 0):
                raise ValueError('Invalid native recovery probe fields')
        if (material.get('detached_fields_profile') != 'collected_graphics_v1' or
                not material['current_graphical_fields_observed'] or
                material['original_graphical_fields_match'] and not material['original_graphical_fields_checkpoint_present']):
            raise ValueError('Incomplete detached graphical field probe')
        if (material.get('native_binding_profile') != 'native_collections_v1' or
                material['original_full_collections_match'] and not material['original_binding_checkpoint_present'] or
                material['after_native_bindings_match'] and not material['after_binding_checkpoint_present'] or
                material['after_binding_checkpoint_present'] and not material['original_binding_checkpoint_present']):
            raise ValueError('Incomplete native collection binding probe')
        signatures.append(signature)
        materials.append(material)
        if inverse:
            if not material['record_present'] or material['state'] != 'applied':
                reasons.append({'code': 'NATIVE_RECOVERY_UNAVAILABLE', 'oid': owner['oid'], 'resource': 'material', 'state': material['state']})
            elif not all(material[key] for key in ('selector_matches', 'native_owner_matches', 'specification_matches',
                    'stored_source_matches', 'original_object_identities_match',
                    'original_graphical_fields_checkpoint_present', 'original_graphical_fields_match',
                    'original_binding_checkpoint_present', 'original_full_collections_match',
                    'after_binding_checkpoint_present', 'after_native_bindings_match')):
                reasons.append({'code': 'NATIVE_RECOVERY_CONFLICT', 'oid': owner['oid'], 'resource': 'material'})
        elif material['record_present']:
            reasons.append({'code': 'NATIVE_RECOVERY_ALREADY_RETAINED', 'oid': owner['oid'], 'resource': 'material'})
    if any(row != signatures[0] for row in signatures) or any(
            (row['registry_present'], row['retained_records'], row['capacity']) !=
            (materials[0]['registry_present'], materials[0]['retained_records'], materials[0]['capacity']) for row in materials):
        raise ValueError('Native recovery registries changed during non-atomic probe')
    signature = signatures[0]
    if inverse:
        if not signature['record_present'] or signature['state'] != 'added':
            reasons.append({'code': 'NATIVE_RECOVERY_UNAVAILABLE', 'resource': 'signature', 'state': signature['state']})
        elif not all(signature[key] for key in ('selector_matches', 'original_formal_binding_matches', 'after_signature_identity_matches')):
            reasons.append({'code': 'NATIVE_RECOVERY_CONFLICT', 'resource': 'signature'})
    else:
        if signature['record_present']:
            reasons.append({'code': 'NATIVE_RECOVERY_ALREADY_RETAINED', 'resource': 'signature'})
        if signature['retained_records'] + 1 > signature['capacity']:
            reasons.append({'code': 'NATIVE_RECOVERY_CAPACITY', 'resource': 'signature', 'required_slots': 1})
        if materials[0]['retained_records'] + len(owners) > materials[0]['capacity']:
            reasons.append({'code': 'NATIVE_RECOVERY_CAPACITY', 'resource': 'material', 'required_slots': len(owners)})
    return {'profile': 'class_native_recovery_v3', 'observed': 'non_atomic; no allocation or release',
        'signature': signature, 'owners': probes, 'refusal_reasons': reasons,
        'native_guards_match': not bool(reasons), 'execution_recheck_required': True}
