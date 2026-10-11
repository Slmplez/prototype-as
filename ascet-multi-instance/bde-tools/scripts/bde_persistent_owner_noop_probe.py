"""Verify two exact original object leaf no-op writes, not model persistence QA."""
from bd_edit_journal import fingerprint
from bd_persistent_owner_records import validate


def verify_owner_noop(native, domain):
    if (native.get('passed') is not True or native.get('complete_reply_received') is not True
            or native.get('write_dispatched') is not True or native.get('component_oid') != domain['oid']
            or native.get('process_epoch') != domain['process_epoch'] or native.get('database') != domain['database']
            or type(native.get('dirty_before')) is not int or native['dirty_before'] != 0
            or type(native.get('dirty_after')) is not int or native['dirty_after'] != 0 or 'cleanup_error' in native):
        raise ValueError('Complete clean same-runtime original owner no-op reply required')
    before = validate(native['before'], component_oid=domain['oid'])
    actual = native['actual']
    if (set(actual) != set(('profile before after outcomes persistent_leaf_write_calls persistent_leaf_delete_calls '
            'owner_source_backend_preserved model_setters_called store_called commit_called full_commit_resource_closure automatic_retry').split())
            or actual['profile'] != 'isolated_persistent_owner_noop_result_v1'
            or fingerprint(actual['before']) != fingerprint(before) or fingerprint(actual['after']) != fingerprint(before)
            or actual['owner_source_backend_preserved'] is not True
            or type(actual['persistent_leaf_write_calls']) is not int or actual['persistent_leaf_write_calls'] != 2
            or type(actual['persistent_leaf_delete_calls']) is not int or actual['persistent_leaf_delete_calls'] != 0
            or type(actual['model_setters_called']) is not int or actual['model_setters_called'] != 0
            or any(actual[k] is not False for k in ('store_called', 'commit_called', 'full_commit_resource_closure', 'automatic_retry'))
            or not isinstance(actual['outcomes'], list) or len(actual['outcomes']) != 2):
        raise ValueError('Exact two no-op writes and complete original observations required')
    validate(actual['after'], component_oid=domain['oid'])
    for row, outcome in zip(before['owners'], actual['outcomes']):
        if outcome != dict(role=row['role'], planned_bytes=row['allocated_bytes'],
                actual_bytes=row['allocated_bytes'], returned_class='CTSpaceCheckingIFil'):
            raise ValueError('Exact original raw object write/readback required')
    return dict(existing_owner_object_noop_verified=True, persistent_leaf_write_calls=2,
        persistent_leaf_delete_calls=0, exact_observation_restored=True, original_reference_records_preserved=True,
        full_commit_resource_closure=False, model_persistent_edit_verified=False,
        production_inverse_authorized=False,
        owner_records=[dict(role=r['role'], logical_size=r['logical_size'], allocated_size=r['allocated_size']) for r in before['owners']])


if __name__ == '__main__':
    from bde_reference_leaf_noop_probe import main
    raise SystemExit(main(lifecycle=True, nonempty=True, owner_noop=True))
