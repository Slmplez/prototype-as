"""Actual C# quarantine and retained-source guards, exercised without Cebra."""
from copy import deepcopy
import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile
import unittest


class NativeClassJournalTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        cls.root = Path(__file__).resolve().parents[1]
        cls.build = tempfile.TemporaryDirectory()
        cls.addClassCleanup(cls.build.cleanup)
        cls.binary = Path(cls.build.name) / 'journal.exe'
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        process = subprocess.run([str(compiler), '/nologo', '/r:System.Web.Extensions.dll', f'/out:{cls.binary}',
            str(cls.root / 'scripts/AscetClassStudyJournal.cs'), str(cls.root / 'scripts/AscetClassStudyJournalTest.cs')],
            capture_output=True, text=True, timeout=30)
        if process.returncode:
            raise AssertionError(process.stdout + process.stderr)

    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.directory = Path(self.temp.name)
        self.pending = self.directory / 'pending.json'
        self.journal = self.directory / 'journal'
        self.domain = {'session': 'study', 'database': 'isolated', 'oid': 'definition', 'process_epoch': 'epoch'}

    def marker(self, token='retained', domain=None):
        value = {'native_token': token, 'domain': self.domain if domain is None else domain}
        self.pending.write_text(json.dumps(value), encoding='utf-8')
        return value

    def invoke(self, **options):
        source = self.directory / 'input.json'
        source.write_text(json.dumps({'mode': 'pending', 'root': str(self.journal), 'pending': str(self.pending),
                                     'domain': self.domain, **options}), encoding='utf-8')
        process = subprocess.run([str(self.binary), str(source)], capture_output=True, text=True, timeout=15)
        self.assertEqual(process.returncode, 0, process.stderr)
        return json.loads(process.stdout)

    def test_foreign_pending_refuses_before_started_and_setter(self):
        marker = self.marker()
        result = self.invoke()
        self.assertEqual((result['status'], result['setters']), ('rejected', 0))
        self.assertEqual(len(list(self.journal.glob('*.json'))), 1)
        self.assertEqual(json.loads(self.pending.read_text()), marker)

    def test_missing_continuation_marker_refuses_without_dispatch(self):
        result = self.invoke(continuation='retained')
        self.assertEqual((result['status'], result['setters']), ('rejected', 0))
        self.assertIn('quarantine is missing', result['error'])

    def test_wrong_continuation_refuses_without_dispatch(self):
        self.marker()
        result = self.invoke(continuation='foreign')
        self.assertEqual((result['status'], result['setters']), ('rejected', 0))

    def test_continuation_domain_mismatch_refuses_without_dispatch(self):
        self.marker(domain={**self.domain, 'oid': 'foreign'})
        result = self.invoke(continuation='retained')
        self.assertEqual((result['status'], result['setters']), ('rejected', 0))

    def test_continuation_accepts_same_domain_with_different_key_order(self):
        marker = self.marker(domain=dict(reversed(list(self.domain.items()))))
        result = self.invoke(continuation='retained', second=True)
        self.assertEqual((result['status'], result['setters']), ('ok', 2))
        self.assertEqual(json.loads(self.pending.read_text()), marker)

    def test_new_dispatch_owns_marker_for_subsequent_steps(self):
        result = self.invoke(second=True)
        self.assertEqual((result['status'], result['setters']), ('ok', 2))
        self.assertEqual(json.loads(self.pending.read_text())['native_token'], str(self.journal))

    def test_public_anonymous_objects_compare_structurally_after_json_storage(self):
        expected = {'count': 1, 'nodes': [{'native': {'id': 7, 'native_class': 'SGObject'}, 'id': 1}]}
        result = self.invoke(mode='canonical', expected=expected)
        self.assertEqual(result['status'], 'ok')
        self.assertTrue(result['matches'])
        expected['nodes'][0]['native']['id'] = 8
        self.assertFalse(self.invoke(mode='canonical', expected=expected)['matches'])

    def test_marker_replaced_between_steps_stops_next_setter(self):
        self.marker()
        result = self.invoke(continuation='retained', second=True,
                             replace_after_first={'native_token': 'foreign', 'domain': self.domain})
        self.assertEqual((result['status'], result['setters']), ('rejected', 1))
        self.assertEqual(len(list(self.journal.glob('*.json'))), 3)

    def test_marker_removed_between_steps_stops_next_setter(self):
        result = self.invoke(second=True, delete_after_first=True)
        self.assertEqual((result['status'], result['setters']), ('rejected', 1))

    def test_recovery_head_is_published_before_dispatch_and_keeps_original_token(self):
        self.marker()
        result = self.invoke(continuation='retained', attach_current_head=True, second=True)
        self.assertEqual((result['status'], result['setters']), ('ok', 2))
        marker = json.loads(self.pending.read_text())
        intent = json.loads((self.journal / '000000.json').read_text())
        self.assertEqual(marker['native_token'], 'retained')
        self.assertEqual(marker['current_recovery_head'], {'journal': str(self.journal), 'intent_checksum': intent['checksum']})

    def test_existing_recovery_head_cannot_be_omitted(self):
        marker = self.marker()
        marker['current_recovery_head'] = {'journal': 'previous', 'intent_checksum': 'sealed'}
        self.pending.write_text(json.dumps(marker), encoding='utf-8')
        result = self.invoke(continuation='retained', attach_current_head=True)
        self.assertEqual((result['status'], result['setters']), ('rejected', 0))
        self.assertEqual(json.loads(self.pending.read_text()), marker)

    def test_matching_recovery_head_can_continue_and_replace_only_head(self):
        marker = self.marker()
        head = {'journal': 'previous', 'intent_checksum': 'sealed'}
        marker['current_recovery_head'] = head
        self.pending.write_text(json.dumps(marker), encoding='utf-8')
        result = self.invoke(continuation='retained', attach_current_head=True, expected_head=head)
        self.assertEqual((result['status'], result['setters']), ('ok', 1))
        self.assertEqual(json.loads(self.pending.read_text())['current_recovery_head']['journal'], str(self.journal))

    def test_recovery_head_removed_between_dispatches_stops_next_setter(self):
        marker = self.marker()
        result = self.invoke(continuation='retained', attach_current_head=True, second=True, replace_after_first=marker)
        self.assertEqual((result['status'], result['setters']), ('rejected', 1))
        self.assertIn('head changed', result['error'])

    def test_targeted_completion_loss_keeps_real_completed_setter_unconfirmed(self):
        result = self.invoke(fault_event='step_completed', fault_command='apply')
        self.assertEqual((result['status'], result['setters']), ('rejected', 1))
        self.assertEqual(len(list(self.journal.glob('*.json'))), 2)

    def test_targeted_before_native_keeps_zero_setter_started(self):
        result = self.invoke(fault_event='before_native', fault_command='apply')
        self.assertEqual((result['status'], result['setters']), ('rejected', 0))
        self.assertEqual(len(list(self.journal.glob('*.json'))), 2)

    def test_fault_for_other_owner_does_not_interrupt_this_owner(self):
        result = self.invoke(fault_event='step_completed', fault_command='apply', fault_owner='other')
        self.assertEqual((result['status'], result['setters']), ('ok', 1))

    def test_fault_for_exact_owner_keeps_completion_unconfirmed(self):
        result = self.invoke(fault_event='step_completed', fault_command='apply', fault_owner='oid')
        self.assertEqual((result['status'], result['setters']), ('rejected', 1))

    def retained_sample(self):
        source = self.root / 'analysis/bde-experiments/2026-10-02/bde-class-split-middle-02/apply-0.json'
        value = json.loads(source.read_text(encoding='utf-8'))
        value['journal'] = str((self.root / value['journal']).resolve())
        return value

    def test_native_retained_loader_binds_original_durable_observations(self):
        value = self.retained_sample()
        source = self.directory / 'study.json'
        source.write_text(json.dumps(value), encoding='utf-8')
        result = self.invoke(mode='retained', study=str(source))
        self.assertEqual(result['status'], 'ok', result)
        self.assertEqual(result['setters'], 0)
        self.assertEqual(result['origin']['journal'], value['journal'])

    def test_tampered_raw_baseline_or_selector_cannot_restore(self):
        original = self.retained_sample()
        for key in ('baseline', 'selector', 'owner', 'identity'):
            value = deepcopy(original)
            if key == 'baseline':
                value['before']['signature']['path'] += '_foreign'
            elif key == 'selector':
                value['selector']['formal_alias'] += '_foreign'
            elif key == 'owner':
                value['owner_scopes_before_0'] = {}
            else:
                value['database_session'] = 'foreign'
            source = self.directory / 'study.json'
            source.write_text(json.dumps(value), encoding='utf-8')
            result = self.invoke(mode='retained', study=str(source))
            with self.subTest(key=key):
                self.assertEqual((result['status'], result['setters']), ('rejected', 0), result)

    def creation_protocol(self):
        # Synthetic protocol adaptation checks the loader, never creation effects.
        from bd_class_study_journal import read_events
        study = self.retained_sample()
        source = Path(study['journal'])
        study['operation'] = 'closed_create_argument'
        study['selector'] = {'diagram': 'Main', 'method_alias': study['selector']['method_alias'], 'name': 'Fresh', 'model_type': 'cont'}
        events = read_events(source)
        retained = self.directory / 'creation.wal'
        retained.mkdir()
        previous, sequence = None, 0
        for row in events:
            payload = deepcopy(row['payload'])
            if row['kind'] in ('step_started', 'step_completed') and payload['step'].startswith('prune_'):
                continue
            if row['kind'] == 'intent':
                payload['operation'], payload['selector'] = study['operation'], study['selector']
            elif row['kind'] == 'step_started' and payload['step'] == 'signature_apply':
                payload['command'] = 'create_argument'
            body = json.dumps(payload, separators=(',', ':'))
            checksum = hashlib.sha256('\n'.join((str(sequence), row['kind'], row['utc'], previous or '', body)).encode('utf-8')).hexdigest()
            envelope = {'sequence': sequence, 'kind': row['kind'], 'utc': row['utc'], 'previous': previous,
                'payload_json': body, 'checksum': checksum}
            (retained / f'{sequence:06d}.json').write_text(json.dumps(envelope), encoding='utf-8')
            previous, sequence = checksum, sequence + 1
        study['journal'] = str(retained)
        path = self.directory / 'creation.json'
        path.write_text(json.dumps(study), encoding='utf-8')
        return path

    def test_native_creation_loader_accepts_signature_then_owner_store_protocol(self):
        result = self.invoke(mode='retained', study=str(self.creation_protocol()))
        self.assertEqual(result['status'], 'ok', result)
        self.assertEqual(result['setters'], 0)

    def test_creation_loader_refuses_deletion_command_with_valid_checksums(self):
        path = self.creation_protocol()
        study = json.loads(path.read_text(encoding='utf-8'))
        files = sorted(Path(study['journal']).glob('*.json'))
        previous = None
        for file in files:
            row = json.loads(file.read_text(encoding='utf-8'))
            body = json.loads(row['payload_json'])
            if row['kind'] == 'step_started' and body['step'] == 'signature_apply':
                body['command'] = 'delete_argument'
            row['payload_json'] = json.dumps(body, separators=(',', ':'))
            row['previous'] = previous
            row['checksum'] = hashlib.sha256('\n'.join((str(row['sequence']), row['kind'], row['utc'], previous or '', row['payload_json'])).encode('utf-8')).hexdigest()
            file.write_text(json.dumps(row), encoding='utf-8')
            previous = row['checksum']
        result = self.invoke(mode='retained', study=str(path))
        self.assertEqual((result['status'], result['setters']), ('rejected', 0), result)


if __name__ == '__main__':
    unittest.main()
