"""Drawing evidence and durable inverse tests; no native acceptance is implied."""
from contextlib import nullcontext
from copy import deepcopy
import json
from pathlib import Path
import tempfile
import unittest

import bd_drawing_order_effects as drawing
from bd_edit_journal import JournalError, fingerprint
from bd_structure_journal import StructureJournal
from test_bd_native_graphical_journal import GraphicalAdapter
from test_bd_parent_order_effects import TOKEN, image as physical


def image(members, token=TOKEN, diagram='Main'):
    return {**physical(members, token, diagram), 'profile': 'native_drawing_order_v1',
            'numbers': list(range(1, len(members) + 1))}


def effect(before, after):
    return {'kind': 'drawing_order', 'before': before, 'after': after}


class DrawingEvidenceTests(unittest.TestCase):
    def test_empty_and_complete_drawing_images(self):
        for members in ([], ['o4', 'o3', 'o5']):
            self.assertEqual(drawing.parent_image(image(members)), physical(members))

    def test_malformed_numbers_identity_or_completeness_refuse(self):
        for changes in ({'numbers': [0, 1]}, {'numbers': [1, 1]}, {'numbers': [1]},
                        {'numbers': [True, 2]}, {'numbers': [1.0, 2]}, {'numbers': None},
                        {'members': ['o3', 'o3']}, {'complete': 1}, {'extra': 0}):
            with self.subTest(changes=changes), self.assertRaises(JournalError):
                drawing.parent_image({**image(['o3', 'o4']), **changes})

    def test_drawing_and_physical_sequences_may_differ_but_rosters_must_match(self):
        before, after = image(['o4', 'o3', 'o5']), image(['o3', 'o5'])
        drawing.validate_preparation(before, after, token=TOKEN, diagram='Main',
            physical_before=physical(['o3', 'o4', 'o5']), physical_expected=physical(['o5', 'o3']))
        for changed in (physical(['o3', 'o5']), {**physical(['o3', 'o4', 'o5']), 'parent': 'o9'}):
            with self.subTest(changed=changed), self.assertRaises(JournalError):
                drawing.validate_preparation(before, after, token=TOKEN, diagram='Main', physical_before=changed)

    def test_independent_deletion_and_addition_are_preserved_in_inverse(self):
        original = [effect(image(['o3', 'o4', 'o5', 'o6']), image(['o3', 'o5', 'o6']))]
        for current, expected in ((['o3', 'o5'], ['o3', 'o4', 'o5']),
                                  (['o7', 'o3', 'o5', 'o6'], ['o7', 'o3', 'o4', 'o5', 'o6'])):
            drawing.validate_inverse(original, image(current), image(expected), token=TOKEN, diagram='Main')

    def test_reordered_ambiguous_or_forged_inverse_refuses(self):
        original = [effect(image(['o3', 'o4', 'o5']), image(['o3', 'o5']))]
        for current in (image(['o5', 'o3']), image(['o3', 'o6', 'o5']),
                        image(['o3', 'o5'], diagram='Other'), image(['o3', 'o5'], token='edit_' + '2' * 64)):
            with self.subTest(current=current), self.assertRaises(JournalError):
                drawing.validate_inverse(original, current, image(['o3', 'o4', 'o5']), token=TOKEN, diagram='Main')

    def test_exact_actual_evidence_required_even_when_members_match(self):
        before, after = image(['o3', 'o4']), image(['o3'])
        self.assertTrue(drawing.postcondition([effect(before, after)], before, after))
        for actual in ([], [effect(before, before)], [effect(before, {**after, 'numbers': [2]})],
                       [{**effect(before, after), 'extra': 1}]):
            self.assertFalse(drawing.postcondition(actual, before, after))

    def test_thousand_member_diff_is_compact(self):
        before = image(['o' + str(i) for i in range(3, 1003)])
        after = image([ref for ref in before['members'] if ref != 'o502'])
        delta = drawing.differences([effect(before, after)])[0]
        self.assertEqual(delta['removed'], [{'native_ref': 'o502', 'index': 499}])
        self.assertEqual(delta['kind'], 'drawing_order')
        self.assertLess(len(json.dumps(delta).encode()), 600)

    def test_native_recovery_matches_original_current_actual_and_binding(self):
        before, after = image(['o3', 'o4']), image(['o3'])
        prepared = {'drawing_order_before': before, 'drawing_order_expected': after}
        native = {'drawing_order_original': before, 'drawing_order_started': before,
            'drawing_order_current': after, 'drawing_order_effects': [effect(before, after)],
            'current_drawing_order_matches_terminal': True}
        result = drawing.recovery(prepared, prepared, native, token=TOKEN, diagram='Main')
        self.assertEqual(result['drawing_order_effects'], native['drawing_order_effects'])
        for changed in ({'drawing_order_original': after}, {'drawing_order_started': after},
                        {'drawing_order_current': before}, {'drawing_order_effects': []},
                        {'current_drawing_order_matches_terminal': 1}):
            with self.subTest(changed=changed), self.assertRaises(JournalError):
                drawing.recovery(prepared, prepared, {**native, **changed}, token=TOKEN, diagram='Main')

    def test_partial_durable_or_native_recovery_presence_refuses(self):
        prepared = {'drawing_order_before': image(['o3']), 'drawing_order_expected': image([])}
        for current, original, native in (({}, prepared, {}), (prepared, {}, {}),
                ({'drawing_order_before': image(['o3'])}, prepared, {}),
                ({}, {}, {'drawing_order_effects': []})):
            with self.subTest(current=current, original=original), self.assertRaises(JournalError):
                drawing.recovery(current, original, native, token=TOKEN, diagram='Main')
        self.assertEqual(drawing.recovery({}, {}, {}, token=TOKEN, diagram='Main'), {})


class DrawingAdapter(GraphicalAdapter):
    drawing_evidence_required = True

    def prepare(self, domain, token, operation, arguments):
        result = super().prepare(domain, token, operation, arguments)
        self.drawing_order_before = image(['o4', 'o3', 'o5', 'o6'], token)
        self.drawing_order_expected = image(['o3', 'o5', 'o6'], token)
        return result

    def apply(self, token):
        result = super().apply(token)
        self.drawing_order_effects = [effect(self.drawing_order_before, self.drawing_order_expected)]
        return result

    def validate_revert(self, domain, token):
        result = super().validate_revert(domain, token)
        self.drawing_order_before = image(self.order[:], token)
        self.drawing_order_expected = image(['o4', *self.order], token)
        return result

    def revert(self, domain, token):
        result = super().revert(domain, token)
        self.drawing_order_effects = [effect(self.drawing_order_before, self.drawing_order_expected)]
        return result


class DrawingJournalTests(unittest.TestCase):
    def setUp(self):
        temp = tempfile.TemporaryDirectory()
        self.addCleanup(temp.cleanup)
        self.log = StructureJournal(Path(temp.name))
        self.adapter = DrawingAdapter()
        self.request = {'domain': {'session': 's', 'database': 'db', 'oid': 'oid', 'process_epoch': 'epoch'},
            'component': 'BDE_Tool_Experiments\\Trial_drawing', 'diagram': 'Main', 'request_id': 'delete',
            'operation': 'delete_node', 'arguments': [['n1'], 'n1'], 'expect': fingerprint(self.adapter.state)}

    def execute(self):
        return self.log.execute(self.request, self.adapter, nullcontext)

    def test_prepared_and_actual_images_stay_durable_with_compact_receipts(self):
        edit = self.execute()
        self.assertEqual(edit['status'], 'applied_observed')
        events = self.log.read(edit['change_id'])
        prepared = next(e['payload'] for e in events if e['kind'] == 'prepared')
        observed = next(e['payload'] for e in events if e['kind'] == 'observed')
        self.assertEqual(prepared['drawing_order_before']['members'], ['o4', 'o3', 'o5', 'o6'])
        self.assertEqual(observed['drawing_order_effects'], self.adapter.drawing_order_effects)
        self.assertNotIn('drawing_order_effects', edit)
        self.assertEqual(edit['drawing_order_differences'][0]['removed'], [{'native_ref': 'o4', 'index': 0}])
        self.assertNotIn('drawing_order_effects', self.log.diff(edit['change_id'])['observations'][0])
        inverse = self.log.revert(edit['change_id'], 'inverse', self.adapter, nullcontext)
        self.assertEqual(inverse['status'], 'verified_local')
        self.assertTrue(self.adapter.released)

    def test_missing_or_other_roster_preparation_prevents_setters(self):
        prepare = self.adapter.prepare
        for missing in (True, False):
            def changed(*args):
                result = prepare(*args)
                self.adapter.drawing_order_expected = None if missing else image(['o3', 'o5'], args[1])
                return result
            self.adapter.prepare = changed
            self.request['request_id'] = 'bad-' + str(missing)
            self.assertEqual(self.execute()['status'], 'rejected')
            self.assertEqual(self.adapter.calls, 0)

    def test_wrong_actual_is_mismatch_and_never_replayed(self):
        apply = self.adapter.apply
        def wrong(*args):
            result = apply(*args)
            self.adapter.drawing_order_effects[0]['after'] = image(['o5', 'o3', 'o6'], args[0])
            return result
        self.adapter.apply = wrong
        edit = self.execute()
        self.assertEqual(edit['status'], 'postcondition_mismatch')
        self.assertEqual(self.execute(), edit)
        self.assertEqual(self.adapter.calls, 1)

    def test_forged_inverse_plan_refuses_before_mutation(self):
        edit = self.execute()
        validate = self.adapter.validate_revert
        def wrong(*args):
            result = validate(*args)
            self.adapter.drawing_order_expected = image(['o3', 'o4', 'o5', 'o6'], args[1])
            return result
        self.adapter.validate_revert = wrong
        inverse = self.log.revert(edit['change_id'], 'bad-inverse', self.adapter, nullcontext)
        self.assertEqual(inverse['status'], 'rejected')
        self.assertEqual(self.adapter.calls, 1)
        self.assertFalse(self.adapter.released)


if __name__ == '__main__':
    unittest.main()
