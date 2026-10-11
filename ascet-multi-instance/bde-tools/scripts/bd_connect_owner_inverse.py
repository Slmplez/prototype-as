"""Finite owner/reference inverse plan; no native call or model/cache authority."""
from copy import deepcopy

from bd_edit_journal import fingerprint
from bd_persistent_owner_records import validate, validate_receipt
from bd_persistent_owner_patch import project
from bd_finite_reference_patch import inverse_request as reference_request


def request(owners, references, current, *, token, component_oid, generation):
    owners = validate_receipt(owners, token=token, component_oid=component_oid, generation=generation, phase='attached')
    now = validate(current, component_oid=component_oid)
    for side in ('before', 'after'):
        if owners[side]['references'] != references.get(side):
            raise ValueError('Full owner and finite actual reference proofs differ')
    # Plan the complete reciprocal set first. New uncaptured original targets,
    # conflicts and unsupported routes suppress the entire composite result.
    finite = reference_request(references, now['references'], token=token,
        component_oid=component_oid, generation=generation)
    patches = []
    for before, after, row in zip(owners['before']['owners'], owners['after']['owners'], now['owners']):
        if any(before[k] != row[k] or after[k] != row[k] for k in ('role', 'oid', 'global_id', 'model_class',
                'query_key', 'actual_file_key', 'record_class_requested', 'record_class', 'stored_class', 'stored_name')):
            raise ValueError('Original/actual/CURRENT owner route differs')
        if before == after or row == before:
            continue
        if row != after:
            raise ValueError('Touched serialized owner overlaps CURRENT; composite candidate suppressed')
        patches.append(dict(global_id=row['global_id'], role=row['role'], operation='write_existing_owner_record',
            current=deepcopy(row), candidate=deepcopy(before)))
    candidate = project(now, patches)
    candidate['references'] = deepcopy(finite['candidate'])
    validate(candidate, component_oid=component_oid)
    return dict(profile='connect_owner_reference_inverse_request_v1', native_token=token,
        component_oid=component_oid, generation=generation, expected=now, candidate=candidate,
        owner_patches=patches, reference_request=finite, current_sha256=fingerprint(now),
        candidate_sha256=fingerprint(candidate), native_calls=0, write_authorized=False,
        production_inverse_authorized=False, production_connection_inverse_available=False,
        full_commit_resource_closure=False, model_cache_restoration_verified=False, automatic_retry=False)
