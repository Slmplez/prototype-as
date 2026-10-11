"""Offline v6 persistent-owner receipt controls; no ASCET/native calls."""
from copy import deepcopy
import unittest

from bd_commit_persistent_owners import (CAPTURE_PROFILE, SUMMARY_PROFILE, validate_capture,
    validate_summary)

TOKEN='edit_'+'a'*64
COMPONENT='040ts00000001qg718322ffnmadk2'
KEY_A=[10]*20; KEY_B=[20]*20


def ident(cls, ref): return {'class': cls, 'ref': ref}
def boundary(cls, ref): return {'class': cls, 'kind': 'boundary', 'ref': ref}
def atom(value): return {'class': 'SmallInteger', 'kind': 'atom', 'value': str(value)}
def bytes_value(cls, value, ref): return {'class': cls, 'kind': 'value', 'ref': ref, 'value': list(value)}


def ctree(ref, leaf='CTreeLocalVariableAttributeInterface'):
    names=['ctInstance','ctIFIL','ctLockingIFIL','ctKey','ctSegments','uniqueIndex','fixedRecord',
           'pathNames','ctTransaction','ctSavePoint','defName']
    values=[boundary('CTGVCTreestdFputFget',ref+'i'), boundary('CTSpaceCheckingIFil',ref+'f'),
            boundary('CTIFil',ref+'l'), boundary('CTIIdxArray',ref+'k'), boundary('Dictionary',ref+'s'),
            boundary('DBTriple',ref+'u'), bytes_value('CTreeVariableAttributeRecord',[0]*64,ref+'r'),
            boundary('LookupTable',ref+'p'), atom(1), boundary('OrderedCollection',ref+'q'),
            bytes_value('String',[1,2],ref+'n')]
    return {'binding': boundary(leaf,ref), 'field_names':names,
            'fields':[{'slot':i+1,'name':name,'value':value} for i,(name,value) in enumerate(zip(names,values))]}


def db_image(owner, model_class, ref):
    names=['istate','globalId','interface','firstVersionId','className','name','version','objectState','referenceState']
    values=[atom(12272),bytes_value('ByteArray',owner,ref+'g'),boundary('DBReferenceInterface32',ref+'i'),
            bytes_value('ByteArray',[1]*18,ref+'v'),bytes_value('String',model_class.encode('ascii'),ref+'c'),
            bytes_value('String',[65],ref+'n'),atom(0),atom(0),atom(0)]
    return {'binding':boundary('DBObject',ref), 'field_names':names,
            'fields':[{'slot':i+1,'name':name,'value':value} for i,(name,value) in enumerate(zip(names,values))]}


def reference(owner, attribute, role, ref):
    raw=[0]*64
    raw[2:22]=owner
    name=list(attribute.encode('ascii'));raw[22:22+len(name)]=name
    raw[56:60]=list((21).to_bytes(4,'little'));raw[60:64]=list((1).to_bytes(4,'little'))
    raw += [1]+KEY_B
    raw += [0]*4
    return {'actual_file_key':owner+name,'allocated_bytes':raw,'allocated_size':len(raw),'attribute':attribute,
        'blob_size':21,'bytes':raw[:85],'ctree_after':ctree(ref+'x'),'ctree_before':ctree(ref+'x'),
        'declared_size':81,'file_class':'CTSpaceCheckingIFil','fixed_size':60,'global_id':owner,
        'leaf_class':'CTreeLocalVariableAttributeInterface','length_profile':'reference_payload_v2',
        'logical_size':85,'query_key':owner+name,'read_status':'record','record_attribute':attribute,
        'record_class':'CTreeVariableAttributeRecord','record_class_requested':'CTreeVariableAttributeRecord',
        'role':role,'route':'referenceInterface'}


def owner_record(owner, ref):
    raw=[0]*130
    return {'actual_file_key':owner,'allocated_bytes':raw,'allocated_size':130,'attribute':None,'blob_size':0,
        'bytes':raw,'ctree_after':ctree(ref+'x','CTreeLocalSearchInterface'),'ctree_before':ctree(ref+'x','CTreeLocalSearchInterface'),'file_class':'CTSpaceCheckingIFil',
        'fixed_size':130,'global_id':owner,'leaf_class':'CTreeLocalSearchInterface','logical_size':130,
        'query_key':owner,'read_status':'record','record_attribute':None,'record_class':'CTreeSearchObjectRecord',
        'record_class_requested':'CTreeSearchObjectRecord','role':'owner','route':'getInterfaceForProxy:'}


def owner(role, model_class, model_ref, db_ref, key):
    records=[owner_record(key,model_ref+'o'),reference(key,'DBReferenceList','owner_references',model_ref+'r'),
             reference(key,'DBReferencedByList','owner_referenced_by',model_ref+'b')]
    summary=dict(role=role,model_class=model_class,model_ref=model_ref,db_ref=db_ref,oid=COMPONENT if role=='component' else '040spec',key=key,
                 records=[dict(role=row['role'],logical_size=row['logical_size'],allocated_size=row['allocated_size']) for row in records])
    return summary,dict(role=role,model_binding=ident(model_class,model_ref),db_binding=ident('DBObject',db_ref),
                        oid=summary['oid'],key=key,db_before=db_image(key,model_class,db_ref),db_after=db_image(key,model_class,db_ref),records=records)


def fixture():
    first,full_a=owner('component','SGClass','m1','d1',KEY_A); second,full_b=owner('spec_source','SGTopGraphicsBlockDB','m2','d2',KEY_B)
    summary=dict(profile=SUMMARY_PROFILE,phase='captured',native_token=TOKEN,component_oid=COMPONENT,generation=1,owners=[first,second],
        original_material_held=True,same_native_dispatch=True,model_setters_called=0,store_called=False,commit_called=False,write_authorized=False,inverse_authorized=False)
    return summary,dict(profile=CAPTURE_PROFILE,native_token=TOKEN,component_oid=COMPONENT,generation=1,summary=summary,owners=[full_a,full_b])


class PersistentOwnerTests(unittest.TestCase):
    def setUp(self): self.summary,self.capture=fixture()
    def test_summary_and_full_capture(self):
        self.assertEqual(validate_summary(self.summary,token=TOKEN,component_oid=COMPONENT,generation=1),self.summary)
        self.assertEqual(validate_capture(self.capture),self.summary)
    def test_returns_detached_copy(self):
        value=validate_capture(self.capture);value['owners'][0]['key'][0]=99
        self.assertEqual(self.capture['owners'][0]['key'],KEY_A)
    def test_two_owner_identity_and_order_are_strict(self):
        for field,wrong in [('owners',self.capture['owners'][::-1]),('owners',[self.capture['owners'][0]]),('owners',[self.capture['owners'][0],deepcopy(self.capture['owners'][0])])]:
            value=deepcopy(self.capture);value[field]=wrong
            with self.assertRaises(ValueError):validate_capture(value)
    def test_model_class_role_and_oid_binding(self):
        for i,wrong in ((0,'SGTopGraphicsBlockDB'),(1,'SGClass')):
            value=deepcopy(self.capture);value['summary']['owners'][i]['model_class']=wrong
            with self.assertRaises(ValueError):validate_capture(value)
        value=deepcopy(self.capture);value['summary']['owners'][0]['oid']='foreign'
        with self.assertRaises(ValueError):validate_capture(value)
    def test_authority_and_boolean_flags_are_exact(self):
        for field in ('original_material_held','same_native_dispatch','store_called','commit_called','write_authorized','inverse_authorized'):
            value=deepcopy(self.summary);value[field]=0
            with self.assertRaises(ValueError):validate_summary(value,token=TOKEN,component_oid=COMPONENT,generation=1)
    def test_summary_schema_namespace_and_record_counts(self):
        for field,wrong in [('generation',True),('generation',2),('native_token','foreign'),('profile','v2')]:
            value=deepcopy(self.summary);value[field]=wrong
            with self.assertRaises(ValueError):validate_summary(value,token=TOKEN,component_oid=COMPONENT,generation=1)
        value=deepcopy(self.summary);value['owners'][0]['records'][1]['logical_size']=0
        with self.assertRaises(ValueError):validate_summary(value,token=TOKEN,component_oid=COMPONENT,generation=1)
    def test_db_identity_schema_and_global_key(self):
        value=deepcopy(self.capture);value['owners'][0]['db_before']['fields'][1]['value']['value'][0]^=1
        with self.assertRaises(ValueError):validate_capture(value)
        value=deepcopy(self.capture);value['owners'][0]['db_before']['field_names'].append('extra')
        with self.assertRaises(ValueError):validate_capture(value)
    def test_reference_payload_and_unknown_tag_fail_closed(self):
        value=deepcopy(self.capture);value['owners'][0]['records'][1]['length_profile']='legacy'
        with self.assertRaises(ValueError):validate_capture(value)

    def test_explicit_undefined_reference_record_is_exact_and_non_authorizing(self):
        value=deepcopy(self.capture)
        row=value['owners'][1]['records'][1]
        for key in ('fixed_size','blob_size','logical_size','allocated_size'):
            row[key]=0
        row['bytes']=[];row['allocated_bytes']=[];row['length_profile']='absent_record_v1';row['declared_size']=0
        row['read_status']='absent';row['global_id']=KEY_B;row['error_number']=101;row['error_class']='CTError';row['error_text']='undefined'
        value['summary']['owners'][1]['records'][1]['logical_size']=0
        value['summary']['owners'][1]['records'][1]['allocated_size']=0
        self.assertEqual(validate_capture(value),value['summary'])
        row['error_number']=102
        with self.assertRaises(ValueError):validate_capture(value)
        value=deepcopy(self.capture);value['owners'][0]['records'][1]['allocated_bytes'][64]=2
        value['owners'][0]['records'][1]['bytes'][64]=2
        with self.assertRaises(ValueError):validate_capture(value)
    def test_ctree_schema_and_effect_identity_are_strict(self):
        value=deepcopy(self.capture);value['owners'][1]['records'][0]['ctree_after']['field_names'][0]='wrong'
        with self.assertRaises(ValueError):validate_capture(value)
        value=deepcopy(self.capture);value['owners'][1]['records'][0]['ctree_after']['binding']['ref']='new'
        with self.assertRaises(ValueError):validate_capture(value)
    def test_capture_keys_are_exact_and_raw_owner_header_is_not_assumed(self):
        value=deepcopy(self.capture);value['extra']=1
        with self.assertRaises(ValueError):validate_capture(value)
        value=deepcopy(self.capture);value['owners'][0]['records'][0]['allocated_bytes'][0]=99
        self.assertEqual(validate_capture(value),self.summary)
    def test_compact_and_full_summary_must_match(self):
        value=deepcopy(self.capture);value['summary']['owners'][0]['records'][0]['allocated_size']+=1
        with self.assertRaises(ValueError):validate_capture(value)
        value=deepcopy(self.capture);value['owners'][1]['records'][2]['allocated_size']+=1
        with self.assertRaises(ValueError):validate_capture(value)


if __name__=='__main__': unittest.main()
