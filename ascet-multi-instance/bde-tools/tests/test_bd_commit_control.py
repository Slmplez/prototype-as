"""Synthetic controls for exact CTree observations, not live rollback acceptance."""
from copy import deepcopy
import unittest

from bd_commit_control import delta, validate_image, validate_summary, validate_summary_image


def identity(cls, ref):
    return dict({'class': cls}, ref=ref)


def atom(number):
    return dict({'class': 'SmallInteger'}, atom=str(number))


def leaf(ref, instance='c10', savepoints='c20'):
    return dict(binding=identity('CTreeLocalSearchInterface', ref),
                field_names=['ctInstance', 'ctIFIL', 'ctLockingIFIL', 'ctKey', 'ctSegments',
                             'uniqueIndex', 'fixedRecord', 'pathNames', 'ctTransaction',
                             'ctSavePoint', 'defName'],
                fields=dict(ctInstance=identity('CTGVCTreestdFputFget', instance),
                            ctIFIL=identity('CTSpaceCheckingIFil', 'c11'),
                            ctLockingIFIL=identity('CTIFil', 'c12'), ctTransaction=atom(1),
                            ctSavePoint=dict({'class': 'OrderedCollection'}, ref=savepoints,
                                             values=[atom(4), atom(7)]),
                            registerName='isolation/file.dat'))


def fixture():
    first, reference = leaf('c1'), leaf('c2', savepoints='c21')
    reference['binding']['class'] = 'CTreeLocalVariableAttributeInterface'
    return dict(profile='native_ctree_control_image_v1', component_oid='test-component', generation=7,
                interfaces=[deepcopy(first['binding'])], reference_interface=deepcopy(reference['binding']),
                leaves=[first, reference])


def summary(image):
    rows = image['leaves']
    return dict(profile='native_ctree_control_summary_v1', component_oid=image['component_oid'],
                generation=image['generation'], interfaces=len(image['interfaces']), leaves=len(rows),
                native_instance_groups=len({row['fields']['ctInstance']['ref'] for row in rows}),
                savepoint_tokens=sum(len(row['fields']['ctSavePoint']['values']) for row in rows),
                original_material_held=True, captured_all_interfaces=True, reference_interface_included=True,
                transaction_methods_called=0, native_transaction_semantics_verified=False,
                full_commit_resource_closure=False, write_authorized=False, inverse_authorized=False)


class CommitControlTests(unittest.TestCase):
    def test_reference_interface_has_separate_complete_coverage(self):
        image = fixture()
        self.assertEqual(list(validate_image(image)), ['c1', 'c2'])
        self.assertNotIn(image['reference_interface'], image['interfaces'])
        self.assertEqual(validate_summary_image(summary(image), image)['leaves'], 2)
        image['leaves'].pop()
        with self.assertRaisesRegex(ValueError, 'registry member'):
            validate_image(image)

    def test_shared_instance_is_only_an_identity_group(self):
        image = fixture()
        proof = validate_summary_image(summary(image), image)
        self.assertEqual(proof['native_instance_groups'], 1)
        self.assertFalse(proof['native_transaction_semantics_verified'])
        self.assertFalse(proof['inverse_authorized'])

    def test_registry_order_and_duplicates_are_preserved(self):
        before = fixture()
        before['interfaces'] += [deepcopy(before['reference_interface']), deepcopy(before['interfaces'][0])]
        after = deepcopy(before)
        after['interfaces'] = after['interfaces'][1:] + after['interfaces'][:1]
        changes = delta(before, after, 'since_preparation')
        self.assertEqual([row['field'] for row in changes], ['interfaces'])
        self.assertEqual(changes[0]['before'], before['interfaces'])
        self.assertEqual(validate_summary_image(summary(before), before)['interfaces'], 3)

    def test_savepoint_order_and_transaction_changes_are_exact(self):
        before, after = fixture(), fixture()
        after['leaves'][0]['fields']['ctSavePoint']['values'].reverse()
        after['leaves'][0]['fields']['ctTransaction'] = atom(2)
        changes = delta(before, after, 'query_read_effect')
        self.assertEqual([row['field'] for row in changes], ['ctSavePoint', 'ctTransaction'])
        self.assertEqual(changes[0]['before']['values'], [atom(4), atom(7)])
        self.assertEqual(changes[0]['after']['values'], [atom(7), atom(4)])
        self.assertEqual(changes[1]['before'], atom(1))
        self.assertEqual(changes[1]['after'], atom(2))
        self.assertTrue(all(row['category'] == 'query_read_effect' for row in changes))

    def test_new_observed_leaf_and_detached_original_remain_in_image(self):
        before, after = fixture(), fixture()
        added = leaf('c3', instance='c30', savepoints='c31')
        after['leaves'].append(added)
        after['interfaces'] = [deepcopy(added['binding'])]
        changes = delta(before, after, 'since_preparation')
        self.assertEqual([(row['locus'], row['field']) for row in changes],
                         [('ctree_control_registry', 'interfaces'), ('ctree_control/c3', '$observed_leaf')])
        self.assertIsNone(changes[1]['before'])
        self.assertEqual(changes[1]['after'], added)
        self.assertIn('c1', validate_image(after))

    def test_omitted_original_cannot_be_reported_as_deletion(self):
        before, after = fixture(), fixture()
        after['interfaces'] = [deepcopy(after['reference_interface'])]
        after['leaves'].pop(0)
        with self.assertRaisesRegex(ValueError, 'not deletion proof'):
            delta(before, after, 'since_preparation')

    def test_schema_change_reports_complete_rows_without_field_splicing(self):
        before, after = fixture(), fixture()
        after['leaves'][0]['field_names'].append('newNativeField')
        after['leaves'][0]['fields']['ctTransaction'] = atom(2)
        changes = delta(before, after, 'since_preparation')
        self.assertEqual([row['field'] for row in changes], ['$identity_schema'])
        self.assertEqual(changes[0]['before'], before['leaves'][0])
        self.assertEqual(changes[0]['after'], after['leaves'][0])

    def test_delta_has_fixed_registry_then_lexical_leaf_field_order(self):
        before = fixture()
        before['leaves'].append(leaf('c3', savepoints='c23'))
        after = deepcopy(before)
        after['interfaces'] = [deepcopy(after['leaves'][2]['binding'])]
        after['reference_interface'] = deepcopy(after['leaves'][0]['binding'])
        after['leaves'][0]['fields']['ctTransaction'] = atom(3)
        after['leaves'][0]['fields']['registerName'] = 'changed'
        after['leaves'][2]['fields']['ctTransaction'] = atom(5)
        self.assertEqual([(r['locus'], r['field']) for r in delta(before, after, 'since_preparation')], [
            ('ctree_control_registry', 'interfaces'), ('ctree_control_registry', 'reference_interface'),
            ('ctree_control/c1', 'ctTransaction'), ('ctree_control/c1', 'registerName'),
            ('ctree_control/c3', 'ctTransaction')])

    def test_duplicate_leaf_and_identity_class_conflicts_are_refused(self):
        edits = [lambda x: x['leaves'].append(deepcopy(x['leaves'][0])),
                 lambda x: x['leaves'][1]['fields']['ctInstance'].update({'class': 'OtherNativeClass'}),
                 lambda x: x['reference_interface'].update({'class': 'WrongLeafClass'}),
                 lambda x: x['leaves'][0]['fields']['ctIFIL'].update(ref='c20')]
        for edit in edits:
            with self.subTest(edit=edit):
                image = fixture()
                edit(image)
                with self.assertRaises(ValueError):
                    validate_image(image)

    def test_shared_savepoint_contents_must_agree(self):
        image = fixture()
        image['leaves'][1]['fields']['ctSavePoint']['ref'] = 'c20'
        self.assertEqual(validate_summary_image(summary(image), image)['savepoint_tokens'], 4)
        image['leaves'][1]['fields']['ctSavePoint']['values'].reverse()
        with self.assertRaisesRegex(ValueError, 'conflicting contents'):
            validate_image(image)

    def test_only_transaction_marker_allows_nil(self):
        image = fixture()
        image['leaves'][0]['fields']['ctTransaction'] = {'class': 'UndefinedObject', 'atom': 'nil'}
        validate_image(image)
        image['leaves'][0]['fields']['ctSavePoint']['values'].append({'class': 'UndefinedObject', 'atom': 'nil'})
        with self.assertRaisesRegex(ValueError, 'typed integer'):
            validate_image(image)

    def test_non_integer_and_ambiguous_atoms_are_refused(self):
        for bad in [atom(True), {'class': 'Float', 'atom': '1'}, atom('01'), atom('-0'), atom('1\n'),
                    {'class': 'UndefinedObject', 'atom': '0'}, {'class': 'SmallInteger', 'atom': 1}]:
            with self.subTest(bad=bad):
                image = fixture()
                image['leaves'][0]['fields']['ctTransaction'] = bad
                with self.assertRaises(ValueError):
                    validate_image(image)

    def test_partial_schema_unordered_roster_and_overflow_are_refused(self):
        edits = [lambda x: x['leaves'].reverse(),
                 lambda x: x['leaves'][0]['field_names'].remove('ctTransaction'),
                 lambda x: x['leaves'][0]['field_names'].append('ctInstance'),
                 lambda x: x['leaves'][0]['fields'].pop('registerName'),
                 lambda x: x.update(interfaces=x['interfaces'] * 65),
                 lambda x: x['leaves'][0]['fields']['ctSavePoint'].update(values=[atom(1)] * 129),
                 lambda x: x.update(generation=True)]
        for edit in edits:
            with self.subTest(edit=edit):
                image = fixture()
                edit(image)
                with self.assertRaises(ValueError):
                    validate_image(image)

    def test_complete_census_must_match_image(self):
        image = fixture()
        for key in ('interfaces', 'leaves', 'native_instance_groups', 'savepoint_tokens'):
            with self.subTest(key=key):
                proof = summary(image)
                proof[key] += 1
                with self.assertRaises(ValueError):
                    validate_summary_image(proof, image)

    def test_summary_cannot_grant_authority_or_lose_original_material(self):
        image = fixture()
        for key, value in [('native_transaction_semantics_verified', True), ('write_authorized', True),
                           ('inverse_authorized', True), ('full_commit_resource_closure', True),
                           ('original_material_held', False), ('captured_all_interfaces', False),
                           ('reference_interface_included', False), ('transaction_methods_called', 1),
                           ('transaction_methods_called', False), ('leaves', True), ('generation', True)]:
            with self.subTest(key=key, value=value):
                proof = summary(image)
                proof[key] = value
                with self.assertRaises(ValueError):
                    validate_summary(proof, image['component_oid'], image['generation'])

    def test_checked_summary_requires_bounded_actual_count(self):
        image = fixture()
        proof = dict(summary(image), actual_change_count=0)
        self.assertEqual(validate_summary_image(proof, image), proof)
        self.assertEqual(validate_summary(proof, image['component_oid'], 7, checked=True), proof)
        with self.assertRaises(ValueError):
            validate_summary(proof, image['component_oid'], 7)
        for count in (-1, 4097, True, 1.0):
            proof['actual_change_count'] = count
            with self.assertRaises(ValueError):
                validate_summary(proof, image['component_oid'], 7, checked=True)

    def test_rebound_generation_component_and_unfixed_category_are_refused(self):
        before = fixture()
        for key, value in [('generation', 8), ('component_oid', 'another-component')]:
            after = deepcopy(before)
            after[key] = value
            with self.assertRaisesRegex(ValueError, 'rebound'):
                delta(before, after, 'since_preparation')
        with self.assertRaisesRegex(ValueError, 'category'):
            delta(before, before, 'created')

    def test_returned_diff_is_detached_from_original_evidence(self):
        before, after = fixture(), fixture()
        after['leaves'][0]['fields']['ctSavePoint']['values'].reverse()
        originals = deepcopy((before, after))
        changes = delta(before, after, 'since_preparation')
        changes[0]['before']['values'].clear()
        changes[0]['after']['values'].clear()
        self.assertEqual((before, after), originals)
        self.assertEqual(delta(before, before, 'query_read_effect'), [])


if __name__ == '__main__':
    unittest.main()
