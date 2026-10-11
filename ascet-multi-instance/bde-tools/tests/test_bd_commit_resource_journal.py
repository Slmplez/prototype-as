"""WAL integrity and offline/live-query boundaries for captured resource checks."""
from contextlib import nullcontext
from copy import deepcopy
import json
import os
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import bd_service as service
import bd_recovery as recovery
import bd_instance_pending as pending
from bd_commit_resources import summary
from bd_edit_journal import fingerprint,JournalError
from bd_sandbox_edit import binding
from bd_structure_journal import StructureJournal
from test_bd_commit_resources import status_receipt


class CommitResourceJournalTests(unittest.TestCase):
    def setUp(self):
        self.temp=tempfile.TemporaryDirectory();self.addCleanup(self.temp.cleanup)
        for change in (patch.object(service,'STORE',Path(self.temp.name)/'store'),
                       patch.object(service,'live_lock',nullcontext),
                       patch.dict(os.environ,{'LOCALAPPDATA':self.temp.name})):
            change.start();self.addCleanup(change.stop)
        service.STORE.mkdir()
        self.request=dict(domain=dict(session='s',database='db',oid='fixture_oid',process_epoch='epoch'),
            request_id='prepared',component='BDE_Tool_Experiments\\Trial_test',diagram='Main',
            operation='set_literal',arguments=[['n1'],'n1','2'],expect=fingerprint({}))
        self.token='edit_'+fingerprint(dict(domain=self.request['domain'],request_id='prepared'))
        self.status=status_receipt(True)
        for row in (self.status,self.status['prepared_receipt']):
            row.update(native_token=self.token,resource_token='commit_'+self.token[5:])
        self.log=StructureJournal(service.STORE/'edits');self.path=self.log._path(self.token)
        self.path.mkdir();self.events=[]
        for kind,value in [('intent',self.request),('prepared',dict(before={},commit_resources_prepared=self.status['prepared_receipt'])),
                           ('started',{}),('finished',dict(status='conflict',setter_called=False))]:
            self.log._append(self.path,self.events,kind,value)
        binding(self.request,self.request['component'],'s_'+'1'*32)

    def invoke(self,**args):
        return service.handle('bd_inspect',dict(query='recovery',change_id=self.token,**args),'s')

    def test_fresh_query_saves_full_wal_and_keeps_quarantine(self):
        marker=pending.begin(self.request['domain'],'unrelated_operation','edit_'+'b'*64)
        with patch.object(recovery,'NativeStructureAdapter') as constructor:
            adapter=constructor.return_value.__enter__.return_value
            adapter.commit_resource_status.return_value=self.status
            result=json.loads(self.invoke()['content'].split('\n\n',1)[1])
            self.assertEqual(result,summary(self.status))
            adapter.apply.assert_not_called();adapter.revert.assert_not_called();adapter.release.assert_not_called()
        self.assertTrue(marker.exists())
        checked=self.log.read(self.token)[-1]
        self.assertEqual(checked['kind'],'commit_resource_checked')
        self.assertEqual(checked['payload'],self.status)
        self.assertEqual(self.log.receipt(self.token,self.log.read(self.token))['status'],'conflict')

    def test_reconcile_refused_before_native_access_or_wal_change(self):
        with patch.object(recovery,'NativeStructureAdapter') as constructor:
            with self.assertRaises(service.ToolError) as caught:self.invoke(reconcile=True)
            self.assertEqual(caught.exception.code,'RECOVERY_UNRESOLVED')
            constructor.assert_not_called()
        self.assertEqual(self.log.read(self.token),self.events)

    def test_different_prepare_receipt_cannot_be_appended(self):
        value=deepcopy(self.status);value['prepared_receipt']['cache_entries']=21
        with patch.object(recovery,'NativeStructureAdapter') as constructor:
            constructor.return_value.__enter__.return_value.commit_resource_status.return_value=value
            with self.assertRaises(service.ToolError):self.invoke()
        self.assertEqual(self.log.read(self.token),self.events)

    def test_offline_diff_keeps_every_check_and_original_event_identity(self):
        for i in range(2):
            value=deepcopy(self.status);value['actual_changes'][0]['after']['value']=str(i+11)
            self.log._append(self.path,self.events,'commit_resource_checked',value)
        with patch.object(recovery,'NativeStructureAdapter',side_effect=AssertionError('Unexpected live access')):
            result=self.log.diff(self.token)
        self.assertEqual(len(result['commit_resource_checks']),2)
        for row,event in zip(result['commit_resource_checks'],self.events[-2:]):
            self.assertEqual(row['status'],event['payload'])
            self.assertEqual(row['event_sha256'],event['checksum'])
            self.assertEqual(row['as_of_utc'],event['utc'])
            self.assertFalse(row['model_edit_claimed']);self.assertFalse(row['is_fresh_live_observation'])
        self.assertEqual(result['observations'],[])

    def test_offline_diff_refuses_rebound_or_authorizing_resource_check(self):
        for key,value in (('native_token','edit_'+'b'*64),('inverse_authorized',True),('generation',8)):
            checked=deepcopy(self.status);checked[key]=value
            event={'kind':'commit_resource_checked','payload':checked,'checksum':'event','utc':'now'}
            with patch.object(StructureJournal,'read',return_value=self.events+[event]):
                with self.assertRaises(JournalError):self.log.diff(self.token)

    def test_offline_history_distinguishes_resource_checks_from_model_edits(self):
        self.log._append(self.path,self.events,'commit_resource_checked',self.status)
        with patch.object(recovery,'NativeStructureAdapter',side_effect=AssertionError('Unexpected live access')):
            reply=service.handle('bd_inspect',dict(query='edits'),'s')
        rows=[json.loads(line) for line in reply['content'].split('\n\n',1)[1].splitlines()]
        row=next(row for row in rows if row.get('change_id')==self.token)
        self.assertEqual(row['status'],'conflict');self.assertEqual(row['changed_fields'],[])
        self.assertEqual(row['commit_resource_check']['summary'],summary(self.status))
        self.assertFalse(row['commit_resource_check']['model_edit_claimed'])

    def test_corrupt_resource_history_is_only_an_unreadable_diagnostic(self):
        corrupt=deepcopy(self.status);corrupt['prepared_receipt']['cache_entries']=99
        self.log._append(self.path,self.events,'commit_resource_checked',corrupt)
        reply=service.handle('bd_inspect',dict(query='edits'),'s')
        rows=[json.loads(line) for line in reply['content'].split('\n\n',1)[1].splitlines()]
        row=next(row for row in rows if row.get('change_id')==self.token)
        self.assertEqual(row['status'],'unreadable')
        self.assertNotIn('commit_resource_check',row)


if __name__=='__main__':unittest.main()
