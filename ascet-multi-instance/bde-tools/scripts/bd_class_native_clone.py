"""Validate private native graph evidence without granting model write authority."""
from copy import deepcopy
import re
from bd_class_native_bindings import compare_checkpoints
from bd_edit_journal import fingerprint
from bd_collection_merge import merge_order


def compare_graph_clones(observed, rows, checkpoints, mode):
    if mode not in ('inspect', 'clone'):
        raise ValueError('Exact native graph observation mode required')
    compare_checkpoints(observed, checkpoints)
    owners = {row['oid']: row for row in observed['owners']}
    if (type(rows) is not list or len(rows) != len(owners) or
            any(type(row) is not dict or row.get('oid') not in owners for row in rows) or
            len({row['oid'] for row in rows}) != len(rows)):
        raise ValueError('Complete unique private graph owner roster required')
    expected = {row['oid']: row['checks'] for row in checkpoints}
    total = dict(owners=len(owners), inspected_objects=0, copied_objects=0,
                 keyed_members=0, verified_graph_fields=0, correspondence_negatives=0,
                 database_boundaries=0, presentation_boundaries=0, clone_available_owners=0)

    def count(value, minimum=0):
        if type(value) is not int or not minimum <= value <= 100000:
            raise ValueError('Bounded typed native graph count required')
        return value

    def classes(value):
        if (type(value) is not dict or any(type(key) is not str or not key for key in value)):
            raise ValueError('Exact native class/count mapping required')
        return sum(count(number, 1) for number in value.values())

    for row in rows:
        owner, value = owners[row['oid']], row.get('checks')
        if row.get('component') != owner['component'] or type(value) is not dict:
            raise ValueError('Native graph owner binding differs')
        profile = 'native_graph_clone_v1' if mode == 'clone' else 'native_graph_clone_inspection_v1'
        if (value.get('profile') != profile or value.get('mode') != mode or
                value.get('write_authorized') is not False or
                type(value.get('model_setters_called')) is not int or value['model_setters_called'] != 0):
            raise ValueError('Native graph profile/mode/authority differs')
        inspected = count(value.get('inspected_objects'), 1)
        keyed = count(value.get('keyed_members'), 1)
        copied = count(value.get('copied_objects'))
        if keyed != expected[row['oid']]['keyed_member_count'] or inspected < keyed:
            raise ValueError('Private graph keyed coverage differs from complete native checkpoint')
        roster = value.get('classes')
        if classes(roster) != inspected:
            raise ValueError('Native inspected class/count coverage differs')
        boundaries = []
        for field in ('database_boundaries', 'presentation_boundaries'):
            table = value.get(field)
            number = classes(table)
            if any(roster.get(name) != n for name, n in table.items()):
                raise ValueError('Shared boundary counts differ from inspected roster')
            boundaries.append(number)
            total[field] += number
        if set(value['database_boundaries']) & set(value['presentation_boundaries']):
            raise ValueError('Ambiguous native graph boundary family')
        unsupported, unreachable = value.get('unsupported'), value.get('unreachable_members')
        if (type(unsupported) is not dict or any(type(name) is not str or name not in roster or
                type(path) is not str or not path for name, path in unsupported.items()) or
                type(unreachable) is not list or any(type(key) is not str or not key for key in unreachable) or
                len(set(unreachable)) != len(unreachable) or len(unreachable) > keyed):
            raise ValueError('Exact unsupported/unreachable native material summary required')
        available = not unsupported and not unreachable
        if value.get('clone_available') is not available:
            raise ValueError('Native clone availability differs from actual audited coverage')
        total['clone_available_owners'] += int(available)
        if mode == 'inspect':
            if copied != 0 or any(field in value for field in
                    ('cloned_keyed_members', 'initial_graph_fields_match', 'correspondence_negatives')):
                raise ValueError('Inspection cannot certify cloned native material')
        else:
            if not available or copied != inspected - sum(boundaries) or copied < keyed:
                raise ValueError('Complete private graph copy coverage required')
            for field in ('initial_graph_fields_match', 'public_projection_matches',
                          'original_unchanged', 'clone_kept_private'):
                if value.get(field) is not True:
                    raise ValueError('Original/private native graph verification failed')
            if (count(value.get('cloned_keyed_members'), 1) != keyed or
                    count(value.get('correspondence_negatives')) != 6 or
                    type(value.get('model_store_calls')) is not int or value['model_store_calls'] != 0):
                raise ValueError('Native correspondence/refusal/store evidence differs')
            fields = value.get('verified_graph_fields')
            if type(fields) is not int or not keyed <= fields <= 10000000:
                raise ValueError('Complete bounded graphical field mapping required')
            total['verified_graph_fields'] += fields
            total['correspondence_negatives'] += value['correspondence_negatives']
        total['inspected_objects'] += inspected
        total['copied_objects'] += copied
        total['keyed_members'] += keyed
    return total


def compare_graph_splices(observed, rows, checkpoints, projections):
    if type(rows) is not list or any(type(row) is not dict or type(row.get('checks')) is not dict for row in rows):
        raise ValueError('Exact private splice owner summaries required')
    clones = [{**row, 'checks': row['checks'].get('clone')} for row in rows]
    total = {'clone': compare_graph_clones(observed, clones, checkpoints, 'clone'),
             'cases': 0, 'incident_edge_deletions': 0, 'endpoint_dictionary_checks': 0,
             'field_changes': 0, 'collection_changes': 0, 'conflict_negatives': 0,
             'same_collection_cases': 0, 'no_same_collection_peer': 0, 'ordered_splices': 0,
             'prepared_conflict_negatives': 0, 'dependency_conflict_negatives': 0,
             'dependency_bindings': 0, 'endpoint_dependencies': 0,
             'partial_fault_cases': 0, 'recovery_conflict_negatives': 0, 'execution_replay_negatives': 0,
             'fault_execution_primitives': 0, 'fault_recovery_cells': 0,
             'prepare_current_conflict_negatives': 0, 'primitive_duplicate_negatives': 0, 'primitive_skip_negatives': 0}
    expected_projection = {row['oid']: row['scopes'] for row in projections}
    owners = {row['oid']: row for row in observed['owners']}

    def count(value, minimum=0):
        if type(value) is not int or not minimum <= value <= 100000:
            raise ValueError('Bounded typed private splice count required')
        return value

    def same(left, right):
        if fingerprint(left) != fingerprint(right):
            raise ValueError('Private splice projection/identity closure differs')

    for row in rows:
        value, owner = row['checks'], owners[row['oid']]
        version = value.get('profile')
        if (version not in ('native_private_graph_splice_v1', 'native_private_graph_splice_v2',
                            'native_private_graph_splice_v3', 'native_private_graph_splice_v4',
                            'native_private_graph_splice_v5', 'native_private_graph_splice_v6') or
                value.get('clone_kept_private') is not True or value.get('write_authorized') is not False or
                value.get('production_inverse_available') is not False):
            raise ValueError('Private splice profile/authority differs')
        for field in ('model_setters_called', 'model_store_calls'):
            if type(value.get(field)) is not int or value[field] != 0:
                raise ValueError('Private splice dispatched model mutation')
        expected = {}
        for scope, graph in owner['scopes'].items():
            edges = [entry for entry in graph['entries'] if entry['kind'] == 'edge']
            for pin in [entry for entry in graph['entries'] if entry['kind'] == 'pin']:
                incident = sorted(scope + '/' + edge['ref'] for edge in edges
                                  if pin['ref'] in (edge['source'], edge['target']))
                if incident:
                    expected[scope + '/' + pin['ref']] = (scope, pin['ref'], incident)
        cases = value.get('cases')
        if (type(cases) is not list or len(cases) != count(value.get('case_count')) or
                len(cases) != len(expected) or any(type(case) is not dict or
                case.get('pin_key') not in expected for case in cases) or
                len({case['pin_key'] for case in cases}) != len(cases)):
            raise ValueError('Complete unique connected-pin private splice cases required')
        calls = 0
        for case in cases:
            scope, pin_ref, incident = expected[case['pin_key']]
            same(case.get('scope'), scope)
            if type(case.get('edge_keys')) is not list:
                raise ValueError('Exact private incident edge identity roster required')
            same(sorted(case['edge_keys']), incident)
            n = count(case.get('incident_edges'), 1)
            same(n, len(incident))
            endpoints = count(case.get('endpoint_dictionaries'), 1)
            if not 1 <= endpoints <= 2 * n:
                raise ValueError('Complete private endpoint dictionary closure required')
            for field in ('independent_field_preserved', 'original_references_restored', 'original_unchanged'):
                if case.get(field) is not True:
                    raise ValueError('Private exact inverse/independent field verification failed')
            negatives = 2 if version == 'native_private_graph_splice_v1' else 3
            same(count(case.get('conflict_negatives')), negatives)
            if version in ('native_private_graph_splice_v3', 'native_private_graph_splice_v4',
                           'native_private_graph_splice_v5', 'native_private_graph_splice_v6'):
                prepared = 4 if version == 'native_private_graph_splice_v3' else 8
                same(count(case.get('prepared_conflict_negatives')), prepared)
                total['prepared_conflict_negatives'] += prepared
            elif 'prepared_conflict_negatives' in case:
                raise ValueError('Older private profile cannot claim prepared-plan conflict coverage')
            fields, collections = count(case.get('field_changes'), 1), count(case.get('collection_changes'), 1)
            changes = case.get('changes')
            if (type(changes) is not list or len(changes) != fields + collections or
                    any(type(entry) is not dict or entry.get('kind') not in ('fields', 'collection') or
                    type(entry.get('native_class')) is not str or not entry['native_class'] for entry in changes)):
                raise ValueError('Complete actual private field/collection diff required')
            same(sum(entry['kind'] == 'fields' for entry in changes), fields)
            for entry in changes:
                if entry['kind'] == 'fields':
                    count(entry.get('field_index'), 1)
                    if type(entry.get('field_name')) is not str or not entry['field_name']:
                        raise ValueError('Exact native graphical field name required')
                elif entry.get('field_index') is not None or entry.get('field_name') is not None:
                    raise ValueError('Collection diff cannot claim a graphical field')
            before = expected_projection[row['oid']]
            same(case.get('before_projection'), before)
            same(case.get('restored_projection'), before)
            deleted = deepcopy(before)
            selected = next(item for item in deleted if item['diagram'] == scope)
            pin_id = int(pin_ref[1:])
            for node in selected['nodes']:
                node['pins'] = [pin for pin in node['pins'] if pin['id'] != pin_id]
            selected['edges'] = [edge for edge in selected['edges'] if pin_id not in (edge['source'], edge['target'])]
            same(case.get('deleted_projection'), deleted)
            preserved = deepcopy(before)
            independent_key = case.get('independent_node_key')
            eligible = {scope_name + '/' + entry['ref']: (scope_name, int(entry['ref'][1:]))
                        for scope_name, graph in owner['scopes'].items() for entry in graph['entries']
                        if entry['kind'] == 'node'}
            if independent_key not in eligible:
                raise ValueError('Exact separate visible independent node required')
            independent_scope, node_id = eligible[independent_key]
            pin_owner = next(entry['owner'] for entry in owner['scopes'][scope]['entries'] if entry['ref'] == pin_ref)
            if independent_key == scope + '/' + pin_owner:
                raise ValueError('Independent modification belongs to the deleted-pin owner')
            independent = next(node for item in preserved if item['diagram'] == independent_scope
                               for node in item['nodes'] if node['id'] == node_id)
            same(case.get('independent_x_before'), independent['anchor'][0])
            same(case.get('independent_x_after'), independent['anchor'][0] + 7)
            independent['anchor'][0] += 7
            independent['position'][0] += 7
            same(case.get('preserved_projection'), preserved)
            inverse_mutations = fields + collections
            if version != 'native_private_graph_splice_v1':
                ordered = case.get('ordered_plans')
                ordered_count = sum(entry['kind'] == 'collection' and entry['native_class'] == 'OrderedCollection'
                                    for entry in changes)
                splice_count = compare_private_order_plans(ordered)
                same(len(ordered), ordered_count)
                inverse_mutations = fields + collections - ordered_count + splice_count
                same(count(case.get('inverse_mutations')), inverse_mutations)
                if version in ('native_private_graph_splice_v4', 'native_private_graph_splice_v5', 'native_private_graph_splice_v6'):
                    same(count(case.get('dependency_conflict_negatives')), 2)
                    total['dependency_conflict_negatives'] += 2
                    dependency_keys = {scope + '/' + entry[field] for entry in owner['scopes'][scope]['entries']
                                 if entry['kind'] == 'edge' and scope + '/' + entry['ref'] in incident
                                 for field in ('source', 'target')}
                    endpoint_keys = case.get('endpoint_dependency_keys')
                    if (type(endpoint_keys) is not list or any(type(key) is not str for key in endpoint_keys) or
                            len(endpoint_keys) != len(set(endpoint_keys)) or set(endpoint_keys) != dependency_keys):
                        raise ValueError('Exact incident native endpoint dependency roster required')
                    dependencies = case.get('dependency_bindings')
                    if (type(dependencies) is not list or any(type(key) is not str for key in dependencies) or
                            len(dependencies) != len(set(dependencies)) or
                            not {plan['binding_key'] for plan in ordered}.issubset(dependencies)):
                        raise ValueError('Exact ancestor/endpoint keyed dependency bindings required')
                    scope_bindings = {name + '|children' for name in owner['scopes']}
                    node_keys = {name + '/' + entry['ref'] for name, graph in owner['scopes'].items()
                                 for entry in graph['entries'] if entry['kind'] == 'node'}
                    for binding in dependencies:
                        if binding in scope_bindings or binding.endswith('|ports') and binding[:-6] in node_keys:
                            continue
                        if binding.endswith('|pins') and '/port/' in binding:
                            node_key, alias = binding[:-5].rsplit('/port/', 1)
                            if node_key in node_keys and alias:
                                continue
                        raise ValueError('Foreign native ancestor dependency binding')
                    for key in dependency_keys:
                        pin = next(entry for entry in owner['scopes'][scope]['entries']
                                   if scope + '/' + entry['ref'] == key)
                        node_key = scope + '/' + pin['owner']
                        if node_key + '|ports' not in dependencies or not any(
                                binding.startswith(node_key + '/port/') and binding.endswith('|pins')
                                for binding in dependencies):
                            raise ValueError('Native endpoint omitted its exact node/port ancestry')
                    for name in {key.rsplit('/', 1)[0] for key in dependency_keys}:
                        while True:
                            if name + '|children' not in dependencies:
                                raise ValueError('Native dependency omitted a scope ancestor')
                            if name == 'Main':
                                break
                            name = name.rsplit('/', 1)[0]
                    total['dependency_bindings'] += len(dependencies)
                    total['endpoint_dependencies'] += len(dependency_keys)
                peer = compare_private_peer_merge(case, owner, before, deleted, fields, collections)
                calls += peer['calls']
                total['same_collection_cases'] += int(peer['tested'])
                total['no_same_collection_peer'] += int(not peer['tested'])
                total['ordered_splices'] += splice_count + peer['ordered_splices']
                if version in ('native_private_graph_splice_v5', 'native_private_graph_splice_v6'):
                    faults = compare_private_faults(case, value['clone'], version)
                    for field, number in faults.items():
                        total[field] += number
            calls += 4 * n + 2 + inverse_mutations
            total['cases'] += 1
            total['incident_edge_deletions'] += n
            total['endpoint_dictionary_checks'] += endpoints
            total['field_changes'] += fields
            total['collection_changes'] += collections
            total['conflict_negatives'] += negatives
        same(count(value.get('private_forward_restore_calls')), calls)
    return total


def compare_private_order_plans(plans):
    if (type(plans) is not list or any(type(plan) is not dict or
            type(plan.get('binding_key')) is not str or not plan['binding_key'] for plan in plans) or
            len({plan['binding_key'] for plan in plans}) != len(plans)):
        raise ValueError('Complete unique private keyed order plans required')
    count = 0
    for plan in plans:
        expected = merge_order(plan.get('before'), plan.get('after'), plan.get('current'))
        if expected['compatible'] is not True or fingerprint(plan.get('merged')) != fingerprint(expected['merged']):
            raise ValueError('Private current native order plan differs from three-way value kernel')
        steps = [[step['op'], step['index'] + 1, step['ref']] for step in expected['splices']]
        if fingerprint(plan.get('splices')) != fingerprint(steps):
            raise ValueError('Private exact one-based native splice plan differs')
        count += len(steps)
    return count


def compare_private_faults(case, clone, version):
    rows = case.get('fault_cases')
    if type(rows) is not list or len(rows) != 3 or any(type(row) is not dict for row in rows):
        raise ValueError('Three actual primitive completion fault cases required')
    primitives = rows[0].get('primitive_count')
    if type(primitives) is not int or not 3 <= primitives <= 100000:
        raise ValueError('Exact bounded private primitive execution count required')
    expected = [1, (primitives + 1) // 2, primitives]
    execution, recovery = 0, 0
    skips = 0
    for row, position in zip(rows, expected):
        for field, number in (('primitive_count', primitives), ('fault_after', position), ('executed', position),
                ('recovered', 0), ('current_checkpoint_objects', clone['copied_objects']),
                ('current_checkpoint_fields', clone['verified_graph_fields']), ('model_setters_called', 0),
                ('recovery_conflict_negatives', 1), ('replay_negatives', 2)):
            if type(row.get(field)) is not int or row[field] != number:
                raise ValueError('Private partial execution/retained CURRENT coverage differs')
        if row.get('state') != 'partial':
            raise ValueError('Actual native partial state required')
        if row.get('desired_result_verified') is not (position == primitives):
            raise ValueError('Final private primitive desired-state verification required')
        for field in ('native_material_retained', 'actual_observation_complete',
                      'independent_post_fault_field_preserved', 'complete_current_refs_restored'):
            if row.get(field) is not True:
                raise ValueError('Retained private CURRENT or independent field recovery failed')
        for field in ('durable_current_wal', 'write_authorized'):
            if row.get(field) is not False:
                raise ValueError('Private in-memory recovery cannot claim durable or production authority')
        if version == 'native_private_graph_splice_v6':
            expected_skip = int(position + 2 <= primitives)
            for field, number in (('prepare_current_conflict_negatives', 1), ('primitive_duplicate_negatives', 1),
                                  ('primitive_skip_negatives', expected_skip)):
                if type(row.get(field)) is not int or row[field] != number:
                    raise ValueError('Private CURRENT preparation/index replay guard coverage differs')
            skips += expected_skip
        fields, collections = row.get('actual_field_changes'), row.get('actual_collection_changes')
        if (type(fields) is not int or not 0 <= fields <= case['field_changes'] or
                type(collections) is not int or not 0 <= collections <= case['collection_changes'] or
                fields + collections == 0 or type(row.get('recovery_count')) is not int or
                row['recovery_count'] != fields + collections):
            raise ValueError('Complete actual CURRENT-to-partial diff and recovery cells required')
        execution += position
        recovery += fields + collections
    for field, expected_number in (('fault_execution_primitives', execution), ('fault_recovery_cells', recovery)):
        if type(case.get(field)) is not int or case[field] != expected_number:
            raise ValueError('Exact private fault primitive/recovery cell counters required')
    current = deepcopy(case['deleted_projection'])
    scope, ref = case['independent_node_key'].rsplit('/', 1)
    node = next(node for item in current if item['diagram'] == scope for node in item['nodes'] if node['id'] == int(ref[1:]))
    node['anchor'][0] += 7
    node['position'][0] += 7
    for field in ('current_projection', 'current_restored_projection'):
        if fingerprint(case.get(field)) != fingerprint(current):
            raise ValueError('Private CURRENT public projection/independent field differs')
    totals = {'partial_fault_cases': len(rows), 'recovery_conflict_negatives': len(rows),
            'execution_replay_negatives': 2 * len(rows), 'fault_execution_primitives': execution,
            'fault_recovery_cells': recovery}
    if version == 'native_private_graph_splice_v6':
        totals.update(prepare_current_conflict_negatives=len(rows), primitive_duplicate_negatives=len(rows),
                      primitive_skip_negatives=skips)
    return totals


def compare_private_peer_merge(case, owner, before, deleted, fields, collections):
    peer = case.get('peer_merge')
    if type(peer) is not dict or type(peer.get('tested')) is not bool:
        raise ValueError('Explicit same-parent independent deletion verification required')
    candidates = peer.get('eligible_keys')
    scope, primary = case['scope'], case['pin_key']
    graph = owner['scopes'][scope]
    pins = {scope + '/' + entry['ref']: entry for entry in graph['entries'] if entry['kind'] == 'pin'}
    parent = pins[primary]['owner']
    edges = [entry for entry in graph['entries'] if entry['kind'] == 'edge']
    primary_plans = [plan for plan in case['ordered_plans'] if primary in plan['before']]
    if len(primary_plans) != 1:
        raise ValueError('One exact primary pin collection binding required')
    siblings = set(primary_plans[0]['before']) - {primary}
    expected_visible = {key for key in siblings if key in pins and pins[key]['owner'] == parent and
                        not any(pins[key]['ref'] in (edge['source'], edge['target']) for edge in edges)}
    if (type(candidates) is not list or any(type(key) is not str for key in candidates) or
            len(candidates) != len(set(candidates)) or
            any(type(key) is not str or not re.fullmatch(re.escape(scope) + r'/p[0-9]+', key) or
                key not in siblings or key in pins and (pins[key]['owner'] != parent or
                any(pins[key]['ref'] in (edge['source'], edge['target']) for edge in edges)) for key in candidates) or
            {key for key in candidates if key in pins} != expected_visible):
        raise ValueError('Exact disconnected same-parent private peer roster required')
    if not peer['tested']:
        if candidates or peer.get('skip_reason') != 'no_unconnected_same_port_pin' or type(peer.get('probe_mutations')) is not int or peer['probe_mutations'] != 0:
            raise ValueError('Available peer cannot be omitted or counted as a verified merge')
        return {'tested': False, 'calls': 0, 'ordered_splices': 0}
    if not candidates or peer.get('peer_key') != candidates[0] or 'skip_reason' in peer:
        raise ValueError('Exact first retained eligible peer must be exercised')
    key = peer['peer_key']
    if (peer.get('peer_visible') is not (key in pins) or peer.get('same_parent_verified') is not True or
            peer.get('complete_independent_state_preserved') is not True or peer.get('original_references_restored') is not True or
            type(peer.get('incident_edges')) is not int or peer['incident_edges'] != 0):
        raise ValueError('Private exact peer closure or full independent state verification failed')
    plans = peer.get('ordered_plans')
    steps = compare_private_order_plans(plans)
    original = {plan['binding_key']: plan for plan in case['ordered_plans']}
    if set(original) != {plan['binding_key'] for plan in plans}:
        raise ValueError('Same-collection inverse order plan coverage differs')
    changed = 0
    for plan in plans:
        baseline = original[plan['binding_key']]
        expected = {field: baseline[field] for field in ('before', 'after')}
        expected['current'] = [member for member in baseline['after'] if member != key]
        expected['merged'] = [member for member in baseline['merged'] if member != key]
        if any(fingerprint(plan[field]) != fingerprint(values) for field, values in expected.items()):
            raise ValueError('Private collection inverse lost independent member deletion')
        changed += int(key in baseline['after'])
    if changed != 1:
        raise ValueError('Independent peer must affect exactly one same touched parent collection')
    mutations = fields + collections - len(plans) + steps
    if type(peer.get('main_inverse_mutations')) is not int or peer['main_inverse_mutations'] != mutations:
        raise ValueError('Same-collection native splice/field mutation count differs')
    reset, cleanup = peer.get('peer_reset_mutations'), peer.get('peer_cleanup_mutations')
    if type(reset) is not int or not 2 <= reset <= 100000 or type(cleanup) is not int or cleanup != reset:
        raise ValueError('Complete independent-only prepare/reset/cleanup evidence required')
    calls = 4 * case['incident_edges'] + 6 + mutations + reset + cleanup
    if type(peer.get('probe_mutations')) is not int or peer['probe_mutations'] != calls:
        raise ValueError('Private peer probe mutation coverage differs')

    def removed(value):
        result = deepcopy(value)
        selected = next(item for item in result if item['diagram'] == scope)
        peer_id = int(key.rsplit('/p', 1)[1])
        for node in selected['nodes']:
            node['pins'] = [pin for pin in node['pins'] if pin['id'] != peer_id]
        return result

    expected = {'after_primary_projection': deleted, 'both_deleted_projection': removed(deleted),
                'independent_only_projection': removed(before), 'merged_projection': removed(before)}
    if any(fingerprint(peer.get(field)) != fingerprint(value) for field, value in expected.items()):
        raise ValueError('Same-parent independent deletion projection/extra-change mismatch')
    return {'tested': True, 'calls': calls, 'ordered_splices': steps}
