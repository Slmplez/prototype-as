"""Message closure controls from full retained live history; synthetic target, no live I/O."""
from copy import deepcopy
from functools import lru_cache
import json
from pathlib import Path
import unittest
from unittest.mock import Mock

from bd_declaration_cache import classify
from bd_declaration_history import reconstruct
from bd_message_declaration_finalize import preparation, observed, terminal_query
from bd_message_declaration_history import next_origin
from bd_create_finalize_journal import prepare as journal_prepare
from bd_edit_journal import JournalError
from bd_native_structure import NativeStructureAdapter
from test_bd_enum_create_history import actual_diff

ROOT=Path(__file__).resolve().parents[1]
TRIAL=ROOT/'analysis/bde-experiments/2026-10-06/bde-message-body-history-tools-01'


def remap(value,mapping):
    if type(value) is list:return [remap(v,mapping) for v in value]
    if type(value) is dict:return {k:mapping[v] if k=='ref' else remap(v,mapping) for k,v in value.items()}
    return deepcopy(value)


@lru_cache(maxsize=1)
def fixture():
    trial=json.loads((TRIAL/'result.json').read_text(encoding='utf-8'))
    forward=json.loads((TRIAL/'original-journal.json').read_text(encoding='utf-8'))
    material=next(e['payload']['create_material_actual'] for e in forward if e['kind']=='observed')
    body=material['declaration_material'];mapping={r['ref']:r['ref'] for r in body['before']['objects']}
    steps=[json.loads((TRIAL/(label+'-journal.json')).read_text(encoding='utf-8'))
           for label in ('undo','redo','undo-again')]
    for events in steps:
        p=next(e['payload']['create_history'] for e in events if e['kind']=='prepared')
        bindings=dict(p['declaration_evidence']['read_cache_evidence']['namespace_bindings'])
        mapping={old:bindings[new] for old,new in mapping.items()}
    actual=next(e['payload']['create_history_actual'] for e in steps[-1] if e['kind']=='observed')
    origin=next_origin(material,actual);current=reconstruct(actual['declaration_current'],actual['declaration_actual'])
    fields=deepcopy(actual['declaration_schema']);proof=deepcopy(actual['message_owner_evidence'])
    proof.update(profile='native_message_owner_finalize_evidence_v1',phase='current',
                 model_present=False,target_model_present=False)
    for prefix in ('owner_references','owner_database_record_references'):
        proof[prefix+'_expected']=deepcopy(body[prefix+'_before'])
    classified=classify(current,fields,current,fields,owner=proof['owner_ref'],owner_class='SGModule')
    cache=dict(profile='native_declaration_read_cache_evidence_v1',previous_recorded=current,previous_schema=fields,
        recorded=deepcopy(current),recorded_schema=deepcopy(fields),current=deepcopy(current),current_schema=deepcopy(fields),
        namespace_bindings=[[r['ref'],r['ref']] for r in current['objects']],owner_ref=proof['owner_ref'],write_authorized=False,
        native_guard=dict(profile='native_declaration_cache_guard_v1',non_cache_original_state_unchanged=True,
            changed_entries=0,new_objects=0,cache_objects=classified['cache_objects'],model_setters_called=0,
            store_called=False,inverse_authorized=False))
    before=remap(body['before'],mapping);before_schema=remap(body['before_schema'],mapping)
    rows={r['ref']:r for r in deepcopy(current)['objects']};rows.update({r['ref']:r for r in before['objects']})
    expected={**deepcopy(current),'objects':list(rows.values())}
    target=dict(profile='native_message_declaration_finalize_body_v1',current=current,current_schema=fields,
        original=before,original_schema=before_schema,expected=expected,expected_schema=deepcopy(fields),
        owner_ref=proof['owner_ref'],created_model_ref=proof['created_model_ref'],created_model_oid=material['created_model_oid'],
        expected_model_present=False,same_original_objects_retained=True,message_evidence=proof,read_cache_evidence=cache)
    binding=dict(profile='native_declaration_image_binding_v1',previous_recorded=deepcopy(body['before']),
        previous_schema=deepcopy(body['before_schema']),recorded=before,recorded_schema=before_schema,
        namespace_bindings=[[old,new] for old,new in mapping.items()])
    return dict(profile='native_message_declaration_finalize_target_v1',target=target,original_before_binding=binding),origin


class MessageDeclarationFinalizeTests(unittest.TestCase):
    def setUp(self):self.value,self.origin=deepcopy(fixture())
    def verify(self):return preparation(self.value,origin=self.origin)
    def actual(self):
        target=self.value['target'];proof=deepcopy(target['message_evidence']);proof['phase']='target'
        return dict(original_declaration_verified=True,declaration_target_verified=True,created_model_original_retained=True,
            declaration_current=deepcopy(target['current']),declaration_schema=deepcopy(target['current_schema']),
            declaration_actual=actual_diff(target['current'],target['expected']),message_owner_evidence=proof)

    def test_complete_original_body_latest_head_and_both_references_validate(self):
        self.assertEqual(self.verify(),self.value)
        self.assertTrue(observed(self.actual(),self.value)['owner_reference_targets_verified'])

    def test_either_reference_source_current_or_expected_must_equal_original(self):
        for prefix in ('owner_references','owner_database_record_references'):
            for suffix in ('current','expected'):
                self.setUp();self.value['target']['message_evidence'][prefix+'_'+suffix]=[]
                with self.assertRaisesRegex(ValueError,'reference sources'):self.verify()

    def test_foreign_proxy_type_owner_or_generation_refuse(self):
        for key,value in [('owner_proxy_ref','v999999'),('type_ref','v999999'),('owner_ref','v999999'),
                          ('owner_proxy_oid','foreign'),('owner_proxy_class','SGClass'),('generation',999999)]:
            self.setUp();self.value['target']['message_evidence'][key]=value
            with self.assertRaises(ValueError):self.verify()

    def test_role_scope_and_primitive_type_substitution_refuse(self):
        for key,value in [('kind','send_message'),('message_scope','exported'),('model_type','log'),
                          ('native_type_class','SGBoolean')]:
            self.setUp();self.value['target']['message_evidence'][key]=value
            with self.assertRaises(ValueError):self.verify()

    def test_false_original_wal_before_and_incomplete_binding_refuse(self):
        row=next(r for r in self.value['original_before_binding']['previous_recorded']['objects'] if r['class']=='SGModule')
        row['value'][0]={'class':'SmallInteger','value':'9999'}
        with self.assertRaises(ValueError):self.verify()
        self.setUp();self.value['original_before_binding']['namespace_bindings'].pop()
        with self.assertRaises(ValueError):self.verify()

    def test_original_model_alias_membership_and_full_target_cannot_drop(self):
        self.value['target']['expected_model_present']=True
        with self.assertRaises(ValueError):self.verify()
        self.setUp();self.value['target']['created_model_oid']='m_00'
        with self.assertRaises(ValueError):self.verify()
        self.setUp();self.value['target']['expected']['objects'].pop()
        with self.assertRaises(ValueError):self.verify()

    def test_previous_schema_or_variable_profile_cannot_authorize_message(self):
        self.origin['previous_schema']['objects'][0]['class']='foreign'
        with self.assertRaises(ValueError):self.verify()
        self.setUp();self.value['profile']='native_declaration_finalize_target_v1'
        with self.assertRaises(ValueError):self.verify()

    def test_false_actual_original_flag_or_changed_reference_rejected(self):
        value=self.actual();value['original_declaration_verified']=False
        with self.assertRaises(ValueError):observed(value,self.value)
        value=self.actual();value['message_owner_evidence']['owner_database_record_references_current']=[]
        with self.assertRaises(ValueError):observed(value,self.value)

    def test_fresh_terminal_binds_original_proxy_and_both_reference_sets(self):
        actual=self.actual();proof=deepcopy(actual['message_owner_evidence']);proof['phase']='current'
        cache=self.value['target']['read_cache_evidence']
        self.assertEqual(terminal_query(proof,actual,cache),proof)
        proof['owner_proxy_ref']=proof['owner_ref']
        with self.assertRaises(ValueError):terminal_query(proof,actual,cache)

    def test_disabled_message_finalizer_refuses_before_native_read(self):
        adapter=Mock(create_finalize_capable=True,create_message_finalize_capable=False)
        with self.assertRaisesRegex(JournalError,'Independent Module message'):
            journal_prepare(adapter,dict(source=dict(arguments=[[],'receive_message'])),'edit_'+'a'*64)
        adapter.observe.assert_not_called();adapter.prepare_create_finalize.assert_not_called()

    def test_message_finalizer_requires_original_body_and_executable_message_history(self):
        env=dict(ASCET_BD_OPERATION_EXECUTOR='staged_v1',ASCET_BD_CREATE_MATERIAL='identity_v1',
            ASCET_BD_CREATE_HISTORY='native_source_exact_v1',ASCET_BD_CREATE_FINALIZE='original_release_v1',
            ASCET_BD_CREATE_DECLARATIONS='message_body_v1',ASCET_BD_CREATE_DECLARATION_HISTORY='message_prepare_exact_v1',
            ASCET_BD_CREATE_DECLARATION_FINALIZE='message_body_original_release_v1')
        with self.assertRaisesRegex(ValueError,'executable'):NativeStructureAdapter('unused',environment=env)
        env['ASCET_BD_CREATE_DECLARATION_HISTORY']='message_body_exact_v1'
        self.assertTrue(NativeStructureAdapter('unused',environment=env).create_message_finalize_capable)
        self.assertFalse(NativeStructureAdapter('unused',environment={}).create_message_finalize_capable)


if __name__=='__main__':unittest.main()
