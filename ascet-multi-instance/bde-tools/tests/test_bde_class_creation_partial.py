"""Offline refusal coverage for signature-only recovery, not native restoration evidence."""
from copy import deepcopy
import unittest

from bde_class_creation_partial_recovery import classify_signature, complete_restoration
from test_bd_class_creation import example


class PartialCreationTests(unittest.TestCase):
    def setUp(self):
        operation, study, _ = example()
        self.before = deepcopy(study['before']['signature'])
        self.current = deepcopy(study['after']['signature'])
        self.selector = {**operation['selector'], 'name': operation['name'], 'model_type': operation['model_type']}
        self.native = {'state': 'mutation_started', 'original_signature_restored': False,
                       'original_arguments': ['bytes:02'], 'current_arguments': ['bytes:02', 'bytes:03'],
                       'created_alias': 'bytes:03'}

    def classify(self, current=None, native=None):
        classify_signature(self.before, self.current if current is None else current,
                           self.selector, self.native if native is None else native)

    def test_exact_retained_append_is_classified_without_mutating_evidence(self):
        before, current, native = deepcopy(self.before), deepcopy(self.current), deepcopy(self.native)
        self.classify()
        self.assertEqual((self.before, self.current, self.native), (before, current, native))

    def test_completed_unknown_or_restored_states_are_not_replayed(self):
        for state in ('prepared', 'added', 'restore_started', 'restored', 'unknown'):
            with self.subTest(state=state), self.assertRaises(ValueError):
                self.classify(native={**self.native, 'state': state})
        with self.assertRaises(ValueError):
            self.classify(native={**self.native, 'original_signature_restored': True})

    def test_retained_identity_or_order_changes_are_refused(self):
        for changes in ({'original_arguments': ['bytes:99']},
                        {'current_arguments': ['bytes:03', 'bytes:02']},
                        {'created_alias': 'bytes:99'}):
            with self.subTest(changes=changes), self.assertRaises(ValueError):
                self.classify(native={**self.native, **changes})

    def test_created_formal_fields_and_extra_additions_are_refused(self):
        for key, value in (('index', 1), ('model_type', 'sdisc'), ('in', False), ('out', True),
                           ('name', 'calc/Other'), ('owner_matches', False)):
            current = deepcopy(self.current)
            current['methods'][0]['arguments'][-1][key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                self.classify(current=current)
        current = deepcopy(self.current)
        current['methods'][0]['arguments'].append(deepcopy(current['methods'][0]['arguments'][-1]))
        with self.assertRaises(ValueError):
            self.classify(current=current)

    def test_unrelated_original_signature_changes_are_refused(self):
        for target, key, value in (('argument', 'model_type', 'sdisc'), ('argument', 'name', 'calc/Changed'),
                                  ('method', 'return', {'alias': 'bytes:99'}),
                                  ('signature', 'references', [{'oid': 'foreign'}])):
            current = deepcopy(self.current)
            row = current if target == 'signature' else current['methods'][0]
            if target == 'argument':
                row = row['arguments'][0]
            row[key] = value
            with self.subTest(target=target, key=key), self.assertRaises(ValueError):
                self.classify(current=current)

    def test_complete_recovery_preserves_all_original_public_oracle_fields(self):
        _, study, prepared = example()
        for row in prepared['observation']['callers']:
            row.update(cached={'pins': [1, 2]}, cached_error=None,
                       public_retained={'pins': [1, 2]}, public_fresh={'pins': [1, 2]})
        raw = {'before': deepcopy(prepared['observation'])}
        for index, owner in enumerate(prepared['owners']):
            raw[f'owner_scopes_observed_{index}'] = deepcopy(owner['scopes'])
        self.assertEqual(complete_restoration(raw, prepared), prepared)
        for field in ('cached', 'cached_error', 'public_retained', 'public_fresh'):
            altered = deepcopy(raw)
            altered['before']['callers'][0].pop(field)
            with self.subTest(field=field), self.assertRaises(ValueError):
                complete_restoration(altered, prepared)
        raw['before']['callers'][0]['public_fresh']['pins'].reverse()
        with self.assertRaises(ValueError):
            complete_restoration(raw, prepared)


if __name__ == '__main__':
    unittest.main()
