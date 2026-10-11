from copy import deepcopy
import unittest

from bd_source_field_oracle import inspect_case


def graph(*, x=10, y=20, peer_y=40, sharing='separate', note='stable'):
    ref = lambda identifier: ['ref', identifier]
    number = lambda value: ['integer', 'SmallInteger', str(value)]
    point = lambda identifier, a, b: {'id': identifier, 'native_class': 'Point', 'kind': 'fields',
                                     'fields': [['x', number(a)], ['y', number(b)]]}
    primary, secondary = (8, 9) if sharing == 'separate' else (8, 8) if sharing == 'joined' else (9, 8)
    rows = [
        {'id': 1, 'native_class': 'SGTopGraphicsBlockDB', 'kind': 'fields',
         'fields': [['blocks', ref(2)], ['connections', ref(3)], ['note', ['string', 'String', note]]]},
        {'id': 2, 'native_class': 'Array', 'kind': 'ordered', 'items': [ref(4), ref(6)]},
        {'id': 3, 'native_class': 'Array', 'kind': 'ordered', 'items': []},
        {'id': 4, 'native_class': 'SGLiteralGODB', 'kind': 'fields', 'logic_id': 1,
         'fields': [['own', ref(5)]]},
        {'id': 5, 'native_class': 'Array', 'kind': 'ordered',
         'items': [number(1), ref(primary), *[['nil'] for _ in range(4)], number(0)]},
        {'id': 6, 'native_class': 'SGLiteralGODB', 'kind': 'fields', 'logic_id': 2,
         'fields': [['own', ref(7)]]},
        {'id': 7, 'native_class': 'Array', 'kind': 'ordered',
         'items': [number(2), ref(secondary), *[['nil'] for _ in range(4)], number(0)]},
        point(8, x, y),
    ]
    if sharing != 'joined':
        rows.append(point(9, 30 if sharing == 'separate' else x, peer_y if sharing == 'separate' else y))
    count = 1 + sum(len(row['items']) if row['kind'] == 'ordered' else len(row['fields']) for row in rows)
    return {'format': 'bde_persisted_source_graph_v1', 'oid': 'owner', 'root': ref(1),
            'nodes': rows, 'complete': True, 'reference_count': count,
            'model_setters_called': 0, 'store_called': False}


def coordinate_case():
    candidate = graph(y=77, peer_y=99, note='later')
    return {'source_edit': {'kind': 'coordinate', 'target_logic_id': 1,
                           'secondary_logic_id': 2, 'alias_direction': 'join',
                           'synthetic_sharing_fixture': False},
            'original': graph(), 'applied': graph(x=11),
            'current': graph(x=11, y=77, peer_y=99, note='later'),
            'candidate': candidate, 'expected_manual': deepcopy(candidate), 'compatible': True}


class SourceFieldOracleTests(unittest.TestCase):
    def test_coordinate_preserves_same_object_other_object_and_root_values(self):
        case = coordinate_case()
        frozen = deepcopy(case)
        self.assertTrue(inspect_case(case, 'owner')['full_graph_verified'])
        self.assertEqual(case, frozen)

    def test_hidden_forward_change_is_rejected(self):
        case = coordinate_case()
        case['applied']['nodes'][0]['fields'][-1][1][-1] = 'hidden'
        with self.assertRaisesRegex(ValueError, 'undeclared'):
            inspect_case(case, 'owner')

    def test_unrelated_current_value_cannot_be_lost(self):
        case = coordinate_case()
        case['candidate'] = graph(y=20, peer_y=99, note='later')
        with self.assertRaisesRegex(ValueError, 'independent field inverse'):
            inspect_case(case, 'owner')

    def test_overlapping_change_requires_unchanged_refusal(self):
        case = coordinate_case()
        case.update(current=graph(x=99, y=77), candidate=graph(x=99, y=77),
                    expected_manual=None, compatible=False)
        self.assertFalse(inspect_case(case, 'owner')['compatible'])
        case['candidate'] = graph(x=10, y=77)
        with self.assertRaisesRegex(ValueError, 'Rejected source field patch'):
            inspect_case(case, 'owner')

    def test_wrong_native_conflict_classification_is_rejected(self):
        case = coordinate_case()
        case['compatible'] = False
        with self.assertRaisesRegex(ValueError, 'classification'):
            inspect_case(case, 'owner')

    def test_replacing_current_owner_class_is_rejected(self):
        case = coordinate_case()
        case['current']['nodes'][3]['native_class'] = 'SGDataGODB'
        with self.assertRaisesRegex(ValueError, 'class changed'):
            inspect_case(case, 'owner')

    def test_unsupported_position_shape_refuses(self):
        case = coordinate_case()
        case['current']['nodes'][4]['items'].pop()
        case['current']['reference_count'] -= 1
        with self.assertRaisesRegex(ValueError, 'tuple required'):
            inspect_case(case, 'owner')

    def test_duplicate_graphical_identifier_refuses(self):
        case = coordinate_case()
        case['current']['nodes'][5]['logic_id'] = 1
        case['current']['nodes'][6]['items'][0][-1] = '1'
        with self.assertRaisesRegex(ValueError, 'ambiguous'):
            inspect_case(case, 'owner')

    def alias_case(self, inverse=False):
        original = graph(sharing='split' if inverse else 'joined')
        applied = graph(sharing='joined' if inverse else 'split')
        current = graph(sharing='joined' if inverse else 'split', note='later')
        candidate = graph(sharing='split' if inverse else 'joined', note='later')
        return {'source_edit': {'kind': 'sharing', 'target_logic_id': 1, 'secondary_logic_id': 2,
                               'alias_direction': 'split' if inverse else 'join',
                               'synthetic_sharing_fixture': True},
                'original': original, 'applied': applied, 'current': current,
                'candidate': candidate, 'expected_manual': deepcopy(candidate), 'compatible': True}

    def test_alias_join_and_its_own_inverse_preserve_complete_sharing(self):
        for inverse in (False, True):
            with self.subTest(inverse=inverse):
                self.assertTrue(inspect_case(self.alias_case(inverse), 'owner')['sharing_verified_both_directions'])

    def test_equal_leaf_values_cannot_hide_wrong_sharing(self):
        case = self.alias_case()
        case['candidate'] = graph(sharing='split', note='later')
        with self.assertRaisesRegex(ValueError, 'sharing/values'):
            inspect_case(case, 'owner')


if __name__ == '__main__':
    unittest.main()
