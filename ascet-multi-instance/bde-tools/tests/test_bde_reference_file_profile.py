"""Offline fixed-profile rejection controls; no native calls or scanner execution.

Native v2 live-07 is pinned separately. An additional detached v1 live-05 copy
with structured GV literals is explicitly synthetic, not native v2 evidence.
"""
from copy import deepcopy
import hashlib
import json
from pathlib import Path
import re
import unittest

from bde_reference_file_profile_experiment import validate_profile


ROOT = Path(__file__).resolve().parents[1]
INPUTS = {
    'profile': ('analysis/bde-experiments/2026-10-07/bde-reference-file-profile-live-05/profile.json',
                '8df7e228b584bf972c77e8c13d3b55966df633e01cfeb99f68d709931bc7e319'),
    'original': ('analysis/bde-experiments/2026-10-07/bde-commit-reciprocal-prepare-live-01/result.json',
                 'a3102b2bd8d645e59c2fa9a60085a3eac471b2de389b92dca164e95e1b8570a4'),
    'v2': ('analysis/bde-experiments/2026-10-07/bde-reference-file-profile-live-07/profile.json',
           'fbb8924e007877800d7c60363d6aadb7125220a926a7dab1d3b32e960cd97f26'),
}


def fixture_v2(saved):
    value = deepcopy(saved)
    value.update(profile='native_reference_file_profile_v2', gv_pool_bindings_rechecked=True)
    for row in value['gv_methods']:
        old = row['literals'][0]
        match = re.fullmatch(r"'([A-Za-z0-9]+)' -> ([0-9]+)", old['value'])
        if old['class'] != 'EsPoolAssociation' or old['kind'] != 'atom' or match is None:
            raise AssertionError('Exact saved live-05 GV pool text required for offline fixture')
        row['literals'][0] = {'kind': 'association', 'class': 'EsPoolAssociation',
                              'key': match[1], 'value': int(match[2])}
    return value


class ReferenceFileProfileTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.inputs = {}
        for name, (path, digest) in INPUTS.items():
            raw = (ROOT / path).read_bytes()
            if hashlib.sha256(raw).hexdigest() != digest:
                raise AssertionError('Sealed profile input changed: ' + path)
            cls.inputs[name] = json.loads(raw)

    def setUp(self):
        self.profile = deepcopy(self.inputs['v2'])
        self.original = deepcopy(self.inputs['original'])

    def rejected(self, value):
        with self.assertRaises((ValueError, KeyError)):
            validate_profile(value, self.original)

    def test_saved_v2_preserves_ten_dynamic_prefixes_and_no_authority(self):
        before = deepcopy(self.profile)
        proof = validate_profile(self.profile, self.original)
        self.assertEqual(proof['native_binding_count'], 10)
        self.assertEqual([row['runtime_address_library_bytes'] for row in proof['native_bindings']],
                         [row['platform_function_bytes'][:8] for row in self.profile['functions']])
        self.assertTrue(any(any(row['runtime_address_library_bytes']) for row in proof['native_bindings']))
        self.assertFalse(proof['scan_executed'])
        self.assertFalse(proof['write_authorized'])
        self.assertFalse(proof['inverse_authorized'])
        self.assertEqual(self.profile, before)

    def test_separate_synthetic_v2_fixture_has_no_native_execution_claim(self):
        value = fixture_v2(self.inputs['profile'])
        proof = validate_profile(value, self.original)
        self.assertEqual(proof['native_binding_count'], 10)
        self.assertTrue(proof['gv_pool_bindings_verified'])
        self.assertFalse(proof['scan_executed'])
        self.assertEqual(value['profile_index'], 4)
        self.assertEqual(self.profile['profile_index'], 6)

    def test_old_v1_unstructured_gv_profile_cannot_be_upgraded_implicitly(self):
        self.rejected(deepcopy(self.inputs['profile']))
        value = deepcopy(self.profile); value['gv_methods'] = deepcopy(self.inputs['profile']['gv_methods'])
        self.rejected(value)

    def test_native_selector_duplicates_omission_and_unknown_are_rejected(self):
        for mutate in (lambda p: p['functions'].pop(),
                       lambda p: p['functions'].__setitem__(1, deepcopy(p['functions'][0])),
                       lambda p: p['functions'][0].update(selector='unreviewedRead:'),
                       lambda p: p['functions'].append(deepcopy(p['functions'][0]))):
            value = deepcopy(self.profile); mutate(value)
            with self.subTest(mutate=mutate): self.rejected(value)

    def test_fixed_abi_name_and_terminator_are_exact(self):
        # Offset eight starts fixed ABI; the first eight bytes are runtime bindings.
        for index in (8, 9, 10, 11, 12, 14, -1):
            value = deepcopy(self.profile)
            value['functions'][0]['platform_function_bytes'][index] ^= 1
            with self.subTest(index=index): self.rejected(value)
        for transform in (lambda b: b[:-1], lambda b: b + [0]):
            value = deepcopy(self.profile)
            value['functions'][0]['platform_function_bytes'] = transform(value['functions'][0]['platform_function_bytes'])
            self.rejected(value)

    def test_complete_runtime_function_bytes_reject_bool_negative_and_oversized(self):
        for byte in (False, -1, 256, 0.0):
            value = deepcopy(self.profile); value['functions'][0]['platform_function_bytes'][0] = byte
            with self.subTest(byte=byte): self.rejected(value)

    def test_native_bytecodes_reject_bool_wrong_size_and_wrong_bytes(self):
        for transform in (lambda b: [False] + b[1:], lambda b: b[:-1], lambda b: b + [0],
                          lambda b: [255] + b[1:]):
            value = deepcopy(self.profile); value['functions'][0]['bytecodes'] = transform(value['functions'][0]['bytecodes'])
            self.rejected(value)

    def test_method_slot_and_selector_index_are_strict_bounded_integers(self):
        for collection in ('functions', 'gv_methods'):
            for field, replacement in [('method_slot', True), ('method_slot', 0), ('method_slot', -1),
                    ('selector_index', True), ('selector_index', 0), ('selector_index', 2), ('selector_index', 65537)]:
                value = deepcopy(self.profile); value[collection][0][field] = replacement
                with self.subTest(collection=collection, field=field, replacement=replacement): self.rejected(value)

    def test_native_requested_and_defining_classes_are_fixed(self):
        for field in ('requested_class', 'defining_class'):
            value = deepcopy(self.profile); value['functions'][0][field] = 'CTreestdDLL'
            self.rejected(value)

    def test_gv_method_census_selector_and_inheritance_are_exact(self):
        for mutate in (lambda p: p['gv_methods'].pop(),
                       lambda p: p['gv_methods'].__setitem__(1, deepcopy(p['gv_methods'][0])),
                       lambda p: p['gv_methods'][0].update(selector='getCTreeGV'),
                       lambda p: p['gv_methods'][0].update(requested_class='CTwngv class'),
                       lambda p: p['gv_methods'][1].update(defining_class='CTGVCTreestdFputFget')):
            value = deepcopy(self.profile); mutate(value)
            with self.subTest(mutate=mutate): self.rejected(value)

    def test_gv_bytecode_and_uint16_accessor_literal_are_exact(self):
        for transform in (lambda b: [False] + b[1:], lambda b: b[:-1], lambda b: b + [0], lambda b: [255] + b[1:]):
            value = deepcopy(self.profile); value['gv_methods'][1]['bytecodes'] = transform(value['gv_methods'][1]['bytecodes'])
            self.rejected(value)
        value = deepcopy(self.profile); value['gv_methods'][1]['literals'][1]['value'] = '#uint32At:'
        self.rejected(value)

    def test_gv_pool_name_type_value_and_recheck_are_exact(self):
        for field, replacement in [('kind', 'atom'), ('class', 'Association'), ('key', 'foreignOffset'),
                                   ('value', True), ('value', 513), ('value', '512')]:
            value = deepcopy(self.profile); value['gv_methods'][0]['literals'][0][field] = replacement
            with self.subTest(field=field, replacement=replacement): self.rejected(value)
        for replacement in (False, 1, None):
            value = deepcopy(self.profile); value['gv_pool_bindings_rechecked'] = replacement; self.rejected(value)

    def test_gv_offset_cannot_select_other_initializer_layout(self):
        for index, offset in ((1, 68), (2, 64), (3, 66), (4, 70)):
            value = deepcopy(self.profile); value['gv_methods'][index]['literals'][0]['value'] = offset
            self.rejected(value)

    def test_report_namespace_profile_and_generation_are_strict(self):
        for field, replacement in [('profile', 'native_reference_file_profile_v0'), ('native_token', 'edit_' + 'b' * 64),
                ('component_oid', 'foreign'), ('generation', True), ('generation', 0), ('generation', 2),
                ('library_class', 'CTreestdDLL'), ('gv_class', 'CTwngv')]:
            value = deepcopy(self.profile); value[field] = replacement
            with self.subTest(field=field): self.rejected(value)

    def test_profile_file_key_and_gv_sizes_reject_boolean_float_or_out_of_range(self):
        for field, replacement in [('profile_index', True), ('profile_index', 0), ('profile_index', 17),
                ('unique_number', False), ('unique_number', 0.0), ('key_length', 53.0),
                ('gv_size', True), ('gv_size', 513), ('data_number', False), ('data_number', -1),
                ('index_number', True), ('index_number', -1), ('key_duplicates', 0)]:
            value = deepcopy(self.profile); value[field] = replacement
            with self.subTest(field=field, replacement=replacement): self.rejected(value)

    def test_raw_key_schema_complete_bytes_cannot_be_truncated_or_typed_bool(self):
        for transform in (lambda b: b[:-1], lambda b: b + [0], lambda b: [False] + b[1:], lambda b: []):
            value = deepcopy(self.profile); value['ct_key_bytes'] = transform(value['ct_key_bytes'])
            self.rejected(value)

    def test_raw_key_dimensions_must_match_fixed_original_index_schema(self):
        # Independent audit derives 32-byte stride and uint16 offsets zero/four.
        for offset in (0, 4, 32, 36):
            value = deepcopy(self.profile); value['ct_key_bytes'][offset] ^= 1
            with self.subTest(offset=offset): self.rejected(value)

    def test_scan_write_store_and_atomicity_flags_cannot_gain_authority(self):
        for field in ('scan_executed', 'store_called', 'commit_called', 'write_authorized', 'inverse_authorized',
                      'complete_before_authorized', 'atomic_snapshot_verified'):
            for replacement in (True, 0):
                value = deepcopy(self.profile); value[field] = replacement
                with self.subTest(field=field, replacement=replacement): self.rejected(value)
        value = deepcopy(self.profile); value['model_setters_called'] = False; self.rejected(value)

    def test_method_identity_and_function_byte_rechecks_cannot_be_integer_truths(self):
        for field in ('method_identity_rechecked', 'function_bytes_unchanged'):
            for replacement in (False, 1):
                value = deepcopy(self.profile); value[field] = replacement; self.rejected(value)

    def test_extra_report_and_method_fields_are_rejected(self):
        value = deepcopy(self.profile); value['unreviewed_scan_option'] = True; self.rejected(value)
        value = deepcopy(self.profile); value['functions'][0]['unreviewed_function'] = True; self.rejected(value)


if __name__ == '__main__':
    unittest.main()
