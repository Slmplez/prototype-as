"""Native binding validator refusals; synthetic inputs are not live inverse proof."""
from copy import deepcopy
import unittest

from bd_class_native_bindings import compare_bindings, compare_checkpoints, compare_copy_merges, compare_bound_plans


class NativeBindingsTests(unittest.TestCase):
    def setUp(self):
        entries = [
            dict(ref='n1', kind='node', native_class='Node', pins=['p1', 'p2']),
            dict(ref='p1', kind='pin', owner='n1', input=False, output=True),
            dict(ref='p2', kind='pin', owner='n1', input=True, output=False),
            dict(ref='e4', kind='edge', native_class='Edge', source='p1', target='p2')]
        self.observed = dict(owners=[dict(oid='owner', component='Trial',
            scopes={'Main': dict(generation=7, entries=entries)})])
        rows = deepcopy(entries)
        for row, native_id, index, manager in zip(rows, [1, 1, 2, None], [1, 1, 2, 2],
                                                ['parent', 'port', 'port', 'parent']):
            row.update(native_id=native_id, index=index, collection_size=2, manager=manager,
                       manager_class='Manager', native_membership_matches=True,
                       collection='interfaceGOs' if row['kind'] == 'pin' else 'children')
            row.setdefault('native_class', 'Pin')
            if row['kind'] == 'pin':
                row['native_owner_matches'] = True
            elif row['kind'] == 'edge':
                row['native_endpoint_matches'] = True
        current = dict(profile='class_graph_bindings_v1', mode='registry', oid='owner',
            generation=7, scopes=[dict(diagram='Main', entries=rows)], registry_unchanged=True,
            write_authorized=False, native_merge_executor_available=False)
        refusal = 'BDE_CLASS_BINDINGS_ERROR: BDE_EDGE_BINDING_UNAVAILABLE: exact native edge absent from registry'
        self.bindings = [dict(oid='owner', component='Trial', current=current,
                             empty_ids_refusal=refusal, fresh_refusal=refusal)]

    def compare(self):
        return compare_bindings(self.observed, self.bindings)

    def row(self, index):
        return self.bindings[0]['current']['scopes'][0]['entries'][index]

    def test_complete_exact_occurrences_and_required_native_negative(self):
        original = deepcopy((self.observed, self.bindings))
        self.assertEqual(self.compare(), dict(owners=1, scopes=1, nodes=1, pins=2, edges=1,
            empty_identity_refusals=1, fresh_identity_refusals=1))
        self.assertEqual((self.observed, self.bindings), original)

    def test_generation_boolean_is_not_an_integer_and_changed_generation_refuses(self):
        for generation in (8, True, 7.0):
            self.bindings[0]['current']['generation'] = generation
            with self.assertRaises(ValueError):
                self.compare()

    def test_unverified_native_membership_owner_or_endpoint_refuses(self):
        for index, field in ((0, 'native_membership_matches'), (1, 'native_owner_matches'),
                             (3, 'native_endpoint_matches')):
            with self.subTest(field=field):
                self.row(index)[field] = 1
                with self.assertRaises(ValueError):
                    self.compare()
                self.row(index)[field] = True

    def test_binding_tokens_do_not_authorize_writes(self):
        for field in ('write_authorized', 'native_merge_executor_available'):
            self.bindings[0]['current'][field] = True
            with self.assertRaises(ValueError):
                self.compare()
            self.bindings[0]['current'][field] = False

    def test_parent_collection_and_order_ambiguity_refuse(self):
        baseline = deepcopy(self.bindings)
        for field, value in (('index', True), ('index', 0), ('index', 3),
                             ('collection', 'children'), ('collection_size', 3), ('index', 2)):
            with self.subTest(field=field, value=value):
                self.bindings = deepcopy(baseline)
                self.row(1)[field] = value
                with self.assertRaises(ValueError):
                    self.compare()

    def test_changed_ref_native_class_owner_pins_and_endpoints_refuse(self):
        baseline = deepcopy(self.bindings)
        for index, field, value in ((0, 'native_class', 'Other'), (0, 'ref', 'n2'),
                                   (0, 'pins', ['p2', 'p1']), (1, 'owner', 'n2'),
                                   (3, 'source', 'p2'), (1, 'native_id', 3)):
            with self.subTest(field=field):
                self.bindings = deepcopy(baseline)
                self.row(index)[field] = value
                with self.assertRaises(ValueError):
                    self.compare()

    def test_missing_or_duplicate_scope_owner_occurrence_refuses(self):
        baseline = deepcopy(self.bindings)
        for mutation in ('owner', 'scope', 'entry', 'missing'):
            self.bindings = deepcopy(baseline)
            if mutation == 'owner':
                self.bindings.append(deepcopy(self.bindings[0]))
            elif mutation == 'scope':
                self.bindings[0]['current']['scopes'] *= 2
            elif mutation == 'entry':
                self.bindings[0]['current']['scopes'][0]['entries'].append(deepcopy(self.row(0)))
            else:
                self.bindings[0]['current']['scopes'][0]['entries'].pop()
            with self.assertRaises(ValueError):
                self.compare()

    def test_empty_map_never_falls_back_to_endpoint_route_or_new_tokens(self):
        for refusal in ('', 'BDE_CLASS_BINDINGS_ERROR: other error', 'ValueError'):
            self.bindings[0]['empty_ids_refusal'] = refusal
            with self.assertRaises(ValueError):
                self.compare()

    def test_unexpected_fresh_graph_failure_is_preserved_as_failure(self):
        self.bindings[0]['fresh_refusal'] = 'BDE_CLASS_BINDINGS_ERROR: Current specification binding changed'
        with self.assertRaises(ValueError):
            self.compare()

    def test_stable_id_only_empty_map_does_not_require_a_false_negative(self):
        self.row(3)['native_id'] = 4
        current = self.bindings[0]['current']
        del self.bindings[0]['empty_ids_refusal']
        del self.bindings[0]['fresh_refusal']
        self.bindings[0]['empty_ids'] = {**deepcopy(current), 'mode': 'empty_ids'}
        self.bindings[0]['fresh'] = {**deepcopy(current), 'mode': 'fresh'}
        result = self.compare()
        self.assertEqual(result['empty_identity_refusals'], 0)
        self.assertEqual(result['fresh_identity_refusals'], 0)

    def test_native_negative_edge_id_requires_exact_registry_refusal(self):
        self.row(3)['native_id'] = -1
        self.assertEqual(self.compare()['empty_identity_refusals'], 1)
        self.row(3)['native_id'] = False
        with self.assertRaises(ValueError):
            self.compare()

    def test_nonnumeric_ephemeral_ref_is_not_a_native_identity(self):
        for value in (self.row(3), self.observed['owners'][0]['scopes']['Main']['entries'][3]):
            value['ref'] = 'edge guessed by endpoints'
        with self.assertRaises(ValueError):
            self.compare()

    def checkpoints(self):
        return [dict(oid='owner', component='Trial', checks=dict(profile='native_collections_v1',
            scope_count=1, object_count=4, manager_count=2, collection_count=2, member_count=4,
            keyed_profile='native_keyed_collections_v1', keyed_checkpoint_matches=True,
            keyed_collection_count=2, keyed_member_count=4, keyed_port_count=0,
            keyed_hidden_pin_count=0, keyed_negative_count=11,
            original_membership_matches=True, current_registry_matches=True, wrong_order_refused=True,
            wrong_manager_link_refused=True, missing_collection_refused=True, wrong_scoped_object_refused=True, model_setters_called=0,
            write_authorized=False, native_merge_executor_available=False))]

    def test_native_checkpoint_exact_complete_summary(self):
        self.assertEqual(compare_checkpoints(self.observed, self.checkpoints()),
            dict(owners=1, scopes=1, objects=4, managers=2, collections=2, members=4,
                 ports=0, hidden_pins=0, native_negatives=4, keyed_negatives=11))

    def test_hidden_native_members_are_counted_beyond_public_occurrences(self):
        rows = self.checkpoints()
        rows[0]['checks'].update(member_count=9, keyed_member_count=9,
                                keyed_port_count=2, keyed_hidden_pin_count=3)
        result = compare_checkpoints(self.observed, rows)
        self.assertEqual((result['members'], result['ports'], result['hidden_pins']), (9, 2, 3))

    def test_keyed_identity_roster_coverage_and_untyped_guards_refuse(self):
        for field, value in (('keyed_profile', 'legacy'), ('keyed_checkpoint_matches', 1),
                ('keyed_collection_count', 1), ('keyed_member_count', True),
                ('keyed_negative_count', 10), ('keyed_negative_count', True),
                ('keyed_port_count', True), ('keyed_hidden_pin_count', -1), ('keyed_hidden_pin_count', 1)):
            rows = self.checkpoints()
            rows[0]['checks'][field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                compare_checkpoints(self.observed, rows)

    def test_native_checkpoint_missing_duplicate_or_changed_owner_refuses(self):
        rows = self.checkpoints()
        for malformed in ([], rows * 2, [{**rows[0], 'component': 'Other'}]):
            with self.assertRaises(ValueError):
                compare_checkpoints(self.observed, malformed)

    def test_native_checkpoint_counts_types_coverage_and_authority_refuse(self):
        for key, value in (('scope_count', True), ('object_count', 3), ('manager_count', 3),
                           ('collection_count', 5), ('member_count', 3), ('member_count', True),
                           ('model_setters_called', False), ('model_setters_called', 1),
                           ('write_authorized', True), ('native_merge_executor_available', True)):
            rows = self.checkpoints()
            rows[0]['checks'][key] = value
            with self.subTest(key=key), self.assertRaises(ValueError):
                compare_checkpoints(self.observed, rows)

    def test_native_checkpoint_unverified_or_untyped_checks_refuse(self):
        for key in ('original_membership_matches', 'current_registry_matches', 'wrong_order_refused',
                    'wrong_manager_link_refused', 'missing_collection_refused', 'wrong_scoped_object_refused'):
            for value in (False, 1):
                rows = self.checkpoints()
                rows[0]['checks'][key] = value
                with self.subTest(key=key, value=value), self.assertRaises(ValueError):
                    compare_checkpoints(self.observed, rows)

    def copy_merges(self):
        names = ('restore_preserve_prefix', 'restore_preserve_append', 'ambiguous_gap',
            'undo_create_preserve_prefix', 'preserve_independent_delete', 'empty_parent_restore',
            'empty_parent_ambiguous', 'identity_collision', 'created_member_missing',
            'current_reordered', 'edit_reordered', 'duplicate_member')
        return [dict(oid='owner', component='Trial', checks=dict(profile='native_collection_copy_merge_v1',
            case_count=12, scope_parent_count=1, collection_count=2, member_count=4,
            current_registry_matches=True, wrong_scope_parent_refused=True, write_authorized=False,
            native_merge_executor_available=False, model_setters_called=0,
            cases=[dict(name=name, passed=True, splices=0) for name in names]))]

    def test_native_copy_merge_exact_roster_and_parent_summary(self):
        self.assertEqual(compare_copy_merges(self.observed, self.copy_merges()),
            dict(owners=1, scope_parents=1, cases=12, model_setters_called=0))

    def test_native_copy_merge_missing_duplicate_changed_or_unauthorized_refuses(self):
        baseline = self.copy_merges()
        for field, value in (('case_count', True), ('scope_parent_count', True), ('scope_parent_count', 2),
                ('model_setters_called', False), ('model_setters_called', 1), ('write_authorized', True),
                ('native_merge_executor_available', True), ('current_registry_matches', 1),
                ('wrong_scope_parent_refused', False), ('collection_count', 0)):
            rows = deepcopy(baseline)
            rows[0]['checks'][field] = value
            with self.subTest(field=field, value=value), self.assertRaises(ValueError):
                compare_copy_merges(self.observed, rows)
        for rows in ([], baseline * 2, [{**baseline[0], 'component': 'Other'}]):
            with self.assertRaises(ValueError):
                compare_copy_merges(self.observed, rows)

    def test_native_copy_merge_incomplete_or_untyped_cases_refuse(self):
        for field, value in (('name', 'unknown'), ('passed', 1), ('splices', True), ('splices', -1)):
            rows = self.copy_merges()
            rows[0]['checks']['cases'][0][field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                compare_copy_merges(self.observed, rows)
        rows = self.copy_merges()
        rows[0]['checks']['cases'][1] = deepcopy(rows[0]['checks']['cases'][0])
        with self.assertRaises(ValueError):
            compare_copy_merges(self.observed, rows)

    def bound_plans(self):
        rows = self.copy_merges()
        rows[0]['checks']['keyed_plan'] = dict(profile='native_keyed_collection_plan_v1',
            verified_collections=2, splices=0, negative_count=6, current_native_members_preserved=True,
            actual_changed_checkpoint_tested=False, write_authorized=False, model_setters_called=0)
        return rows

    def test_complete_bound_current_plan_summary_has_no_write_claim(self):
        rows = self.bound_plans()
        original = deepcopy(rows)
        self.assertEqual(compare_bound_plans(self.observed, rows),
                         dict(owners=1, collections=2, splices=0, native_negatives=6))
        self.assertEqual(rows, original)

    def test_bound_plan_cannot_promote_noop_to_actual_inverse(self):
        for field, value in (('actual_changed_checkpoint_tested', True), ('actual_changed_checkpoint_tested', 0),
                ('current_native_members_preserved', 1), ('write_authorized', True),
                ('model_setters_called', False), ('model_setters_called', 1), ('splices', False),
                ('splices', 1), ('negative_count', 5), ('negative_count', True),
                ('verified_collections', 1), ('verified_collections', True), ('profile', 'legacy')):
            rows = self.bound_plans()
            rows[0]['checks']['keyed_plan'][field] = value
            with self.subTest(field=field), self.assertRaises(ValueError):
                compare_bound_plans(self.observed, rows)

    def test_bound_plan_requires_full_native_owner_roster(self):
        rows = self.bound_plans()
        for malformed in ([], rows * 2, [{**rows[0], 'component': 'Other'}]):
            with self.assertRaises(ValueError):
                compare_bound_plans(self.observed, malformed)


if __name__ == '__main__':
    unittest.main()
