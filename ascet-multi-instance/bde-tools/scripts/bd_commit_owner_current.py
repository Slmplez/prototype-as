"""Validate CURRENT owner records and diff against immutable v6 originals."""
from copy import deepcopy

from bd_commit_persistent_owners import validate_capture
from bd_commit_resource_diff import _change, _compare_image

PROFILE = 'native_persistent_owners_current_v1'
SUMMARY = 'native_persistent_owners_current_summary_v1'


def validate(current, original):
    """Reuse structural schema checks, without treating CURRENT as a before."""
    old = validate_capture(original)
    if (type(current) is not dict or current.get('profile') != PROFILE
            or type(current.get('summary')) is not dict or current['summary'].get('profile') != SUMMARY):
        raise ValueError('Explicit CURRENT profile required; original captures are not CURRENT')
    # Structural validation only. This detached local view is never stored in
    # WAL or sent to native, and no history/before evidence is synthesized.
    view = deepcopy(current)
    view['profile'] = 'native_persistent_owners_records_v1'
    view['summary']['profile'] = 'native_persistent_owners_capture_v1'
    checked = validate_capture(view)
    for field in ('native_token', 'component_oid', 'generation'):
        if type(checked[field]) is not type(old[field]) or checked[field] != old[field]:
            raise ValueError('CURRENT original token/owner/generation changed')
    for a,b in zip(old['owners'],checked['owners']):
        for field in ('role','model_class','model_ref','db_ref','oid','key'):
            if a[field] != b[field]:
                raise ValueError('CURRENT original model/DBObject/key identity changed')
    return deepcopy(current)


def differences(original, current):
    now = validate(current, original)
    changes = []
    for a,b in zip(original['owners'],now['owners']):
        locus = 'persistent_owner/'+a['role']
        _compare_image(changes,a['db_after'],b['db_before'],locus+'/db','since_preparation')
        _compare_image(changes,b['db_before'],b['db_after'],locus+'/db','query_read_effect')
        for left,right in zip(a['records'],b['records']):
            path = locus+'/'+left['role']
            for field in ('read_status','allocated_bytes','bytes','record_attribute','global_id',
                    'fixed_size','blob_size','logical_size','allocated_size'):
                _change(changes,'since_preparation',path,field,left[field],right[field])
            _compare_image(changes,left['ctree_after'],right['ctree_before'],path+'/ctree','since_preparation')
            _compare_image(changes,right['ctree_before'],right['ctree_after'],path+'/ctree','query_read_effect')
    return changes


def summary(original, current):
    now = validate(current, original)
    changes = differences(original, now)
    physical = [r for r in changes if r['field'] == 'allocated_bytes']
    return dict(profile='bde_persistent_owners_current_summary_v1',
        native_token=now['native_token'], component_oid=now['component_oid'],generation=now['generation'],
        owners_checked=2,records_checked=6,current_persistent_owners_checked=True,
        changed_physical_records=len(physical),actual_change_count=len(changes),
        raw_records_match_original=not physical,
        current_model_source_identity_preserved=True,store_called_by_query=False,
        full_commit_resource_closure=False,write_authorized=False,inverse_authorized=False)


def validate_event(payload, prepared):
    if type(payload) is not dict or set(payload) != {'profile','original','current','actual_changes'}:
        raise ValueError('Complete original-bound owner CURRENT event required')
    if payload['profile'] != 'bde_commit_owner_current_event_v1' or prepared['profile'] != 'native_commit_prepare_v6':
        raise ValueError('Original v6 preparation and current event required')
    original = payload['original']
    if validate_capture(original) != prepared['persistent_owners']:
        raise ValueError('CURRENT event original differs from same-dispatch prepared receipt')
    changes = differences(original, payload['current'])
    if payload['actual_changes'] != changes:
        raise ValueError('Recorded actual owner diff differs from full original/current records')
    return deepcopy(payload)


def projection(payload, prepared):
    from bd_commit_payload_diff import range_summaries
    value=validate_event(payload,prepared)
    result=summary(value['original'],value['current'])
    result['changed_locations']=[{k:r[k] for k in ('category','locus','field')} for r in value['actual_changes'][:32]]
    result['more_changed_locations']=len(value['actual_changes'])>32
    result['physical_ranges']=[dict(locus=r['locus'],ranges=range_summaries(r['before'],r['after']))
        for r in value['actual_changes'] if r['field']=='allocated_bytes']
    return result


def observe_logged(log, change_id, adapter, domain, native_token, prepared):
    """Append actual originals and CURRENT, never CURRENT substituted as before."""
    from bd_commit_persistent_owners import validate_audit
    audit=adapter._exchange(dict(cmd='commit_resources',action='audit',token=native_token))
    validate_audit(audit)
    if audit['prepared_receipt'] != prepared:
        raise ValueError('Retained native original receipt differs from WAL')
    current=adapter._exchange(dict(cmd='commit_persistent_owner_current',token=native_token))
    value=dict(profile='bde_commit_owner_current_event_v1',original=audit['persistent_owner_capture'],
        current=current,actual_changes=differences(audit['persistent_owner_capture'],current))
    validate_event(value,prepared)
    if current['native_token'] != native_token or current['component_oid'] != domain['oid']:
        raise ValueError('Exact original native token and component required')
    events=log.read(change_id)
    previous=[e['payload'] for e in events if e['kind']=='commit_owner_records_observed']
    if any(p['original']!=value['original'] for p in previous):
        raise ValueError('Previous immutable original capture changed')
    log._append(log._path(change_id),events,'commit_owner_records_observed',value)
    return projection(value,prepared)
