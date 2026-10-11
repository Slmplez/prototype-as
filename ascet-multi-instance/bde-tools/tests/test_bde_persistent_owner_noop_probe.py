"""Owner no-op reply and handshake tamper controls; no online acceptance."""
from copy import deepcopy
import os
from pathlib import Path
import sys
import tempfile
import unittest

from bde_persistent_owner_noop_probe import verify_owner_noop
from bde_reference_leaf_noop_probe import run_handshake
from test_bd_persistent_owner_records import fixture, OID

DOMAIN = dict(oid=OID, process_epoch='pid/epoch', database='isolated')


def native_fixture():
    before = fixture()
    outcomes = [dict(role=r['role'], planned_bytes=r['allocated_bytes'].copy(),
        actual_bytes=r['allocated_bytes'].copy(), returned_class='CTSpaceCheckingIFil') for r in before['owners']]
    return dict(passed=True, complete_reply_received=True, write_dispatched=True, component_oid=OID,
        process_epoch=DOMAIN['process_epoch'], database=DOMAIN['database'], dirty_before=0, dirty_after=0,
        before=before, actual=dict(profile='isolated_persistent_owner_noop_result_v1', before=deepcopy(before),
            after=deepcopy(before), outcomes=outcomes, persistent_leaf_write_calls=2,
            persistent_leaf_delete_calls=0, owner_source_backend_preserved=True, model_setters_called=0,
            store_called=False, commit_called=False, full_commit_resource_closure=False, automatic_retry=False))


class OwnerNoopTests(unittest.TestCase):
    def test_complete_reply_only_verifies_leaf_route(self):
        summary = verify_owner_noop(native_fixture(), DOMAIN)
        self.assertTrue(summary['exact_observation_restored'])
        self.assertFalse(summary['model_persistent_edit_verified'])
        self.assertFalse(summary['production_inverse_authorized'])

    def test_tampered_original_after_and_outcomes_refused(self):
        for mutate in (lambda n: n['before']['owners'][0]['allocated_bytes'].__setitem__(-1, 77),
                lambda n: n['actual']['after']['owners'][0]['allocated_bytes'].__setitem__(-1, 77),
                lambda n: n['actual']['outcomes'][0]['planned_bytes'].__setitem__(-1, 77),
                lambda n: n['actual']['outcomes'][1].update(returned_class='CTError'),
                lambda n: n['actual']['outcomes'].reverse()):
            value = native_fixture(); mutate(value)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): verify_owner_noop(value, DOMAIN)

    def test_runtime_dirty_unknown_and_hidden_write_refused(self):
        for mutate in (lambda n: n.update(process_epoch='other'), lambda n: n.update(database='other'),
                lambda n: n.update(dirty_after=True), lambda n: n.update(complete_reply_received=False),
                lambda n: n.update(cleanup_error='unknown'),
                lambda n: n['actual'].update(persistent_leaf_write_calls=3),
                lambda n: n['actual'].update(persistent_leaf_delete_calls=True),
                lambda n: n['actual'].update(commit_called=True),
                lambda n: n['actual']['after']['references'].update(inverse_authorized=True)):
            value = native_fixture(); mutate(value)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): verify_owner_noop(value, DOMAIN)

    def test_owner_command_follows_parent_authorization(self):
        calls = []
        code = "print('BDE_PERSISTENT_OWNER_READY',flush=True); import sys; assert sys.stdin.readline() == 'WRITE_ORIGINAL_OWNER_RECORDS_NOOP\\n'"
        with tempfile.TemporaryDirectory() as temp:
            status = run_handshake([sys.executable, '-u', '-c', code], environment=dict(os.environ),
                output=Path(temp), authorize=lambda: calls.append('authorized'), owner_noop=True, timeout=3)
        self.assertEqual(status, 0); self.assertEqual(calls, ['authorized'])


if __name__ == '__main__': unittest.main()
