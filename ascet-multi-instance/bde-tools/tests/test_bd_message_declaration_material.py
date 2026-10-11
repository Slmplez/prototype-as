"""Message factory binding and rejection controls; synthetic after is not live evidence."""
from copy import deepcopy
import hashlib
import json
import unittest
from unittest.mock import Mock, patch

from bd_create_material import bind_preparation, observation, same_material, summary, validate as validate_create
from bd_edit_journal import JournalError
from bd_message_declaration_inventory import SEND, RECEIVE
from bd_message_declaration_material import API_CLASS, MODEL_FIELDS, TYPE_CLASS, validate
from bd_native_structure import NativeStructureAdapter
from test_bd_create_material import TOKEN, receipt
from test_bd_message_declaration_before import FIXTURE, SHA


def prepared(kind='receive_message', model_type='cont', scope='imported'):
    raw = FIXTURE.read_bytes()
    if hashlib.sha256(raw).hexdigest() != SHA:
        raise ValueError('Original Module image fixture changed')
    study = json.loads(raw)['result']
    value = {key: deepcopy(study[key]) for key in ('component_oid', 'generation', 'owner_ref',
        'before', 'before_schema', 'owner_references_before', 'owner_database_record_references_before')}
    value.update(profile='native_message_declaration_material_v1', native_token=TOKEN, phase='prepared',
        kind=kind, request_name='MessageContractProbe', model_type=model_type, message_scope=scope,
        roots_before=deepcopy(study['roots']), model_refs_before=deepcopy(study['model_refs']),
        configuration_links_before=deepcopy(study['configuration_links']),
        after=None, after_schema=None, roots_after=None, model_refs_after=None, configuration_links_after=None,
        actual_diff=None, created_model_ref=None, owner_references_after=None,
        owner_database_record_references_after=None, foreign_database_boundaries=True,
        same_original_objects_retained=True, inverse_authorized=False, model_setters_called=0, store_called=False)
    return value


def creation_receipt(kind='receive_message', model_type='cont', scope='imported', attached=False):
    declaration = prepared(kind, model_type, scope)
    value = receipt('attached' if attached else 'prepared')
    value.update(profile='native_create_material_v4', kind=kind, component_oid=declaration['component_oid'],
                 declaration_material=declaration)
    value['before']['generation'] = declaration['generation']
    if not attached:
        return value
    # These after objects are synthetic controls; only the original empty before was captured live.
    nil = dict(**{'class': 'UndefinedObject'}, value='nil')
    pointers = [deepcopy(nil) for _ in MODEL_FIELDS]
    roles = dict(elementName=dict(ref='v10002', **{'class': 'String'}),
        sgClass=dict(ref='v10001', **{'class': TYPE_CLASS[model_type]}),
        owner=dict(ref='v10004', **{'class': 'DBProxy'}),
        attributes=dict(**{'class': 'SmallInteger'}, value=str(
            (SEND if kind in ('send_message','send_receive_message') else 0)
            | (RECEIVE if kind in ('receive_message','send_receive_message') else 0))),
        kind=dict(ref='v10003', **{'class': 'String'}))
    for key, pointer in roles.items():
        pointers[MODEL_FIELDS.index(key)] = pointer
    new = [dict(ref='v10000', **{'class': 'SGVariable'}, kind='fields', value=pointers),
        dict(ref='v10001', **{'class': TYPE_CLASS[model_type]}, kind='fields', value=[]),
        dict(ref='v10002', **{'class': 'String'}, kind='value', value=list(declaration['request_name'].encode('ascii'))),
        dict(ref='v10003', **{'class': 'String'}, kind='value', value=list(scope.encode('ascii'))),
        dict(ref='v10004', **{'class': 'DBProxy'}, kind='boundary', value=None)]
    after = deepcopy(declaration['before']); after['objects'].extend(deepcopy(new))
    fields = deepcopy(declaration['before_schema'])
    fields['objects'].extend(dict(ref=row['ref'], **{'class': row['class']}, kind=row['kind'],
        field_names=deepcopy(MODEL_FIELDS) if row['class']=='SGVariable' else []) for row in new)
    roots = deepcopy(declaration['roots_before'])
    roots.extend(dict(ref=row['ref'], **{'class': row['class']}) for row in new[:2])
    declaration.update(phase='attached', after=after, after_schema=fields, roots_after=roots,
        model_refs_after=['v10000'], configuration_links_after=deepcopy(declaration['configuration_links_before']),
        actual_diff=dict(profile='native_graphical_diff_v1', complete=True, changes=[], new_objects=deepcopy(new),
                         after_object_count=len(after['objects'])), created_model_ref='v10000',
        created_owner_binding=dict(model_ref='v10000',pointer_ref='v10004',pointer_class='DBProxy',
            database_oid=declaration['component_oid'],database_class='SGModule',
            resolved_owner_ref=declaration['owner_ref'],same_original_owner=True),
        owner_references_after=deepcopy(declaration['owner_references_before']),
        owner_database_record_references_after=deepcopy(declaration['owner_database_record_references_before']))
    value.update(created_model_oid='message-model', model_oids_after=['message-model'])
    value['after']['generation'] = declaration['generation']
    value['after']['entries'].append(dict(kind='model', ref='message-model', native_class=API_CLASS[kind],
        name=declaration['request_name'], model_type=model_type, message=dict(scope=scope,
            send=kind=='send_message', receive=kind=='receive_message', send_receive=kind=='send_receive_message',
            global_label=declaration['request_name'])))
    value['graphical_actual']['new_objects'][0]['class'] = 'SGDataGO'
    value['graphical_actual']['changes'][0]['after'][0]['class'] = 'SGDataGO'
    return value


class MessageCreationControls(unittest.TestCase):
    def check(self, value):
        return validate_create(value, token=TOKEN, oid=prepared()['component_oid'],
                               kind=value['kind'], phase=value['phase'])

    def native_change(self, value, field, pointer):
        material = value['declaration_material']
        for rows in (material['after']['objects'], material['actual_diff']['new_objects']):
            next(row for row in rows if row['ref']=='v10000')['value'][MODEL_FIELDS.index(field)] = deepcopy(pointer)

    def test_full_empty_before_and_synthetic_roles_types_scopes(self):
        for kind in ('receive_message','send_message','send_receive_message'):
            for model_type in TYPE_CLASS:
                for scope in ('local','imported','exported'):
                    with self.subTest(kind=kind, model_type=model_type, scope=scope):
                        value = creation_receipt(kind, model_type, scope, attached=True)
                        self.assertEqual(self.check(value), value)
                        self.assertFalse(summary(value)['declaration_material']['inverse_authorized'])

    def test_exact_request_and_default_type_scope_binding(self):
        value = self.check(creation_receipt())
        arguments = [[], 'receive_message', 'MessageContractProbe', 320, 240, 'cont']
        bind_preparation(value, value['before'], arguments)
        bind_preparation(value, value['before'], arguments[:5]+[''])
        bind_preparation(value, value['before'], arguments+['Simported'])
        for index, changed in ((0,['n1']), (1,'send_message'), (2,'Wrong'), (5,'enum')):
            bad = deepcopy(arguments); bad[index] = changed
            with self.subTest(index=index), self.assertRaises(JournalError):
                bind_preparation(value, value['before'], bad)
        with self.assertRaises(JournalError):
            bind_preparation(value, value['before'], arguments+['Sexported'])
        before = deepcopy(value['before']); before['generation'] += 1
        with self.assertRaisesRegex(JournalError,'typed preparation'):
            bind_preparation(value, before, arguments)

    def test_enum_complex_and_foreign_kind_do_not_enter_primitive_profile(self):
        for field, changed in (('model_type','enum'), ('model_type','complex'), ('kind','variable'),
                               ('request_name','not ascii \u4e2d'), ('generation',True)):
            value = creation_receipt(); value['declaration_material'][field] = changed
            with self.subTest(field=field,changed=changed),self.assertRaises(JournalError):self.check(value)

    def test_message_namespace_is_joined_to_both_actual_typed_heads(self):
        for field in ('before','after'):
            value = creation_receipt(attached=True); value[field]['generation'] += 1
            with self.subTest(field=field),self.assertRaisesRegex(JournalError,'generation'):self.check(value)

    def test_actual_typed_role_name_type_scope_cannot_disagree(self):
        for field, changed in (('name','wrong'), ('native_class','EtasAPIModelArray'),
                               ('model_type','log'), ('definition',dict(oid='foreign'))):
            value = creation_receipt(attached=True); value['after']['entries'][-1][field] = changed
            with self.subTest(field=field),self.assertRaisesRegex(JournalError,'role/name/type/scope'):self.check(value)
        for field, changed in (('scope','exported'),('global_label','wrong'),('send',True),('receive',1)):
            value = creation_receipt(attached=True); value['after']['entries'][-1]['message'][field] = changed
            with self.subTest(field=field),self.assertRaises(JournalError):self.check(value)

    def test_actual_native_role_bits_are_independently_checked(self):
        value = creation_receipt(attached=True)
        self.native_change(value,'attributes',dict(**{'class':'SmallInteger'},value=str(SEND)))
        with self.assertRaisesRegex(JournalError,'attributes bits'):self.check(value)

    def test_native_type_owner_scope_and_name_cannot_substitute(self):
        for field, pointer in (('sgClass',dict(ref=prepared()['owner_ref'],**{'class':'SGModule'})),
                               ('owner',dict(ref='foreign',**{'class':'SGModule'})),
                               ('kind',dict(ref='v10002',**{'class':'String'})),
                               ('elementName',dict(ref='v10003',**{'class':'String'}))):
            value = creation_receipt(attached=True); self.native_change(value,field,pointer)
            with self.subTest(field=field),self.assertRaises(JournalError):self.check(value)

    def test_native_proxy_descriptor_must_prove_exact_module_and_original_pointer(self):
        value = creation_receipt(attached=True)
        del value['declaration_material']['created_owner_binding']
        with self.assertRaises(JournalError):self.check(value)
        for field,changed in (('model_ref','foreign'),('pointer_ref','v10001'),('pointer_class','DBObject'),
                               ('database_oid','foreign'),('database_class','SGClass'),
                               ('resolved_owner_ref','foreign'),('same_original_owner',1)):
            value=creation_receipt(attached=True)
            value['declaration_material']['created_owner_binding'][field]=changed
            with self.subTest(field=field),self.assertRaisesRegex(JournalError,'owner proxy'):self.check(value)

    def test_hash_bound_live_after_with_separate_converted_proxy_proof(self):
        # Conversion checks the contract only; the new native proof must still be verified online.
        path=FIXTURE.parent.parent/'bde-message-created-identity-audit-02/raw-actual-material.json'
        raw=path.read_bytes()
        self.assertEqual(hashlib.sha256(raw).hexdigest(),
            'd82f92fcdb56a64adbed32dc47f546094a8ea178ec2ef41b0936c3d935e62c7c')
        value=json.loads(raw)['result'];declaration=value['declaration_material']
        model=next(row for row in declaration['after']['objects'] if row['ref']==declaration['created_model_ref'])
        pointer=model['value'][MODEL_FIELDS.index('owner')]
        declaration['created_owner_binding']=dict(model_ref=model['ref'],pointer_ref=pointer['ref'],
            pointer_class='DBProxy',database_oid=value['component_oid'],database_class='SGModule',
            resolved_owner_ref=declaration['owner_ref'],same_original_owner=True)
        checked=validate_create(value,token=value['native_token'],oid=value['component_oid'],
            kind=value['kind'],phase='attached')
        self.assertEqual(checked,value)

    def test_complete_after_body_cannot_hide_changes_or_reorder_original_slots(self):
        value = creation_receipt(attached=True)
        next(row for row in value['declaration_material']['after']['objects'] if row['class']=='String')['value'].append(1)
        with self.assertRaisesRegex(JournalError,'does not explain'):self.check(value)
        value = creation_receipt(attached=True)
        row = next(row for row in value['declaration_material']['after_schema']['objects'] if len(row['field_names'])>2)
        row['field_names'][0], row['field_names'][1] = row['field_names'][1], row['field_names'][0]
        with self.assertRaises(JournalError):self.check(value)

    def test_shared_module_references_cannot_be_lost_or_forged(self):
        for prefix in ('owner_references','owner_database_record_references'):
            for changed in ([], prepared()[prefix+'_before']+[['foreign','SGProject']]):
                value = creation_receipt(attached=True); value['declaration_material'][prefix+'_after'] = sorted(changed)
                with self.subTest(prefix=prefix),self.assertRaisesRegex(JournalError,'inbound reference'):self.check(value)

    def test_before_cannot_claim_after_and_capture_cannot_grant_history(self):
        for field, changed in (('after',{}), ('owner_references_after',[]), ('model_refs_after',[]),
                               ('inverse_authorized',True), ('store_called',True), ('model_setters_called',1)):
            value = creation_receipt(); value['declaration_material'][field] = changed
            with self.subTest(field=field),self.assertRaises(JournalError):self.check(value)
        value = creation_receipt(attached=True); value['created_definition_oid'] = 'foreign'
        with self.assertRaisesRegex(JournalError,'new library definition'):self.check(value)

    def test_actual_observation_binds_durable_original_reference_sets(self):
        before, after = creation_receipt(), creation_receipt(attached=True)
        kwargs = dict(token=TOKEN, oid=before['component_oid'], kind=before['kind'])
        observed = observation(before['before'],after['after'],before,after,**kwargs)
        self.assertEqual(observed['declaration_differences']['owner_references_diff'],dict(added=[],removed=[]))
        changed = deepcopy(after)
        for phase in ('before','after'):
            changed['declaration_material']['owner_references_'+phase].append(['zzforeign','SGProject'])
        with self.assertRaisesRegex(JournalError,'durable original owner_references_before'):
            observation(before['before'],after['after'],before,changed,**kwargs)

    def test_material_comparison_preserves_all_reference_and_schema_evidence(self):
        value = creation_receipt()
        kwargs = dict(token=TOKEN,oid=value['component_oid'],kind=value['kind'],phase='prepared')
        reordered = deepcopy(value); reordered['declaration_material']['before']['objects'].reverse()
        self.assertTrue(same_material(value,reordered,**kwargs))
        changed = deepcopy(value); changed['declaration_material']['owner_references_before'].append(['zzforeign','SGProject'])
        self.assertFalse(same_material(value,changed,**kwargs))

    def test_adapter_discards_exact_prepared_token_on_bad_message_request_binding(self):
        material = self.check(creation_receipt())
        adapter = NativeStructureAdapter('BDE_Tool_Experiments\\Trial_message',environment={})
        adapter.create_material_capable = True
        adapter._ensure_open = Mock(); adapter._preparation = Mock(return_value=material['before'])
        adapter._exchange = Mock(side_effect=[{'prepared':True},material])
        adapter.discard_prepared = Mock(return_value={'released':True})
        arguments = [[], 'send_message', 'MessageContractProbe',320,240,'cont']
        domain = dict(session='s',database='db',process_epoch='p',oid=material['component_oid'])
        with patch('bd_native_structure.bd_instance_pending.check'),self.assertRaises(JournalError):
            adapter.prepare(domain,TOKEN,'create_block',arguments)
        adapter.discard_prepared.assert_called_once_with(domain,TOKEN)

    def test_message_profile_default_off_and_cannot_use_variable_enum_history(self):
        adapter = NativeStructureAdapter('BDE_Tool_Experiments\\Trial_message',environment={})
        self.assertFalse(adapter.create_material_capable)
        environment = dict(ASCET_BD_CREATE_MATERIAL='identity_v1',ASCET_BD_OPERATION_EXECUTOR='staged_v1',
            ASCET_BD_CREATE_DECLARATIONS='message_body_v1',ASCET_BD_CREATE_HISTORY='native_source_exact_v1')
        adapter = NativeStructureAdapter('BDE_Tool_Experiments\\Trial_message',environment=environment)
        self.assertTrue(adapter.create_material_capable)
        self.assertFalse(adapter.create_declaration_history_capable)
        self.assertFalse(adapter.create_enum_history_capable)
        for profile in ('body_exact_v1','enum_body_exact_v1'):
            with self.subTest(profile=profile),self.assertRaises(ValueError):
                NativeStructureAdapter('BDE_Tool_Experiments\\Trial_message',environment={**environment,
                    'ASCET_BD_CREATE_DECLARATION_HISTORY':profile})


if __name__=='__main__': unittest.main()
