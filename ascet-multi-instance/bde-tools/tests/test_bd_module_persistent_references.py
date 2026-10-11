"""Finite raw-record contract controls. Synthetic inputs, not native inverse QA."""
from copy import deepcopy
import unittest

from bd_module_persistent_references import PROFILE, REQUESTED_PROFILE, target_requests, validate, summarize, validate_receipt, differences
from test_bd_persistent_references import fixture as reference_fixture, payload_v2

OWNER, SOURCE, TARGET, OTHER = ([value] * 20 for value in (10, 20, 30, 40))
OID = 'module-oid'


def record(key, role, members, tail=None):
    row = reference_fixture(role, keys=members, tail=tail)
    row.update(global_id=key.copy(), query_key=key + list(row['attribute'].encode('ascii')),
        actual_file_key=key + list(row['attribute'].encode('ascii')))
    return payload_v2(row)


def snapshot():
    return dict(profile=PROFILE, component_oid=OID,
        owners=[dict(role='component', oid=OID, key=OWNER,
            records=[record(OWNER, 'owner_references', [TARGET, TARGET]), record(OWNER, 'owner_referenced_by', [])]),
            dict(role='spec_source', oid='source-oid', key=SOURCE,
                records=[record(SOURCE, 'owner_references', [TARGET]), record(SOURCE, 'owner_referenced_by', [OTHER])])],
        reciprocal_targets=[TARGET], reciprocal_records=[record(TARGET, 'owner_referenced_by', [OWNER, SOURCE, OTHER, OWNER])],
        membership_checks=[dict(owner_key=OWNER, target_key=TARGET, outgoing_member=True, inbound_owner_count=2, consistent=True),
            dict(owner_key=SOURCE, target_key=TARGET, outgoing_member=True, inbound_owner_count=1, consistent=True)],
        complete=True, model_setters_called=0, store_called=False, commit_called=False,
        original_edit_before_bound=False, cross_process_atomic=False,
        full_commit_resource_closure=False, write_authorized=False, inverse_authorized=False)


class FiniteModuleReferenceTests(unittest.TestCase):
    def test_complete_duplicate_order_and_raw_tail_are_preserved(self):
        value = snapshot(); self.assertEqual(validate(value, component_oid=OID), value)
        self.assertEqual(summarize(value, component_oid=OID)['record_reads'], 5)
        self.assertEqual(summarize(value, component_oid=OID)['inconsistent_checks'], 0)
        self.assertEqual(value['reciprocal_records'][0]['allocated_bytes'][-5:], [81, 82, 83, 84, 85])

    def test_empty_outgoing_requires_no_reciprocal_records(self):
        value = snapshot()
        for owner in value['owners']:
            owner['records'][0] = record(owner['key'], 'owner_references', [])
        value.update(reciprocal_targets=[], reciprocal_records=[], membership_checks=[])
        self.assertEqual(summarize(value, component_oid=OID)['record_reads'], 4)

    def test_inconsistent_membership_is_retained_without_repair_or_authority(self):
        value = snapshot(); value['reciprocal_records'][0] = record(TARGET, 'owner_referenced_by', [OWNER])
        value['membership_checks'][0]['inbound_owner_count'] = 1
        value['membership_checks'][1].update(inbound_owner_count=0, consistent=False)
        result = summarize(value, component_oid=OID)
        self.assertEqual(result['inconsistent_checks'], 1); self.assertIs(result['inverse_authorized'], False)

    def test_wrong_owner_or_duplicate_source_identity_is_refused(self):
        for mutate in (lambda v: v['owners'][0].update(oid='other'),
                       lambda v: v['owners'][1].update(key=OWNER),
                       lambda v: v['owners'][1].update(oid=OID),
                       lambda v: v['owners'].reverse()):
            value = snapshot(); mutate(value)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): validate(value, component_oid=OID)

    def test_missing_extra_duplicate_and_unsorted_target_census_is_refused(self):
        for targets in ([], [OTHER], [TARGET, TARGET], [OTHER, TARGET]):
            value = snapshot(); value['reciprocal_targets'] = targets
            with self.subTest(targets=targets), self.assertRaises(ValueError): validate(value, component_oid=OID)
        value = snapshot(); value['reciprocal_records'].clear()
        with self.assertRaises(ValueError): validate(value, component_oid=OID)

    def test_original_before_and_write_authority_cannot_be_inferred(self):
        for key in ('original_edit_before_bound', 'cross_process_atomic', 'write_authorized',
                    'inverse_authorized', 'full_commit_resource_closure', 'store_called', 'commit_called'):
            for bad in (True, 0):
                value = snapshot(); value[key] = bad
                with self.subTest(key=key, bad=bad), self.assertRaises(ValueError): validate(value, component_oid=OID)

    def test_missing_error_or_legacy_truncated_record_is_not_complete(self):
        for mutate in (lambda v: v.update(complete=False),
                       lambda v: v['owners'][0]['records'][0].update(read_status='error'),
                       lambda v: v['owners'][0]['records'][0].pop('length_profile'),
                       lambda v: v['owners'][0]['records'].pop()):
            value = snapshot(); mutate(value)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): validate(value, component_oid=OID)

    def test_same_owner_reciprocal_duplicate_read_must_match_all_raw_bytes(self):
        value = snapshot()
        value['owners'][0]['records'][0] = record(OWNER, 'owner_references', [SOURCE])
        value['owners'][1]['records'][0] = record(SOURCE, 'owner_references', [])
        value['owners'][1]['records'][1] = record(SOURCE, 'owner_referenced_by', [OWNER])
        value.update(reciprocal_targets=[SOURCE], reciprocal_records=[deepcopy(value['owners'][1]['records'][1])],
            membership_checks=[dict(owner_key=OWNER, target_key=SOURCE, outgoing_member=True, inbound_owner_count=1, consistent=True),
                dict(owner_key=SOURCE, target_key=SOURCE, outgoing_member=False, inbound_owner_count=0, consistent=True)])
        validate(value, component_oid=OID)
        value['reciprocal_records'][0]['allocated_bytes'][-1] ^= 1
        with self.assertRaisesRegex(ValueError, 'Repeated'): validate(value, component_oid=OID)

    def test_caller_membership_checks_are_independently_recomputed(self):
        for mutate in (lambda v: v['membership_checks'][0].update(inbound_owner_count=3),
                       lambda v: v['membership_checks'][0].update(outgoing_member=False),
                       lambda v: v['membership_checks'][1].update(inbound_owner_count=True),
                       lambda v: v['membership_checks'][1].update(consistent=1),
                       lambda v: v['membership_checks'].reverse()):
            value = snapshot(); mutate(value)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): validate(value, component_oid=OID)

    def test_unknown_tag_and_last_four_byte_truncation_are_refused(self):
        value = snapshot(); row = value['reciprocal_records'][0]
        row['allocated_bytes'][64] = 2; row['bytes'][64] = 2
        with self.assertRaisesRegex(ValueError, 'Unsupported'): validate(value, component_oid=OID)
        value = snapshot(); row = value['owners'][0]['records'][0]
        row['allocated_bytes'] = row['allocated_bytes'][:row['logical_size'] - 4]
        row['allocated_size'] = len(row['allocated_bytes'])
        with self.assertRaises(ValueError): validate(value, component_oid=OID)

    def test_detached_result_does_not_modify_inputs(self):
        value = snapshot(); saved = deepcopy(value); result = validate(value, component_oid=OID)
        result['owners'][0]['records'][0]['allocated_bytes'].clear()
        result['membership_checks'].clear(); self.assertEqual(value, saved)

    def test_exact_undefined_record_is_absence_without_fabricated_bytes(self):
        value = snapshot(); owner = value['owners'][1]
        owner['records'][0] = absent_record(SOURCE, 'owner_references')
        value['reciprocal_records'][0] = record(TARGET, 'owner_referenced_by', [OWNER, OTHER, OWNER])
        value['membership_checks'][1].update(outgoing_member=False, inbound_owner_count=0)
        self.assertEqual(summarize(value, component_oid=OID)['absent_record_reads'], 1)
        for field, changed in (('error_number', 12), ('error_number', True), ('absence_profile', 'guessed'), ('bytes', [])):
            bad = deepcopy(value); bad['owners'][1]['records'][0][field] = changed
            with self.subTest(field=field), self.assertRaises(ValueError): validate(bad, component_oid=OID)

    def test_failed_read_is_retained_only_as_explicit_incomplete_observation(self):
        value = snapshot(); value['owners'][1]['records'][0] = absent_record(SOURCE, 'owner_references')
        value['owners'][1]['records'][0].update(read_status='error', error_number=12)
        value['owners'][1]['records'][0].pop('absence_profile')
        value['membership_checks'].pop(); value['complete'] = False
        with self.assertRaises(ValueError): validate(value, component_oid=OID)
        self.assertEqual(summarize(value, component_oid=OID, require_complete=False)['failed_record_reads'], 1)
        value['complete'] = True
        with self.assertRaises(ValueError): validate(value, component_oid=OID, require_complete=False)


def absent_record(key, role):
    attribute = 'DBReferenceList' if role == 'owner_references' else 'DBReferencedByList'
    return dict(role=role, attribute=attribute, global_id=key.copy(),
        query_key=key + list(attribute.encode('ascii')), actual_file_key=key + list(attribute.encode('ascii')),
        record_class_requested='CTreeVariableAttributeRecord', read_status='absent', error_class='CTError',
        error_number=101, uerr_code='30', sysio_code='0', absence_profile='exact_reference_undefined_v1')


def bound_receipt(phase, token, oid=OID, generation=108):
    before = snapshot(); before['component_oid'] = oid; before['owners'][0]['oid'] = oid
    after = deepcopy(before)
    after['reciprocal_records'][0]['allocated_bytes'][-1] ^= 1
    return dict(profile='native_module_persistent_references_v1', native_token=token, component_oid=oid,
        generation=generation, phase=phase, before=before, after=after if phase == 'attached' else None,
        prepared_native_record_bound=True, model_setters_called=0, store_called=False, commit_called=False,
        write_authorized=False, inverse_authorized=False, full_commit_resource_closure=False)


def requested_snapshot(*, absent=False):
    value = snapshot()
    value.update(profile=REQUESTED_PROFILE, requested_reciprocal_targets=[OTHER], reciprocal_targets=[TARGET, OTHER])
    value['reciprocal_records'].append(absent_record(OTHER, 'owner_referenced_by') if absent
        else record(OTHER, 'owner_referenced_by', [OTHER]))
    value['membership_checks'].extend([
        dict(owner_key=key, target_key=OTHER, outgoing_member=False, inbound_owner_count=0, consistent=True)
        for key in (OWNER, SOURCE)])
    return value


class RequestedFiniteReferenceTests(unittest.TestCase):
    def test_explicit_existing_and_absent_target_captured_before_any_outgoing_reference(self):
        for absent in (False, True):
            value = requested_snapshot(absent=absent)
            self.assertEqual(validate(value, component_oid=OID), value)
            self.assertEqual(summarize(value, component_oid=OID)['record_reads'], 6)
            self.assertIs(value['original_edit_before_bound'], False)

    def test_request_canonicalization_does_not_coerce_or_deduplicate(self):
        keys = [bytes(OTHER).hex(), bytes(TARGET).hex()]
        self.assertEqual(target_requests(keys), sorted(keys))
        for bad in (None, (), 'ab', [keys[0], keys[0]], ['AB' * 20], [0], ['a' * 39],
                    [f'{i:040x}' for i in range(17)]):
            with self.subTest(bad=bad), self.assertRaises(ValueError): target_requests(bad)

    def test_declared_targets_cannot_be_omitted_from_raw_census(self):
        value = requested_snapshot(); value['reciprocal_targets'].pop()
        value['reciprocal_records'].pop(); value['membership_checks'] = value['membership_checks'][:2]
        with self.assertRaises(ValueError): validate(value, component_oid=OID)

    def test_v2_requests_must_be_exact_nonempty_sorted_distinct_bounded(self):
        for bad in ([], [OTHER, OTHER], [OTHER, TARGET], [OTHER[:-1]], [[True] * 20],
                    [[i] * 20 for i in range(17)]):
            value = requested_snapshot(); value['requested_reciprocal_targets'] = bad
            with self.subTest(bad=bad), self.assertRaises(ValueError): validate(value, component_oid=OID)

    def test_requested_target_already_outgoing_is_read_once_in_union(self):
        value = snapshot(); value.update(profile=REQUESTED_PROFILE, requested_reciprocal_targets=[TARGET])
        self.assertEqual(summarize(value, component_oid=OID)['record_reads'], 5)

    def test_v1_cannot_sneak_in_extended_coverage(self):
        value = requested_snapshot(); value['profile'] = PROFILE
        with self.assertRaises(ValueError): validate(value, component_oid=OID)

    def test_actual_receipt_cannot_change_planned_target_binding(self):
        proof = bound_receipt('attached', 'edit_' + 'a' * 64)
        proof['before'] = requested_snapshot(); proof['after'] = deepcopy(proof['before'])
        self.assertEqual(differences(proof), [])
        proof['after']['requested_reciprocal_targets'] = [TARGET, OTHER]
        with self.assertRaisesRegex(ValueError, 'rebind'): differences(proof)

    def test_adapter_requires_its_exact_original_requested_keys(self):
        from bd_native_structure import NativeStructureAdapter
        adapter = NativeStructureAdapter.__new__(NativeStructureAdapter)
        adapter.connect_persistent_reference_capture_capable = True
        adapter.connect_reference_capture_capable = True
        adapter.connect_reference_targets = [bytes(OTHER).hex()]
        material = dict(profile='native_connect_material_v3',
            module_persistent_references=dict(before=requested_snapshot()))
        adapter._check_connect_reference_profile(material)
        adapter.connect_reference_targets = [bytes(TARGET).hex()]
        with self.assertRaisesRegex(ValueError, 'exact original request'):
            adapter._check_connect_reference_profile(material)


class BoundFiniteReferenceTests(unittest.TestCase):
    TOKEN = 'edit_' + 'a' * 64

    def test_native_record_binding_requires_exact_token_phase_and_generation(self):
        for phase in ('prepared', 'attached'):
            value = bound_receipt(phase, self.TOKEN)
            self.assertEqual(validate_receipt(value, token=self.TOKEN, component_oid=OID, generation=108, phase=phase), value)
            for field, bad in (('generation', True), ('generation', 109), ('native_token', 'edit_' + 'b' * 64),
                               ('phase', 'detached'), ('prepared_native_record_bound', False), ('inverse_authorized', True)):
                changed = deepcopy(value); changed[field] = bad
                with self.subTest(phase=phase, field=field), self.assertRaises(ValueError):
                    validate_receipt(changed, token=self.TOKEN, component_oid=OID, generation=108, phase=phase)

    def test_prepared_never_invents_after_or_replaces_source_owner(self):
        value = bound_receipt('attached', self.TOKEN)
        value['phase'] = 'prepared'
        with self.assertRaises(ValueError): validate_receipt(value, token=self.TOKEN, component_oid=OID, generation=108, phase='prepared')
        value = bound_receipt('attached', self.TOKEN); value['after']['owners'][1]['oid'] = 'new-source'
        with self.assertRaises(ValueError): differences(value)

    def test_actual_raw_tail_change_is_visible_even_if_semantic_entries_match(self):
        rows = differences(bound_receipt('attached', self.TOKEN))
        self.assertEqual(len(rows), 1); self.assertIs(rows[0]['semantic_changed'], False)
        self.assertIs(rows[0]['raw_tail_changed'], True)
        self.assertNotEqual(rows[0]['before']['raw_sha256'], rows[0]['after']['raw_sha256'])

    def test_new_target_never_manufactures_original_absence_from_after(self):
        value = bound_receipt('attached', self.TOKEN); after = value['after']
        after['owners'][0]['records'][0] = record(OWNER, 'owner_references', [TARGET, OTHER])
        after['reciprocal_targets'].append(OTHER); after['reciprocal_records'].append(record(OTHER, 'owner_referenced_by', [OWNER]))
        after['membership_checks'].extend([
            dict(owner_key=OWNER, target_key=OTHER, outgoing_member=True, inbound_owner_count=1, consistent=True),
            dict(owner_key=SOURCE, target_key=OTHER, outgoing_member=False, inbound_owner_count=0, consistent=True)])
        row = next(row for row in differences(value) if row['global_id'] == OTHER and row['scope'] == 'reciprocal')
        self.assertEqual(row['before']['read_status'], 'not_captured')
        self.assertIs(row['original_before_captured'], False); self.assertIs(row['inverse_authorized'], False)

    def test_absent_to_existing_delta_retains_real_absence_distinct_from_empty_record(self):
        value = bound_receipt('attached', self.TOKEN)
        value['before']['owners'][1]['records'][1] = absent_record(SOURCE, 'owner_referenced_by')
        row = next(row for row in differences(value) if row['owner_role'] == 'spec_source')
        self.assertEqual(row['before']['read_status'], 'absent'); self.assertIsNone(row['before']['entry_count'])
        self.assertIs(row['original_before_captured'], True)


class ProductionFiniteGateTests(unittest.TestCase):
    def test_explicit_v3_gate_refuses_before_native_io_and_pending_creation(self):
        from bd_native_structure import NativeStructureAdapter
        from bd_edit_journal import NativePreconditionConflict
        from unittest.mock import Mock, patch
        env = dict(ASCET_BD_CONNECT_REFERENCES='module_persistent_v1', ASCET_BD_CONNECT_MATERIAL='identity_v1',
            ASCET_BD_CONNECT_HISTORY='native_source_exact_v1', ASCET_BD_OPERATION_EXECUTOR='staged_v1')
        adapter = NativeStructureAdapter('BDE_Tool_Experiments\\Trial_fixture', environment=env)
        adapter.prepared_operation = 'connect_data'; adapter._exchange = Mock()
        with patch('bd_instance_pending.begin') as begin, self.assertRaises(NativePreconditionConflict): adapter.apply('edit_' + 'a' * 64)
        adapter._exchange.assert_not_called(); begin.assert_not_called()

    def test_v3_material_validator_requires_raw_binding_and_same_semantic_generation(self):
        from test_bd_connect_material import receipt, TOKEN
        from test_bd_module_references import reference_receipt
        from bd_connect_material import validate as validate_material
        from bd_edit_journal import JournalError
        for phase in ('prepared', 'attached'):
            value = receipt(phase)
            value.update(profile='native_connect_material_v3', module_references=reference_receipt(phase),
                module_persistent_references=bound_receipt(phase, TOKEN, 'fixture_oid'))
            validate_material(value, token=TOKEN, component_oid='fixture_oid', source='p12', target='p8', phase=phase)
            value['module_persistent_references']['generation'] += 1
            with self.assertRaises(JournalError): validate_material(value, token=TOKEN,
                component_oid='fixture_oid', source='p12', target='p8', phase=phase)


class FiniteReferenceJournalTests(unittest.TestCase):
    def setUp(self):
        import test_bd_connect_journal as base
        base.ConnectJournalTests.setUp(self)
        original_material = self.adapter.material
        def material(token, phase, oid):
            from test_bd_module_references import reference_receipt
            result = original_material(token, phase, oid); generation = self.adapter.original['generation']
            result.update(profile='native_connect_material_v3', module_references=reference_receipt(phase, token, oid),
                module_persistent_references=bound_receipt(phase, token, oid, generation))
            result['module_references']['generation'] = generation
            return result
        self.adapter.material = material

    def forward(self):
        import test_bd_connect_journal as base
        return base.ConnectJournalTests.forward(self)

    def test_actual_raw_wal_compact_diff_and_repeat_are_offline(self):
        first = self.forward(); self.assertEqual(first['status'], 'applied_observed')
        self.assertNotIn('connect_history', first)
        self.assertEqual(first['module_persistent_reference_history']['changed_records'], 1)
        calls = deepcopy(self.adapter.calls); diff = self.log.diff(first['change_id'])
        observation = diff['observations'][0]
        self.assertEqual(observation['module_persistent_reference_differences'][0]['raw_tail_changed'], True)
        self.assertNotIn('module_persistent_references_actual', observation)
        self.assertEqual(self.forward(), first); self.assertEqual(self.adapter.calls, calls)

    def test_original_raw_before_substitution_is_refused(self):
        from bd_connect_journal import forward_material
        from bd_edit_journal import JournalError
        self.forward(); token = self.adapter.token; oid = self.domain['oid']
        original = self.adapter.material(token, 'prepared', oid); actual = self.adapter.material(token, 'attached', oid)
        actual['module_persistent_references']['before']['reciprocal_records'][0]['allocated_bytes'][-1] ^= 1
        with self.assertRaises(JournalError): forward_material(self.request,
            dict(connect_material_prepared=original, before=self.adapter.original), actual, token)

    def test_unknown_forward_is_not_replayed_or_promoted(self):
        self.adapter.lose_reply = True; first = self.forward()
        self.assertEqual(first['status'], 'outcome_unknown'); self.assertNotIn('connect_history', first)
        self.assertEqual(self.forward(), first); self.assertEqual(self.adapter.calls.count('apply'), 1)


if __name__ == '__main__': unittest.main()
