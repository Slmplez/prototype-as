"""One isolated changed source record write/readback and exact raw inverse.

The bytes were generated and decoded by the private layout experiment. This
does not install a live changed source, reload graphical cache, Store/Commit,
or prove a production connection inverse or crash durability.
"""
from bd_edit_journal import fingerprint
from bd_persistent_owner_records import validate
from bd_serialized_source_candidate import candidate_from_private_layout
from bde_private_layout_probe import verify_layout


def validate_proof(layout, extracted, confirmation):
    summary = verify_layout(layout['native'], extracted)
    if (layout.get('profile') != 'bde_private_layout_after_experiment_v1' or layout.get('passed') is not True
            or type(layout.get('native_exit_code')) is not int or layout['native_exit_code'] != 0 or layout['wire']['errors']
            or layout.get('pending_retained_until_fresh_read') is not True
            or confirmation.get('profile') != 'bde_private_layout_after_confirmation_v1' or confirmation.get('passed') is not True
            or confirmation.get('pending_cleared_verified_original_state') is not True
            or confirmation.get('original_state_preserved') is not True
            or confirmation.get('complete_public_bookends_preserved') is not True
            or type(confirmation.get('native_calls')) is not int or confirmation['native_calls'] != 0
            or confirmation.get('summary') != summary
            or layout['domain']['oid'] != layout['native']['component_oid']
            or layout['domain']['process_epoch'] != layout['native']['process_epoch']
            or layout['domain']['database'] != layout['native']['database']):
        raise ValueError('Confirmed exact changed private coordinate payload required')
    return summary


def validate_prepared(prepared, layout, extracted):
    native = layout['native']; planned = candidate_from_private_layout(native['prepared']['before'], native, extracted)
    fields = set(('profile component_oid workbench_index before candidate target_logic_id before_position after_position '
        'persistent_leaf_write_calls store_called commit_called full_commit_resource_closure full_delivery').split())
    if (not isinstance(prepared, dict) or set(prepared) != fields
            or prepared['profile'] != 'isolated_source_payload_lifecycle_prepared_v1'
            or prepared['component_oid'] != native['component_oid']
            or type(prepared['workbench_index']) is not int or prepared['workbench_index'] != native['prepared']['workbench_index']
            or any(fingerprint(prepared[k]) != fingerprint(native['prepared'][k]) for k in ('target_logic_id', 'before_position', 'after_position'))
            or validate(prepared['before'], component_oid=native['component_oid']) != planned['expected']
            or validate(prepared['candidate'], component_oid=native['component_oid']) != planned['candidate']
            or type(prepared['persistent_leaf_write_calls']) is not int or prepared['persistent_leaf_write_calls'] != 0
            or any(prepared[k] is not False for k in ('store_called', 'commit_called', 'full_commit_resource_closure', 'full_delivery'))):
        raise ValueError('Exact native original and independently assembled candidate source record required')
    return planned


def verify_owner_execution(actual, before, candidate):
    fields = set(('profile before candidate after outcomes persistent_leaf_write_calls persistent_leaf_delete_calls '
        'owner_source_backend_preserved model_setters_called store_called commit_called full_commit_resource_closure automatic_retry').split())
    oid = before['component_oid']; row = before['owners'][1]
    outcomes = [dict(role=row['role'], global_id=row['global_id'], operation='write_existing_owner_record', returned_class='CTSpaceCheckingIFil')]
    if (not isinstance(actual, dict) or set(actual) != fields or actual['profile'] != 'isolated_persistent_owner_patch_result_v1'
            or validate(actual['before'], component_oid=oid) != before
            or validate(actual['candidate'], component_oid=oid) != candidate
            or validate(actual['after'], component_oid=oid) != candidate
            or fingerprint(actual['outcomes']) != fingerprint(outcomes)
            or type(actual['persistent_leaf_write_calls']) is not int or actual['persistent_leaf_write_calls'] != 1
            or any(type(actual[k]) is not int or actual[k] != 0 for k in ('persistent_leaf_delete_calls', 'model_setters_called'))
            or actual['owner_source_backend_preserved'] is not True
            or any(actual[k] is not False for k in ('store_called', 'commit_called', 'full_commit_resource_closure', 'automatic_retry'))):
        raise ValueError('Complete one-source exact candidate leaf write/readback required')


def verify_source_payload(native, layout, extracted):
    prior = layout['native']
    if (native.get('passed') is not True or native.get('complete_reply_received') is not True
            or native.get('payload_lifecycle_dispatched') is not True or native.get('write_dispatched') is not True
            or native.get('component_oid') != prior['component_oid']
            or native.get('process_epoch') != prior['process_epoch'] or native.get('database') != prior['database']
            or any(type(native.get(k)) is not int or native[k] != 0 for k in ('dirty_before', 'dirty_after'))
            or 'cleanup_error' in native):
        raise ValueError('Complete clean same-instance isolated payload writer reply required')
    planned = validate_prepared(native['prepared'], layout, extracted); a = native['actual']
    fields = set(('profile component_oid workbench_index before candidate forward inverse after persistent_leaf_write_calls '
        'persistent_leaf_delete_calls exact_raw_restoration original_graph_preserved original_config_preserved model_setters_called '
        'store_called commit_called graphical_cache_reloaded full_commit_resource_closure production_inverse_authorized full_delivery').split())
    before = planned['expected']; candidate = planned['candidate']; oid = before['component_oid']
    if (not isinstance(a, dict) or set(a) != fields or a['profile'] != 'isolated_source_payload_lifecycle_result_v1'
            or a['component_oid'] != oid or type(a['workbench_index']) is not int or a['workbench_index'] != native['prepared']['workbench_index']
            or validate(a['before'], component_oid=oid) != before or validate(a['candidate'], component_oid=oid) != candidate
            or validate(a['after'], component_oid=oid) != before
            or type(a['persistent_leaf_write_calls']) is not int or a['persistent_leaf_write_calls'] != 2
            or any(type(a[k]) is not int or a[k] != 0 for k in ('persistent_leaf_delete_calls', 'model_setters_called'))
            or any(a[k] is not True for k in ('exact_raw_restoration', 'original_graph_preserved', 'original_config_preserved'))
            or any(a[k] is not False for k in ('store_called', 'commit_called', 'graphical_cache_reloaded',
                'full_commit_resource_closure', 'production_inverse_authorized', 'full_delivery'))):
        raise ValueError('Two exact source record writes with original raw/graph/config restoration required')
    verify_owner_execution(a['forward'], before, candidate); verify_owner_execution(a['inverse'], candidate, before)
    return dict(scope='isolated source record only', actual_private_diff=planned['actual_private_diff'],
        payload_sha256=planned['payload_sha256'], payload_size=len(layout['native']['actual']['payload_bytes']),
        persistent_leaf_write_calls=2, persistent_leaf_delete_calls=0, exact_raw_restoration=True,
        changed_graphical_payload_written_and_read_back=True, original_graph_preserved=True,
        original_config_preserved=True, graphical_cache_reloaded=False, store_called=False, commit_called=False,
        production_move_verified=False, production_inverse_authorized=False, crash_durability_verified=False,
        full_commit_resource_closure=False, full_delivery=False, independent_confirmation_required=True)


if __name__ == '__main__':
    from bde_private_layout_probe import main
    raise SystemExit(main(source_payload=True))
