"""Lifecycle proposal and physical-record accounting controls; no native calls."""
from copy import deepcopy
import unittest

from bd_finite_reference_inverse import lifecycle_plan, plan
import test_bde_reference_leaf_nonempty_probe as nonempty_fixtures
from test_bd_module_persistent_references import OID, bound_receipt

TOKEN = 'edit_' + 'a' * 64


class LifecyclePlanTests(unittest.TestCase):
    def receipt(self):
        native = nonempty_fixtures.NonemptyTests().native()
        receipt = bound_receipt('attached', TOKEN)
        receipt.update(before=native['before'], after=native['actual']['stages'][1])
        return receipt

    def invoke(self, receipt, current=None):
        return lifecycle_plan(receipt, receipt['after'] if current is None else current,
            token=TOKEN, component_oid=OID, generation=108)

    def test_closed_three_records_coalesce_repeated_owner_and_reciprocal_reads(self):
        receipt = self.receipt(); result = self.invoke(receipt)
        self.assertEqual(result['status'], 'planned_only')
        self.assertEqual(len(result['patches']), 3)
        self.assertEqual(sum(p['operation'] == 'delete_record' for p in result['patches']), 1)
        self.assertEqual(len({(tuple(p['global_id']), p['role']) for p in result['patches']}), 3)
        self.assertFalse(result['write_authorized']); self.assertFalse(result['native_executor_implemented'])

    def test_original_absence_delete_requires_complete_exact_actual_record(self):
        receipt = self.receipt(); current = deepcopy(receipt['after'])
        current['owners'][1]['records'][0]['allocated_bytes'].append(91)
        current['owners'][1]['records'][0]['allocated_size'] += 1
        result = self.invoke(receipt, current)
        self.assertEqual(result['status'], 'conflict'); self.assertEqual(result['patches'], [])

    def test_original_existing_recreation_retains_original_full_buffer(self):
        receipt = self.receipt(); receipt['before'], receipt['after'] = receipt['after'], receipt['before']
        result = self.invoke(receipt)
        creation = next(p for p in result['patches'] if p['operation'] == 'create_original_record')
        self.assertEqual(creation['candidate'], receipt['before']['owners'][1]['records'][0])
        self.assertEqual(creation['current']['read_status'], 'absent')

    def test_original_current_absence_needs_no_delete_and_grants_no_success(self):
        receipt = self.receipt(); current = deepcopy(receipt['after'])
        # All original records already restored; resized records still require exact after.
        current = deepcopy(receipt['before'])
        result = self.invoke(receipt, current)
        self.assertFalse(any(p.get('operation') == 'delete_record' for p in result['patches']))
        self.assertFalse(result['persistent_write_performed'])

    def test_old_production_plan_keeps_its_absence_write_gate(self):
        receipt = self.receipt()
        result = plan(receipt, receipt['after'], token=TOKEN, component_oid=OID, generation=108)
        self.assertEqual(result['status'], 'unsupported'); self.assertEqual(result['patches'], [])

    def test_frozen_current_and_proposals_do_not_mutate_caller(self):
        receipt = self.receipt(); current = deepcopy(receipt['after']); saved = deepcopy((receipt, current))
        result = self.invoke(receipt, current)
        result['current_observation']['owners'].clear()
        result['patches'][0]['candidate'].clear()
        self.assertEqual((receipt, current), saved)


if __name__ == '__main__': unittest.main()
