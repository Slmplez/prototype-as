import copy
import unittest

from bde_retained_delete_restoration import validate_actual_diff


class ActualDiffTests(unittest.TestCase):
    def setUp(self):
        self.current = {'profile': 'native_graphical_current_v1', 'complete': True, 'objects': [
            {'ref': 'v1', 'class': 'Dictionary', 'kind': 'collection', 'value': []}]}
        self.actual = {'profile': 'native_graphical_diff_v1', 'complete': True, 'after_object_count': 2,
                       'changes': [{'object': 'v1', 'kind': 'collection', 'before': [],
                                    'after': [{'class': 'OrderedCollection', 'ref': 'v2'}]}],
                       'new_objects': [{'ref': 'v2', 'class': 'OrderedCollection', 'kind': 'collection',
                                        'value': [{'class': 'OrderedCollection', 'ref': 'v2'}]}]}

    def test_complete_new_cyclic_reference(self):
        result = validate_actual_diff(self.current, self.actual)
        self.assertEqual((result['changed_entries'], result['new_objects']), (1, 1))

    def test_missing_descriptor_is_refused(self):
        self.actual['new_objects'] = []
        self.actual['after_object_count'] = 1
        with self.assertRaisesRegex(ValueError, 'unbound'):
            validate_actual_diff(self.current, self.actual)

    def test_new_token_cannot_rebind_original(self):
        self.actual['new_objects'][0]['ref'] = 'v1'
        with self.assertRaisesRegex(ValueError, 'roster'):
            validate_actual_diff(self.current, self.actual)

    def test_class_change_is_refused(self):
        self.actual['changes'][0]['after'][0]['class'] = 'Point'
        with self.assertRaisesRegex(ValueError, 'class'):
            validate_actual_diff(self.current, self.actual)

    def test_false_before_and_duplicate_changes_are_refused(self):
        modified = copy.deepcopy(self.actual)
        modified['changes'][0]['before'] = [1]
        with self.assertRaisesRegex(ValueError, 'CURRENT'):
            validate_actual_diff(self.current, modified)
        self.actual['changes'].append(copy.deepcopy(self.actual['changes'][0]))
        with self.assertRaisesRegex(ValueError, 'repeats'):
            validate_actual_diff(self.current, self.actual)

    def test_unbound_nested_reference_is_refused(self):
        self.actual['new_objects'][0]['value'][0]['ref'] = 'v3'
        with self.assertRaisesRegex(ValueError, 'unbound'):
            validate_actual_diff(self.current, self.actual)

    def test_field_index_and_original_value_are_checked(self):
        self.current['objects'][0].update({'class': 'Point', 'kind': 'fields', 'value': [1, 2]})
        self.actual.update(after_object_count=1, new_objects=[])
        self.actual['changes'] = [{'object': 'v1', 'kind': 'fields', 'index': 1, 'before': 1, 'after': 3}]
        self.assertTrue(validate_actual_diff(self.current, self.actual)['passed'])
        self.actual['changes'][0]['index'] = True
        with self.assertRaisesRegex(ValueError, 'index'):
            validate_actual_diff(self.current, self.actual)

    def test_boolean_cannot_replace_integer_before(self):
        self.current['objects'][0].update({'class': 'Point', 'kind': 'fields', 'value': [1]})
        self.actual.update(after_object_count=1, new_objects=[])
        self.actual['changes'] = [{'object': 'v1', 'kind': 'fields', 'index': 1, 'before': True, 'after': 3}]
        with self.assertRaisesRegex(ValueError, 'CURRENT'):
            validate_actual_diff(self.current, self.actual)

    def test_unordered_dictionary_keeps_exact_pair_coverage(self):
        self.current['objects'][0]['value'] = [[1, 10], [2, 20]]
        self.actual.update(after_object_count=1, new_objects=[])
        self.actual['changes'] = [{'object': 'v1', 'kind': 'collection', 'before': [[2, 20], [1, 10]], 'after': []}]
        self.assertTrue(validate_actual_diff(self.current, self.actual)['passed'])
        for wrong in ([[2, 21], [1, 10]], [[1, 10], [1, 10]], [[1, 10]]):
            self.actual['changes'][0]['before'] = wrong
            with self.assertRaisesRegex(ValueError, 'CURRENT'):
                validate_actual_diff(self.current, self.actual)

    def test_sets_are_unordered_but_arrays_and_ordered_collections_are_ordered(self):
        for name in ('Set', 'IdentitySet', 'Array', 'OrderedCollection'):
            with self.subTest(name=name):
                self.current['objects'][0].update({'class': name, 'value': [1, 2]})
                self.actual.update(after_object_count=1, new_objects=[])
                self.actual['changes'] = [{'object': 'v1', 'kind': 'collection', 'before': [2, 1], 'after': []}]
                if name in ('Set', 'IdentitySet'):
                    self.assertTrue(validate_actual_diff(self.current, self.actual)['passed'])
                else:
                    with self.assertRaisesRegex(ValueError, 'CURRENT'):
                        validate_actual_diff(self.current, self.actual)


if __name__ == '__main__':
    unittest.main()
