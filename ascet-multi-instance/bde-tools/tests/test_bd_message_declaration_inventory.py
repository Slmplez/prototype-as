"""Offline mutation controls for the Module audit contract; no live acceptance."""
from copy import deepcopy
import unittest
from bd_message_declaration_inventory import validate, SEND, RECEIVE


def opaque(ref,cls):
    return dict(ref=ref,native_class=cls,kind='opaque')


def atom(value):
    return dict(native_class='SmallInteger',kind='atom',value=str(value))


def string(ref,value):
    return dict(ref=ref,native_class='String',kind='value',value=value)


def role(name,binding,values):
    return dict(role=name,binding=binding,field_names=list(values),fields=[
        dict(slot=i,field=k,value=v) for i,(k,v) in enumerate(values.items(),1)])


def fixture():
    owner=opaque('d1','SGModule'); primitive=opaque('d2','LookupTable'); complex=opaque('d3','LookupTable')
    model=opaque('d4','SGVariable'); type_=opaque('d5','SGReal'); name=string('d6','Speed')
    scope=string('d7','imported'); attributes=SEND|RECEIVE
    xml_oid=[1,1,222,0,0,0,0,0,234,7,10,6,35,79,134,73,19,70,0,0]
    alias=dict(native_class='ByteArray',kind='value',ref='alias',value=xml_oid)
    return dict(profile='message_declaration_inventory_v1',component_oid='oid',
        component_path='BDE_Tool_Experiments\\Trial_Message',api_class='EtasAPIModuleBDE',messages_possible=True,
        generation=1,owner=owner,objects=[
            role('owner',owner,dict(primitiveVariables=primitive,complexVariables=complex)),
            role('primitiveVariables',primitive,dict(elementCount=atom(1),keys=opaque('d8','Array'),values=opaque('d9','Array'))),
            role('complexVariables',complex,dict(elementCount=atom(0),keys=opaque('d10','Array'),values=opaque('d11','Array'))),
            role('model:Speed',model,dict(attributes=atom(attributes),kind=scope,sgClass=type_,aliasName=alias)),
            role('type:Speed',type_,dict())],
        collections=[dict(binding=primitive,entries=[[name,model]]),dict(binding=complex,entries=[])],
        declarations=[dict(name='Speed',binding=model,xml_oid=xml_oid,type=type_,
            attributes=attributes,raw_kind=scope,scope='imported',send=True,receive=True,message=True)],
        owner_references=[['config','SGClassImplConfig'],['project','SGProject']],
        owner_database_record_references=[['config','SGClassImplConfig']],
        configuration_references=[['config','SGClassImplConfig']],complete_body_capture=False,
        creation_before_bound=False,inverse_authorized=False,editable_refs=False,model_setters_called=0,store_called=False)


class MessageInventoryControls(unittest.TestCase):
    def setUp(self): self.value=fixture()
    def check(self,value=None,**binding):
        return validate(self.value if value is None else value,dict(oid=binding.get('oid','oid')),
            component=binding.get('component','BDE_Tool_Experiments\\Trial_Message'))
    def test_full_schema_and_separate_reference_sets(self):
        result=self.check(); self.assertEqual(result['messages'],1)
        self.assertFalse(result['reference_sets_equal']); self.assertFalse(result['inverse_authorized'])
    def test_api_owner_cannot_be_class_handle(self):
        self.value['api_class']='EtasAPIClass'
        with self.assertRaises(ValueError): self.check()
    def test_foreign_owner_or_path(self):
        for binding in [dict(oid='foreign'),dict(component='BDE_Tool_Experiments\\Trial_Other')]:
            with self.subTest(binding=binding),self.assertRaises(ValueError): self.check(**binding)
    def test_inventory_cannot_authorize_or_claim_complete_body(self):
        for name in ['complete_body_capture','creation_before_bound','inverse_authorized','editable_refs','store_called']:
            value=deepcopy(self.value); value[name]=True
            with self.subTest(name=name),self.assertRaises(ValueError): self.check(value)
    def test_bool_cannot_replace_integer_generation_or_setter_count(self):
        for name in ['generation','model_setters_called']:
            value=deepcopy(self.value); value[name]=False
            with self.subTest(name=name),self.assertRaises(ValueError): self.check(value)
    def test_schema_slots_must_be_contiguous(self):
        self.value['objects'][3]['fields'][1]['slot']=3
        with self.assertRaisesRegex(ValueError,'Contiguous'): self.check()
    def test_same_original_binding_cannot_claim_two_images(self):
        repeated=deepcopy(self.value['objects'][3]); repeated['role']='model:Other'
        repeated['fields'][0]['value']=atom(0); self.value['objects'].append(repeated)
        with self.assertRaisesRegex(ValueError,'inconsistent'): self.check()
    def test_scope_is_independent_of_role_bits(self):
        for scope in ['local','imported','exported']:
            value=deepcopy(self.value); value['declarations'][0]['scope']=scope
            value['declarations'][0]['raw_kind']['value']=scope
            value['objects'][3]['fields'][1]['value']['value']=scope
            self.assertEqual(self.check(value)['messages'],1)
    def test_scope_label_cannot_disagree_with_original_kind(self):
        self.value['declarations'][0]['scope']='exported'
        with self.assertRaisesRegex(ValueError,'scope kind'): self.check()
    def test_getter_flags_cannot_disagree_with_native_attributes(self):
        for name in ['send','receive','message']:
            value=deepcopy(self.value); value['declarations'][0][name]=False
            with self.subTest(name=name),self.assertRaisesRegex(ValueError,'attributes bits'): self.check(value)
    def test_declaration_summary_cannot_replace_native_slots(self):
        self.value['declarations'][0]['attributes']=RECEIVE
        with self.assertRaisesRegex(ValueError,'slots disagree'): self.check()
    def test_direct_type_requires_full_slot_role(self):
        self.value['objects'].pop()
        with self.assertRaisesRegex(ValueError,'original type'): self.check()
    def test_db_proxy_type_requires_exact_database_identity(self):
        proxy=opaque('d5','DBProxy'); proxy.update(database_oid='enum-original',database_class='SGEnumerationDB')
        self.value['declarations'][0]['type']=proxy; self.value['objects'][3]['fields'][2]['value']=proxy
        self.value['objects'].pop(); self.check()
        proxy.pop('database_oid')
        with self.assertRaisesRegex(ValueError,'descriptor shape'): self.check()
    def test_every_original_membership_requires_a_declaration(self):
        self.value['declarations']=[]
        with self.assertRaisesRegex(ValueError,'membership and API'): self.check()
    def test_duplicate_or_missing_membership_refuses(self):
        for entries in [[],self.value['collections'][0]['entries']*2]:
            value=deepcopy(self.value); value['collections'][0]['entries']=entries
            with self.subTest(entries=entries),self.assertRaises(ValueError): self.check(value)
    def test_lookup_table_slots_and_owner_binding_are_exact(self):
        self.value['objects'][1]['field_names'][0]='count'
        self.value['objects'][1]['fields'][0]['field']='count'
        with self.assertRaisesRegex(ValueError,'LookupTable slots'): self.check()
    def test_configuration_reference_omission_refuses(self):
        self.value['configuration_references']=[]
        with self.assertRaisesRegex(ValueError,'configuration reference'): self.check()
    def test_unsorted_duplicate_or_opaque_references_refuse(self):
        for references in [[['z','SGProject'],['a','SGClass']], [['a','SGClass']]*2, ['opaque']]:
            value=deepcopy(self.value); value['owner_database_record_references']=references
            with self.subTest(references=references),self.assertRaises(ValueError): self.check(value)
    def test_binary_slot_bytes_preserved_and_bool_byte_refused(self):
        from bd_message_declaration_inventory import descriptor
        binary=dict(native_class='ByteArray',kind='value',ref='binary',value=[0,127,255])
        self.assertEqual(descriptor(binary)['value'],[0,127,255])
        binary['value'][0]=False
        with self.assertRaisesRegex(ValueError,'ByteArray'): descriptor(binary)

    def test_xml_identity_requires_native_twenty_bytes_and_preserves_signed_byte_values(self):
        self.assertEqual(self.check()['declarations'],1)
        for replacement in ['original-alias',[],[0]*20,[1]*19,[1]*21,[True]+[1]*19,[-1]+[1]*19,[256]+[1]*19]:
            value=deepcopy(self.value);value['declarations'][0]['xml_oid']=replacement
            with self.subTest(replacement=replacement),self.assertRaisesRegex(ValueError,'XML identity'):
                self.check(value)

    def test_xml_identity_must_equal_its_full_original_alias_field(self):
        value=deepcopy(self.value);value['declarations'][0]['xml_oid']=list(value['declarations'][0]['xml_oid'])
        value['declarations'][0]['xml_oid'][-1]=1
        with self.assertRaisesRegex(ValueError,'aliasName'):self.check(value)
        value=deepcopy(self.value);value['objects'][3]['field_names'].pop();value['objects'][3]['fields'].pop()
        with self.assertRaisesRegex(ValueError,'role slots'):self.check(value)


if __name__=='__main__': unittest.main()
