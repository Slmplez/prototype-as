"""Synthetic protocol and raw restoration controls; not native acceptance."""
from copy import deepcopy
import os
from pathlib import Path
import sys
import tempfile
import unittest

from bde_reference_leaf_noop_probe import run_handshake
from bde_reference_leaf_lifecycle_probe import verify_lifecycle, verify_no_writer_refusal
from test_bd_module_persistent_references import snapshot, record, absent_record, OID, SOURCE


class LifecycleEvidenceTests(unittest.TestCase):
    DOMAIN = dict(process_epoch='pid/epoch', database='isolated', oid=OID)

    def native(self):
        before = snapshot()
        for owner in before['owners']:
            owner['records'][0] = record(owner['key'], 'owner_references', [])
        before.update(reciprocal_targets=[], reciprocal_records=[], membership_checks=[])
        before['owners'][1]['records'][0] = absent_record(SOURCE, 'owner_references')
        candidate = [0, 60] + SOURCE + list(b'DBReferenceList' + b'\0' * (34 - len(b'DBReferenceList'))) + [0] * 8
        inserted = deepcopy(before)
        row = record(SOURCE, 'owner_references', [], tail=[91, 92, 93])
        row['allocated_bytes'][:64] = candidate
        row['bytes'] = candidate.copy()
        inserted['owners'][1]['records'][0] = row
        actual = dict(profile='finite_reference_leaf_lifecycle_result_v1', before=deepcopy(before),
            inserted=inserted, after=deepcopy(before), owner_key=SOURCE, candidate_bytes=candidate,
            created_raw_bytes=deepcopy(row['allocated_bytes']),
            outcome=dict(returned_class='CTSpaceCheckingIFil', is_ct_error=False),
            delete_outcome=dict(returned_class='SmallInteger', is_ct_error=False),
            owner_source_backend_preserved=True, persistent_leaf_write_calls=1, persistent_leaf_delete_calls=1,
            model_setters_called=0, store_called=False, commit_called=False, flush_called=False, durable_inverse_verified=False)
        return dict(passed=True, complete_reply_received=True, write_dispatched=True, component_oid=OID,
            process_epoch='pid/epoch', database='isolated', dirty_before=0, dirty_after=0, before=before, actual=actual)

    def test_empty_creation_removal_has_no_durable_inverse_authority(self):
        result = verify_lifecycle(self.native(), self.DOMAIN, 'Trial')
        self.assertTrue(result['original_absence_restored'])
        self.assertFalse(result['durable_reference_inverse_verified'])
        self.assertFalse(result['inverse_authorized'])

    def test_unknown_old_epoch_dirty_replay_or_incomplete_delete_is_rejected(self):
        for mutate in (lambda v: v.update(complete_reply_received=False), lambda v: v.update(process_epoch='old'),
                       lambda v: v.update(dirty_after=1), lambda v: v['actual'].update(persistent_leaf_write_calls=2),
                       lambda v: v['actual'].update(persistent_leaf_delete_calls=0),
                       lambda v: v['actual'].update(durable_inverse_verified=True)):
            value = self.native(); mutate(value)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError):
                verify_lifecycle(value, self.DOMAIN, 'Trial')

    def test_wrong_header_key_count_and_legacy_blob_extent_are_rejected(self):
        for offset in (0, 1, 2, 22, 56, 60):
            value = self.native(); value['actual']['candidate_bytes'][offset] ^= 1
            with self.subTest(offset=offset), self.assertRaises(ValueError):
                verify_lifecycle(value, self.DOMAIN, 'Trial')

    def test_raw_tail_change_or_unrelated_original_record_change_is_rejected(self):
        value = self.native(); value['actual']['created_raw_bytes'][-1] ^= 1
        with self.assertRaises(ValueError): verify_lifecycle(value, self.DOMAIN, 'Trial')
        value = self.native(); value['actual']['after']['owners'][0]['records'][0]['allocated_bytes'][-1] ^= 1
        with self.assertRaises(ValueError): verify_lifecycle(value, self.DOMAIN, 'Trial')

    def test_empty_record_left_behind_cannot_substitute_original_absence(self):
        value = self.native(); value['actual']['after'] = deepcopy(value['actual']['inserted'])
        with self.assertRaises(ValueError): verify_lifecycle(value, self.DOMAIN, 'Trial')

    def test_cterror_in_either_leaf_outcome_is_rejected(self):
        for key in ('outcome', 'delete_outcome'):
            value = self.native(); value['actual'][key]['is_ct_error'] = True
            with self.subTest(key=key), self.assertRaises(ValueError):
                verify_lifecycle(value, self.DOMAIN, 'Trial')

    def test_terminal_refusal_requires_both_zero_leaf_counts(self):
        value = self.native()
        value['typed_no_writer_refusal'] = True
        value['actual'] = dict(profile='finite_reference_leaf_lifecycle_failure_v1',
            write_dispatched=False, persistent_leaf_write_calls=0, persistent_leaf_delete_calls=0,
            error='Original observation changed', automatic_retry=False)
        verify_no_writer_refusal(value, self.DOMAIN)
        for field, bad in (('write_dispatched', True), ('persistent_leaf_write_calls', 1),
                ('persistent_leaf_delete_calls', 1), ('persistent_leaf_write_calls', False)):
            changed = deepcopy(value); changed['actual'][field] = bad
            with self.subTest(field=field, bad=bad), self.assertRaises(ValueError):
                verify_no_writer_refusal(changed, self.DOMAIN)


class LifecycleHandshakeTests(unittest.TestCase):
    def test_fixed_lifecycle_command_only_after_original_authorization(self):
        code = "print('BDE_REFERENCE_LIFECYCLE_READY',flush=True); import sys; assert sys.stdin.readline() == 'WRITE_EMPTY_AND_REMOVE\\n'"
        calls = []
        with tempfile.TemporaryDirectory() as folder:
            status = run_handshake([sys.executable, '-u', '-c', code], environment=dict(os.environ),
                output=Path(folder), authorize=lambda: calls.append('wal'), lifecycle=True, timeout=3)
        self.assertEqual(status, 0); self.assertEqual(calls, ['wal'])

    def test_wrong_profile_ready_never_authorizes_lifecycle_writer(self):
        calls = []
        with tempfile.TemporaryDirectory() as folder:
            status = run_handshake([sys.executable, '-u', '-c', "print('BDE_REFERENCE_NOOP_READY',flush=True)"],
                environment=dict(os.environ), output=Path(folder), authorize=lambda: calls.append('wal'), lifecycle=True, timeout=3)
        self.assertEqual(status, 0); self.assertEqual(calls, [])


if __name__ == '__main__': unittest.main()
