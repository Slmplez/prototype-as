"""Recheck actual received native evidence; fixtures do not execute online edits."""
import copy
import json
from pathlib import Path
import unittest
from bde_cache_membership_study import validate_private, validate_preflight


def load(name):
    path = Path(__file__).with_name(name)
    if not path.is_file(): path = Path(__file__).parent.parent/'scripts'/name
    return json.loads(path.read_text(encoding='utf-8'))


class CacheEvidenceControls(unittest.TestCase):
    def setUp(self):
        self.membership = load('bde_cache_membership_fixture.json')
        self.joint = load('bde_cache_state_fixture.json')
        self.preflight = load('bde_cache_membership_preflight_fixture.json')
        self.audit = load('bde_cache_membership_original_fixture.json')

    def reject_private(self, change, joint=False):
        value = copy.deepcopy(self.joint if joint else self.membership); change(value)
        with self.assertRaises((ValueError, KeyError)): validate_private(value, joint=joint)

    def reject_preflight(self, change):
        value = copy.deepcopy(self.preflight); change(value)
        with self.assertRaises((ValueError, KeyError)): validate_preflight(value, self.audit)

    def test_received_native_membership_trace(self):
        result = validate_private(self.membership)
        self.assertEqual(result['native_primitives'], [3]*3)
        self.assertFalse(result['live_cache_restore_verified'])

    def test_received_native_joint_trace(self):
        result = validate_private(self.joint, joint=True)
        self.assertEqual(result['native_primitives'], [5]*3)
        self.assertFalse(result['production_inverse_authorized'])

    def test_original_full_preflight(self):
        self.assertEqual(validate_preflight(self.preflight, self.audit)['original_members'], 15)

    def test_all_stages_required(self):
        self.reject_private(lambda v: v['states'].pop())

    def test_actual_proxy_identity_required(self):
        self.reject_private(lambda v: v['states'][1].update(modified_proxy_ids=[0]))

    def test_entry_equality_cannot_replace_identity(self):
        self.reject_private(lambda v: v['states'][0].update(members=[[1,1],[2,1]]))

    def test_native_return_type_checked(self):
        self.reject_private(lambda v: v['modified_return_classes'][0].__setitem__(0, 'DBObject'))

    def test_real_primitives_required(self):
        self.reject_private(lambda v: v.update(native_primitives=[0]*3))

    def test_each_conflict_counter_checked(self):
        self.reject_private(lambda v: v['conflict_completed_primitives'].__setitem__(2, 1))

    def test_boolean_counter_not_zero(self):
        self.reject_private(lambda v: v.update(conflict_primitives=False))

    def test_each_native_guard_required(self):
        self.reject_private(lambda v: v['native_refusals'].pop())

    def test_live_cache_not_private(self):
        self.reject_private(lambda v: v.update(live_cache_mutated=True))

    def test_store_claim_rejected(self):
        self.reject_private(lambda v: v.update(store_called=True))

    def test_closure_claim_rejected(self):
        self.reject_private(lambda v: v.update(full_commit_resource_closure=True))

    def test_joint_dirty_field_originals_required(self):
        self.reject_private(lambda v: v['states'][3]['proxy_istates'].__setitem__(0, 0), joint=True)

    def test_joint_parts_checked(self):
        self.reject_private(lambda v: v['primitive_parts'][0].update(fields=0), joint=True)

    def test_joint_unrelated_field_required(self):
        self.reject_private(lambda v: v.update(independent_proxy_name_preserved=False), joint=True)

    def test_joint_whole_fields_required(self):
        self.reject_private(lambda v: v.update(all_original_direct_fields_except_independent_restored=False), joint=True)

    def test_preflight_cannot_execute(self):
        self.reject_preflight(lambda v: v.update(executed=True))

    def test_current_cannot_be_applied_after(self):
        self.reject_preflight(lambda v: v.update(current_used_as_edit_after=True))

    def test_preflight_full_original_membership_required(self):
        self.reject_preflight(lambda v: v['original'].pop())

    def test_preflight_original_key_bytes_required(self):
        self.reject_preflight(lambda v: v['original'][0]['key_bytes'].__setitem__(0, v['original'][0]['key_bytes'][0] ^ 1))

    def test_preflight_epoch_required(self):
        self.reject_preflight(lambda v: v.update(generation='other'))

    def test_preflight_exact_storage_required(self):
        self.reject_preflight(lambda v: v['storage'].update(ref='other'))


if __name__ == '__main__': unittest.main()
