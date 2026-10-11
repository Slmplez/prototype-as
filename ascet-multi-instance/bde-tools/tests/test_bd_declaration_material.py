"""Original declaration certificate and unordered native material refusal controls."""
from copy import deepcopy
import unittest

from bd_declaration_material import validate
from test_bd_declaration_images import receipt as image_fixture


TOKEN = 'edit_' + 'a' * 64


def certificate(attached=False):
    fixture = image_fixture(); before = fixture['current_image']; before_schema = fixture['current_schema']
    before['objects'][0]['value'] = [{'class':'LookupTable', 'ref':'v8'}, {'class':'LookupTable', 'ref':'v11'}, {'class':'Dictionary', 'ref':'v16'}]
    before_schema['objects'][0]['field_names'] = ['primitiveVariables', 'complexVariables', 'timeStamps']
    before['objects'].append(dict(ref='v16', **{'class':'Dictionary'}, kind='collection', value=[]))
    before_schema['objects'].append(dict(ref='v16', **{'class':'Dictionary'}, kind='collection', field_names=[]))
    roots = [{'ref':r['ref'], 'class':r['class']} for r in before['objects'][:7]]
    value = dict(profile='native_declaration_material_v1', native_token=TOKEN, component_oid='oid',
        phase='attached' if attached else 'prepared', before=before, before_schema=before_schema,
        roots_before=roots, configuration_links_before=fixture['linked_configurations'], owner_ref='v1',
        after=None, after_schema=None, roots_after=None, configuration_links_after=None, actual_diff=None,
        created_model_ref=None, foreign_database_boundaries=True, same_original_objects_retained=True,
        inverse_authorized=False, model_setters_called=0, store_called=False)
    if attached:
        value.update(after=deepcopy(before), after_schema=deepcopy(before_schema), roots_after=deepcopy(roots),
            configuration_links_after=deepcopy(fixture['linked_configurations']), created_model_ref='v14')
        added = dict(ref='v14', **{'class':'SGVariable'}, kind='fields', value=[])
        value['after']['objects'].append(added)
        value['after_schema']['objects'].append(dict(ref='v14', **{'class':'SGVariable'}, kind='fields', field_names=[]))
        value['roots_after'].append(dict(ref='v14', **{'class':'SGVariable'}))
        value['actual_diff'] = dict(profile='native_graphical_diff_v1', complete=True, changes=[],
            new_objects=[deepcopy(added)], after_object_count=len(value['after']['objects']))
    return value


class DeclarationMaterialTests(unittest.TestCase):
    def check(self, value): return validate(value, token=TOKEN, oid='oid', phase=value['phase'])

    def test_prepared_and_actual_are_capture_only(self):
        for attached in [False, True]:
            result = self.check(certificate(attached))
            self.assertFalse(result['inverse_authorized'])

    def test_prepared_cannot_invent_after(self):
        value = certificate(); value['created_model_ref'] = 'v14'
        with self.assertRaises(ValueError): self.check(value)

    def test_original_owner_fields_cannot_be_omitted(self):
        value = certificate(); value['before_schema']['objects'][0]['field_names'][-1] = 'other'
        with self.assertRaisesRegex(ValueError, 'timestamp'): self.check(value)

    def test_config_identity_links_are_required(self):
        value = certificate(); value['configuration_links_before'].pop()
        with self.assertRaisesRegex(ValueError, 'Every owned configuration'): self.check(value)

    def test_native_schema_cannot_change_class(self):
        value = certificate(); value['before_schema']['objects'][0]['class'] = 'Other'
        with self.assertRaises(ValueError): self.check(value)

    def test_new_model_cannot_be_old_model(self):
        value = certificate(True); value['created_model_ref'] = 'v2'
        with self.assertRaisesRegex(ValueError, 'factory object'): self.check(value)

    def test_after_image_must_be_explained_by_actual_diff(self):
        value = certificate(True)
        next(r for r in value['after']['objects'] if r['ref'] == 'v9')['value'].append({'class':'SmallInteger', 'value':'1'})
        with self.assertRaisesRegex(ValueError, 'does not explain'): self.check(value)

    def test_inverse_cannot_be_enabled_by_a_receipt(self):
        value = certificate(True); value['inverse_authorized'] = True
        with self.assertRaises(ValueError): self.check(value)

    def test_actual_new_ref_must_be_an_owned_root(self):
        value = certificate(True); value['roots_after'].pop()
        with self.assertRaisesRegex(ValueError, 'factory object'): self.check(value)

    def test_lookup_slots_remain_ordered(self):
        value = certificate()
        next(r for r in value['before_schema']['objects'] if r['ref'] == 'v8')['field_names'] = ['elementCount','values','keys']
        with self.assertRaisesRegex(ValueError, 'storage slots'): self.check(value)


if __name__ == '__main__': unittest.main()
