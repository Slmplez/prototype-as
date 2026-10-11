import copy
from contextlib import nullcontext
import json
from pathlib import Path
import tempfile
import unittest

from bd_edit_journal import EditJournal, JournalError


class LocalAdapter:
    def __init__(self):
        self.fields = {'literal': '0.0', 'position': [80, 93], 'size': [40, 14]}
        self.reads = 0
        self.writes = 0
        self.fail_after_write = False
        self.unrelated = 'keep'

    def observe(self, domain, target):
        self.reads += 1
        return {'domain': domain, 'target': target, 'kind': 'BlockDiagramLiteral', 'fields': self.fields}

    def apply_literal(self, domain, target, value):
        self.writes += 1
        self.fields['literal'] = value
        self.fields['position'] = [40, 93] if len(value) > 10 else [80, 93]
        self.fields['size'] = [120, 14] if len(value) > 10 else [40, 14]
        if self.fail_after_write:
            raise TimeoutError('reply lost after mutation')
        return {'completed': True}


class EditJournalTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.journal = EditJournal(Path(self.temp.name) / 'edits')
        self.adapter = LocalAdapter()
        self.request = {'domain': {'session': 'test', 'database': 'AEB_1', 'oid': 'sandbox', 'process_epoch': '1/now'},
                        'request_id': 'req-1', 'target': 'Main/n3', 'expect': {'literal': '0.0'},
                        'value': '123456789012345.125'}

    def execute(self, request=None):
        return self.journal.execute_literal(request or self.request, self.adapter, nullcontext)

    def test_real_local_side_effect_patch_replay_and_offline_diff(self):
        result = self.execute()
        self.assertEqual(result['status'], 'verified_local')
        self.assertEqual({d['field'] for d in result['differences']}, {'literal', 'position', 'size'})
        self.assertEqual((self.adapter.reads, self.adapter.writes), (2, 1))
        self.assertEqual(self.execute(), result)
        self.journal.diff(result['change_id'])
        self.assertEqual((self.adapter.reads, self.adapter.writes), (2, 1))
        altered = copy.deepcopy(self.request)
        altered['value'] = '5'
        with self.assertRaises(JournalError) as caught:
            self.execute(altered)
        self.assertEqual(caught.exception.code, 'REQUEST_ID_CONFLICT')

    def test_stale_precondition_never_calls_setter(self):
        self.adapter.fields['literal'] = 'external'
        self.assertEqual(self.execute()['status'], 'conflict')
        self.assertEqual(self.adapter.writes, 0)

    def test_reply_lost_after_write_never_retries(self):
        self.adapter.fail_after_write = True
        result = self.execute()
        self.assertEqual(result['status'], 'outcome_unknown')
        self.adapter.fail_after_write = False
        self.assertEqual(self.execute()['status'], 'outcome_unknown')
        self.assertEqual(self.adapter.writes, 1)

    def test_disk_failure_before_started_blocks_write(self):
        original = self.journal._append
        def fail(path, events, kind, payload):
            if kind == 'started':
                raise OSError('disk full')
            original(path, events, kind, payload)
        self.journal._append = fail
        with self.assertRaises(OSError):
            self.execute()
        self.assertEqual(self.adapter.writes, 0)
        self.journal._append = original
        self.assertEqual(self.execute()['status'], 'interrupted_before_apply')

    def test_disk_failure_after_mutation_blocks_replay(self):
        original = self.journal._append
        def fail(path, events, kind, payload):
            if kind in ('observed', 'finished'):
                raise OSError('disk full')
            original(path, events, kind, payload)
        self.journal._append = fail
        result = self.execute()
        self.assertEqual(result['status'], 'outcome_unknown')
        self.journal._append = original
        self.assertEqual(self.execute()['status'], 'outcome_unknown')
        self.assertEqual(self.adapter.writes, 1)

    def test_revert_guards_layout_and_preserves_unrelated_state(self):
        result = self.execute()
        inverse = self.journal.prepare_literal_revert(result['change_id'], 'inverse')
        self.adapter.fields['position'] = [500, 500]
        self.assertEqual(self.execute(inverse)['status'], 'conflict')
        self.adapter.fields['position'] = [40, 93]
        inverse['request_id'] = 'inverse-2'
        self.adapter.unrelated = 'external update'
        self.assertEqual(self.execute(inverse)['status'], 'verified_local')
        self.assertEqual(self.adapter.fields, {'literal': '0.0', 'position': [80, 93], 'size': [40, 14]})
        self.assertEqual(self.adapter.unrelated, 'external update')

    def test_corrupt_journal_never_replays_native_write(self):
        result = self.execute()
        path = self.journal.root / result['change_id'] / '000000.json'
        record = json.loads(path.read_text(encoding='utf-8'))
        record['payload']['value'] = 'tampered'
        path.write_text(json.dumps(record), encoding='utf-8')
        with self.assertRaises(JournalError) as caught:
            self.execute()
        self.assertEqual(caught.exception.code, 'JOURNAL_CORRUPT')
        self.assertEqual(self.adapter.writes, 1)

    def test_inverse_text_success_with_wrong_geometry_is_not_success(self):
        result = self.execute()
        inverse = self.journal.prepare_literal_revert(result['change_id'], 'inverse')
        original = self.adapter.apply_literal
        def wrong_geometry(domain, target, value):
            reply = original(domain, target, value)
            self.adapter.fields['size'] = [999, 999]
            return reply
        self.adapter.apply_literal = wrong_geometry
        self.assertEqual(self.execute(inverse)['status'], 'needs_recovery')


if __name__ == '__main__':
    unittest.main()
