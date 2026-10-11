"""Durable creation recovery and fault barriers; no live acceptance implied."""
from contextlib import nullcontext
from copy import deepcopy
import os
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

import bd_service as service
import bd_instance_pending as pending
from bd_create_journal import reconcile_locked
from bd_edit_journal import JournalError, fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from test_bd_create_material import receipt


class CreationRecoveryTests(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory(); self.addCleanup(self.temp.cleanup)
        environment = patch.dict(os.environ, {'LOCALAPPDATA': self.temp.name})
        environment.start(); self.addCleanup(environment.stop)
        self.log = StructureJournal(Path(self.temp.name) / 'journal')
        self.material = receipt('attached')
        self.material['after']['entries'][0].update(literal='7', anchor=[320, 240])
        self.prepared = receipt()
        self.domain = dict(session='s', database='db', oid='oid', process_epoch='epoch')
        self.token = self.material['native_token']
        self.path = self.log._path(self.token); self.path.mkdir()
        events = []
        intent = dict(domain=self.domain, component='BDE_Tool_Experiments\\Trial_recovery',
                      operation='create_block', diagram='Main', arguments=[[], 'literal', '7', 320, 240, ''],
                      request_id='create', expect=fingerprint(self.prepared['before']))
        for kind, value in [('intent', intent), ('prepared', dict(before=self.prepared['before'],
                create_material_prepared=self.prepared)), ('started', dict(native_token=self.token)),
                ('finished', dict(status='outcome_unknown', automatic_retry=False))]:
            self.log._append(self.path, events, kind, value)
        self.marker = pending.begin(self.domain, 'create_apply', self.token)
        test = self
        class Adapter:
            create_material_capable = True
            def __init__(self):
                self.calls = []
            def create_material_status(self, domain, token, *, reconcile=False):
                self.calls.append(('metadata', domain, token, reconcile))
                return deepcopy(test.material)
            def confirm_create(self, domain, token):
                self.calls.append(('confirm', domain, token))
                events = test.log.read(token)
                test.assertEqual(test.log.receipt(token, events)['status'], 'applied_observed')
                test.assertEqual(sum(event['kind'] == 'observed' for event in events), 1)
                NativeStructureAdapter.confirm_create(self, domain, token)
        self.adapter = Adapter()

    def recover(self, commit=True):
        return reconcile_locked(self.log, self.token, self.adapter, commit=commit)

    def test_commit_persists_full_actual_before_clearing_quarantine_without_creation(self):
        result = self.recover()
        self.assertTrue(result['reconciled'])
        self.assertFalse(result['creation_redispatched'])
        self.assertFalse(result['instance_quarantined'])
        self.assertEqual(result['receipt']['status'], 'applied_observed')
        self.assertEqual([row[0] for row in self.adapter.calls], ['metadata', 'confirm'])
        events = self.log.read(self.token)
        self.assertEqual([e['payload']['status'] for e in events if e['kind'] == 'finished'],
                         ['outcome_unknown', 'applied_observed'])
        self.assertIn('create_material_actual', next(e['payload'] for e in events if e['kind'] == 'observed'))

    def test_query_only_retains_unknown_marker_and_does_not_publish_observation(self):
        before = self.log.read(self.token)
        result = self.recover(commit=False)
        self.assertFalse(result['reconciled'])
        self.assertTrue(self.marker.exists())
        self.assertEqual(self.log.read(self.token), before)
        self.assertFalse(self.adapter.calls[0][-1])

    def test_another_marker_refuses_before_native_metadata_query(self):
        import json
        value = json.loads(self.marker.read_text()); value['native_token'] = 'edit_' + 'b' * 64
        self.marker.write_text(json.dumps(value))
        with self.assertRaisesRegex(JournalError, 'Another request'):
            self.recover()
        self.assertEqual(self.adapter.calls, [])
        self.assertTrue(self.marker.exists())

    def test_bad_capture_or_typed_target_never_clears_unknown(self):
        for change in ('scope', 'target'):
            with self.subTest(change=change):
                old = deepcopy(self.material)
                if change == 'scope': self.material['component_oid'] = 'foreign'
                else: self.material['after']['entries'][0]['literal'] = 'unexpected'
                with self.assertRaises(JournalError):
                    self.recover()
                self.assertTrue(self.marker.exists())
                self.assertFalse(any(c[0] == 'confirm' for c in self.adapter.calls))
                self.material = old

    def test_observed_disk_failure_keeps_marker_and_retry_queries_metadata_only(self):
        append = self.log._append
        def fail(path, events, kind, value):
            if kind == 'observed': raise OSError('disk unavailable')
            return append(path, events, kind, value)
        with patch.object(self.log, '_append', side_effect=fail):
            with self.assertRaisesRegex(OSError, 'disk unavailable'):
                self.recover()
        self.assertTrue(self.marker.exists())
        result = self.recover()
        self.assertTrue(result['reconciled'])
        self.assertEqual([c[0] for c in self.adapter.calls], ['metadata', 'metadata', 'confirm'])

    def test_conflicting_existing_observation_refuses_instead_of_replacing_it(self):
        events = self.log.read(self.token)
        self.log._append(self.path, events, 'observed', dict(after={'entries': []}))
        with self.assertRaisesRegex(JournalError, 'Durable creation observation differs'):
            self.recover()
        self.assertTrue(self.marker.exists())
        self.assertEqual(sum(e['kind'] == 'observed' for e in self.log.read(self.token)), 1)


class MessageCreationRecoveryControls(CreationRecoveryTests):
    """Synthetic lost-reply controls for message journals; not online faults."""
    def setUp(self):
        super().setUp()
        from test_bd_message_declaration_material import creation_receipt
        self.material=creation_receipt(attached=True); self.prepared=creation_receipt()
        self.domain['oid']=self.material['component_oid']
        self.domain['process_epoch']='message-epoch'
        # Build a separate original journal rather than rewriting the initial literal WAL.
        self.log=StructureJournal(Path(self.temp.name)/'message-journal')
        self.path=self.log._path(self.token);self.path.mkdir();events=[]
        model=self.material['after']['entries'][-1]
        self.material['after']['entries'][0].update(model_ref=model['ref'],anchor=[320,240])
        intent=dict(domain=self.domain,component='BDE_Tool_Experiments\\Trial_recovery',
            operation='create_block',diagram='Main',arguments=[[],'receive_message','MessageContractProbe',320,240,'cont'],
            request_id='create',expect=fingerprint(self.prepared['before']))
        for kind,value in [('intent',intent),('prepared',dict(before=self.prepared['before'],create_material_prepared=self.prepared)),
                           ('started',dict(native_token=self.token)),('finished',dict(status='outcome_unknown',automatic_retry=False))]:
            self.log._append(self.path,events,kind,value)
        self.marker=pending.begin(self.domain,'create_apply',self.token)

    def test_bad_capture_or_typed_target_never_clears_unknown(self):
        for change in ('scope','target'):
            old=deepcopy(self.material)
            if change=='scope':self.material['component_oid']='foreign'
            else:self.material['after']['entries'][-1]['message']['scope']='exported'
            with self.subTest(change=change),self.assertRaises(JournalError):self.recover()
            self.assertTrue(self.marker.exists())
            self.assertFalse(any(call[0]=='confirm' for call in self.adapter.calls))
            self.material=old

    def test_incomplete_original_message_profile_refuses_before_native_query(self):
        with patch.object(self.log,'read',return_value=[{**event,'payload':{**event['payload'],
                'create_material_prepared':receipt()}} if event['kind']=='prepared' else event
                for event in self.log.read(self.token)]):
            with self.assertRaisesRegex(JournalError,'full Module message'):self.recover()
        self.assertEqual(self.adapter.calls,[]);self.assertTrue(self.marker.exists())

    def test_terminal_query_preserves_original_roster_hash_when_native_enumeration_changes(self):
        self.recover()
        before=self.log.read(self.token)
        observed=next(event['payload'] for event in before if event['kind']=='observed')
        self.material['declaration_material']['after']['objects'].reverse()
        queried=self.recover(commit=False)
        self.assertTrue(queried['terminal_verified'])
        self.assertEqual(self.log.read(self.token),before)
        self.assertEqual(next(event['payload'] for event in self.log.read(self.token) if event['kind']=='observed'),observed)

    def test_terminal_query_rejects_changed_native_proxy_identity_without_replacing_wal(self):
        self.recover()
        before=self.log.read(self.token)
        self.material['declaration_material']['created_owner_binding']['database_oid']='foreign'
        with self.assertRaises(JournalError):self.recover(commit=False)
        self.assertEqual(self.log.read(self.token),before)


if __name__ == '__main__':
    unittest.main()
