"""Compact prepared-edit resource receipts; full native evidence remains retained.

This profile captures before material. It never grants write or inverse authority.
"""
import re
from bd_edit_journal import clone

PROFILE = 'native_commit_prepare_v1'
MODEL_PROFILE = 'native_commit_prepare_v2'
CONTROL_PROFILE = 'native_commit_prepare_v3'
RECIPROCAL_PROFILE = 'native_commit_prepare_v4'
BASELINE_PROFILE = 'native_commit_prepare_v5'
PERSISTENT_PROFILE = 'native_commit_prepare_v6'
KEYS = frozenset(('profile native_token resource_token component_oid generation phase cache_entries '
    'retained_original_fields retained_original_values record_summaries modified_object_oids '
    'ctree_direct_changed_fields current_read_resources_unchanged has_unrelated_pending_objects '
    'original_material_held same_native_dispatch full_commit_resource_closure write_authorized '
    'inverse_authorized model_setters_called store_called commit_called').split())
ROLES = ('owner', 'owner_references', 'owner_referenced_by')


def validate(value, *, token, component_oid):
    has_models = isinstance(value, dict) and value.get('profile') in (MODEL_PROFILE, CONTROL_PROFILE, RECIPROCAL_PROFILE, BASELINE_PROFILE, PERSISTENT_PROFILE)
    has_control = isinstance(value, dict) and value.get('profile') in (CONTROL_PROFILE, RECIPROCAL_PROFILE, BASELINE_PROFILE, PERSISTENT_PROFILE)
    has_reciprocal = isinstance(value, dict) and value.get('profile') in (RECIPROCAL_PROFILE, BASELINE_PROFILE, PERSISTENT_PROFILE)
    has_baseline = isinstance(value, dict) and value.get('profile') in (BASELINE_PROFILE, PERSISTENT_PROFILE)
    has_persistent = isinstance(value, dict) and value.get('profile') == PERSISTENT_PROFILE
    length_keys={'record_length_profile'} if has_reciprocal or isinstance(value,dict) and 'record_length_profile' in value else set()
    reciprocal_keys={'reciprocal_references'} if has_reciprocal else set()
    baseline_keys={'reference_file_baseline'} if has_baseline else set()
    persistent_keys={'persistent_owners'} if has_persistent else set()
    if not isinstance(value, dict) or set(value) != KEYS | ({'registered_models'} if has_models else set()) | ({'ctree_control'} if has_control else set()) | length_keys | reciprocal_keys | baseline_keys | persistent_keys:
        raise ValueError('Complete fixed prepared commit-resource receipt required')
    if length_keys and value['record_length_profile']!='complete_reference_payload_v2':
        raise ValueError('Fixed complete reference payload length profile required')
    if not isinstance(token, str) or not re.fullmatch(r'edit_[0-9a-f]{64}', token):
        raise ValueError('Exact original prepared edit token required')
    if (value['profile'] not in (PROFILE, MODEL_PROFILE, CONTROL_PROFILE, RECIPROCAL_PROFILE, BASELINE_PROFILE, PERSISTENT_PROFILE) or value['native_token'] != token
            or value['resource_token'] != 'commit_' + token[5:]
            or value['component_oid'] != component_oid or value['phase'] != 'captured'):
        raise ValueError('Original prepared edit/resource/owner binding differs')
    for key, minimum, maximum in (('generation', 1, 2147483647), ('cache_entries', 0, 4096),
            ('retained_original_fields', 1, 16384), ('retained_original_values', 0, 16384),
            ('ctree_direct_changed_fields', 0, 1536)):
        if type(value[key]) is not int or not minimum <= value[key] <= maximum:
            raise ValueError('Complete bounded commit-resource count required: ' + key)
    for key in ('original_material_held', 'same_native_dispatch'):
        if value[key] is not True:
            raise ValueError('Original retained same-dispatch preparation required')
    for key in ('full_commit_resource_closure', 'write_authorized', 'inverse_authorized',
                'store_called', 'commit_called'):
        if value[key] is not False:
            raise ValueError('Capture-only receipt cannot grant write/inverse authority')
    if type(value['model_setters_called']) is not int or value['model_setters_called'] != 0:
        raise ValueError('Preparation must execute zero model setters')
    for key in ('current_read_resources_unchanged', 'has_unrelated_pending_objects'):
        if type(value[key]) is not bool:
            raise ValueError('Actual resource/read-effect boolean required')
    oids = value['modified_object_oids']
    if (not isinstance(oids, list) or len(oids) > 4096
            or any(not isinstance(oid, str) or not oid for oid in oids)
            or len(set(oids)) != len(oids)
            or oids != sorted(oids)):
        raise ValueError('Complete ordered modified-object census required')
    if value['has_unrelated_pending_objects'] != any(oid != component_oid for oid in oids):
        raise ValueError('Actual unrelated dirty-object census differs')
    rows = value['record_summaries']
    if not isinstance(rows, list) or len(rows) != len(ROLES):
        raise ValueError('All three original owner records required')
    for role, row in zip(ROLES, rows):
        if (not isinstance(row, dict) or set(row) != {'role', 'logical_size', 'allocated_size'}
                or row['role'] != role or type(row['logical_size']) is not int
                or type(row['allocated_size']) is not int
                or not 0 < row['logical_size'] <= row['allocated_size'] <= 4194304):
            raise ValueError('Complete original owner-record logical/allocation lengths required')
    if has_models:
        validate_models(value['registered_models'], component_oid=component_oid, generation=value['generation'])
    if has_control:
        from bd_commit_control import validate_summary
        validate_summary(value['ctree_control'], component_oid=component_oid, generation=value['generation'])
    if has_reciprocal:
        from bd_commit_reciprocal import validate_summary as validate_reciprocal
        validate_reciprocal(value['reciprocal_references'], component_oid=component_oid, generation=value['generation'])
    if has_baseline:
        from bd_commit_reference_baseline import validate_summary as validate_baseline
        validate_baseline(value['reference_file_baseline'], token=token, component_oid=component_oid, generation=value['generation'])
    if has_persistent:
        from bd_commit_persistent_owners import validate_summary as validate_persistent
        validate_persistent(value['persistent_owners'], token=token, component_oid=component_oid, generation=value['generation'])
    return clone(value)


def validate_models(value, *, component_oid, generation):
    keys = set(('profile phase component_oid generation registered_sg_roots registered_sg_cache_entries '
        'root_class_counts objects field_objects value_objects boundary_class_counts original_material_held '
        'db_proxies_resolved full_model_transitive_closure model_setters_called store_called write_authorized inverse_authorized').split())
    if (not isinstance(value,dict) or set(value)!=keys or value['profile']!='native_registered_sg_capture_v1'
            or value['phase']!='captured' or value['component_oid']!=component_oid or value['generation']!=generation
            or type(value['generation']) is not int):
        raise ValueError('Exact original loaded SG model capture binding required')
    for key in ('registered_sg_roots','registered_sg_cache_entries','objects','field_objects','value_objects'):
        minimum=0 if key=='value_objects' else 1
        if type(value[key]) is not int or not minimum<=value[key]<=16384:
            raise ValueError('Complete bounded loaded SG capture count required')
    if not value['registered_sg_roots']<=value['registered_sg_cache_entries']<=4096:
        raise ValueError('Complete loaded SG cache root census required')
    for key in ('root_class_counts','boundary_class_counts'):
        classes=value[key]
        if (not isinstance(classes,dict) or any(not isinstance(name,str) or not name or type(count) is not int
                or not 1<=count<=16384 for name,count in classes.items())):
            raise ValueError('Complete loaded SG class census required')
    if sum(value['root_class_counts'].values())!=value['registered_sg_cache_entries']:
        raise ValueError('Original loaded SG root class census differs')
    if value['field_objects']+value['value_objects']+sum(value['boundary_class_counts'].values())>value['objects']:
        raise ValueError('Original loaded SG image census differs')
    if value['original_material_held'] is not True or type(value['model_setters_called']) is not int or value['model_setters_called']!=0:
        raise ValueError('Original loaded SG capture must retain material without setters')
    for key in ('db_proxies_resolved','full_model_transitive_closure','store_called','write_authorized','inverse_authorized'):
        if value[key] is not False:raise ValueError('Loaded SG capture cannot resolve proxies or grant closure/write authority')
    return clone(value)


STATUS_KEYS = frozenset(('profile action native_token resource_token component_oid generation phase '
    'prepared_edit_present original_material_held same_original_binding model_setters_called store_called '
    'commit_called write_authorized inverse_authorized full_commit_resource_closure prepared_receipt '
    'current_resources_checked actual_changes').split())
CHECK_KEYS = frozenset(('logical_records_match_retained matches_retained_before_read '
    'matches_retained_after_read current_read_resources_unchanged').split())


def status(value, *, token, component_oid, checked):
    has_reciprocal=(isinstance(value,dict) and isinstance(value.get('prepared_receipt'),dict)
        and value['prepared_receipt'].get('profile') in (RECIPROCAL_PROFILE, BASELINE_PROFILE, PERSISTENT_PROFILE))
    has_baseline=(isinstance(value,dict) and isinstance(value.get('prepared_receipt'),dict)
        and value['prepared_receipt'].get('profile') in (BASELINE_PROFILE, PERSISTENT_PROFILE))
    has_persistent=(isinstance(value,dict) and isinstance(value.get('prepared_receipt'),dict)
        and value['prepared_receipt'].get('profile')==PERSISTENT_PROFILE)
    has_models=(checked and isinstance(value,dict) and isinstance(value.get('prepared_receipt'),dict)
        and value['prepared_receipt'].get('profile') in (MODEL_PROFILE, CONTROL_PROFILE, RECIPROCAL_PROFILE, BASELINE_PROFILE, PERSISTENT_PROFILE))
    has_control=(has_models and value['prepared_receipt'].get('profile') in (CONTROL_PROFILE, RECIPROCAL_PROFILE, BASELINE_PROFILE, PERSISTENT_PROFILE))
    model_keys={'registered_models_checked','registered_model_summary'} if has_models else set()
    control_keys={'ctree_control_checked','ctree_control_summary'} if has_control else set()
    record_keys=({'record_comparison_profile','full_reference_payloads_checked','raw_records_match_retained'}
        if checked and isinstance(value,dict) and 'record_comparison_profile' in value else set())
    reciprocal_keys={'current_reciprocal_records_checked'} if has_reciprocal else set()
    baseline_keys={'reference_file_baseline','current_reference_file_checked'} if has_baseline else set()
    persistent_keys={'persistent_owners','current_persistent_owners_checked'} if has_persistent else set()
    current_reciprocal = has_reciprocal and checked and value.get('profile') == 'native_commit_status_v2'
    if current_reciprocal:reciprocal_keys.add('reciprocal_summary')
    if type(checked) is not bool or not isinstance(value, dict) or set(value) != STATUS_KEYS | (CHECK_KEYS if checked else set()) | model_keys | control_keys | record_keys | reciprocal_keys | baseline_keys | persistent_keys:
        raise ValueError('Complete fixed retained commit status required')
    if (not isinstance(token, str) or not re.fullmatch(r'edit_[0-9a-f]{64}', token)
            or value['profile'] != ('native_commit_status_v2' if current_reciprocal else 'native_commit_status_v1') or value['action'] != ('check' if checked else 'inspect')
            or value['native_token'] != token or value['resource_token'] != 'commit_' + token[5:]
            or value['component_oid'] != component_oid or value['phase'] != 'captured'
            or type(value['generation']) is not int or value['generation'] <= 0):
        raise ValueError('Exact original retained resource status binding required')
    for key in ('original_material_held', 'same_original_binding'):
        if value[key] is not True: raise ValueError('Original commit material binding lost')
    for key in ('write_authorized', 'inverse_authorized', 'full_commit_resource_closure', 'store_called', 'commit_called'):
        if value[key] is not False: raise ValueError('Read-only commit status cannot grant writes')
    if type(value['model_setters_called']) is not int or value['model_setters_called'] != 0:
        raise ValueError('Read-only commit status performed model setters')
    if type(value['prepared_edit_present']) is not bool or value['current_resources_checked'] is not checked:
        raise ValueError('Explicit original edit presence and live-check scope required')
    prepared = validate(value['prepared_receipt'], token=token, component_oid=component_oid)
    if prepared['generation'] != value['generation']:
        raise ValueError('Original prepared namespace generation changed')
    if has_baseline:
        from bd_commit_reference_baseline import validate_summary as validate_baseline
        baseline=validate_baseline(value['reference_file_baseline'], token=token,
            component_oid=component_oid, generation=value['generation'])
        if (value['current_reference_file_checked'] is not False
                or baseline != prepared['reference_file_baseline']):
            raise ValueError('Original baseline must be retained exactly; current reference file has not been checked')
    if has_persistent:
        from bd_commit_persistent_owners import validate_summary as validate_persistent
        owners=validate_persistent(value['persistent_owners'], token=token,
            component_oid=component_oid, generation=value['generation'])
        if value['current_persistent_owners_checked'] is not False or owners != prepared['persistent_owners']:
            raise ValueError('Original persistent owners must remain exact; their current records have not been checked')
    if has_reciprocal and value['current_reciprocal_records_checked'] is not current_reciprocal:
        raise ValueError('Explicit performed current reciprocal scope required')
    if checked:
        if has_reciprocal and not record_keys:
            raise ValueError('New reciprocal preparation requires complete current owner reference comparison')
        if record_keys and (value['record_comparison_profile']!='complete_reference_payload_v2'
                or value['full_reference_payloads_checked'] is not True or type(value['raw_records_match_retained']) is not bool):
            raise ValueError('Complete reference semantics and separate raw record equality required')
        for key in CHECK_KEYS:
            if type(value[key]) is not bool: raise ValueError('Actual resource comparison flag required')
        changes = value['actual_changes']
        if not isinstance(changes, list) or len(changes) > 4096:
            raise ValueError('Full actual resource changes required; no truncated proof')
        for row in changes:
            if (not isinstance(row, dict) or set(row) != {'category','locus','field','before','after'}
                    or row['category'] not in ('since_preparation','query_read_effect')
                    or any(not isinstance(row[key], str) or not row[key] for key in ('locus','field'))
                    or row['before'] == row['after']):
                raise ValueError('Complete actual changed resource location/value required')
        if has_models:
            proof=value['registered_model_summary']
            if (value['registered_models_checked'] is not True or not isinstance(proof,dict)
                    or set(proof)!=set(('profile original_objects current_objects current_roots current_cache_entries '
                        'actual_change_count original_material_held full_model_transitive_closure write_authorized inverse_authorized').split())
                    or proof['profile']!='native_registered_sg_status_v1' or proof['original_material_held'] is not True
                    or proof['original_objects']!=prepared['registered_models']['objects']):
                raise ValueError('Complete current SG check summary required')
            for key,minimum,maximum in (('original_objects',1,16384),('current_objects',1,16384),
                    ('current_roots',0,4096),('current_cache_entries',0,4096),('actual_change_count',0,4096)):
                if type(proof[key]) is not int or not minimum<=proof[key]<=maximum:
                    raise ValueError('Complete bounded SG current summary census required')
            if proof['current_objects']<proof['original_objects'] or proof['current_roots']>proof['current_cache_entries']:
                raise ValueError('Original SG roster omitted or current registry incomplete')
            for key in ('full_model_transitive_closure','write_authorized','inverse_authorized'):
                if proof[key] is not False:raise ValueError('SG current check cannot authorize inverse/write')
            if proof['actual_change_count']!=sum(row['locus'].startswith('sg/') or row['locus']=='sg_registry' for row in changes):
                raise ValueError('Actual SG changed-location census differs')
        if has_control:
            from bd_commit_control import validate_summary
            proof=validate_summary(value['ctree_control_summary'], component_oid=component_oid,generation=value['generation'],checked=True)
            if (value['ctree_control_checked'] is not True or proof['actual_change_count']!=sum(
                    row['locus'].startswith('ctree_control/') or row['locus']=='ctree_control_registry' for row in changes)):
                raise ValueError('Actual CTree control changed-location census differs')
        if current_reciprocal:
            from bd_commit_reciprocal_current import validate_summary as validate_current_reciprocal
            subset=[row for row in changes if row['locus'].startswith(('reciprocal_record/','ctree_reciprocal/'))]
            validate_current_reciprocal(value['reciprocal_summary'], component_oid, value['generation'],
                prepared['reciprocal_references']['target_count'], subset)
    elif value['actual_changes'] is not None:
        raise ValueError('Material-only inspection cannot claim current resource equality')
    return clone(value)


def summary(value):
    """Keep full actual values in WAL; report bounded locations to the agent."""
    result={key:clone(item) for key,item in value.items() if key not in ('prepared_receipt','actual_changes')}
    changes=value['actual_changes'] or []
    result.update(actual_change_count=len(changes),
        changed_locations=[{key:row[key] for key in ('category','locus','field')} for row in changes[:32]],
        more_changed_locations=len(changes)>32,
        coverage=('owner logical records/full cache membership/modified census/direct fields; retained loaded SG field/value/collection current images; transitive model/CTree closure incomplete'
            if value.get('registered_models_checked') else 'owner logical records/full cache membership/modified census/direct fields; transitive model/CTree closure incomplete'))
    # Keep byte-level metadata compact in agent responses while the complete
    # before/after arrays remain in the durable WAL for exact replay/audit.
    from bd_commit_payload_diff import range_summaries
    payload_rows = []
    for row in changes:
        if (row.get('field') == '$logical_bytes'
                and isinstance(row.get('before'), list)
                and isinstance(row.get('after'), list)
                and all(type(item) is int and 0 <= item <= 255
                        for item in row['before'] + row['after'])):
            payload_rows.append({
                'category': row['category'], 'locus': row['locus'],
                'ranges': range_summaries(row['before'], row['after'])})
    result.update(payload_range_count=sum(len(item['ranges']) for item in payload_rows),
                  payload_ranges=payload_rows[:32],
                  more_payload_ranges=len(payload_rows) > 32)
    if value.get('ctree_control_checked'):
        result['coverage']+='; all CTree leaf control routes/markers/ordered savepoints; native transaction support and finite reciprocal persistent write set unverified'
    if value.get('full_reference_payloads_checked'):
        result['coverage']+='; complete tag-1 reference count/OIDs and separate unparsed raw record tails'
    elif value.get('prepared_receipt',{}).get('profile') in (RECIPROCAL_PROFILE, BASELINE_PROFILE, PERSISTENT_PROFILE):
        result['coverage']+='; original complete owner reference payload captured; current owner payloads not checked'
    else:
        result['coverage']+='; historical declared reference prefixes only: final reference OID bytes were not checked'
    if value.get('prepared_receipt',{}).get('profile') in (RECIPROCAL_PROFILE, BASELINE_PROFILE, PERSISTENT_PROFILE):
        result['coverage']+=('; original-target reciprocal inbound before/current records and full actual diff checked; new outgoing targets not captured'
            if value.get('current_reciprocal_records_checked') else
            '; original reciprocal inbound before records captured; current reciprocal inbound records not checked; new outgoing targets not captured')
    if value.get('prepared_receipt',{}).get('profile') in (BASELINE_PROFILE, PERSISTENT_PROFILE):
        result['coverage']+='; same-preparation reference-file observational baseline retained; current reference file not checked; EOF, cross-process atomicity and persistent inverse unverified'
    if value.get('prepared_receipt',{}).get('profile')==PERSISTENT_PROFILE:
        result['coverage']+='; original component/spec-source DBObject fields and records retained; current persistent owners not checked; persistent write/inverse unverified'
    return result
