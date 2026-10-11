"""Offline joint checks against sealed v4 evidence; these tests never call ASCET."""
from copy import deepcopy
import hashlib
import json
from pathlib import Path
import unittest
from unittest.mock import Mock

from bd_commit_control_audit import recompute_controls
from bd_commit_model_diff import recompute
from bd_commit_model_images import validate_audit
from bd_commit_reciprocal import validate_capture
from bd_edit_journal import NativePreconditionConflict
from bd_native_structure import NativeStructureAdapter
import test_bd_commit_control_integration as control_fixtures
import test_bd_commit_model_diff as model_fixtures
import test_bd_commit_reciprocal as reciprocal_fixtures
import test_bd_commit_resources as resource_fixtures


ROOT = Path(__file__).resolve().parents[1]
EVIDENCE = {
    'tool': ('analysis/bde-experiments/2026-10-07/bde-commit-reciprocal-tool-live-01/audit.json',
             'b216b2acc344d9c20ba853f640defbb832ef0c2d059a691331310a51fa0be718'),
    'prepare': ('analysis/bde-experiments/2026-10-07/bde-commit-reciprocal-prepare-live-01/audit.json',
                'c19c812d4151839e1be09ecb72321fbb53d68d00d32375f6d880657e7b4c1155'),
}


def environment():
    return dict(control_fixtures.environment(), ASCET_BD_COMMIT_RECIPROCAL_CAPTURE='outgoing_v1')


class ReciprocalAuditIntegrationTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.evidence = {}
        for name, (path, expected) in EVIDENCE.items():
            content = (ROOT / path).read_bytes()
            actual = hashlib.sha256(content).hexdigest()
            if actual != expected:
                raise AssertionError('Sealed reciprocal audit changed: ' + path)
            cls.evidence[name] = json.loads(content)

    def test_saved_tool_audit_independently_recomputes_full_diff_without_current_inbound_claim(self):
        audit = deepcopy(self.evidence['tool'])
        self.assertEqual(audit['prepared_receipt']['profile'], 'native_commit_prepare_v4')
        actual = recompute(audit)
        self.assertEqual(actual, audit['last_actual_changes'])
        self.assertEqual(len(actual), 12)
        self.assertEqual(sum(row['locus'].startswith('cache_entry/') for row in actual), 10)
        self.assertEqual(sum(row['locus'].startswith('ctree/') for row in actual), 2)
        self.assertEqual(recompute_controls(audit, audit['registered_model_checks'][-1]['resource_check_index']), [])
        self.assertIs(audit['current_reciprocal_records_checked'], False)
        self.assertEqual(validate_capture(audit['original_reciprocal_capture'])['record_count'], 9)
        self.assertEqual(audit, self.evidence['tool'])

    def test_v4_cannot_drop_original_or_current_ctree_evidence(self):
        for field in ('ctree_control_original_image', 'ctree_control_after_capture',
                      'ctree_control_capture_read_effects', 'ctree_control_checks'):
            audit = deepcopy(self.evidence['tool'])
            audit.pop(field)
            with self.subTest(field=field), self.assertRaises((ValueError, KeyError)):
                recompute(audit)
        audit = deepcopy(self.evidence['tool'])
        audit['prepared_receipt'].pop('ctree_control')
        with self.assertRaises((ValueError, KeyError)):
            recompute(audit)

    def test_v4_cannot_drop_original_reciprocal_capture_or_a_required_target(self):
        for edit in (lambda a: a.pop('original_reciprocal_capture'),
                     lambda a: a['original_reciprocal_capture']['records'].pop(),
                     lambda a: a['prepared_receipt'].pop('reciprocal_references')):
            audit = deepcopy(self.evidence['tool'])
            edit(audit)
            with self.subTest(edit=edit), self.assertRaises((ValueError, KeyError)):
                recompute(audit)

    def test_unperformed_current_inbound_check_cannot_be_upgraded_or_omitted(self):
        for value in (True, 0, 1, None):
            audit = deepcopy(self.evidence['tool'])
            if value is None:
                audit.pop('current_reciprocal_records_checked')
            else:
                audit['current_reciprocal_records_checked'] = value
            with self.subTest(value=value), self.assertRaises((ValueError, KeyError)):
                recompute(audit)

    def test_reciprocal_outgoing_row_must_be_the_exact_original_root_record(self):
        audit = deepcopy(self.evidence['tool'])
        row = audit['original_reciprocal_capture']['outgoing_record']
        self.assertGreater(row['allocated_size'], row['logical_size'])
        row['allocated_bytes'][-1] ^= 1
        # This remains a valid reference capture; only its binding to root evidence changed.
        validate_capture(audit['original_reciprocal_capture'])
        with self.assertRaisesRegex(ValueError, 'Original reciprocal evidence differs'):
            recompute(audit)

    def test_reciprocal_internal_consistency_does_not_authorize_foreign_root_namespace(self):
        for field, replacement in [('component_oid', 'foreign_component'), ('generation', 999)]:
            audit = deepcopy(self.evidence['tool'])
            original = audit['original_reciprocal_capture']
            original[field] = replacement
            original['summary'][field] = replacement
            audit['prepared_receipt']['reciprocal_references'][field] = replacement
            # The nested capture is self-consistent but belongs to a different root namespace.
            validate_capture(original)
            with self.subTest(field=field), self.assertRaisesRegex(ValueError, 'Original reciprocal evidence differs'):
                recompute(audit)

    def test_v4_model_before_and_query_remain_bound_to_original_generation_and_roster(self):
        audit = deepcopy(self.evidence['tool'])
        proof = validate_audit(audit)
        self.assertEqual(proof['objects'], 396)
        for edit in (lambda a: a['registered_model_original_image'].pop(),
                     lambda a: a['registered_models'].update(generation=999),
                     lambda a: a['registered_model_checks'][-1]['after'].update(original_material_held=False)):
            invalid = deepcopy(self.evidence['tool'])
            edit(invalid)
            with self.subTest(edit=edit), self.assertRaises(ValueError):
                recompute(invalid)

    def test_prepare_only_capture_cannot_be_substituted_for_a_current_query(self):
        audit = deepcopy(self.evidence['prepare'])
        self.assertEqual(validate_audit(audit)['objects'], 396)
        self.assertEqual(validate_capture(audit['original_reciprocal_capture'])['target_count'], 9)
        self.assertIs(audit['current_reciprocal_records_checked'], False)
        with self.assertRaises(ValueError):
            recompute(audit)


class ReciprocalAdapterIntegrationTests(unittest.TestCase):
    def adapter(self, env=None, diagram='Main'):
        value = NativeStructureAdapter('BDE_Tool_Experiments/Trial_Control', diagram,
                                       environment=environment() if env is None else env)
        value.domain = {'oid': resource_fixtures.OID}
        value._exchange = Mock(side_effect=AssertionError('Offline integration must not dispatch native calls'))
        return value

    def test_v4_profile_selection_preparation_and_zero_write_gate(self):
        adapter = self.adapter()
        self.assertEqual(adapter.commit_resource_receipt_profile, 'native_commit_prepare_v4')
        observation = {'nodes': [], 'edges': [], 'targets': []}
        self.assertEqual(adapter._preparation(dict(preparation=observation,
            commit_resources=reciprocal_fixtures.receipt_fixture()), resource_fixtures.TOKEN), observation)
        self.assertFalse(adapter.commit_resources_prepared['reciprocal_references']['write_authorized'])
        with self.assertRaises(NativePreconditionConflict):
            adapter.apply(resource_fixtures.TOKEN)
        adapter._exchange.assert_not_called()

    def test_reciprocal_environment_dependencies_and_main_scope_are_mandatory(self):
        for field in environment():
            for replacement in (None, 'unknown'):
                if field == 'ASCET_BD_COMMIT_RECIPROCAL_CAPTURE' and replacement is None:
                    continue  # Explicitly opting out selects v3, which remains a valid separate profile.
                env = environment()
                if replacement is None:
                    env.pop(field)
                else:
                    env[field] = replacement
                with self.subTest(field=field, replacement=replacement), self.assertRaises(ValueError):
                    self.adapter(env)
        with self.assertRaises(ValueError):
            self.adapter(diagram='Main/h1')

    def test_requested_v4_cannot_silently_accept_v1_v2_or_v3_coverage(self):
        for prepared in (resource_fixtures.receipt(), model_fixtures.original()['prepared_receipt'],
                         control_fixtures.receipt()):
            adapter = self.adapter()
            with self.subTest(profile=prepared['profile']), self.assertRaisesRegex(ValueError, 'coverage differs'):
                adapter._preparation(dict(preparation={'nodes': []}, commit_resources=prepared), resource_fixtures.TOKEN)
            self.assertIsNone(adapter.commit_resources_prepared)
            adapter._exchange.assert_not_called()

    def test_profile_opt_out_cannot_implicitly_grant_or_accept_reciprocal_capture(self):
        env = environment()
        env.pop('ASCET_BD_COMMIT_RECIPROCAL_CAPTURE')
        adapter = self.adapter(env)
        self.assertEqual(adapter.commit_resource_receipt_profile, 'native_commit_prepare_v3')
        with self.assertRaisesRegex(ValueError, 'coverage differs'):
            adapter._preparation(dict(preparation={'nodes': []},
                commit_resources=reciprocal_fixtures.receipt_fixture()), resource_fixtures.TOKEN)
        self.assertIsNone(adapter.commit_resources_prepared)
        adapter._exchange.assert_not_called()


if __name__ == '__main__':
    unittest.main()
