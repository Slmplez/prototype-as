"""Durable reconciliation failure tests. Native records are fixtures here."""
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
from bd_edit_journal import fingerprint
from bd_structure_journal import StructureJournal
from bd_sandbox_edit import binding


class RecoveryTests(unittest.TestCase):
    def setUp(self):
        self.temp=tempfile.TemporaryDirectory();self.addCleanup(self.temp.cleanup)
        for p in (patch.object(service,'STORE',Path(self.temp.name)/'store'),
                  patch.object(service,'live_lock',nullcontext),
                  patch.dict(os.environ,{'LOCALAPPDATA':self.temp.name})):
            p.start();self.addCleanup(p.stop)
        service.STORE.mkdir()
        self.domain={'session':'s','database':'db','oid':'o','process_epoch':'epoch'}
        self.before={'generation':1,'diagram':'Main','diagram_kind':'block_diagram','targets':[], 'entries':[]}
        self.after={**self.before,'entries':[{'kind':'node','ref':'n1','literal':'1','pins':[],'anchor':[10,10]}]}
        self.request={'domain':self.domain,'request_id':'lost','component':'BDE_Tool_Experiments\\Trial_test',
                      'operation':'create_block','diagram':'Main','arguments':[[],'literal','1',10,10,''],
                      'expect':fingerprint(self.before)}
        self.token='edit_'+fingerprint({'domain':self.domain,'request_id':'lost'})
        self.log=StructureJournal(service.STORE/'edits');self.events=[]
        self.path=self.log._path(self.token);self.path.mkdir()
        for kind,payload in [('intent',self.request),('prepared',{'before':self.before}),('started',{}),
                             ('finished',{'status':'outcome_unknown'})]:
            self.log._append(self.path,self.events,kind,payload)
        binding(self.request,self.request['component'],'s_'+'1'*32)
        self.marker=pending.begin(self.domain,'apply',self.token)
        self.native={'state':'applied','before':self.before,'after':self.after,'current':self.after}
        self.adapter=patch.object(recovery,'NativeStructureAdapter').start()
        self.addCleanup(patch.stopall)
        self.adapter.return_value.__enter__.return_value.recovery_status.side_effect=lambda *a:self.native

    def invoke(self):
        return service.handle('bd_inspect',{'query':'recovery','change_id':self.token,'reconcile':True},'s')

    def test_terminal_evidence_recovers_without_replaying_setter(self):
        result=json.loads(self.invoke()['content'].split('\n\n',1)[1])
        self.assertTrue(result['reconciled'])
        self.assertEqual(result['receipt']['status'],'applied_observed')
        self.assertFalse(self.marker.exists())
        self.adapter.return_value.__enter__.return_value.apply.assert_not_called()

    def test_operator_integer_arity_reconciles_without_enum_string_conversion(self):
        request = {**self.request, 'arguments': [[], 'operator', '+', 10, 10, 2]}
        events = [*self.events]
        events[0] = {**events[0], 'payload': request}
        with patch.object(StructureJournal, 'read', return_value=events):
            result = json.loads(self.invoke()['content'].split('\n\n', 1)[1])
        self.assertTrue(result['reconciled'])
        self.assertEqual(result['model_setters_called'], 0)
        self.assertEqual(result['receipt']['status'], 'postcondition_mismatch')
        self.adapter.return_value.__enter__.return_value.apply.assert_not_called()

    def test_incomplete_or_changed_or_other_request_stays_quarantined(self):
        for native in ({**self.native,'state':'started'}, {**self.native,'current':self.before},
                       {**self.native,'before':self.after}):
            with self.subTest(native=native):
                self.native=native
                with self.assertRaises(service.ToolError):self.invoke()
                self.assertTrue(self.marker.exists())
        self.native={'state':'applied','before':self.before,'after':self.after,'current':self.after}
        marker=json.loads(self.marker.read_text());marker['native_token']='edit_'+'f'*64
        self.marker.write_text(json.dumps(marker))
        with self.assertRaises(service.ToolError):self.invoke()
        self.assertTrue(self.marker.exists())

    def test_durable_final_failure_cannot_release_quarantine(self):
        original=StructureJournal._append
        def fail(log,path,events,kind,payload):
            if kind=='finished':raise OSError('disk unavailable')
            return original(log,path,events,kind,payload)
        with patch.object(StructureJournal,'_append',fail):
            with self.assertRaises(OSError):self.invoke()
        self.assertTrue(self.marker.exists())
        self.assertEqual(self.log.receipt(self.token,self.log.read(self.token))['status'],'outcome_unknown')
        self.invoke()
        self.assertFalse(self.marker.exists())

    def inverse(self, restored, state='reverted'):
        self.log._append(self.path,self.events,'observed',{'after':self.after,'library_effects':[]})
        self.log._append(self.path,self.events,'finished',{'status':'applied_observed'})
        original=self.token
        request={'domain':self.domain,'request_id':'inverse-lost','reverts':original}
        self.token='edit_'+fingerprint({'domain':self.domain,'request_id':request['request_id']})
        self.path=self.log._path(self.token);self.path.mkdir();self.events=[]
        for kind,payload in [('intent',request),('prepared',{'before':self.after}),('started',{}),
                             ('finished',{'status':'outcome_unknown'})]:
            self.log._append(self.path,self.events,kind,payload)
        binding(request,self.request['component'],'s_'+'1'*32)
        pending.confirmed(self.marker)
        self.marker=pending.begin(self.domain,'revert',original)
        self.native={'state':state,'before':self.before,'after':restored,'current':restored}

    def test_inverse_terminal_reply_must_restore_original_not_just_match_current(self):
        self.inverse(self.after)
        result=json.loads(self.invoke()['content'].split('\n\n',1)[1])
        self.assertEqual(result['receipt']['status'],'restore_mismatch')
        self.assertFalse(self.marker.exists())
        self.adapter.return_value.__enter__.return_value.release.assert_not_called()

    def test_native_restore_mismatch_is_recorded_without_releasing_recovery(self):
        self.inverse(self.after,'restore_mismatch')
        result=json.loads(self.invoke()['content'].split('\n\n',1)[1])
        self.assertEqual(result['receipt']['status'],'restore_mismatch')
        self.adapter.return_value.__enter__.return_value.release.assert_not_called()

    def test_exact_inverse_can_release_after_durable_verification(self):
        self.inverse(self.before)
        result=json.loads(self.invoke()['content'].split('\n\n',1)[1])
        self.assertEqual(result['receipt']['status'],'verified_local')
        self.adapter.return_value.__enter__.return_value.release.assert_called_once()

    def test_shared_enum_without_library_evidence_stays_unknown(self):
        from unittest.mock import patch
        request={**self.request,'arguments':[[],'enumeration','Mode',10,10,'NEWENUM|ModeType|Off,On']}
        # Simulate an existing durable shared-definition intent, not a model write.
        self.events[0]['payload']=request
        with patch.object(StructureJournal,'read',return_value=self.events):
            with self.assertRaises(service.ToolError):self.invoke()
        self.assertTrue(self.marker.exists())
        self.adapter.return_value.__enter__.return_value.release.assert_not_called()

    def hierarchy(self):
        from test_bd_scope_effects import HierarchyAdapter
        fixture = HierarchyAdapter()
        fixture.apply('fixture')
        self.request['arguments'] = [[], 'hierarchy', 'Stage', 100, 100, 'Signal|']
        self.events[0]['payload'] = self.request
        self.before = fixture.before
        self.after = fixture.state
        next(e for e in self.events if e['kind'] == 'prepared')['payload']['before'] = self.before
        self.native = {'state': 'applied', 'before': self.before, 'after': self.after, 'current': self.after,
                       'scope_effects': fixture.scope_effects, 'current_scopes_match_terminal': True}
        return fixture.effect

    def test_hierarchy_matching_parent_cannot_hide_missing_or_changed_child(self):
        self.hierarchy()
        for override in ({'scope_effects': []}, {'current_scopes_match_terminal': False}):
            with self.subTest(override=override), patch.object(StructureJournal, 'read', return_value=self.events):
                native = self.native
                self.native = {**native, **override}
                with self.assertRaises(service.ToolError): self.invoke()
                self.assertTrue(self.marker.exists())
                self.native = native

    def test_hierarchy_scope_receipt_is_recovered_without_setter(self):
        effect = self.hierarchy()
        with patch.object(StructureJournal, 'read', return_value=self.events):
            result = json.loads(self.invoke()['content'].split('\n\n', 1)[1])
        self.assertEqual(result['receipt']['status'], 'applied_observed')
        self.assertEqual(result['receipt']['scope_effects'], [effect])
        self.assertEqual(len(result['receipt']['scope_after_snapshots']), 1)
        self.adapter.return_value.__enter__.return_value.apply.assert_not_called()
        self.assertFalse(self.marker.exists())

    def test_durable_hierarchy_after_conflict_cannot_release_quarantine(self):
        self.hierarchy()
        self.log._append(self.path, self.events, 'observed', {'after': self.after, 'scope_effects': []})
        self.log._append(self.path, self.events, 'finished', {'status': 'applied_observed'})
        with patch.object(StructureJournal, 'read', return_value=self.events):
            with self.assertRaises(service.ToolError): self.invoke()
        self.assertTrue(self.marker.exists())

    def test_hierarchy_inverse_requires_exact_inverse_scope_and_publishes_no_child(self):
        from bd_scope_effects import inverse_effects
        effect = self.hierarchy()
        self.inverse(self.before)
        original_read = self.log.read
        def read(log, token):
            events = original_read(token)
            if 'operation' in events[0]['payload']:
                events[0]['payload'] = self.request
                next(e for e in events if e['kind'] == 'prepared')['payload']['before'] = self.before
                next(e for e in events if e['kind'] == 'observed')['payload'].update(after=self.after, scope_effects=[effect])
            return events
        self.native.update(scope_effects=inverse_effects([effect]), current_scopes_match_terminal=True)
        with patch.object(StructureJournal, 'read', read):
            result = json.loads(self.invoke()['content'].split('\n\n', 1)[1])
        self.assertEqual(result['receipt']['status'], 'verified_local')
        self.assertEqual(result['receipt']['scope_after_snapshots'], [])
        self.adapter.return_value.__enter__.return_value.release.assert_called_once()

    def shared_enum(self):
        self.request['arguments']=[[],'enumeration','Mode',10,10,'NEWENUM|ModeType|Off,On']
        self.events[0]['payload']=self.request
        self.after['entries'][0]['model_ref']='m_1'
        self.after['entries'].append({'kind':'model','ref':'m_1','name':'Mode','native_class':'EtasAPIModelScalar',
            'model_type':'enum','enum_values':['Off','On'],
            'definition':{'oid':'enum-oid','path':'BDE_Tool_Experiments\\ModeType'}})
        return {'kind':'enumeration_definition','path':'BDE_Tool_Experiments\\ModeType',
                'oid':'enum-oid','before':None,'after':{'items':['Off','On']}}

    def test_shared_enum_matching_graph_cannot_hide_library_change(self):
        effect=self.shared_enum()
        for native in ({'library_effects':[effect],'current_library_matches_terminal':False},
                       {'library_effects':None,'current_library_matches_terminal':True}):
            with self.subTest(native=native), patch.object(StructureJournal,'read',return_value=self.events):
                self.native.update(native)
                with self.assertRaises(service.ToolError):self.invoke()
                self.assertTrue(self.marker.exists())

    def test_shared_enum_terminal_effect_is_not_inferred_from_intent(self):
        effect=self.shared_enum()
        self.native.update(library_effects=[effect],current_library_matches_terminal=True)
        with patch.object(StructureJournal,'read',return_value=self.events):
            result=json.loads(self.invoke()['content'].split('\n\n',1)[1])
        self.assertEqual(result['receipt']['library_effects'],[effect])
        self.assertFalse(self.marker.exists())

    def test_already_durable_shared_enum_still_checks_current_library(self):
        effect=self.shared_enum()
        self.log._append(self.path,self.events,'observed',{'after':self.after,'library_effects':[effect]})
        self.log._append(self.path,self.events,'finished',{'status':'applied_observed'})
        self.native.update(library_effects=[effect],current_library_matches_terminal=False)
        with patch.object(StructureJournal,'read',return_value=self.events):
            with self.assertRaises(service.ToolError):self.invoke()
        self.assertTrue(self.marker.exists())

    def test_shared_enum_inverse_requires_actual_inverse_library_effect(self):
        effect=self.shared_enum()
        self.inverse(self.before)
        original_read=self.log.read
        def read(log, token):
            events=original_read(token)
            if 'operation' in events[0]['payload']:
                events[0]['payload']=self.request
                next(e for e in events if e['kind']=='observed')['payload']['library_effects']=[effect]
            return events
        self.native.update(library_effects=[effect],current_library_matches_terminal=True)
        with patch.object(StructureJournal,'read',read):
            result=json.loads(self.invoke()['content'].split('\n\n',1)[1])
        self.assertEqual(result['receipt']['status'],'restore_mismatch')
        self.adapter.return_value.__enter__.return_value.release.assert_not_called()

    def parent_order(self):
        from test_bd_parent_order_effects import image, effect
        from test_bd_native_graphical_journal import GraphicalAdapter
        pending.confirmed(self.marker)
        self.request.update(request_id='order-lost', operation='delete_node', arguments=[['n1'], 'n1'])
        self.before = {**self.before, 'entries': [{'kind': 'node', 'ref': 'n1', 'pins': []}]}
        self.after = {**self.before, 'entries': []}
        self.request['expect'] = fingerprint(self.before)
        self.token = 'edit_' + fingerprint({'domain': self.domain, 'request_id': self.request['request_id']})
        self.path = self.log._path(self.token)
        self.path.mkdir()
        self.events = []
        order_before = image(['o3', 'o4', 'o5'], self.token)
        order_after = image(['o3', 'o5'], self.token)
        raw_before = GraphicalAdapter.image([1, 2, 3])
        raw_actual = GraphicalAdapter.actual([1, 2, 3], [1, 3])
        for kind, payload in [('intent', self.request), ('prepared', {'before': self.before,
                'parent_order_before': order_before, 'parent_order_expected': order_after,
                'graphical_current': raw_before, 'graphical_signature': self.token + '/g1'}),
                ('started', {}), ('finished', {'status': 'outcome_unknown'})]:
            self.log._append(self.path, self.events, kind, payload)
        binding(self.request, self.request['component'], 's_'+'1'*32)
        self.marker = pending.begin(self.domain, 'apply', self.token)
        self.native = {'state': 'applied', 'before': self.before, 'after': self.after, 'current': self.after,
            'parent_order_effects': [effect(order_before, order_after)], 'parent_order_original': order_before,
            'parent_order_started': order_before, 'parent_order_current': order_after,
            'current_parent_order_matches_terminal': True, 'current_edge_dependencies_match_terminal': True,
            'graphical_original': raw_before, 'graphical_started': raw_before, 'graphical_actual': raw_actual,
            'graphical_signature': self.token + '/g1', 'current_graphical_matches_terminal': True}
        return order_before, order_after

    def test_order_unknown_receipt_reconciles_actual_effect_without_setter(self):
        before, after = self.parent_order()
        result = json.loads(self.invoke()['content'].split('\n\n', 1)[1])
        self.assertEqual(result['receipt']['status'], 'applied_observed')
        self.assertNotIn('parent_order_effects', result['receipt'])
        self.assertEqual(result['receipt']['parent_order_differences'][0]['removed'], [{'native_ref': 'o4', 'index': 1}])
        observed = next(e['payload'] for e in self.log.read(self.token) if e['kind'] == 'observed')
        self.assertEqual(observed['parent_order_effects'], self.native['parent_order_effects'])
        self.assertEqual(observed['graphical_actual'], self.native['graphical_actual'])
        self.assertEqual(result['receipt']['graphical_differences']['changed_entries'], 1)
        self.assertNotIn('graphical_actual', result['receipt'])
        self.assertFalse(self.marker.exists())
        self.adapter.return_value.__enter__.return_value.apply.assert_not_called()

    def test_graph_terminal_equality_cannot_hide_changed_or_missing_order_evidence(self):
        before, after = self.parent_order()
        overrides = [{'parent_order_effects': []}, {'current_parent_order_matches_terminal': False},
            {'current_edge_dependencies_match_terminal': False},
            {'parent_order_started': after}, {'parent_order_original': after},
            {'parent_order_current': {**after, 'members': after['members'][::-1]}}]
        for override in overrides:
            with self.subTest(override=override):
                native = self.native
                self.native = {**native, **override}
                with self.assertRaises(service.ToolError):
                    self.invoke()
                self.assertTrue(self.marker.exists())
                self.native = native

    def test_legacy_deletion_without_durable_current_order_stays_quarantined(self):
        self.parent_order()
        prepared = next(e['payload'] for e in self.events if e['kind'] == 'prepared')
        prepared.pop('parent_order_before')
        with patch.object(StructureJournal, 'read', return_value=self.events):
            with self.assertRaises(service.ToolError):
                self.invoke()
        self.assertTrue(self.marker.exists())

    def test_inverse_order_reconciliation_keeps_independent_members_from_durable_current(self):
        from test_bd_parent_order_effects import image, effect
        from test_bd_native_graphical_journal import GraphicalAdapter
        before, after = self.parent_order()
        self.log._append(self.path, self.events, 'observed', {'after': self.after,
            'parent_order_effects': self.native['parent_order_effects'],
            **recovery.graphical_observation(self.events[1]['payload'], self.events[1]['payload'], self.native, self.token)})
        self.log._append(self.path, self.events, 'finished', {'status': 'applied_observed'})
        original_token = self.token
        original_request = {'domain': self.domain, 'request_id': 'order-inverse', 'reverts': original_token}
        self.token = 'edit_' + fingerprint({'domain': self.domain, 'request_id': original_request['request_id']})
        self.path = self.log._path(self.token)
        self.path.mkdir()
        self.events = []
        current_order, restored_order = image(['o6', 'o3', 'o5'], original_token), image(['o6', 'o3', 'o4', 'o5'], original_token)
        raw_current = GraphicalAdapter.image([4, 1, 3])
        for kind, payload in [('intent', original_request), ('prepared', {'before': self.after,
                'parent_order_before': current_order, 'parent_order_expected': restored_order,
                'graphical_current': raw_current, 'graphical_signature': original_token + '/g2'}),
                ('started', {}), ('finished', {'status': 'outcome_unknown'})]:
            self.log._append(self.path, self.events, kind, payload)
        binding(original_request, self.request['component'], 's_'+'1'*32)
        pending.confirmed(self.marker)
        self.marker = pending.begin(self.domain, 'revert', original_token)
        self.native.update(state='reverted', after=self.before, current=self.before,
            parent_order_effects=[effect(current_order, restored_order)], parent_order_original=before,
            parent_order_started=current_order, parent_order_current=restored_order,
            graphical_started=raw_current, graphical_signature=original_token + '/g2',
            graphical_actual=GraphicalAdapter.actual([4, 1, 3], [4, 1, 2, 3]))
        result = json.loads(self.invoke()['content'].split('\n\n', 1)[1])
        self.assertEqual(result['receipt']['status'], 'verified_local')
        self.assertEqual(result['receipt']['parent_order_differences'][0]['added'], [{'native_ref': 'o4', 'index': 2}])
        self.adapter.return_value.__enter__.return_value.release.assert_called_once()

    def test_public_terminal_match_cannot_hide_raw_original_current_signature_or_drift(self):
        self.parent_order()
        from test_bd_native_graphical_journal import GraphicalAdapter
        overrides = [{'graphical_original': None}, {'graphical_started': GraphicalAdapter.image([3, 2, 1])},
            {'graphical_signature': self.token + '/g2'}, {'current_graphical_matches_terminal': False},
            {'current_graphical_matches_terminal': 1}, {'graphical_actual': None},
            {'graphical_actual': GraphicalAdapter.actual([3, 2, 1], [1, 3])}]
        original = self.native
        for override in overrides:
            with self.subTest(override=override):
                self.native = {**original, **override}
                with self.assertRaises(service.ToolError): self.invoke()
                self.assertTrue(self.marker.exists())
                self.assertFalse(any(e['kind'] == 'reconciliation' for e in self.log.read(self.token)))
        self.adapter.return_value.__enter__.return_value.apply.assert_not_called()

    def test_order_legacy_raw_preparation_cannot_reconcile(self):
        self.parent_order()
        events = deepcopy(self.events)
        events[1]['payload'].pop('graphical_current')
        with patch.object(StructureJournal, 'read', return_value=events):
            with self.assertRaises(service.ToolError): self.invoke()
        self.assertTrue(self.marker.exists())

    def test_conflicting_durable_raw_actual_keeps_quarantine(self):
        self.parent_order()
        raw = recovery.graphical_observation(self.events[1]['payload'], self.events[1]['payload'], self.native, self.token)
        raw = deepcopy(raw)
        raw['graphical_actual']['changes'][0]['after'] = [3, 1]
        self.log._append(self.path, self.events, 'observed', {'after': self.after,
            'parent_order_effects': self.native['parent_order_effects'], **raw})
        with self.assertRaises(service.ToolError): self.invoke()
        self.assertTrue(self.marker.exists())

    def test_actual_graphical_publication_failure_retains_quarantine(self):
        self.parent_order()
        append = StructureJournal._append
        def fail(log, path, events, kind, payload):
            if kind == 'observed': raise OSError('Raw actual publication failed')
            return append(log, path, events, kind, payload)
        with patch.object(StructureJournal, '_append', fail):
            with self.assertRaises(OSError): self.invoke()
        self.assertTrue(self.marker.exists())
        self.adapter.return_value.__enter__.return_value.apply.assert_not_called()

    def test_released_record_without_raw_durable_proof_refuses_before_native(self):
        self.parent_order()
        self.log._append(self.path, self.events, 'observed', {'after': self.after})
        self.log._append(self.path, self.events, 'reconciliation', {'setter_called': False})
        self.log._append(self.path, self.events, 'recovery_released', {'released': True})
        pending.confirmed(self.marker)
        with self.assertRaises(service.ToolError): self.invoke()
        self.adapter.return_value.__enter__.return_value.recovery_status.assert_not_called()

    def local_value_inverse(self, with_drawing=False):
        from test_bd_delete_inverse import graph, deleted
        from test_bd_parent_order_effects import image, effect
        from test_bd_native_graphical_journal import GraphicalAdapter
        from bd_delete_inverse import plan, summary
        self.adapter.return_value.__enter__.return_value.release.return_value = {'released': True}
        pending.confirmed(self.marker)
        self.before = graph()
        self.after = deleted(self.before)
        self.request.update(request_id='local-original', operation='delete_node',
                            arguments=[[row['ref'] for row in self.before['entries']], 'n1'],
                            expect=fingerprint(self.before))
        original_token = 'edit_' + fingerprint({'domain': self.domain, 'request_id': self.request['request_id']})
        original_path = self.log._path(original_token)
        original_path.mkdir()
        original_events = []
        original_order = image(['o3', 'o4', 'o5', 'o6'], original_token)
        applied_order = image(['o5', 'o6'], original_token)
        raw_original = GraphicalAdapter.image([1, 2, 3, 4])
        raw_current = GraphicalAdapter.image([3, 4])
        from test_bd_drawing_order_effects import image as drawing_image, effect as drawing_effect
        drawing_original = drawing_image(original_order['members'], original_token)
        drawing_applied = drawing_image(applied_order['members'], original_token)
        original_drawing = [drawing_effect(drawing_original, drawing_applied)]
        inverse_drawing = [drawing_effect(drawing_applied, drawing_original)]
        from bd_drawing_order_effects import differences as drawing_diff
        for kind, payload in [('intent', self.request), ('prepared', {'before': self.before,
                'parent_order_before': original_order, 'parent_order_expected': applied_order,
                'graphical_current': raw_original, 'graphical_signature': original_token + '/g1',
                **({'drawing_order_before': drawing_original, 'drawing_order_expected': drawing_applied} if with_drawing else {})}),
                ('started', {}), ('observed', {'after': self.after,
                    'parent_order_effects': [effect(original_order, applied_order)],
                    **({'drawing_order_effects': original_drawing, 'drawing_order_differences': drawing_diff(original_drawing)}
                       if with_drawing else {})}),
                ('finished', {'status': 'applied_observed'})]:
            self.log._append(original_path, original_events, kind, payload)
        current = deepcopy(self.after)
        current['entries'][0]['operator'] = '-'
        value = plan(self.before, self.after, current)
        inverse = {'domain': self.domain, 'request_id': 'local-inverse', 'reverts': original_token}
        self.token = 'edit_' + fingerprint({'domain': self.domain, 'request_id': inverse['request_id']})
        self.path = self.log._path(self.token)
        self.path.mkdir()
        self.events = []
        for kind, payload in [('intent', inverse), ('prepared', {'before': current,
                'inverse_expected': value['expected'], 'inverse_analysis': summary(value, current),
                'parent_order_before': applied_order, 'parent_order_expected': original_order,
                'graphical_current': raw_current, 'graphical_signature': original_token + '/g2',
                **({'drawing_order_before': drawing_applied, 'drawing_order_expected': drawing_original} if with_drawing else {})}),
                ('started', {}), ('finished', {'status': 'outcome_unknown'})]:
            self.log._append(self.path, self.events, kind, payload)
        binding(inverse, self.request['component'], 's_' + '1' * 32)
        self.marker = pending.begin(self.domain, 'revert', original_token)
        self.native = {'state': 'reverted', 'before': self.before, 'after': value['expected'],
            'current': value['expected'], 'inverse_expected': value['expected'],
            'parent_order_original': original_order, 'parent_order_started': applied_order,
            'parent_order_current': original_order, 'parent_order_effects': [effect(applied_order, original_order)],
            'current_parent_order_matches_terminal': True, 'current_edge_dependencies_match_terminal': True,
            'graphical_original': raw_original, 'graphical_started': raw_current,
            'graphical_actual': GraphicalAdapter.actual([3, 4], [1, 2, 3, 4]),
            'graphical_signature': original_token + '/g2', 'current_graphical_matches_terminal': True}
        if with_drawing:
            self.native.update(drawing_order_original=drawing_original, drawing_order_started=drawing_applied,
                drawing_order_current=drawing_original, drawing_order_effects=inverse_drawing,
                current_drawing_order_matches_terminal=True)
        return value['expected']

    def test_three_way_lost_inverse_receipt_preserves_value_and_released_fast_path(self):
        expected = self.local_value_inverse()
        result = json.loads(self.invoke()['content'].split('\n\n', 1)[1])
        self.assertEqual(result['receipt']['status'], 'verified_local')
        observed = next(e['payload'] for e in self.log.read(self.token) if e['kind'] == 'observed')
        self.assertEqual(observed['after'], expected)
        again = json.loads(self.invoke()['content'].split('\n\n', 1)[1])
        self.assertEqual(again['native_state'], 'released')
        native = self.adapter.return_value.__enter__.return_value
        native.recovery_status.assert_called_once()
        native.apply.assert_not_called()
        native.revert.assert_not_called()

    def test_three_way_native_expectation_disagreement_retains_quarantine(self):
        self.local_value_inverse()
        self.native['inverse_expected'] = self.before
        with self.assertRaises(service.ToolError):
            self.invoke()
        self.assertTrue(self.marker.exists())
        self.adapter.return_value.__enter__.return_value.release.assert_not_called()

    def test_missing_durable_three_way_plan_retains_native_terminal_quarantine(self):
        self.local_value_inverse()
        original_read = StructureJournal.read
        def read(log, token):
            events = original_read(log, token)
            if token == self.token:
                next(e['payload'] for e in events if e['kind'] == 'prepared').pop('inverse_expected')
            return events
        with patch.object(StructureJournal, 'read', read), self.assertRaises(service.ToolError):
            self.invoke()
        self.assertTrue(self.marker.exists())
        self.adapter.return_value.__enter__.return_value.release.assert_not_called()

    def test_released_three_way_inverse_requires_recomputed_durable_expectation(self):
        self.local_value_inverse()
        self.invoke()
        original_read = StructureJournal.read
        for tamper in ('expected', 'after', 'missing'):
            def read(log, token):
                events = original_read(log, token)
                if token == self.token:
                    if tamper == 'after':
                        next(e['payload'] for e in events if e['kind'] == 'observed')['after'] = self.before
                    else:
                        payload = next(e['payload'] for e in events if e['kind'] == 'prepared')
                        if tamper == 'missing':
                            payload.pop('inverse_expected')
                        else:
                            payload['inverse_expected'] = self.before
                return events
            with self.subTest(tamper=tamper), patch.object(StructureJournal, 'read', read):
                with self.assertRaises(service.ToolError):
                    self.invoke()
        self.adapter.return_value.__enter__.return_value.recovery_status.assert_called_once()

    def test_drawing_lost_inverse_and_released_route_validate_without_setter(self):
        self.local_value_inverse(with_drawing=True)
        result = json.loads(self.invoke()['content'].split('\n\n', 1)[1])
        self.assertEqual(result['receipt']['status'], 'verified_local')
        self.assertEqual(result['receipt']['drawing_order_differences'][0]['added'],
                         [{'native_ref': 'o3', 'index': 0}, {'native_ref': 'o4', 'index': 1}])
        again = json.loads(self.invoke()['content'].split('\n\n', 1)[1])
        self.assertEqual(again['native_state'], 'released')
        native = self.adapter.return_value.__enter__.return_value
        native.recovery_status.assert_called_once()
        native.apply.assert_not_called()
        native.revert.assert_not_called()

    def test_missing_drawing_original_or_inverse_preparation_cannot_release(self):
        self.local_value_inverse(with_drawing=True)
        original_read = StructureJournal.read
        for missing_from in ('original', 'inverse'):
            def read(log, token):
                events = original_read(log, token)
                if (token == self.token) is (missing_from == 'inverse'):
                    prepared = next(e['payload'] for e in events if e['kind'] == 'prepared')
                    prepared.pop('drawing_order_before')
                    prepared.pop('drawing_order_expected')
                return events
            with self.subTest(missing_from=missing_from), patch.object(StructureJournal, 'read', read):
                with self.assertRaises(service.ToolError): self.invoke()
            self.assertTrue(self.marker.exists())
        self.adapter.return_value.__enter__.return_value.release.assert_not_called()

    def test_released_inverse_cannot_skip_missing_or_corrupted_drawing_evidence(self):
        self.local_value_inverse(with_drawing=True)
        self.invoke()
        original_read = StructureJournal.read
        for tamper in ('original', 'inverse', 'actual', 'summary', 'reconciled'):
            def read(log, token):
                events = original_read(log, token)
                if tamper in ('original', 'inverse') and ((token == self.token) is (tamper == 'inverse')):
                    prepared = next(e['payload'] for e in events if e['kind'] == 'prepared')
                    prepared.pop('drawing_order_before')
                    prepared.pop('drawing_order_expected')
                elif token == self.token and tamper in ('actual', 'summary'):
                    observed = next(e['payload'] for e in events if e['kind'] == 'observed')
                    observed.pop('drawing_order_effects' if tamper == 'actual' else 'drawing_order_differences')
                elif token == self.token and tamper == 'reconciled':
                    next(e['payload'] for e in events if e['kind'] == 'reconciliation')['drawing_order_differences'] = []
                return events
            with self.subTest(tamper=tamper), patch.object(StructureJournal, 'read', read):
                with self.assertRaises(service.ToolError): self.invoke()
        self.adapter.return_value.__enter__.return_value.recovery_status.assert_called_once()


if __name__=='__main__':unittest.main()
