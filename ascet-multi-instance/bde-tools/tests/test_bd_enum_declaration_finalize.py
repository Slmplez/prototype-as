"""Enum closure rejection checks from retained online heads; synthetic targets, no live I/O."""
from copy import deepcopy
from functools import lru_cache
import json
from pathlib import Path
import unittest
from unittest.mock import Mock
from bd_declaration_cache import classify
from bd_declaration_history import reconstruct
from bd_enum_declaration_finalize import preparation, observed, terminal_query
from bd_enum_declaration_history import next_origin
from bd_create_finalize_journal import prepare as journal_prepare
from bd_create_finalize import preparation as finalize_preparation, observed as finalize_observed
from bd_declaration_finalize import primitive_count
from bd_edit_journal import JournalError
from bd_native_structure import NativeStructureAdapter
from test_bd_enum_create_history import actual_diff


ROOT=Path(__file__).resolve().parents[1]
TRIAL=ROOT/'analysis/bde-experiments/2026-10-06/bde-enum-body-history-tools-02'


def remap(value,mapping):
    if type(value) is list:return [remap(v,mapping) for v in value]
    if type(value) is dict:return {k:mapping[v] if k=='ref' else remap(v,mapping) for k,v in value.items()}
    return deepcopy(value)


@lru_cache(maxsize=1)
def fixture():
    d=json.loads((TRIAL/'result.json').read_text(encoding='utf-8'))
    forward=json.loads((TRIAL/'original-journal.json').read_text(encoding='utf-8'))
    material=next(e['payload']['create_material_actual'] for e in forward if e['kind']=='observed')
    original=material['declaration_material']; mappings={r['ref']:r['ref'] for r in original['before']['objects']}
    first=d['histories'][0]['receipt']['change_id']
    steps=[[json.loads(p.read_text(encoding='utf-8')) for p in sorted((Path(d['source'])/'store/edits'/first).glob('*.json'))]]
    steps += [json.loads((TRIAL/(label+'-journal.json')).read_text(encoding='utf-8')) for label in ['redo','undo-again']]
    for events in steps:
        p=next(e['payload']['create_history'] for e in events if e['kind']=='prepared')
        bindings=dict(p['declaration_evidence']['read_cache_evidence']['namespace_bindings'])
        mappings={old:bindings[new] for old,new in mappings.items()}
    actual=next(e['payload']['create_history_actual'] for e in steps[-1] if e['kind']=='observed')
    origin=next_origin(material,actual)
    current=reconstruct(actual['declaration_current'],actual['declaration_actual'])
    fields=deepcopy(actual['declaration_schema']); proof=deepcopy(actual['enum_definition_evidence'])
    proof.update(profile='native_enum_definition_finalize_evidence_v1',phase='current',persisted_target_verified=False,
        definition_references_expected=deepcopy(original['definition_references_before']))
    classified=classify(current,fields,current,fields,owner=next(r['ref'] for r in current['objects'] if r['class']=='SGClass'))
    owner=classified['owner_ref']
    cache=dict(profile='native_declaration_read_cache_evidence_v1',previous_recorded=current,previous_schema=fields,
        recorded=deepcopy(current),recorded_schema=deepcopy(fields),current=deepcopy(current),current_schema=deepcopy(fields),
        namespace_bindings=[[r['ref'],r['ref']] for r in current['objects']],owner_ref=owner,write_authorized=False,
        native_guard=dict(profile='native_declaration_cache_guard_v1',non_cache_original_state_unchanged=True,
            changed_entries=0,new_objects=0,cache_objects=classified['cache_objects'],model_setters_called=0,
            store_called=False,inverse_authorized=False))
    before=remap(original['before'],mappings);before_schema=remap(original['before_schema'],mappings)
    rows={r['ref']:r for r in deepcopy(current)['objects']};rows.update({r['ref']:r for r in before['objects']})
    expected={**deepcopy(current),'objects':list(rows.values())}
    target=dict(profile='native_enum_declaration_finalize_body_v1',current=current,current_schema=fields,
        original=before,original_schema=before_schema,expected=expected,expected_schema=deepcopy(fields),
        owner_ref=owner,created_model_ref=proof['created_model_ref'],created_model_oid=material['created_model_oid'],
        expected_model_present=False,same_original_objects_retained=True,definition_evidence=proof,read_cache_evidence=cache)
    binding=dict(profile='native_declaration_image_binding_v1',previous_recorded=deepcopy(original['before']),
        previous_schema=deepcopy(original['before_schema']),recorded=before,recorded_schema=before_schema,
        namespace_bindings=[[old,new] for old,new in mappings.items()])
    return dict(profile='native_enum_declaration_finalize_target_v1',target=target,original_before_binding=binding),origin


class EnumDeclarationFinalizeTests(unittest.TestCase):
    def setUp(self):self.value,self.origin=deepcopy(fixture())
    def verify(self):return preparation(self.value,origin=self.origin)
    def actual(self):
        t=self.value['target'];proof=deepcopy(t['definition_evidence'])
        proof.update(phase='target',persisted_target_verified=True)
        return dict(original_declaration_verified=True,declaration_target_verified=True,created_model_original_retained=True,
            declaration_current=deepcopy(t['current']),declaration_schema=deepcopy(t['current_schema']),
            declaration_actual=actual_diff(t['current'],t['expected']),enum_definition_evidence=proof)

    def test_complete_original_body_latest_head_and_both_references_validate(self):
        self.assertEqual(self.verify(),self.value)
        self.assertTrue(observed(self.actual(),self.value)['definition_reference_targets_verified'])

    def test_new_enum_cannot_use_existing_definition_finalizer(self):
        self.origin['creation_material']['created_definition_oid']='foreign'
        with self.assertRaises((ValueError,JournalError)):self.verify()

    def test_wrong_previous_head_schema_and_model_identity_refuse(self):
        self.origin['previous_schema']['objects'][0]['class']='foreign'
        with self.assertRaises(ValueError):self.verify()
        self.setUp();self.value['target']['created_model_oid']='m_00'
        with self.assertRaisesRegex(ValueError,'model OID'):self.verify()

    def test_either_current_reference_source_must_equal_original(self):
        for key in ('definition_references_current','definition_references_persisted_current','definition_references_expected'):
            self.setUp();self.value['target']['definition_evidence'][key]=[]
            with self.assertRaisesRegex(ValueError,'reference sources'):self.verify()

    def test_foreign_proxy_definition_and_generation_refuse(self):
        for key,value in [('type_proxy_ref','v999999'),('definition_ref','v999999'),('generation',999999)]:
            self.setUp();self.value['target']['definition_evidence'][key]=value
            with self.assertRaises(ValueError):self.verify()

    def test_false_original_wal_before_cannot_authorize_restore(self):
        row=next(r for r in self.value['original_before_binding']['previous_recorded']['objects'] if r['class']=='SGClass')
        row['value'][0]={'class':'SmallInteger','value':'9999'}
        with self.assertRaises(ValueError):self.verify()

    def test_original_before_binding_is_complete_and_bijective(self):
        self.value['original_before_binding']['namespace_bindings'].pop()
        with self.assertRaises(ValueError):self.verify()

    def test_detached_membership_is_required_and_original_objects_cannot_drop(self):
        self.value['target']['expected_model_present']=True
        with self.assertRaises(ValueError):self.verify()
        self.setUp();self.value['target']['expected']['objects'].pop()
        with self.assertRaises(ValueError):self.verify()

    def test_original_before_cannot_be_substituted_by_last_undo(self):
        self.value['target']['original']=deepcopy(self.value['target']['expected'])
        self.value['target']['original_schema']=deepcopy(self.value['target']['expected_schema'])
        with self.assertRaises(ValueError):self.verify()

    def test_actual_flags_do_not_hide_incomplete_diff_or_wrong_persisted_reference(self):
        self.verify();a=self.actual();a['enum_definition_evidence']['definition_references_persisted_current']=[]
        with self.assertRaises(ValueError):observed(a,self.value)
        a=self.actual();a['declaration_actual']['after_object_count']+=1
        with self.assertRaises(ValueError):observed(a,self.value)

    def test_query_requires_fresh_namespace_type_and_both_reference_sources(self):
        self.verify();a=self.actual();proof=deepcopy(a['enum_definition_evidence'])
        proof.update(phase='current',persisted_target_verified=False)
        cache=self.value['target']['read_cache_evidence']
        self.assertEqual(terminal_query(proof,a,cache),proof)
        proof['definition_references_persisted_current']=[]
        with self.assertRaises(ValueError):terminal_query(proof,a,cache)

    def test_disabled_enum_finalizer_refuses_before_native_read(self):
        adapter=Mock(create_finalize_capable=True,create_enum_finalize_capable=False)
        with self.assertRaisesRegex(JournalError,'Independent Enum'):
            journal_prepare(adapter,dict(source=dict(arguments=[[],'enumeration'])),'edit_'+'a'*64)
        adapter.observe.assert_not_called();adapter.prepare_create_finalize.assert_not_called()

    def test_enum_finalizer_requires_executable_enum_history(self):
        env=dict(ASCET_BD_OPERATION_EXECUTOR='staged_v1',ASCET_BD_CREATE_MATERIAL='identity_v1',
            ASCET_BD_CREATE_HISTORY='native_source_exact_v1',ASCET_BD_CREATE_FINALIZE='original_release_v1',
            ASCET_BD_CREATE_DECLARATIONS='enum_body_v1',ASCET_BD_CREATE_DECLARATION_HISTORY='enum_prepare_exact_v1',
            ASCET_BD_CREATE_DECLARATION_FINALIZE='enum_body_original_release_v1')
        with self.assertRaisesRegex(ValueError,'executable'):NativeStructureAdapter('unused',environment=env)
        env['ASCET_BD_CREATE_DECLARATION_HISTORY']='enum_body_exact_v1'
        a=NativeStructureAdapter('unused',environment=env)
        self.assertTrue(a.create_enum_finalize_capable);self.assertFalse(a.create_declaration_finalize_capable)


class EnumFullFinalizeProofTests(unittest.TestCase):
    def setUp(self):
        trial=json.loads((TRIAL.parent/'bde-enum-finalize-preflight-01/result.json').read_text(encoding='utf-8'))
        self.p=deepcopy(trial['preparation']);self.oid=trial['domain']['oid']
        self.kw=dict(token=self.p['native_token'],owner=self.p['owner_change_id'],result_id=self.p['result_change_id'],
            sequence=self.p['sequence'],current=self.p['before'],original=self.p['expected'],oid=self.oid)

    def actual(self):
        p=self.p;t=p['declaration_evidence']['target'];proof=deepcopy(t['definition_evidence'])
        proof.update(phase='target',persisted_target_verified=True)
        return dict(profile='native_create_finalize_actual_v4',observation=deepcopy(p['expected']),
            execution=dict(profile='native_create_finalize_execution_v3',native_token=p['native_token'],
                head_change_id=p['owner_change_id'],result_change_id=p['result_change_id'],sequence=p['sequence'],
                phase='terminal',source_primitives=int(p['allocator']['before']!=p['allocator']['expected']),
                declaration_primitives=primitive_count(t['current'],t['expected']),model_setters_called=0,
                store_called=False,redo_closed=True,terminal_verified=True),
            graphical_current=deepcopy(p['graphical_current']),graphical_actual=actual_diff(p['graphical_current'],p['graphical_current']),
            source_actual_evidence=deepcopy(p['source_evidence']),original_native_verified=True,original_source_verified=True,
            original_order_aliases_verified=True,material_retained=True,namespace={**deepcopy(p['namespace']),
                'profile':'allocator_scope_retirement_actual_v1','retirement_pending':True,'ordinary_writes_blocked':True},
            declaration_current=deepcopy(t['current']),declaration_schema=deepcopy(t['current_schema']),
            declaration_actual=actual_diff(t['current'],t['expected']),declaration_target_verified=True,
            created_model_original_retained=True,original_declaration_verified=True,enum_definition_evidence=proof)

    def test_real_zero_write_preparation_and_synthetic_full_actual_validate(self):
        self.assertEqual(finalize_preparation(self.p,**self.kw),self.p)
        self.assertEqual(finalize_observed(self.actual(),self.p,oid=self.oid)['profile'],'native_create_finalize_actual_v4')

    def test_missing_enum_origin_or_downgrade_to_variable_cannot_authorize(self):
        self.p.pop('enum_origin')
        with self.assertRaises(JournalError):finalize_preparation(self.p,**self.kw)
        self.setUp();self.p['profile']='native_create_finalize_preparation_v3';self.p.pop('enum_origin')
        with self.assertRaises(JournalError):finalize_preparation(self.p,**self.kw)

    def test_foreign_forward_token_or_owner_cannot_authorize(self):
        for key,value in [('native_token','edit_'+'f'*64),('component_oid','foreign')]:
            self.setUp();self.p['enum_origin']['creation_material'][key]=value
            with self.assertRaises(JournalError):finalize_preparation(self.p,**self.kw)

    def test_v4_actual_requires_full_enum_definition_and_persisted_targets(self):
        a=self.actual();a.pop('enum_definition_evidence')
        with self.assertRaises(JournalError):finalize_observed(a,self.p,oid=self.oid)
        a=self.actual();a['enum_definition_evidence']['definition_references_persisted_current']=[]
        with self.assertRaises(JournalError):finalize_observed(a,self.p,oid=self.oid)

    def test_flags_do_not_hide_false_primitive_count_or_source_patch(self):
        a=self.actual();a['execution']['declaration_primitives']+=1
        with self.assertRaises(JournalError):finalize_observed(a,self.p,oid=self.oid)
        a=self.actual();a['execution']['source_primitives']+=1
        with self.assertRaises(JournalError):finalize_observed(a,self.p,oid=self.oid)

    def test_allocator_closure_requires_namespace_write_barrier_and_no_redo(self):
        a=self.actual();a['namespace']['ordinary_writes_blocked']=False
        with self.assertRaises(JournalError):finalize_observed(a,self.p,oid=self.oid)
        a=self.actual();a['execution']['redo_closed']=False
        with self.assertRaises(JournalError):finalize_observed(a,self.p,oid=self.oid)


if __name__=='__main__':unittest.main()
