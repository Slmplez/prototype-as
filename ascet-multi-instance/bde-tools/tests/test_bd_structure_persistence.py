"""Faults at durable structural event boundaries; native setter is a fixture."""
from contextlib import nullcontext
from pathlib import Path
import tempfile
import unittest
from bd_edit_journal import fingerprint
from bd_structure_journal import StructureJournal
from test_bd_structure_journal import Adapter


class StructurePersistenceTests(unittest.TestCase):
    def test_prewrite_persistence_failure_discards_prepared_without_setter(self):
        for failed in ('prepared','started'):
            with self.subTest(failed=failed),tempfile.TemporaryDirectory() as directory:
                log=StructureJournal(Path(directory));adapter=Adapter();discarded=[]
                adapter.discard_prepared=lambda domain,token:discarded.append(token) or {'released':True}
                request={'domain':{'session':'s','database':'db','oid':'o','process_epoch':'e'},'request_id':'r',
                    'component':'BDE_Tool_Experiments\\Trial_test','diagram':'Main','operation':'set_transition_priority',
                    'arguments':[['t1'],'t1',2],'expect':fingerprint(adapter.state)}
                append=log._append
                def fail(path,events,kind,payload):
                    if kind==failed:raise OSError('Injected prewrite disk full')
                    return append(path,events,kind,payload)
                log._append=fail
                result=log.execute(request,adapter,nullcontext)
                self.assertEqual(result['status'],'rejected')
                self.assertFalse(result['setter_called'])
                self.assertEqual(discarded,[result['change_id']])
                self.assertEqual(adapter.calls,0)
                self.assertEqual(log.execute(request,adapter,nullcontext),result)

    def test_after_write_disk_failure_returns_unknown_and_never_replays(self):
        for failed in ({'observed','finished'},{'finished'}):
            with self.subTest(failed=failed),tempfile.TemporaryDirectory() as directory:
                log=StructureJournal(Path(directory));adapter=Adapter()
                request={'domain':{'session':'s','database':'db','oid':'o','process_epoch':'e'},'request_id':'r',
                    'component':'BDE_Tool_Experiments\\Trial_test','diagram':'Main','operation':'set_transition_priority',
                    'arguments':[['t1'],'t1',2],'expect':fingerprint(adapter.state)}
                append=log._append
                def fail(path,events,kind,payload):
                    if kind in failed:raise OSError('Injected disk full')
                    append(path,events,kind,payload)
                log._append=fail
                result=log.execute(request,adapter,nullcontext)
                self.assertEqual(result['status'],'outcome_unknown')
                self.assertFalse(result['automatic_retry'])
                log._append=append
                self.assertEqual(log.execute(request,adapter,nullcontext)['status'],'outcome_unknown')
                self.assertEqual(adapter.calls,1)


if __name__=='__main__':unittest.main()
