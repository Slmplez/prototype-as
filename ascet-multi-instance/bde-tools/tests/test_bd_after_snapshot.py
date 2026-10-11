"""Journal observation publication and scope contracts; no live ASCET claims."""
import tempfile
import unittest
from pathlib import Path
from unittest.mock import patch
import bd_service as service
from bd_edit_journal import fingerprint
from bd_structure_journal import StructureJournal
from bd_structural_tools import publish_after, plan


class AfterSnapshotTests(unittest.TestCase):
    def test_actual_after_is_reusable_stable_and_never_fills_unobserved_rows(self):
        with tempfile.TemporaryDirectory() as folder, patch.object(service, 'STORE', Path(folder)):
            log = StructureJournal(Path(folder)/'edits')
            change = 'edit_' + 'a'*64
            path = log._path(change)
            path.mkdir()
            events = []
            after = {'generation': 4, 'diagram': 'Main', 'diagram_kind': 'block_diagram',
                     'entries': [{'kind': 'node', 'ref': 'n1', 'pins': [], 'literal': '7'}], 'targets': ['n1']}
            log._append(path, events, 'observed', {'after': after})
            domain = {'session':'s','database':'db','oid':'o','process_epoch':'epoch'}
            receipt = {'change_id':change,'status':'applied_observed'}
            first = publish_after(log, receipt, domain, 'BDE_Tool_Experiments\\Trial_test')
            self.assertEqual(first, publish_after(log, receipt, domain, 'BDE_Tool_Experiments\\Trial_test'))
            stored = service.load_record(first['after_snapshot'],'s_','snapshots')
            self.assertEqual(stored['structure'], after)
            self.assertEqual(stored['scope']['targets'], ['n1'])
            self.assertEqual(first['additional_ASCET_reads'], 0)
            self.assertEqual(service.recording_receipt(stored)['status'], 'edit_observation')
            with self.assertRaises(service.ToolError) as raised:
                plan(stored, {'op':'create_block','kind':'literal','name':'3','position':[200,200]})
            self.assertEqual(raised.exception.code, 'READ_INCOMPLETE')

    def test_unknown_without_observation_does_not_invent_snapshot(self):
        with tempfile.TemporaryDirectory() as folder:
            log = StructureJournal(Path(folder))
            change = 'edit_' + 'b'*64
            path = log._path(change)
            path.mkdir()
            log._append(path, [], 'started', {})
            receipt = {'change_id':change,'status':'outcome_unknown'}
            self.assertEqual(publish_after(log, receipt, {}, ''), receipt)

    def test_child_after_uses_qualified_refs_without_reading_the_model(self):
        with tempfile.TemporaryDirectory() as folder, patch.object(service, 'STORE', Path(folder)):
            log = StructureJournal(Path(folder)/'edits')
            change = 'edit_' + 'c'*64
            path = log._path(change)
            path.mkdir()
            after = {'generation': 1, 'diagram': 'Main/h12/h5', 'diagram_kind': 'block_diagram',
                'entries': [{'ref':'p4','kind':'pin','owner':'n4'}], 'targets':['p4'], 'boundary_context':[]}
            events = []
            source = {'operation':'disconnect_data','component':'BDE_Tool_Experiments\\Trial_test','diagram':after['diagram']}
            log._append(path, events, 'intent', source)
            log._append(path, events, 'observed', {'after':after})
            log._append(path, events, 'finished', {'status':'applied_observed','differences':[{'ref':'e1','before':{},'after':None}]})
            receipt = publish_after(log, log.receipt(change, events),
                {'session':'s','database':'db','oid':'o','process_epoch':'epoch'}, source['component'])
            record = service.load_record(receipt['after_snapshot'], 's_', 'snapshots')
            self.assertEqual(record['scope']['diagram'], after['diagram'])
            self.assertEqual(service.entities(record)['Main/h12/h5/p4']['fields'], after['entries'][0])
            self.assertEqual(log.diff(change)['differences'][0]['qualified_ref'], 'Main/h12/h5/e1')
            self.assertEqual(receipt['additional_ASCET_reads'], 0)


if __name__ == '__main__':
    unittest.main()
