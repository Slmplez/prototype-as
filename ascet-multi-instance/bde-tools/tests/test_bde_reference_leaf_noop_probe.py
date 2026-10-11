"""Offline host handshake and evidence controls, never native writer acceptance."""
from copy import deepcopy
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import unittest

from bde_reference_leaf_noop_probe import run_handshake, verify_native
from test_bd_module_persistent_references import OID, OWNER, snapshot, requested_snapshot


class NoopHandshakeTests(unittest.TestCase):
    def child(self, code, authorize, *, timeout=3):
        with tempfile.TemporaryDirectory() as temporary:
            output = Path(temporary)
            status = run_handshake([sys.executable, '-u', '-c', code], environment=dict(os.environ),
                output=output, authorize=lambda: authorize(output), timeout=timeout)
            return status, (output / 'native.stdout.log').read_bytes()

    def test_fixed_writer_command_follows_original_authorization(self):
        def authorize(output): (output / 'parent-wal').write_text('original frozen', encoding='utf-8')
        code = "print('BDE_REFERENCE_NOOP_READY',flush=True); import sys; assert sys.stdin.readline() == 'WRITE_NOOP\\n'; print('AUTHORIZED',flush=True)"
        status, log = self.child(code, authorize)
        self.assertEqual(status, 0); self.assertIn(b'AUTHORIZED', log)

    def test_failed_prepare_never_requests_parent_write_authorization(self):
        calls = []
        status, log = self.child("print('PREPARE_FAILED',flush=True)", lambda _: calls.append('authorize'))
        self.assertEqual(calls, []); self.assertEqual(status, 0)
        self.assertIn(b'PREPARE_FAILED', log)

    def test_native_log_preamble_is_preserved_and_does_not_skip_ready_gate(self):
        calls = []
        code = "print('Log File: local',flush=True); print('BDE_REFERENCE_NOOP_READY',flush=True); import sys; assert sys.stdin.readline() == 'WRITE_NOOP\\n'"
        status, log = self.child(code, lambda _: calls.append('authorize'))
        self.assertEqual(status, 0); self.assertEqual(calls, ['authorize']); self.assertIn(b'Log File: local', log)

    def test_parent_rejection_never_sends_fixed_writer_command(self):
        def refuse(_): raise ValueError('original mismatch')
        code = "print('BDE_REFERENCE_NOOP_READY',flush=True); import sys; print('INPUT:'+sys.stdin.readline(),flush=True)"
        with self.assertRaisesRegex(ValueError, 'original mismatch'): self.child(code, refuse)

    def test_preparation_timeout_never_requests_writer_authorization(self):
        calls = []
        with self.assertRaisesRegex(TimeoutError, 'no writer authorized'):
            self.child('import time; time.sleep(10)', lambda _: calls.append('authorize'), timeout=0.1)
        self.assertEqual(calls, [])

    def test_unknown_after_authorization_is_never_retried(self):
        calls = []
        code = "print('BDE_REFERENCE_NOOP_READY',flush=True); import sys,time; sys.stdin.readline(); time.sleep(10)"
        with self.assertRaises(subprocess.TimeoutExpired):
            self.child(code, lambda _: calls.append('authorize'), timeout=0.2)
        self.assertEqual(calls, ['authorize'])


class NoopEvidenceTests(unittest.TestCase):
    DOMAIN = dict(process_epoch='pid/epoch', database='isolated', oid=OID)

    def native(self):
        before = snapshot()
        actual = dict(profile='finite_reference_leaf_noop_result_v1', before=deepcopy(before), after=deepcopy(before),
            owner_key=OWNER, outcome=dict(returned_class='CTSpaceCheckingIFil', is_ct_error=False),
            owner_source_backend_preserved=True, raw_readback_equal=True, persistent_leaf_write_calls=1,
            model_setters_called=0, store_called=False, commit_called=False, flush_called=False, durable_inverse_verified=False)
        return dict(passed=True, complete_reply_received=True, write_dispatched=True, component_oid=OID,
            process_epoch='pid/epoch', database='isolated', dirty_before=0, dirty_after=0, before=before, actual=actual)

    def test_full_noop_observation_does_not_grant_inverse(self):
        value = self.native(); result = verify_native(value, self.DOMAIN, 'Trial')
        self.assertIs(result['inverse_authorized'], False)

    def test_tail_change_cannot_pass_as_noop(self):
        value = self.native(); value['actual']['after']['reciprocal_records'][0]['allocated_bytes'][-1] ^= 1
        with self.assertRaisesRegex(ValueError, 'changed'): verify_native(value, self.DOMAIN, 'Trial')

    def test_unknown_wrong_epoch_wrong_owner_or_writer_error_is_not_success(self):
        for mutate in (lambda v: v.update(complete_reply_received=False), lambda v: v.update(process_epoch='stale'),
                       lambda v: v['actual'].update(owner_key=[0]*20), lambda v: v['actual']['outcome'].update(is_ct_error=True)):
            value = self.native(); mutate(value)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): verify_native(value, self.DOMAIN, 'Trial')


if __name__ == '__main__': unittest.main()
