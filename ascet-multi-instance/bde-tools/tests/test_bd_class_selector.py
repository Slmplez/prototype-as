"""Exact alias selection refuses names, ordinals and foreign formal ownership."""
from copy import deepcopy
import json
import unittest

import bd_service as service
from bd_class_selector import caller_pin_targets, legacy_selector, select_formal


class ClassSelectorTests(unittest.TestCase):
    def setUp(self):
        path = service.ROOT / 'analysis/bde-experiments/2026-10-02/bde-class-closed-delete-argument-04/study-0.json'
        self.before = json.loads(path.read_text(encoding='utf-8'))['before']
        self.selector = legacy_selector(self.before['signature'], 'argument')

    def test_scope_qualified_targets_keep_three_occurrences(self):
        method, formal = select_formal(self.before['signature'], self.selector)
        targets = caller_pin_targets(self.before['discovery'], self.selector)
        self.assertEqual(len(targets), 3)
        self.assertEqual({row['selector']['formal_alias'] for row in targets}, {formal['alias']})
        self.assertEqual(method['alias'], self.selector['method_alias'])
        owner = self.before['discovery']['callers'][1]
        owner['scopes'][0]['diagram'] = 'Main/h12/h5'
        targets = caller_pin_targets(self.before['discovery'], self.selector)
        self.assertEqual(next(row for row in targets if row['oid'] == owner['oid'])['diagram'], 'Main/h12/h5')

    def test_names_and_ordinals_do_not_choose_a_formal(self):
        for key, value in [('method_alias', 'calc'), ('formal_alias', 'Signal'), ('formal_alias', 1), ('slot', 'local')]:
            selector = {**self.selector, key: value}
            with self.subTest(key=key, value=value), self.assertRaises(ValueError):
                select_formal(self.before['signature'], selector)

    def test_wrong_method_diagram_or_slot_refused(self):
        for key, value in [('diagram', 'Other'), ('formal_alias', 'bytes:deadbeef'), ('slot', 'return')]:
            with self.subTest(key=key), self.assertRaises(ValueError):
                select_formal(self.before['signature'], {**self.selector, key: value})

    def test_foreign_owner_and_duplicate_identity_refused(self):
        for target in ('method', 'formal', 'duplicate'):
            signature = deepcopy(self.before['signature'])
            method = signature['methods'][0]
            if target == 'method':
                method['owner_matches'] = False
            elif target == 'formal':
                method['arguments'][0]['owner_matches'] = False
            else:
                method['arguments'].append(deepcopy(method['arguments'][0]))
            with self.subTest(target=target), self.assertRaises(ValueError):
                select_formal(signature, self.selector)

    def test_multiple_formals_require_selector_and_do_not_change_the_selected_identity(self):
        method = self.before['signature']['methods'][0]
        extra = {**deepcopy(method['arguments'][0]), 'alias': 'bytes:12345678', 'index': 2}
        method['arguments'].append(extra)
        with self.assertRaisesRegex(ValueError, 'explicit exact selector'):
            legacy_selector(self.before['signature'], 'argument')
        _, formal = select_formal(self.before['signature'], {**self.selector, 'formal_alias': extra['alias']})
        self.assertEqual(formal, extra)
        self.assertEqual(select_formal(self.before['signature'], self.selector)[1], method['arguments'][0])

    def test_duplicate_scope_pin_identity_refused(self):
        owner = self.before['discovery']['callers'][0]
        owner['scopes'][0]['occurrences'].append(deepcopy(owner['scopes'][0]['occurrences'][0]))
        with self.assertRaisesRegex(ValueError, 'unique stable'):
            caller_pin_targets(self.before['discovery'], self.selector)


if __name__ == '__main__':
    unittest.main()
