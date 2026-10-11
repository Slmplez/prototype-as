"""Transport failure quarantine contract; not native fault injection."""
import os
import tempfile
import unittest
from unittest.mock import patch
from bd_edit_journal import JournalError, NativePreconditionConflict
from bd_native_structure import NativeStructureAdapter
import bd_instance_pending as pending


class PendingMutationTests(unittest.TestCase):
    def setUp(self):
        self.temp=tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        env=patch.dict(os.environ,{'LOCALAPPDATA':self.temp.name})
        env.start();self.addCleanup(env.stop)
        self.domain={'session':'test','database':'db','oid':'o','process_epoch':'epoch'}
        self.adapter=NativeStructureAdapter('BDE_Tool_Experiments\\Trial_test')
        self.adapter.domain=self.domain

    def test_lost_reply_blocks_other_store_and_request_without_resending(self):
        with patch.object(self.adapter,'_exchange',side_effect=TimeoutError('lost reply')) as exchange:
            with self.assertRaises(TimeoutError):self.adapter.apply('edit_'+'a'*64)
            with patch.dict(os.environ,{'ASCET_BD_STORE':'another-store'}):
                other=NativeStructureAdapter(self.adapter.component)
                with self.assertRaises(JournalError) as error:other.prepare(self.domain,'another','create_block',[])
                self.assertEqual(error.exception.code,'INSTANCE_OUTCOME_UNKNOWN')
            self.assertEqual(exchange.call_count,1)
        self.assertTrue(pending.pending_path(self.domain).exists())
        pending.check({**self.domain,'process_epoch':'new-epoch'})

    def test_confirmed_reply_and_typed_no_mutation_conflict_clear_marker(self):
        with patch.object(self.adapter,'_exchange',return_value={'entries':[]}):
            self.adapter.apply('edit_'+'b'*64)
        self.assertFalse(pending.pending_path(self.domain).exists())
        with patch.object(self.adapter,'_exchange',side_effect=NativePreconditionConflict('changed')):
            with self.assertRaises(NativePreconditionConflict):self.adapter.apply('edit_'+'c'*64)
        self.assertFalse(pending.pending_path(self.domain).exists())


if __name__=='__main__':unittest.main()
