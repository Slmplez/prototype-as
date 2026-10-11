"""Independent local-proof and journal rejection tests; no live certification."""
from copy import deepcopy
import unittest

from bd_connect_history import preparation, observed
from bd_connect_local_plan import _native_image
from bd_edit_journal import JournalError
from bd_topology_inverse import plan
from test_bd_connect_history import prepared, actual, TOKEN, RESULT
from test_bd_connect_local_plan import evidence as source_evidence


def local_prepared():
    p = prepared(); original, applied = deepcopy(p['expected']), deepcopy(p['before'])
    current = deepcopy(applied)
    next(r for r in current['entries'] if r['ref'] == 'n2')['size'] = [18, 19]
    target = plan(original, applied, current, operation='connect_data')
    native = dict(profile='frozen_source_identity_evidence_v1', component_oid='fixture', source_root='s1',
        complete=True, model_setters_called=0, store_called=False,
        native_bindings=[['s' + str(i), 'v' + str(i)] for i in range(1, 5)])
    def integer(n): return ['integer', 'SmallInteger', str(n)]
    root = dict(ref='s1', native_class='OrderedCollection', kind='collection', value=[['ref', 's2'], ['ref', 's3']])
    def node(i): return dict(ref='s' + str(i), native_class='SGOperatorGO', kind='fields',
        field_names=['drawingOrder', 'independentValue'], value=[integer(i - 1), integer(0)])
    native['original'] = [root, node(2), node(3)]
    native['applied'] = deepcopy(native['original']) + [node(4)]
    native['applied'][0]['value'].append(['ref', 's4'])
    native['current'] = deepcopy(native['applied']); native['current'][1]['value'][1] = integer(7)
    native['candidate'] = deepcopy(native['current']); native['candidate'][0]['value'].pop()
    image = _native_image(native, 'current'); merged = _native_image(native, 'candidate')
    values = dict(profile='native_connect_local_plan_v1', native_token=TOKEN, owner=TOKEN, state='applied',
        sequence=1, operation='connect_data', component_oid='fixture', before=original, after=applied,
        current=current, values=target, source_identity_evidence=source_evidence(), native_identity_evidence=native,
        native_current=image, native_merged=merged, native_expected=deepcopy(merged),
        native_fields=dict(profile='native_graphical_fields_v1', complete=True, objects=[
            dict(ref='v' + row['ref'][1:], **{'class': row['native_class']}, kind=row['kind'],
                 field_names=row.get('field_names', [])) for row in native['current']]),
        drawing_native_bindings=[['o3', 'v2'], ['o4', 'v3']],
        alias_counter_before=10, alias_counter_expected=9, created_original_retained=True,
        real_current_verified=True, model_setters_called=0, store_called=False, write_authorized=False)
    for prefix in ('parent', 'drawing'):
        values[prefix + 'Before'] = deepcopy(p[prefix + '_expected'])
        values[prefix + 'After'] = deepcopy(p[prefix + '_before'])
        values[prefix + 'Current'] = deepcopy(p[prefix + '_before'])
        values[prefix + 'Expected'] = deepcopy(p[prefix + '_expected'])
    values['source_identity_evidence']['component_oid'] = 'fixture'
    p.update(profile='native_connect_local_preparation_v1', local_merge_enabled=True,
             before=current, expected=target['expected'], graphical_current=image, local_plan=values)
    return p, original, applied


def validate(p, original, applied):
    return preparation(p, token=TOKEN, owner=TOKEN, state='applied', result_id=RESULT, sequence=1,
        current=p['before'], expected=p['expected'], historical_before=original,
        historical_after=applied, component_oid='fixture')


class LocalConnectionHistoryTests(unittest.TestCase):
    def test_complete_proof_preserves_independent_typed_and_native_values(self):
        p, a, b = local_prepared(); frozen = deepcopy(p)
        self.assertEqual(validate(p, a, b), frozen)
        receipt = actual(p)
        receipt.update(profile='native_connect_local_actual_v1')
        receipt['execution']['profile'] = 'native_connect_local_execution_v1'
        receipt['graphical_actual']['after_object_count'] = len(p['graphical_current']['objects'])
        receipt['graphical_actual']['changes'] = [dict(object='v1', kind='collection',
            before=deepcopy(p['graphical_current']['objects'][0]['value']),
            after=deepcopy(p['local_plan']['native_expected']['objects'][0]['value']))]
        self.assertEqual(observed(receipt, p)['observation'], p['expected'])
        self.assertEqual(p, frozen)

    def test_a_fabricated_historical_head_is_rejected(self):
        p, a, b = local_prepared(); p['local_plan']['before']['generation'] += 1
        with self.assertRaises(JournalError): validate(p, a, b)

    def test_independent_typed_value_cannot_be_silently_reverted(self):
        p, a, b = local_prepared()
        next(r for r in p['expected']['entries'] if r['ref'] == 'n2')['size'] = [9, 9]
        with self.assertRaises(JournalError): validate(p, a, b)

    def test_owned_source_overlap_is_rejected_before_dispatch(self):
        p, a, b = local_prepared(); p['local_plan']['source_identity_evidence']['raw_current'][0]['value'][2][-1] = '2'
        with self.assertRaises(JournalError): validate(p, a, b)

    def test_native_binding_swap_cannot_pass_equal_class_rosters(self):
        p, a, b = local_prepared(); pairs = p['local_plan']['native_identity_evidence']['native_bindings']
        pairs[1][1], pairs[2][1] = pairs[2][1], pairs[1][1]
        with self.assertRaises(JournalError): validate(p, a, b)

    def test_drawing_normalization_cannot_change_an_unowned_native_field(self):
        p, a, b = local_prepared(); p['local_plan']['native_expected']['objects'][1]['value'][1]['value'] = '99'
        with self.assertRaises(JournalError): validate(p, a, b)

    def test_missing_causal_binding_is_rejected(self):
        p, a, b = local_prepared(); p['local_plan']['drawing_native_bindings'].pop()
        with self.assertRaises(JournalError): validate(p, a, b)

    def test_local_evidence_cannot_be_used_under_exact_profile(self):
        p, a, b = local_prepared(); p['profile'] = 'native_connect_exact_preparation_v1'
        with self.assertRaises(JournalError): validate(p, a, b)

    def test_local_actual_cannot_be_downgraded_to_exact_receipt(self):
        p, a, b = local_prepared(); validate(p, a, b)
        with self.assertRaises(JournalError): observed(actual(p), p)

    def test_actual_flags_cannot_hide_an_omitted_native_patch(self):
        p, a, b = local_prepared(); validate(p, a, b)
        receipt = actual(p); receipt['profile'] = 'native_connect_local_actual_v1'
        receipt['execution']['profile'] = 'native_connect_local_execution_v1'
        receipt['graphical_actual']['after_object_count'] = len(p['graphical_current']['objects'])
        with self.assertRaisesRegex(JournalError, 'Full actual native patch'):
            observed(receipt, p)


if __name__ == '__main__':
    unittest.main()
