"""Message identity/role/reference rejection controls from actual material; no online oracle."""
from copy import deepcopy
import json
from pathlib import Path
import unittest
from unittest.mock import Mock

from bd_declaration_cache import classify
from bd_declaration_history import preparation as variable_preparation
from bd_declaration_material import schema
from bd_edit_journal import JournalError
from bd_message_declaration_history import initial_origin, preparation
from bd_message_declaration_material import TYPE_CLASS
from bd_native_structure import NativeStructureAdapter

ROOT=Path(__file__).resolve().parents[1]
SOURCE=ROOT/'analysis/bde-experiments/2026-10-06/bde-message-create-terminal-audit-01/result.json'


def fixture():
    material=json.loads(SOURCE.read_text(encoding='utf-8'))['material'];body=material['declaration_material']
    current=deepcopy(body['after']);objects,names=schema(current,body['after_schema'])
    rows=deepcopy(objects);rows.update({r['ref']:deepcopy(r) for r in body['before']['objects']})
    classified=classify(current,body['after_schema'],current,body['after_schema'],owner=body['owner_ref'],owner_class='SGModule')
    cache=dict(profile='native_declaration_read_cache_evidence_v1',previous_recorded=deepcopy(current),
        previous_schema=deepcopy(body['after_schema']),namespace_bindings=[[r['ref'],r['ref']] for r in current['objects']],
        recorded=deepcopy(current),recorded_schema=deepcopy(body['after_schema']),current=deepcopy(current),
        current_schema=deepcopy(body['after_schema']),owner_ref=body['owner_ref'],write_authorized=False,
        native_guard=dict(profile='native_declaration_cache_guard_v1',non_cache_original_state_unchanged=True,
            changed_entries=len(classified['changes']),new_objects=classified['new_objects'],cache_objects=classified['cache_objects'],
            model_setters_called=0,store_called=False,inverse_authorized=False))
    origin=initial_origin(material)
    proof=dict(profile='native_message_owner_history_evidence_v1',component_oid=material['component_oid'],
        generation=body['generation'],kind=body['kind'],request_name=body['request_name'],model_type=body['model_type'],
        message_scope=body['message_scope'],created_model_oid=material['created_model_oid'],
        owner_ref=body['owner_ref'],created_model_ref=body['created_model_ref'],owner_proxy_ref=origin['owner_proxy_ref'],
        owner_proxy_oid=material['component_oid'],owner_proxy_class='SGModule',type_ref=origin['type_ref'],
        native_type_class=TYPE_CLASS[body['model_type']],phase='current',model_present=True,target_model_present=False,
        same_original_owner=True,owner_proxy_resolves_to_original=True,same_created_model_retained=True,
        reference_source='readReferences_loaded_and_database',persisted_reference_source='readIsReferencedByOnly',
        model_setters_called=0,store_called=False,write_authorized=False)
    for prefix in ('owner_references','owner_database_record_references'):
        for suffix,src in (('original_before','before'),('original_after','after'),('current','after'),('expected','before')):
            proof[prefix+'_'+suffix]=deepcopy(body[prefix+'_'+src])
    return material,dict(profile='native_message_declaration_exact_target_v1',current=current,
        original=deepcopy(body['before']),expected=dict(profile='native_graphical_current_v1',complete=True,objects=list(rows.values())),
        current_schema=deepcopy(body['after_schema']),original_schema=deepcopy(body['before_schema']),
        expected_schema=deepcopy(body['after_schema']),owner_ref=body['owner_ref'],created_model_ref=body['created_model_ref'],
        created_model_oid=material['created_model_oid'],expected_model_present=False,same_original_objects_retained=True,
        read_cache_evidence=cache,message_evidence=proof)


class MessageHistoryTests(unittest.TestCase):
    def setUp(self):self.material,self.value=fixture()
    def validate(self):return preparation(self.value,expected_present=False,creation_material=self.material)
    def test_complete_original_module_target_and_proxy_bind(self):
        self.assertEqual(self.validate(),self.value)
    def test_owner_same_name_foreign_database_oid_rejected(self):
        self.value['message_evidence']['owner_proxy_oid']='foreign'
        with self.assertRaises(ValueError):self.validate()
    def test_owner_proxy_substitution_rejected(self):
        self.value['message_evidence']['owner_proxy_ref']=self.value['owner_ref']
        with self.assertRaisesRegex(ValueError,'namespace binding'):self.validate()
    def test_type_pointer_substitution_rejected(self):
        self.value['message_evidence']['type_ref']=self.value['owner_ref']
        with self.assertRaises(ValueError):self.validate()
    def test_enum_type_cannot_use_primitive_message_contract(self):
        self.value['message_evidence']['model_type']='enum'
        with self.assertRaises(ValueError):self.validate()
    def test_role_cannot_be_changed_from_receive_to_send(self):
        self.value['message_evidence']['kind']='send_message'
        with self.assertRaises(ValueError):self.validate()
    def test_scope_cannot_be_changed_independently_of_forward(self):
        self.value['message_evidence']['message_scope']='exported'
        with self.assertRaises(ValueError):self.validate()
    def test_false_proxy_resolution_rejected(self):
        self.value['message_evidence']['owner_proxy_resolves_to_original']=False
        with self.assertRaises(ValueError):self.validate()
    def test_current_reference_sets_are_guarded_separately(self):
        for prefix in ('owner_references','owner_database_record_references'):
            with self.subTest(prefix=prefix):
                prior=deepcopy(self.value);self.value['message_evidence'][prefix+'_current'].append(['z_foreign','SGProject'])
                with self.assertRaisesRegex(ValueError,'CURRENT/target'):self.validate()
                self.value=prior
    def test_original_reference_baseline_cannot_be_forged(self):
        self.value['message_evidence']['owner_database_record_references_original_before']=[]
        with self.assertRaisesRegex(ValueError,'baselines'):self.validate()
    def test_self_consistent_forged_original_body_rejected(self):
        row=next(r for r in self.value['original']['objects'] if r['kind']=='value' and r['class']=='String')
        row['value'].append(65)
        peer=next(r for r in self.value['expected']['objects'] if r['ref']==row['ref']);peer['value']=deepcopy(row['value'])
        with self.assertRaisesRegex(ValueError,'forward material'):self.validate()
    def test_actual_model_alias_cannot_be_replaced(self):
        self.value['created_model_oid']='m_'+'f'*40
        with self.assertRaisesRegex(ValueError,'model OID'):self.validate()
    def test_wrong_presence_direction_rejected(self):
        self.value['message_evidence']['target_model_present']=True
        with self.assertRaises(ValueError):self.validate()
    def test_variable_default_contract_still_rejects_module(self):
        with self.assertRaises(ValueError):variable_preparation(self.value,expected_present=False)
    def test_module_cache_is_not_implicitly_accepted_by_class_default(self):
        with self.assertRaisesRegex(ValueError,'SGClass'):
            classify(self.value['current'],self.value['current_schema'],self.value['current'],self.value['current_schema'],
                owner=self.value['owner_ref'])
    def test_prepare_profile_cannot_dispatch_executor_or_open_connection(self):
        env=dict(ASCET_BD_CREATE_MATERIAL='identity_v1',ASCET_BD_OPERATION_EXECUTOR='staged_v1',
            ASCET_BD_CREATE_HISTORY='native_source_exact_v1',ASCET_BD_CREATE_DECLARATIONS='message_body_v1',
            ASCET_BD_CREATE_DECLARATION_HISTORY='message_prepare_exact_v1')
        adapter=NativeStructureAdapter('BDE_Tool_Experiments\\Trial_Message',environment=env)
        self.assertTrue(adapter.create_message_history_preparation_capable);self.assertFalse(adapter.create_declaration_history_capable)
        adapter._ensure_open=Mock()
        with self.assertRaisesRegex(ValueError,'does not authorize'):
            adapter.execute_create_history({},dict(kind='receive_message'))
        adapter._ensure_open.assert_not_called()
    def test_message_profile_requires_module_original_capture(self):
        env=dict(ASCET_BD_CREATE_MATERIAL='identity_v1',ASCET_BD_OPERATION_EXECUTOR='staged_v1',
            ASCET_BD_CREATE_HISTORY='native_source_exact_v1',ASCET_BD_CREATE_DECLARATIONS='body_v1',
            ASCET_BD_CREATE_DECLARATION_HISTORY='message_prepare_exact_v1')
        with self.assertRaisesRegex(ValueError,'original Module'):NativeStructureAdapter('x',environment=env)


if __name__=='__main__':unittest.main()
