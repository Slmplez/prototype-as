"""Offline fault/identity checks using a sealed actual zero-write preparation."""
from contextlib import nullcontext
from copy import deepcopy
import json
import os
from pathlib import Path
import shutil
import tempfile
import unittest
from unittest.mock import patch

from bd_create_history import preparation, observed
from bd_create_history_journal import execute, reconcile_locked
from bd_edit_journal import JournalError, fingerprint
from bd_structure_journal import StructureJournal
import bd_instance_pending as pending

ROOT = Path(__file__).resolve().parents[1]
EVIDENCE = ROOT / 'analysis/bde-experiments/2026-10-06/bde-create-literal-history-preflight-01'


class CreationHistoryTests(unittest.TestCase):
    def setUp(self):
        self.live = json.loads((EVIDENCE/'result.json').read_text(encoding='utf-8'))
        self.value = deepcopy(self.live['preparation'])
        self.original = json.loads((Path(self.live['source'])/'result.json').read_text(encoding='utf-8'))
        self.token = self.value['native_token']
        self.domain = self.original['domain']
        self.kw = dict(token=self.token,owner=self.value['owner_change_id'],state='applied',
            result_id=self.value['result_change_id'],sequence=1,kind='literal',
            current=deepcopy(self.value['before']),expected=deepcopy(self.value['expected']),oid=self.domain['oid'])

    def validate(self):
        return preparation(self.value,**self.kw)

    def test_complete_recorded_preparation_includes_detached_material_and_monotonic_allocator(self):
        self.assertEqual(self.validate(),self.value)
        self.assertGreater(len(self.value['graphical_expected']['objects']),
                           len(self.value['graphical_original']['objects']))

    def test_stale_result_or_native_owner_is_rejected(self):
        for field in ('native_token','owner_change_id','result_change_id'):
            with self.subTest(field=field):
                original=deepcopy(self.value)
                self.value[field]='edit_'+'f'*64
                with self.assertRaises(JournalError):self.validate()
                self.value=original

    def test_allocator_rewind_cannot_hide_behind_success_flags(self):
        self.value['allocator']['expected']-=1
        with self.assertRaisesRegex(JournalError,'high-water'):self.validate()

    def test_future_or_false_allocator_authority_refuses(self):
        for field in ('rewind_authorized','retained_for_redo'):
            original=deepcopy(self.value);self.value['allocator'][field]=not self.value['allocator'][field]
            with self.assertRaises(JournalError):self.validate()
            self.value=original

    def test_source_collateral_or_identity_change_cannot_be_omitted(self):
        rows=self.value['source_evidence']['candidate']
        row=next(r for r in rows if r['kind']=='fields' and r['ref']!=self.value['source_evidence']['source_root'])
        row['value'][0]=['boolean',False] if row['value'][0]!=['boolean',False] else ['nil']
        with self.assertRaisesRegex(JournalError,'source target'):self.validate()

    def test_missing_detached_native_object_is_rejected(self):
        self.value['graphical_expected']['objects'].pop()
        with self.assertRaises(JournalError):self.validate()

    def test_local_merge_or_declaration_authority_is_not_granted(self):
        for field in ('local_merge_enabled','declaration_body_restore_verified'):
            original=deepcopy(self.value);self.value[field]=True
            with self.assertRaises(JournalError):self.validate()
            self.value=original

    def test_actual_boolean_target_flags_do_not_replace_full_native_patch(self):
        p=self.validate()
        value=dict(profile='native_create_exact_actual_v1',observation=p['expected'],
            execution=dict(profile='native_create_exact_execution_v1',native_token=self.token,
                head_change_id=p['owner_change_id'],result_change_id=p['result_change_id'],sequence=2,
                before_state='applied',after_state='reverted',model_operations=1,
                drawing_assignments=len(p['drawing_expected']['members']),store_started=True,store_completed=True,
                phase='terminal',native_primitives=0,source_primitives=0,terminal_verified=True),
            parent_before=p['parent_before'],parent_after=p['parent_expected'],
            drawing_before=p['drawing_before'],drawing_after=p['drawing_expected'],
            graphical_current=p['graphical_current'],graphical_actual=dict(profile='native_graphical_diff_v1',
                complete=True,new_objects=[],changes=[],after_object_count=len(p['graphical_current']['objects'])),
            source_actual_evidence=p['source_evidence'],allocator=p['allocator'],
            created_original_retained=True,native_target_verified=True,source_target_verified=True)
        with self.assertRaisesRegex(JournalError,'actual native change'):
            observed(value,p,oid=self.domain['oid'])


class CreationHistoryJournalTests(unittest.TestCase):
    def setUp(self):
        CreationHistoryTests.setUp(self)
        self.temp=tempfile.TemporaryDirectory();self.addCleanup(self.temp.cleanup)
        environment=patch.dict(os.environ,{'LOCALAPPDATA':self.temp.name})
        environment.start();self.addCleanup(environment.stop)
        self.log=StructureJournal(Path(self.temp.name)/'edits')
        shutil.copytree(ROOT/'analysis/bde-experiments/2026-10-06/bde-create-history-sealed-wal-01/edits'/self.token,self.log._path(self.token))
        test=self
        class Adapter:
            create_history_capable=True
            def __init__(self):self.calls=[]
            def write_preflight(self,domain):self.calls.append('preflight')
            def observe(self,domain,targets):self.calls.append('observe');return deepcopy(test.value['before'])
            def prepare_create_history(self,domain,token,owner,state,result_id):
                self.calls.append('prepare');p=deepcopy(test.value);p['result_change_id']=result_id;return p
            def execute_create_history(self,domain,p):
                self.calls.append('execute')
                events=test.log.read(p['result_change_id'])
                test.assertEqual([e['kind'] for e in events],['intent','prepared','started'])
                pending.begin(domain,'create_history',token=p['native_token'],context={
                    k:p[k] for k in ('owner_change_id','state','result_change_id','signature')})
                raise RuntimeError('simulated missing native reply')
        self.adapter=Adapter()

    def call(self):
        return execute(self.log,self.token,'offline-history',self.adapter,nullcontext)

    def test_prepared_disk_failure_never_dispatches_native_mutation(self):
        append=self.log._append
        def fail(path,events,kind,value):
            if kind=='prepared':raise OSError('disk unavailable')
            return append(path,events,kind,value)
        with patch.object(self.log,'_append',side_effect=fail):
            result=self.call()
        self.assertEqual(result['status'],'rejected')
        self.assertNotIn('execute',self.adapter.calls)
        self.assertFalse(pending.pending_path(self.domain).exists())

    def test_started_disk_failure_returns_interruption_without_dispatch(self):
        append=self.log._append
        def fail(path,events,kind,value):
            if kind=='started':raise OSError('disk unavailable')
            return append(path,events,kind,value)
        with patch.object(self.log,'_append',side_effect=fail):result=self.call()
        self.assertNotIn('execute',self.adapter.calls)
        self.assertNotEqual(result['status'],'verified_local')

    def test_unknown_reply_is_retained_and_duplicate_never_replays(self):
        result=self.call()
        self.assertEqual(result['status'],'outcome_unknown')
        self.assertTrue(pending.pending_path(self.domain).exists())
        calls=list(self.adapter.calls)
        self.assertEqual(self.call(),result)
        self.assertEqual(self.adapter.calls,calls)

    def test_foreign_marker_recovery_refuses_before_native_query(self):
        result=self.call();marker=pending.pending_path(self.domain)
        value=json.loads(marker.read_text());value['native_token']='edit_'+'e'*64
        marker.write_text(json.dumps(value))
        with self.assertRaisesRegex(JournalError,'Another request'):
            reconcile_locked(self.log,result['change_id'],self.adapter,commit=True)
        self.assertTrue(marker.exists())
        self.assertEqual(self.adapter.calls.count('execute'),1)


class CreationHistoryProjectionTests(unittest.TestCase):
    """Replay sealed successful WAL offline; no adapter or native calls are used."""
    def setUp(self):
        self.root=ROOT/'analysis/bde-experiments/2026-10-06/bde-create-history-sealed-wal-01/edits'
        self.head='edit_c4c58af4c7d4fbf91bd8fc8630387f2bbb12c7e50a1603bb37bb101220abd647'
        self.log=StructureJournal(self.root)
        self.events=self.log.read(self.head)
        self.actual=next(e['payload'] for e in self.events if e['kind']=='observed')
        self.forward=self.events[0]['payload']['reverts']

    def test_old_successful_receipt_reconstructs_actual_diff_without_wal_rewrite(self):
        files={p:p.read_bytes() for p in self.log._path(self.head).glob('*.json')}
        result=self.log.receipt(self.head,self.events)
        for field in ('graphical_differences','parent_order_differences','drawing_order_differences'):
            self.assertEqual(result[field],self.actual[field])
        self.assertTrue(result['create_history']['revert_of_revert_available'])
        self.assertEqual(result['create_history']['owner_change_id'],self.head)
        self.assertEqual(files,{p:p.read_bytes() for p in files})

    def test_diff_keeps_typed_changes_and_compacts_native_and_source_material(self):
        diff=self.log.diff(self.head)
        row=diff['observations'][0]
        for field in ('create_history_actual','graphical_current','graphical_actual',
                      'parent_order_effects','drawing_order_effects'):
            self.assertNotIn(field,row)
        material=row['create_history_actual_summary']
        self.assertEqual(material['sha256'],fingerprint(self.actual['create_history_actual']))
        self.assertEqual(material['source_sha256'],
                         fingerprint(self.actual['create_history_actual']['source_actual_evidence']))
        self.assertEqual(material['graphical_differences'],diff['graphical_differences'])
        self.assertEqual(row['after'],self.actual['after'])
        self.assertEqual({r['ref'] for r in diff['differences']},{'n17','p18'})
        self.assertLess(len(json.dumps(diff).encode('utf-8')),12288)

    def test_forward_create_diff_compacts_factory_capture_with_exact_counts_and_hash(self):
        actual=next(e['payload'] for e in self.log.read(self.forward) if e['kind']=='observed')
        row=self.log.diff(self.forward)['observations'][0]
        self.assertNotIn('create_material_actual',row)
        summary=row['create_material']
        self.assertEqual(summary['sha256'],fingerprint(actual['create_material_actual']))
        for field in ('original_native_objects','actual_native_objects',
                      'original_source_objects','actual_source_objects'):
            self.assertEqual(summary[field],actual['create_material_actual'][field])
        self.assertEqual(row['after'],actual['after'])

    def test_missing_ready_or_unknown_completion_cannot_grant_redo(self):
        without_ready=[e for e in self.events if e['kind']!='create_history_ready']
        self.assertFalse(self.log.receipt(self.head,without_ready)['create_history']['revert_of_revert_available'])
        unknown=deepcopy(self.events)
        next(e['payload'] for e in unknown if e['kind']=='finished')['status']='outcome_unknown'
        self.assertFalse(self.log.receipt(self.head,unknown)['create_history']['revert_of_revert_available'])

    def test_ready_without_actual_is_rejected(self):
        events=[e for e in self.events if e['kind']!='observed']
        with self.assertRaisesRegex(JournalError,'lacks complete actual'):
            self.log.receipt(self.head,events)

    def test_foreign_ready_owner_is_rejected_by_complete_proof(self):
        events=deepcopy(self.events)
        next(e['payload'] for e in events if e['kind']=='create_history_ready')['owner_change_id']='edit_'+'f'*64
        with self.assertRaisesRegex(JournalError,'durable proof'):
            self.log.receipt(self.head,events)

    def test_actual_success_flags_cannot_project_omitted_native_changes(self):
        events=deepcopy(self.events)
        actual=next(e['payload'] for e in events if e['kind']=='observed')
        actual['create_history_actual']['graphical_actual']['changes']=[]
        with self.assertRaises(JournalError):self.log.receipt(self.head,events)


if __name__=='__main__':
    unittest.main()
