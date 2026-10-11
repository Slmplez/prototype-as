"""Offline fault controls for durable capture intent; these never call ASCET."""
from contextlib import nullcontext
from copy import deepcopy
import json
import os
from pathlib import Path
import tempfile
import unittest
from unittest.mock import Mock, patch

import bd_commit_attempt as capture
import bd_instance_pending as pending
import bd_recovery as recovery
import bd_service as service
from bd_edit_journal import JournalError, fingerprint
from bd_sandbox_edit import binding
from bd_structure_journal import StructureJournal
from test_bd_commit_resources import TOKEN, OID, receipt
from test_bd_structure_journal import Adapter


def attempt(*, material=False, prepared=False, token=TOKEN):
    proof = receipt() if prepared else None
    if proof is not None:
        proof.update(native_token=token, resource_token='commit_' + token[5:])
    return dict(profile=capture.ATTEMPT_PROFILE, action='attempt', native_token=token,
        resource_token='commit_' + token[5:], component_oid=OID, generation=7 if material else None,
        prepared_edit_present=prepared, resource_material_present=material, same_original_binding=material,
        material_phase='captured' if material else None, prepared_receipt=proof,
        reference_baseline_phase=None, reference_profile_index=None, original_material_held=material,
        model_setters_called=0, store_called=False, commit_called=False,
        write_authorized=False, inverse_authorized=False, full_commit_resource_closure=False)


class AttemptContractTests(unittest.TestCase):
    def setUp(self):
        self.requested = capture.capture_request(TOKEN, 'native_commit_prepare_v1')

    def check(self, value, requested=None):
        return capture.validate_attempt(value, requested=requested or self.requested, component_oid=OID)

    def test_absent_material_is_current_absence_not_execution_proof(self):
        for edit_present in (False, True):
            value = attempt(); value['prepared_edit_present'] = edit_present
            result = capture.summary(self.check(value), self.requested)
            self.assertEqual(result['preparation_confirmation'], 'unconfirmed')
            self.assertFalse(result['automatic_retry'])
            self.assertFalse(result['current_absence_proves_not_executed'])

    def test_partial_material_preserves_phase_without_fabricated_receipt(self):
        for phase in ('capturing', 'read-error', 'captured'):
            value = attempt(material=True); value['material_phase'] = phase
            self.assertEqual(self.check(value), value)
            self.assertIsNone(value['prepared_receipt'])

    def test_complete_native_receipt_still_does_not_reconcile_wal(self):
        value = attempt(material=True, prepared=True)
        result = capture.summary(self.check(value), self.requested)
        self.assertTrue(result['native_prepared_receipt_present'])
        self.assertEqual(result['preparation_confirmation'], 'unconfirmed')
        self.assertNotIn('prepared_receipt', result)

    def test_request_exact_keys_tokens_and_profiles(self):
        for profile in capture.RECEIPT_PROFILES:
            self.assertEqual(capture.capture_request(TOKEN, profile)['receipt_profile'], profile)
        for key in self.requested:
            value = deepcopy(self.requested); del value[key]
            with self.subTest(missing=key), self.assertRaises(ValueError): capture.validate_request(value, token=TOKEN)
        for key, bad in (('profile', 'v2'), ('native_token', 'edit_'+'b'*64),
                         ('resource_token', 'commit_'+'b'*64), ('receipt_profile', []), ('receipt_profile', 'native_commit_prepare_v7')):
            value = deepcopy(self.requested); value[key] = bad
            with self.subTest(key=key), self.assertRaises(ValueError): capture.validate_request(value, token=TOKEN)
        with self.assertRaises(ValueError): capture.validate_request(self.requested, token=True)

    def test_attempt_schema_exact_and_original_binding_required(self):
        for key in attempt():
            value = attempt(); del value[key]
            with self.subTest(missing=key), self.assertRaises(ValueError): self.check(value)
        for key, bad in (('extra', 1), ('native_token', 'edit_'+'b'*64), ('component_oid', 'foreign'),
                         ('resource_token', 'commit_'+'b'*64), ('action', 'prepare'), ('profile', 'v2')):
            value = attempt(); value[key] = bad
            with self.subTest(key=key), self.assertRaises(ValueError): self.check(value)

    def test_absent_material_cannot_supply_fields_or_claim_binding(self):
        for key, bad in (('same_original_binding', True), ('original_material_held', True),
                         ('generation', 7), ('material_phase', 'captured'), ('prepared_receipt', receipt()),
                         ('reference_baseline_phase', 'profiling'), ('reference_profile_index', 1)):
            value = attempt(); value[key] = bad
            with self.subTest(key=key), self.assertRaises(ValueError): self.check(value)

    def test_material_requires_identity_and_strict_generation(self):
        for key, bad in (('same_original_binding', False), ('original_material_held', False),
                         ('generation', True), ('generation', 0), ('generation', 7.0),
                         ('generation', 2147483648), ('material_phase', 'failed_unknown')):
            value = attempt(material=True); value[key] = bad
            with self.subTest(key=key, bad=bad), self.assertRaises(ValueError): self.check(value)

    def test_presence_fields_are_boolean_not_counts(self):
        for key in ('prepared_edit_present', 'resource_material_present', 'same_original_binding', 'original_material_held'):
            for bad in (0, 1, None):
                value = attempt(); value[key] = bad
                with self.subTest(key=key, bad=bad), self.assertRaises(ValueError): self.check(value)

    def test_authority_flags_false_and_zero_setters_not_bool(self):
        for key in ('store_called', 'commit_called', 'write_authorized', 'inverse_authorized', 'full_commit_resource_closure'):
            for bad in (True, 0, None):
                value = attempt(); value[key] = bad
                with self.subTest(key=key, bad=bad), self.assertRaises(ValueError): self.check(value)
        for bad in (True, False, 0.0, 1, -1):
            value = attempt(); value['model_setters_called'] = bad
            with self.subTest(setters=bad), self.assertRaises(ValueError): self.check(value)

    def test_native_receipt_cannot_change_requested_profile_generation_or_phase(self):
        value = attempt(material=True, prepared=True)
        for field, bad in (('generation', 8), ('material_phase', 'read-error')):
            changed = deepcopy(value); changed[field] = bad
            with self.subTest(field=field), self.assertRaises(ValueError): self.check(changed)
        with self.assertRaises(ValueError):
            self.check(value, capture.capture_request(TOKEN, 'native_commit_prepare_v5'))

    def test_baseline_partial_attempt_keeps_fixed_profile_index_and_phase(self):
        requested = capture.capture_request(TOKEN, 'native_commit_prepare_v5')
        for phase, index in (('profiling', None), ('failed', None), ('failed', 9), ('scanning', 9), ('captured', 9)):
            value = attempt(material=True); value.update(reference_baseline_phase=phase, reference_profile_index=index)
            self.check(value, requested)
            with self.assertRaises(ValueError): self.check(value)
        for phase, index in ((None, 9), ('scanning', None), ('captured', None), ('bad', 9),
                             ('failed', True), ('failed', 0), ('failed', 17), ('failed', 9.0)):
            value = attempt(material=True); value.update(reference_baseline_phase=phase, reference_profile_index=index)
            with self.subTest(phase=phase, index=index), self.assertRaises(ValueError): self.check(value, requested)

    def test_v5_receipt_binds_original_baseline_index(self):
        from test_bd_commit_reference_baseline import receipt as v5_receipt
        value = attempt(material=True, prepared=True)
        value.update(prepared_receipt=v5_receipt(), reference_baseline_phase='captured', reference_profile_index=9)
        requested = capture.capture_request(TOKEN, 'native_commit_prepare_v5')
        self.check(value, requested)
        value['reference_profile_index'] = 8
        with self.assertRaises(ValueError): self.check(value, requested)


class CaptureAdapter(Adapter):
    commit_resource_capture_capable = True
    commit_resource_receipt_profile = 'native_commit_prepare_v1'

    def __init__(self, log):
        super().__init__(); self.log = log
        self.prepare_calls = 0; self.discard_calls = 0; self.before_prepare = None
        self.failure = None

    def prepare(self, domain, token, operation, arguments):
        self.prepare_calls += 1
        self.before_prepare = self.log.read(token)
        if self.failure == 'lost': raise TimeoutError('Lost reply after capture')
        result = super().prepare(domain, token, operation, arguments)
        self.commit_resources_prepared = receipt()
        self.commit_resources_prepared.update(native_token=token, resource_token='commit_'+token[5:], component_oid=domain['oid'])
        if self.failure == 'different': result['generation'] += 1
        if self.failure == 'receipt': self.commit_resources_prepared = None
        return result

    def discard_prepared(self, domain, token):
        self.discard_calls += 1; return {'discarded': True}


class CaptureWALTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory(); self.addCleanup(self.temp.cleanup)
        self.log = StructureJournal(Path(self.temp.name))
        self.adapter = CaptureAdapter(self.log)
        self.request = dict(domain=dict(session='s', database='db', oid=OID, process_epoch='epoch'),
            request_id='capture', component='BDE_Tool_Experiments\\Trial_test', diagram='Main',
            operation='set_transition_priority', arguments=[['t1'], 't1', 2], expect=fingerprint(self.adapter.state))
        self.token = 'edit_' + fingerprint(dict(domain=self.request['domain'], request_id='capture'))

    def execute(self): return self.log.execute(self.request, self.adapter, nullcontext)

    def test_request_durable_before_native_prepare_and_complete_scope_saved(self):
        result = self.execute()
        self.assertEqual([e['kind'] for e in self.adapter.before_prepare], ['intent', 'commit_capture_requested'])
        self.assertEqual(self.adapter.before_prepare[-1]['payload'], capture.capture_request(self.token, 'native_commit_prepare_v1'))
        self.assertEqual(result['commit_capture']['status'], 'prepared')
        self.assertEqual(result['commit_capture']['receipt_profile'], 'native_commit_prepare_v1')
        self.assertFalse(result['commit_capture']['automatic_retry'])

    def test_request_append_failure_prevents_prepare(self):
        original = self.log._append
        def write(path, events, kind, payload):
            if kind == 'commit_capture_requested': raise OSError('disk full before capture intent')
            return original(path, events, kind, payload)
        with patch.object(self.log, '_append', side_effect=write): result = self.execute()
        self.assertEqual(result['status'], 'rejected')
        self.assertEqual(self.adapter.prepare_calls, 0); self.assertEqual(self.adapter.calls, 0)
        self.assertEqual(self.adapter.discard_calls, 0)

    def test_lost_prepare_reply_is_unconfirmed_and_never_replayed(self):
        self.adapter.failure = 'lost'; result = self.execute()
        self.assertEqual(result['commit_capture']['status'], 'unconfirmed')
        self.assertFalse(result['automatic_retry'])
        self.assertEqual(self.execute(), result)
        self.assertEqual(self.adapter.prepare_calls, 1); self.assertEqual(self.adapter.calls, 0)
        self.assertEqual(self.adapter.discard_calls, 0)

    def test_post_return_validation_failure_preserves_native_material(self):
        for failure in ('different', 'receipt'):
            with self.subTest(failure=failure):
                self.request['request_id'] = failure; self.adapter.failure = failure
                result = self.execute()
                self.assertEqual(result['commit_capture']['status'], 'unconfirmed')
                self.assertEqual(self.adapter.calls, 0); self.assertEqual(self.adapter.discard_calls, 0)

    def test_prepared_wal_append_failure_preserves_native_material(self):
        original = self.log._append
        def write(path, events, kind, payload):
            if kind == 'prepared': raise OSError('disk full saving receipt')
            return original(path, events, kind, payload)
        with patch.object(self.log, '_append', side_effect=write): result = self.execute()
        self.assertEqual(result['commit_capture']['status'], 'unconfirmed')
        self.assertEqual(self.adapter.discard_calls, 0); self.assertEqual(self.adapter.calls, 0)

    def test_resource_request_rejects_scope_downgrade_before_apply(self):
        self.adapter.commit_resource_receipt_profile = 'native_commit_prepare_v5'
        result = self.execute()
        self.assertEqual(result['commit_capture']['receipt_profile'], 'native_commit_prepare_v5')
        self.assertEqual(result['commit_capture']['status'], 'unconfirmed')
        self.assertEqual(self.adapter.calls, 0); self.assertEqual(self.adapter.discard_calls, 0)

    def test_bad_requested_profile_prevents_native_prepare(self):
        self.adapter.commit_resource_receipt_profile = 'unknown'
        result = self.execute()
        self.assertEqual(result['status'], 'rejected'); self.assertEqual(self.adapter.prepare_calls, 0)

    def test_existing_request_only_prevents_resend(self):
        path = self.log._path(self.token); path.mkdir(); events = []
        self.log._append(path, events, 'intent', self.request)
        self.log._append(path, events, 'commit_capture_requested', capture.capture_request(self.token, 'native_commit_prepare_v1'))
        with patch.object(self.adapter, 'observe', side_effect=AssertionError('must not observe on replay')):
            result = self.execute()
        self.assertEqual(result['commit_capture']['status'], 'unconfirmed')
        self.assertEqual(self.adapter.prepare_calls, 0); self.assertEqual(self.adapter.calls, 0)

    def test_request_order_duplicates_and_prepared_downgrade_are_corrupt(self):
        self.execute(); events = self.log.read(self.token)
        changed = deepcopy(events); changed.insert(2, deepcopy(changed[1]))
        with self.assertRaises(JournalError): self.log.receipt(self.token, changed)
        changed = deepcopy(events); changed[1], changed[2] = changed[2], changed[1]
        with self.assertRaises(JournalError): self.log.receipt(self.token, changed)
        changed = deepcopy(events); changed[1]['payload']['receipt_profile'] = 'native_commit_prepare_v5'
        with self.assertRaises(JournalError): self.log.receipt(self.token, changed)
        changed = deepcopy(events); del changed[2]['payload']['commit_resources_prepared']
        with self.assertRaises(JournalError): self.log.receipt(self.token, changed)

    def test_started_without_complete_prepare_is_corrupt(self):
        self.adapter.failure = 'lost'; self.execute(); events = self.log.read(self.token)
        events.append(dict(kind='started', payload={}))
        with self.assertRaises(JournalError): self.log.receipt(self.token, events)

    def test_legacy_adapter_does_not_create_capture_request(self):
        self.adapter = Adapter(); result = self.execute()
        self.assertNotIn('commit_capture', result)
        self.assertFalse(any(e['kind']=='commit_capture_requested' for e in self.log.read(self.token)))


class AttemptRecoveryTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory(); self.addCleanup(self.temp.cleanup)
        for change in (patch.object(service, 'STORE', Path(self.temp.name)/'store'),
                       patch.object(service, 'live_lock', nullcontext),
                       patch.dict(os.environ, {'LOCALAPPDATA': self.temp.name})):
            change.start(); self.addCleanup(change.stop)
        service.STORE.mkdir()
        self.request = dict(domain=dict(session='s', database='db', oid=OID, process_epoch='epoch'),
            request_id='attempt', component='BDE_Tool_Experiments\\Trial_test', diagram='Main',
            operation='set_literal', arguments=[['n1'], 'n1', '2'], expect=fingerprint({}))
        self.token = 'edit_'+fingerprint(dict(domain=self.request['domain'], request_id='attempt'))
        self.requested = capture.capture_request(self.token, 'native_commit_prepare_v1')
        self.log = StructureJournal(service.STORE/'edits'); self.path = self.log._path(self.token)
        self.path.mkdir(); self.events = []
        self.log._append(self.path, self.events, 'intent', self.request)
        self.log._append(self.path, self.events, 'commit_capture_requested', self.requested)
        binding(self.request, self.request['component'], 's_'+'1'*32)

    def invoke(self, **args):
        return service.handle('bd_inspect', dict(query='recovery', change_id=self.token, **args), 's')

    def test_query_only_original_attempt_keeps_pending_and_complete_receipt_unconfirmed(self):
        marker = pending.begin(self.request['domain'], 'prepare', self.token)
        value = attempt(material=True, prepared=True, token=self.token)
        with patch.object(recovery, 'NativeStructureAdapter') as constructor:
            adapter = constructor.return_value.__enter__.return_value
            adapter._exchange.return_value = value
            reply = self.invoke(); result = json.loads(reply['content'].split('\n\n', 1)[1])
            self.assertEqual(result, capture.summary(value, self.requested))
            adapter._ensure_open.assert_called_once_with(self.request['domain'])
            adapter._exchange.assert_called_once_with(dict(cmd='commit_resources', action='attempt', token=self.token))
            for name in ('prepare', 'apply', 'revert', 'release', 'discard_prepared', 'commit_resource_status'):
                getattr(adapter, name).assert_not_called()
        self.assertTrue(marker.exists())
        events = self.log.read(self.token)
        self.assertEqual([e['kind'] for e in events], ['intent', 'commit_capture_requested', 'commit_capture_attempt_observed'])
        self.assertEqual(events[-1]['payload'], value)
        self.assertEqual(self.log.receipt(self.token, events)['commit_capture']['status'], 'unconfirmed')

    def test_absent_attempt_does_not_clear_pending_or_authorize_retry(self):
        marker = pending.begin(self.request['domain'], 'prepare', self.token)
        with patch.object(recovery, 'NativeStructureAdapter') as constructor:
            constructor.return_value.__enter__.return_value._exchange.return_value = attempt(token=self.token)
            result = json.loads(self.invoke()['content'].split('\n\n', 1)[1])
        self.assertFalse(result['current_absence_proves_not_executed']); self.assertFalse(result['automatic_retry'])
        self.assertTrue(marker.exists())

    def test_reconcile_refused_before_opening_native_or_changing_wal(self):
        with patch.object(recovery, 'NativeStructureAdapter') as constructor:
            with self.assertRaises(service.ToolError) as caught: self.invoke(reconcile=True)
            self.assertEqual(caught.exception.code, 'RECOVERY_UNRESOLVED'); constructor.assert_not_called()
        self.assertEqual(self.log.read(self.token), self.events)

    def test_malformed_attempt_not_saved_or_routed_to_ordinary_recovery(self):
        value = attempt(token=self.token); value['inverse_authorized'] = True
        with patch.object(recovery, 'NativeStructureAdapter') as constructor:
            adapter = constructor.return_value.__enter__.return_value; adapter._exchange.return_value = value
            with self.assertRaises(service.ToolError) as caught: self.invoke()
            self.assertEqual(caught.exception.code, 'RECOVERY_UNRESOLVED')
            adapter.inspect.assert_not_called(); adapter.prepare.assert_not_called()
        self.assertEqual(self.log.read(self.token), self.events)

    def test_query_wal_failure_never_releases_or_replays(self):
        with patch.object(recovery, 'NativeStructureAdapter') as constructor:
            adapter = constructor.return_value.__enter__.return_value; adapter._exchange.return_value = attempt(token=self.token)
            with patch.object(StructureJournal, '_append', side_effect=OSError('disk full')):
                with self.assertRaises(OSError): self.invoke()
            adapter.prepare.assert_not_called(); adapter.release.assert_not_called(); adapter.discard_prepared.assert_not_called()
        self.assertEqual(self.log.read(self.token), self.events)

    def test_offline_diff_retains_every_attempt_and_original_event_identity(self):
        for value in (attempt(token=self.token), attempt(material=True, token=self.token)):
            self.log._append(self.path, self.events, 'commit_capture_attempt_observed', value)
        with patch.object(recovery, 'NativeStructureAdapter', side_effect=AssertionError('unexpected native access')):
            result = self.log.diff(self.token)
        self.assertEqual(result['observations'], [])
        self.assertEqual(result['commit_capture']['status'], 'unconfirmed')
        for row, event in zip(result['commit_capture_attempts'], self.events[-2:]):
            self.assertEqual(row['status'], event['payload'])
            self.assertEqual(row['event_sha256'], event['checksum']); self.assertEqual(row['as_of_utc'], event['utc'])
            self.assertFalse(row['model_edit_claimed']); self.assertFalse(row['is_fresh_live_observation'])

    def test_attempt_without_original_request_is_corrupt(self):
        events = [self.events[0], dict(kind='commit_capture_attempt_observed', payload=attempt(token=self.token))]
        with self.assertRaises(JournalError): self.log.receipt(self.token, events)

    def test_durable_corrupt_attempt_cannot_be_projected(self):
        value = attempt(token=self.token); value['generation'] = True
        self.log._append(self.path, self.events, 'commit_capture_attempt_observed', value)
        with self.assertRaises(JournalError): self.log.diff(self.token)


if __name__ == '__main__': unittest.main()
