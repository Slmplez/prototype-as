"""Classify the observed cache mismatch and reject unrelated semantic changes offline."""
from copy import deepcopy
from pathlib import Path
import json
import unittest

from bd_declaration_cache import classify, evidence


ROOT=Path(__file__).resolve().parents[1]


class DeclarationCacheTests(unittest.TestCase):
    def setUp(self):
        path=ROOT/'analysis/bde-experiments/2026-10-06/bde-variable-body-history-diagnostic-01/result.json'
        self.value=json.loads(path.read_text())['diagnostic']
        self.owner=next(r['ref'] for r in self.value['recorded_after']['objects'] if r['class']=='SGClass')

    def check(self):
        v=self.value
        return classify(v['recorded_after'],v['recorded_schema'],v['current'],v['current_schema'],owner=self.owner)

    def slot(self,native_class,name):
        row=next(r for r in self.value['current']['objects'] if r['class']==native_class)
        fields=next(r['field_names'] for r in self.value['current_schema']['objects'] if r['ref']==row['ref'])
        return row,fields.index(name)

    def test_actual_lookup_storage_and_alias_cache_hydration_is_capture_only(self):
        result=self.check()
        self.assertEqual(len(result['changes']),5)
        self.assertEqual(result['new_objects'],18)
        self.assertFalse(result['inverse_authorized'])

    def test_model_attribute_change_is_not_cache_hydration(self):
        row,index=self.slot('SGVariable','attributes');row['value'][index]['value']='0'
        with self.assertRaisesRegex(ValueError,'Non-cache'): self.check()

    def test_configuration_change_is_not_cache_hydration(self):
        row=next(r for r in self.value['current']['objects'] if r['class']=='SGClassValueConfig')
        row['value'][0]={'class':'UndefinedObject','value':'nil'} if row['value'][0]!={'class':'UndefinedObject','value':'nil'} else {'class':'SmallInteger','value':'7'}
        with self.assertRaisesRegex(ValueError,'Non-cache'): self.check()

    def test_original_string_content_cannot_change_as_a_computed_cache(self):
        original={r['ref'] for r in self.value['recorded_after']['objects']}
        row=next(r for r in self.value['current']['objects'] if r['class']=='String' and r['ref'] in original)
        row['value']=[65]
        with self.assertRaisesRegex(ValueError,'Non-cache'):self.check()

    def test_owner_cache_cannot_point_to_variable_instead_of_lookup_storage(self):
        row,index=self.slot('SGClass','aliasNameCache')
        model=next(r for r in self.value['current']['objects'] if r['class']=='SGVariable')
        row['value'][index]={'class':'SGVariable','ref':model['ref']}
        with self.assertRaisesRegex(ValueError,'LookupTable'):self.check()

    def test_unexplained_new_object_is_rejected(self):
        self.value['current']['objects'].append(dict(ref='v9999',**{'class':'String'},kind='value',value=[1]))
        self.value['current_schema']['objects'].append(dict(ref='v9999',**{'class':'String'},kind='value',field_names=[]))
        with self.assertRaisesRegex(ValueError,'outside'):self.check()


class BoundCacheEvidenceTests(unittest.TestCase):
    def setUp(self):
        path=ROOT/'analysis/bde-experiments/2026-10-06/bde-variable-body-history-preflight-02/result.json'
        self.prepared=json.loads(path.read_text())['preparation']['declaration_evidence']
        self.value=self.prepared['read_cache_evidence']
        old=json.loads((ROOT/'analysis/bde-experiments/2026-10-06/bde-create-variable-body-tool-capture-01/store/edits/edit_5abd78c5996f5440b7cb5556cf00bdbefe92618948cccf4854e46465e41cfa54/000003.json').read_text())
        self.previous=old['payload']['create_material_actual']['declaration_material']['after']

    def check(self):return evidence(self.value,previous=self.previous,current=self.prepared['current'])

    def test_live_preparation_binds_the_complete_original_wal_namespace(self):
        result=self.check();self.assertEqual(len(result['changes']),5)
        self.assertFalse(result['inverse_authorized'])
        self.assertEqual(len(self.value['namespace_bindings']),len(self.previous['objects']))

    def test_missing_identity_binding_rejects(self):
        self.value['namespace_bindings'].pop()
        with self.assertRaisesRegex(ValueError,'bindings'):self.check()

    def test_two_original_objects_cannot_bind_the_same_current_ref(self):
        self.value['namespace_bindings'][1][1]=self.value['namespace_bindings'][0][1]
        with self.assertRaisesRegex(ValueError,'bijective'):self.check()

    def test_guard_counts_cannot_replace_full_image_comparison(self):
        self.value['native_guard']['changed_entries']=0
        with self.assertRaisesRegex(ValueError,'Native cache guard'):self.check()

    def test_wrong_previous_head_cannot_be_accepted_as_just_a_cache(self):
        self.previous['objects'].pop()
        with self.assertRaises(ValueError):self.check()

    def test_unrelated_current_cannot_use_a_valid_cache_certificate(self):
        self.prepared['current']=deepcopy(self.prepared['current'])
        row=next(r for r in self.prepared['current']['objects'] if r['class']=='String')
        row['value']=[65]
        with self.assertRaisesRegex(ValueError,'CURRENT differs'):self.check()

    def test_read_cache_certificate_never_grants_write_authority(self):
        self.value['write_authorized']=True
        with self.assertRaisesRegex(ValueError,'write authorization'):self.check()


if __name__=='__main__':unittest.main()
