"""Exact history proof rejection; no claims about live native execution."""
from copy import deepcopy
import unittest

from bd_connect_history import preparation, observed
from bd_edit_journal import JournalError
from test_bd_connect_material import order
from test_bd_topology_inverse import graph, remove

TOKEN = 'edit_' + 'a' * 64
RESULT = 'edit_' + 'b' * 64


def prepared(state='applied'):
    applied, original = graph(), remove(graph(), {'e2'})
    current, expected = (applied, original) if state == 'applied' else (original, applied)
    parent_a, parent_b = order(['o3', 'o4', 'o5']), order(['o3', 'o4'])
    if state != 'applied':
        parent_a, parent_b = parent_b, parent_a
    def drawn(parent):
        d = deepcopy(parent); d.update(profile='native_drawing_order_v1', numbers=list(range(1, len(d['members']) + 1)))
        return d
    return dict(profile='native_connect_exact_preparation_v1', native_token=TOKEN, owner_change_id=TOKEN,
        result_change_id=RESULT, state=state, sequence=1, before=current, expected=expected,
        signature=TOKEN + '/c1', parent_before=parent_a, parent_expected=parent_b,
        drawing_before=drawn(parent_a), drawing_expected=drawn(parent_b),
        graphical_current=dict(profile='native_graphical_current_v1', complete=True,
            objects=[dict(ref='v1', **{'class': 'OrderedCollection'}, kind='collection', value=[])]),
        created_original_retained=True, alias_reserved=True, model_setters_called=0,
        store_called=False, write_authorized=False, local_merge_enabled=False)


def actual(p):
    return dict(profile='native_connect_exact_actual_v1', observation=deepcopy(p['expected']),
        execution=dict(profile='native_connect_exact_execution_v1', native_token=TOKEN,
            head_change_id=TOKEN, result_change_id=RESULT, sequence=2, before_state=p['state'],
            after_state='reverted' if p['state'] == 'applied' else 'applied',
            model_operations=1, drawing_assignments=len(p['drawing_expected']['members']), store_started=True,
            store_completed=True, phase='terminal', native_primitives=0, source_primitives=0, terminal_verified=True),
        parent_before=deepcopy(p['parent_before']), parent_after=deepcopy(p['parent_expected']),
        drawing_before=deepcopy(p['drawing_before']), drawing_after=deepcopy(p['drawing_expected']),
        graphical_current=deepcopy(p['graphical_current']), graphical_actual=dict(profile='native_graphical_diff_v1',
            complete=True, new_objects=[], changes=[], after_object_count=1),
        created_original_retained=True, alias_reserved=True, native_target_verified=True, source_target_verified=True)


class ConnectHistoryTests(unittest.TestCase):
    def validate(self, p):
        return preparation(p, token=TOKEN, owner=TOKEN, state=p['state'], result_id=RESULT, sequence=1,
            current=p['before'], expected=p['expected'])

    def test_both_directions_accept_only_full_exact_targets(self):
        for state in ('applied', 'reverted'):
            p = prepared(state); frozen = deepcopy(p)
            self.assertEqual(self.validate(p), p)
            self.assertEqual(observed(actual(p), p)['observation'], p['expected'])
            self.assertEqual(p, frozen)

    def test_unrelated_field_edit_is_not_owned_by_a_connect_inverse(self):
        p = prepared(); p['expected']['entries'][2]['size'] = [10, 10]
        with self.assertRaises(JournalError): self.validate(p)

    def test_wrong_endpoint_or_missing_owner_is_refused(self):
        for endpoint in ('p999', 'n2'):
            p = prepared()
            next(row for row in p['before']['entries'] if row['ref'] == 'e2')['target'] = endpoint
            with self.assertRaises(JournalError): self.validate(p)

    def test_scoped_counts_and_second_edge_removal_do_not_pass_as_full(self):
        for field, value in (('targets', ['e2']), ('lookup_edges', 99)):
            p = prepared(); p['expected'][field] = value
            with self.assertRaises(JournalError): self.validate(p)
        p = prepared(); p['expected'] = remove(p['expected'], {'e1'})
        with self.assertRaises(JournalError): self.validate(p)

    def test_order_and_owned_edge_disagreement_is_refused(self):
        for key, members in (('parent_expected', ['o4', 'o3']), ('drawing_expected', ['o3', 'o5'])):
            p = prepared(); p[key]['members'] = members
            with self.assertRaises(JournalError): self.validate(p)

    def test_preparation_cannot_grant_write_or_local_merge(self):
        for key, value in (('write_authorized', True), ('local_merge_enabled', True),
                ('model_setters_called', True), ('sequence', True), ('signature', 'arbitrary')):
            p = prepared(); p[key] = value
            with self.assertRaises(JournalError): self.validate(p)

    def test_actual_lost_store_or_wrong_owner_remains_unconfirmed(self):
        p = self.validate(prepared())
        a = actual(p); a['profile'] = 'unverified'
        with self.assertRaises(JournalError): observed(a, p)
        for key, value in (('store_completed', False), ('terminal_verified', False), ('sequence', True),
                ('result_change_id', TOKEN), ('after_state', 'applied'), ('model_operations', 0)):
            a = actual(p); a['execution'][key] = value
            with self.assertRaises(JournalError): observed(a, p)

    def test_actual_unrelated_field_or_order_drift_is_refused(self):
        p = self.validate(prepared())
        a = actual(p); a['observation']['entries'][2]['size'] = [11, 11]
        with self.assertRaises(JournalError): observed(a, p)
        a = actual(p); a['parent_after']['members'].reverse()
        with self.assertRaises(JournalError): observed(a, p)

    def test_graphical_reference_rebinding_is_refused(self):
        p = self.validate(prepared()); a = actual(p)
        a['graphical_current']['objects'][0]['ref'] = 'v2'
        with self.assertRaises(JournalError): observed(a, p)


if __name__ == '__main__':
    unittest.main()
