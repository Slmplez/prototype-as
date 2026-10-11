"""Independently compare private runtime storage with the retained complete source."""
import re

from bd_service import digest
from bd_source_inverse_oracle import decode_graph, equal


def inspect_runtime(value, token, oid, generation, *, expected_source, expected_scopes=None):
    if (type(value) is not dict or value.get('profile') != 'class_source_runtime_storage_v1'
            or type(token) is not str or re.fullmatch(r'cand_[0-9a-f]{64}', token) is None
            or value.get('token') != token or value.get('oid') != oid
            or type(value.get('generation')) is not int or value['generation'] != generation
            or value.get('native_graph_clone_profile') != 'native_graph_clone_v1'):
        raise ValueError('Exact owner-bound runtime source clone required')
    if (type(value.get('model_setters_called')) is not int or value['model_setters_called'] != 0
            or any(value.get(key) is not False for key in ('store_called', 'store_to_cache_called',
                   'spec_source_setter_called', 'write_authorized', 'native_merge_executor_available'))
            or value.get('live_original_unchanged') is not True
            or value.get('native_source_matches') is not True
            or type(value.get('private_graph_unchanged')) is not bool
            or type(value.get('native_private_create_storage_calls')) is not int
            or value['native_private_create_storage_calls'] != 1
            or any(type(value.get(key)) is not int or value[key] <= 0 for key in
                   ('native_keyed_members', 'copied_runtime_objects', 'verified_runtime_fields'))):
        raise ValueError('Private runtime storage cannot authorize model publication')
    changes = value.get('private_normalization_changes')
    steps = value.get('private_normalization_inverse_steps')
    if (type(changes) is not list or len(changes) > 100000
            or value.get('private_normalization_restored') is not True
            or type(steps) is not int or steps < 0
            or (not changes) is not value['private_graph_unchanged']
            or bool(changes) != (steps > 0)):
        raise ValueError('Private runtime normalization needs its actual diff and exact inverse')
    for row in changes:
        if (type(row) is not dict or row.get('kind') not in ('fields', 'collection')
                or type(row.get('native_class')) is not str or not row['native_class']
                or (row.get('native_key') is not None and type(row['native_key']) is not str)
                or type(row.get('index')) is not int):
            raise ValueError('Exact private normalization field/collection locator required')
        if row['kind'] == 'fields':
            if row['index'] <= 0 or any(type(row.get(key)) is not str or not row[key]
                                       for key in ('field', 'before_class', 'after_class')):
                raise ValueError('Exact native normalization field shape required')
        elif row['index'] != 0 or any(type(row.get(key)) is not int or row[key] < 0
                                     for key in ('before_size', 'after_size')):
            raise ValueError('Exact native normalization collection shape required')
    baseline = decode_graph(expected_source, oid)
    expected = decode_graph(value.get('expected_source_graph'), oid)
    generated = decode_graph(value.get('generated_source_graph'), oid)
    if not equal(baseline, expected):
        raise ValueError('Runtime storage baseline differs from the retained candidate current source')
    if not equal(expected, generated):
        raise ValueError('Native private runtime storage differs from the complete persisted source')
    proof = {'profile': value['profile'], 'complete_source_values_verified': True,
            'runtime_generated_source_matches': True, 'live_original_unchanged': True,
            'private_graph_unchanged': value['private_graph_unchanged'],
            'private_normalization_changes': changes,
            'private_normalization_inverse_steps': steps,
            'private_normalization_restored': True,
            'native_keyed_members': value['native_keyed_members'],
            'copied_runtime_objects': value['copied_runtime_objects'],
            'verified_runtime_fields': value['verified_runtime_fields'],
            'expected_source_sha256': digest(value['expected_source_graph']),
            'generated_source_sha256': digest(value['generated_source_graph']),
            'write_authorized': False, 'native_merge_executor_available': False,
            'not_verified': ['merged candidate runtime mapping and publication', 'native Class local inverse']}
    if 'storage_witness' in value:
        from bd_storage_witness import inspect_storage_witness
        proof['storage_witness'] = inspect_storage_witness(value['storage_witness'], oid, generation,
                                                          expected_source=expected_source, expected_scopes=expected_scopes)
    return proof


def inspect_retained_runtime(value, token, oid, generation, *, expected_sources, expected_generations=None, expected_scopes=None):
    """Bind both capture-time sources to the candidate and the original edit observations."""
    if (type(value) is not dict or value.get('profile') != 'class_retained_runtime_audit_v1'
            or type(token) is not str or re.fullmatch(r'cand_[0-9a-f]{64}', token) is None
            or value.get('token') != token or value.get('oid') != oid
            or type(value.get('generation')) is not int or value['generation'] != generation
            or value.get('current_baseline_verified') is not True
            or type(value.get('model_setters_called')) is not int or value['model_setters_called'] != 0
            or any(value.get(key) is not False for key in
                   ('store_called', 'write_authorized', 'native_merge_executor_available'))):
        raise ValueError('Exact current-bound private retained runtime audit required')
    captures = value.get('captures')
    if (type(captures) is not list or len(captures) != 2
            or any(type(row) is not dict for row in captures)
            or [row.get('phase') for row in captures] != ['original', 'applied']):
        raise ValueError('Complete original and applied capture-time images required')
    proofs = []
    for row in captures:
        phase = row['phase']
        captured_generation = row.get('capture_generation')
        if (type(captured_generation) is not int or captured_generation <= 0
                or row.get('material_binding') != ('originalBindings' if phase == 'original' else 'afterBindings')
                or row.get('capture_state') != ('prepared' if phase == 'original' else 'applied')
                or row.get('seal_verified') is not True or row.get('copied_graph_unchanged') is not True
                or type(row.get('private_seal_negative_checks')) is not int or row['private_seal_negative_checks'] != 3
                or row.get('private_field_fault_detected') is not True or row.get('private_mapping_fault_detected') is not True
                or type(row.get('historical_live_fields_match_capture')) is not bool
                or expected_generations is not None and captured_generation != expected_generations[phase]):
            raise ValueError('Retained image phase, seal or original edit generation differs')
        if 'storage_witness' in row and (
                type(row.get('private_storage_binding_negative_checks')) is not int
                or row['private_storage_binding_negative_checks'] != 4
                or row.get('private_storage_binding_faults_restored') is not True):
            raise ValueError('Retained storage native-pair seals require actual private faults and restoration')
        private = {**row, 'profile': 'class_source_runtime_storage_v1', 'token': token,
                   'oid': oid, 'generation': captured_generation,
                   'native_graph_clone_profile': 'native_graph_clone_v1',
                   'private_graph_unchanged': not row.get('private_normalization_changes'),
                   'native_private_create_storage_calls': 1, 'live_original_unchanged': True,
                   'native_source_matches': True, 'model_setters_called': 0,
                   'store_called': False, 'store_to_cache_called': False, 'spec_source_setter_called': False,
                   'write_authorized': False, 'native_merge_executor_available': False}
        proof = inspect_runtime(private, token, oid, captured_generation,
                                expected_source=expected_sources[phase])
        proof['live_original_unchanged_at_capture'] = proof.pop('live_original_unchanged')
        if 'storage_witness' in row and expected_scopes is not None:
            from bd_storage_witness import inspect_storage_witness
            proof['storage_witness'] = inspect_storage_witness(row['storage_witness'], oid, captured_generation,
                expected_source=expected_sources[phase], expected_scopes=expected_scopes[phase])
        if 'storage_witness' in row:
            proof.update(private_storage_binding_negative_checks=4, private_storage_binding_faults_restored=True)
        proofs.append({**proof, 'phase': phase, 'capture_generation': captured_generation,
                       'seal_verified': True, 'copied_graph_unchanged': True,
                       'private_seal_negative_checks': 3, 'private_field_fault_detected': True,
                       'private_mapping_fault_detected': True,
                       'historical_live_fields_match_capture': row['historical_live_fields_match_capture']})
    return {'profile': value['profile'], 'captures': proofs, 'current_baseline_verified': True,
            'capture_time_sources_verified': True, 'write_authorized': False,
            'native_merge_executor_available': False,
            'not_verified': ['cross-capture edge identity', 'merged runtime publication', 'native Class local inverse']}
