"""Offline enum preparation controls using a converted hashed study image.

The study is live evidence only for original-before capture. Conversion into a
formal receipt is a test fixture, not live formal creation/history acceptance.
"""
import copy
import hashlib
import json
import unittest
from unittest.mock import Mock, patch

from bd_create_material import bind_preparation, validate as validate_create
from bd_edit_journal import JournalError
from bd_enum_declaration_material import validate, summary
from bd_native_structure import NativeStructureAdapter
from test_bd_create_material import TOKEN, receipt
from test_bd_enum_declaration_before import FIXTURE, FIXTURE_SHA


def prepared():
    raw = FIXTURE.read_bytes()
    if hashlib.sha256(raw).hexdigest() != FIXTURE_SHA:
        raise ValueError('Original live study fixture changed')
    study = json.loads(raw)['result']
    value = {key: copy.deepcopy(study[key]) for key in (
        'component_oid', 'generation', 'definition_oid', 'definition_path',
        'owner_ref', 'definition_ref', 'enumeration_ref', 'before', 'before_schema',
        'definition_references_before')}
    value.update(profile='native_enum_declaration_material_v1', native_token=TOKEN,
        phase='prepared', roots_before=copy.deepcopy(study['roots']),
        configuration_links_before=copy.deepcopy(study['configuration_links']),
        after=None, after_schema=None, roots_after=None, configuration_links_after=None,
        actual_diff=None, created_model_ref=None, definition_references_after=None,
        foreign_database_boundaries=True, same_original_objects_retained=True,
        inverse_authorized=False, model_setters_called=0, store_called=False)
    return value


def creation_receipt():
    value = receipt()
    declaration = prepared()
    value.update(profile='native_create_material_v3', kind='enumeration',
        component_oid=declaration['component_oid'], declaration_material=declaration)
    value['before']['generation'] = declaration['generation']
    return value


def synthetic_attached():
    """Minimal synthetic after for rejection controls; no online factory proof."""
    declaration = prepared()
    names = ['properties', 'comment', 'elementName', 'aliasName', 'sgClass', 'owner',
        'attributes', 'kind', 'elementKind', 'memory', 'methodAccessEnabled', 'formula',
        'symbolicName', 'isSend', 'isReceive']
    fields = [dict(**{'class': 'UndefinedObject'}, value='nil') for _ in names]
    fields[names.index('sgClass')] = dict(ref=declaration['enumeration_ref'], **{'class': 'SGEnumeration'})
    new_model = dict(ref='v10000', **{'class': 'SGVariable'}, kind='fields', value=fields)
    after = copy.deepcopy(declaration['before']); after['objects'].append(new_model)
    schema = copy.deepcopy(declaration['before_schema'])
    schema['objects'].append(dict(ref=new_model['ref'], **{'class': 'SGVariable'}, kind='fields', field_names=names))
    roots = copy.deepcopy(declaration['roots_before']); roots.append(dict(ref=new_model['ref'], **{'class': 'SGVariable'}))
    declaration.update(phase='attached', after=after, after_schema=schema, roots_after=roots,
        configuration_links_after=copy.deepcopy(declaration['configuration_links_before']),
        actual_diff=dict(profile='native_graphical_diff_v1', complete=True, changes=[],
                        new_objects=[copy.deepcopy(new_model)], after_object_count=len(after['objects'])),
        created_model_ref=new_model['ref'], definition_references_after=sorted(
            declaration['definition_references_before'] + [[declaration['component_oid'], 'SGClass']]))
    value = receipt('attached')
    value.update(profile='native_create_material_v3', kind='enumeration',
        component_oid=declaration['component_oid'], declaration_material=declaration,
        created_model_oid='enum-model', model_oids_after=['enum-model'])
    value['before']['generation'] = value['after']['generation'] = declaration['generation']
    value['after']['entries'].append(dict(kind='model', ref='enum-model', native_class='EtasAPIModelScalar',
        model_type='enum', definition=dict(path=declaration['definition_path'], oid=declaration['definition_oid'])))
    value['graphical_actual']['new_objects'][0]['class'] = 'SGDataGO'
    value['graphical_actual']['changes'][0]['after'][0]['class'] = 'SGDataGO'
    return value


class EnumCreationPreparationControls(unittest.TestCase):
    def check(self, value):
        return validate(value, token=TOKEN, oid=prepared()['component_oid'], phase='prepared')

    def create_check(self, value):
        return validate_create(value, token=TOKEN, oid=prepared()['component_oid'],
                               kind='enumeration', phase=value['phase'])

    def arguments(self):
        return [[], 'enumeration', 'Mode', 320, 240, prepared()['definition_path']]

    def test_converted_before_fixture_validates_without_history_authority(self):
        original = prepared(); checked = self.check(original)
        self.assertEqual(checked, original)
        projection = summary(checked)
        self.assertEqual(projection['before_objects'], 126)
        self.assertIsNone(projection['actual_diff'])
        self.assertFalse(projection['inverse_authorized'])
        checked['before']['objects'].clear()
        self.assertEqual(len(original['before']['objects']), 126)

    def test_nonstring_or_foreign_definition_path_is_a_contract_error(self):
        for path in (None, 28, {}, [], 'Library\\Foreign'):
            value = prepared(); value['definition_path'] = path
            with self.subTest(path=path), self.assertRaises(ValueError): self.check(value)

    def test_prepared_material_cannot_invent_factory_after_or_reference_diff(self):
        for field in ('after', 'after_schema', 'roots_after', 'configuration_links_after',
                      'actual_diff', 'created_model_ref', 'definition_references_after'):
            value = prepared(); value[field] = []
            with self.subTest(field=field), self.assertRaises(ValueError): self.check(value)

    def test_factory_capture_cannot_grant_inverse_or_store_authority(self):
        for field, changed in (('inverse_authorized', True), ('model_setters_called', 1),
                               ('store_called', True), ('same_original_objects_retained', False)):
            value = prepared(); value[field] = changed
            with self.subTest(field=field), self.assertRaises(ValueError): self.check(value)

    def test_enum_namespace_must_join_the_complete_typed_before_generation(self):
        value = creation_receipt(); self.create_check(value)
        for generation in (None, '28', True, 0, 27, 29):
            bad = copy.deepcopy(value); bad['before']['generation'] = generation
            with self.subTest(generation=generation), self.assertRaisesRegex(JournalError, 'generation'):
                self.create_check(bad)

    def test_existing_enum_capture_cannot_claim_a_new_library_definition(self):
        value = creation_receipt(); value['created_definition_oid'] = 'new-definition'
        with self.assertRaisesRegex(JournalError, 'new library definition'): self.create_check(value)

    def test_actual_prepare_and_exact_definition_request_are_bound(self):
        value = self.create_check(creation_receipt())
        bind_preparation(value, value['before'], self.arguments())
        arguments = self.arguments(); arguments[5] = '\\' + arguments[5] + '\\'
        bind_preparation(value, value['before'], arguments)
        for index, changed in ((0, ['n1']), (1, 'variable'),
                               (5, 'BDE_Tool_Experiments\\Another'), (5, 'NEWENUM|Mode|Off'),
                               (5, None)):
            arguments = self.arguments(); arguments[index] = changed
            with self.subTest(index=index, changed=changed), self.assertRaisesRegex(JournalError, 'request'):
                bind_preparation(value, value['before'], arguments)
        before = copy.deepcopy(value['before']); before['generation'] += 1
        with self.assertRaisesRegex(JournalError, 'typed preparation'):
            bind_preparation(value, before, self.arguments())

    def test_adapter_discards_exact_received_prepare_when_enum_request_binding_fails(self):
        material = self.create_check(creation_receipt())
        adapter = NativeStructureAdapter('BDE_Tool_Experiments\\Trial_enum', environment={})
        adapter.create_material_capable = True
        adapter._ensure_open = Mock()
        adapter._preparation = Mock(return_value=material['before'])
        adapter._exchange = Mock(side_effect=[{'prepared': True}, material])
        adapter.discard_prepared = Mock(return_value={'released': True})
        domain = dict(session='s', database='db', process_epoch='p', oid=material['component_oid'])
        arguments = self.arguments(); arguments[5] = 'BDE_Tool_Experiments\\Foreign'
        with patch('bd_native_structure.bd_instance_pending.check'), self.assertRaises(JournalError):
            adapter.prepare(domain, TOKEN, 'create_block', arguments)
        adapter.discard_prepared.assert_called_once_with(domain, TOKEN)
        self.assertEqual([call.args[0]['cmd'] for call in adapter._exchange.call_args_list],
                         ['prepare', 'create_material'])

    def test_enum_capture_does_not_enable_variable_history_profile(self):
        environment = dict(ASCET_BD_CREATE_MATERIAL='identity_v1', ASCET_BD_OPERATION_EXECUTOR='staged_v1',
            ASCET_BD_CREATE_DECLARATIONS='enum_body_v1', ASCET_BD_CREATE_HISTORY='native_source_exact_v1')
        adapter = NativeStructureAdapter('BDE_Tool_Experiments\\Trial_enum', environment=environment)
        self.assertTrue(adapter.create_material_capable)
        self.assertFalse(adapter.create_declaration_history_capable)
        environment['ASCET_BD_CREATE_DECLARATION_HISTORY'] = 'body_exact_v1'
        with self.assertRaisesRegex(ValueError, 'original body capture'):
            NativeStructureAdapter('BDE_Tool_Experiments\\Trial_enum', environment=environment)

    def test_synthetic_actual_definition_join_accepts_only_the_exact_selected_type(self):
        value = synthetic_attached(); self.create_check(value)
        for changed in (None, dict(path='BDE_Tool_Experiments\\Other', oid=value['declaration_material']['definition_oid']),
                        dict(path=value['declaration_material']['definition_path'], oid='foreign')):
            bad = copy.deepcopy(value); bad['after']['entries'][-1]['definition'] = changed
            with self.subTest(changed=changed), self.assertRaisesRegex(JournalError, 'exact retained original definition'):
                self.create_check(bad)

    def test_synthetic_actual_requires_enum_scalar_api_and_complete_generation(self):
        for field, changed in (('model_type', 'cont'), ('native_class', 'EtasAPIModelArray')):
            value = synthetic_attached(); value['after']['entries'][-1][field] = changed
            with self.subTest(field=field), self.assertRaisesRegex(JournalError, 'exact retained original definition'):
                self.create_check(value)
        value = synthetic_attached(); value['after']['generation'] += 1
        with self.assertRaisesRegex(JournalError, 'generation'): self.create_check(value)

    def test_synthetic_actual_cannot_hide_or_reorder_original_scalar_slots(self):
        for names in ([], ['wrong_slot'] * 15):
            value = synthetic_attached(); material = value['declaration_material']
            row = material['after_schema']['objects'][-1]; row['field_names'] = names
            if not names:
                material['after']['objects'][-1]['value'] = []
                material['actual_diff']['new_objects'][-1]['value'] = []
            with self.subTest(names=names), self.assertRaises(JournalError): self.create_check(value)

    def test_synthetic_actual_cannot_bind_scalar_to_a_non_enum_native_object(self):
        value = synthetic_attached(); material = value['declaration_material']
        pointer = dict(ref=material['owner_ref'], **{'class': 'SGClass'})
        for row in (material['after']['objects'][-1], material['actual_diff']['new_objects'][-1]):
            row['value'][4] = copy.deepcopy(pointer)
        with self.assertRaisesRegex(JournalError, 'foreign native type'): self.create_check(value)

    def test_synthetic_actual_reference_diff_cannot_remove_library_or_add_foreign_owner(self):
        for references in ([], prepared()['definition_references_before'] + [['foreign', 'SGClass']]):
            value = synthetic_attached(); value['declaration_material']['definition_references_after'] = sorted(references)
            with self.subTest(references=references), self.assertRaisesRegex(JournalError, 'foreign owner change'):
                self.create_check(value)

    def test_synthetic_actual_image_cannot_exceed_its_recorded_complete_diff(self):
        value = synthetic_attached(); value['declaration_material']['after']['objects'][-1]['value'][0] = dict(
            **{'class': 'SmallInteger'}, value='1')
        with self.assertRaisesRegex(JournalError, 'does not explain after image'): self.create_check(value)


if __name__ == '__main__':
    unittest.main()
