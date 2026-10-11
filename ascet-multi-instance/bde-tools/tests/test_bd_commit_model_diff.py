"""Identity, topology and partial-evidence controls; synthetic, not live edit acceptance."""
from copy import deepcopy
import re
from pathlib import Path
import unittest
from bd_commit_model_diff import delta,image,original_image,validate_current
from bd_commit_resources import status
import test_bd_commit_model_images as before_fixtures
import test_bd_commit_resources as resource_fixtures


def original():
    audit=before_fixtures.fixture()
    for i,row in enumerate(audit['original_capture']['before_read']['cache_entries'],5):
        row.update(key={'class':'String','ref':'key'+str(i),'kind':'value','value':[i]},
            entry={'class':'DBCacheObject','ref':'r'+str(i),'kind':'boundary'})
    audit['registered_model_original_roots']=[row['registered_object'] for row in audit['original_capture']['before_read']['cache_entries']]
    return audit


def report(audit,category='since_preparation'):
    baseline=original_image(audit)
    return dict(profile='native_registered_sg_check_v1',component_oid=audit['component_oid'],generation=7,
        category=category,**deepcopy(baseline),root_class_counts={'SGClass':1,'SGLibrary':1},
        boundary_class_counts={'DBProxy':1},original_objects_retained=4,original_material_held=True,
        db_proxies_resolved=False,full_model_transitive_closure=False,write_authorized=False,
        inverse_authorized=False,model_setters_called=0,store_called=False,actual_changes=[])


class CommitModelDiffTests(unittest.TestCase):
    def test_unchanged_complete_original_current_image(self):
        audit=original();current=report(audit)
        self.assertEqual(delta(original_image(audit),current,'since_preparation'),[])
        self.assertEqual(len(validate_current(current,audit,'since_preparation')),4)

    def test_detached_original_string_still_captured_with_real_bytes(self):
        before=original_image(original());after=deepcopy(before)
        after['image'][0]['value'][0]={'class':'UndefinedObject','kind':'constant','value':'nil'}
        after['image'][2]['value']=[90,66]
        changes=delta(before,after,'since_preparation')
        self.assertEqual([(r['locus'],r['field']) for r in changes],[('sg/r1','name'),('sg/r3','$contents')])
        self.assertEqual(changes[1]['before'],[65,66]);self.assertEqual(changes[1]['after'],[90,66])

    def test_omitted_old_unreachable_object_cannot_be_database_deletion(self):
        before=original_image(original());after=deepcopy(before)
        after['image'][0]['value'][0]={'class':'UndefinedObject','kind':'constant','value':'nil'}
        after['image'].pop(2)
        with self.assertRaisesRegex(ValueError,'Retained SG object omitted'):delta(before,after,'since_preparation')

    def test_new_reference_is_observed_not_claimed_as_created(self):
        before=original_image(original());after=deepcopy(before)
        after['image'][0]['value'][0]={'class':'String','ref':'r7'}
        after['image'].append(dict(binding={'class':'String','ref':'r7'},kind='value',field_names=[],value=[67]))
        changes=delta(before,after,'since_preparation')
        self.assertEqual([r['field'] for r in changes],['name','$new_observed_object'])
        self.assertIsNone(changes[-1]['before']);self.assertNotIn('$created',str(changes))

    def test_collection_order_preserved_but_set_iteration_not_a_mutation(self):
        for cls,ordered in [('Array',True),('OrderedCollection',True),('Set',False),('IdentitySet',False),('Dictionary',False)]:
            with self.subTest(cls=cls):
                before=original_image(original())
                a={'class':'SmallInteger','kind':'constant','value':'1'};b={**a,'value':'2'}
                values=[[a,b],[b,a]] if cls=='Dictionary' else [a,b]
                before['image'].append(dict(binding={'class':cls,'ref':'r7'},kind='collection',field_names=[],value=values))
                after=deepcopy(before);after['image'][-1]['value'].reverse()
                changes=delta(before,after,'query_read_effect')
                self.assertEqual(bool(changes),ordered)
                if ordered:self.assertEqual(changes[0]['before'],values)

    def test_changed_dictionary_keeps_actual_full_before_after_order(self):
        before=original_image(original());a={'class':'SmallInteger','kind':'constant','value':'1'};b={**a,'value':'2'}
        before['image'].append(dict(binding={'class':'Dictionary','ref':'r7'},kind='collection',field_names=[],value=[[a,b]]))
        after=deepcopy(before);after['image'][-1]['value'][0][1]['value']='3'
        change=delta(before,after,'since_preparation')[0]
        self.assertEqual(change['before'],[[a,b]]);self.assertEqual(change['after'][0][1]['value'],'3')

    def test_registered_member_rebinding_reported_while_old_root_stays_held(self):
        before=original_image(original());after=deepcopy(before)
        after['registered_members'][0]['entry']['ref']='replacement'
        changes=delta(before,after,'since_preparation')
        self.assertEqual([(r['locus'],r['field']) for r in changes],[('sg_registry','registered_members')])

    def test_schema_identity_change_retained_and_not_field_spliced(self):
        before=original_image(original());after=deepcopy(before)
        after['image'][0]['field_names']=['new_name','proxy']
        change=delta(before,after,'since_preparation')[0]
        self.assertEqual(change['field'],'$identity_schema');self.assertEqual(change['before'],before['image'][0])

    def test_ambiguous_image_and_partial_census_refused(self):
        for edit in (lambda x:x['image'].append(deepcopy(x['image'][0])),
                     lambda x:x['image'][2].update(value=[True]),
                     lambda x:x['image'][0]['value'][0].update(ref='foreign'),
                     lambda x:x['registered_members'].pop(),
                     lambda x:x['registered_roots'].append(deepcopy(x['registered_roots'][0]))):
            with self.subTest(edit=edit):
                before=original_image(original());after=deepcopy(before);edit(after)
                with self.assertRaises(ValueError):delta(before,after,'since_preparation')

    def test_current_report_cannot_rebind_or_grant_inverse(self):
        audit=original()
        for key,value in [('generation',True),('component_oid','foreign'),('original_objects_retained',3),
                          ('root_class_counts',{'SGClass':2}),('boundary_class_counts',{}),
                          ('original_material_held',False),('full_model_transitive_closure',True),('model_setters_called',1)]:
            with self.subTest(key=key),self.assertRaises(ValueError):
                validate_current({**report(audit),key:value},audit,'since_preparation')

    def test_fixed_before_and_current_class_profiles_match(self):
        root=Path(__file__).parent
        if not (root/'bde_commit_registered_models.st').is_file():
            root=root.parent/'scripts'
        a=(root/'bde_commit_registered_models.st').read_text();b=(root/'bde_commit_registered_models_current.st').read_text()
        for name in ('rootClasses','fieldClasses','collectionClasses'):
            self.assertEqual(re.findall(r"'([^']*)'",re.search(name+r' := #\((.*?)\)\.',a,re.S).group(1)),
                             re.findall(r"'([^']*)'",re.search(name+r' := #\((.*?)\)\.',b,re.S).group(1)))

    def test_current_summary_requires_the_full_sg_change_count(self):
        value=resource_fixtures.status_receipt(True);audit=original()
        value['prepared_receipt']=audit['prepared_receipt']
        value.update(registered_models_checked=True,registered_model_summary=dict(
            profile='native_registered_sg_status_v1',original_objects=4,current_objects=4,current_roots=2,
            current_cache_entries=2,actual_change_count=0,original_material_held=True,
            full_model_transitive_closure=False,write_authorized=False,inverse_authorized=False))
        status(value,token=value['native_token'],component_oid=value['component_oid'],checked=True)
        for key,replacement in [('current_objects',3),('actual_change_count',1),('write_authorized',True)]:
            invalid=deepcopy(value);invalid['registered_model_summary'][key]=replacement
            with self.subTest(key=key),self.assertRaises(ValueError):
                status(invalid,token=value['native_token'],component_oid=value['component_oid'],checked=True)


if __name__=='__main__':unittest.main()
