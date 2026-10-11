"""Synthetic message execution/WAL/unknown controls; actual before material came from live prep."""
from contextlib import nullcontext
from copy import deepcopy
import json
from pathlib import Path
import tempfile
import unittest
from unittest.mock import Mock

from bd_create_history import preparation,observed
from bd_create_history_journal import context,execute,prepare
from bd_edit_journal import JournalError
from bd_message_declaration_history import terminal_query
from bd_structure_journal import StructureJournal
from test_bd_enum_create_history import actual_diff

ROOT=Path(__file__).resolve().parents[1]
TRIAL=ROOT/'analysis/bde-experiments/2026-10-06/bde-message-history-preflight-01'


def fixture():
    trial=json.loads((TRIAL/'result.json').read_text(encoding='utf-8'))
    events=json.loads((TRIAL/'original-forward-journal.json').read_text(encoding='utf-8'))
    p=deepcopy(trial['preparation']);p['profile']='native_create_message_exact_preparation_v2'
    return trial,events,p


def actual(p):
    body=p['declaration_evidence'];proof=deepcopy(body['message_evidence'])
    proof.update(phase='target',model_present=proof['target_model_present'],target_model_present=proof['model_present'])
    for prefix in ('owner_references','owner_database_record_references'):
        proof[prefix+'_current']=deepcopy(body['message_evidence'][prefix+'_expected'])
        proof[prefix+'_expected']=deepcopy(body['message_evidence'][prefix+'_current'])
    return dict(profile='native_create_exact_actual_v5',observation=deepcopy(p['expected']),
        execution=dict(profile='native_create_exact_execution_v4',native_token=p['native_token'],
            head_change_id=p['owner_change_id'],result_change_id=p['result_change_id'],sequence=p['sequence']+1,
            before_state=p['state'],after_state='reverted',model_operations=1,drawing_assignments=len(p['drawing_expected']['members']),
            store_started=True,store_completed=True,phase='terminal',native_primitives=0,source_primitives=0,
            declaration_primitives=0,terminal_verified=True),
        parent_before=deepcopy(p['parent_before']),parent_after=deepcopy(p['parent_expected']),
        drawing_before=deepcopy(p['drawing_before']),drawing_after=deepcopy(p['drawing_expected']),
        graphical_current=deepcopy(p['graphical_current']),graphical_actual=actual_diff(p['graphical_current'],p['graphical_expected']),
        source_actual_evidence=deepcopy(p['source_evidence']),allocator=deepcopy(p['allocator']),
        created_original_retained=True,native_target_verified=True,source_target_verified=True,
        declaration_current=deepcopy(body['current']),declaration_actual=actual_diff(body['current'],body['expected']),
        declaration_schema=deepcopy(body['current_schema']),declaration_target_verified=True,created_model_original_retained=True,
        message_owner_evidence=proof,message_persistence=dict(profile='native_message_owner_reference_commit_v1',
            component_oid=trial_oid(p),owner_modified_started=True,owner_modified_completed=True,
            auto_commit_started=True,auto_commit_completed=True,native_source_declaration_targets_unchanged=True,
            model_setters_called=0,store_replayed=False))


def trial_oid(p):return p['message_origin']['creation_material']['component_oid']


class MessageActualHistoryTests(unittest.TestCase):
    def setUp(self):self.trial,self.events,self.p=fixture()
    def validate(self):return preparation(self.p,token=self.p['native_token'],owner=self.p['owner_change_id'],
        state='applied',result_id=self.p['result_change_id'],sequence=1,kind='receive_message',
        current=self.p['before'],expected=self.p['expected'],oid=self.trial['domain']['oid'])
    def populate(self,directory):
        log=StructureJournal(directory);path=log._path(self.p['native_token']);path.mkdir()
        for e in self.events:(path/(str(e['sequence']).zfill(6)+'.json')).write_text(json.dumps(e),encoding='utf-8')
        return log
    def adapter(self,lose=False):
        a=Mock(create_history_capable=True,create_message_history_capable=True);a.observe.return_value=deepcopy(self.p['before'])
        def native_prepare(domain,token,owner,state,result_id):
            p=deepcopy(self.p);p.pop('message_origin');p['result_change_id']=result_id;return p
        a.prepare_create_history.side_effect=native_prepare
        def native_execute(domain,p):
            if lose:raise ConnectionError('Synthetic lost message reply')
            return actual(p)
        a.execute_create_history.side_effect=native_execute;return a
    def test_complete_actual_target_and_owner_commit(self):
        p=self.validate();self.assertEqual(observed(actual(p),p,oid=trial_oid(p))['profile'],'native_create_exact_actual_v5')
    def test_prepare_only_profile_cannot_accept_actual_execution(self):
        p=self.validate();p['profile']='native_create_message_exact_preparation_v1'
        with self.assertRaisesRegex(JournalError,'does not authorize'):observed(actual(p),p,oid=trial_oid(p))
    def test_missing_durable_original_origin_rejected(self):
        del self.p['message_origin']
        with self.assertRaises(JournalError):self.validate()
    def test_wrong_typed_api_role_rejected(self):
        row=next(r for r in self.p['before']['entries'] if r['kind']=='model');row['native_class']='EtasAPIModelScalar'
        with self.assertRaises(JournalError):self.validate()
    def test_persistence_flags_cannot_hide_foreign_owner(self):
        p=self.validate();v=actual(p);v['message_persistence']['component_oid']='foreign'
        with self.assertRaisesRegex(JournalError,'reference persistence'):observed(v,p,oid=trial_oid(p))
    def test_incomplete_commit_or_store_replay_rejected(self):
        for key,value in (('auto_commit_completed',False),('owner_modified_completed',False),('store_replayed',True)):
            with self.subTest(key=key):
                p=self.validate();v=actual(p);v['message_persistence'][key]=value
                with self.assertRaises(JournalError):observed(v,p,oid=trial_oid(p))
    def test_missing_actual_body_change_cannot_hide_behind_verified_flags(self):
        p=self.validate();v=actual(p);v['declaration_actual']['changes'].pop()
        with self.assertRaisesRegex(JournalError,'reconstruct'):observed(v,p,oid=trial_oid(p))
    def test_foreign_actual_database_reference_rejected(self):
        p=self.validate();v=actual(p);v['message_owner_evidence']['owner_database_record_references_current'].append(['z_other','SGProject'])
        with self.assertRaisesRegex(JournalError,'database/loaded'):observed(v,p,oid=trial_oid(p))
    def test_actual_role_substitution_rejected(self):
        p=self.validate();v=actual(p);v['message_owner_evidence']['kind']='send_message'
        with self.assertRaises(JournalError):observed(v,p,oid=trial_oid(p))
    def test_terminal_query_binds_proxy_type_and_both_reference_sets(self):
        p=self.validate();v=actual(p);proof=deepcopy(v['message_owner_evidence']);proof['phase']='current'
        cache=dict(namespace_bindings=[[r['ref'],r['ref']] for r in v['declaration_current']['objects']])
        self.assertEqual(terminal_query(proof,v,p,cache),proof)
        proof['owner_proxy_ref']=proof['owner_ref']
        with self.assertRaises(ValueError):terminal_query(proof,v,p,cache)
    def test_disabled_message_executor_refuses_before_native_reads(self):
        with tempfile.TemporaryDirectory() as directory:
            log=self.populate(directory);ctx=context(log,self.p['native_token']);a=Mock(create_history_capable=True,create_message_history_capable=False)
            with self.assertRaisesRegex(JournalError,'message history execution'):prepare(a,ctx,self.p['result_change_id'])
            a.observe.assert_not_called();a.prepare_create_history.assert_not_called()
    def test_actual_wal_and_duplicate_retain_complete_original_message_head(self):
        with tempfile.TemporaryDirectory() as directory:
            log=self.populate(directory);a=self.adapter();r=execute(log,self.p['native_token'],'message-actual',a,nullcontext)
            self.assertEqual(r['status'],'verified_local');self.assertTrue(r['declaration_differences']['owner_reference_targets_verified'])
            self.assertEqual(execute(log,self.p['native_token'],'message-actual',a,nullcontext),r)
            self.assertEqual(a.execute_create_history.call_count,1);ctx=context(log,r['change_id'])
            self.assertEqual(ctx['sequence'],2);self.assertEqual(ctx['state'],'reverted')
            self.assertEqual(ctx['message_origin']['target_declaration'],self.p['declaration_evidence']['current'])
    def test_unknown_message_execution_never_redispatched(self):
        with tempfile.TemporaryDirectory() as directory:
            log=self.populate(directory);a=self.adapter(lose=True);r=execute(log,self.p['native_token'],'message-unknown',a,nullcontext)
            self.assertEqual(r['status'],'outcome_unknown');self.assertEqual(execute(log,self.p['native_token'],'message-unknown',a,nullcontext),r)
            self.assertEqual(a.execute_create_history.call_count,1);a.confirm_create_history.assert_not_called()


if __name__=='__main__':unittest.main()
