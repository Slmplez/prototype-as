"""Replay full v5 WAL locally; simulated lost reply/duplicate, no live fault or model call."""
from copy import deepcopy
import json
import os
from pathlib import Path
import tempfile
import unittest
from unittest.mock import Mock,patch
from contextlib import nullcontext

from bd_declaration_cache import classify
from bd_create_finalize_journal import execute,reconcile_locked
from bd_structure_journal import StructureJournal
from bd_edit_journal import JournalError
import bd_instance_pending as pending

ROOT=Path(__file__).resolve().parents[1]
TRIAL=ROOT/'analysis/bde-experiments/2026-10-06/bde-message-finalize-tools-01'


class MessageFinalizeRecoveryTests(unittest.TestCase):
    def setUp(self):
        self.tmp=tempfile.TemporaryDirectory();self.addCleanup(self.tmp.cleanup)
        env=patch.dict(os.environ,{'LOCALAPPDATA':self.tmp.name});env.start();self.addCleanup(env.stop)
        self.log=StructureJournal(Path(self.tmp.name)/'edits')
        self.saved=json.loads((TRIAL/'finalization-journal.json').read_text(encoding='utf-8'))
        self.p=next(e['payload']['create_finalize'] for e in self.saved if e['kind']=='prepared')
        self.actual=next(e['payload']['create_finalize_actual'] for e in self.saved if e['kind']=='observed')
        self.intent=self.saved[0]['payload'];self.domain=self.intent['domain'];self.rid=self.p['result_change_id']
        source=Path(json.loads((TRIAL/'result.json').read_text(encoding='utf-8'))['creation_source'])/'store/edits'
        self.real=StructureJournal(source)
        for rid in self.real.origin(self.intent['reverts'])['chain']:
            # Simulate the point after dispatch and before a reply: closure did not yet reach disk.
            self.seed(rid,[e for e in self.real.read(rid) if e['kind']!='create_history_closed'])
        self.seed(self.rid,[e for e in self.saved if e['kind'] in ('intent','prepared','started')])
        self.marker=pending.begin(self.domain,'create_finalize',self.p['native_token'],context={k:self.p[k]
            for k in ('owner_change_id','result_change_id','signature')})
        self.adapter=Mock();self.adapter.create_finalize_status.return_value=self.query()
        self.adapter.confirm_create_finalize.side_effect=lambda domain,p:pending.confirmed(self.marker)

    def seed(self,rid,rows):
        path=self.log._path(rid);path.mkdir();events=[]
        for e in rows:self.log._append(path,events,e['kind'],e['payload'])

    def query(self):
        target=self.p['declaration_evidence']['target'];graph=deepcopy(target['expected']);fields=deepcopy(target['expected_schema'])
        classified=classify(graph,fields,graph,fields,owner=target['owner_ref'],owner_class='SGModule')
        cache=dict(profile='native_declaration_read_cache_evidence_v1',previous_recorded=graph,previous_schema=fields,
            recorded=deepcopy(graph),recorded_schema=deepcopy(fields),current=deepcopy(graph),current_schema=deepcopy(fields),
            namespace_bindings=[[r['ref'],r['ref']] for r in graph['objects']],owner_ref=target['owner_ref'],write_authorized=False,
            native_guard=dict(profile='native_declaration_cache_guard_v1',non_cache_original_state_unchanged=True,
                changed_entries=0,new_objects=0,cache_objects=classified['cache_objects'],model_setters_called=0,
                store_called=False,inverse_authorized=False))
        proof=deepcopy(self.actual['message_owner_evidence']);proof['phase']='current'
        return dict(profile='native_create_finalize_terminal_query_v5',actual=deepcopy(self.actual),
            read_cache_evidence=cache,original_declaration_current_verified=True,message_owner_evidence=proof,
            model_setters_called=0,store_called=False,execution_redispatched=False)

    def test_unknown_duplicate_returns_record_without_adapter_or_retry(self):
        answer=execute(self.log,self.intent['reverts'],self.intent['request_id'],self.adapter,nullcontext)
        self.assertEqual(answer['status'],'outcome_unknown');self.assertEqual(self.adapter.mock_calls,[])
        self.assertTrue(self.marker.exists())

    def test_lost_v5_reply_recovers_full_message_and_cache_proofs_without_execution(self):
        answer=reconcile_locked(self.log,self.rid,self.adapter,commit=True)
        self.assertEqual(answer['receipt']['status'],'finalized');self.assertFalse(self.marker.exists())
        self.assertTrue(answer['message_owner_reference_targets_verified'])
        rows=self.log.read(self.rid);query=next(e['payload'] for e in rows if e['kind']=='create_finalize_terminal_query')
        self.assertEqual(query['message_owner_evidence'],self.query()['message_owner_evidence'])
        self.assertIn('previous_recorded',query['read_cache_evidence']);self.assertTrue(query['current_matches_terminal'])
        self.adapter.execute_create_finalize.assert_not_called()

    def test_wrong_proxy_type_role_or_either_reference_keeps_quarantine(self):
        for key,value in [('owner_proxy_oid','foreign'),('type_ref','v999999'),('kind','send_message'),
                          ('owner_references_current',[]),('owner_database_record_references_current',[])]:
            reply=self.query();reply['message_owner_evidence'][key]=value
            self.adapter.create_finalize_status.return_value=reply
            with self.assertRaises(ValueError):reconcile_locked(self.log,self.rid,self.adapter,commit=True)
            self.assertTrue(self.marker.exists());self.adapter.confirm_create_finalize.assert_not_called()
            self.assertFalse(any(e['kind']=='observed' for e in self.log.read(self.rid)))

    def test_missing_message_proof_or_variable_query_profile_is_rejected(self):
        for key,value in [('message_owner_evidence',None),('profile','native_create_finalize_terminal_query_v3')]:
            reply=self.query()
            if value is None:reply.pop(key)
            else:reply[key]=value
            self.adapter.create_finalize_status.return_value=reply
            with self.assertRaises(JournalError):reconcile_locked(self.log,self.rid,self.adapter,commit=True)
            self.assertTrue(self.marker.exists());self.adapter.execute_create_finalize.assert_not_called()

    def test_false_original_flag_cannot_override_complete_images(self):
        reply=self.query();reply['original_declaration_current_verified']=False
        self.adapter.create_finalize_status.return_value=reply
        with self.assertRaisesRegex(JournalError,'baseline flag'):reconcile_locked(self.log,self.rid,self.adapter,commit=True)
        self.assertTrue(self.marker.exists());self.adapter.confirm_create_finalize.assert_not_called()

    def test_released_proof_reports_historical_state_without_live_query(self):
        pending.confirmed(self.marker)
        with tempfile.TemporaryDirectory() as directory:
            log=StructureJournal(directory)
            for rid in self.real.origin(self.intent['reverts'])['chain']+[self.rid]:
                path=log._path(rid);path.mkdir();events=[]
                for e in self.real.read(rid):log._append(path,events,e['kind'],e['payload'])
            adapter=Mock();answer=reconcile_locked(log,self.rid,adapter)
            self.assertEqual(answer['current_state'],'not_queried_material_released')
            self.assertTrue(answer['terminal_verified']);self.assertEqual(adapter.mock_calls,[])


if __name__=='__main__':unittest.main()
