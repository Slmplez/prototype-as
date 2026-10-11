"""Binding, dirty census and write-boundary controls; no live ASCET validation."""
import copy
import unittest
from unittest.mock import Mock

from bd_commit_resources import validate, status, summary, validate_models
from bd_edit_journal import NativePreconditionConflict
from bd_native_structure import NativeStructureAdapter

TOKEN = 'edit_' + 'a' * 64
OID = 'fixture_oid'


def receipt():
    return dict(profile='native_commit_prepare_v1', native_token=TOKEN, resource_token='commit_' + 'a' * 64,
        component_oid=OID, generation=7, phase='captured', cache_entries=20,
        retained_original_fields=25, retained_original_values=30,
        record_summaries=[dict(role=role, logical_size=100, allocated_size=120)
                         for role in ('owner', 'owner_references', 'owner_referenced_by')],
        modified_object_oids=[], ctree_direct_changed_fields=16, current_read_resources_unchanged=False,
        has_unrelated_pending_objects=False, original_material_held=True, same_native_dispatch=True,
        full_commit_resource_closure=False, write_authorized=False, inverse_authorized=False,
        model_setters_called=0, store_called=False, commit_called=False)


def status_receipt(checked=False):
    value=dict(profile='native_commit_status_v1',action='check' if checked else 'inspect',
        native_token=TOKEN,resource_token='commit_'+'a'*64,component_oid=OID,generation=7,phase='captured',
        prepared_edit_present=False,original_material_held=True,same_original_binding=True,
        model_setters_called=0,store_called=False,commit_called=False,write_authorized=False,
        inverse_authorized=False,full_commit_resource_closure=False,prepared_receipt=receipt(),
        current_resources_checked=checked,actual_changes=None)
    if checked:
        value.update(actual_changes=[dict(category='since_preparation',locus='cache_entry/r1',field='timeStamp',
            before={'class':'Integer','kind':'atom','value':'10'},after={'class':'Integer','kind':'atom','value':'11'})],
            logical_records_match_retained=True,matches_retained_before_read=False,
            matches_retained_after_read=False,current_read_resources_unchanged=True)
    return value


class CommitResourceTests(unittest.TestCase):
    def check(self, value):
        return validate(value, token=TOKEN, component_oid=OID)

    def test_foreign_dirty_project_is_reported_and_retained(self):
        value = receipt()
        value.update(modified_object_oids=['foreign_project'], has_unrelated_pending_objects=True)
        self.assertEqual(self.check(value), value)
        value['has_unrelated_pending_objects'] = False
        with self.assertRaises(ValueError): self.check(value)

    def test_read_effects_do_not_become_unchanged_or_write_authority(self):
        value = self.check(receipt())
        self.assertFalse(value['current_read_resources_unchanged'])
        self.assertEqual(value['ctree_direct_changed_fields'], 16)
        for key in ('write_authorized', 'inverse_authorized', 'full_commit_resource_closure',
                    'store_called', 'commit_called'):
            with self.subTest(key=key), self.assertRaises(ValueError):
                self.check({**value, key: True})

    def test_binding_generation_and_incomplete_records_refused(self):
        for key, replacement in [('native_token', 'edit_' + 'b' * 64), ('resource_token', 'commit_' + 'b' * 64),
                ('component_oid', 'foreign'), ('generation', True), ('generation', 0),
                ('original_material_held', False), ('same_native_dispatch', False),
                ('record_summaries', receipt()['record_summaries'][:2])]:
            with self.subTest(key=key), self.assertRaises(ValueError):
                self.check({**receipt(), key: replacement})

    def test_allocation_tail_not_treated_as_missing_record(self):
        value = receipt(); value['record_summaries'][1]['allocated_size'] = 200
        self.assertEqual(self.check(value)['record_summaries'][1]['logical_size'], 100)
        value['record_summaries'][1]['allocated_size'] = 99
        with self.assertRaises(ValueError): self.check(value)

    def test_malformed_and_duplicate_modified_census_refused(self):
        for oids in ([{}], ['x', 'x'], ['z', 'a'], [True]):
            with self.subTest(oids=oids), self.assertRaises(ValueError):
                self.check({**receipt(), 'modified_object_oids': oids})

    def test_fixed_profiles_reject_wrong_executor_scope_and_unknown(self):
        for env, scope in [({'ASCET_BD_COMMIT_RESOURCE_CAPTURE': 'arbitrary'}, 'Main'),
                ({'ASCET_BD_COMMIT_RESOURCE_CAPTURE': 'prepare_v1'}, 'Main'),
                ({'ASCET_BD_COMMIT_RESOURCE_CAPTURE': 'prepare_v1', 'ASCET_BD_OPERATION_EXECUTOR': 'staged_v1'}, 'Main/h1')]:
            with self.subTest(env=env, scope=scope), self.assertRaises(ValueError):
                NativeStructureAdapter('BDE_Tool_Experiments/Trial_Control', scope, environment=env)

    def test_capture_only_apply_never_begins_native_write(self):
        adapter = NativeStructureAdapter('BDE_Tool_Experiments/Trial_Control', environment={
            'ASCET_BD_COMMIT_RESOURCE_CAPTURE': 'prepare_v1', 'ASCET_BD_OPERATION_EXECUTOR': 'staged_v1'})
        adapter._exchange = Mock(side_effect=AssertionError('Unexpected native dispatch'))
        with self.assertRaises(NativePreconditionConflict): adapter.apply(TOKEN)
        adapter._exchange.assert_not_called()

    def test_preparation_unwraps_without_changing_original_graph(self):
        adapter = NativeStructureAdapter('BDE_Tool_Experiments/Trial_Control', environment={
            'ASCET_BD_COMMIT_RESOURCE_CAPTURE': 'prepare_v1', 'ASCET_BD_OPERATION_EXECUTOR': 'staged_v1'})
        adapter.domain = {'oid': OID}
        before = {'nodes': [], 'edges': [], 'targets': []}
        self.assertEqual(adapter._preparation({'preparation': before, 'commit_resources': receipt()}, TOKEN), before)
        self.assertEqual(adapter.commit_resources_prepared, receipt())
        self.assertFalse(adapter.commit_resources_prepared['write_authorized'])
        with self.assertRaises(ValueError): adapter._preparation(before, TOKEN)

    def test_legacy_preparation_rejects_unsolicited_resource_proof(self):
        adapter = NativeStructureAdapter('BDE_Tool_Experiments/Trial_Control', environment={})
        with self.assertRaises(ValueError):
            adapter._preparation({'preparation': {}, 'commit_resources': receipt()}, TOKEN)
        self.assertEqual(adapter._preparation({'nodes': []}, TOKEN), {'nodes': []})

    def test_released_prepared_edit_keeps_queryable_original_material(self):
        value=status(status_receipt(),token=TOKEN,component_oid=OID,checked=False)
        self.assertFalse(value['prepared_edit_present'])
        self.assertTrue(value['original_material_held'])
        self.assertFalse(value['current_resources_checked'])

    def test_current_timestamp_diff_not_hidden_or_normalized(self):
        value=status(status_receipt(True),token=TOKEN,component_oid=OID,checked=True)
        self.assertFalse(value['matches_retained_after_read'])
        self.assertEqual(value['actual_changes'][0]['after']['value'],'11')
        self.assertEqual(summary(value)['actual_change_count'],1)

    def test_agent_summary_exposes_compact_payload_ranges(self):
        value = status_receipt(True)
        value['actual_changes'] = [dict(category='since_preparation', locus='logical_record/owner',
            field='$logical_bytes', before=[0, 1, 2, 3], after=[0, 8, 2, 3])]
        checked = status(value, token=TOKEN, component_oid=OID, checked=True)
        compact = summary(checked)
        self.assertEqual(compact['payload_range_count'], 1)
        self.assertEqual(compact['payload_ranges'][0]['ranges'][0]['offset'], 1)
        self.assertNotIn('before', compact['payload_ranges'][0]['ranges'][0])

    def test_bounded_agent_locations_keep_full_durable_changes(self):
        value=status_receipt(True)
        value['actual_changes']=[dict(category='since_preparation',locus='cache_entry/r'+str(i),field='timeStamp',
            before=i,after=i+1) for i in range(45)]
        checked=status(value,token=TOKEN,component_oid=OID,checked=True)
        compact=summary(checked)
        self.assertEqual(len(checked['actual_changes']),45)
        self.assertEqual(len(compact['changed_locations']),32)
        self.assertTrue(compact['more_changed_locations'])
        self.assertNotIn('actual_changes',compact)

    def test_inspection_cannot_claim_a_live_diff(self):
        value=status_receipt();value['actual_changes']=[]
        with self.assertRaises(ValueError):status(value,token=TOKEN,component_oid=OID,checked=False)
        with self.assertRaises(ValueError):status(status_receipt(),token=TOKEN,component_oid=OID,checked=True)

    def test_status_cannot_rebind_generation_or_grant_inverse(self):
        for key,item in [('generation',8),('native_token','edit_'+'b'*64),('same_original_binding',False),
                ('inverse_authorized',True),('model_setters_called',True),('current_resources_checked',True)]:
            with self.subTest(key=key),self.assertRaises(ValueError):
                status({**status_receipt(),key:item},token=TOKEN,component_oid=OID,checked=False)

    def test_read_effect_diff_census_and_changed_value_are_strict(self):
        for edit in (dict(category='model_write'),dict(field=''),dict(after={'class':'Integer','kind':'atom','value':'10'})):
            value=status_receipt(True);value['actual_changes'][0].update(edit)
            with self.subTest(edit=edit),self.assertRaises(ValueError):
                status(value,token=TOKEN,component_oid=OID,checked=True)

    def models(self):
        return dict(profile='native_registered_sg_capture_v1',phase='captured',component_oid=OID,generation=7,
            registered_sg_roots=2,registered_sg_cache_entries=2,root_class_counts={'SGClass':1,'SGLibrary':1},
            objects=20,field_objects=4,value_objects=3,boundary_class_counts={'DBProxy':2},
            original_material_held=True,db_proxies_resolved=False,full_model_transitive_closure=False,
            model_setters_called=0,store_called=False,write_authorized=False,inverse_authorized=False)

    def test_loaded_model_receipt_is_explicit_and_does_not_grant_transitive_closure(self):
        value=receipt();value.update(profile='native_commit_prepare_v2',registered_models=self.models())
        self.assertEqual(self.check(value),value)
        self.assertFalse(self.check(value)['registered_models']['full_model_transitive_closure'])
        value['profile']='native_commit_prepare_v1'
        with self.assertRaises(ValueError):self.check(value)

    def test_loaded_model_incomplete_census_or_authority_is_refused(self):
        for key,value in (('registered_sg_roots',3),('root_class_counts',{'SGClass':1}),
                          ('generation',True),('db_proxies_resolved',True),('full_model_transitive_closure',True),
                          ('write_authorized',True),('original_material_held',False)):
            with self.subTest(key=key),self.assertRaises(ValueError):
                validate_models({**self.models(),key:value},component_oid=OID,generation=7)

    def test_registered_model_profile_requires_original_resource_capture(self):
        for profile in ('unknown','loaded_sg_v1'):
            with self.subTest(profile=profile),self.assertRaises(ValueError):
                NativeStructureAdapter('BDE_Tool_Experiments/Trial_Control',environment={
                    'ASCET_BD_COMMIT_REGISTERED_MODELS':profile})


if __name__ == '__main__': unittest.main()
