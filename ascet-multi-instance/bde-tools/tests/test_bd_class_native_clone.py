"""Contract negatives from recorded online copies, not online edit acceptance."""
from copy import deepcopy
import json
from pathlib import Path
import unittest

from bd_class_native_clone import compare_graph_clones, compare_graph_splices
from bd_class_tools import observation


class NativeGraphCloneEvidenceTests(unittest.TestCase):
    def setUp(self):
        root = Path(__file__).resolve().parents[1] / 'analysis/bde-experiments/2026-10-03'
        raw = json.loads((root / 'bde-native-graph-clone-05/raw-0.json').read_text(encoding='utf-8'))
        checks = json.loads((root / 'bde-keyed-collection-plan-02/raw-0.json').read_text(encoding='utf-8'))
        self.observed = observation(raw, 'observed')
        self.rows = raw['native_graph_clone_observed']
        self.checkpoints = checks['native_binding_checkpoints_observed']

    def validate(self, rows=None, mode='clone'):
        return compare_graph_clones(self.observed, rows if rows is not None else self.rows, self.checkpoints, mode)

    def test_full_recorded_copy_coverage_matches_keyed_checkpoint(self):
        result = self.validate()
        self.assertEqual(result['owners'], 4)
        self.assertEqual(result['copied_objects'], 2543)
        self.assertEqual(result['keyed_members'], 177)
        self.assertEqual(result['verified_graph_fields'], 11860)
        self.assertEqual(result['correspondence_negatives'], 24)

    def test_missing_duplicate_foreign_and_path_rebound_owner_refuse(self):
        candidates = [self.rows[:-1], [*self.rows[:-1], self.rows[0]]]
        for field in ('oid', 'component'):
            rows = deepcopy(self.rows)
            rows[0][field] = 'foreign'
            candidates.append(rows)
        for rows in candidates:
            with self.subTest(rows=rows[0]['oid']), self.assertRaises(ValueError):
                self.validate(rows)

    def test_profile_authority_and_private_verification_refuse(self):
        changes = [('profile', 'native_graph_clone_inspection_v1'), ('mode', 'inspect'),
            ('write_authorized', True), ('model_setters_called', True), ('model_setters_called', 1),
            ('model_store_calls', False), ('model_store_calls', 1), ('clone_kept_private', False),
            ('initial_graph_fields_match', False), ('public_projection_matches', False),
            ('original_unchanged', False), ('correspondence_negatives', 5)]
        for field, value in changes:
            rows = deepcopy(self.rows)
            rows[0]['checks'][field] = value
            with self.subTest(field=field, value=value), self.assertRaises(ValueError):
                self.validate(rows)

    def test_missing_coverage_and_boolean_counts_refuse(self):
        for field in ('inspected_objects', 'keyed_members', 'copied_objects', 'cloned_keyed_members',
                      'verified_graph_fields', 'correspondence_negatives'):
            for value in (None, True, -1, 0):
                rows = deepcopy(self.rows)
                rows[0]['checks'][field] = value
                with self.subTest(field=field, value=value), self.assertRaises(ValueError):
                    self.validate(rows)
        rows = deepcopy(self.rows)
        rows[0]['checks']['classes']['Point'] -= 1
        with self.assertRaises(ValueError):
            self.validate(rows)

    def test_unsupported_and_unreachable_material_cannot_pass_clone(self):
        for field, value in [('unsupported', {'Point': 'root/field1'}),
                             ('unreachable_members', ['lost-member'])]:
            rows = deepcopy(self.rows)
            rows[0]['checks'][field] = value
            rows[0]['checks']['clone_available'] = False
            with self.subTest(field=field), self.assertRaises(ValueError):
                self.validate(rows)

    def test_boundary_aliases_counts_and_double_classification_refuse(self):
        for change in ('count', 'unknown', 'overlap'):
            rows = deepcopy(self.rows)
            value = rows[0]['checks']
            if change == 'count':
                value['database_boundaries']['SGClass'] += 1
            elif change == 'unknown':
                value['database_boundaries']['UnknownClass'] = 1
            else:
                value['presentation_boundaries']['SGClass'] = 1
            with self.subTest(change=change), self.assertRaises(ValueError):
                self.validate(rows)

    def test_inspection_is_separate_from_clone_acceptance(self):
        rows = deepcopy(self.rows)
        for row in rows:
            value = row['checks']
            value.update(profile='native_graph_clone_inspection_v1', mode='inspect', copied_objects=0)
            for field in ('cloned_keyed_members', 'initial_graph_fields_match', 'correspondence_negatives',
                          'verified_graph_fields', 'public_projection_matches', 'original_unchanged',
                          'clone_kept_private', 'model_store_calls'):
                value.pop(field)
        result = self.validate(rows, 'inspect')
        self.assertEqual(result['copied_objects'], 0)
        self.assertEqual(result['verified_graph_fields'], 0)
        with self.assertRaises(ValueError):
            self.validate(rows)
        rows[0]['checks']['cloned_keyed_members'] = rows[0]['checks']['keyed_members']
        with self.assertRaises(ValueError):
            self.validate(rows, 'inspect')


class NativeGraphSpliceEvidenceTests(unittest.TestCase):
    def setUp(self):
        root = Path(__file__).resolve().parents[1] / 'analysis/bde-experiments/2026-10-03/bde-native-graph-splice-05'
        raw = json.loads((root / 'raw-0.json').read_text(encoding='utf-8'))
        self.observed = observation(raw, 'observed')
        self.rows = raw['native_graph_clone_observed']
        self.checkpoints = raw['native_binding_checkpoints_observed']
        self.projections = raw['detached_projection_observed']

    def validate(self, rows=None):
        return compare_graph_splices(self.observed, rows if rows is not None else self.rows,
                                     self.checkpoints, self.projections)

    def test_recorded_all_connected_pin_closures_and_private_local_inverse(self):
        value = self.validate()
        self.assertEqual(value['cases'], 42)
        self.assertEqual(value['incident_edge_deletions'], 46)
        self.assertEqual(value['field_changes'], 264)
        self.assertEqual(value['collection_changes'], 180)
        self.assertEqual(value['conflict_negatives'], 84)

    def test_missing_duplicate_foreign_connected_pin_cannot_reduce_coverage(self):
        for change in ('missing', 'duplicate', 'foreign'):
            rows = deepcopy(self.rows)
            checks = rows[0]['checks']
            if change == 'missing':
                checks['cases'].pop()
                checks['case_count'] -= 1
            elif change == 'duplicate':
                checks['cases'][-1] = deepcopy(checks['cases'][0])
            else:
                checks['cases'][0]['pin_key'] = 'Main/foreign'
            with self.subTest(change=change), self.assertRaises(ValueError):
                self.validate(rows)

    def test_wrong_incident_reference_and_retained_edge_cannot_pass(self):
        for change in ('foreign_edge', 'retained_edge', 'deleted_other_edge'):
            rows = deepcopy(self.rows)
            case = rows[0]['checks']['cases'][0]
            if change == 'foreign_edge':
                case['edge_keys'][0] = 'Main/e999999'
            elif change == 'retained_edge':
                case['deleted_projection'] = deepcopy(case['before_projection'])
            else:
                case['deleted_projection'][0]['edges'].pop()
            with self.subTest(change=change), self.assertRaises(ValueError):
                self.validate(rows)

    def test_unrelated_geometry_in_delete_or_restoration_cannot_hide(self):
        for stage in ('deleted', 'restored'):
            rows = deepcopy(self.rows)
            rows[0]['checks']['cases'][0][stage + '_projection'][0]['nodes'][0]['anchor'][0] += 3
            with self.subTest(stage=stage), self.assertRaises(ValueError):
                self.validate(rows)

    def test_independent_visible_change_must_survive_inverse(self):
        for change in ('lost', 'extra_change', 'owner', 'coordinate'):
            rows = deepcopy(self.rows)
            case = rows[0]['checks']['cases'][0]
            if change == 'lost':
                case['preserved_projection'] = deepcopy(case['before_projection'])
            elif change == 'extra_change':
                case['preserved_projection'][0]['nodes'][-1]['size'][0] += 1
            elif change == 'owner':
                case['independent_node_key'] = 'Main/n999999'
            else:
                case['independent_x_after'] += 1
            with self.subTest(change=change), self.assertRaises(ValueError):
                self.validate(rows)

    def test_actual_field_name_count_and_conflict_refusals_are_required(self):
        for change in ('name', 'kind', 'count', 'negative', 'boolean', 'calls'):
            rows = deepcopy(self.rows)
            checks = rows[0]['checks']
            case = checks['cases'][0]
            if change == 'name':
                next(entry for entry in case['changes'] if entry['kind'] == 'fields')['field_name'] = ''
            elif change == 'kind':
                case['changes'][0]['kind'] = 'model'
            elif change == 'count':
                case['field_changes'] -= 1
            elif change == 'negative':
                case['conflict_negatives'] = 1
            elif change == 'boolean':
                case['original_references_restored'] = 1
            else:
                checks['private_forward_restore_calls'] += 1
            with self.subTest(change=change), self.assertRaises(ValueError):
                self.validate(rows)

    def test_private_study_cannot_claim_production_authority(self):
        for field, value in [('production_inverse_available', True), ('clone_kept_private', False),
                ('write_authorized', True), ('model_setters_called', 1), ('model_store_calls', False)]:
            rows = deepcopy(self.rows)
            rows[0]['checks'][field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                self.validate(rows)


class NativeGraphMergeEvidenceTests(unittest.TestCase):
    def setUp(self):
        root = Path(__file__).resolve().parents[1] / 'analysis/bde-experiments/2026-10-03/bde-native-private-merge-02'
        raw = json.loads((root / 'raw-0.json').read_text(encoding='utf-8'))
        self.observed = observation(raw, 'observed')
        self.rows = raw['native_graph_clone_observed']
        self.checkpoints = raw['native_binding_checkpoints_observed']
        self.projections = raw['detached_projection_observed']

    def validate(self, rows=None):
        return compare_graph_splices(self.observed, rows if rows is not None else self.rows,
                                     self.checkpoints, self.projections)

    def peer_case(self, rows):
        return next(case for row in rows for case in row['checks']['cases'] if case['peer_merge']['tested'])

    def test_recorded_native_three_way_splices_and_declared_skips(self):
        value = self.validate()
        self.assertEqual(value['cases'], 42)
        self.assertEqual(value['same_collection_cases'], 3)
        self.assertEqual(value['no_same_collection_peer'], 39)
        self.assertEqual(value['ordered_splices'], 94)
        self.assertEqual(value['conflict_negatives'], 126)
        self.assertEqual(value['prepared_conflict_negatives'], 0)

    def test_missing_duplicate_or_rebound_collection_plan_refuses(self):
        for change in ('missing', 'duplicate', 'rebound'):
            rows = deepcopy(self.rows)
            case = self.peer_case(rows)
            plans = case['ordered_plans']
            if change == 'missing':
                plans.pop()
            elif change == 'duplicate':
                plans[-1] = deepcopy(plans[0])
            else:
                plans[0]['binding_key'] = 'Main/foreign|children'
            with self.subTest(change=change), self.assertRaises(ValueError):
                self.validate(rows)

    def test_native_one_based_splice_operation_member_and_index_must_match(self):
        for field, value in ((0, 'remove'), (1, 0), (1, True), (2, 'Main/p999999')):
            rows = deepcopy(self.rows)
            self.peer_case(rows)['ordered_plans'][0]['splices'][0][field] = value
            with self.subTest(field=field, value=value), self.assertRaises(ValueError):
                self.validate(rows)

    def test_peer_cannot_be_omitted_promoted_or_rebound(self):
        for change in ('omitted', 'hidden', 'rebound', 'foreign_candidate', 'duplicate'):
            rows = deepcopy(self.rows)
            peer = self.peer_case(rows)['peer_merge']
            if change == 'omitted':
                peer.update(tested=False, eligible_keys=[], skip_reason='no_unconnected_same_port_pin', probe_mutations=0)
            elif change == 'hidden':
                peer['peer_visible'] = False
            elif change == 'rebound':
                peer['peer_key'] = 'Main/p999999'
            elif change == 'foreign_candidate':
                peer['eligible_keys'].append('Main/p999999')
            else:
                peer['eligible_keys'].append(peer['eligible_keys'][0])
            with self.subTest(change=change), self.assertRaises(ValueError):
                self.validate(rows)

    def test_independent_member_deletion_and_full_graph_effect_must_survive(self):
        for change in ('collection', 'projection', 'extra_change', 'dropped_stage'):
            rows = deepcopy(self.rows)
            peer = self.peer_case(rows)['peer_merge']
            if change == 'collection':
                plan = next(plan for plan in peer['ordered_plans'] if peer['peer_key'] in plan['before'])
                plan['merged'].append(peer['peer_key'])
            elif change == 'projection':
                peer['merged_projection'] = deepcopy(peer['both_deleted_projection'])
            elif change == 'extra_change':
                peer['merged_projection'][0]['nodes'][0]['size'][0] += 1
            else:
                peer.pop('independent_only_projection')
            with self.subTest(change=change), self.assertRaises(ValueError):
                self.validate(rows)

    def test_peer_authority_full_state_and_typed_mutation_counts_required(self):
        for field, value in (('same_parent_verified', 1), ('incident_edges', True),
                ('complete_independent_state_preserved', False), ('original_references_restored', False),
                ('main_inverse_mutations', 0), ('peer_reset_mutations', 0),
                ('peer_cleanup_mutations', True), ('probe_mutations', 0)):
            rows = deepcopy(self.rows)
            self.peer_case(rows)['peer_merge'][field] = value
            with self.subTest(field=field, value=value), self.assertRaises(ValueError):
                self.validate(rows)

    def test_false_skip_count_and_new_coverage_on_old_profile_refuse(self):
        rows = deepcopy(self.rows)
        peer = next(case['peer_merge'] for row in rows for case in row['checks']['cases']
                    if not case['peer_merge']['tested'])
        peer['probe_mutations'] = True
        with self.assertRaises(ValueError):
            self.validate(rows)
        rows = deepcopy(self.rows)
        self.peer_case(rows)['prepared_conflict_negatives'] = 4
        with self.assertRaises(ValueError):
            self.validate(rows)


class NativePreparedPlanEvidenceTests(unittest.TestCase):
    def setUp(self):
        root = Path(__file__).resolve().parents[1] / 'analysis/bde-experiments/2026-10-03/bde-native-private-merge-03'
        raw = json.loads((root / 'raw-0.json').read_text(encoding='utf-8'))
        self.observed = observation(raw, 'observed')
        self.rows = raw['native_graph_clone_observed']
        self.checkpoints = raw['native_binding_checkpoints_observed']
        self.projections = raw['detached_projection_observed']

    def validate(self, rows=None):
        return compare_graph_splices(self.observed, rows if rows is not None else self.rows,
                                     self.checkpoints, self.projections)

    def test_actual_prepared_conflicts_are_separate_from_prepare_time_conflicts(self):
        value = self.validate()
        self.assertEqual(value['conflict_negatives'], 126)
        self.assertEqual(value['prepared_conflict_negatives'], 168)
        self.assertEqual(value['same_collection_cases'], 3)

    def test_missing_false_boolean_or_inflated_prepared_coverage_refuses(self):
        for number in (None, True, 0, 3, 5):
            rows = deepcopy(self.rows)
            rows[0]['checks']['cases'][0]['prepared_conflict_negatives'] = number
            with self.subTest(number=number), self.assertRaises(ValueError):
                self.validate(rows)

    def test_profile_cannot_promote_or_hide_prepared_plan_proof(self):
        for profile in ('native_private_graph_splice_v2', 'native_private_graph_splice_v4'):
            rows = deepcopy(self.rows)
            rows[0]['checks']['profile'] = profile
            with self.subTest(profile=profile), self.assertRaises(ValueError):
                self.validate(rows)


class NativeDependencyPlanEvidenceTests(unittest.TestCase):
    def setUp(self):
        root = Path(__file__).resolve().parents[1] / 'analysis/bde-experiments/2026-10-03/bde-native-private-merge-10'
        raw = json.loads((root / 'raw-0.json').read_text(encoding='utf-8'))
        self.observed = observation(raw, 'observed')
        self.rows = raw['native_graph_clone_observed']
        self.checkpoints = raw['native_binding_checkpoints_observed']
        self.projections = raw['detached_projection_observed']

    def validate(self, rows=None):
        return compare_graph_splices(self.observed, rows if rows is not None else self.rows,
                                     self.checkpoints, self.projections)

    def test_actual_parent_and_opposite_endpoint_conflicts_cover_every_case(self):
        value = self.validate()
        self.assertEqual(value['cases'], 42)
        self.assertEqual(value['conflict_negatives'], 126)
        self.assertEqual(value['prepared_conflict_negatives'], 336)
        self.assertEqual(value['dependency_conflict_negatives'], 84)
        self.assertEqual(value['endpoint_dependencies'], 88)
        self.assertEqual(value['same_collection_cases'], 3)

    def test_missing_duplicate_foreign_or_non_string_endpoint_refuses(self):
        for change in ('missing', 'duplicate', 'foreign', 'boolean'):
            rows = deepcopy(self.rows)
            keys = rows[0]['checks']['cases'][0]['endpoint_dependency_keys']
            if change == 'missing':
                keys.pop()
            elif change == 'duplicate':
                keys.append(keys[0])
            elif change == 'foreign':
                keys[-1] = 'Main/p999999'
            else:
                keys[-1] = True
            with self.subTest(change=change), self.assertRaises(ValueError):
                self.validate(rows)

    def test_omitted_parent_node_port_or_foreign_dependency_refuses(self):
        for change in ('scope', 'node', 'pin', 'duplicate', 'foreign', 'boolean'):
            rows = deepcopy(self.rows)
            keys = rows[0]['checks']['cases'][0]['dependency_bindings']
            if change in ('scope', 'node', 'pin'):
                suffix = {'scope': '|children', 'node': '|ports', 'pin': '|pins'}[change]
                keys[:] = [key for key in keys if not key.endswith(suffix)]
            elif change == 'duplicate':
                keys.append(keys[0])
            elif change == 'foreign':
                keys.append('Main/n999999|ports')
            else:
                keys.append(True)
            with self.subTest(change=change), self.assertRaises(ValueError):
                self.validate(rows)

    def test_native_and_python_dependency_roster_order_is_not_semantic(self):
        rows = deepcopy(self.rows)
        for row in rows:
            for case in row['checks']['cases']:
                case['endpoint_dependency_keys'].reverse()
                case['dependency_bindings'].reverse()
        self.assertEqual(self.validate(rows), self.validate())

    def test_preparation_and_post_preparation_counts_cannot_hide_missing_guards(self):
        for field, value in (('prepared_conflict_negatives', 4), ('prepared_conflict_negatives', True),
                             ('dependency_conflict_negatives', None), ('dependency_conflict_negatives', 1)):
            rows = deepcopy(self.rows)
            rows[0]['checks']['cases'][0][field] = value
            with self.subTest(field=field, value=value), self.assertRaises(ValueError):
                self.validate(rows)


class NativePrivateCurrentEvidenceTests(unittest.TestCase):
    def setUp(self):
        root = Path(__file__).resolve().parents[1] / 'analysis/bde-experiments/2026-10-03/bde-native-private-current-06'
        raw = json.loads((root / 'raw-0.json').read_text(encoding='utf-8'))
        self.observed = observation(raw, 'observed')
        self.rows = raw['native_graph_clone_observed']
        self.checkpoints = raw['native_binding_checkpoints_observed']
        self.projections = raw['detached_projection_observed']

    def validate(self, rows=None):
        return compare_graph_splices(self.observed, rows if rows is not None else self.rows,
                                     self.checkpoints, self.projections)

    def test_recorded_current_partial_recovery_and_index_guards(self):
        value = self.validate()
        self.assertEqual(value['partial_fault_cases'], 126)
        self.assertEqual(value['recovery_conflict_negatives'], 126)
        self.assertEqual(value['execution_replay_negatives'], 252)
        self.assertEqual(value['prepare_current_conflict_negatives'], 126)
        self.assertEqual(value['primitive_duplicate_negatives'], 126)
        self.assertEqual(value['primitive_skip_negatives'], 84)
        self.assertEqual(value['fault_execution_primitives'], 736)
        self.assertGreater(value['fault_recovery_cells'], 126)

    def test_missing_duplicate_or_reordered_fault_position_cannot_pass(self):
        for change in ('missing', 'duplicate', 'reordered'):
            rows = deepcopy(self.rows)
            faults = rows[0]['checks']['cases'][0]['fault_cases']
            if change == 'missing':
                faults.pop()
            elif change == 'duplicate':
                faults[-1] = deepcopy(faults[0])
            else:
                faults.reverse()
            with self.subTest(change=change), self.assertRaises(ValueError):
                self.validate(rows)

    def test_incomplete_material_false_state_and_durable_claim_refuse(self):
        for field, value in (('state', 'applied'), ('native_material_retained', False),
                ('actual_observation_complete', False), ('current_checkpoint_objects', 0),
                ('current_checkpoint_fields', True), ('durable_current_wal', True),
                ('write_authorized', True), ('model_setters_called', 1)):
            rows = deepcopy(self.rows)
            rows[0]['checks']['cases'][0]['fault_cases'][0][field] = value
            with self.subTest(field=field, value=value), self.assertRaises(ValueError):
                self.validate(rows)

    def test_actual_partial_diff_and_recovery_counts_cannot_be_forged(self):
        for field, value in (('actual_field_changes', True), ('actual_collection_changes', -1),
                ('recovery_count', 0), ('executed', 0), ('primitive_count', 2), ('recovered', 1),
                ('fault_after', 0), ('desired_result_verified', True)):
            rows = deepcopy(self.rows)
            rows[0]['checks']['cases'][0]['fault_cases'][0][field] = value
            with self.subTest(field=field, value=value), self.assertRaises(ValueError):
                self.validate(rows)
        rows = deepcopy(self.rows)
        rows[0]['checks']['cases'][0]['fault_cases'][-1]['desired_result_verified'] = False
        with self.assertRaises(ValueError):
            self.validate(rows)

    def test_independent_post_fault_change_and_full_restoration_are_required(self):
        for field in ('independent_post_fault_field_preserved', 'complete_current_refs_restored'):
            rows = deepcopy(self.rows)
            rows[0]['checks']['cases'][0]['fault_cases'][0][field] = False
            with self.subTest(field=field), self.assertRaises(ValueError):
                self.validate(rows)
        for field in ('current_projection', 'current_restored_projection'):
            rows = deepcopy(self.rows)
            rows[0]['checks']['cases'][0][field][0]['nodes'][0]['size'][0] += 1
            with self.subTest(field=field), self.assertRaises(ValueError):
                self.validate(rows)

    def test_prepared_current_duplicate_skip_and_terminal_replay_guards_are_required(self):
        for field, value in (('prepare_current_conflict_negatives', 0), ('primitive_duplicate_negatives', False),
                ('primitive_skip_negatives', 0), ('replay_negatives', 1), ('recovery_conflict_negatives', 0)):
            rows = deepcopy(self.rows)
            rows[0]['checks']['cases'][0]['fault_cases'][0][field] = value
            with self.subTest(field=field, value=value), self.assertRaises(ValueError):
                self.validate(rows)

    def test_primitive_and_recovery_cell_total_units_remain_distinct(self):
        for field, value in (('fault_execution_primitives', 0), ('fault_recovery_cells', True)):
            rows = deepcopy(self.rows)
            rows[0]['checks']['cases'][0][field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                self.validate(rows)


if __name__ == '__main__':
    unittest.main()
