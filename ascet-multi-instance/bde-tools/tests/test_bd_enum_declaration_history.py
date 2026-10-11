"""Exact Enum first-undo planning controls from real captured material; 0 live writes."""
from copy import deepcopy
import json
from pathlib import Path
import unittest
from unittest.mock import Mock

from bd_declaration_cache import classify
from bd_declaration_history import preparation as variable_preparation
from bd_enum_declaration_history import preparation
from bd_native_structure import NativeStructureAdapter

ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT / 'analysis/bde-experiments/2026-10-06/bde-enum-body-tool-capture-01/result.json'


def fixture():
    """Synthetic history target using the retained, actual factory before/after images."""
    original = json.loads(SOURCE.read_text(encoding='utf-8'))
    material = original['material']; body = material['declaration_material']
    current = deepcopy(body['after']); rows = {r['ref']: r for r in deepcopy(current)['objects']}
    rows.update({r['ref']: deepcopy(r) for r in body['before']['objects']})
    classified = classify(current, body['after_schema'], current, body['after_schema'], owner=body['owner_ref'])
    cache = dict(profile='native_declaration_read_cache_evidence_v1', previous_recorded=deepcopy(current),
        previous_schema=deepcopy(body['after_schema']),
        namespace_bindings=[[r['ref'], r['ref']] for r in current['objects']],
        recorded=deepcopy(current), recorded_schema=deepcopy(body['after_schema']),
        current=deepcopy(current), current_schema=deepcopy(body['after_schema']), owner_ref=body['owner_ref'],
        native_guard=dict(profile='native_declaration_cache_guard_v1', non_cache_original_state_unchanged=True,
            changed_entries=len(classified['changes']), new_objects=classified['new_objects'],
            cache_objects=classified['cache_objects'], model_setters_called=0, store_called=False, inverse_authorized=False),
        write_authorized=False)
    model = next(r for r in current['objects'] if r['ref'] == body['created_model_ref'])
    names = next(r['field_names'] for r in body['after_schema']['objects'] if r['ref'] == model['ref'])
    proof = dict(profile='native_enum_definition_history_evidence_v1', component_oid=material['component_oid'],
        definition_oid=body['definition_oid'], definition_path=body['definition_path'], generation=body['generation'],
        definition_ref=body['definition_ref'], enumeration_ref=body['enumeration_ref'],
        type_proxy_ref=model['value'][names.index('sgClass')]['ref'], type_proxy_class='SGEnumerationDB',
        type_proxy_oid=body['definition_oid'], model_type='enum',
        definition_references_original_before=deepcopy(body['definition_references_before']),
        definition_references_original_after=deepcopy(body['definition_references_after']),
        definition_references_current=deepcopy(body['definition_references_after']),
        definition_references_expected=deepcopy(body['definition_references_before']),
        definition_references_persisted_current=deepcopy(body['definition_references_before']),
        reference_source='readReferences_loaded_and_database', persisted_reference_source='readIsReferencedByOnly',
        persisted_target_verified=False,
        same_definition_retained=True, same_enumeration_retained=True, type_resolves_to_original=True,
        model_setters_called=0, store_called=False, write_authorized=False)
    return material, dict(profile='native_enum_declaration_exact_target_v1', current=current,
        original=deepcopy(body['before']), expected=dict(profile='native_graphical_current_v1', complete=True,
            objects=list(rows.values())), current_schema=deepcopy(body['after_schema']),
        original_schema=deepcopy(body['before_schema']), expected_schema=deepcopy(body['after_schema']),
        owner_ref=body['owner_ref'], created_model_ref=body['created_model_ref'],
        created_model_oid=material['created_model_oid'], expected_model_present=False,
        same_original_objects_retained=True, read_cache_evidence=cache, definition_evidence=proof)


class EnumHistoryTests(unittest.TestCase):
    def setUp(self): self.material, self.value = fixture()
    def validate(self): return preparation(self.value, expected_present=False, creation_material=self.material)

    def test_original_forward_material_explains_exact_detach_target(self):
        result = self.validate()
        self.assertFalse(result['expected_model_present'])
        self.assertFalse(result['definition_evidence']['write_authorized'])

    def test_same_name_foreign_definition_oid_is_rejected(self):
        self.value['definition_evidence']['definition_oid'] = 'foreign'
        with self.assertRaisesRegex(ValueError, 'definition/type/namespace'): self.validate()

    def test_proxy_oid_must_resolve_to_original_definition(self):
        self.value['definition_evidence']['type_proxy_oid'] = 'foreign'
        with self.assertRaises(ValueError): self.validate()

    def test_proxy_identity_cannot_be_substituted(self):
        self.value['definition_evidence']['type_proxy_ref'] = 'foreign'
        with self.assertRaisesRegex(ValueError, 'proxy identity'): self.validate()

    def test_later_foreign_reference_is_conflict(self):
        self.value['definition_evidence']['definition_references_current'].append(['z_foreign', 'SGClass'])
        with self.assertRaisesRegex(ValueError, 'CURRENT/target'): self.validate()

    def test_expected_ref_set_must_remove_original_owner_change(self):
        self.value['definition_evidence']['definition_references_expected'] = deepcopy(
            self.value['definition_evidence']['definition_references_current'])
        with self.assertRaisesRegex(ValueError, 'CURRENT/target'): self.validate()

    def test_forward_ref_baseline_cannot_be_rewritten(self):
        self.value['definition_evidence']['definition_references_original_before'] = []
        with self.assertRaisesRegex(ValueError, 'baselines'): self.validate()

    def test_model_alias_must_be_actual_factory_oid(self):
        self.value['created_model_oid'] = 'm_' + 'f' * 40
        with self.assertRaisesRegex(ValueError, 'model OID'): self.validate()

    def test_namespace_model_binding_cannot_be_forged(self):
        self.value['created_model_ref'] = self.value['owner_ref']
        with self.assertRaisesRegex(ValueError, 'namespace mapping'): self.validate()

    def test_variable_contract_still_refuses_enum(self):
        with self.assertRaises(ValueError): variable_preparation(self.value, expected_present=False)

    def test_self_consistent_forged_original_target_is_rejected(self):
        row = next(r for r in self.value['original']['objects'] if r['class'] == 'String')
        row['value'] += ' forged'
        peer = next(r for r in self.value['expected']['objects'] if r['ref'] == row['ref'])
        peer['value'] = row['value']
        with self.assertRaisesRegex(ValueError, 'forward before material'): self.validate()

    def test_original_schema_must_match_forward_before(self):
        self.value['original_schema']['objects'][0]['field_names'][0] = 'forged'
        with self.assertRaisesRegex(ValueError, 'forward before material'): self.validate()

    def test_combined_references_do_not_prove_persisted_target(self):
        self.value['definition_evidence']['persisted_target_verified'] = True
        with self.assertRaisesRegex(ValueError, 'definition/type/namespace'): self.validate()

    def test_persisted_reference_collection_must_be_canonical(self):
        self.value['definition_evidence']['definition_references_persisted_current'] *= 2
        with self.assertRaises(ValueError): self.validate()

    def test_enum_profile_never_enables_variable_history_execution(self):
        environment=dict(ASCET_BD_CREATE_MATERIAL='identity_v1',ASCET_BD_OPERATION_EXECUTOR='staged_v1',
            ASCET_BD_CREATE_HISTORY='native_source_exact_v1',ASCET_BD_CREATE_DECLARATIONS='enum_body_v1',
            ASCET_BD_CREATE_DECLARATION_HISTORY='enum_prepare_exact_v1')
        adapter=NativeStructureAdapter('BDE_Tool_Experiments\\Trial_Enum',environment=environment)
        self.assertTrue(adapter.create_enum_history_preparation_capable)
        self.assertFalse(adapter.create_declaration_history_capable)
        adapter._ensure_open=Mock()
        with self.assertRaisesRegex(ValueError, 'does not authorize'):
            adapter.execute_create_history({},dict(kind='enumeration'))
        adapter._ensure_open.assert_not_called()


if __name__ == '__main__': unittest.main()
