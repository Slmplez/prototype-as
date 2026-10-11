"""Sealed zero-write finalization proofs and WAL fault boundaries, offline only."""
from contextlib import nullcontext
from copy import deepcopy
import json
import os
from pathlib import Path
import shutil
import tempfile
import unittest
from unittest.mock import patch
from bd_edit_journal import JournalError
from bd_create_finalize import preparation,observed
from bd_create_finalize_journal import execute,reconcile_locked
from bd_create_history_journal import context
from bd_structure_journal import StructureJournal
import bd_instance_pending as pending

ROOT=Path(__file__).resolve().parents[1]


class FinalizeProofTests(unittest.TestCase):
    def setUp(self):
        self.fixture=json.loads((ROOT/'analysis/bde-experiments/2026-10-06/bde-create-literal-finalize-preflight-01/result.json').read_text(encoding='utf-8'))
        self.p=deepcopy(self.fixture['preparation']);self.domain=self.fixture['domain']
        self.kw=dict(token=self.p['native_token'],owner=self.p['owner_change_id'],result_id=self.p['result_change_id'],
            sequence=self.p['sequence'],current=deepcopy(self.p['before']),original=deepcopy(self.p['expected']),oid=self.domain['oid'])

    def validate(self):return preparation(self.p,**self.kw)

    def versioned(self):
        self.p['profile']='native_create_finalize_preparation_v2'
        self.p['namespace']=dict(profile='allocator_scope_retirement_plan_v1',scope=self.domain['oid']+'/Main',
            generation=self.p['before']['generation'],native_token=self.p['native_token'],
            result_change_id=self.p['result_change_id'],blocks_writes_before_allocator_patch=True,
            requires_unpinned_retirement=True)
        return self.validate()

    def versioned_actual(self,p):
        value=self.actual(p);value['profile']='native_create_finalize_actual_v2'
        value['namespace']={**p['namespace'],'profile':'allocator_scope_retirement_actual_v1',
            'retirement_pending':True,'ordinary_writes_blocked':True}
        return value

    def test_versioned_namespace_preserves_complete_source_and_native_proof(self):
        p=self.versioned();value=self.versioned_actual(p)
        self.assertEqual(observed(value,p,oid=self.domain['oid']),value)

    def test_namespace_wrong_generation_owner_and_false_barrier_refuse(self):
        for field in ('scope','native_token','result_change_id','generation','blocks_writes_before_allocator_patch'):
            self.setUp();self.versioned()
            self.p['namespace'][field]=False if field=='blocks_writes_before_allocator_patch' else 1
            with self.assertRaises(JournalError):self.validate()

    def test_actual_missing_or_false_retirement_is_not_complete(self):
        p=self.versioned()
        for field in ('retirement_pending','ordinary_writes_blocked'):
            value=self.versioned_actual(p);value['namespace'][field]=False
            with self.assertRaises(JournalError):observed(value,p,oid=self.domain['oid'])
        value=self.versioned_actual(p);value.pop('namespace')
        with self.assertRaises(JournalError):observed(value,p,oid=self.domain['oid'])

    def actual(self,p):
        return dict(profile='native_create_finalize_actual_v1',observation=deepcopy(p['expected']),
            execution=dict(profile='native_create_finalize_execution_v1',native_token=p['native_token'],
                head_change_id=p['owner_change_id'],result_change_id=p['result_change_id'],sequence=p['sequence'],
                phase='terminal',source_primitives=int(p['allocator']['before']!=p['allocator']['expected']),
                model_setters_called=0,store_called=False,redo_closed=True,terminal_verified=True),
            graphical_current=deepcopy(p['graphical_current']),graphical_actual=dict(profile='native_graphical_diff_v1',
                complete=True,new_objects=[],changes=[],after_object_count=len(p['graphical_current']['objects'])),
            source_actual_evidence=deepcopy(p['source_evidence']),original_native_verified=True,
            original_source_verified=True,original_order_aliases_verified=True,material_retained=True)

    def test_complete_recorded_preflight_and_full_actual_target_validate(self):
        p=self.validate();self.assertEqual(p,self.p)
        self.assertEqual(observed(self.actual(p),p,oid=self.domain['oid']),self.actual(p))

    def test_allocator_census_and_competing_histories_refuse(self):
        for field,value in (('identifier_census',self.p['allocator']['expected']+1),('competing_histories',1)):
            original=deepcopy(self.p);self.p['allocator'][field]=value
            with self.assertRaises(JournalError):self.validate()
            self.p=original

    def test_closing_redo_and_exact_source_schema_are_required(self):
        self.p['allocator']['closes_redo_before_execution']=False
        with self.assertRaises(JournalError):self.validate()
        self.p=deepcopy(self.fixture['preparation']);self.p['allocator']['slot']+=1
        with self.assertRaises(JournalError):self.validate()

    def test_collateral_source_changes_cannot_be_hidden_in_allocator_restore(self):
        row=next(r for r in self.p['source_evidence']['candidate'] if r['kind']=='fields' and r['ref']!=self.p['source_evidence']['source_root'])
        row['value'][0]=['boolean',False] if row['value'][0]!=['boolean',False] else ['nil']
        with self.assertRaises(JournalError):self.validate()

    def test_actual_success_flags_without_real_source_patch_refuse(self):
        p=self.validate();actual=self.actual(p)
        actual['source_actual_evidence']['candidate']=deepcopy(p['source_evidence']['current'])
        with self.assertRaises(JournalError):observed(actual,p,oid=self.domain['oid'])

    def test_actual_graphical_collateral_and_false_source_step_count_refuse(self):
        p=self.validate();actual=self.actual(p);actual['execution']['source_primitives']+=1
        with self.assertRaises(JournalError):observed(actual,p,oid=self.domain['oid'])
        actual=self.actual(p);actual['graphical_actual']['after_object_count']-=1
        with self.assertRaises(JournalError):observed(actual,p,oid=self.domain['oid'])


class FinalizeJournalTests(unittest.TestCase):
    def setUp(self):
        FinalizeProofTests.setUp(self)
        self.temp=tempfile.TemporaryDirectory();self.addCleanup(self.temp.cleanup)
        environment=patch.dict(os.environ,{'LOCALAPPDATA':self.temp.name});environment.start();self.addCleanup(environment.stop)
        path=Path(self.temp.name)/'edits';shutil.copytree(ROOT/'analysis/bde-experiments/2026-10-06/bde-create-history-sealed-wal-01/edits',path)
        self.log=StructureJournal(path);self.head=self.p['owner_change_id'];test=self
        class Adapter:
            create_finalize_capable=True
            def __init__(self):self.calls=[];self.lose=False;self.fail_confirm=False
            def write_preflight(self,domain):self.calls.append('preflight')
            def observe(self,domain,targets):self.calls.append('observe');return deepcopy(test.p['before'])
            def prepare_create_finalize(self,domain,token,owner,result_id):
                self.calls.append('prepare');p=deepcopy(test.p);p['result_change_id']=result_id;return p
            def execute_create_finalize(self,domain,p):
                self.calls.append('execute');self.saved=FinalizeProofTests.actual(test,p)
                test.assertEqual([e['kind'] for e in test.log.read(p['result_change_id'])],['intent','prepared','started'])
                pending.begin(domain,'create_finalize',p['native_token'],context={k:p[k] for k in ('owner_change_id','result_change_id','signature')})
                if self.lose:raise RuntimeError('simulated lost finalization reply')
                return deepcopy(self.saved)
            def create_finalize_status(self,domain,p):self.calls.append('status');return deepcopy(self.saved)
            def confirm_create_finalize(self,domain,p):
                self.calls.append('confirm')
                if self.fail_confirm:raise RuntimeError('simulated lost marker confirmation')
                pending.confirmed(pending.pending_path(domain))
        self.adapter=Adapter()

    def call(self):return execute(self.log,self.head,'offline-finalize',self.adapter,nullcontext)

    def test_completed_history_closes_redo_and_duplicate_has_no_dispatch(self):
        result=self.call();self.assertEqual(result['status'],'finalized')
        with self.assertRaisesRegex(JournalError,'finalized'):context(self.log,self.head)
        self.assertFalse(self.log.receipt(self.head,self.log.read(self.head))['create_history']['revert_of_revert_available'])
        calls=list(self.adapter.calls);self.assertEqual(self.call(),result);self.assertEqual(self.adapter.calls,calls)
        diff=self.log.diff(result['change_id']);self.assertNotIn('create_finalize_actual',diff['observations'][0])
        self.assertEqual(diff['source_differences'][0]['after'],self.p['allocator']['expected'])

    def test_started_disk_failure_dispatches_no_source_patch(self):
        append=self.log._append
        def fail(path,events,kind,value):
            if kind=='started':raise OSError('disk unavailable')
            return append(path,events,kind,value)
        with patch.object(self.log,'_append',side_effect=fail):result=self.call()
        self.assertEqual(result['status'],'interrupted_before_apply');self.assertNotIn('execute',self.adapter.calls)

    def test_unknown_duplicate_does_not_replay_and_terminal_query_recovers(self):
        self.adapter.lose=True;result=self.call();self.assertEqual(result['status'],'outcome_unknown')
        calls=list(self.adapter.calls);self.assertEqual(self.call(),result);self.assertEqual(calls,self.adapter.calls)
        recovered=reconcile_locked(self.log,result['change_id'],self.adapter,commit=True)
        self.assertTrue(recovered['terminal_verified']);self.assertFalse(recovered['instance_quarantined'])
        self.assertEqual(self.adapter.calls.count('execute'),1)

    def test_lost_confirmation_uses_saved_terminal_without_another_patch(self):
        self.adapter.fail_confirm=True;result=self.call();self.assertEqual(result['status'],'outcome_unknown')
        self.adapter.fail_confirm=False
        recovered=reconcile_locked(self.log,result['change_id'],self.adapter,commit=True)
        self.assertEqual(recovered['receipt']['status'],'finalized');self.assertEqual(self.adapter.calls.count('execute'),1)

    def test_foreign_pending_marker_refuses_before_native_status(self):
        self.adapter.lose=True;result=self.call();marker=pending.pending_path(self.domain)
        value=json.loads(marker.read_text(encoding='utf-8'));value['native_token']='edit_'+'f'*64
        marker.write_text(json.dumps(value),encoding='utf-8')
        with self.assertRaisesRegex(JournalError,'Another request'):reconcile_locked(self.log,result['change_id'],self.adapter,commit=True)
        self.assertNotIn('status',self.adapter.calls)

    def test_released_complete_history_is_offline_and_does_not_claim_live_current(self):
        result=self.call();token=result['change_id'];events=self.log.read(token)
        self.log._append(self.log._path(token),events,'recovery_released',dict(native_token=self.p['native_token']))
        calls=list(self.adapter.calls);history=reconcile_locked(self.log,token,self.adapter)
        self.assertEqual(history['current_state'],'not_queried_material_released')
        self.assertNotIn('current_matches_terminal',history);self.assertEqual(self.adapter.calls,calls)


if __name__=='__main__':unittest.main()
