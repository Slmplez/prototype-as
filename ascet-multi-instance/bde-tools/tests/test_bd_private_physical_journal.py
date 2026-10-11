"""Offline recovery-plan and evidence refusals; no online fault claims."""
from copy import deepcopy
import json
from pathlib import Path
import unittest

from bd_private_physical_journal import validate_physical_plan, audit_physical_events, pending_equal
from bd_class_study_journal import read_events
from bd_private_step_journal import _reply_flags
from test_bd_private_step_journal import recorded


def number(value):
    return ['number', 'SmallInteger', str(value)]


class PhysicalPlanTests(unittest.TestCase):
    def plan(self, class_name, initial, desired):
        state = {1: {'ref': 1, 'class': class_name, 'kind': 'collection', 'values': initial}}
        cell = {'ref': 1, 'kind': 'collection', 'index': 0, 'before': desired, 'after': initial}
        return state, cell

    def test_ordered_clear_and_restore_requires_exact_order(self):
        state, cell = self.plan('OrderedCollection', [number(1), number(2)], [number(3)])
        steps = [{'kind': 'remove', 'ref': 1, 'index': number(2), 'value': number(2)},
                 {'kind': 'remove', 'ref': 1, 'index': number(1), 'value': number(1)},
                 {'kind': 'insert', 'ref': 1, 'index': number(1), 'value': number(3)}]
        validate_physical_plan(state, cell, steps)
        for changed in (steps[::-1], steps[:-1], [{**steps[0], 'value': number(1)}, *steps[1:]]):
            with self.subTest(changed=changed), self.assertRaises(ValueError):
                validate_physical_plan(state, cell, changed)

    def test_array_only_changes_differing_slots(self):
        state, cell = self.plan('Array', [number(1), number(2)], [number(1), number(3)])
        steps = [{'kind': 'array_put', 'ref': 1, 'index': number(2), 'value': number(3)}]
        validate_physical_plan(state, cell, steps)
        with self.assertRaises(ValueError):
            validate_physical_plan(state, cell, [{'kind': 'array_put', 'ref': 1, 'index': number(1), 'value': number(1)}, *steps])
        with self.assertRaises(ValueError):
            validate_physical_plan(state, {**cell, 'before': []}, steps)

    def test_dictionary_all_keys_and_values_are_required(self):
        initial = [[number(1), number(2)], [number(3), number(4)]]
        desired = [[number(5), number(6)], [number(7), number(8)]]
        for class_name in ('Dictionary', 'IdentityDictionary'):
            state, cell = self.plan(class_name, initial, desired)
            removes = [{'kind': 'dict_remove', 'ref': 1, 'index': key, 'value': ['nil']} for key, _ in initial]
            puts = [{'kind': 'dict_put', 'ref': 1, 'index': key, 'value': value} for key, value in desired]
            validate_physical_plan(state, cell, removes[::-1] + puts[::-1])
            for changed in (removes + puts[:-1], puts + removes, removes + [{**puts[0], 'value': number(99)}, puts[1]]):
                with self.subTest(class_name=class_name, changed=changed), self.assertRaises(ValueError):
                    validate_physical_plan(state, cell, changed)

    def test_sets_require_every_original_member(self):
        for class_name in ('Set', 'IdentitySet'):
            state, cell = self.plan(class_name, [number(1), number(2)], [number(2), number(3)])
            removes = [{'kind': 'set_remove', 'ref': 1, 'index': ['nil'], 'value': value} for value in state[1]['values']]
            adds = [{'kind': 'set_add', 'ref': 1, 'index': ['nil'], 'value': value} for value in cell['before']]
            validate_physical_plan(state, cell, removes[::-1] + adds[::-1])
            with self.assertRaises(ValueError):
                validate_physical_plan(state, cell, removes + adds[:-1])

    def test_pending_unordered_images_preserve_identity_but_ignore_iteration_order(self):
        for class_name, values in (('Set', [number(1), number(2)]),
                                   ('Dictionary', [[number(1), number(2)], [number(3), number(4)]])):
            row = {'class': class_name, 'kind': 'collection'}
            expected = {'before': values, 'after': values[::-1], 'completed': 1, 'steps': [1, 2]}
            actual = {**expected, 'before': values[::-1], 'after': values}
            self.assertTrue(pending_equal(row, actual, expected))
            for changed in ({**actual, 'before': values[:1]}, {**actual, 'completed': 2},
                            {**actual, 'steps': [2, 1]}, {**actual, 'unproved': True}):
                with self.subTest(class_name=class_name, changed=changed):
                    self.assertFalse(pending_equal(row, changed, expected))

    def test_pending_array_and_ordered_images_require_exact_order(self):
        for class_name in ('Array', 'OrderedCollection'):
            row = {'class': class_name, 'kind': 'collection'}
            expected = {'before': [number(1), number(2)], 'after': [number(2), number(1)]}
            self.assertFalse(pending_equal(row, {**expected, 'before': expected['before'][::-1]}, expected))

    def test_unchanged_field_is_ambiguous(self):
        state = {1: {'ref': 1, 'class': 'Point', 'kind': 'fields', 'values': [number(1), number(2)]}}
        cell = {'ref': 1, 'kind': 'fields', 'index': 1, 'before': number(3), 'after': number(1)}
        steps = [{'kind': 'field', 'ref': 1, 'index': number(1), 'value': number(3)}]
        validate_physical_plan(state, cell, steps)
        with self.assertRaises(ValueError):
            validate_physical_plan(state, {**cell, 'before': number(1)}, [{**steps[0], 'value': number(1)}])

    def test_unknown_observation_does_not_grant_model_or_archive_rights(self):
        reply = deepcopy(next(body['reply'] for kind, body in recorded() if kind == 'step_observed'))
        reply['status']['actual_observation_complete'] = False
        with self.assertRaises(ValueError):
            _reply_flags(reply)
        _reply_flags(reply, observation_complete=False)
        for owner, key, value in ((reply, 'write_authorized', True), (reply, 'model_setters_called', 1),
                                  (reply, 'native_archive_available', True), (reply['status'], 'durable_current_wal', True)):
            previous = owner[key]
            owner[key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                _reply_flags(reply, observation_complete=False)
            owner[key] = previous


class RecordedPhysicalAuditTests(unittest.TestCase):
    """Tamper actual recorded observations, not a simulated online executor."""
    def setUp(self):
        root = Path(__file__).resolve().parents[1] / 'analysis/bde-experiments/2026-10-03/bde-private-physical-02/round-0'
        self.path = next(root.glob('*/before-0/session.json'))
        self.binding = json.loads(self.path.read_text(encoding='utf-8'))
        self.events = read_events(self.path.parent / 'wal')

    def changed(self, kind, change):
        events = deepcopy(self.events)
        body = next(event['payload'] for event in events if event['kind'] == kind)
        change(body)
        with self.assertRaises((ValueError, KeyError, TypeError)):
            audit_physical_events(events, self.binding)

    def test_recorded_prefix_recovery(self):
        result = audit_physical_events(self.events, self.binding)
        self.assertEqual(result['status'], 'recovered')
        self.assertEqual(result['physical_primitives'], result['physical_count'])
        self.assertTrue(result['independent_change_after_fault_preserved'])
        self.assertFalse(result['production_inverse_available'])

    def test_requested_collection_must_match_actual_native_target(self):
        events = deepcopy(self.events)
        events[0]['payload']['collection_class'] = 'Dictionary'
        with self.assertRaises(ValueError):
            audit_physical_events(events, self.binding)

    def test_unknown_collection_and_extra_intent_metadata_refuse(self):
        for added in ({'collection_class': 'Bag'}, {'collection_class': 'Array', 'minimum': 0}):
            events = deepcopy(self.events)
            events[0]['payload'].update(added)
            with self.subTest(added=added), self.assertRaises(ValueError):
                audit_physical_events(events, self.binding)

    def test_missing_or_duplicate_registry_binding_refuses(self):
        events = [event for event in self.events if event['kind'] != 'registry_bound']
        with self.assertRaises(ValueError):
            audit_physical_events(events, self.binding)
        events = deepcopy(self.events)
        index = next(i for i, event in enumerate(events) if event['kind'] == 'registry_bound')
        events.insert(index, deepcopy(events[index]))
        with self.assertRaises(ValueError):
            audit_physical_events(events, self.binding)

    def test_failure_requires_exact_physical_instruction(self):
        events = deepcopy(self.events)
        body = next(event['payload'] for event in events if event['kind'] == 'request_started' and event['payload']['action'].startswith('physical_fail_'))
        body['instruction']['value'] = ['nil']
        with self.assertRaises(ValueError):
            audit_physical_events(events, self.binding)

    def test_unknown_logical_counter_change_refuses(self):
        self.changed('registry_lookup', lambda body: body['export']['status'].update(recovered=0))

    def test_unknown_state_cannot_claim_observation_complete(self):
        self.changed('registry_lookup', lambda body: body['export']['status'].update(actual_observation_complete=True))

    def test_unknown_pending_counter_change_refuses(self):
        for field in ('completed', 'awaiting', 'unit', 'target_ref'):
            with self.subTest(field=field):
                self.changed('registry_lookup', lambda body: body['export']['physical_pending'].update({field: 999}))

    def test_unknown_retained_before_after_change_refuses(self):
        for field in ('before', 'after'):
            with self.subTest(field=field):
                self.changed('registry_lookup', lambda body: body['export']['physical_pending'].update({field: []}))

    def test_unknown_outcome_schedule_change_refuses(self):
        self.changed('registry_lookup', lambda body: body['export']['physical_pending'].update(outcome='applied'))
        self.changed('registry_lookup', lambda body: body['export']['physical_pending']['steps'].pop())

    def test_unknown_model_and_archive_claims_refuse(self):
        for field, value in (('write_authorized', True), ('native_archive_available', True), ('model_setters_called', 1)):
            with self.subTest(field=field):
                self.changed('registry_lookup', lambda body: body['export'].update({field: value}))
        self.changed('registry_lookup', lambda body: body['export']['status'].update(durable_current_wal=True))

    def test_unknown_coverage_and_independent_x_change_refuse(self):
        self.changed('registry_lookup', lambda body: body['export']['status'].update(current_checkpoint_objects=1))
        self.changed('registry_lookup', lambda body: body['export'].update(independent_x=0))

    def test_lookup_cannot_create_new_material(self):
        self.changed('registry_lookup', lambda body: body.update(commands=['open', 'prepare']))
        self.changed('registry_lookup', lambda body: body['export']['current'].pop())

    def test_native_host_termination_is_required(self):
        self.changed('host_terminated', lambda body: body.update(exit_code=0))
        self.changed('host_terminated', lambda body: body.update(setter_replayed=True))

    def test_refusal_cannot_alter_observed_pending_metadata(self):
        def mutate(body):
            body['before']['physical_pending']['completed'] += 1
            body['after'] = deepcopy(body['before'])
        self.changed('refused', mutate)

    def test_false_classification_from_same_image_refuses(self):
        events = deepcopy(self.events)
        reply = next(event['payload']['reply'] for event in events if event['kind'] == 'request_observed' and event['payload']['reply']['action'] == 'physical_reconcile')
        reply['result'] = 'applied'
        with self.assertRaises(ValueError):
            audit_physical_events(events, self.binding)

    def test_early_release_and_incomplete_tail_refuse(self):
        events = [event for event in self.events if event['kind'] != 'finished']
        with self.assertRaises(ValueError):
            audit_physical_events(events, self.binding)
        self.changed('registry_released', lambda body: body['reply']['status'].update(recovered=0))


if __name__ == '__main__':
    unittest.main()
