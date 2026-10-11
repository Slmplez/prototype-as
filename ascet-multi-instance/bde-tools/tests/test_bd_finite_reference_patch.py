"""Pure request codec controls; synthetic data never counts as native acceptance."""
from copy import deepcopy
import unittest

from bd_finite_reference_patch import inverse_request, project, diagnostic_delta
import test_bd_finite_reference_lifecycle as lifecycle_fixtures
from test_bd_module_persistent_references import OID

TOKEN = lifecycle_fixtures.TOKEN


class FinitePatchTests(unittest.TestCase):
    def request(self):
        receipt = lifecycle_fixtures.LifecyclePlanTests().receipt()
        return inverse_request(receipt, receipt['after'], token=TOKEN, component_oid=OID, generation=108)

    def test_coalesced_native_arguments_and_original_candidate(self):
        value = self.request(); receipt = lifecycle_fixtures.LifecyclePlanTests().receipt()
        self.assertEqual(len(value['patches']), 3)
        self.assertEqual(value['candidate'], receipt['before'])
        self.assertFalse(value['production_inverse_authorized']); self.assertEqual(value['native_calls'], 0)

    def test_raw_route_is_checked_before_native_dispatch(self):
        for offset in (2, 22, 55, 56):
            value = self.request()
            patch = next(p for p in value['patches'] if p['candidate']['read_status'] == 'record')
            candidate = patch['candidate']; candidate['allocated_bytes'][offset] ^= 1
            candidate['bytes'] = candidate['allocated_bytes'][:candidate['logical_size']]
            with self.subTest(offset=offset), self.assertRaises(ValueError): project(value['expected'], value['patches'])

    def test_duplicate_physical_operation_refused(self):
        value = self.request(); value['patches'].append(deepcopy(value['patches'][0]))
        with self.assertRaisesRegex(ValueError, 'Distinct'): project(value['expected'], value['patches'])

    def test_extra_record_metadata_is_refused_before_native(self):
        value = self.request(); patch = next(p for p in value['patches'] if p['candidate']['read_status'] == 'record')
        patch['candidate']['extra'] = True
        with self.assertRaisesRegex(ValueError, 'Exact existing candidate fields'): project(value['expected'], value['patches'])

    def test_missing_reciprocal_patch_refused(self):
        value = self.request()
        for patch in value['patches']:
            remaining = [p for p in value['patches'] if p != patch]
            with self.subTest(role=patch['role']), self.assertRaises(ValueError): project(value['expected'], remaining)

    def test_operation_and_exact_field_whitelist(self):
        for mutate in (lambda p: p.update(operation='delete_record'), lambda p: p.update(extra=True),
                       lambda p: p.update(role='unreviewed'), lambda p: p['current'].update(sysio_code='changed')):
            value = self.request(); patch = next(p for p in value['patches'] if p['candidate']['read_status'] == 'record')
            mutate(patch)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): project(value['expected'], value['patches'])

    def test_external_keys_refused(self):
        value = self.request(); value['patches'][0]['global_id'] = [99] * 20
        with self.assertRaises(ValueError): project(value['expected'], value['patches'])

    def test_actual_current_overlap_suppresses_request(self):
        receipt = lifecycle_fixtures.LifecyclePlanTests().receipt(); current = deepcopy(receipt['after'])
        current['owners'][1]['records'][0]['allocated_bytes'].append(71)
        current['owners'][1]['records'][0]['allocated_size'] += 1
        with self.assertRaisesRegex(ValueError, 'conflict/unsupported'):
            inverse_request(receipt, current, token=TOKEN, component_oid=OID, generation=108)

    def test_restoration_recreates_entire_original_raw_record(self):
        receipt = lifecycle_fixtures.LifecyclePlanTests().receipt()
        receipt['before'], receipt['after'] = receipt['after'], receipt['before']
        value = inverse_request(receipt, receipt['after'], token=TOKEN, component_oid=OID, generation=108)
        self.assertEqual(value['candidate'], receipt['before'])
        self.assertTrue(any(p['operation'] == 'create_original_record' for p in value['patches']))

    def test_known_sysio_change_is_explicit_without_input_mutation(self):
        value = self.request()['candidate']; actual = deepcopy(value)
        actual['owners'][1]['records'][0]['sysio_code'] = 'winError158'
        saved = deepcopy(actual); deltas = diagnostic_delta(value, actual)
        self.assertEqual(len(deltas), 1); self.assertEqual(actual, saved)

    def test_other_absence_fields_and_persistent_tail_not_normalized(self):
        for mutate in (lambda a: a['owners'][1]['records'][0].update(uerr_code='different'),
                       lambda a: a['owners'][1]['records'][0].update(error_number=102),
                       lambda a: a['owners'][0]['records'][0]['allocated_bytes'].__setitem__(-1, 255)):
            value = self.request()['candidate']; actual = deepcopy(value); mutate(actual)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): diagnostic_delta(value, actual)

    def test_no_write_empty_candidate_preserves_exact_current(self):
        value = self.request()['candidate']
        self.assertEqual(project(value, []), value)

    def test_request_does_not_mutate_original_or_current(self):
        receipt = lifecycle_fixtures.LifecyclePlanTests().receipt(); before = deepcopy(receipt); current = deepcopy(receipt['after'])
        value = inverse_request(receipt, current, token=TOKEN, component_oid=OID, generation=108)
        value['patches'][0]['candidate'].clear()
        self.assertEqual(receipt, before); self.assertEqual(current, receipt['after'])


if __name__ == '__main__': unittest.main()
