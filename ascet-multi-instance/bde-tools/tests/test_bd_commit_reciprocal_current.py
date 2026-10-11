"""Offline current-reference controls derived from sealed original v4 material.

All mutations below are made to detached Python dictionaries. They are synthetic
current observations, never native edits, and cannot establish write authority.
"""
from copy import deepcopy
import hashlib
import json
from pathlib import Path
import unittest

from bd_commit_reciprocal_current import delta, recompute, validate_summary
from bd_commit_model_diff import recompute as recompute_all
from bd_commit_resources import status, summary as compact_status
from bd_persistent_references import decode
import test_bd_commit_reciprocal as fixtures
import test_bd_commit_resources as resources


ROOT = Path(__file__).resolve().parents[1]
SEALED_PATH = 'analysis/bde-experiments/2026-10-07/bde-commit-reciprocal-tool-live-02/audit.json'
SEALED_SHA256 = '1ce5671c944c3e7904e6b6410783076101bf462b39cd386edcbd935917752556'
CURRENT_PATH = 'analysis/bde-experiments/2026-10-07/bde-commit-reciprocal-current-tool-live-02/audit.json'
CURRENT_SHA256 = '52d65d72799f94342615b810215f4018d29ac8a47cb09542877d7c0c08a9ce99'


def current_report(original, index=2):
    rows = deepcopy(original['records'])
    for row in rows:
        row['ctree_after'] = deepcopy(row['ctree_before'])
    proof = dict(profile='native_reciprocal_status_v1', component_oid=original['component_oid'],
        generation=original['generation'], target_count=len(rows), record_count=len(rows),
        actual_change_count=0, logical_records_match_retained=True, raw_records_match_retained=True,
        original_targets_only=True, original_material_held=True, new_outgoing_targets_captured=False,
        write_authorized=False, inverse_authorized=False)
    return dict(profile='native_current_reciprocal_records_v1', component_oid=original['component_oid'],
        generation=original['generation'], owner_key=deepcopy(original['owner_key']), phase='checked',
        records=rows, actual_changes=[], summary=proof, resource_check_index=index)


def logical_change(original, report, index, entries):
    """Build one detached record with exact entry ordering and unchanged raw tail."""
    old = original['records'][index]
    row = report['records'][index]
    tail = old['allocated_bytes'][old['logical_size']:]
    header = old['bytes'][:60]
    header[56:60] = list((21 * len(entries)).to_bytes(4, 'little'))
    payload = header + list(len(entries).to_bytes(4, 'little'))
    for key in entries:
        payload += [1] + list(key)
    row.update(blob_size=21 * len(entries), declared_size=60 + 21 * len(entries),
               logical_size=len(payload), bytes=payload, allocated_bytes=payload + tail,
               allocated_size=len(payload) + len(tail))
    change = dict(category='since_preparation', locus='reciprocal_record/' + str(index + 1),
                  field='$logical_bytes', before=deepcopy(old['bytes']), after=deepcopy(payload))
    report['actual_changes'].append(change)
    report['summary'].update(actual_change_count=len(report['actual_changes']),
                             logical_records_match_retained=False, raw_records_match_retained=False)
    return change


class CurrentReciprocalTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        raw = (ROOT / SEALED_PATH).read_bytes()
        if hashlib.sha256(raw).hexdigest() != SEALED_SHA256:
            raise AssertionError('Sealed original v4 audit changed')
        cls.sealed = json.loads(raw)

    def setUp(self):
        self.original = deepcopy(self.sealed['original_reciprocal_capture'])
        self.report = current_report(self.original)

    def audit(self, report=None):
        value = deepcopy(self.sealed)
        current = deepcopy(self.report if report is None else report)
        value.update(current_reciprocal_records_checked=True, reciprocal_checks=[current])
        value['last_actual_changes'] += deepcopy(current['actual_changes'])
        return value

    def rejected(self, report):
        with self.assertRaises((ValueError, KeyError)):
            delta(self.original, report)

    def test_complete_original_targets_compare_without_mutating_original_evidence(self):
        snapshot = deepcopy(self.original)
        self.assertEqual(len(self.report['records']), 9)
        self.assertEqual(delta(self.original, self.report), [])
        self.assertEqual(self.original, snapshot)
        self.assertEqual(self.original, self.sealed['original_reciprocal_capture'])

    def test_last_four_oid_bytes_are_in_the_semantic_delta(self):
        row = self.report['records'][0]
        before = deepcopy(row['bytes'])
        self.assertEqual(row['logical_size'] - row['declared_size'], 4)
        row['bytes'][-4:] = [byte ^ 0x80 for byte in row['bytes'][-4:]]
        row['allocated_bytes'][:row['logical_size']] = row['bytes']
        expected = dict(category='since_preparation', locus='reciprocal_record/1', field='$logical_bytes',
                        before=before, after=deepcopy(row['bytes']))
        self.report['actual_changes'] = [expected]
        self.report['summary'].update(actual_change_count=1, logical_records_match_retained=False,
                                      raw_records_match_retained=False)
        self.assertEqual(delta(self.original, self.report), [expected])
        self.assertEqual(expected['before'][:-4], expected['after'][:-4])

    def test_unparsed_record_tail_changes_raw_equality_only(self):
        old = self.original['records'][0]
        row = self.report['records'][0]
        row['allocated_bytes'][-1] ^= 1
        expected = dict(category='since_preparation', locus='reciprocal_record/1', field='$unparsed_record_tail',
            before=old['allocated_bytes'][old['logical_size']:], after=row['allocated_bytes'][row['logical_size']:])
        self.report['actual_changes'] = [deepcopy(expected)]
        self.report['summary'].update(actual_change_count=1, raw_records_match_retained=False)
        self.assertEqual(delta(self.original, self.report), [expected])
        self.assertTrue(self.report['summary']['logical_records_match_retained'])

    def test_owner_removal_reports_change_and_preserves_unrelated_order(self):
        index = 3  # Saved inbound record with many unrelated owners.
        old = decode(self.original['records'][index], self.original['records'][index]['global_id'])
        entries = [entry['global_id'] for entry in old['entries']]
        unrelated = [key for key in entries if key != self.original['owner_key']]
        self.assertLess(len(unrelated), len(entries))
        self.assertGreater(len(unrelated), 2)
        expected = logical_change(self.original, self.report, index, unrelated)
        self.assertEqual(delta(self.original, self.report), [expected])
        actual = decode(self.report['records'][index], self.original['records'][index]['global_id'])
        self.assertEqual([entry['global_id'] for entry in actual['entries']], unrelated)
        self.assertEqual(self.original['records'][index], self.sealed['original_reciprocal_capture']['records'][index])

    def test_new_unrelated_inbound_entry_is_reported_without_claiming_new_outgoing_coverage(self):
        row = self.original['records'][0]
        entries = [entry['global_id'] for entry in decode(row, row['global_id'])['entries']]
        expected = logical_change(self.original, self.report, 0, entries + [[250] * 20])
        self.assertEqual(delta(self.original, self.report), [expected])
        self.assertFalse(self.report['summary']['new_outgoing_targets_captured'])

    def test_direct_leaf_read_effect_has_its_own_category_after_record_diff(self):
        expected = logical_change(self.original, self.report, 0, [])
        row = self.report['records'][0]
        field = next(field for field in row['ctree_after']['fields'] if field['name'] == 'ctTransaction')
        old = deepcopy(field['value'])
        field['value'] = {'class': 'SmallInteger', 'kind': 'atom', 'value': '2'}
        read_effect = dict(category='query_read_effect', locus='ctree_reciprocal/1', field='ctTransaction',
                           before=old, after=deepcopy(field['value']))
        self.report['actual_changes'].append(read_effect)
        self.report['summary']['actual_change_count'] = 2
        self.assertEqual(delta(self.original, self.report), [expected, read_effect])

    def test_missing_reordered_duplicate_and_foreign_targets_are_rejected(self):
        mutations = [lambda r: r['records'].pop(), lambda r: r['records'].reverse(),
                     lambda r: r['records'].__setitem__(1, deepcopy(r['records'][0])),
                     lambda r: r['records'][0]['actual_file_key'].__setitem__(0, 255)]
        for mutate in mutations:
            with self.subTest(mutate=mutate):
                report = deepcopy(self.report); mutate(report); self.rejected(report)

    def test_current_unknown_tag_and_record_error_cannot_be_absence(self):
        report = deepcopy(self.report)
        report['records'][0]['bytes'][64] = 7
        report['records'][0]['allocated_bytes'][64] = 7
        self.rejected(report)
        for phase in ('checked', 'read-error'):
            report = deepcopy(self.report)
            report['phase'] = phase
            report['records'][0].update(read_status='error', error={'code': 101})
            self.rejected(report)

    def test_current_cannot_use_legacy_prefix_or_unknown_length_profile(self):
        for profile in (None, 'reference_payload_v1'):
            report = deepcopy(self.report)
            if profile is None:
                report['records'][0].pop('length_profile')
            else:
                report['records'][0]['length_profile'] = profile
            with self.subTest(profile=profile): self.rejected(report)

    def test_current_schema_identity_and_missing_read_observations_are_rejected(self):
        for phase in ('ctree_before', 'ctree_after'):
            report = deepcopy(self.report); report['records'][0].pop(phase); self.rejected(report)
            report = deepcopy(self.report)
            report['records'][0][phase]['binding']['ref'] = 'foreign_leaf'
            self.rejected(report)
            report = deepcopy(self.report)
            report['records'][0][phase]['fields'][0]['slot'] = True
            self.rejected(report)

    def test_namespace_profile_and_integer_check_index_are_strict(self):
        for field, value in [('component_oid', 'foreign'), ('generation', True), ('generation', 2),
                ('profile', 'native_current_reciprocal_records_v0'), ('resource_check_index', True),
                ('resource_check_index', 0), ('resource_check_index', 33), ('resource_check_index', 2.0)]:
            report = deepcopy(self.report); report[field] = value
            with self.subTest(field=field, value=value): self.rejected(report)

    def test_owner_binding_rejects_boolean_bytes_equal_to_one(self):
        report = deepcopy(self.report)
        index = report['owner_key'].index(1)
        report['owner_key'][index] = True
        self.rejected(report)

    def test_report_changes_and_flags_are_recomputed_not_trusted(self):
        expected = logical_change(self.original, self.report, 0, [])
        for mutate in (lambda r: r.update(actual_changes=[]),
                       lambda r: r['actual_changes'][0].update(before=expected['after']),
                       lambda r: r['summary'].update(logical_records_match_retained=True),
                       lambda r: r['summary'].update(raw_records_match_retained=True)):
            report = deepcopy(self.report); mutate(report); self.rejected(report)

    def test_summary_returns_detached_copy_and_rejects_census_authority_and_partial_scope(self):
        proof = self.report['summary']
        copied = validate_summary(proof, self.original['component_oid'], 1, 9, [])
        self.assertEqual(copied, proof)
        self.assertIsNot(copied, proof)
        for field, value in [('target_count', True), ('record_count', 8), ('actual_change_count', True),
                ('generation', True), ('original_targets_only', False), ('original_material_held', 1),
                ('new_outgoing_targets_captured', True), ('write_authorized', True), ('inverse_authorized', 0)]:
            invalid = deepcopy(proof); invalid[field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                validate_summary(invalid, self.original['component_oid'], 1, 9, [])

    def test_summary_rejects_oversized_or_nonlist_actual_changes(self):
        for changes in ([{}] * 4097, {}):
            proof = deepcopy(self.report['summary']); proof['actual_change_count'] = len(changes)
            with self.subTest(size=len(changes)), self.assertRaises(ValueError):
                validate_summary(proof, self.original['component_oid'], 1, 9, changes)

    def test_summary_rejects_out_of_scope_indexes_fields_and_categories(self):
        sample = dict(category='since_preparation', locus='reciprocal_record/1', field='$logical_bytes',
                      before=[1], after=[2])
        for mutation in (dict(locus='reciprocal_record/0'), dict(locus='reciprocal_record/10'),
                         dict(locus='reciprocal_record/01'), dict(locus='unrelated/1'),
                         dict(field='$guessed_record'), dict(category='query_read_effect')):
            change = dict(sample, **mutation)
            proof = dict(self.report['summary'], actual_change_count=1,
                         logical_records_match_retained=False, raw_records_match_retained=False)
            with self.subTest(mutation=mutation), self.assertRaises(ValueError):
                validate_summary(proof, self.original['component_oid'], 1, 9, [change])

    def test_zero_original_targets_have_an_explicit_empty_current_scope(self):
        original = fixtures.capture_fixture(empty=True)
        report = current_report(original, index=1)
        self.assertEqual(delta(original, report), [])
        self.assertEqual(report['summary']['target_count'], 0)
        self.assertFalse(report['summary']['new_outgoing_targets_captured'])

    def test_joint_recompute_appends_current_delta_to_the_exact_resource_check(self):
        expected = logical_change(self.original, self.report, 0, [])
        audit = self.audit()
        before = deepcopy(audit)
        self.assertEqual(recompute(audit, 2), [expected])
        self.assertEqual(recompute_all(audit), self.sealed['last_actual_changes'] + [expected])
        self.assertEqual(audit, before)

    def test_pair_index_is_not_boolean_duplicate_reordered_or_from_another_check(self):
        for index in (True, 0, 1, 3, 2.0):
            with self.subTest(index=index), self.assertRaises(ValueError):
                recompute(self.audit(), index)
        for indexes in ([2, 2], [2, 1], [True, 2], [0, 2], [3, 2]):
            audit = self.audit()
            audit['reciprocal_checks'] = [current_report(self.original, index) for index in indexes]
            with self.subTest(indexes=indexes), self.assertRaises(ValueError):
                recompute(audit, 2)

    def test_incomplete_final_report_cannot_fall_back_or_downgrade_to_unchecked(self):
        for phase in ('reading', 'read-error'):
            audit = self.audit()
            incomplete = current_report(self.original); incomplete.update(phase=phase, summary=None, actual_changes=None)
            audit['reciprocal_checks'].append(incomplete)
            with self.subTest(phase=phase), self.assertRaises(ValueError): recompute(audit, 2)
            audit['current_reciprocal_records_checked'] = False
            with self.assertRaises(ValueError): recompute_all(audit)

    def test_recompute_rejects_foreign_original_root_owner_and_outgoing_binding(self):
        for mutate in (lambda a: a['original_capture']['owner_key'].__setitem__(0, 255),
                       lambda a: a['original_capture']['records'][1]['allocated_bytes'].__setitem__(-1, 255)):
            audit = self.audit(); mutate(audit)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): recompute(audit, 2)


class CurrentReciprocalStatusTests(unittest.TestCase):
    def value(self):
        value = fixtures.status_fixture()
        value.update(profile='native_commit_status_v2', current_reciprocal_records_checked=True,
                     reciprocal_summary=current_report(fixtures.capture_fixture())['summary'])
        return value

    def check(self, value):
        return status(value, token=resources.TOKEN, component_oid=resources.OID, checked=True)

    def test_v2_current_scope_is_explicit_and_historical_v1_remains_unchecked(self):
        value = self.check(self.value())
        self.assertTrue(value['current_reciprocal_records_checked'])
        self.assertIn('before/current records', compact_status(value)['coverage'])
        old = self.check(fixtures.status_fixture())
        self.assertFalse(old['current_reciprocal_records_checked'])
        self.assertIn('current reciprocal inbound records not checked', compact_status(old)['coverage'])

    def test_v1_cannot_claim_current_and_v2_cannot_drop_summary_or_scope(self):
        for mutate in (lambda v: v.update(profile='native_commit_status_v1'),
                       lambda v: v.update(current_reciprocal_records_checked=False),
                       lambda v: v.update(current_reciprocal_records_checked=1),
                       lambda v: v.pop('reciprocal_summary'),
                       lambda v: v['reciprocal_summary'].update(target_count=1, record_count=1)):
            value = self.value(); mutate(value)
            with self.subTest(mutate=mutate), self.assertRaises(ValueError): self.check(value)
        old = fixtures.status_fixture(); old['current_reciprocal_records_checked'] = True
        with self.assertRaises(ValueError): self.check(old)

    def test_status_summary_cannot_claim_equal_records_when_actual_delta_is_nonzero(self):
        for field in ('$logical_bytes', '$unparsed_record_tail'):
            value = self.value()
            value['actual_changes'].append(dict(category='since_preparation', locus='reciprocal_record/1',
                                                field=field, before=[1], after=[2]))
            value['reciprocal_summary']['actual_change_count'] = 1
            with self.subTest(field=field), self.assertRaises(ValueError): self.check(value)

    def test_status_namespace_authority_and_new_target_claims_are_refused(self):
        for field, replacement in [('component_oid', 'foreign'), ('generation', True),
                ('original_material_held', False), ('new_outgoing_targets_captured', True),
                ('write_authorized', True), ('inverse_authorized', True)]:
            value = self.value(); value['reciprocal_summary'][field] = replacement
            with self.subTest(field=field), self.assertRaises(ValueError): self.check(value)


class SavedCurrentReciprocalTests(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        raw = (ROOT / CURRENT_PATH).read_bytes()
        if hashlib.sha256(raw).hexdigest() != CURRENT_SHA256:
            raise AssertionError('Saved native current reciprocal audit changed')
        cls.saved = json.loads(raw)

    def test_saved_native_current_independently_recomputes_nine_read_effects_and_full_twenty_one(self):
        audit = deepcopy(self.saved)
        actual = recompute(audit, 4)
        self.assertEqual(len(actual), 9)
        self.assertEqual([row['locus'] for row in actual], ['ctree_reciprocal/' + str(i) for i in range(1, 10)])
        self.assertTrue(all(row['category'] == 'query_read_effect' and row['field'] == 'fixedRecord' for row in actual))
        self.assertEqual(recompute_all(audit), audit['last_actual_changes'])
        self.assertEqual(len(audit['last_actual_changes']), 21)
        self.assertEqual(audit, self.saved)

    def test_saved_failed_query_is_retained_but_not_reclassified_as_a_complete_current_read(self):
        audit = deepcopy(self.saved)
        partial, complete = audit['reciprocal_checks']
        self.assertEqual(partial['phase'], 'reading')
        self.assertEqual(len(partial['records']), 1)
        self.assertIsNone(partial['actual_changes'])
        self.assertIsNone(partial['summary'])
        self.assertNotIn('resource_check_index', partial)
        self.assertEqual(complete['resource_check_index'], 4)
        audit['reciprocal_checks'] = [partial]
        with self.assertRaises(ValueError): recompute(audit, 4)
        audit['current_reciprocal_records_checked'] = False
        with self.assertRaises(ValueError): recompute_all(audit)

    def test_latest_current_cannot_be_paired_to_an_earlier_resource_query(self):
        for index in (True, 1, 2, 3, 5):
            with self.subTest(index=index), self.assertRaises(ValueError):
                recompute(deepcopy(self.saved), index)

    def test_native_original_before_matches_the_prior_sealed_pre_current_material(self):
        raw = (ROOT / SEALED_PATH).read_bytes()
        self.assertEqual(hashlib.sha256(raw).hexdigest(), SEALED_SHA256)
        original = json.loads(raw)['original_reciprocal_capture']
        self.assertEqual(self.saved['original_reciprocal_capture'], original)
        proof = self.saved['reciprocal_checks'][-1]['summary']
        self.assertTrue(proof['logical_records_match_retained'])
        self.assertTrue(proof['raw_records_match_retained'])
        self.assertFalse(proof['new_outgoing_targets_captured'])
        self.assertFalse(proof['write_authorized'])
        self.assertFalse(proof['inverse_authorized'])


if __name__ == '__main__':
    unittest.main()
