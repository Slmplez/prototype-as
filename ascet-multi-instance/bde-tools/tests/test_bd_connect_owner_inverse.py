"""Composite conflict controls. No fixture constitutes native lifecycle proof."""
from copy import deepcopy
import unittest
from unittest.mock import patch

from bd_connect_owner_inverse import request
from bd_edit_journal import JournalError
import bd_connect_journal as journal
from test_bd_connect_material import TOKEN
from test_bd_connect_owner_records import material
from test_bd_persistent_owner_records import fixture
import test_bde_reference_leaf_nonempty_probe as raw_fixtures


def change_version(row):
    row['stored_version'] += 1
    for key in ('bytes', 'allocated_bytes'):
        row[key][108:112] = list(row['stored_version'].to_bytes(4, 'little'))


class CompositeInverseTests(unittest.TestCase):
    def setup_request(self, *, changed_references=False):
        v = material(); owners = v['persistent_owner_records']; references = v['module_persistent_references']
        if changed_references:
            raw = raw_fixtures.NonemptyTests().native()
            for side, snapshot in (('before', raw['before']), ('after', raw['actual']['stages'][1])):
                snapshot = deepcopy(snapshot); snapshot['component_oid'] = v['component_oid']
                snapshot['owners'][0]['oid'] = v['component_oid']
                references[side] = snapshot
                owners[side]['references'] = deepcopy(snapshot)
                for row, owner in zip(owners[side]['owners'], snapshot['owners']):
                    row['oid'] = owner['oid']; row['global_id'] = deepcopy(owner['key'])
                    row['query_key'] = deepcopy(owner['key']); row['actual_file_key'] = deepcopy(owner['key'])
                    for name in ('bytes', 'allocated_bytes'):
                        row[name][2:20] = owner['key'][:18]; row[name][123:125] = owner['key'][18:]
        return owners, references, deepcopy(owners['after'])

    def check(self, owners, references, now):
        return request(owners, references, now, token=TOKEN, component_oid=owners['component_oid'], generation=108)

    def test_source_payload_exact_inverse_retains_other_owner(self):
        owners, references, now = self.setup_request(); change_version(now['owners'][0]); saved = deepcopy(now)
        result = self.check(owners, references, now)
        self.assertEqual(len(result['owner_patches']), 1)
        self.assertEqual(result['candidate']['owners'][0], now['owners'][0])
        self.assertEqual(result['candidate']['owners'][1], owners['before']['owners'][1])
        self.assertEqual(result['reference_request']['patches'], []); self.assertEqual(now, saved)

    def test_already_restored_owner_needs_no_duplicate_patch(self):
        owners, refs, now = self.setup_request(); now['owners'][1] = deepcopy(owners['before']['owners'][1])
        result = self.check(owners, refs, now); self.assertEqual(result['owner_patches'], [])
        self.assertEqual(result['candidate'], now)

    def test_source_overlap_suppresses_both_resource_candidates(self):
        owners, refs, now = self.setup_request(); change_version(now['owners'][1])
        with self.assertRaisesRegex(ValueError, 'overlaps'): self.check(owners, refs, now)

    def test_owner_and_reference_changes_are_planned_together(self):
        owners, refs, now = self.setup_request(changed_references=True)
        result = self.check(owners, refs, now)
        self.assertEqual(len(result['owner_patches']), 1)
        self.assertEqual(len(result['reference_request']['patches']), 3)
        self.assertEqual(result['candidate'], owners['before'])
        self.assertFalse(result['model_cache_restoration_verified']); self.assertFalse(result['write_authorized'])

    def test_reference_conflict_cannot_return_partial_owner_plan(self):
        owners, refs, now = self.setup_request(changed_references=True)
        now['references']['owners'][1]['records'][0]['bytes'][-1] ^= 1
        with self.assertRaises(ValueError): self.check(owners, refs, now)

    def test_external_reciprocal_writer_is_not_granted_by_owner_capture(self):
        owners, refs, now = self.setup_request()
        refs['after']['reciprocal_records'][0]['allocated_bytes'][-1] ^= 1
        owners['after']['references'] = deepcopy(refs['after']); now = deepcopy(owners['after'])
        with self.assertRaisesRegex(ValueError, 'isolated Module/source'):
            self.check(owners, refs, now)

    def test_coherent_but_different_reference_before_is_rejected(self):
        owners, refs, now = self.setup_request(); refs['before']['reciprocal_records'][0]['allocated_bytes'][-1] ^= 1
        with self.assertRaisesRegex(ValueError, 'proofs differ'): self.check(owners, refs, now)

    def test_inputs_cannot_rebind_identity_or_generation(self):
        for generation in (True, 109):
            owners, refs, now = self.setup_request()
            with self.subTest(generation=generation), self.assertRaises(ValueError):
                request(owners, refs, now, token=TOKEN, component_oid=owners['component_oid'], generation=generation)
        owners, refs, now = self.setup_request(); now['owners'][1]['stored_name'] = 'another'
        with self.assertRaises(ValueError): self.check(owners, refs, now)

    def test_journal_binds_original_proof_and_does_no_io(self):
        owners, refs, now = self.setup_request(); v = material()
        intent = dict(domain=dict(oid=v['component_oid'], process_epoch='synthetic', database='synthetic'))
        prepared = dict(before=dict(generation=108)); actual = dict(after={})
        with patch.object(journal, '_persistent_reference_context', return_value=(intent, prepared, actual, v)):
            result = journal.persistent_owner_inverse_request(object(), TOKEN, now)
        self.assertTrue(result['journal_bound']); self.assertEqual(result['original_domain'], intent['domain'])
        self.assertEqual(result['native_calls'], 0); self.assertFalse(result['production_connection_inverse_available'])

    def test_v3_cannot_fill_missing_before_using_later_read(self):
        v = material(); v.pop('persistent_owner_records')
        with patch.object(journal, '_persistent_reference_context', return_value=({}, {}, {}, v)):
            with self.assertRaises(JournalError): journal.persistent_owner_inverse_request(object(), TOKEN, fixture())


class OwnerWALTests(unittest.TestCase):
    def setUp(self):
        from test_bd_module_persistent_references import FiniteReferenceJournalTests
        FiniteReferenceJournalTests.setUp(self)
        prior = self.adapter.material
        def with_owners(token, phase, oid):
            result = prior(token, phase, oid); finite = result['module_persistent_references']
            # This control isolates owner payload undo. External reciprocal
            # writes remain unsupported by the bounded native leaf executor.
            if phase == 'attached': finite['after'] = deepcopy(finite['before'])
            def owner_snapshot(side):
                value = fixture(); value['component_oid'] = oid; value['references'] = deepcopy(finite[side])
                for row, reference_owner in zip(value['owners'], value['references']['owners']):
                    row['oid'] = reference_owner['oid']
                if side == 'after':
                    value['owners'][1]['bytes'][130] ^= 1; value['owners'][1]['allocated_bytes'][130] ^= 1
                return value
            result.update(profile='native_connect_material_v4')
            result['persistent_owner_records'] = {k: deepcopy(v) for k,v in finite.items() if k not in ('profile', 'before', 'after')}
            result['persistent_owner_records'].update(profile='native_connect_owner_records_v1',
                before=owner_snapshot('before'), after=owner_snapshot('after') if phase == 'attached' else None)
            return result
        self.adapter.material = with_owners

    def forward(self):
        from test_bd_module_persistent_references import FiniteReferenceJournalTests
        return FiniteReferenceJournalTests.forward(self)

    def test_wal_preserves_actual_and_diff_is_offline_compact(self):
        first = self.forward(); token = first['change_id']; calls = deepcopy(self.adapter.calls)
        self.assertEqual(first['persistent_owner_record_history']['changed_records'], 1)
        events = self.log.read(token); full = journal.one(events, 'observed')['persistent_owner_records_actual']
        self.assertEqual(full['before']['owners'][1]['bytes'][130], 0)
        self.assertEqual(full['after']['owners'][1]['bytes'][130], 1)
        diff = self.log.diff(token); observation = diff['observations'][0]
        self.assertNotIn('persistent_owner_records_actual', observation)
        self.assertEqual(observation['persistent_owner_record_differences'][0]['changed_bytes'], 1)
        planned = journal.persistent_owner_inverse_request(self.log, token, full['after'])
        self.assertEqual(planned['candidate'], full['before']); self.assertTrue(planned['journal_bound'])
        self.assertEqual(self.log.read(token), events); self.assertEqual(self.adapter.calls, calls)
        self.assertEqual(self.forward(), first); self.assertEqual(self.adapter.calls, calls)

    def test_unknown_forward_has_no_owner_inverse_or_replay(self):
        self.adapter.lose_reply = True; first = self.forward()
        self.assertEqual(first['status'], 'outcome_unknown')
        with self.assertRaises(JournalError): journal.persistent_owner_inverse_request(self.log, first['change_id'], {})
        self.assertEqual(self.forward(), first); self.assertEqual(self.adapter.calls.count('apply'), 1)


if __name__ == '__main__': unittest.main()
