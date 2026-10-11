"""Contract tests for retained evidence; these do not execute native ASCET."""
from copy import deepcopy
import unittest

from bd_native_material_evidence import reconcile


def graph(rows):
    return {'profile': 'native_graphical_current_v1', 'complete': True, 'objects': rows}


def fields(image):
    return {'profile': 'native_graphical_fields_v1', 'complete': True, 'objects': [
        {key: row[key] for key in ('ref', 'class', 'kind')} | {'field_names': ['x', 'y'] if row['kind'] == 'fields' else []}
        for row in image['objects']]}


class NativeMaterialEvidenceTests(unittest.TestCase):
    def setUp(self):
        self.before = graph([
            {'ref': 'v1', 'class': 'Point', 'kind': 'fields', 'value': [
                {'class': 'SmallInteger', 'value': '120'}, {'class': 'SmallInteger', 'value': '400'}]},
            {'ref': 'v2', 'class': 'String', 'kind': 'value', 'value': [51, 46, 48]}])
        self.after = deepcopy(self.before)
        self.after['objects'][0]['value'][0]['value'] = '131'
        self.actual = {'profile': 'native_graphical_diff_v1', 'complete': True, 'changes': [
            {'object': 'v1', 'kind': 'fields', 'index': 1,
             'before': {'class': 'SmallInteger', 'value': '120'}, 'after': {'class': 'SmallInteger', 'value': '131'}}],
             'new_objects': [], 'after_object_count': 2}

    def check(self):
        return reconcile(self.before, fields(self.before), self.actual, self.after, fields(self.after))

    def test_original_point_mutation_has_exact_class_and_field(self):
        change = self.check()['changes'][0]
        self.assertEqual((change['native_class'], change['field']), ('Point', 'x'))

    def test_visible_equal_string_does_not_hide_original_identity_loss(self):
        self.after['objects'] = [self.after['objects'][0],
            {'ref': 'v3', 'class': 'String', 'kind': 'value', 'value': [51, 46, 48]}]
        with self.assertRaisesRegex(ValueError, 'complete exported terminal'):
            self.check()

    def test_missing_detached_original_point_is_rejected(self):
        self.after['objects'] = self.after['objects'][1:]
        with self.assertRaisesRegex(ValueError, 'complete exported terminal'):
            self.check()

    def test_unrecorded_terminal_change_is_rejected(self):
        self.after['objects'][1]['value'] = [52, 46, 48]
        with self.assertRaisesRegex(ValueError, 'complete exported terminal'):
            self.check()

    def test_schema_slot_count_must_match_exact_native_image(self):
        bad = fields(self.before)
        bad['objects'][0]['field_names'] = ['y']
        with self.assertRaisesRegex(ValueError, 'captured slots'):
            reconcile(self.before, bad, self.actual, self.after, fields(self.after))


if __name__ == '__main__':
    unittest.main()
