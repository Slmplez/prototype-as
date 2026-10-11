from copy import deepcopy
import unittest

from bd_scope_inventory import validate


class ScopeInventoryTests(unittest.TestCase):
    def fixture(self):
        return {'profile': 'structural_scope_inventory_v1', 'limit': 64,
                'registry_unchanged': True, 'model_setters_called': 0, 'store_called': False,
                'clock': 3, 'high_water': 12, 'evictions': 0, 'eviction_candidate': 'a/Main',
                'entries': [
                    {'scope': 'a/Main', 'generation': 9, 'counter': 2, 'identity_count': 2, 'last_access': 1, 'pins': []},
                    {'scope': 'b/Main', 'generation': 12, 'counter': 3, 'identity_count': 3, 'last_access': 3,
                     'pins': ['DogeBDEStructureEditsV3:edit_x']}]}

    def test_complete_inventory_and_pinned_scope(self):
        self.assertEqual(validate(self.fixture())['pinned'], 1)

    def test_retained_commit_resources_keep_original_scope_pinned(self):
        row = self.fixture()
        row['entries'][1]['pins'] = ['DogeBDECommitResourceWitnessesV1:commit_' + 'a' * 64]
        self.assertEqual(validate(row)['pinned'], 1)
        row['eviction_candidate'] = 'b/Main'
        with self.assertRaises(ValueError):
            validate(row)

    def test_empty_and_all_pinned_have_no_candidate(self):
        row = self.fixture()
        row['entries'] = []
        row['eviction_candidate'] = None
        self.assertEqual(validate(row)['scopes'], 0)
        row = self.fixture()
        row['entries'][0]['pins'] = ['DogeBDEOverlaysV1:token']
        row['eviction_candidate'] = None
        self.assertEqual(validate(row)['evictable'], 0)

    def test_pinned_candidate_refused(self):
        row = self.fixture()
        row['eviction_candidate'] = 'b/Main'
        with self.assertRaises(ValueError):
            validate(row)

    def test_generation_and_clock_rollback_refused(self):
        for key, value in [('high_water', 8), ('clock', 0)]:
            with self.subTest(key=key):
                row = self.fixture()
                row[key] = value
                with self.assertRaises(ValueError):
                    validate(row)

    def test_malformed_and_duplicate_pin_causes_refused(self):
        for pins in [['unknown:token'], ['DogeBDEStructureEditsV3:'],
                     ['DogeBDEOverlaysV1:x', 'DogeBDEOverlaysV1:x'], [False]]:
            row = self.fixture()
            row['entries'][1]['pins'] = pins
            with self.assertRaises(ValueError):
                validate(row)

    def test_duplicate_scopes_and_overflow_refused(self):
        for entries in [[self.fixture()['entries'][0]] * 2, [self.fixture()['entries'][0]] * 65]:
            row = self.fixture()
            row['entries'] = deepcopy(entries)
            with self.assertRaises(ValueError):
                validate(row)

    def test_incomplete_and_boolean_counters_refused(self):
        for key in ('generation', 'counter', 'identity_count', 'last_access'):
            for bad in (None, True, -1):
                row = self.fixture()
                row['entries'][0][key] = bad
                with self.assertRaises(ValueError):
                    validate(row)
        row = self.fixture()
        del row['entries'][0]['pins']
        with self.assertRaises(ValueError):
            validate(row)

    def test_model_mutation_and_unbounded_identity_refused(self):
        for field, value in [('model_setters_called', 1), ('store_called', True), ('registry_unchanged', False)]:
            row = self.fixture()
            row[field] = value
            with self.assertRaises(ValueError):
                validate(row)
        row = self.fixture()
        row['entries'][0].update(identity_count=4097, counter=4097)
        with self.assertRaises(ValueError):
            validate(row)

    def test_oldest_unpinned_and_tie_order_are_authoritative(self):
        row = self.fixture()
        row['entries'][1]['pins'] = []
        row['entries'][1]['last_access'] = 0
        with self.assertRaises(ValueError):
            validate(row)
        row['eviction_candidate'] = 'b/Main'
        self.assertEqual(validate(row)['evictable'], 2)
        row['entries'][1]['last_access'] = 1
        with self.assertRaises(ValueError):
            validate(row)
        row['eviction_candidate'] = 'a/Main'
        self.assertTrue(validate(row)['passed'])


if __name__ == '__main__':
    unittest.main()
