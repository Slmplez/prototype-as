"""Offline journal/order dependency regressions; not live inverse acceptance."""
from contextlib import nullcontext
from copy import deepcopy
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

from bd_edit_journal import JournalError, NativePreconditionConflict, fingerprint
from bd_parent_order_effects import (differences, postcondition, signature, validate_image, validate_inverse, validate_probe)
from bd_structure_journal import StructureJournal


TOKEN = 'edit_' + '1' * 64


def image(members, token=TOKEN, diagram='Main'):
    return {'profile': 'native_parent_order_v1', 'native_token': token, 'diagram': diagram,
        'parent': 'o1', 'collection': 'o2', 'complete': True, 'members': members}


def effect(before, after):
    return {'kind': 'parent_order', 'before': before, 'after': after}


class ParentOrderEvidenceTests(unittest.TestCase):
    def test_full_exact_image_and_signature_include_empty_collection(self):
        self.assertEqual(signature(image([])), TOKEN + ',o1,o2')
        self.assertEqual(signature(image(['o3', 'o4'])), TOKEN + ',o1,o2,o3,o4')

    def test_incomplete_duplicate_or_forged_identity_is_refused(self):
        for changes in ({'complete': 1}, {'complete': False}, {'members': ['o3', 'o3']},
                        {'members': ['o1']}, {'parent': 'o2'}, {'members': [True]},
                        {'native_token': 'not_native'}, {'members': ['o0']}, {'extra': True}):
            with self.subTest(changes=changes), self.assertRaises(JournalError):
                validate_image({**image(['o3']), **changes})

    def test_inverse_uses_current_slots_and_keeps_independent_changes(self):
        before, after = image(['o3', 'o4', 'o5', 'o6']), image(['o3', 'o5', 'o6'])
        for current, restored in ((['o7', 'o3', 'o5', 'o6'], ['o7', 'o3', 'o4', 'o5', 'o6']),
                                  (['o3', 'o5'], ['o3', 'o4', 'o5'])):
            validate_inverse([effect(before, after)], image(current), image(restored), token=TOKEN, diagram='Main')
        with self.assertRaises(JournalError):
            validate_inverse([effect(before, after)], image(['o7', 'o3', 'o5']), before, token=TOKEN, diagram='Main')

    def test_ambiguous_gap_reordered_or_other_scope_has_no_inverse(self):
        original = [effect(image(['o3', 'o4', 'o5']), image(['o3', 'o5']))]
        for current in (image(['o3', 'o6', 'o5']), image(['o5', 'o3']),
                        image(['o3', 'o5'], diagram='Main/h2'), image(['o3', 'o5'], token='edit_'+'2'*64)):
            with self.subTest(current=current), self.assertRaises(JournalError):
                validate_inverse(original, current, image(['o3', 'o4', 'o5']), token=TOKEN, diagram='Main')

    def test_actual_effect_cannot_be_inferred_from_matching_graph_or_intent(self):
        before, after = image(['o3', 'o4']), image(['o3'])
        self.assertFalse(postcondition([], before, after))
        self.assertFalse(postcondition([effect(before, before)], before, after))
        self.assertFalse(postcondition([effect(before, {**after, 'complete': 1})], before, after))
        self.assertTrue(postcondition([effect(before, after)], before, after))
        self.assertEqual(differences([effect(before, after)])[0]['removed'], [{'native_ref': 'o4', 'index': 1}])

    def test_thousand_member_diff_returns_changed_tokens_and_can_detect_reordering(self):
        before = image(['o' + str(index) for index in range(3, 1003)])
        after = image([key for key in before['members'] if key != 'o502'])
        delta = differences([effect(before, after)])[0]
        self.assertEqual(delta['removed'], [{'native_ref': 'o502', 'index': 499}])
        self.assertEqual((delta['before_count'], delta['after_count']), (1000, 999))
        self.assertIsNone(delta['reordered'])
        import json
        self.assertLess(len(json.dumps(delta).encode('utf-8')), 600)
        reverse = image(after['members'][::-1])
        self.assertEqual(differences([effect(after, reverse)])[0]['reordered']['after'], reverse['members'])


def private_receipt():
    from bd_collection_merge import merge_order
    modes = ('exact', 'independent_addition', 'independent_deletion', 'stale_current', 'changed_ids', 'changed_ids_binding')
    rows = []
    for mode in modes:
        before, after = image(['o3', 'o4', 'o5', 'o6']), image(['o3', 'o5', 'o6'])
        current = image(['o7', 'o3', 'o5', 'o6'] if mode == 'independent_addition'
                        else ['o3', 'o5'] if mode == 'independent_deletion' else after['members'])
        restored = image(merge_order(before['members'], after['members'], current['members'])['merged'])
        rows.append({'scenario': mode, 'before': before, 'applied': after, 'current': current,
            'expected': restored, 'actual': deepcopy(restored), 'signature': signature(current),
            'stale_refused': mode.startswith(('stale_', 'changed_')), 'private_reset': True})
    endpoints = [{'scenario': mode, 'accepted': mode == 'exact', 'private_reset': True, 'input_endpoint_checked': True}
        for mode in ('exact', 'pin_parent_changed', 'point_owner_changed', 'map_rebound',
                     'input_occupied', 'owner_detached', 'incident_ghost')]
    return {'profile': 'native_parent_order_evidence_probe_v1', 'cases': rows, 'endpoint_cases': endpoints,
        'model_setters_called': 0, 'production_dispatch': False, 'complete_acceptance': False,
        'dispatcher_compiled': True, 'dispatcher_bound': True, 'recovery_reader_compiled': True}


class ParentOrderProbeAuditTests(unittest.TestCase):
    def test_complete_private_evidence_is_independently_checked(self):
        result = validate_probe(private_receipt())
        self.assertEqual((result['cases'], result['endpoint_cases'], result['endpoint_refusals']), (6, 7, 6))
        self.assertIs(result['complete_acceptance'], False)

    def test_changed_actual_order_signature_and_missing_stale_guard_refuse(self):
        for mutation in ('actual', 'signature', 'guard', 'compiled', 'model_write'):
            value = private_receipt()
            if mutation == 'actual':
                value['cases'][1]['actual']['members'] = value['cases'][0]['actual']['members']
            elif mutation == 'signature':
                value['cases'][0]['signature'] += ',o99'
            elif mutation == 'guard':
                value['cases'][3]['stale_refused'] = False
            elif mutation == 'compiled':
                value['recovery_reader_compiled'] = False
            else:
                value['production_dispatch'] = True
            with self.subTest(mutation=mutation), self.assertRaises(ValueError):
                validate_probe(value)

    def test_missing_duplicate_or_wrong_endpoint_refusals_cannot_pass(self):
        for mutation in ('missing', 'duplicate', 'occupied', 'input_checked', 'reset'):
            value = private_receipt()
            if mutation == 'missing':
                value['endpoint_cases'].pop()
            elif mutation == 'duplicate':
                value['endpoint_cases'][-1] = deepcopy(value['endpoint_cases'][0])
            elif mutation == 'occupied':
                value['endpoint_cases'][4]['accepted'] = True
            elif mutation == 'input_checked':
                value['endpoint_cases'][0]['input_endpoint_checked'] = False
            else:
                value['endpoint_cases'][0]['private_reset'] = False
            with self.subTest(mutation=mutation), self.assertRaises(ValueError):
                validate_probe(value)


class SelectedDeletionAdapter:
    def __init__(self):
        self.state = {'generation': 1, 'entries': [{'kind': 'node', 'ref': 'n1', 'pins': []}]}
        self.order = ['o3', 'o4', 'o5', 'o6']
        self.calls = 0
        self.released = False
        self.bad_effect = self.lose_reply = self.change_after_preflight = False

    def observe(self, domain, targets):
        return deepcopy(self.state)

    def prepare(self, domain, token, operation, arguments):
        self.token = token
        self.before = deepcopy(self.state)
        self.original_order = self.order[:]
        self.parent_order_before = image(self.order[:], token)
        self.parent_order_expected = image(['o3', 'o5', 'o6'], token)
        return self.observe(domain, None)

    def apply(self, token):
        self.calls += 1
        self.state['entries'] = []
        self.order = ['o3', 'o5', 'o6']
        self.parent_order_effects = [effect(self.parent_order_before, image(self.order[:], token))]
        return self.observe(None, None)

    def validate_revert(self, domain, token):
        from bd_collection_merge import merge_order
        plan = merge_order(self.original_order, ['o3', 'o5', 'o6'], self.order)
        if not plan['compatible']:
            raise NativePreconditionConflict('CURRENT parent order conflict')
        self.parent_order_before = image(self.order[:], token)
        self.parent_order_expected = image(plan['merged'], token)
        return self.observe(domain, None)

    def revert(self, domain, token):
        if self.change_after_preflight:
            self.order.insert(0, 'o8')
        if self.order != self.parent_order_before['members']:
            raise NativePreconditionConflict('Durable CURRENT order changed before setters')
        self.calls += 1
        self.order = self.parent_order_expected['members'][:]
        self.state = deepcopy(self.before)
        self.parent_order_effects = [] if self.bad_effect else [effect(self.parent_order_before, image(self.order[:], token))]
        if self.lose_reply:
            raise TimeoutError('Actual inverse receipt lost')
        return self.observe(domain, None)

    def release(self, domain, token):
        self.released = True
        return {'released': True}


class ParentOrderJournalTests(unittest.TestCase):
    def setUp(self):
        temporary = tempfile.TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        self.log = StructureJournal(Path(temporary.name))
        self.adapter = SelectedDeletionAdapter()
        self.request = {'domain': {'session': 's', 'database': 'db', 'oid': 'oid', 'process_epoch': 'epoch'},
            'component': 'BDE_Tool_Experiments\\Trial_order', 'diagram': 'Main', 'request_id': 'delete',
            'operation': 'delete_node', 'arguments': [['n1'], 'n1'], 'expect': fingerprint(self.adapter.state)}
        self.edit = self.log.execute(self.request, self.adapter, nullcontext)

    def revert(self):
        return self.log.revert(self.edit['change_id'], 'undo', self.adapter, nullcontext)

    def test_actual_current_and_restored_order_are_durable_and_diff_is_offline(self):
        self.assertEqual(self.edit['status'], 'applied_observed')
        self.adapter.order = ['o7', 'o3', 'o5']
        receipt = self.revert()
        self.assertEqual(receipt['status'], 'verified_local')
        self.assertEqual(self.adapter.order, ['o7', 'o3', 'o4', 'o5'])
        self.assertTrue(self.adapter.released)
        events = self.log.read(receipt['change_id'])
        prepared = next(e['payload'] for e in events if e['kind'] == 'prepared')
        self.assertEqual(prepared['parent_order_before']['members'], ['o7', 'o3', 'o5'])
        self.assertEqual(prepared['parent_order_expected']['members'], self.adapter.order)
        with patch.object(self.adapter, 'observe', side_effect=AssertionError('offline diff must not connect')):
            delta = self.log.diff(receipt['change_id'])
            self.assertEqual(self.revert(), receipt)
        self.assertEqual(delta['parent_order_differences'][0]['added'], [{'native_ref': 'o4', 'index': 2}])
        self.assertNotIn('parent_order_effects', receipt)
        self.assertNotIn('parent_order_effects', delta['observations'][0])
        actual = next(e['payload'] for e in self.log.read(receipt['change_id']) if e['kind'] == 'observed')
        self.assertEqual(actual['parent_order_effects'][0]['before']['members'], ['o7', 'o3', 'o5'])
        self.assertEqual(self.adapter.calls, 2)

    def test_stale_preflight_refuses_before_setters_and_keeps_independent_member(self):
        self.adapter.change_after_preflight = True
        receipt = self.revert()
        self.assertEqual(receipt['status'], 'conflict')
        self.assertIs(receipt['setter_called'], False)
        self.assertEqual(self.adapter.calls, 1)
        self.assertEqual(self.adapter.order[0], 'o8')
        self.assertFalse(self.adapter.released)

    def test_restored_graph_without_actual_order_evidence_cannot_release_native_material(self):
        self.adapter.bad_effect = True
        receipt = self.revert()
        self.assertEqual(receipt['status'], 'restore_mismatch')
        self.assertEqual(self.adapter.state, self.adapter.before)
        self.assertFalse(self.adapter.released)

    def test_unknown_never_replays_even_when_retained_graph_now_matches_original(self):
        self.adapter.lose_reply = True
        receipt = self.revert()
        self.assertEqual(receipt['status'], 'outcome_unknown')
        self.assertEqual(self.revert(), receipt)
        self.assertEqual(self.adapter.calls, 2)

    def test_current_wal_failure_dispatches_no_inverse(self):
        append = self.log._append
        def fail(path, events, kind, payload):
            if kind == 'prepared':
                raise OSError('CURRENT publication failed')
            return append(path, events, kind, payload)
        with patch.object(self.log, '_append', side_effect=fail):
            receipt = self.revert()
        self.assertEqual(receipt['status'], 'rejected')
        self.assertIs(receipt['setter_called'], False)
        self.assertEqual(self.adapter.calls, 1)


if __name__ == '__main__':
    unittest.main()
