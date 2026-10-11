"""Insertion receipt invariants only; these tests are not live edit acceptance."""
import copy
import unittest

from bd_connect_material import validate, summary
from bd_edit_journal import JournalError

TOKEN = 'edit_' + 'a' * 64


def order(members, *, drawing=False):
    value = dict(profile='native_parent_order_v1', native_token=TOKEN, diagram='Main',
        parent='o1', collection='o2', complete=True, members=members)
    if drawing:
        value.update(profile='native_drawing_order_v1', numbers=list(range(1, len(members) + 1)))
    return value


def receipt(phase):
    actual = phase != 'prepared'
    return dict(profile='native_connect_material_v1', native_token=TOKEN, component_oid='fixture_oid',
        diagram='Main', operation='connect_data', phase=phase, source='p12', target='p8',
        parent_before=order(['o3', 'o4', 'o5']), drawing_before=order(['o4', 'o3', 'o5'], drawing=True),
        parent_after=order(['o3', 'o6', 'o4', 'o5']) if actual else None,
        drawing_after=order(['o4', 'o3', 'o5', 'o6'], drawing=True) if actual else None,
        created_native_ref='o6' if actual else None, original_native_objects=96, original_source_objects=31,
        graphical_before=dict(profile='native_graphical_current_v1', complete=True,
            objects=[dict(ref='v1', **{'class': 'OrderedCollection'}, kind='collection', value=[])]),
        graphical_actual=dict(profile='native_graphical_diff_v1', complete=True,
            new_objects=[], changes=[], after_object_count=1) if actual else None,
        actual_native_objects=108 if actual else None, actual_source_objects=36 if actual else None,
        endpoint_identity_verified=True, source_root_preserved=True, full_current_verified=phase != 'detached',
        created_original_retained=actual, model_setters_called=0, store_called=False,
        write_authorized=False, managed_inverse_enabled=False)


class ConnectMaterialTests(unittest.TestCase):
    def check(self, value, phase=None):
        return validate(value, token=TOKEN, component_oid='fixture_oid', source='p12', target='p8',
            phase=phase or value['phase'])

    def refuses(self, value):
        with self.assertRaises(JournalError):
            self.check(value)

    def test_prepared_and_actual_have_distinct_identity_contracts(self):
        for phase in ('prepared', 'attached', 'detached'):
            with self.subTest(phase=phase):
                value = receipt(phase)
                result = self.check(value)
                self.assertEqual(result, value)
                result['parent_before']['members'].clear()
                self.assertTrue(value['parent_before']['members'])

    def test_preparation_cannot_guess_native_identity_or_actual_images(self):
        for key, value in [('created_native_ref', 'o6'), ('parent_after', order(['o3', 'o4', 'o5', 'o6'])),
                ('drawing_after', order(['o3', 'o4', 'o5', 'o6'], drawing=True)),
                ('actual_native_objects', 108), ('actual_source_objects', 36)]:
            with self.subTest(key=key):
                row = receipt('prepared'); row[key] = value; self.refuses(row)

    def test_both_rosters_must_explain_the_same_single_created_original(self):
        for key in ('parent_after', 'drawing_after'):
            for members in (['o3', 'o4', 'o5'], ['o3', 'o4', 'o5', 'o7'],
                    ['o3', 'o4', 'o5', 'o6', 'o7'], ['o3', 'o6', 'o4', 'o6', 'o5']):
                with self.subTest(key=key, members=members):
                    row = receipt('attached')
                    row[key] = order(members, drawing=key.startswith('drawing'))
                    self.refuses(row)

    def test_original_relative_order_is_not_silently_lost(self):
        for key, members in [('parent_after', ['o4', 'o3', 'o5', 'o6']),
                ('drawing_after', ['o3', 'o4', 'o5', 'o6'])]:
            with self.subTest(key=key):
                row = receipt('attached'); row[key] = order(members, drawing=key.startswith('drawing'))
                self.refuses(row)

    def test_wrong_owner_or_endpoint_cannot_reuse_export(self):
        for key, value in [('native_token', 'edit_' + 'b' * 64), ('component_oid', 'other'),
                ('diagram', 'Main/h1'), ('operation', 'create_block'), ('source', 'p6'), ('target', 'p7')]:
            with self.subTest(key=key):
                row = receipt('attached'); row[key] = value; self.refuses(row)

    def test_parent_binding_and_normalized_drawing_are_required(self):
        for key, value in [('parent', 'o9'), ('collection', 'o8'), ('complete', False)]:
            row = receipt('attached'); row['parent_after'][key] = value; self.refuses(row)
        row = receipt('attached'); row['drawing_after']['numbers'][-1] = 1; self.refuses(row)

    def test_capture_never_grants_dispatch_authority(self):
        for key, value in [('write_authorized', True), ('managed_inverse_enabled', True),
                ('model_setters_called', True), ('model_setters_called', 1), ('store_called', True),
                ('endpoint_identity_verified', False), ('source_root_preserved', False),
                ('created_original_retained', False)]:
            with self.subTest(key=key):
                row = receipt('attached'); row[key] = value; self.refuses(row)

    def test_detached_receipt_does_not_claim_a_full_current_proof(self):
        row = receipt('detached'); row['full_current_verified'] = True; self.refuses(row)
        row = receipt('attached'); row['full_current_verified'] = False; self.refuses(row)

    def test_exact_shape_and_typed_counts(self):
        row = receipt('prepared'); row['selector'] = 'storeToCache'; self.refuses(row)
        row = receipt('prepared'); del row['write_authorized']; self.refuses(row)
        for key in ('original_native_objects', 'original_source_objects', 'actual_native_objects', 'actual_source_objects'):
            for value in (True, 0, -1, 20000001, '96'):
                row = receipt('attached'); row[key] = value; self.refuses(row)

    def test_summary_is_small_and_preserves_capture_boundary(self):
        value = receipt('attached'); result = summary(self.check(value))
        self.assertNotIn('parent_after', result)
        self.assertEqual(len(result['sha256']), 64)
        self.assertFalse(result['write_authorized'])
        self.assertFalse(result['managed_inverse_enabled'])
        self.assertEqual(value, receipt('attached'))


if __name__ == '__main__':
    unittest.main()
