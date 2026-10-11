"""Causal-order proof and WAL checks; fixtures do not imply native acceptance."""
from contextlib import nullcontext
from copy import deepcopy
from pathlib import Path
import tempfile
import unittest
from unittest.mock import Mock, patch

import bd_drawing_order_effects as drawing
from bd_edit_journal import JournalError, fingerprint
from bd_structure_journal import StructureJournal
from test_bd_drawing_order_effects import DrawingAdapter, TOKEN, effect, image
from test_bd_parent_order_effects import image as physical


SOURCE, INVERSE = 'edit_' + '2' * 64, 'edit_' + '3' * 64


def evidence():
    before, after = image(['o3', 'o6']), image(['o3'])
    current, expected = image(['o3', 'o4', 'o5']), image(['o3', 'o4', 'o5', 'o6'])
    source = {**image(['o13', 'o14', 'o15', 'o16'], SOURCE), 'parent': 'o11', 'collection': 'o12'}
    witness = {'profile': 'native_drawing_causal_witness_v1', 'source_token': SOURCE,
        'source_inverse_id': INVERSE, 'source_order': source, 'translated_order': deepcopy(expected),
        'bindings': [[f'o{left}', f'o{right}'] for left, right in zip(range(11, 17), range(1, 7))],
        'generation': 7, 'component_oid': 'oid', 'diagram': 'Main'}
    durable = {'source_order': deepcopy(source), 'generation': 7, 'component_oid': 'oid',
               'diagram': 'Main', 'verified_released_inverse': True}
    return before, after, current, expected, witness, durable


class CausalDrawingTests(unittest.TestCase):
    def check(self, items=None, **changes):
        before, after, current, expected, witness, durable = deepcopy(items or evidence())
        drawing.validate_inverse([effect(before, after)], current, expected, token=TOKEN, diagram='Main',
            witness=witness, source_lookup=lambda proof: durable, component_oid='oid', generation=7, **changes)

    def test_only_verified_original_order_resolves_same_gap(self):
        before, after, current, expected, *_ = evidence()
        with self.assertRaises(JournalError):
            drawing.validate_inverse([effect(before, after)], current, expected, token=TOKEN, diagram='Main')
        self.check()

    def test_incomplete_corrupt_and_other_identity_proofs_refuse(self):
        for key, value in (('generation', 8), ('generation', True), ('component_oid', 'other'),
                ('diagram', 'Other'), ('source_token', INVERSE), ('source_inverse_id', TOKEN),
                ('source_inverse_id', 'invalid'), ('bindings', [['o11', 'o1']])):
            items = list(deepcopy(evidence()))
            items[4][key] = value
            with self.subTest(key=key, value=value), self.assertRaises(JournalError):
                self.check(items)
        items = list(deepcopy(evidence()))
        items[4]['bindings'][3][1] = 'o6'
        with self.assertRaises(JournalError):
            self.check(items)
        del items[4]['bindings']
        with self.assertRaises(JournalError):
            self.check(items)

    def test_durable_original_and_verified_release_must_match(self):
        for change in ({'source_order': image(['o3'], SOURCE)}, {'generation': 8},
                       {'component_oid': 'other'}, {'diagram': 'Other'},
                       {'verified_released_inverse': False}, {'verified_released_inverse': 1}):
            items = list(deepcopy(evidence()))
            items[5].update(change)
            with self.subTest(change=change), self.assertRaises(JournalError):
                self.check(items)
        items[5] = None
        with self.assertRaises(JournalError):
            self.check(items)

    def test_unknown_additions_and_current_reorder_still_refuse(self):
        for members in (['o3', 'o4', 'o7'], ['o3', 'o5', 'o4']):
            items = list(deepcopy(evidence()))
            items[2] = image(members)
            with self.subTest(members=members), self.assertRaises(JournalError):
                self.check(items)

    def test_reordered_source_projection_and_forged_expected_refuse(self):
        for index, members in ((0, ['o6', 'o3']), (3, ['o3', 'o6', 'o4', 'o5'])):
            items = list(deepcopy(evidence()))
            items[index] = image(members)
            with self.subTest(index=index), self.assertRaises(JournalError):
                self.check(items)

    def test_unambiguous_inverse_cannot_claim_causal_override(self):
        items = list(deepcopy(evidence()))
        items[2], items[3] = image(['o3']), image(['o3', 'o6'])
        with self.assertRaises(JournalError):
            self.check(items)

    def test_live_recovery_requires_exact_native_and_durable_proof(self):
        before, after, current, expected, witness, durable = evidence()
        original = {'drawing_order_before': before, 'drawing_order_expected': after}
        prepared = {'drawing_order_before': current, 'drawing_order_expected': expected,
                    'drawing_order_witness': witness, 'before': {'generation': 7}}
        native = {'drawing_order_original': before, 'drawing_order_started': current,
            'drawing_order_current': expected, 'drawing_order_effects': [effect(current, expected)],
            'current_drawing_order_matches_terminal': True, 'drawing_order_witness': witness}
        kwargs = {'token': TOKEN, 'diagram': 'Main', 'original_effects': [effect(before, after)],
                  'source_lookup': lambda proof: durable, 'component_oid': 'oid'}
        drawing.recovery(prepared, original, native, **kwargs)
        for proof in (None, {**witness, 'generation': 8}):
            with self.subTest(proof=proof), self.assertRaises(JournalError):
                drawing.recovery(prepared, original, {**native, 'drawing_order_witness': proof}, **kwargs)

    def test_released_recovery_requires_actual_proof_hash(self):
        before, after, current, expected, witness, durable = evidence()
        original = {'drawing_order_before': before, 'drawing_order_expected': after}
        prepared = {'drawing_order_before': current, 'drawing_order_expected': expected,
                    'drawing_order_witness': witness, 'before': {'generation': 7}}
        effects = [effect(current, expected)]
        observed = {'drawing_order_effects': effects, 'drawing_order_differences': drawing.differences(effects),
                    'drawing_order_witness_sha256': fingerprint(witness)}
        kwargs = {'token': TOKEN, 'diagram': 'Main', 'original_effects': [effect(before, after)],
                  'source_lookup': lambda proof: durable, 'component_oid': 'oid'}
        drawing.released(prepared, original, observed, deepcopy(observed), **kwargs)
        for key in ('drawing_order_witness_sha256', 'drawing_order_differences'):
            changed = {**observed, key: None}
            for left, right in ((changed, observed), (observed, changed)):
                with self.subTest(key=key), self.assertRaises(JournalError):
                    drawing.released(prepared, original, left, right, **kwargs)


class CausalSourceJournalTests(unittest.TestCase):
    def setUp(self):
        temporary = tempfile.TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        self.log = StructureJournal(Path(temporary.name))
        adapter = DrawingAdapter()
        self.target = {'domain': {'session': 's', 'database': 'db', 'oid': 'oid', 'process_epoch': 'epoch'},
            'component': 'BDE_Tool_Experiments\\Trial_source', 'diagram': 'Main', 'request_id': 'source',
            'operation': 'delete_node', 'arguments': [['n1'], 'n1'], 'expect': fingerprint(adapter.state)}
        self.source = self.log.execute(self.target, adapter, nullcontext)
        self.inverse = self.log.revert(self.source['change_id'], 'source-inverse', adapter, nullcontext)
        self.assertEqual(self.inverse['status'], 'verified_local')
        self.witness = {'source_token': self.source['change_id'], 'source_inverse_id': self.inverse['change_id']}

    def test_source_resolves_verified_original_and_released_inverse(self):
        result = self.log.causal_drawing_source(self.witness, self.target)
        self.assertTrue(result['verified_released_inverse'])
        self.assertEqual(result['source_order']['native_token'], self.source['change_id'])

    def test_retained_source_is_verified_without_claiming_it_was_released(self):
        source, inverse = self.log.read(self.source['change_id']), self.log.read(self.inverse['change_id'])
        changed = [event for event in deepcopy(inverse) if event['kind'] != 'recovery_released']
        changed.append({'kind': 'recovery_retained', 'payload': {'retained': True, 'profile': 'retained_inverse_v1',
            'native_token': self.source['change_id'], 'owner_change_id': self.inverse['change_id'],
            'state': 'reverted', 'model_setters_called': 0}})
        with patch.object(self.log, 'read', side_effect=[source, changed]):
            result = self.log.causal_drawing_source(self.witness, self.target)
        self.assertFalse(result['verified_released_inverse'])
        self.assertTrue(result['verified_retained_inverse'])
        changed[-1]['payload']['owner_change_id'] = TOKEN
        with patch.object(self.log, 'read', side_effect=[source, changed]), self.assertRaises(JournalError):
            self.log.causal_drawing_source(self.witness, self.target)

    def test_missing_release_wrong_inverse_and_different_epoch_refuse(self):
        source, inverse = self.log.read(self.source['change_id']), self.log.read(self.inverse['change_id'])
        for change in ('no_release', 'wrong_source', 'wrong_domain', 'raw_corruption'):
            changed = deepcopy(inverse)
            if change == 'no_release':
                changed = [event for event in changed if event['kind'] != 'recovery_released']
            elif change == 'wrong_source':
                changed[0]['payload']['reverts'] = TOKEN
            elif change == 'wrong_domain':
                changed[0]['payload']['domain']['process_epoch'] = 'other'
            else:
                next(event for event in changed if event['kind'] == 'observed')['payload']['graphical_differences'] = []
            with self.subTest(change=change), patch.object(self.log, 'read', side_effect=[source, changed]), self.assertRaises(JournalError):
                self.log.causal_drawing_source(self.witness, self.target)
        changed_target = deepcopy(self.target)
        changed_target['domain']['process_epoch'] = 'other'
        with self.assertRaises(JournalError):
            self.log.causal_drawing_source(self.witness, changed_target)


class CausalPreviewTests(unittest.TestCase):
    def preview(self, *, corrupt=False):
        import bd_service as service
        import bd_sandbox_edit as sandbox
        import bd_structural_tools as structural
        before, after, current, expected, witness, durable = evidence()
        temporary = tempfile.TemporaryDirectory()
        self.addCleanup(temporary.cleanup)
        log = StructureJournal(Path(temporary.name))
        domain = {'session': 's', 'database': 'db', 'process_epoch': 'epoch', 'oid': 'oid'}
        source = {'component': 'BDE_Tool_Experiments\\Trial_preview', 'diagram': 'Main', 'domain': domain,
                  'operation': 'delete_node', 'arguments': [[], 'n1']}
        observation = {'generation': 7, 'entries': []}
        events = [{'kind': 'intent', 'payload': source}, {'kind': 'observed', 'payload': {
            'after': observation, 'parent_order_effects': [{'kind': 'parent_order',
                'before': physical(before['members']), 'after': physical(after['members'])}],
            'drawing_order_effects': [effect(before, after)]}}]
        adapter = Mock()
        adapter.graphical_evidence_required = True
        adapter.drawing_evidence_required = True
        adapter.local_delete_inverse_capable = False
        adapter.observe.return_value = observation
        adapter.validate_revert.return_value = observation
        adapter.parent_order_before = physical(['o4', 'o5', 'o3'])
        adapter.parent_order_expected = physical(['o4', 'o5', 'o3', 'o6'])
        adapter.graphical_current = {'profile': 'native_graphical_current_v1', 'complete': True, 'objects': [
            {'ref': 'v1', 'class': 'OrderedCollection', 'kind': 'collection', 'value': [1]}]}
        adapter.graphical_signature = TOKEN + '/g1'
        adapter.drawing_order_before, adapter.drawing_order_expected = current, expected
        adapter.drawing_order_witness = witness
        if corrupt:
            durable['verified_released_inverse'] = False
        with patch.object(structural, 'StructureJournal', return_value=log), \
             patch.object(log, 'read', return_value=events), \
             patch.object(log, 'receipt', return_value={'status': 'applied_observed'}), \
             patch.object(log, 'causal_drawing_source', return_value=durable) as lookup, \
             patch.object(sandbox, 'load_binding', return_value={'snapshot': 's_fixture'}), \
             patch.object(structural, 'NativeStructureAdapter', return_value=adapter), \
             patch.object(service, 'live_lock', nullcontext), \
             patch.object(service, 'paged', side_effect=lambda text, *args: {'content': text}), \
             patch.dict('os.environ', {'ASCET_BD_STRUCTURAL_WRITES': '1'}):
            result = structural.execute('bd_revert', {'change_id': TOKEN, 'request_id': 'preview', 'preview': True}, 's', 16384)
        lookup.assert_called_once_with(witness, source)
        adapter.prepare.assert_not_called()
        adapter.revert.assert_not_called()
        adapter.close.assert_called_once()
        return result

    def test_causal_preview_returns_compact_verified_source_ids(self):
        import json
        result = self.preview()
        self.assertFalse(result['is_error'])
        receipt = json.loads(result['content'])
        self.assertEqual(receipt['validation']['drawing_evidence'], 'passed')
        self.assertEqual(receipt['drawing_order_witness']['source_token'], SOURCE)
        self.assertEqual(set(receipt['drawing_order_witness']), {'source_token', 'source_inverse_id', 'sha256'})

    def test_causal_preview_refuses_unreleased_source_without_setters(self):
        import json
        result = self.preview(corrupt=True)
        self.assertTrue(result['is_error'])
        self.assertEqual(json.loads(result['content'])['status'], 'rejected')


if __name__ == '__main__':
    unittest.main()
