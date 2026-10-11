"""Pure raw finite-inverse and journal controls; no native write acceptance."""
from copy import deepcopy
import unittest

from bd_finite_reference_inverse import plan
from test_bd_module_persistent_references import OID, OWNER, SOURCE, TARGET, OTHER, record, absent_record, bound_receipt, requested_snapshot

TOKEN = 'edit_' + 'a' * 64


class RawFiniteInverseTests(unittest.TestCase):
    def requested_forward(self, absent=False):
        proof = bound_receipt('attached', TOKEN); proof['before'] = requested_snapshot(absent=absent)
        after = deepcopy(proof['before'])
        after['owners'][0]['records'][0] = record(OWNER, 'owner_references', [TARGET, TARGET, OTHER])
        after['reciprocal_records'][1] = record(OTHER, 'owner_referenced_by', [OTHER, OWNER])
        after['membership_checks'][2].update(outgoing_member=True, inbound_owner_count=1)
        proof['after'] = after
        return proof

    def test_new_outgoing_target_uses_its_real_original_requested_record(self):
        proof = self.requested_forward()
        result = plan(proof, proof['after'], token=TOKEN, component_oid=OID, generation=108)
        self.assertEqual(result['status'], 'planned_only'); self.assertEqual(len(result['patches']), 2)
        self.assertEqual(result['unsupported'], [])
        self.assertEqual(result['patches'][1]['candidate'], proof['before']['reciprocal_records'][1])
        self.assertIs(result['write_authorized'], False)

    def test_exact_absence_before_new_reference_retains_lifecycle_gap(self):
        proof = self.requested_forward(absent=True)
        result = plan(proof, proof['after'], token=TOKEN, component_oid=OID, generation=108)
        self.assertEqual(result['status'], 'unsupported'); self.assertEqual(result['patches'], [])
        self.assertEqual(result['unsupported'][0]['reason'], 'absent_record_lifecycle_executor_unverified')

    def test_current_must_reobserve_original_explicit_target(self):
        proof = bound_receipt('attached', TOKEN); proof['before'] = requested_snapshot()
        proof['after'] = deepcopy(proof['before']); current = deepcopy(proof['after'])
        current['profile'] = 'native_module_persistent_reference_snapshot_v1'
        current.pop('requested_reciprocal_targets'); current['reciprocal_targets'].pop()
        current['reciprocal_records'].pop(); current['membership_checks'] = current['membership_checks'][:2]
        with self.assertRaisesRegex(ValueError, 'omitted'):
            plan(proof, current, token=TOKEN, component_oid=OID, generation=108)

    def test_raw_tail_inverse_preserves_unrelated_current_byte_change(self):
        proof = bound_receipt('attached', TOKEN); current = deepcopy(proof['after'])
        current['reciprocal_records'][0]['allocated_bytes'][-2] ^= 2
        result = plan(proof, current, token=TOKEN, component_oid=OID, generation=108)
        self.assertEqual(result['status'], 'planned_only'); self.assertEqual(len(result['patches']), 1)
        row = result['patches'][0]['candidate']
        self.assertEqual(row['allocated_bytes'][-1], proof['before']['reciprocal_records'][0]['allocated_bytes'][-1])
        self.assertEqual(row['allocated_bytes'][-2], current['reciprocal_records'][0]['allocated_bytes'][-2])
        self.assertIs(result['inverse_authorized'], False); self.assertIs(result['epoch_binding_verified'], False)

    def test_conflict_suppresses_all_candidate_records(self):
        proof = bound_receipt('attached', TOKEN)
        proof['after']['owners'][1]['records'][1]['allocated_bytes'][-1] ^= 1
        current = deepcopy(proof['after']); current['reciprocal_records'][0]['allocated_bytes'][-1] ^= 2
        result = plan(proof, current, token=TOKEN, component_oid=OID, generation=108)
        self.assertEqual(result['status'], 'conflict'); self.assertEqual(result['patches'], [])
        self.assertEqual(result['conflicts'][0]['reason'], 'current_bytes_overlap_original_patch')

    def test_resized_record_requires_exact_after_and_preserves_original_raw_tail(self):
        proof = bound_receipt('attached', TOKEN)
        proof['after']['reciprocal_records'][0] = record(TARGET, 'owner_referenced_by', [OWNER, SOURCE, OTHER, OWNER, OTHER])
        current = deepcopy(proof['after']); result = plan(proof, current, token=TOKEN, component_oid=OID, generation=108)
        self.assertEqual(result['patches'][0]['merge_mode'], 'exact_resized_record')
        self.assertEqual(result['patches'][0]['candidate'], proof['before']['reciprocal_records'][0])
        current['reciprocal_records'][0]['allocated_bytes'][-2] ^= 1
        result = plan(proof, current, token=TOKEN, component_oid=OID, generation=108)
        self.assertEqual(result['status'], 'conflict'); self.assertEqual(result['patches'], [])
        self.assertEqual(result['conflicts'][0]['reason'], 'resized_record_requires_exact_actual_after')

    def test_absent_to_existing_cannot_use_a_record_recreation_guess(self):
        proof = bound_receipt('attached', TOKEN); proof['before']['owners'][1]['records'][1] = absent_record(SOURCE, 'owner_referenced_by')
        result = plan(proof, proof['after'], token=TOKEN, component_oid=OID, generation=108)
        self.assertEqual(result['status'], 'unsupported'); self.assertEqual(result['patches'], [])
        self.assertEqual(result['unsupported'][0]['reason'], 'absent_record_lifecycle_executor_unverified')

    def test_new_reciprocal_target_original_before_is_never_fabricated(self):
        proof = bound_receipt('attached', TOKEN); after = proof['after']
        after['owners'][0]['records'][0] = record(OWNER, 'owner_references', [TARGET, OTHER])
        after['reciprocal_targets'].append(OTHER); after['reciprocal_records'].append(record(OTHER, 'owner_referenced_by', [OWNER]))
        after['membership_checks'].extend([
            dict(owner_key=OWNER, target_key=OTHER, outgoing_member=True, inbound_owner_count=1, consistent=True),
            dict(owner_key=SOURCE, target_key=OTHER, outgoing_member=False, inbound_owner_count=0, consistent=True)])
        result = plan(proof, after, token=TOKEN, component_oid=OID, generation=108)
        self.assertEqual(result['status'], 'unsupported'); self.assertEqual(result['patches'], [])
        self.assertEqual(result['unsupported'][0]['reason'], 'missing_original_before_capture')

    def test_noop_keeps_all_external_current_changes_without_an_inverse_patch(self):
        proof = bound_receipt('attached', TOKEN); proof['after'] = deepcopy(proof['before']); current = deepcopy(proof['after'])
        current['reciprocal_records'][0]['allocated_bytes'][-1] ^= 1
        result = plan(proof, current, token=TOKEN, component_oid=OID, generation=108)
        self.assertEqual(result['status'], 'planned_only'); self.assertEqual(result['patches'], [])

    def test_original_bindings_and_outputs_cannot_mutate_inputs(self):
        proof = bound_receipt('attached', TOKEN); current = deepcopy(proof['after']); saved = deepcopy((proof, current))
        result = plan(proof, current, token=TOKEN, component_oid=OID, generation=108)
        result['patches'][0]['candidate']['allocated_bytes'].clear(); self.assertEqual((proof, current), saved)
        for mutate in (lambda c: c.update(component_oid='other'), lambda c: c['owners'][1].update(oid='replacement')):
            changed = deepcopy(current); mutate(changed)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): plan(proof, changed, token=TOKEN, component_oid=OID, generation=108)

    def test_current_extent_change_is_explicit_conflict(self):
        proof = bound_receipt('attached', TOKEN); current = deepcopy(proof['after'])
        current['reciprocal_records'][0]['allocated_bytes'].append(32)
        current['reciprocal_records'][0]['allocated_size'] += 1
        result = plan(proof, current, token=TOKEN, component_oid=OID, generation=108)
        self.assertEqual(result['status'], 'conflict'); self.assertEqual(result['patches'], [])


class BoundJournalRawInverseTests(unittest.TestCase):
    def setUp(self):
        from test_bd_module_persistent_references import FiniteReferenceJournalTests
        FiniteReferenceJournalTests.setUp(self)

    def forward(self):
        from test_bd_module_persistent_references import FiniteReferenceJournalTests
        return FiniteReferenceJournalTests.forward(self)

    def test_confirmed_journal_is_the_only_historical_input_and_no_wal_mutates(self):
        import bd_connect_journal as connect
        first = self.forward(); before = deepcopy(self.log.read(first['change_id'])); calls = deepcopy(self.adapter.calls)
        material = connect.one(before, 'observed')['module_persistent_references_actual']
        result = connect.persistent_reference_inverse_plan(self.log, first['change_id'], material['after'])
        self.assertEqual(result['status'], 'planned_only'); self.assertIs(result['journal_bound'], True)
        self.assertEqual(result['original_domain'], self.domain); self.assertIs(result['write_authorized'], False)
        self.assertEqual(self.log.read(first['change_id']), before); self.assertEqual(self.adapter.calls, calls)

    def test_unknown_forward_cannot_plan_raw_inverse(self):
        import bd_connect_journal as connect
        from bd_edit_journal import JournalError
        self.adapter.lose_reply = True; first = self.forward()
        with self.assertRaises(JournalError): connect.persistent_reference_inverse_plan(self.log, first['change_id'], {})


if __name__ == '__main__': unittest.main()
