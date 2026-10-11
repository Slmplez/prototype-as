"""Creation evidence rejection and binding; fixtures are not online acceptance."""
from copy import deepcopy
import unittest

from bd_create_material import validate, observation
from bd_edit_journal import JournalError

TOKEN = 'edit_' + 'a' * 64


def roster(members, drawing=False):
    value = dict(profile='native_parent_order_v1', native_token=TOKEN, diagram='Main',
                 parent='o1', collection='o2', complete=True, members=members)
    if drawing:
        value.update(profile='native_drawing_order_v1', numbers=list(range(1, len(members) + 1)))
    return value


def receipt(phase='prepared'):
    attached = phase == 'attached'
    before = dict(diagram='Main', diagram_kind='block_diagram', targets=[], entries=[])
    after = {**before, 'entries': [dict(kind='node', ref='n1', pins=[])]}
    return dict(profile='native_create_material_v1', native_token=TOKEN, component_oid='oid',
        diagram='Main', operation='create_block', kind='literal', phase=phase,
        before=before, after=after if attached else None,
        parent_before=roster([]), drawing_before=roster([], True),
        parent_after=roster(['o3']) if attached else None,
        drawing_after=roster(['o3'], True) if attached else None,
        graphical_before=dict(profile='native_graphical_current_v1', complete=True,
            objects=[dict(ref='v1', **{'class': 'OrderedCollection'}, kind='collection', value=[])]),
        graphical_actual=dict(profile='native_graphical_diff_v1', complete=True,
            new_objects=[dict(ref='v2', **{'class': 'SGLiteralGO'}, kind='fields', value=[])],
            changes=[dict(object='v1', kind='collection', index=None, before=[],
                          after=[dict(ref='v2', **{'class': 'SGLiteralGO'})])],
            after_object_count=2) if attached else None,
        created_native_ref='o3' if attached else None, created_model_oid=None, created_definition_oid=None,
        model_oids_before=[], model_oids_after=[] if attached else None,
        original_native_objects=1, original_source_objects=1,
        actual_native_objects=2 if attached else None, actual_source_objects=2 if attached else None,
        source_root_preserved=True, created_original_retained=attached,
        allocator_observations=[dict(field='highestUsedGraphicalIdentifier', before=0,
                                     after=1 if attached else None, rewind_authorized=False)],
        model_setters_called=0, store_called=False, write_authorized=False,
        managed_inverse_enabled=False, declaration_body_restore_verified=False)


class CreateMaterialTests(unittest.TestCase):
    def check(self, value):
        return validate(value, token=TOKEN, oid='oid', kind='literal', phase=value['phase'])

    def refuse(self, value):
        with self.assertRaises(JournalError):
            self.check(value)

    def test_prepared_and_actual_receipts_copy_complete_captured_values(self):
        for phase in ('prepared', 'attached'):
            with self.subTest(phase=phase):
                value = receipt(phase)
                checked = self.check(value)
                self.assertEqual(checked, value)
                checked['graphical_before']['objects'].clear()
                self.assertEqual(len(value['graphical_before']['objects']), 1)

    def test_prepared_never_invents_factory_ids_or_actual_resources(self):
        actual = receipt('attached')
        for field in ('after', 'created_native_ref', 'created_model_oid', 'created_definition_oid',
                      'actual_source_objects', 'parent_after', 'drawing_after', 'graphical_actual'):
            with self.subTest(field=field):
                value = receipt()
                value[field] = actual[field] if actual[field] is not None else 'future_oid'
                self.refuse(value)

    def test_wrong_owner_scope_or_partial_graph_is_not_complete_capture(self):
        for field, bad in [('component_oid', 'other'), ('native_token', 'edit_' + 'b' * 64),
                           ('operation', 'connect_data'), ('diagram', 'Main/h1')]:
            value = receipt(); value[field] = bad; self.refuse(value)
        for field, bad in [('diagram', 'Main/h1'), ('diagram_kind', 'state_machine'), ('targets', ['n1'])]:
            value = receipt(); value['before'][field] = bad; self.refuse(value)

    def test_actual_parent_and_drawing_must_explain_exactly_one_factory_object(self):
        for field in ('parent_after', 'drawing_after'):
            for members in ([], ['o4'], ['o3', 'o4'], ['o3', 'o3']):
                with self.subTest(field=field, members=members):
                    value = receipt('attached')
                    value[field] = roster(members, field == 'drawing_after')
                    self.refuse(value)

    def test_capture_cannot_hide_deleted_or_extra_model_declarations(self):
        for original, actual, created in [(['original'], [], None), ([], ['a', 'b'], 'a'),
                                          ([], ['a'], None), ([], [], 'a')]:
            value = receipt('attached')
            value.update(model_oids_before=original, model_oids_after=actual, created_model_oid=created)
            self.refuse(value)
        value = receipt('attached'); value['created_definition_oid'] = 'unexpected_enum'; self.refuse(value)

    def test_allocator_and_inverse_authority_cannot_be_forged(self):
        for field, bad in [('write_authorized', True), ('managed_inverse_enabled', True),
                           ('declaration_body_restore_verified', True), ('model_setters_called', 1)]:
            value = receipt('attached'); value[field] = bad; self.refuse(value)
        value = receipt(); value['allocator_observations'][0]['after'] = 1; self.refuse(value)
        value = receipt('attached'); value['allocator_observations'][0]['after'] = None; self.refuse(value)
        value = receipt('attached'); value['allocator_observations'][0]['rewind_authorized'] = True; self.refuse(value)
        value = receipt('attached'); value['allocator_observations'] *= 2; self.refuse(value)

    def test_graphical_patch_rejects_unbound_new_reference_and_incomplete_count(self):
        value = receipt('attached'); value['graphical_actual']['after_object_count'] = 3; self.refuse(value)
        value = receipt('attached'); value['graphical_actual']['changes'][0]['after'][0]['ref'] = 'v3'; self.refuse(value)
        value = receipt(); value['original_native_objects'] = 2; self.refuse(value)

    def test_observation_requires_the_original_durable_head_and_complete_actual_diff(self):
        prepared, actual = receipt(), receipt('attached')
        kwargs = dict(token=TOKEN, oid='oid', kind='literal')
        result = observation(prepared['before'], actual['after'], prepared, actual, **kwargs)
        self.assertEqual(result['graphical_differences']['new_objects'], 1)
        self.assertEqual(result['parent_order_differences'][0]['added'], [{'native_ref': 'o3', 'index': 0}])
        altered = deepcopy(actual); altered['original_source_objects'] = 2
        with self.assertRaisesRegex(JournalError, 'durable original_source_objects'):
            observation(prepared['before'], actual['after'], prepared, altered, **kwargs)
        with self.assertRaisesRegex(JournalError, 'typed observation'):
            observation(prepared['before'], prepared['before'], prepared, actual, **kwargs)

    def test_actual_model_identity_must_join_the_real_typed_row(self):
        value = receipt('attached')
        value.update(model_oids_after=['claimed'], created_model_oid='claimed')
        value['after']['entries'].append(dict(kind='model', ref='different'))
        with self.assertRaisesRegex(JournalError, 'Actual model identities'):
            self.check(value)
        value = receipt('attached'); value['actual_native_objects'] = 3
        with self.assertRaisesRegex(JournalError, 'retained native union'):
            self.check(value)


if __name__ == '__main__':
    unittest.main()
