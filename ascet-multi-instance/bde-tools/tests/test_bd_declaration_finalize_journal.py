"""Offline v3 WAL loss/recovery from saved actual variable targets; no live I/O."""
from contextlib import nullcontext
from copy import deepcopy
import json
import os
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch
from bd_create_finalize_journal import execute,reconcile_locked
from bd_declaration_cache import classify
from bd_edit_journal import JournalError
from bd_structure_journal import StructureJournal
import bd_instance_pending as pending


ROOT=Path(__file__).resolve().parents[1]
BASE=ROOT/'analysis/bde-experiments/2026-10-06'


class DeclarationFinalizeJournalTests(unittest.TestCase):
    def setUp(self):
        self.temp=tempfile.TemporaryDirectory();self.addCleanup(self.temp.cleanup)
        env=patch.dict(os.environ,{'LOCALAPPDATA':self.temp.name});env.start();self.addCleanup(env.stop)
        self.log=StructureJournal(Path(self.temp.name)/'edits')
        for name in ['original','undo','redo','undo-again']:
            rows=json.loads((BASE/'bde-variable-body-history-tools-01'/(name+'-journal.json')).read_text(encoding='utf-8'))
            first=rows[0]['payload'];rid=rows[0]['change_id'] if 'change_id' in rows[0] else None
            if rid is None:
                from bd_edit_journal import fingerprint
                rid='edit_'+fingerprint(dict(domain=first['domain'],request_id=first['request_id']))
            path=self.log._path(rid);path.mkdir();events=[]
            for row in rows:self.log._append(path,events,row['kind'],row['payload'])
        final=json.loads((BASE/'bde-variable-finalize-tools-02/finalization-journal.json').read_text(encoding='utf-8'))
        self.p=next(e['payload']['create_finalize'] for e in final if e['kind']=='prepared')
        self.actual=next(e['payload']['create_finalize_actual'] for e in final if e['kind']=='observed')
        self.domain=final[0]['payload']['domain'];self.head=self.p['owner_change_id'];test=self
        class Adapter:
            create_finalize_capable=True
            create_declaration_finalize_capable=True
            def __init__(self):self.calls=[];self.lose=False;self.false_baseline=False
            def write_preflight(self,domain):self.calls.append('preflight')
            def observe(self,domain,targets):self.calls.append('observe');return deepcopy(test.p['before'])
            def prepare_create_finalize(self,domain,token,owner,result_id):
                self.calls.append('prepare');p=deepcopy(test.p)
                p['result_change_id']=result_id;p['namespace']['result_change_id']=result_id
                return p
            def execute_create_finalize(self,domain,p):
                self.calls.append('execute');self.saved=deepcopy(test.actual)
                self.saved['execution']['result_change_id']=p['result_change_id']
                self.saved['namespace']['result_change_id']=p['result_change_id']
                self.prepared=deepcopy(p)
                pending.begin(domain,'create_finalize',p['native_token'],context={k:p[k]
                    for k in ('owner_change_id','result_change_id','signature')})
                if self.lose:raise RuntimeError('Simulated lost v3 reply')
                return deepcopy(self.saved)
            def create_finalize_status(self,domain,p):
                self.calls.append('status');t=p['declaration_evidence']['target']
                graph=deepcopy(t['expected']);fields=deepcopy(t['expected_schema'])
                classified=classify(graph,fields,graph,fields,owner=t['owner_ref'])
                cache=dict(profile='native_declaration_read_cache_evidence_v1',
                    previous_recorded=graph,previous_schema=fields,recorded=graph,recorded_schema=fields,
                    namespace_bindings=[[r['ref'],r['ref']] for r in graph['objects']],current=graph,
                    current_schema=fields,owner_ref=t['owner_ref'],write_authorized=False,
                    native_guard=dict(profile='native_declaration_cache_guard_v1',non_cache_original_state_unchanged=True,
                        changed_entries=0,new_objects=0,cache_objects=classified['cache_objects'],
                        model_setters_called=0,store_called=False,inverse_authorized=False))
                return dict(profile='native_create_finalize_terminal_query_v3',actual=deepcopy(self.saved),
                    read_cache_evidence=cache,original_declaration_current_verified=not self.false_baseline,
                    model_setters_called=0,store_called=False,execution_redispatched=False)
            def confirm_create_finalize(self,domain,p):self.calls.append('confirm');pending.confirmed(pending.pending_path(domain))
        self.adapter=Adapter()

    def call(self):return execute(self.log,self.head,'offline-variable-finalize-v3',self.adapter,nullcontext)

    def test_completed_v3_duplicate_and_diff_have_no_dispatch(self):
        value=self.call();self.assertEqual(value['status'],'finalized')
        from bd_create_history_journal import context
        with self.assertRaisesRegex(JournalError,'finalized'):context(self.log,self.head)
        calls=list(self.adapter.calls);self.assertEqual(self.call(),value);self.assertEqual(self.adapter.calls,calls)
        self.assertTrue(self.log.diff(value['change_id'])['declaration_differences']['original_before_namespace_bound'])

    def test_lost_v3_reply_recovers_only_by_bound_terminal_query(self):
        self.adapter.lose=True;value=self.call();self.assertEqual(value['status'],'outcome_unknown')
        calls=list(self.adapter.calls);self.assertEqual(self.call(),value);self.assertEqual(self.adapter.calls,calls)
        result=reconcile_locked(self.log,value['change_id'],self.adapter,commit=True)
        self.assertTrue(result['original_declaration_current_verified']);self.assertFalse(result['instance_quarantined'])
        self.assertEqual(self.adapter.calls.count('execute'),1)
        query=next(e['payload'] for e in self.log.read(value['change_id']) if e['kind']=='create_finalize_terminal_query')
        self.assertIn('previous_recorded',query['read_cache_evidence'])
        self.assertIn('current_schema',query['read_cache_evidence'])
        self.assertEqual(query['read_cache_differences'],result['read_cache_differences'])
        self.assertTrue(query['current_matches_terminal']);self.assertFalse(query['execution_redispatched'])

    def test_baseline_boolean_cannot_override_full_current_evidence(self):
        self.adapter.lose=True;value=self.call();self.adapter.false_baseline=True
        with self.assertRaisesRegex(JournalError,'baseline flag'):reconcile_locked(self.log,value['change_id'],self.adapter,commit=True)
        self.assertTrue(pending.pending_path(self.domain).exists());self.assertEqual(self.adapter.calls.count('execute'),1)

    def test_v3_requires_separate_capability_before_native_prepare(self):
        self.adapter.create_declaration_finalize_capable=False;value=self.call()
        self.assertEqual(value['status'],'rejected');self.assertNotIn('prepare',self.adapter.calls)
        self.assertNotIn('execute',self.adapter.calls)


if __name__=='__main__':unittest.main()
