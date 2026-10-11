"""Independent resource-delta controls; fixtures do not authorize native writes."""
from copy import deepcopy
import unittest
from bd_commit_resource_diff import recompute


def image(ref, value=1):
    return dict(binding={'ref':ref},field_names=['timeStamp'],
                fields=[dict(slot=1,name='timeStamp',value=value)])


def resource():
    return dict(owner=image('owner'),backend=image('backend'),cache=image('cache'),cache_size=1,
        cache_entries=[dict(key_text='key',key={'ref':'key'},entry={'ref':'entry'},
            image=image('entry'),registered_object={'ref':'object'})],modified_objects=[])


def capture():
    return dict(action='capture',token='commit_fixture',generation=1,component_oid='owner',
        stopped_on_read_error=False,before_read=resource(),after_read=resource(),records=[
            dict(role=role,query_key=role,record_class='fixed',read_status='record',
                bytes=[1,2],allocated_bytes=[1,2,0],logical_size=2,allocated_size=3,
                fixed_size=1,blob_size=1,ctree_before=image('ctree/'+role),ctree_after=image('ctree/'+role))
            for role in ('owner','owner_references','owner_referenced_by')])


class CommitResourceDiffTests(unittest.TestCase):
    def setUp(self):
        self.original=capture();self.current={**deepcopy(self.original),'action':'check'}

    def test_exact_original_and_current_have_zero_diff(self):
        self.assertEqual(recompute(self.original,self.current),[])

    def test_timestamp_and_query_effect_are_separate_actual_changes(self):
        self.current['before_read']['cache_entries'][0]['image']['fields'][0]['value']=2
        self.current['after_read']['cache_entries'][0]['image']['fields'][0]['value']=2
        self.current['records'][1]['ctree_after']['fields'][0]['value']=3
        changes=recompute(self.original,self.current)
        self.assertEqual([(c['category'],c['locus'],c['field']) for c in changes],[
            ('since_preparation','cache_entry/entry','timeStamp'),
            ('query_read_effect','ctree/owner_references','timeStamp')])
        self.assertEqual((changes[0]['before'],changes[0]['after']),(1,2))

    def test_same_key_new_entry_is_removal_and_addition(self):
        for part in ('before_read','after_read'):
            row=self.current[part]['cache_entries'][0]
            row['entry']={'ref':'entry2'};row['image']=image('entry2')
        changes=recompute(self.original,self.current)
        self.assertEqual([c['field'] for c in changes],['$membership','$membership'])
        self.assertIsNone(changes[0]['after']);self.assertIsNone(changes[1]['before'])

    def test_cache_census_and_dirty_project_changes_are_preserved(self):
        for part in ('before_read','after_read'):
            self.current[part]['modified_objects']=['foreign_project']
            self.current[part]['cache_entries'][0]['registered_object']={'ref':'foreign_project'}
        self.assertEqual([c['field'] for c in recompute(self.original,self.current)],
                         ['registered_object','$census'])

    def test_logical_bytes_differ_but_allocation_slack_is_not_logical_data(self):
        row=self.current['records'][0];row['allocated_bytes'][-1]=99
        self.assertEqual(recompute(self.original,self.current),[])
        row['bytes'][0]=3;row['allocated_bytes'][0]=3
        changes=recompute(self.original,self.current)
        self.assertEqual((changes[0]['field'],changes[0]['before'],changes[0]['after']),
                         ('$logical_bytes',[1,2],[3,2]))

    def test_schema_identity_change_exports_complete_images(self):
        for part in ('before_read','after_read'):
            self.current[part]['owner']['binding']={'ref':'different_owner'}
        changes=recompute(self.original,self.current)
        self.assertEqual(changes[0]['field'],'$identity_schema')
        self.assertEqual(changes[0]['before'],self.original['after_read']['owner'])

    def test_malformed_schema_census_or_record_cannot_be_complete_diff(self):
        for edit in (
            lambda d:d['before_read']['owner'].update(field_names=[{}]),
            lambda d:d['before_read'].update(cache_size=2),
            lambda d:d['records'][0].update(allocated_bytes=[9,2,0]),
            lambda d:d.update(records=d['records'][:2]),
            lambda d:d.update(stopped_on_read_error=True),
            lambda d:d.update(generation=2),
            lambda d:d['records'][0].update(query_key='foreign')):
            with self.subTest(edit=edit):
                value=deepcopy(self.current);edit(value)
                with self.assertRaises(ValueError):recompute(self.original,value)


if __name__=='__main__':unittest.main()
