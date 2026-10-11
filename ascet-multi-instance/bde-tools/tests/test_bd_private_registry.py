"""Offline descriptor/continuation guards; no live failure claims."""
from copy import deepcopy
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch, Mock

from bd_private_registry import descriptor, validate_descriptor, PrivateWal, audit_registry
from bd_class_study_journal import read_events
from bd_private_step_journal import audit_events
from test_bd_private_step_journal import recorded


class PrivateRegistryTests(unittest.TestCase):
    def setUp(self):
        self.events = deepcopy(recorded())
        intent = self.events[0][1]
        self.binding = descriptor(intent['domain'], intent['token'], {'fixed.st': '1' * 64})

    def test_checksumming_and_exact_identity(self):
        self.assertEqual(validate_descriptor(self.binding, self.binding), self.binding)
        for key in self.binding['domain']:
            changed = {**self.binding['domain'], key: self.binding['domain'][key] + 'changed'}
            with self.subTest(key=key), self.assertRaises(ValueError):
                validate_descriptor(descriptor(changed, self.binding['token'], self.binding['source_manifest']), self.binding)

    def test_manifest_cannot_rebind(self):
        changed = descriptor(self.binding['domain'], self.binding['token'], {'fixed.st': '2' * 64})
        with self.assertRaises(ValueError):
            validate_descriptor(changed, self.binding)

    def test_source_drift_refuses_before_any_bridge_launch(self):
        from bde_private_host_exit_experiment import PrivateBridge
        with patch.object(PrivateBridge, '_ensure_open') as launch:
            with self.assertRaisesRegex(ValueError, 'source differs'):
                PrivateBridge(self.binding, {})
            launch.assert_not_called()

    def test_signal_reader_retries_filesystem_observation_without_native_replay(self):
        from bde_private_host_exit_experiment import PrivateBridge
        bridge = object.__new__(PrivateBridge)
        bridge.binding = self.binding
        bridge.commands = []
        bridge.process = Mock(pid=123)
        bridge.process.poll.return_value = None
        bridge.process.wait.return_value = -1
        bridge.responses = Mock()
        signal = Mock()
        signal.resolve.return_value = Path('E:/temporary-completion.json')
        signal.read_text.side_effect = [PermissionError('publishing'), json.JSONDecodeError('partial', '', 0),
            json.dumps({'host_pid': 123, 'token': self.binding['token'], 'action': 'recover', 'index': 1})]
        with patch('bde_private_host_exit_experiment.time.sleep'):
            result = bridge.terminate_after_native('recover', 1, signal)
        self.assertEqual(result['host_pid'], 123)
        self.assertEqual(bridge.commands, ['wire'])
        bridge.process.stdin.write.assert_called_once()
        bridge.process.stdin.flush.assert_called_once()
        bridge.process.kill.assert_called_once()
        bridge.responses.get.assert_not_called()
        self.assertFalse(bridge.native_request_pending)

    def test_foreign_completion_leaves_request_unresolved_without_replay_or_kill(self):
        from bde_private_host_exit_experiment import PrivateBridge
        bridge = object.__new__(PrivateBridge)
        bridge.binding = self.binding
        bridge.commands = []
        bridge.process = Mock(pid=123)
        bridge.process.poll.return_value = None
        bridge.responses = Mock()
        signal = Mock()
        signal.resolve.return_value = Path('E:/temporary-completion.json')
        signal.read_text.return_value = json.dumps({'host_pid': 456, 'token': self.binding['token'], 'action': 'recover', 'index': 1})
        with self.assertRaisesRegex(ValueError, 'identity differs'):
            bridge.terminate_after_native('recover', 1, signal)
        bridge.process.stdin.write.assert_called_once()
        bridge.process.kill.assert_not_called()
        bridge.responses.get.assert_not_called()
        self.assertTrue(bridge.native_request_pending)

    def test_corrupt_descriptor(self):
        for field in ('token', 'source_sha256', 'integrity_sha256', 'native_archive_available', 'production_write_authorized'):
            changed = deepcopy(self.binding)
            changed[field] = True if field.endswith(('available', 'authorized')) else '0' * 64
            with self.subTest(field=field), self.assertRaises(ValueError):
                validate_descriptor(changed)

    def test_private_wal_reopen_keeps_chain(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory) / 'wal'
            wal = PrivateWal(root, self.binding, self.events[0][1])
            wal.append('registry_bound', {'descriptor': self.binding})
            wal = PrivateWal(root, self.binding)
            wal.append('example', {'value': 1})
            self.assertEqual(len(list(root.glob('*.json'))), 3)

    def test_corrupt_or_terminal_wal_cannot_reopen(self):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory) / 'wal'
            wal = PrivateWal(root, self.binding, self.events[0][1])
            wal.append('registry_bound', {'descriptor': self.binding})
            source = root / '000001.json'
            row = json.loads(source.read_text())
            row['payload_json'] = '{}'
            source.write_text(json.dumps(row))
            with self.assertRaises(Exception):
                PrivateWal(root, self.binding)
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory) / 'wal'
            wal = PrivateWal(root, self.binding, self.events[0][1])
            wal.append('registry_bound', {'descriptor': self.binding})
            wal.append('finished', {'status': 'recovered'})
            with self.assertRaises(ValueError):
                PrivateWal(root, self.binding)
            with self.assertRaises(ValueError):
                wal.append('example', {})

    def test_recorded_host_event_math_is_not_online_evidence(self):
        converted = [(('host_terminated', {'host_pid': 123, 'exit_code': 1, 'transport_failure': True,
                       'setter_replayed': False}) if kind == 'application_receipt_discarded' else (kind, body))
                     for kind, body in self.events]
        receipt = audit_events(converted)
        self.assertEqual(receipt['host_terminations'], 2)
        self.assertEqual(receipt['application_receipts_discarded'], 0)
        self.assertEqual(receipt['readonly_reconciliations'], 2)

    def test_host_exit_without_observation_refuses(self):
        index = next(i for i, (kind, _) in enumerate(self.events) if kind == 'application_receipt_discarded')
        self.events[index] = ('host_terminated', {'host_pid': 123, 'exit_code': 1,
                              'transport_failure': True, 'setter_replayed': False})
        with self.assertRaises(ValueError):
            audit_events(self.events[:index + 1])

    def test_host_exit_without_active_intent_refuses(self):
        self.events.insert(2, ('host_terminated', {'host_pid': 123, 'exit_code': 1,
                            'transport_failure': True, 'setter_replayed': False}))
        with self.assertRaises(ValueError):
            audit_events(self.events)


class RecordedRegistryAuditTests(unittest.TestCase):
    def setUp(self):
        root = Path(__file__).resolve().parents[1] / 'analysis/bde-experiments/2026-10-03/bde-private-host-exit-04'
        self.path = next(root.glob('round-0/*/position-0/session.json'))
        self.binding = json.loads(self.path.read_text(encoding='utf-8'))
        self.events = [(row['kind'], row['payload']) for row in read_events(self.path.parent / 'wal')]

    def check_events(self, events):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory) / 'wal'
            wal = PrivateWal(root, self.binding, events[0][1])
            for kind, body in events[1:]:
                wal.append(kind, body)
            return audit_registry(root, self.binding)

    def mutate(self, kind, change):
        events = deepcopy(self.events)
        body = next(body for event, body in events if event == kind)
        change(body)
        with self.assertRaises((ValueError, KeyError, TypeError)):
            self.check_events(events)

    def test_recorded_direct_continuation(self):
        receipt = audit_registry(self.path.parent / 'wal', self.binding)
        self.assertEqual(receipt['host_terminations'], 2)
        self.assertTrue(receipt['registry_released'])
        self.assertEqual(receipt['application_receipts_discarded'], 0)

    def test_lookup_cannot_prepare_replacement(self):
        self.mutate('registry_lookup', lambda body: body.update(commands=['open', 'prepare']))

    def test_lookup_cannot_replace_reference_numbers(self):
        self.mutate('registry_lookup', lambda body: body['export']['current'][0].update(ref=99999))

    def test_lookup_cannot_omit_original_material(self):
        self.mutate('registry_lookup', lambda body: body['export']['original'].pop())

    def test_lookup_cannot_change_source_or_epoch(self):
        for field in ('process_epoch', 'database_session', 'oid'):
            with self.subTest(field=field):
                def change(body):
                    domain = {**body['descriptor']['domain'], field: 'changed'}
                    body['descriptor'] = descriptor(domain, self.binding['token'], self.binding['source_manifest'])
                self.mutate('registry_lookup', change)

    def test_same_dead_host_is_not_a_reconnect(self):
        pid = next(body['host_pid'] for kind, body in self.events if kind == 'host_terminated')
        self.mutate('registry_lookup', lambda body: body.update(host_pid=pid))

    def test_refusal_cannot_lie_about_current(self):
        def change(body):
            body['before']['token'] = body['after']['token'] = '0' * 32
        self.mutate('registry_refused', change)

    def test_release_cannot_drop_unrestored_material(self):
        self.mutate('registry_released', lambda body: body['reply'].update(current_matches=False))

    def test_registry_size_must_decrease_exactly_one(self):
        self.mutate('registry_released', lambda body: body.update(size_after=body['size_before']))

    def test_registry_release_is_required(self):
        events = [(kind, body) for kind, body in self.events if kind != 'registry_released']
        with self.assertRaises(ValueError):
            self.check_events(events)

    def test_successful_host_exit_is_not_termination(self):
        self.mutate('host_terminated', lambda body: body.update(exit_code=0))


if __name__ == '__main__':
    unittest.main()
