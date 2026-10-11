"""Actual zero-write variable preparation fixture; offline negative contract checks."""
from copy import deepcopy
import json
from pathlib import Path
import unittest
from bd_declaration_finalize import preparation, primitive_count
from bd_edit_journal import JournalError
from bd_create_finalize import preparation as finalize_preparation


ROOT=Path(__file__).resolve().parents[1]
FIXTURE=ROOT/'analysis/bde-experiments/2026-10-06/bde-variable-finalize-preflight-01/result.json'


class OriginalBodyFinalizeTests(unittest.TestCase):
    def setUp(self):
        d=json.loads(FIXTURE.read_text(encoding='utf-8'))
        self.p=deepcopy(d['preparation']);self.value=self.p['declaration_evidence']
        bound=self.value['original_before_binding'];target=self.value['target']
        self.kw=dict(original=deepcopy(bound['previous_recorded']),
            previous=deepcopy(target['read_cache_evidence']['previous_recorded']),model_oid=target['created_model_oid'])
        self.final_kw=dict(token=self.p['native_token'],owner=self.p['owner_change_id'],
            result_id=self.p['result_change_id'],sequence=self.p['sequence'],
            current=self.p['before'],original=self.p['expected'],oid=d['domain']['oid'])

    def verify(self):return preparation(self.value,**self.kw)

    def test_actual_complete_original_and_latest_head_bindings_validate(self):
        self.assertEqual(self.verify(),self.value)
        self.assertEqual(finalize_preparation(self.p,**self.final_kw),self.p)
        self.assertEqual(len(self.value['target']['original']['objects']),103)

    def test_duplicate_and_missing_before_namespace_bindings_refuse(self):
        pairs=self.value['original_before_binding']['namespace_bindings']
        pairs[-1]=deepcopy(pairs[0])
        with self.assertRaisesRegex(ValueError,'bijective'):self.verify()
        self.setUp();self.value['original_before_binding']['namespace_bindings'].pop()
        with self.assertRaisesRegex(ValueError,'bindings'):self.verify()

    def test_false_original_wal_before_cannot_authorize_finalization(self):
        row=next(r for r in self.kw['original']['objects'] if r['class']=='SGClass')
        row['value'][0]={'class':'SmallInteger','value':'999999'}
        with self.assertRaisesRegex(ValueError,'durable previous head'):self.verify()

    def test_wrong_latest_head_cannot_authorize_original_restore(self):
        row=next(r for r in self.kw['previous']['objects'] if r['class']=='SGClass')
        row['value'][0]={'class':'SmallInteger','value':'999'}
        with self.assertRaisesRegex(ValueError,'durable previous head'):self.verify()

    def test_wrong_model_oid_and_present_membership_refuse(self):
        self.kw['model_oid']='m_00'
        with self.assertRaisesRegex(ValueError,'model OID'):self.verify()
        self.setUp();self.value['target']['expected_model_present']=True
        with self.assertRaisesRegex(ValueError,'model OID'):self.verify()

    def test_original_schema_and_original_body_cannot_be_replaced(self):
        target=self.value['target'];target['original']=deepcopy(target['expected'])
        target['original_schema']=deepcopy(target['expected_schema'])
        with self.assertRaisesRegex(ValueError,'original-before body'):self.verify()

    def test_finalization_cannot_drop_detached_original_objects(self):
        self.value['target']['expected']['objects'].pop()
        with self.assertRaises(ValueError):self.verify()

    def test_cache_evidence_is_required_and_never_write_authorization(self):
        self.value['target']['read_cache_evidence']['write_authorized']=True
        with self.assertRaisesRegex(ValueError,'not write authorization'):self.verify()

    def test_v3_cannot_omit_declaration_target_or_retirement_barrier(self):
        self.p.pop('declaration_evidence')
        with self.assertRaises(JournalError):finalize_preparation(self.p,**self.final_kw)
        self.setUp();self.p['namespace']['blocks_writes_before_allocator_patch']=False
        with self.assertRaises(JournalError):finalize_preparation(self.p,**self.final_kw)

    def test_complete_array_diff_counts_each_native_cell_not_one_object(self):
        before=dict(profile='native_graphical_current_v1',complete=True,objects=[dict(ref='v1',
            kind='collection',**{'class':'Array'},value=[{'class':'SmallInteger','value':str(i)} for i in range(4)])])
        after=deepcopy(before)
        for i in (0,1,3):after['objects'][0]['value'][i]['value']='99'
        self.assertEqual(primitive_count(before,after),3)

    def test_saved_actual_v3_complete_target_rejects_false_primitive_count(self):
        from bd_create_finalize import observed
        events=json.loads((ROOT/'analysis/bde-experiments/2026-10-06/bde-variable-finalize-tools-02/finalization-journal.json').read_text(encoding='utf-8'))
        p=next(e['payload']['create_finalize'] for e in events if e['kind']=='prepared')
        actual=deepcopy(next(e['payload']['create_finalize_actual'] for e in events if e['kind']=='observed'))
        self.assertEqual(observed(actual,p,oid=self.final_kw['oid']),actual)
        actual['execution']['declaration_primitives']+=1
        with self.assertRaisesRegex(JournalError,'primitive count'):observed(actual,p,oid=self.final_kw['oid'])


if __name__=='__main__':unittest.main()
