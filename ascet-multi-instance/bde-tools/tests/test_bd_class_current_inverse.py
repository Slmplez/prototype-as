"""Exact collateral restoration must preserve native identities and all untouched values."""
from copy import deepcopy
import unittest

from bd_class_current_inverse import inspect_collateral_inverse, inspect_primitive_inverse, inspect_store_inverse


def value(number):
    return {'native_class': 'SmallInteger', 'native_key': None, 'value': number}


def point(number):
    return {'native_class': 'Point', 'native_key': None, 'native_ref': f'c{number}', 'point': [number, 20]}


def collection(kind, before, after):
    suffix = 'entries' if kind in ('Dictionary', 'IdentityDictionary') else 'members'
    return {'kind': 'collection', 'native_class': kind, 'native_ref': 'c100', 'native_key': None,
            'before_size': len(before), 'after_size': len(after),
            'before_' + suffix: deepcopy(before), 'after_' + suffix: deepcopy(after)}


def step(index, kind, effect):
    return {'command': f'undo_publish_store/{index}', 'kind': kind, 'expected_native_changes': [effect]}


class CurrentCollateralInverseTests(unittest.TestCase):
    def ordered(self):
        a, b, c, added = [point(index) for index in range(1, 5)]
        original, published, intermediate = [a, b, c], [added, a, c], [a, c]
        change = collection('OrderedCollection', original, published)
        plan = [step(1, 'remove', collection('OrderedCollection', published, intermediate)),
                step(2, 'insert', collection('OrderedCollection', intermediate, original))]
        return [change], plan

    def test_exact_ordered_identity_and_partial_prefix(self):
        changes, plan = self.ordered()
        result = inspect_collateral_inverse(changes, plan, 'undo_publish_store/')
        self.assertEqual(result, {'targets_verified': 1, 'inverse_steps_verified': 2})
        for bad in (plan[:1], list(reversed(plan))):
            with self.assertRaises(ValueError):
                inspect_collateral_inverse(changes, bad, 'undo_publish_store/')

    def test_all_six_collection_kinds_with_dynamic_counts(self):
        for kind in ('Array', 'Dictionary', 'IdentityDictionary', 'Set', 'IdentitySet'):
            a, b, c, d = [point(index) for index in range(1, 5)]
            if kind == 'Array':
                before, after, middle = [a, b], [c, d], [a, d]
                operations = ('put', 'put')
            elif 'Dictionary' in kind:
                before, after, middle = [[value(1), a], [value(2), b]], [[value(1), c], [value(3), d]], [[value(1), c]]
                plan = [step(1, 'dict_remove', collection(kind, after, middle)),
                        step(2, 'put', collection(kind, middle, [[value(1), a]])),
                        step(3, 'put', collection(kind, [[value(1), a]], before))]
                self.assertEqual(inspect_collateral_inverse([collection(kind, before, after)], plan,
                    'undo_publish_store/')['inverse_steps_verified'], 3)
                continue
            else:
                before, after, middle = [a, b], [b, c], [b]
                operations = ('set_remove', 'set_add')
            plan = [step(1, operations[0], collection(kind, after, middle)),
                    step(2, operations[1], collection(kind, middle, before))]
            with self.subTest(kind=kind):
                self.assertEqual(inspect_collateral_inverse([collection(kind, before, after)], plan,
                    'undo_publish_store/')['inverse_steps_verified'], 2)

    def test_dictionary_and_set_enumeration_order_is_not_identity_order(self):
        before, after = [[value(1), point(1)], [value(2), point(2)]], [[value(1), point(3)], [value(2), point(2)]]
        undo = collection('IdentityDictionary', list(reversed(after)), list(reversed(before)))
        inspect_collateral_inverse([collection('IdentityDictionary', before, after)],
            [step(1, 'put', undo)], 'undo_publish_store/')
        inspect_collateral_inverse([collection('Set', [point(1), point(2)], [point(1), point(2), point(3)])],
            [step(1, 'set_remove', collection('Set', [point(3), point(2), point(1)], [point(2), point(1)]))],
            'undo_publish_store/')

    def test_untouched_identity_order_point_and_size_changes_refuse(self):
        changes, good = self.ordered()
        for fault in ('identity', 'point', 'size', 'target', 'kind', 'command', 'extra'):
            plan = deepcopy(good)
            effect = plan[1]['expected_native_changes'][0]
            if fault == 'identity':
                effect['after_members'][0]['native_ref'] = 'c9'
            elif fault == 'point':
                effect['after_members'][0]['point'][0] += 1
            elif fault == 'size':
                effect['after_size'] += 1
            elif fault == 'target':
                effect['native_ref'] = 'c101'
            elif fault == 'kind':
                plan[1]['kind'] = 'put'
            elif fault == 'command':
                plan[1]['command'] = 'undo_publish_store/3'
            else:
                plan.append(deepcopy(plan[1]))
            with self.subTest(fault=fault), self.assertRaises(ValueError):
                inspect_collateral_inverse(changes, plan, 'undo_publish_store/')

    def test_actual_effects_are_independently_checked(self):
        changes, plan = self.ordered()
        actual = [[row['command'], deepcopy(row['expected_native_changes'])] for row in plan]
        inspect_collateral_inverse(changes, plan, 'undo_publish_store/', actual)
        actual[1][1][0]['after_members'][1]['native_ref'] = 'c9'
        with self.assertRaises(ValueError):
            inspect_collateral_inverse(changes, plan, 'undo_publish_store/', actual)

    def test_primitive_inverse_and_sealed_store_counts(self):
        from test_bd_class_current_execution import CurrentExecutionPreflightTests
        fixture = CurrentExecutionPreflightTests()
        fixture.setUp()
        forward = fixture.raw['current_execution_preflight'][0]['forward_plan']
        inverse = []
        for index, row in enumerate(reversed(forward), 1):
            change = deepcopy(row['expected_native_changes'][0])
            for left, right in (('before', 'after'), ('before_size', 'after_size'),
                                ('before_members', 'after_members')):
                if left in change:
                    change[left], change[right] = change[right], change[left]
            inverse.append({'command': f'undo_apply/{index}',
                            'kind': 'insert' if row['kind'] == 'remove' else row['kind'],
                            'expected_native_changes': [change]})
        self.assertEqual(inspect_primitive_inverse(forward, inverse), 3)
        inverse.reverse()
        with self.assertRaises(ValueError):
            inspect_primitive_inverse(forward, inverse)
        changes, plan = self.ordered()
        row = {'store_inverse_plans_sealed': True, 'publish_store_undo_plan': plan, 'publish_store_undo_steps': 2}
        inspect_store_inverse(row, 'publish_store', changes)
        row['publish_store_undo_steps'] = 1
        with self.assertRaises(ValueError):
            inspect_store_inverse(row, 'publish_store', changes)

    def test_empty_noop_and_ambiguous_identity_are_distinct(self):
        inspect_collateral_inverse([], [], 'undo_publish_store/')
        change = collection('IdentitySet', [point(1)], [point(1), point(1)])
        with self.assertRaises(ValueError):
            inspect_collateral_inverse([change], [], 'undo_publish_store/')


if __name__ == '__main__':
    unittest.main()
