from contextlib import nullcontext
import unittest

from bd_edit_journal import JournalError
from bd_group_recovery import reconcile
import test_bd_group_journal as fixtures


class GroupRecoveryTests(unittest.TestCase):
    setUp = fixtures.GroupJournalTests.setUp
    factory = fixtures.GroupJournalTests.factory
    execute = fixtures.GroupJournalTests.execute
    def resolve(self, token, apply):
        events = self.local.read(token)
        request = events[0]['payload']
        adapter = self.adapters[int(request['domain']['oid'])]
        after = adapter.retained[token]['after']
        if apply:
            self.local._append(self.local._path(token),events,'observed',{'after':after})
            self.local._append(self.local._path(token),events,'finished',{'status':'applied_observed'})
        return {'model_setters_called':0,'native_state':'applied','reconciled':apply}

    def test_unknown_second_step_reconciles_partial_without_dispatching_third(self):
        self.adapters[1].fail_apply=True
        unknown=self.execute()
        inspected=reconcile(self.log,unknown['change_id'],'test',self.resolve)
        self.assertEqual(inspected['unresolved_steps'],[1])
        self.assertEqual(self.log.receipt(unknown['change_id'],self.log.read(unknown['change_id']))['status'],'outcome_unknown')
        confirmed=reconcile(self.log,unknown['change_id'],'test',self.resolve,True)
        self.assertEqual(confirmed['receipt']['status'],'partial')
        self.assertEqual(len(confirmed['receipt']['steps']),2)
        self.assertTrue(confirmed['reconciled'])
        self.assertFalse(confirmed['continued_steps'])
        self.assertEqual([adapter.calls for adapter in self.adapters],[['apply'],['apply'],[]])
        self.assertEqual(self.execute(),confirmed['receipt'])
        inverse=self.log.revert(unknown['change_id'],'inverse','test',self.factory,nullcontext)
        self.assertEqual(inverse['status'],'reverted')
        self.assertEqual([adapter.state['entries'][0]['literal'] for adapter in self.adapters],['1']*3)

    def test_missing_group_finish_uses_durable_local_completion_without_native(self):
        from unittest.mock import patch
        original=self.log._append
        def append(path,events,kind,payload):
            if kind=='step_finished' and payload['index']==1:raise OSError('group disk failure')
            return original(path,events,kind,payload)
        with patch.object(self.log,'_append',append):unknown=self.execute()
        def forbidden(*args):self.fail('confirmed local outcome must not call native recovery')
        confirmed=reconcile(self.log,unknown['change_id'],'test',forbidden,True)
        self.assertEqual(confirmed['receipt']['status'],'partial')
        self.assertEqual(len(confirmed['receipt']['steps']),2)
        self.assertEqual(confirmed['receipt']['unknown_steps'],[])

    def test_other_session_and_native_unresolved_never_clear_group_unknown(self):
        self.adapters[1].fail_apply=True
        unknown=self.execute()
        with self.assertRaises(JournalError):reconcile(self.log,unknown['change_id'],'other',self.resolve,True)
        def unresolved(*args):raise JournalError('RECOVERY_UNRESOLVED','native still started')
        result=reconcile(self.log,unknown['change_id'],'test',unresolved,True)
        self.assertEqual(result['unresolved_steps'],[1])
        self.assertEqual(result['receipt']['status'],'outcome_unknown')
        self.assertFalse(result['reconciled'])

    def test_completed_reconciliation_repeats_offline(self):
        complete=self.execute()
        def forbidden(*args):self.fail('completed group must not call native recovery')
        repeated=reconcile(self.log,complete['change_id'],'test',forbidden,True)
        self.assertEqual(repeated['receipt'],complete)
        self.assertEqual([adapter.calls for adapter in self.adapters],[['apply']]*3)

    def test_started_without_local_intent_stays_unknown(self):
        from unittest.mock import patch
        with patch.object(self.local,'execute',side_effect=OSError('local intent disk failure')):
            unknown=self.execute()
        def forbidden(*args):self.fail('missing local intent cannot query or replay a setter')
        result=reconcile(self.log,unknown['change_id'],'test',forbidden,True)
        self.assertEqual(result['unresolved_steps'],[0])
        self.assertEqual(result['receipt']['status'],'outcome_unknown')
        self.assertEqual([adapter.calls for adapter in self.adapters],[[],[],[]])


if __name__=='__main__':unittest.main()
