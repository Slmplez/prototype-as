"""Logical inverse conflicts and identity preservation; these are offline controls."""
from copy import deepcopy
import unittest
from bd_cache_membership import plan, validate


def row(number, entry=None, state=0):
    binding = {'class': 'DBCacheObject', 'ref': 'e'+str(entry or number)}
    model = {'class': 'SGModule', 'ref': 'm'+str(entry or number)}
    return dict(key={'class': 'ByteArray', 'kind': 'value', 'ref': 'k'+str(number),
                     'value': [0]*19+[number]}, entry=binding, registered_object=model,
                image=dict(binding=binding, field_names=['object', 'istate'], fields=[
                    dict(slot=1, name='object', value=model), dict(slot=2, name='istate', value=state)]))


def resource(*rows):
    return dict(storage={'class': 'AbtHighCapacityLookupTable', 'ref': 's1'},
                cache_size=len(rows), cache_entries=list(rows))


class CacheMembershipControls(unittest.TestCase):
    def setUp(self):
        self.before = resource(row(1), row(2))
        self.after = resource(row(2, 4), row(3))
        self.current = resource(row(2, 4), row(3), row(5))

    def test_undo_preserves_unrelated_entry(self):
        value = plan(self.before, self.after, self.current)
        self.assertTrue(value['compatible']); self.assertEqual(len(value['cells']), 3)
        self.assertEqual(value['candidate'], [row(1), row(2), row(5)])
        self.assertFalse(value['inverse_authorized']); self.assertEqual(value['native_calls'], 0)

    def test_redo_and_second_undo(self):
        undone = resource(*plan(self.before, self.after, self.current)['candidate'])
        redone = plan(self.before, self.after, undone, direction='redo')
        self.assertEqual(redone['candidate'], self.current['cache_entries'])
        self.assertEqual(plan(self.before, self.after, resource(*redone['candidate']))['candidate'], undone['cache_entries'])

    def test_touched_binding_conflict_suppresses_entire_plan(self):
        self.current['cache_entries'][0] = row(2, 6)
        result = plan(self.before, self.after, self.current)
        self.assertFalse(result['compatible']); self.assertEqual(result['cells'], []); self.assertIsNone(result['candidate'])

    def test_later_entry_field_change_prevents_removal(self):
        self.current['cache_entries'][1]['image']['fields'][1]['value'] = 1
        self.assertFalse(plan(self.before, self.after, self.current)['compatible'])

    def test_boolean_integer_dependency_is_conflict(self):
        self.current['cache_entries'][1]['image']['fields'][1]['value'] = False
        self.assertFalse(plan(self.before, self.after, self.current)['compatible'])

    def test_equal_distinct_current_key_conflicts(self):
        self.current['cache_entries'][0]['key']['ref'] = 'new-key'
        self.assertFalse(plan(self.before, self.after, self.current)['compatible'])

    def test_original_key_cannot_be_rebound(self):
        self.after['cache_entries'][0]['key']['ref'] = 'new-key'
        with self.assertRaises(ValueError): plan(self.before, self.after, self.current)

    def test_same_entry_field_diff_requires_separate_plan(self):
        before, after = resource(row(1)), resource(row(1, state=1))
        value = plan(before, after, after)
        self.assertEqual(value['cells'], []); self.assertEqual(len(value['entry_fields_require_separate_plan']), 1)
        self.assertFalse(value['modified_census_restored'])

    def test_already_restored_is_noop(self):
        result = plan(self.before, self.after, self.before)
        self.assertEqual(result['cells'], []); self.assertEqual(len(result['already_desired']), 3)

    def test_other_storage_refused(self):
        self.current['storage']['ref'] = 's2'
        with self.assertRaises(ValueError): plan(self.before, self.after, self.current)

    def test_duplicate_logical_keys_refused(self):
        value = resource(row(1), row(1, 2)); value['cache_entries'][1]['key']['ref'] = 'distinct'
        with self.assertRaises(ValueError): validate(value)

    def test_incomplete_census_refused(self):
        self.current['cache_size'] += 1
        with self.assertRaises(ValueError): validate(self.current)

    def test_entry_model_binding_refused(self):
        self.current['cache_entries'][0]['registered_object']['ref'] = 'other'
        # model descriptors may be shared in input; replace the whole descriptor.
        self.current['cache_entries'][0]['registered_object'] = {'class': 'SGModule', 'ref': 'different'}
        with self.assertRaises(ValueError): validate(self.current)

    def test_boolean_slot_refused(self):
        self.current['cache_entries'][0]['image']['fields'][0]['slot'] = True
        with self.assertRaises(ValueError): validate(self.current)

    def test_exact_32_byte_cache_keys_supported(self):
        for value in (self.before, self.after, self.current):
            for r in value['cache_entries']:
                r['key']['value'] += [65]*12
        result = plan(self.before, self.after, self.current)
        self.assertEqual(len(result['cells']), 3)
        self.assertTrue(result['compatible'])

    def test_unaudited_key_size_refused(self):
        self.current['cache_entries'][0]['key']['value'].append(0)
        with self.assertRaises(ValueError): validate(self.current)

    def test_schema_must_include_registered_object(self):
        value = resource(row(1)); value['cache_entries'][0]['image'].update(field_names=[], fields=[])
        with self.assertRaises(ValueError): validate(value)

    def test_input_not_mutated(self):
        inputs = deepcopy((self.before, self.after, self.current))
        plan(self.before, self.after, self.current)
        self.assertEqual(inputs, (self.before, self.after, self.current))


if __name__ == '__main__': unittest.main()
