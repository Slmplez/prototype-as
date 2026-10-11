"""Adversarial owner/WAL contracts; synthetic data is not online edit evidence."""
from copy import deepcopy
import unittest
from unittest.mock import patch

from bd_connect_material import validate
from bd_edit_journal import JournalError, NativePreconditionConflict
from bd_native_structure import NativeStructureAdapter
from bd_persistent_owner_records import validate_receipt, differences
import bd_connect_journal as journal
from test_bd_connect_material import receipt, TOKEN
from test_bd_persistent_owner_records import fixture
from test_bd_module_references import reference_receipt


def material(phase='attached'):
    owners = fixture(); oid = owners['component_oid']
    after = deepcopy(owners)
    after['owners'][1]['bytes'][130] ^= 1
    after['owners'][1]['allocated_bytes'][130] ^= 1
    value = receipt(phase); value.update(profile='native_connect_material_v4', component_oid=oid,
        module_references=reference_receipt(phase, oid=oid))
    common = dict(native_token=TOKEN, component_oid=oid, generation=108, phase=phase,
        prepared_native_record_bound=True, model_setters_called=0, store_called=False, commit_called=False,
        write_authorized=False, inverse_authorized=False, full_commit_resource_closure=False)
    value['module_persistent_references'] = dict(common, profile='native_module_persistent_references_v1',
        before=deepcopy(owners['references']), after=deepcopy(after['references']) if phase == 'attached' else None)
    value['persistent_owner_records'] = dict(common, profile='native_connect_owner_records_v1',
        before=owners, after=after if phase == 'attached' else None)
    return value


def check(value):
    return validate(value, token=TOKEN, component_oid=fixture()['component_oid'],
        source='p12', target='p8', phase=value['phase'])


class ConnectOwnerTests(unittest.TestCase):
    def test_prepared_and_actual_are_detached_and_finite(self):
        for phase in ('prepared', 'attached'):
            value = material(phase); saved = deepcopy(value); result = check(value)
            result['persistent_owner_records']['before']['owners'][0]['allocated_bytes'].clear()
            self.assertEqual(value, saved)

    def test_missing_owner_full_raw_tail_cannot_pass_v4(self):
        for mutate in (lambda v: v.pop('persistent_owner_records'),
                lambda v: v['persistent_owner_records']['before']['owners'][1]['allocated_bytes'].pop(),
                lambda v: v['persistent_owner_records']['before']['owners'].pop()):
            value = material(); mutate(value)
            with self.assertRaises(JournalError): check(value)

    def test_wrong_token_generation_phase_and_authority_rejected(self):
        for key, bad in (('native_token', 'edit_'+'b'*64), ('generation', 109), ('generation', True),
                ('phase', 'prepared'), ('store_called', True), ('commit_called', True),
                ('write_authorized', True), ('inverse_authorized', True), ('prepared_native_record_bound', False)):
            value = material(); value['persistent_owner_records'][key] = bad
            with self.subTest(key=key), self.assertRaises(JournalError): check(value)

    def test_prepared_cannot_invent_and_attached_cannot_omit_actual(self):
        for phase, bad in (('prepared', fixture()), ('attached', None)):
            value = material(phase); value['persistent_owner_records']['after'] = bad
            with self.assertRaises(JournalError): check(value)

    def test_finite_and_owner_samples_must_agree_on_both_sides(self):
        for side in ('before', 'after'):
            value = material()
            value['persistent_owner_records'][side]['references']['reciprocal_records'][0]['allocated_bytes'][-1] ^= 1
            with self.subTest(side=side), self.assertRaises(JournalError): check(value)

    def test_actual_owner_identity_cannot_be_replaced(self):
        value = material(); row = value['persistent_owner_records']['after']['owners'][1]
        row['stored_name'] = 'replaced'
        with self.assertRaises(JournalError): check(value)

    def test_diff_uses_full_actual_payload_and_tail(self):
        value = material(); proof = value['persistent_owner_records']; delta = differences(proof)
        self.assertEqual(len(delta), 1); self.assertEqual(delta[0]['changed_bytes'], 1)
        self.assertTrue(delta[0]['payload_changed']); self.assertFalse(delta[0]['raw_tail_changed'])
        proof['after']['owners'][1]['allocated_bytes'][-1] ^= 1
        delta = differences(proof); self.assertEqual(delta[0]['changed_bytes'], 2)
        self.assertTrue(delta[0]['raw_tail_changed']); self.assertNotIn('allocated_bytes', delta[0])

    def test_journal_keeps_original_before_and_exports_compact_diff(self):
        prepared = material('prepared'); actual = material()
        intent = dict(domain=dict(oid=actual['component_oid']), arguments=[[], 'p12', 'p8'])
        p = dict(before=dict(generation=108), connect_material_prepared=prepared)
        self.assertEqual(journal.forward_material(intent, p, actual, TOKEN), actual)
        observation = journal.forward_observation({}, actual)
        self.assertEqual(observation['persistent_owner_records_actual'], actual['persistent_owner_records'])
        self.assertEqual(observation['persistent_owner_record_differences'], differences(actual['persistent_owner_records']))

    def test_later_current_cannot_replace_durable_before(self):
        original = material('prepared'); actual = material(); now = actual['persistent_owner_records']['before']['owners'][1]
        now['allocated_bytes'][-1] ^= 1
        source = dict(domain=dict(oid=actual['component_oid']), arguments=[[], 'p12', 'p8'])
        with self.assertRaises(JournalError):
            journal.forward_material(source, dict(before=dict(generation=108), connect_material_prepared=original), actual, TOKEN)

    def test_explicit_owner_profile_has_no_write_dispatch(self):
        env = dict(ASCET_BD_OPERATION_EXECUTOR='staged_v1', ASCET_BD_CONNECT_MATERIAL='identity_v1',
            ASCET_BD_CONNECT_HISTORY='native_source_exact_v1', ASCET_BD_CONNECT_REFERENCES='module_owner_records_v1')
        adapter = NativeStructureAdapter('BDE_Tool_Experiments\\Trial_Control', environment=env)
        self.assertTrue(adapter.connect_owner_record_capture_capable)
        adapter.prepared_operation = 'connect_data'
        with patch.object(adapter, '_exchange') as send:
            with self.assertRaises(NativePreconditionConflict): adapter.apply(TOKEN)
            send.assert_not_called()

    def test_adapter_cannot_accept_weaker_material(self):
        adapter = NativeStructureAdapter.__new__(NativeStructureAdapter)
        adapter.connect_owner_record_capture_capable = True
        adapter.connect_persistent_reference_capture_capable = True
        adapter.connect_reference_capture_capable = True; adapter.connect_reference_targets = []
        adapter._check_connect_reference_profile(material('prepared'))
        value = material('prepared'); value['profile'] = 'native_connect_material_v3'
        with self.assertRaises(ValueError): adapter._check_connect_reference_profile(value)

    def test_capture_cannot_upgrade_history(self):
        class Log:
            def _append(self, *args): raise AssertionError('No history append allowed')
        value = material(); observation = journal.forward_observation({}, value)
        self.assertIsNone(journal.ready(Log(), None, [dict(kind='observed', payload=observation)],
            native_token=TOKEN, owner=TOKEN, state='applied', sequence=1))


if __name__ == '__main__': unittest.main()
