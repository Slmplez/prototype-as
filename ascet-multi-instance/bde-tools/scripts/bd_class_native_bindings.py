"""Validate read-only native occurrence bindings; never grant inverse authority."""
import re
from bd_edit_journal import fingerprint


def _same(left, right):
    if fingerprint(left) != fingerprint(right):
        raise ValueError('Native occurrence binding differs from collected graph')


def compare_bindings(observed, bindings):
    owners = observed['owners']
    if (type(bindings) is not list or len(bindings) != len(owners) or
            len({row['oid'] for row in bindings}) != len(bindings)):
        raise ValueError('Complete unique native binding owner roster required')
    by_oid = {row['oid']: row for row in owners}
    counts = dict(owners=len(owners), scopes=0, nodes=0, pins=0, edges=0,
                  empty_identity_refusals=0, fresh_identity_refusals=0)
    for item in bindings:
        owner = by_oid[item['oid']]
        _same(item['component'], owner['component'])
        value = item['current']
        if (value['profile'] != 'class_graph_bindings_v1' or value['mode'] != 'registry' or
                value['registry_unchanged'] is not True or value['write_authorized'] is not False or
                value['native_merge_executor_available'] is not False):
            raise ValueError('Native binding observation profile/authority differs')
        _same(value['oid'], owner['oid'])
        scopes = value['scopes']
        if (type(scopes) is not list or len(scopes) != len(owner['scopes']) or
                {row['diagram'] for row in scopes} != set(owner['scopes'])):
            raise ValueError('Complete native binding scope roster required')
        unidentified_edges = 0
        for scope in scopes:
            counts['scopes'] += 1
            graph = owner['scopes'][scope['diagram']]
            _same(value['generation'], graph['generation'])
            expected = {row['ref']: row for row in graph['entries'] if row['kind'] != 'model'}
            rows = scope['entries']
            if (len(rows) != len(expected) or len({row['ref'] for row in rows}) != len(rows) or
                    {row['ref'] for row in rows} != set(expected)):
                raise ValueError('Complete unique native occurrence roster required')
            parent_slots, parent_sizes = set(), {}
            for row in rows:
                original = expected[row['ref']]
                kind = row['kind']
                if kind not in ('node', 'pin', 'edge'):
                    raise ValueError('Unsupported native occurrence kind')
                counts[{'node': 'nodes', 'pin': 'pins', 'edge': 'edges'}[kind]] += 1
                _same(kind, original['kind'])
                if 'native_class' in original:
                    _same(row['native_class'], original['native_class'])
                if (type(row['native_class']) is not str or not row['native_class'] or
                        type(row['manager_class']) is not str or not row['manager_class'] or
                        type(row['manager']) is not str or not row['manager']):
                    raise ValueError('Native occurrence class/manager binding required')
                if row['native_membership_matches'] is not True:
                    raise ValueError('Native parent membership was not verified')
                if row['collection'] != ('interfaceGOs' if kind == 'pin' else 'children'):
                    raise ValueError('Native membership collection differs')
                index, size = row['index'], row['collection_size']
                if type(index) is not int or type(size) is not int or not 1 <= index <= size <= 100000:
                    raise ValueError('Bounded exact parent ordering required')
                parent = (row['manager'], row['collection'])
                slot = (*parent, index)
                if slot in parent_slots or parent_sizes.get(parent, size) != size:
                    raise ValueError('Ambiguous native collection order or size')
                parent_slots.add(slot)
                parent_sizes[parent] = size
                native_id = row['native_id']
                if type(native_id) is int and native_id >= 0:
                    _same(row['ref'], {'node': 'n', 'pin': 'p', 'edge': 'e'}[kind] + str(native_id))
                elif kind == 'edge' and (native_id is None or type(native_id) is int and native_id < 0):
                    if not re.fullmatch(r'e[1-9][0-9]*', row['ref']):
                        raise ValueError('Canonical exact registry edge reference required')
                    unidentified_edges += 1
                else:
                    raise ValueError('Stable native identity or exact registry-bound edge required')
                if kind == 'node':
                    _same(row['pins'], original['pins'])
                elif kind == 'pin':
                    for key in ('owner', 'input', 'output'):
                        _same(row[key], original[key])
                    if row['native_owner_matches'] is not True:
                        raise ValueError('Native pin owner identity was not verified')
                else:
                    for key in ('source', 'target'):
                        _same(row[key], original[key])
                    if row['native_endpoint_matches'] is not True:
                        raise ValueError('Native connection-point identity was not verified')
        if unidentified_edges:
            refusal = item.get('empty_ids_refusal', '')
            if not refusal.startswith('BDE_CLASS_BINDINGS_ERROR: BDE_EDGE_BINDING_UNAVAILABLE:') or 'empty_ids' in item:
                raise ValueError('Missing native edge mapping did not refuse')
            counts['empty_identity_refusals'] += 1
        else:
            # Without ephemeral edges an empty ID map has no identities to reject.
            empty = item.get('empty_ids')
            if type(empty) is not dict:
                raise ValueError('Unexpected empty-map refusal without ephemeral edges')
            _same({**empty, 'mode': 'registry'}, value)
        if 'fresh_refusal' in item:
            if not item['fresh_refusal'].startswith('BDE_CLASS_BINDINGS_ERROR: BDE_EDGE_BINDING_UNAVAILABLE:'):
                raise ValueError('Unexpected reconstructed-graph binding refusal')
            counts['fresh_identity_refusals'] += 1
        else:
            _same({**item['fresh'], 'mode': 'registry'}, value)
    return counts


def compare_checkpoints(observed, checkpoints):
    owners = {row['oid']: row for row in observed['owners']}
    if (type(checkpoints) is not list or len(checkpoints) != len(owners) or
            len({row['oid'] for row in checkpoints}) != len(checkpoints)):
        raise ValueError('Complete unique native checkpoint owner roster required')
    total = dict(owners=len(owners), scopes=0, objects=0, managers=0, collections=0, members=0,
                 ports=0, hidden_pins=0, native_negatives=0, keyed_negatives=0)
    for row in checkpoints:
        owner = owners[row['oid']]
        _same(row['component'], owner['component'])
        value = row['checks']
        if (value['profile'] != 'native_collections_v1' or value['write_authorized'] is not False or
                value['native_merge_executor_available'] is not False):
            raise ValueError('Native checkpoint profile/authority differs')
        for field in ('original_membership_matches', 'current_registry_matches', 'wrong_order_refused',
                      'wrong_manager_link_refused', 'missing_collection_refused', 'wrong_scoped_object_refused'):
            if value[field] is not True:
                raise ValueError('Native full collection identity or negative verification failed')
        _same(value['model_setters_called'], 0)
        if (value['keyed_profile'] != 'native_keyed_collections_v1' or
                value['keyed_checkpoint_matches'] is not True):
            raise ValueError('Exact keyed native checkpoint was not verified')
        _same(value['keyed_collection_count'], value['collection_count'])
        _same(value['keyed_member_count'], value['member_count'])
        _same(value['keyed_negative_count'], 11)
        for field in ('keyed_port_count', 'keyed_hidden_pin_count'):
            if type(value[field]) is not int or not 0 <= value[field] <= 100000:
                raise ValueError('Bounded exact keyed port/hidden pin count required')
        if value['member_count'] != value['object_count'] + value['keyed_port_count'] + value['keyed_hidden_pin_count']:
            raise ValueError('Complete keyed native member identity roster differs')
        _same(value['scope_count'], len(owner['scopes']))
        objects = sum(entry['kind'] != 'model' for graph in owner['scopes'].values() for entry in graph['entries'])
        _same(value['object_count'], objects)
        for field in ('scope_count', 'object_count', 'manager_count', 'collection_count', 'member_count'):
            if type(value[field]) is not int or not 1 <= value[field] <= 100000:
                raise ValueError('Exact bounded checkpoint counts required')
        if not value['manager_count'] <= value['collection_count'] <= value['member_count'] or value['member_count'] < objects:
            raise ValueError('Full native parent collection coverage differs')
        for field, key in (('scope_count', 'scopes'), ('object_count', 'objects'), ('manager_count', 'managers'),
                           ('collection_count', 'collections'), ('member_count', 'members')):
            total[key] += value[field]
        total['native_negatives'] += 4
        total['ports'] += value['keyed_port_count']
        total['hidden_pins'] += value['keyed_hidden_pin_count']
        total['keyed_negatives'] += value['keyed_negative_count']
    return total


def compare_copy_merges(observed, checks):
    owners = {row['oid']: row for row in observed['owners']}
    if (type(checks) is not list or len(checks) != len(owners) or
            len({row['oid'] for row in checks}) != len(checks)):
        raise ValueError('Complete unique native copy merge owner roster required')
    expected_cases = {'restore_preserve_prefix', 'restore_preserve_append', 'ambiguous_gap',
        'undo_create_preserve_prefix', 'preserve_independent_delete', 'empty_parent_restore',
        'empty_parent_ambiguous', 'identity_collision', 'created_member_missing',
        'current_reordered', 'edit_reordered', 'duplicate_member'}
    total = dict(owners=len(owners), scope_parents=0, cases=0, model_setters_called=0)
    for row in checks:
        owner = owners[row['oid']]
        _same(row['component'], owner['component'])
        value = row['checks']
        if (value['profile'] != 'native_collection_copy_merge_v1' or value['write_authorized'] is not False or
                value['native_merge_executor_available'] is not False or value['current_registry_matches'] is not True or
                value['wrong_scope_parent_refused'] is not True):
            raise ValueError('Native copy merge profile/authority/parent identity differs')
        _same(value['model_setters_called'], 0)
        _same(value['scope_parent_count'], len(owner['scopes']))
        _same(value['case_count'], len(expected_cases))
        cases = value['cases']
        if (type(cases) is not list or len(cases) != len(expected_cases) or
                {case['name'] for case in cases} != expected_cases or
                any(case['passed'] is not True or type(case['splices']) is not int or
                    not 0 <= case['splices'] <= 3 for case in cases)):
            raise ValueError('Complete native copy splice positives and negatives required')
        for field in ('scope_parent_count', 'collection_count', 'member_count'):
            if type(value[field]) is not int or not 1 <= value[field] <= 100000:
                raise ValueError('Bounded native parent/count summary required')
        if value['collection_count'] < value['scope_parent_count']:
            raise ValueError('Empty/root scope parent collection is missing')
        total['scope_parents'] += value['scope_parent_count']
        total['cases'] += len(cases)
    return total


def compare_bound_plans(observed, checks):
    """Require real-current no-op coverage, without claiming changed-checkpoint proof."""
    compare_copy_merges(observed, checks)
    total = dict(owners=len(checks), collections=0, splices=0, native_negatives=0)
    for row in checks:
        value = row['checks']['keyed_plan']
        if (value['profile'] != 'native_keyed_collection_plan_v1' or
                value['current_native_members_preserved'] is not True or
                value['actual_changed_checkpoint_tested'] is not False or
                value['write_authorized'] is not False):
            raise ValueError('Bound plan identity/profile or verification scope differs')
        _same(value['model_setters_called'], 0)
        _same(value['splices'], 0)
        _same(value['negative_count'], 6)
        _same(value['verified_collections'], row['checks']['collection_count'])
        total['collections'] += value['verified_collections']
        total['native_negatives'] += value['negative_count']
    return total
