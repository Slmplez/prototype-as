"""Offline completeness/identity controls using a hash-bound empty Module live image.

The fixture does not provide online message factory, populated type or history evidence.
"""
from copy import deepcopy
import hashlib
import json
from pathlib import Path
import unittest

from bd_message_declaration_before import validate
from bd_message_declaration_inventory import validate as validate_inventory
import bde_declaration_images as reader


ROOT=Path(__file__).resolve().parents[1]
FIXTURE=ROOT/'analysis/bde-experiments/2026-10-06/bde-message-before-images-04/message-before-capture.json'
SHA='83ed644fab3b373bca323104c2babe6d71184c4a58f17210baf6c803f2cba718'


class MessageOriginalBodyControls(unittest.TestCase):
    def setUp(self):
        raw=FIXTURE.read_bytes();self.assertEqual(hashlib.sha256(raw).hexdigest(),SHA)
        self.value=json.loads(raw)['result']
    def check(self,value=None,**bindings):
        value=self.value if value is None else value
        return validate(value,dict(oid=bindings.get('oid',self.value['component_oid'])),
            component=bindings.get('component',self.value['component_path']),token=bindings.get('token',self.value['study_token']))
    def change_role(self,ref,change):
        for image,schema in [('before','before_schema'),('current','current_schema')]:
            row=next(r for r in self.value[image]['objects'] if r['ref']==ref)
            fields=next(r for r in self.value[schema]['objects'] if r['ref']==ref)
            change(row,fields)
    def test_real_module_full_original_body_without_factory_claim(self):
        result=self.check();self.assertEqual(result['native_objects'],187)
        self.assertEqual(result['owner_class'],'SGModule');self.assertEqual(result['declarations'],0)
        self.assertEqual(result['configuration_roots'],4);self.assertEqual(result['lookup_tables'],13)
        self.assertFalse(result['full_creation_before_bound']);self.assertFalse(result['inverse_authorized'])
    def test_owner_oid_path_token_are_exact(self):
        for key in ['oid','component','token']:
            with self.subTest(key=key),self.assertRaises(ValueError):self.check(**{key:'foreign'})
    def test_cannot_authorize_inverse_or_claim_creation_before(self):
        for key in ['creation_before_bound','inverse_authorized','store_called']:
            value=deepcopy(self.value);value[key]=True
            with self.subTest(key=key),self.assertRaises(ValueError):self.check(value)
    def test_owner_cannot_be_relabelled_as_class(self):
        self.change_role(self.value['owner_ref'],lambda row,schema:(row.update({'class':'SGClass'}),schema.update({'class':'SGClass'})))
        next(r for r in self.value['roots'] if r['ref']==self.value['owner_ref'])['class']='SGClass'
        with self.assertRaises(ValueError):self.check()
    def test_current_mutation_is_not_original_body_evidence(self):
        string=next(r for r in self.value['current']['objects'] if r['class']=='String')
        string['value'].append(65)
        with self.assertRaises(ValueError):self.check()
    def test_lookup_table_actual_arrays_cannot_be_opaque(self):
        table=next(r for r in self.value['before']['objects'] if r['class']=='LookupTable')
        array_ref=table['value'][1]['ref']
        self.change_role(array_ref,lambda row,schema:(row.update(kind='boundary',value=None),schema.update(kind='boundary',field_names=[])))
        with self.assertRaisesRegex(ValueError,'LookupTable arrays'):self.check()
    def test_association_slots_cannot_swap(self):
        ref=next(r['ref'] for r in self.value['before']['objects'] if r['class']=='Association')
        self.change_role(ref,lambda row,schema:schema.update(field_names=['value','key']))
        with self.assertRaisesRegex(ValueError,'Association'):self.check()
    def test_process_and_code_fields_cannot_be_hidden(self):
        for cls in ['SGMethodProcess','SGCodeArchive','SGASDLCodeVariantKey']:
            original=deepcopy(self.value)
            ref=next(r['ref'] for r in self.value['before']['objects'] if r['class']==cls)
            self.change_role(ref,lambda row,schema:(row.update(kind='boundary',value=None),schema.update(kind='boundary',field_names=[])))
            with self.subTest(cls=cls),self.assertRaisesRegex(ValueError,'opaque boundary'):self.check()
            self.value=original
    def test_every_configuration_database_link_required(self):
        self.value['configuration_links'].pop()
        with self.assertRaisesRegex(ValueError,'Every original Module configuration'):self.check()
    def test_shared_project_reference_removal_refuses(self):
        self.value['owner_references_current']=[r for r in self.value['owner_references_current'] if r[1]!='SGProject']
        with self.assertRaisesRegex(ValueError,'inbound reference'):self.check()

    def test_topology_mode_reports_reference_delta_without_relaxing_body_checks(self):
        value=deepcopy(self.value)
        value['owner_references_current'].append(['040ts00000001qg718328rgl9h8kc','SGProject'])
        value['owner_references_current']=sorted(value['owner_references_current'])
        result=validate(value,dict(oid=value['component_oid']),component=value['component_path'],
                         token=value['study_token'],allow_reference_delta=True)
        self.assertEqual(result['reference_deltas']['owner_references']['added'],
                         [['040ts00000001qg718328rgl9h8kc','SGProject']])
        mutated=deepcopy(value)
        string=next(r for r in mutated['current']['objects'] if r['class']=='String')
        string['value'].append(65)
        with self.assertRaises(ValueError):
            validate(mutated,dict(oid=mutated['component_oid']),component=mutated['component_path'],
                     token=mutated['study_token'],allow_reference_delta=True)
    def test_database_record_reference_change_refuses_separately(self):
        self.value['owner_database_record_references_current'].pop()
        with self.assertRaisesRegex(ValueError,'owner_database_record_references'):self.check()
    def test_generation_and_release_action_are_not_coercible(self):
        value=deepcopy(self.value);value['generation']=True
        with self.assertRaises(ValueError):self.check(value)
        self.value['released']=True
        with self.assertRaises(ValueError):self.check()
    def test_absent_owned_declaration_cannot_be_invented(self):
        self.value['model_refs']=[self.value['owner_ref']]
        with self.assertRaisesRegex(ValueError,'root census'):self.check()
    def test_message_policy_does_not_change_existing_reader_algorithm(self):
        ordinary=reader.build();message=reader.build_message();enum=reader.build_enum()
        marker=' capture := [:anchors :images :bindings |'
        self.assertEqual(ordinary.split(marker,1)[1],message.split(marker,1)[1])
        for cls in ['SGMethodProcess','Association','SGASDLCodeVariantKey']:
            self.assertIn("'"+cls+"'",message)
            self.assertNotIn("'"+cls+"'",ordinary)
            self.assertNotIn("'"+cls+"'",enum)
    def test_actual_inventory_fixture_owner_and_separate_refs(self):
        p=ROOT/'analysis/bde-experiments/2026-10-06/bde-message-declaration-inventory-05/message-inventory.json'
        raw=p.read_bytes();self.assertEqual(hashlib.sha256(raw).hexdigest(),'d15a9c852a6cd5841f74c8758fbdaf7bd1a9cf76495ab49d09967b3b019b6246')
        value=json.loads(raw)['result']
        summary=validate_inventory(value,dict(oid=value['component_oid']),component=value['component_path'])
        self.assertEqual(summary['owner_class'],'SGModule');self.assertEqual(summary['messages'],0)
        self.assertEqual(summary['combined_references'],7)


if __name__=='__main__':unittest.main()
