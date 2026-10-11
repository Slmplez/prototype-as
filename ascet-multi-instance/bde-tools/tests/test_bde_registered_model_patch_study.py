"""Tamper controls against a real native private inverse trace, not a mock executor."""
import copy
import json
from pathlib import Path
import unittest

from bde_registered_model_patch_study import validate_private


class RegisteredModelPatchEvidence(unittest.TestCase):
    def setUp(self):
        self.value = json.loads(Path(__file__).with_name('bde_registered_model_patch_fixture.json').read_text(encoding='utf-8'))

    def rejected(self, change):
        value = copy.deepcopy(self.value); change(value)
        with self.assertRaises((ValueError, KeyError)):
            validate_private(value)

    def test_real_trace(self):
        result = validate_private(self.value)
        self.assertEqual(result['native_primitives'], [7, 7, 7])
        self.assertFalse(result['online_model_edit_verified'])

    def test_cannot_promote_to_store(self):
        self.rejected(lambda v: v.update(store_called=True))

    def test_cannot_promote_to_production(self):
        self.rejected(lambda v: v.update(production_inverse_authorized=True))

    def test_no_conflict_primitives(self):
        self.rejected(lambda v: v.update(conflict_primitives=1))

    def test_boolean_is_not_zero_counter(self):
        self.rejected(lambda v: v.update(conflict_primitives=False))

    def test_actual_native_execution_required(self):
        self.rejected(lambda v: v.update(native_primitives=[0, 0, 0]))

    def test_complete_stages_required(self):
        self.rejected(lambda v: v['checks'].pop())

    def test_forged_diff_rejected(self):
        self.rejected(lambda v: v['checks'][0]['actual_changes'].pop())

    def test_original_identity_cannot_disappear(self):
        self.rejected(lambda v: v['checks'][-1]['image'].pop(0))

    def test_current_cannot_authorize_inverse(self):
        self.rejected(lambda v: v['checks'][1].update(inverse_authorized=True))

    def test_other_generation_rejected(self):
        self.rejected(lambda v: v['checks'][2].update(generation=2))

    def test_live_root_creation_not_private(self):
        self.rejected(lambda v: v['checks'][2]['registered_roots'].append({'class':'SGModule','ref':'r1'}))

    def test_all_native_refusals_required(self):
        self.rejected(lambda v: v['native_preparation_refusals'].pop())


if __name__ == '__main__':
    unittest.main()
