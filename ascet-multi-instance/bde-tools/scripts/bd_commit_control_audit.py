"""Recompute fixed control observations from full original audit images."""
from bd_commit_control import delta,validate_summary_image


def recompute_controls(audit,resource_index):
    prepared=audit['prepared_receipt']
    if prepared['profile'] not in ('native_commit_prepare_v3','native_commit_prepare_v4','native_commit_prepare_v5','native_commit_prepare_v6'):
        raise ValueError('Original same-dispatch CTree capture required; no retrofit before image')
    before=audit['ctree_control_original_image']
    validate_summary_image(prepared['ctree_control'],before)
    if before['component_oid']!=audit['component_oid'] or before['generation']!=audit['generation']:
        raise ValueError('Original CTree binding differs')
    if delta(before,audit['ctree_control_after_capture'],'query_read_effect')!=audit['ctree_control_capture_read_effects']:
        raise ValueError('Original control capture read effects differ')
    pairs=audit['ctree_control_checks']
    if not isinstance(pairs,list) or not 1<=len(pairs)<=32:
        raise ValueError('Complete paired CTree query evidence required')
    pair=pairs[-1]
    if (set(pair)!={'phase','before','after','resource_check_index','before_changes','after_changes'}
            or pair['phase']!='checked' or type(pair['resource_check_index']) is not int
            or pair['resource_check_index']!=resource_index):
        raise ValueError('Original control/resource check pairing differs')
    first=delta(before,pair['before'],'since_preparation')
    last=delta(pair['before'],pair['after'],'query_read_effect')
    if first!=pair['before_changes'] or last!=pair['after_changes']:
        raise ValueError('Native control changes differ from independent full images')
    return first+last
