"""Value/journal regressions only; these are not live native/source acceptance."""
from contextlib import nullcontext
import tempfile
import unittest

from bd_edit_journal import clone, fingerprint, NativePreconditionConflict
from bd_field_inverse import plan, summary, expected_from_preparation
from bd_structure_journal import StructureJournal
from test_bd_managed_inverse import ManagedAdapter, field_proof


def graph():
    return {'diagram': 'Main', 'diagram_kind': 'block_diagram', 'generation': 1,
        'targets': [], 'lookup_nodes': 2, 'lookup_edges': 0,
        'entries': [
            {'ref': 'n1', 'kind': 'node', 'native_class': 'Literal', 'pins': [],
             'literal': '1', 'comment': None, 'position': [0, 0], 'size': [9, 9]},
            {'ref': 'n2', 'kind': 'node', 'native_class': 'Comment', 'pins': [],
             'comment': 'other', 'position': [90, 90]}]}


class FieldPlanTests(unittest.TestCase):
    def setUp(self):
        self.before = graph(); self.after = clone(self.before)
        self.after['entries'][0].update(literal='12345', size=[30, 9])
        self.current = clone(self.after)

    def planned(self, operation='set_literal'):
        return plan(self.before, self.after, self.current, operation=operation)

    def test_same_row_and_other_row_changes_survive_actual_geometry_inverse(self):
        self.current['entries'][0]['comment'] = 'later'
        self.current['entries'][1]['position'] = [100, 200]
        expected = clone(self.current); expected['entries'][0].update(literal='1', size=[9, 9])
        inputs = clone([self.before, self.after, self.current])
        result = self.planned()
        self.assertTrue(result['compatible']); self.assertEqual(result['expected'], expected)
        self.assertEqual(result['cells'], [{'ref': 'n1', 'field': 'literal'}, {'ref': 'n1', 'field': 'size'}])
        self.assertEqual([self.before, self.after, self.current], inputs)

    def test_overlapping_value_or_store_collateral_is_a_conflict(self):
        for field, value in [('literal', '99'), ('size', [99, 9])]:
            with self.subTest(field=field):
                self.current = clone(self.after); self.current['entries'][0][field] = value
                result = self.planned()
                self.assertFalse(result['compatible']); self.assertIsNone(result['expected'])
                self.assertIn({'code': 'TOUCHED_FIELD_CONFLICT', 'ref': 'n1', 'field': field}, result['conflicts'])

    def test_independent_row_addition_or_removal_and_lookup_counts_survive(self):
        self.current['entries'].pop(); self.current['lookup_nodes'] = 1
        result = self.planned(); self.assertTrue(result['compatible'])
        self.assertEqual(result['expected']['lookup_nodes'], 1)
        self.assertEqual(len(result['expected']['entries']), 1)
        self.current = clone(self.after)
        self.current['entries'].append({'ref': 'n3', 'kind': 'node', 'native_class': 'Comment', 'pins': [], 'comment': 'new'})
        self.current['lookup_nodes'] = 3
        result = self.planned(); self.assertTrue(result['compatible'])
        self.assertEqual(result['expected']['entries'][2], self.current['entries'][2])
        self.assertEqual(result['expected']['lookup_nodes'], 3)

    def test_touched_row_or_identity_or_scope_change_refuses(self):
        variants = []
        changed = clone(self.current); changed['entries'].pop(0); variants.append(changed)
        changed = clone(self.current); changed['entries'][0]['native_class'] = 'Different'; variants.append(changed)
        changed = clone(self.current); changed['generation'] = 2; variants.append(changed)
        for current in variants:
            with self.subTest(current=current):
                self.assertFalse(plan(self.before,self.after,current,operation='set_literal')['compatible'])

    def test_field_missing_null_and_boolean_are_distinct(self):
        self.before['entries'][0].pop('comment'); self.after['entries'][0]['comment'] = None
        self.current = clone(self.after)
        self.assertNotIn('comment', self.planned()['expected']['entries'][0])
        self.current['entries'][0]['comment'] = False
        self.assertFalse(self.planned()['compatible'])
        self.before = graph(); self.after = clone(self.before)
        self.before['entries'][0]['comment'] = False; self.after['entries'][0]['comment'] = True
        self.current = clone(self.after); self.current['entries'][0]['comment'] = 1
        self.assertFalse(self.planned()['compatible'])

    def test_every_field_operation_uses_actual_patch_and_own_inverse_history(self):
        for operation, field, value in [('set_literal','literal','2'), ('set_comment','comment','x'),
                ('move_node','position',[4,5]), ('set_edge_route','route',[[1,2],[3,4]])]:
            with self.subTest(operation=operation):
                before = graph(); after = clone(before); after['entries'][0][field] = value
                current = clone(after); current['entries'][1]['comment'] = 'keep'
                first = plan(before,after,current,operation=operation)
                expected = clone(before); expected['entries'][1]['comment'] = 'keep'
                self.assertEqual(first['expected'],expected)
                later = clone(expected); later['entries'][0]['unrelated'] = 'keep too'
                redo = plan(current,expected,later,operation=operation)
                wanted = clone(current); wanted['entries'][0]['unrelated'] = 'keep too'
                self.assertEqual(redo['expected'],wanted)

    def test_changed_target_pin_dependency_refuses_even_when_field_matches(self):
        for graph_value in [self.before,self.after,self.current]:
            graph_value['entries'][0]['pins'] = ['p1']
            graph_value['entries'].append({'ref':'p1','kind':'pin','native_class':'Pin',
                'owner':'n1','input':False,'output':True})
        self.current['entries'][-1]['output'] = False
        result = self.planned(); self.assertFalse(result['compatible'])
        self.assertTrue(any(row['code']=='DEPENDENCY_CHANGED' for row in result['conflicts']))

    def test_original_topology_changes_and_nonfield_operations_cannot_use_adapter(self):
        with self.assertRaises(ValueError): self.planned('delete_node')
        self.after['entries'].pop()
        with self.assertRaises(ValueError): self.planned()

    def test_durable_expectation_is_independently_recomputed(self):
        self.current['entries'][1]['comment'] = 'later'
        value = self.planned()
        preparation = {'before': self.current, 'inverse_expected': value['expected'],
                       'inverse_analysis': summary(value,self.current)}
        self.assertEqual(expected_from_preparation(self.before,self.after,preparation,
            operation='set_literal'),value['expected'])
        preparation['inverse_expected']['entries'][1]['comment'] = 'overwritten'
        with self.assertRaises(ValueError):
            expected_from_preparation(self.before,self.after,preparation,operation='set_literal')


class LocalManagedAdapter(ManagedAdapter):
    local_field_inverse_capable = True

    def __init__(self, log):
        super().__init__(log)
        self.bad_expected = self.race = False

    def validate_revert(self, domain, token):
        if self.state['entries'][0]['literal'] != '2':
            raise NativePreconditionConflict('Touched literal differs')
        self.inverse_expected = clone(self.state); self.inverse_expected['entries'][0]['literal'] = '1'
        if self.bad_expected: self.inverse_expected['entries'][0]['literal'] = '9'
        return clone(self.state)

    def revert(self, domain, token, *, expected_operation=None):
        self.validate_revert(domain,token)
        self.field_sequence += 1; self.field_execution = field_proof(token,'undo',self.field_sequence)
        self.state['entries'][0]['literal'] = '1'; self.native_state = 'reverted'; self.calls += 1
        return clone(self.state)

    def validate_managed_inverse(self, domain, token, head, state, result):
        value = super().validate_managed_inverse(domain,token,head,state,result)
        if value['entries'][0]['literal'] != ('1' if state=='reverted' else '2'):
            raise NativePreconditionConflict('Touched literal differs')
        self.inverse_expected = clone(value)
        self.inverse_expected['entries'][0]['literal'] = '2' if state=='reverted' else '1'
        if self.bad_expected: self.inverse_expected['entries'][0]['literal'] = '9'
        if self.race: self.state['entries'][0]['literal'] = '99'
        return value

    def managed_inverse(self, domain, token, head, state, result):
        self.validate_managed_inverse(domain,token,head,state,result)
        if self.state['entries'][0]['literal'] != ('1' if state=='reverted' else '2'):
            raise NativePreconditionConflict('Touched literal changed before setter')
        self.managed_calls += 1; self.field_sequence += 1
        self.field_execution = field_proof(token,'redo' if state=='reverted' else 'undo',self.field_sequence)
        self.state['entries'][0]['literal'] = '2' if state=='reverted' else '1'
        self.native_state = 'applied' if state=='reverted' else 'reverted'
        return clone(self.state)


class LocalJournalTests(unittest.TestCase):
    def setUp(self):
        temp=tempfile.TemporaryDirectory(); self.addCleanup(temp.cleanup)
        self.log=StructureJournal(temp.name); self.adapter=LocalManagedAdapter(self.log)
        request={'domain':{'session':'s','database':'db','oid':'o','process_epoch':'epoch'},
            'request_id':'edit','component':r'BDE_Tool_Experiments\Trial_test','diagram':'Main',
            'operation':'set_literal','arguments':[['n1'],'n1','2'],'expect':fingerprint(self.adapter.state)}
        self.edit=self.log.execute(request,self.adapter,nullcontext)

    def undo(self):
        return self.log.revert(self.edit['change_id'],'undo',self.adapter,nullcontext)

    def test_first_inverse_and_redo_keep_same_row_later_edits_and_actual_diff(self):
        self.adapter.state['entries'][0]['comment']='first later change'
        undo=self.undo(); self.assertEqual(undo['status'],'verified_local')
        self.adapter.state['entries'][0]['position']=[30,40]
        redo=self.log.revert(undo['change_id'],'redo',self.adapter,nullcontext)
        self.assertEqual(redo['status'],'verified_local')
        final=self.log.revert(redo['change_id'],'final',self.adapter,nullcontext)
        self.assertEqual(final['status'],'verified_local')
        self.assertEqual(self.adapter.state['entries'][0]['literal'],'1')
        self.assertEqual(self.adapter.state['entries'][0]['comment'],'first later change')
        self.assertEqual(self.adapter.state['entries'][0]['position'],[30,40])
        for change in [undo,redo,final]:
            events=self.log.read(change['change_id'])
            prepared=next(e['payload'] for e in events if e['kind']=='prepared')
            self.assertEqual(prepared['inverse_analysis']['profile'],'ordinary_field_inverse_v1')
        self.assertEqual(len(self.log.diff(redo['change_id'])['differences']),1)

    def test_python_native_expected_disagreement_rejects_before_first_setter(self):
        self.adapter.bad_expected=True; result=self.undo()
        self.assertEqual(result['status'],'conflict'); self.assertEqual(self.adapter.calls,1)

    def test_managed_expected_disagreement_and_execution_race_refuse(self):
        undo=self.undo(); self.adapter.bad_expected=True
        result=self.log.revert(undo['change_id'],'bad',self.adapter,nullcontext)
        self.assertEqual(result['status'],'conflict'); self.assertEqual(self.adapter.managed_calls,0)
        self.adapter.bad_expected=False; self.adapter.race=True
        result=self.log.revert(undo['change_id'],'race',self.adapter,nullcontext)
        self.assertEqual(result['status'],'conflict'); self.assertEqual(self.adapter.managed_calls,0)


if __name__=='__main__': unittest.main()
