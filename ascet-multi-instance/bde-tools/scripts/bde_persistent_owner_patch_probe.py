"""Verify bounded raw owner version lifecycle; no claim of graphical persistence."""
from copy import deepcopy

from bd_persistent_owner_records import validate
from bd_persistent_owner_patch import project, inverse_request


def version_candidate(row):
    result = deepcopy(row); result['stored_version'] += 1
    if result['stored_version'] > 4294967295: raise ValueError('Bounded native uint version required')
    result['allocated_bytes'][108:112] = list(result['stored_version'].to_bytes(4, 'little'))
    result['bytes'] = result['allocated_bytes'][:result['logical_size']]
    return result


def verify_owner_patch(native, domain):
    if (native.get('passed') is not True or native.get('complete_reply_received') is not True
            or native.get('write_dispatched') is not True or native.get('component_oid') != domain['oid']
            or native.get('process_epoch') != domain['process_epoch'] or native.get('database') != domain['database']
            or any(type(native.get(k)) is not int or native[k] != 0 for k in ('dirty_before', 'dirty_after'))
            or 'cleanup_error' in native):
        raise ValueError('Complete clean same-runtime original owner patch reply required')
    before = validate(native['before'], component_oid=domain['oid']); actual = native['actual']
    if (set(actual) != set(('profile before after results controls preparation_controls detached_exports_isolated '
            'unrelated_owner_change_preserved model_setters_called store_called commit_called '
            'full_commit_resource_closure automatic_retry').split())
            or actual['profile'] != 'isolated_persistent_owner_patch_probe_result_v1'
            or actual['before'] != before or actual['after'] != before
            or actual['detached_exports_isolated'] is not True or actual['unrelated_owner_change_preserved'] is not True
            or type(actual['model_setters_called']) is not int or actual['model_setters_called'] != 0
            or any(actual[k] is not False for k in ('store_called', 'commit_called', 'full_commit_resource_closure', 'automatic_retry'))
            or not isinstance(actual['results'], list) or len(actual['results']) != 6
            or not isinstance(actual['controls'], list) or len(actual['controls']) != 8):
        raise ValueError('Exact six-phase owner lifecycle with unchanged complete final observations required')
    original_owner, original_source = before['owners']
    owner = version_candidate(original_owner); source = version_candidate(original_source)
    phases = ((1, source), (0, owner), (1, original_source), (0, original_owner), (1, source), (1, original_source))
    expected = before
    for phase, ((index, row), result) in enumerate(zip(phases, actual['results'])):
        current = expected['owners'][index]
        patch = dict(global_id=current['global_id'], role=current['role'], operation='write_existing_owner_record',
            current=current, candidate=row)
        candidate = project(expected, [patch]); validate(result['after'], component_oid=domain['oid'])
        if (set(result) != set(('profile before candidate after outcomes persistent_leaf_write_calls '
                'persistent_leaf_delete_calls owner_source_backend_preserved model_setters_called store_called '
                'commit_called full_commit_resource_closure automatic_retry').split())
                or result['profile'] != 'isolated_persistent_owner_patch_result_v1'
                or result['before'] != expected or result['candidate'] != candidate or result['after'] != candidate
                or result['owner_source_backend_preserved'] is not True
                or type(result['persistent_leaf_write_calls']) is not int or result['persistent_leaf_write_calls'] != 1
                or type(result['persistent_leaf_delete_calls']) is not int or result['persistent_leaf_delete_calls'] != 0
                or type(result['model_setters_called']) is not int or result['model_setters_called'] != 0
                or any(result[k] is not False for k in ('store_called', 'commit_called', 'full_commit_resource_closure', 'automatic_retry'))
                or result['outcomes'] != [dict(role=current['role'], global_id=current['global_id'],
                    operation='write_existing_owner_record', returned_class='CTSpaceCheckingIFil')]):
            raise ValueError('Exact accounted original owner patch phase differs: ' + str(phase + 1))
        expected = candidate
    if inverse_request(before, actual['results'][0]['after'], actual['results'][1]['after'])['candidate'] != actual['results'][2]['after']:
        raise ValueError('Source inverse did not preserve unrelated owner modification')
    for index, control in enumerate(actual['controls']):
        if index == 2:
            if control != dict(profile='owner_patch_preparation_refusal_v1',
                    error='Complete owner CURRENT conflict before preparation', write_dispatched=False):
                raise ValueError('Exact stale owner prepare refusal required')
            continue
        expected_error = 'Complete owner CURRENT conflict before dispatch' if index == 1 else 'Owner patch execution cannot replay'
        if control != dict(profile='isolated_persistent_owner_patch_failure_v1', phase='guard', error=expected_error,
                write_dispatched=False, persistent_leaf_write_calls=0, persistent_leaf_delete_calls=0,
                outcomes=[], automatic_retry=False):
            raise ValueError('Exact zero-writer owner replay/stale execution refusal required')
    names = ('extra_field', 'delete_operation', 'foreign_key', 'boolean_extent', 'immutable_header', 'getter_mismatch', 'duplicate')
    messages = ('Exact five-field existing owner patch required', 'Existing owner write operation required',
        'Distinct exact owned search key required', 'Exact owner integer extent/state required',
        'Owner immutable search header differs', 'Native owner candidate header/getters differ',
        'Distinct exact owned search key required')
    if actual['preparation_controls'] != [dict(name=n, error=m, rejected=True, write_dispatched=False) for n, m in zip(names, messages)]:
        raise ValueError('Seven exact native owner preparation refusals required')
    return dict(existing_owner_object_patch_verified=True, lifecycle_phases=6, persistent_leaf_write_calls=6,
        persistent_leaf_delete_calls=0, exact_observation_restored=True, original_reference_records_preserved=True,
        unrelated_owner_change_preserved=True, native_preparation_refusals=7, native_lifecycle_refusals=8,
        detached_exports_isolated=True, full_commit_resource_closure=False, model_persistent_edit_verified=False,
        production_inverse_authorized=False, payload_change_tested=False)


if __name__ == '__main__':
    from bde_reference_leaf_noop_probe import main
    raise SystemExit(main(lifecycle=True, nonempty=True, owner_patch=True))
