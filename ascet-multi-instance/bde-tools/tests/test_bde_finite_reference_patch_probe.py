"""Tamper controls for the six-phase executor evidence, not online model QA."""
from copy import deepcopy
import unittest

from bde_finite_reference_patch_probe import verify_patch_probe
from bd_finite_reference_patch import _physical_map
import test_bde_reference_leaf_nonempty_probe as fixtures


class FiniteProbeTests(unittest.TestCase):
    def native(self):
        native = fixtures.NonemptyTests().native(); before = native['before']
        phases = native['actual']['stages']; expected = before; results = []
        for after in (phases[0], phases[1], phases[2], phases[3], phases[1], phases[3]):
            left, right = _physical_map(expected), _physical_map(after); outcomes = []
            for key in sorted(right):
                a, b = left[key], right[key]
                if a == b: continue
                operation = 'delete_record' if b['read_status'] == 'absent' else 'create_original_record' if a['read_status'] == 'absent' else 'write_original_or_merged_record'
                outcomes.append(dict(global_id=b['global_id'], role=b['role'], operation=operation,
                    returned_class='SmallInteger' if operation == 'delete_record' else 'CTSpaceCheckingIFil'))
            results.append(dict(profile='finite_reference_patch_result_v1', before=deepcopy(expected),
                candidate=deepcopy(after), after=deepcopy(after), outcomes=outcomes, diagnostic_changes=[],
                exact_observation_matches=True, persistent_records_match=True, owner_source_backend_preserved=True,
                persistent_leaf_write_calls=sum(r['operation'] != 'delete_record' for r in outcomes),
                persistent_leaf_delete_calls=sum(r['operation'] == 'delete_record' for r in outcomes),
                model_setters_called=0, store_called=False, commit_called=False,
                automatic_retry=False, full_commit_resource_closure=False))
            expected = after
        replay = dict(profile='finite_reference_patch_failure_v1', phase='guard',
            error='Finite patch execution cannot replay', write_dispatched=False,
            persistent_leaf_write_calls=0, persistent_leaf_delete_calls=0, outcomes=[], automatic_retry=False)
        deferred = {**deepcopy(replay), 'error': 'Complete finite CURRENT conflict before dispatch'}
        stale = dict(profile='finite_reference_patch_preparation_refusal_v1',
            error='Complete finite CURRENT conflict before preparation', write_dispatched=False)
        native['actual'] = dict(profile='finite_reference_patch_probe_result_v1', before=deepcopy(before),
            results=results, controls=[deepcopy(replay), deferred, stale] + [deepcopy(replay) for _ in range(5)],
            after=deepcopy(expected), model_setters_called=0, store_called=False, commit_called=False,
            full_commit_resource_closure=False, automatic_retry=False)
        return native

    def verify(self, value):
        return verify_patch_probe(value, fixtures.NonemptyTests.domain)

    def test_complete_six_phase_recovery_keeps_production_gate_closed(self):
        result = self.verify(self.native())
        self.assertEqual((result['persistent_leaf_write_calls'], result['persistent_leaf_delete_calls']), (12, 2))
        self.assertTrue(result['exact_observation_restored']); self.assertFalse(result['production_inverse_authorized'])

    def test_guard_reply_may_not_hide_a_native_operation(self):
        for index in range(8):
            native = self.native(); native['actual']['controls'][index]['write_dispatched'] = True
            with self.subTest(index=index), self.assertRaises(ValueError): self.verify(native)

    def test_missing_duplicated_or_unaccounted_outcome_refused(self):
        for change in (lambda r: r['outcomes'].pop(), lambda r: r['outcomes'].append(deepcopy(r['outcomes'][0])),
                       lambda r: r['outcomes'][0].update(operation='delete_record'),
                       lambda r: r['outcomes'][0].update(global_id=[99] * 20)):
            native = self.native(); change(native['actual']['results'][0])
            with self.subTest(change=change), self.assertRaises(ValueError): self.verify(native)

    def test_diagnostic_change_is_explicit_and_complete(self):
        native = self.native(); final = native['actual']['results'][-1]
        final['after']['owners'][1]['records'][0]['sysio_code'] = 'winError158'
        final['exact_observation_matches'] = False
        row = final['after']['owners'][1]['records'][0]
        final['diagnostic_changes'] = [dict(global_id=row['global_id'], role=row['role'], before="'0'", after='winError158')]
        # Use the exact synthetic original diagnostic rather than an invented baseline.
        final['diagnostic_changes'][0]['before'] = final['candidate']['owners'][1]['records'][0]['sysio_code']
        native['actual']['after'] = deepcopy(final['after'])
        result = self.verify(native)
        self.assertFalse(result['exact_observation_restored']); self.assertEqual(len(result['final_diagnostic_changes']), 1)
        final['diagnostic_changes'].clear()
        with self.assertRaises(ValueError): self.verify(native)

    def test_missing_dirty_epoch_or_false_execution_accounting_refused(self):
        for change in (lambda n: n.update(dirty_before=True), lambda n: n.update(process_epoch='other'),
                       lambda n: n.update(complete_reply_received=False),
                       lambda n: n['actual']['results'][0].update(persistent_leaf_write_calls=True),
                       lambda n: n['actual']['results'][0].update(full_commit_resource_closure=True)):
            native = self.native(); change(native)
            with self.subTest(change=change), self.assertRaises(ValueError): self.verify(native)

    def test_actual_before_or_final_image_may_not_be_rebound(self):
        for change in (lambda n: n['actual']['before'].update(component_oid='changed'),
                       lambda n: n['actual']['results'][1]['before'].update(component_oid='changed'),
                       lambda n: n['actual']['after'].update(component_oid='changed')):
            native = self.native(); change(native)
            with self.subTest(change=change), self.assertRaises(ValueError): self.verify(native)

    def test_raw_tail_cannot_be_normalized_as_diagnostic(self):
        native = self.native(); final = native['actual']['results'][-1]
        final['after']['owners'][0]['records'][1]['allocated_bytes'][-1] ^= 1
        with self.assertRaises(ValueError): self.verify(native)

    def test_full_header_corruption_refused(self):
        native = self.native(); result = native['actual']['results'][0]
        for name in ('candidate', 'after'):
            row = result[name]['owners'][1]['records'][0]
            row['allocated_bytes'][2] ^= 1; row['bytes'][2] ^= 1
        with self.assertRaises(ValueError): self.verify(native)


if __name__ == '__main__': unittest.main()
