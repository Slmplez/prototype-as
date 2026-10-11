"""Assess fixed isolated native leaf executor trials, not BDE connection QA."""
from bd_edit_journal import fingerprint
from bd_module_persistent_references import validate
from bd_finite_reference_patch import diagnostic_delta, _members, project, _physical_map, check_raw_route
from bde_reference_leaf_nonempty_probe import validate_original


def verify_patch_probe(native, domain):
    if (native.get('passed') is not True or native.get('complete_reply_received') is not True
            or native.get('write_dispatched') is not True or native.get('component_oid') != domain['oid']
            or native.get('process_epoch') != domain['process_epoch'] or native.get('database') != domain['database']
            or type(native.get('dirty_before')) is not int or native['dirty_before'] != 0
            or type(native.get('dirty_after')) is not int or native['dirty_after'] != 0
            or 'cleanup_error' in native):
        raise ValueError('Complete same-runtime clean native patch reply required')
    before = validate_original(native['before'], domain)
    actual = native['actual']
    if (set(actual) != set(('profile before results controls after model_setters_called store_called '
            'commit_called full_commit_resource_closure automatic_retry').split())
            or actual['profile'] != 'finite_reference_patch_probe_result_v1'
            or fingerprint(actual['before']) != fingerprint(before)
            or type(actual['model_setters_called']) is not int or actual['model_setters_called'] != 0
            or any(actual[k] is not False for k in ('store_called', 'commit_called', 'full_commit_resource_closure', 'automatic_retry'))
            or len(actual['results']) != 6 or len(actual['controls']) != 8):
        raise ValueError('Six exact leaf phases and eight no-write guards required')
    expected = before
    outcomes = []; totals = [0, 0]
    for index, (result, entries, counts) in enumerate(zip(actual['results'], (1, 2, 1, 0, 2, 0), ((2, 0), (2, 0), (2, 0), (1, 1), (3, 0), (2, 1)))):
        if (set(result) != set(('profile before candidate after outcomes diagnostic_changes exact_observation_matches '
                'persistent_records_match owner_source_backend_preserved persistent_leaf_write_calls '
                'persistent_leaf_delete_calls model_setters_called store_called commit_called automatic_retry full_commit_resource_closure').split())
                or result['profile'] != 'finite_reference_patch_result_v1'
                or fingerprint(result['before']) != fingerprint(expected)
                or result['persistent_records_match'] is not True or result['owner_source_backend_preserved'] is not True
                or type(result['model_setters_called']) is not int or result['model_setters_called'] != 0
                or any(result[k] is not False for k in ('store_called', 'commit_called', 'automatic_retry', 'full_commit_resource_closure'))):
            raise ValueError('Exact guarded native phase receipt required')
        for j, k in enumerate(('persistent_leaf_write_calls', 'persistent_leaf_delete_calls')):
            if type(result[k]) is not int or result[k] != counts[j]:
                raise ValueError('Actual native writer accounting differs')
            totals[j] += result[k]
        after = validate(result['after'], component_oid=domain['oid'])
        diagnostics = diagnostic_delta(result['candidate'], after)
        owner_deltas = [{k: v for k, v in d.items() if k != 'scope'} for d in diagnostics if d['scope'] == 'owner']
        if (result['diagnostic_changes'] != owner_deltas or type(result['exact_observation_matches']) is not bool
                or result['exact_observation_matches'] != (fingerprint(result['candidate']) == fingerprint(after))):
            raise ValueError('Preserved diagnostic and exact-observation verdict differ')
        keys = [o['key'] for o in before['owners']]
        if _members(after['owners'][1]['records'][0]) != keys[:entries] or any(c['consistent'] is not True for c in after['membership_checks']):
            raise ValueError('Actual ordered outgoing or reciprocal membership differs')
        if entries:
            outgoing = after['owners'][1]['records'][0]
            check_raw_route(outgoing)
            if outgoing['allocated_size'] != 64 + entries * 21 or outgoing['allocated_bytes'][:2] != [0, 60]:
                raise ValueError('Exact freshly constructed source allocation/header required')
        # Independent reconstruction of each entire phase from the retained original.
        from copy import deepcopy
        wanted = deepcopy(before)
        if entries:
            wanted['owners'][1]['records'][0] = deepcopy(after['owners'][1]['records'][0])
            for owner_index in range(entries):
                old = before['owners'][owner_index]['records'][1]
                new = after['owners'][owner_index]['records'][1]
                from bd_persistent_references import decode
                a, b = decode(old, keys[owner_index]), decode(new, keys[owner_index])
                if _members(new) != _members(old) + [keys[1]] or b['tail_bytes'] != a['tail_bytes']:
                    raise ValueError('Original inbound entry order or complete tail changed')
                wanted['owners'][owner_index]['records'][1] = deepcopy(new)
            for k, incoming in zip(wanted['reciprocal_targets'], wanted['reciprocal_records']):
                owner_index = keys.index(k) if k in keys else None
                if owner_index is not None and owner_index < entries:
                    wanted['reciprocal_records'][wanted['reciprocal_targets'].index(k)] = deepcopy(after['owners'][owner_index]['records'][1])
            wanted['membership_checks'] = deepcopy(after['membership_checks'])
        diagnostic_delta(wanted, after)
        if len(result['outcomes']) != sum(counts):
            raise ValueError('Complete per-operation receipt required')
        for row in result['outcomes']:
            if (set(row) != {'global_id', 'role', 'operation', 'returned_class'}
                    or row['global_id'] not in keys
                    or row['returned_class'] != ('SmallInteger' if row['operation'] == 'delete_record' else 'CTSpaceCheckingIFil')):
                raise ValueError('Exact bounded native leaf outcome required')
        from_map, to_map = _physical_map(expected), _physical_map(result['candidate'])
        patches = []
        for row in result['outcomes']:
            key = ('physical_record', '', tuple(row['global_id']), row['role'])
            if key not in from_map or key not in to_map:
                raise ValueError('Operation lacks complete original/current/candidate capture')
            patches.append({**{k: row[k] for k in ('global_id', 'role', 'operation')},
                'current': from_map[key], 'candidate': to_map[key]})
        if fingerprint(project(expected, patches)) != fingerprint(result['candidate']):
            raise ValueError('Actual outcomes do not account for the complete projected candidate')
        outcomes.extend(result['outcomes']); expected = after
    for index, control in enumerate(actual['controls']):
        if index == 2:
            if control != dict(profile='finite_reference_patch_preparation_refusal_v1',
                    error='Complete finite CURRENT conflict before preparation', write_dispatched=False):
                raise ValueError('Exact stale preparation refusal required')
        elif control != dict(profile='finite_reference_patch_failure_v1', phase='guard',
                error='Complete finite CURRENT conflict before dispatch' if index == 1 else 'Finite patch execution cannot replay', write_dispatched=False,
                persistent_leaf_write_calls=0, persistent_leaf_delete_calls=0, outcomes=[], automatic_retry=False):
            raise ValueError('Exact zero-writer replay refusal required')
    if fingerprint(actual['after']) != fingerprint(expected):
        raise ValueError('Final actual does not match final phase')
    terminal = diagnostic_delta(before, expected)
    return dict(native_leaf_executor_verified=True, guarded_phases=6, no_write_guard_controls=8,
        persistent_leaf_write_calls=totals[0], persistent_leaf_delete_calls=totals[1],
        final_diagnostic_changes=terminal, persistent_reference_records_restored=True,
        exact_observation_restored=fingerprint(before) == fingerprint(expected),
        production_inverse_authorized=False, actual_bde_connection_verified=False,
        full_commit_resource_closure=False)


if __name__ == '__main__':
    from bde_reference_leaf_noop_probe import main
    raise SystemExit(main(lifecycle=True, nonempty=True, finite_patch=True))
