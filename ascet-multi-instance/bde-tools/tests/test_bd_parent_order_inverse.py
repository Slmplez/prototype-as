from copy import deepcopy
import unittest

from bd_collection_merge import merge_order
from bd_parent_order_inverse import SCENARIOS, validate_probe


def receipt():
    rows = []
    for mode, compatible in SCENARIOS.items():
        current = [1, 3, 4]
        if mode == 'independent_addition':
            current = [5, 1, 3, 4]
        elif mode == 'independent_deletion':
            current = [1, 3]
        elif mode == 'ambiguous_gap':
            current = [1, 5, 3, 4]
        elif mode == 'reordered':
            current = [4, 3, 1]
        kernel = merge_order(['1', '2', '3', '4'], ['1', '3', '4'], [str(v) for v in current])
        rows.append({'scenario': mode, 'compatible': compatible, 'private_reset': True,
            'stale_refused': mode in ('stale_order', 'stale_positions'),
            'before': [1, 2, 3, 4], 'after': [1, 3, 4], 'current': current,
            'merged': [int(v) for v in kernel['merged']] if compatible else None,
            'positions': [[int(s['ref']), s['index'] + 1] for s in kernel['splices']] if compatible else []})
    return {'profile': 'native_parent_order_probe_v1', 'cases': rows, 'model_setters_called': 0,
            'production_dispatch': False, 'complete_acceptance': False,
            'dispatcher_compiled': True, 'dispatcher_bound': True}


class ParentOrderReceiptTests(unittest.TestCase):
    def test_complete_order_receipt_including_shifted_original_slot(self):
        value = receipt()
        row = next(r for r in value['cases'] if r['scenario'] == 'independent_addition')
        self.assertEqual(row['positions'], [[2, 3]])
        result = validate_probe(value)
        self.assertEqual((result['cases'], result['compatible'], result['refused']), (10, 5, 5))
        self.assertIs(result['complete_acceptance'], False)

    def test_native_positions_use_one_based_exact_members(self):
        for replacement in ([[2, 1]], [[3, 2]], [[True, 2]], [[2, 2.0]]):
            with self.subTest(replacement=replacement):
                value = receipt()
                value['cases'][0]['positions'] = replacement
                with self.assertRaises(ValueError):
                    validate_probe(value)

    def test_independent_changes_cannot_be_omitted_or_overwritten(self):
        for name in ('independent_addition', 'independent_deletion'):
            value = receipt()
            row = next(r for r in value['cases'] if r['scenario'] == name)
            row['current'] = [1, 3, 4]
            row['merged'] = [1, 2, 3, 4]
            row['positions'] = [[2, 2]]
            with self.assertRaises(ValueError):
                validate_probe(value)

    def test_missing_duplicate_and_stale_scenario_evidence(self):
        for mutation in ('missing', 'duplicate', 'stale', 'reset', 'compile', 'bind'):
            value = receipt()
            if mutation == 'missing':
                value['cases'].pop()
            elif mutation == 'duplicate':
                value['cases'][-1] = deepcopy(value['cases'][0])
            elif mutation == 'stale':
                value['cases'][-1]['stale_refused'] = False
            elif mutation == 'reset':
                value['cases'][0]['private_reset'] = False
            else:
                value['dispatcher_compiled' if mutation == 'compile' else 'dispatcher_bound'] = False
            with self.assertRaises(ValueError):
                validate_probe(value)

    def test_refusal_never_exposes_restoration_or_grants_model_acceptance(self):
        for mutation in ('patch', 'dispatch', 'complete', 'typed_count', 'typed_ref'):
            value = receipt()
            if mutation == 'patch':
                value['cases'][3]['merged'] = []
            elif mutation == 'dispatch':
                value['production_dispatch'] = True
            elif mutation == 'complete':
                value['complete_acceptance'] = True
            elif mutation == 'typed_count':
                value['model_setters_called'] = False
            else:
                value['cases'][0]['before'][0] = True
            with self.assertRaises(ValueError):
                validate_probe(value)


if __name__ == '__main__':
    unittest.main()
