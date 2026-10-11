"""Offline v5 wiring controls; synthesized v5 is never native before evidence.

The immutable real v4 audit is copied, then supplied an explicitly synthetic v5
baseline summary. Mocks isolate adapters and recovery from ASCET. WAL tests use
temporary local stores and preserve the original prepared receipt.
"""
from contextlib import nullcontext
from copy import deepcopy
import hashlib
import json
import os
from pathlib import Path
import tempfile
import unittest
from unittest.mock import Mock, patch

from bd_commit_control_audit import recompute_controls
from bd_commit_model_diff import recompute
from bd_commit_model_images import validate_audit
from bd_commit_reciprocal_current import recompute as recompute_reciprocal
from bd_commit_resources import summary
from bd_edit_journal import JournalError, NativePreconditionConflict, fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_sandbox_edit import binding
from bd_structure_journal import StructureJournal
import bd_recovery as recovery
import bd_service as service
import test_bd_commit_control_integration as controls
import test_bd_commit_model_diff as models
import test_bd_commit_reciprocal as reciprocal
import test_bd_commit_reciprocal_integration as reciprocal_integration
import test_bd_commit_reciprocal_current as current
import test_bd_commit_reference_baseline as baseline_fixtures
import test_bd_commit_resources as resources


ROOT = Path(__file__).resolve().parents[1]


def environment():
    return dict(reciprocal_integration.environment(), ASCET_BD_COMMIT_REFERENCE_BASELINE='reference_file_v1')


class BaselineAdapterIntegrationTests(unittest.TestCase):
    def adapter(self, env=None, diagram='Main'):
        value = NativeStructureAdapter('BDE_Tool_Experiments/Trial_Control', diagram,
                                       environment=environment() if env is None else env)
        value.domain = {'oid': resources.OID}
        value._exchange = Mock(side_effect=AssertionError('Offline adapter test cannot call native'))
        return value

    def test_v5_selection_retains_full_receipt_without_authorizing_apply(self):
        adapter = self.adapter()
        value = baseline_fixtures.receipt()
        observation = {'nodes': [], 'edges': [], 'targets': []}
        self.assertEqual(adapter.commit_resource_receipt_profile, 'native_commit_prepare_v5')
        self.assertEqual(adapter._preparation(dict(preparation=observation, commit_resources=value), resources.TOKEN), observation)
        self.assertEqual(adapter.commit_resources_prepared, value)
        self.assertFalse(adapter.commit_resources_prepared['reference_file_baseline']['complete_before_authorized'])
        with self.assertRaises(NativePreconditionConflict): adapter.apply(resources.TOKEN)
        adapter._exchange.assert_not_called()

    def test_v5_requires_entire_environment_chain_and_main_staged_executor(self):
        for field in environment():
            for replacement in (None, 'unknown', True):
                if field == 'ASCET_BD_COMMIT_REFERENCE_BASELINE' and replacement is None:
                    continue  # An explicit opt-out is independently tested as v4.
                env = environment()
                if replacement is None: del env[field]
                else: env[field] = replacement
                with self.subTest(field=field, replacement=replacement), self.assertRaises(ValueError):
                    self.adapter(env)
        with self.assertRaises(ValueError): self.adapter(diagram='Main/h1')

    def test_expected_v5_rejects_every_clean_old_receipt_before_accepting_preparation(self):
        old = [resources.receipt(), models.original()['prepared_receipt'],
               controls.receipt(), reciprocal.receipt_fixture()]
        for prepared in old:
            adapter = self.adapter()
            with self.subTest(profile=prepared['profile']), self.assertRaisesRegex(ValueError, 'coverage differs'):
                adapter._preparation(dict(preparation={}, commit_resources=prepared), resources.TOKEN)
            self.assertIsNone(adapter.commit_resources_prepared)
            adapter._exchange.assert_not_called()

    def test_opt_out_preserves_v4_and_refuses_unsolicited_v5_scope(self):
        env = environment(); del env['ASCET_BD_COMMIT_REFERENCE_BASELINE']
        adapter = self.adapter(env)
        self.assertEqual(adapter.commit_resource_receipt_profile, 'native_commit_prepare_v4')
        with self.assertRaisesRegex(ValueError, 'coverage differs'):
            adapter._preparation(dict(preparation={}, commit_resources=baseline_fixtures.receipt()), resources.TOKEN)
        self.assertIsNone(adapter.commit_resources_prepared)
        adapter._exchange.assert_not_called()

    def test_v5_requires_valid_baseline_before_storing_prepared_proof(self):
        for mutate in (lambda p: p.pop('reference_file_baseline'),
                       lambda p: p['reference_file_baseline'].update(generation=8),
                       lambda p: p['reference_file_baseline'].update(write_authorized=True)):
            adapter = self.adapter(); prepared = baseline_fixtures.receipt(); mutate(prepared)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError):
                adapter._preparation(dict(preparation={}, commit_resources=prepared), resources.TOKEN)
            self.assertIsNone(adapter.commit_resources_prepared)
            adapter._exchange.assert_not_called()

    def test_current_adapter_returns_checked_v5_without_promoting_file_current_scope(self):
        adapter = self.adapter()
        adapter._ensure_open = Mock()
        expected = baseline_fixtures.status_fixture(True, True)
        adapter._exchange = Mock(return_value=expected)
        result = adapter.commit_resource_status(adapter.domain, resources.TOKEN, check=True)
        self.assertEqual(result, expected)
        self.assertIs(result['current_reference_file_checked'], False)
        self.assertIs(result['current_reciprocal_records_checked'], True)
        adapter._exchange.assert_called_once_with(dict(cmd='commit_resources', action='check', token=resources.TOKEN))


class BaselineInheritedAuditTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        raw = (ROOT / current.CURRENT_PATH).read_bytes()
        if hashlib.sha256(raw).hexdigest() != current.CURRENT_SHA256:
            raise AssertionError('Sealed real v4 current audit changed')
        cls.saved = json.loads(raw)

    def value(self):
        value = deepcopy(self.saved)
        proof = baseline_fixtures.baseline()
        proof.update(native_token=value['native_token'], component_oid=value['component_oid'], generation=value['generation'])
        value['prepared_receipt'].update(profile='native_commit_prepare_v5', reference_file_baseline=proof)
        value.update(reference_file_baseline=deepcopy(proof), current_reference_file_checked=False)
        return value

    def test_synthetic_v5_inherits_all_real_original_resource_model_control_and_reciprocal_delta(self):
        value = self.value(); original = deepcopy(value)
        self.assertEqual(validate_audit(value)['objects'], 396)
        index = value['registered_model_checks'][-1]['resource_check_index']
        self.assertEqual(recompute_controls(value, index), [])
        reciprocal_changes = recompute_reciprocal(value, index)
        self.assertEqual(len(reciprocal_changes), 9)
        actual = recompute(value)
        self.assertEqual(actual, self.saved['last_actual_changes'])
        self.assertEqual(len(actual), 21)
        self.assertEqual(value, original)
        self.assertEqual(self.saved['prepared_receipt']['profile'], 'native_commit_prepare_v4')
        self.assertNotIn('reference_file_baseline', self.saved['prepared_receipt'])

    def test_v5_still_rejects_missing_original_and_current_inherited_evidence(self):
        for field in ('original_capture', 'registered_model_original_image', 'registered_model_checks',
                      'ctree_control_original_image', 'ctree_control_after_capture', 'ctree_control_checks',
                      'original_reciprocal_capture', 'reciprocal_checks'):
            value = self.value(); del value[field]
            with self.subTest(field=field), self.assertRaises((ValueError, KeyError)):
                recompute(value)

    def test_v5_original_namespace_and_reference_outgoing_binding_remain_strict(self):
        for mutate in (lambda v: v['prepared_receipt']['reference_file_baseline'].update(generation=True),
                       lambda v: v['original_reciprocal_capture']['outgoing_record']['allocated_bytes'].__setitem__(-1, 255),
                       lambda v: v['original_capture']['owner_key'].__setitem__(0, 255)):
            value = self.value(); mutate(value)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): recompute(value)

    def test_v5_cannot_lose_delta_rows_or_pair_current_to_a_different_resource_check(self):
        for mutate in (lambda v: v['last_actual_changes'].pop(),
                       lambda v: v['registered_model_checks'][-1].update(resource_check_index=True),
                       lambda v: v['ctree_control_checks'][-1].update(resource_check_index=1),
                       lambda v: v['reciprocal_checks'][-1].update(resource_check_index=1)):
            value = self.value(); mutate(value)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): recompute(value)

    def test_v5_cannot_hide_current_reciprocal_partial_failure_by_downgrading_scope(self):
        value = self.value()
        value['reciprocal_checks'] = [value['reciprocal_checks'][0]]
        value['current_reciprocal_records_checked'] = False
        with self.assertRaises(ValueError): recompute(value)

    def test_v5_audit_requires_prepared_baseline_and_explicit_unchecked_file_scope(self):
        mutations = [lambda v: v.pop('reference_file_baseline'),
                     lambda v: v.pop('current_reference_file_checked'),
                     lambda v: v.update(current_reference_file_checked=True),
                     lambda v: v.update(current_reference_file_checked=0),
                     lambda v: v['prepared_receipt'].pop('reference_file_baseline')]
        for mutate in mutations:
            value = self.value(); mutate(value)
            with self.subTest(mutate=mutate), self.assertRaises((ValueError, KeyError)):
                recompute(value)

    def test_v5_audit_summary_cannot_replace_or_authorize_prepared_baseline(self):
        for mutate in (lambda v: v['reference_file_baseline'].update(profile_index=10),
                       lambda v: v['reference_file_baseline'].update(complete_before_authorized=True),
                       lambda v: v['reference_file_baseline'].update(unknown_terminal_count=0),
                       lambda v: v['prepared_receipt']['reference_file_baseline'].update(write_authorized=True)):
            value = self.value(); mutate(value)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): recompute(value)


class BaselineWalIntegrationTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory(); self.addCleanup(self.temp.cleanup)
        for change in (patch.object(service, 'STORE', Path(self.temp.name) / 'store'),
                       patch.object(service, 'live_lock', nullcontext),
                       patch.dict(os.environ, {'LOCALAPPDATA': self.temp.name})):
            change.start(); self.addCleanup(change.stop)
        service.STORE.mkdir()
        self.request = dict(domain=dict(session='s', database='db', oid=resources.OID, process_epoch='offline_epoch'),
            request_id='prepared', component='BDE_Tool_Experiments\\Trial_offline', diagram='Main',
            operation='set_literal', arguments=[['n1'], 'n1', '2'], expect=fingerprint({}))
        self.token = 'edit_' + fingerprint(dict(domain=self.request['domain'], request_id='prepared'))
        self.status = baseline_fixtures.status_fixture(True, True)
        for value in (self.status, self.status['prepared_receipt']):
            value.update(native_token=self.token, resource_token='commit_' + self.token[5:])
            value['reference_file_baseline']['native_token'] = self.token
        self.log = StructureJournal(service.STORE / 'edits'); self.path = self.log._path(self.token)
        self.path.mkdir(); self.events = []
        for kind, value in [('intent', self.request),
                            ('prepared', dict(before={}, commit_resources_prepared=self.status['prepared_receipt'])),
                            ('started', {}), ('finished', dict(status='conflict', setter_called=False))]:
            self.log._append(self.path, self.events, kind, value)
        binding(self.request, self.request['component'], 's_' + '1' * 32)

    def test_mocked_recovery_query_keeps_exact_prepared_v5_and_full_status_in_wal(self):
        original = self.log.read(self.token)
        with patch.object(recovery, 'NativeStructureAdapter') as constructor:
            adapter = constructor.return_value.__enter__.return_value
            adapter.commit_resource_status.return_value = self.status
            reply = service.handle('bd_inspect', dict(query='recovery', change_id=self.token), 's')
            result = json.loads(reply['content'].split('\n\n', 1)[1])
            self.assertEqual(result, summary(self.status))
            adapter.apply.assert_not_called(); adapter.revert.assert_not_called(); adapter.release.assert_not_called()
        events = self.log.read(self.token)
        self.assertEqual(events[:-1], original)
        self.assertEqual(events[-1]['kind'], 'commit_resource_checked')
        self.assertEqual(events[-1]['payload'], self.status)
        self.assertEqual(events[1]['payload']['commit_resources_prepared'], self.status['prepared_receipt'])

    def test_offline_diff_and_history_keep_baseline_and_never_claim_full_file_recheck(self):
        self.log._append(self.path, self.events, 'commit_resource_checked', self.status)
        with patch.object(recovery, 'NativeStructureAdapter', side_effect=AssertionError('No native history access')):
            diff = self.log.diff(self.token)
            history = service.handle('bd_inspect', dict(query='edits'), 's')
        row = diff['commit_resource_checks'][0]
        self.assertEqual(row['status'], self.status)
        self.assertEqual(row['event_sha256'], self.events[-1]['checksum'])
        self.assertIs(row['model_edit_claimed'], False)
        rows = [json.loads(line) for line in history['content'].split('\n\n', 1)[1].splitlines()]
        entry = next(item for item in rows if item.get('change_id') == self.token)
        compact = entry['commit_resource_check']['summary']
        self.assertEqual(compact['reference_file_baseline'], self.status['reference_file_baseline'])
        self.assertIs(compact['current_reference_file_checked'], False)
        self.assertIs(compact['current_reciprocal_records_checked'], True)

    def test_changed_baseline_cannot_be_appended_as_a_check_of_original_preparation(self):
        value = deepcopy(self.status)
        for row in (value, value['prepared_receipt']): row['reference_file_baseline']['profile_index'] += 1
        with patch.object(recovery, 'NativeStructureAdapter') as constructor:
            constructor.return_value.__enter__.return_value.commit_resource_status.return_value = value
            with self.assertRaises(service.ToolError):
                service.handle('bd_inspect', dict(query='recovery', change_id=self.token), 's')
        self.assertEqual(self.log.read(self.token), self.events)

    def test_offline_wal_cannot_drop_baseline_or_upgrade_current_file_authority(self):
        for mutate in (lambda v: v.pop('reference_file_baseline'),
                       lambda v: v.update(current_reference_file_checked=True),
                       lambda v: v['reference_file_baseline'].update(complete_before_authorized=True)):
            value = deepcopy(self.status); mutate(value)
            event = dict(kind='commit_resource_checked', payload=value, checksum='offline-event', utc='offline')
            with self.subTest(mutate=mutate), patch.object(StructureJournal, 'read', return_value=self.events + [event]):
                with self.assertRaises(JournalError): self.log.diff(self.token)


if __name__ == '__main__':
    unittest.main()
