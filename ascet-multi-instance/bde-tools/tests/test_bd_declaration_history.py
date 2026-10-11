"""Reject unsafe declaration targets using the preserved real variable capture offline."""
from copy import deepcopy
from pathlib import Path
import json
import unittest
from unittest.mock import Mock, patch

from bd_declaration_history import preparation, observed
from bd_create_history_journal import context, prepare
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_edit_journal import JournalError


ROOT = Path(__file__).resolve().parents[1]
SOURCE = ROOT / 'analysis/bde-experiments/2026-10-06/bde-create-variable-body-tool-capture-01'


def archived_journal():
    """Use the immutable pre-closure WAL; the actual original is now finalized."""
    rows=json.loads((ROOT/'analysis/bde-experiments/2026-10-06/bde-variable-body-history-tools-01/original-journal.json').read_text(encoding='utf-8'))
    old=json.loads((SOURCE/'result.json').read_text(encoding='utf-8'))
    log=StructureJournal(SOURCE/'store/edits')
    def read(token):
        if token!=old['native_token']:raise ValueError('Only this archived original WAL is available')
        return deepcopy(rows)
    log.read=read
    return log


def retained_fixture():
    old = json.loads((SOURCE / 'result.json').read_text(encoding='utf-8'))
    events = archived_journal().read(old['native_token'])
    material = next(e['payload']['create_material_actual'] for e in events if e['kind'] == 'observed')
    body = material['declaration_material']
    rows = {r['ref']: deepcopy(r) for r in body['after']['objects']}
    rows.update({r['ref']: deepcopy(r) for r in body['before']['objects']})
    value = dict(profile='native_declaration_exact_target_v1', current=deepcopy(body['after']),
        original=deepcopy(body['before']), expected=dict(profile='native_graphical_current_v1',
            complete=True, objects=list(rows.values())), current_schema=deepcopy(body['after_schema']),
        original_schema=deepcopy(body['before_schema']), expected_schema=deepcopy(body['after_schema']),
        owner_ref=body['owner_ref'], created_model_ref=body['created_model_ref'],
        created_model_oid=material['created_model_oid'], expected_model_present=False,
        same_original_objects_retained=True)
    changes = [{**deepcopy(d), 'before':deepcopy(d['after']), 'after':deepcopy(d['before'])}
               for d in body['actual_diff']['changes']]
    actual = dict(declaration_current=deepcopy(value['current']), declaration_schema=deepcopy(value['current_schema']),
        declaration_actual=dict(profile='native_graphical_diff_v1',complete=True, new_objects=[],
            changes=changes,after_object_count=len(value['current']['objects'])),
        declaration_target_verified=True,created_model_original_retained=True)
    return value, actual


class DeclarationHistoryTests(unittest.TestCase):
    def setUp(self): self.value, self.actual = retained_fixture()

    def validate(self): return preparation(self.value, expected_present=False)

    def test_original_capture_explains_complete_detach_target_and_actual_changes(self):
        p = self.validate(); result = observed(self.actual, p)
        self.assertTrue(result['same_original_objects_retained'])
        self.assertEqual(result['actual_diff']['changed_entries'], 7)
        self.assertFalse(result['model_present'])

    def test_reattach_retains_same_alias_and_original_model(self):
        p = self.validate(); self.value.update(current=deepcopy(p['expected']),
            original=deepcopy(p['current']), expected=deepcopy(p['current']),
            original_schema=deepcopy(p['current_schema']), expected_model_present=True)
        result = preparation(self.value, expected_present=True, model_oid=p['created_model_oid'])
        self.assertEqual(result['created_model_ref'], p['created_model_ref'])

    def test_matching_names_cannot_replace_factory_alias(self):
        rows = {r['ref']: r for r in self.value['current']['objects']}
        model = rows[self.value['created_model_ref']]
        names = next(r['field_names'] for r in self.value['current_schema']['objects'] if r['ref'] == model['ref'])
        rows[model['value'][names.index('aliasName')]['ref']]['value'][0] ^= 1
        with self.assertRaises(ValueError): self.validate()

    def test_typed_factory_oid_must_match_original_declaration_alias(self):
        with self.assertRaisesRegex(ValueError, 'model OID'):
            preparation(self.value, expected_present=False, model_oid='m_'+'1'*40)

    def test_detached_model_cannot_be_dropped_from_retained_target(self):
        self.value['expected']['objects'] = [r for r in self.value['expected']['objects']
            if r['ref'] != self.value['created_model_ref']]
        with self.assertRaises(ValueError): self.validate()

    def test_wrong_membership_direction_refuses_without_authority_from_flags(self):
        self.value['expected_model_present'] = True
        with self.assertRaises(ValueError): preparation(self.value, expected_present=True)

    def test_lookup_storage_slot_names_cannot_be_reinterpreted(self):
        row = next(r for r in self.value['current_schema']['objects'] if r['class'] == 'LookupTable')
        row['field_names'] = ['elementCount','values','keys']
        with self.assertRaisesRegex(ValueError, 'LookupTable'): self.validate()

    def test_actual_target_flags_cannot_hide_omitted_owner_change(self):
        p = self.validate(); self.actual['declaration_actual']['changes'].pop()
        with self.assertRaisesRegex(ValueError, 'reconstruct'): observed(self.actual, p)

    def test_changed_original_schema_is_rejected(self):
        row = next(r for r in self.value['original_schema']['objects'] if r['ref'] == self.value['owner_ref'])
        row['field_names'][0] = 'forged'
        with self.assertRaisesRegex(ValueError, 'schema changed'): self.validate()

    def test_body_history_disabled_refuses_before_any_native_call(self):
        old = json.loads((SOURCE/'result.json').read_text())
        ctx = context(archived_journal(), old['native_token'])
        adapter = Mock(create_history_capable=True,create_declaration_history_capable=False)
        with self.assertRaisesRegex(JournalError, 'declaration history profile'):
            prepare(adapter, ctx, 'edit_'+'f'*64)
        adapter.observe.assert_not_called(); adapter.prepare_create_history.assert_not_called()

    def test_unknown_profile_or_missing_body_capture_refuses(self):
        base = dict(ASCET_BD_CREATE_MATERIAL='identity_v1',ASCET_BD_OPERATION_EXECUTOR='staged_v1',
                    ASCET_BD_CREATE_HISTORY='native_source_exact_v1')
        for flag in ('future', 'body_exact_v1'):
            with self.assertRaises(ValueError):
                NativeStructureAdapter('BDE_Tool_Experiments\\Trial_body',
                    environment={**base,'ASCET_BD_CREATE_DECLARATION_HISTORY':flag})
        adapter = NativeStructureAdapter('BDE_Tool_Experiments\\Trial_body', environment={**base,
            'ASCET_BD_CREATE_DECLARATIONS':'body_v1','ASCET_BD_CREATE_DECLARATION_HISTORY':'body_exact_v1'})
        self.assertTrue(adapter.create_declaration_history_capable)

    def test_preserved_failed_forward_needs_completed_bound_no_replay_verification(self):
        from bde_create_history_source import validate
        old = json.loads((SOURCE/'result.json').read_text())
        with self.assertRaisesRegex(ValueError, 'exact no-replay'):
            validate(SOURCE,old,old['process_epoch'])
        verification=ROOT/'analysis/bde-experiments/2026-10-06/bde-create-variable-body-capture-verify-01'
        with patch('bde_create_history_source.StructureJournal',return_value=archived_journal()):
            self.assertTrue(validate(SOURCE,old,old['process_epoch'],verification))
        bad=deepcopy(old);bad['domain']['oid']='other'
        with self.assertRaisesRegex(ValueError, 'not bound'):
            validate(SOURCE,bad,old['process_epoch'],verification)


if __name__ == '__main__': unittest.main()
