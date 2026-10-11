"""Small offline integration fixtures; no ASCET process or transaction calls."""
from copy import deepcopy
import unittest
from unittest.mock import Mock

from bd_commit_control_audit import recompute_controls
from bd_commit_model_diff import recompute
from bd_commit_resources import status, summary, validate
from bd_edit_journal import NativePreconditionConflict
from bd_native_structure import NativeStructureAdapter
import test_bd_commit_control as controls
import test_bd_commit_model_diff as models
import test_bd_commit_resource_diff as resource_diffs
import test_bd_commit_resources as resources


def change(category, locus, field, before, after):
    return dict(category=category, locus=locus, field=field, before=deepcopy(before), after=deepcopy(after))


def control_image():
    value = controls.fixture()
    value['component_oid'] = resources.OID
    return value


def receipt():
    value = models.original()['prepared_receipt']
    value.update(profile='native_commit_prepare_v3', ctree_control=controls.summary(control_image()))
    return value


def audit_fixture():
    """Four objects, two CTree leaves, two cache entries and three tiny records."""
    audit = models.original()
    audit['prepared_receipt'] = receipt()
    original = control_image()
    captured = deepcopy(original)
    captured['leaves'][0]['fields']['ctTransaction'] = controls.atom(2)
    first = deepcopy(captured)
    first['leaves'][0]['fields']['ctTransaction'] = controls.atom(3)
    last = deepcopy(first)
    last['leaves'][0]['fields']['ctSavePoint']['values'].reverse()
    a = change('since_preparation', 'ctree_control/c1', 'ctTransaction', controls.atom(1), controls.atom(3))
    b = change('query_read_effect', 'ctree_control/c1', 'ctSavePoint',
               first['leaves'][0]['fields']['ctSavePoint'], last['leaves'][0]['fields']['ctSavePoint'])
    audit.update(ctree_control_original_image=original, ctree_control_after_capture=captured,
                 ctree_control_capture_read_effects=[change('query_read_effect', 'ctree_control/c1',
                     'ctTransaction', controls.atom(1), controls.atom(2))],
                 ctree_control_checks=[dict(phase='checked', before=first, after=last,
                     resource_check_index=1, before_changes=[a], after_changes=[b])])

    capture = resource_diffs.capture()
    capture.update(token=audit['prepared_receipt']['resource_token'], generation=7, component_oid=resources.OID)
    entries = deepcopy(audit['original_capture']['before_read']['cache_entries'])
    for index, row in enumerate(entries):
        row['key_text'] = 'registered-' + str(index)
        row['image'] = resource_diffs.image(row['entry']['ref'])
        row['image']['binding'] = deepcopy(row['entry'])
    capture['before_read'].update(cache_entries=entries, cache_size=len(entries))
    capture['after_read'] = deepcopy(capture['before_read'])
    audit['original_capture'] = capture
    current = deepcopy(capture)
    current['action'] = 'check'
    for part in ('before_read', 'after_read'):
        current[part]['cache_entries'][0]['image']['fields'][0]['value'] = 2
    audit['checks'] = [current]

    model_before = models.report(audit)
    model_before['image'][2]['value'] = [90, 66]
    model_before['actual_changes'] = [change('since_preparation', 'sg/r3', '$contents', [65, 66], [90, 66])]
    model_after = deepcopy(model_before)
    model_after.update(category='query_read_effect', actual_changes=[])
    audit['registered_model_checks'] = [dict(phase='checked', before=model_before, after=model_after,
                                             resource_check_index=1)]
    audit['last_actual_changes'] = [change('since_preparation', 'cache_entry/r5', 'timeStamp', 1, 2),
                                    model_before['actual_changes'][0], a, b]
    return audit


def status_fixture(checked=True):
    value = resources.status_receipt(checked)
    value['prepared_receipt'] = receipt()
    if checked:
        audit = audit_fixture()
        value.update(actual_changes=deepcopy(audit['last_actual_changes']), registered_models_checked=True,
            registered_model_summary=dict(profile='native_registered_sg_status_v1', original_objects=4,
                current_objects=4, current_roots=2, current_cache_entries=2, actual_change_count=1,
                original_material_held=True, full_model_transitive_closure=False,
                write_authorized=False, inverse_authorized=False), ctree_control_checked=True,
            ctree_control_summary=dict(controls.summary(audit['ctree_control_checks'][0]['after']),
                                       actual_change_count=2))
    return value


def environment():
    return {'ASCET_BD_OPERATION_EXECUTOR': 'staged_v1', 'ASCET_BD_COMMIT_RESOURCE_CAPTURE': 'prepare_v1',
            'ASCET_BD_COMMIT_REGISTERED_MODELS': 'loaded_sg_v1', 'ASCET_BD_COMMIT_CONTROL_CAPTURE': 'ctree_v1'}


class CommitControlIntegrationTests(unittest.TestCase):
    def test_v3_receipt_requires_models_and_original_controls(self):
        value = receipt()
        self.assertEqual(validate(value, token=resources.TOKEN, component_oid=resources.OID), value)
        for field in ('registered_models', 'ctree_control'):
            invalid = deepcopy(value)
            invalid.pop(field)
            with self.subTest(field=field), self.assertRaises(ValueError):
                validate(invalid, token=resources.TOKEN, component_oid=resources.OID)

    def test_v1_v2_validation_stays_compatible_without_inventing_controls(self):
        for value in (resources.receipt(), models.original()['prepared_receipt']):
            with self.subTest(profile=value['profile']):
                result = validate(value, token=resources.TOKEN, component_oid=resources.OID)
                self.assertEqual(result, value)
                self.assertNotIn('ctree_control', result)
                invalid = dict(value, ctree_control=controls.summary(control_image()))
                with self.assertRaises(ValueError):
                    validate(invalid, token=resources.TOKEN, component_oid=resources.OID)

    def test_v3_inspection_keeps_material_without_claiming_current_equality(self):
        value = status_fixture(False)
        result = status(value, token=resources.TOKEN, component_oid=resources.OID, checked=False)
        self.assertFalse(result['prepared_edit_present'])
        self.assertTrue(result['original_material_held'])
        self.assertIsNone(result['actual_changes'])
        self.assertNotIn('ctree_control_checked', result)
        value['ctree_control_checked'] = True
        with self.assertRaises(ValueError):
            status(value, token=resources.TOKEN, component_oid=resources.OID, checked=False)

    def test_v3_checked_status_keeps_distinct_resource_model_control_censuses(self):
        value = status_fixture()
        result = status(value, token=resources.TOKEN, component_oid=resources.OID, checked=True)
        self.assertEqual(result['registered_model_summary']['actual_change_count'], 1)
        self.assertEqual(result['ctree_control_summary']['actual_change_count'], 2)
        compact = summary(result)
        self.assertEqual(compact['actual_change_count'], 4)
        self.assertIn('native transaction support', compact['coverage'])
        self.assertNotIn('actual_changes', compact)
        self.assertEqual(len(result['actual_changes']), 4)

    def test_control_status_cannot_hide_a_change_or_supply_only_old_summary(self):
        for edit in (lambda v: v['ctree_control_summary'].update(actual_change_count=1),
                     lambda v: v.pop('ctree_control_checked'),
                     lambda v: v.pop('ctree_control_summary'),
                     lambda v: v.update(ctree_control_checked=False),
                     lambda v: v['ctree_control_summary'].pop('actual_change_count')):
            value = status_fixture()
            edit(value)
            with self.subTest(edit=edit), self.assertRaises(ValueError):
                status(value, token=resources.TOKEN, component_oid=resources.OID, checked=True)

    def test_v3_summary_binding_and_authority_are_not_trusted(self):
        for key, replacement in [('component_oid', 'foreign'), ('generation', 8),
                ('original_material_held', False), ('inverse_authorized', True), ('write_authorized', True),
                ('native_transaction_semantics_verified', True), ('full_commit_resource_closure', True),
                ('transaction_methods_called', 1)]:
            with self.subTest(key=key):
                value = receipt()
                value['ctree_control'][key] = replacement
                with self.assertRaises(ValueError):
                    validate(value, token=resources.TOKEN, component_oid=resources.OID)
                checked = status_fixture()
                checked['ctree_control_summary'][key] = replacement
                with self.assertRaises(ValueError):
                    status(checked, token=resources.TOKEN, component_oid=resources.OID, checked=True)

    def test_control_audit_independently_recomputes_capture_and_query_effects(self):
        audit = audit_fixture()
        self.assertEqual(recompute_controls(audit, 1), audit['last_actual_changes'][-2:])
        self.assertEqual(recompute(audit), audit['last_actual_changes'])
        self.assertEqual([row['locus'] for row in recompute(audit)],
                         ['cache_entry/r5', 'sg/r3', 'ctree_control/c1', 'ctree_control/c1'])

    def test_control_query_must_match_the_exact_resource_check_index(self):
        for value in (0, 2, True, 1.0):
            audit = audit_fixture()
            audit['ctree_control_checks'][0]['resource_check_index'] = value
            with self.subTest(index=value), self.assertRaises(ValueError):
                recompute(audit)

    def test_missing_original_before_cannot_be_replaced_by_current_image(self):
        for key in ('ctree_control_original_image', 'ctree_control_after_capture'):
            audit = audit_fixture()
            audit.pop(key)
            with self.subTest(key=key), self.assertRaises((ValueError, KeyError)):
                recompute_controls(audit, 1)
        audit = audit_fixture()
        audit['ctree_control_original_image'] = deepcopy(audit['ctree_control_checks'][0]['before'])
        with self.assertRaises(ValueError):
            recompute_controls(audit, 1)
        for profile in ('native_commit_prepare_v1', 'native_commit_prepare_v2'):
            audit = audit_fixture()
            audit['prepared_receipt']['profile'] = profile
            with self.subTest(profile=profile), self.assertRaisesRegex(ValueError, 'no retrofit'):
                recompute_controls(audit, 1)

    def test_incomplete_or_tampered_control_query_cannot_be_actual_diff(self):
        for edit in (lambda a: a.update(ctree_control_checks=[]),
                     lambda a: a['ctree_control_checks'][0].update(phase='checking-after'),
                     lambda a: a['ctree_control_checks'][0].pop('after'),
                     lambda a: a['ctree_control_checks'][0].update(before_changes=[]),
                     lambda a: a['ctree_control_checks'][0].update(after_changes=[]),
                     lambda a: a.update(ctree_control_capture_read_effects=[]),
                     lambda a: a['ctree_control_original_image'].update(component_oid='foreign')):
            audit = audit_fixture()
            edit(audit)
            with self.subTest(edit=edit), self.assertRaises((ValueError, KeyError)):
                recompute_controls(audit, 1)

    def test_full_audit_requires_controls_in_durable_actual_changes(self):
        for edit in (lambda a: a['last_actual_changes'].pop(),
                     lambda a: a['last_actual_changes'].reverse(),
                     lambda a: a['last_actual_changes'][2]['after'].update(atom='999')):
            audit = audit_fixture()
            edit(audit)
            with self.subTest(edit=edit), self.assertRaises(ValueError):
                recompute(audit)

    def test_fixed_control_profile_requires_all_dependencies_and_main(self):
        cases = []
        for key in environment():
            for replacement in (None, 'unknown'):
                env = environment()
                if replacement is None:
                    env.pop(key)
                else:
                    env[key] = replacement
                # Absence of the opt-in itself is valid v2, not an invalid profile.
                if key != 'ASCET_BD_COMMIT_CONTROL_CAPTURE' or replacement is not None:
                    cases.append((env, 'Main'))
        cases.append((environment(), 'Main/h1'))
        for env, diagram in cases:
            with self.subTest(env=env, diagram=diagram), self.assertRaises(ValueError):
                NativeStructureAdapter('BDE_Tool_Experiments/Trial_Control', diagram, environment=env)

    def test_v3_prepare_and_apply_never_dispatch_a_native_write(self):
        adapter = NativeStructureAdapter('BDE_Tool_Experiments/Trial_Control', environment=environment())
        adapter.domain = {'oid': resources.OID}
        adapter._exchange = Mock(side_effect=AssertionError('Unexpected native dispatch'))
        before = {'nodes': [], 'edges': [], 'targets': []}
        result = adapter._preparation({'preparation': before, 'commit_resources': receipt()}, resources.TOKEN)
        self.assertEqual(result, before)
        self.assertEqual(adapter.commit_resources_prepared['profile'], 'native_commit_prepare_v3')
        with self.assertRaises(NativePreconditionConflict):
            adapter.apply(resources.TOKEN)
        adapter._exchange.assert_not_called()

    def test_requested_control_coverage_cannot_silently_downgrade(self):
        for old in (resources.receipt(), models.original()['prepared_receipt']):
            adapter = NativeStructureAdapter('BDE_Tool_Experiments/Trial_Control', environment=environment())
            adapter.domain = {'oid': resources.OID}
            adapter._exchange = Mock(side_effect=AssertionError('Unexpected native dispatch'))
            with self.subTest(profile=old['profile']), self.assertRaises(ValueError):
                adapter._preparation({'preparation': {'nodes': []}, 'commit_resources': old}, resources.TOKEN)
            adapter._exchange.assert_not_called()


if __name__ == '__main__':
    unittest.main()
