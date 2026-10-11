import copy
import unittest
from bd_native_graphical_effects import same_current


def image(kind='fields', cls='Point'):
    return {'profile': 'native_graphical_current_v1', 'complete': True, 'objects': [
        {'ref': 'v1', 'class': cls, 'kind': kind, 'value': [
            {'class': 'SmallInteger', 'value': '100'}, {'class': 'SmallInteger', 'value': '200'}]},
        {'ref': 'v2', 'class': 'SGClass', 'kind': 'boundary', 'value': None}]}


class NativeCurrentEqualityTest(unittest.TestCase):
    def test_export_object_enumeration_is_unordered(self):
        a = image(); b = copy.deepcopy(a); b['objects'].reverse()
        self.assertTrue(same_current(a, b))

    def test_field_slots_stay_ordered(self):
        a = image(); b = copy.deepcopy(a); b['objects'][0]['value'].reverse()
        self.assertFalse(same_current(a, b))

    def test_ordered_collection_stays_ordered(self):
        a = image('collection', 'OrderedCollection'); b = copy.deepcopy(a)
        b['objects'][0]['value'].reverse()
        self.assertFalse(same_current(a, b))

    def test_native_set_members_are_unordered(self):
        a = image('collection', 'IdentitySet'); b = copy.deepcopy(a)
        b['objects'][0]['value'].reverse()
        self.assertTrue(same_current(a, b))

    def test_identity_roster_and_kind_must_match(self):
        a = image(); b = copy.deepcopy(a); b['objects'][0]['ref'] = 'v3'
        self.assertFalse(same_current(a, b))
        b = copy.deepcopy(a); b['objects'][0]['kind'] = 'collection'
        self.assertFalse(same_current(a, b))

    def test_invalid_duplicate_identity_is_rejected(self):
        a = image(); b = copy.deepcopy(a); b['objects'].append(copy.deepcopy(b['objects'][0]))
        with self.assertRaises(ValueError):
            same_current(a, b)


if __name__ == '__main__':
    unittest.main()
