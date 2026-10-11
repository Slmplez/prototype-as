"""Dependency contracts against a fake adapter; no native acceptance claim."""
from contextlib import contextmanager, nullcontext
from pathlib import Path
import tempfile
import unittest
from unittest.mock import Mock, patch

import bd_service as service
import bd_flow_plan as flow
from bd_construction_sequence import adjust_counts, preflight_inverse, request_for, resolved_patch
from bd_edit_journal import clone, fingerprint, NativePreconditionConflict, JournalError
from bd_group_journal import GroupJournal
from bd_structure_journal import StructureJournal
from bd_structural_tools import select


class Adapter:
    def __init__(self, baseline):
        self.state = clone(baseline)
        self.tokens = {}
        self.calls = []
        self.guarded = []
        self.lose_reply = False
        self.next_id = 20

    def observe(self, domain, targets):
        return select(self.state, targets)

    def validate(self, domain, op, args):
        return self.observe(domain, args[0])

    def prepare(self, domain, token, op, args):
        self.tokens[token] = {'op': op, 'args': clone(args), 'before': self.observe(domain, args[0])}
        return self.observe(domain, args[0])

    def apply(self, token):
        self.scope_effects = []
        record = self.tokens[token]
        op, args = record['op'], record['args']
        self.calls.append(op)
        added = []
        if op == 'create_block':
            kind, name, x, y, arity = args[1:6]
            self.next_id += 1
            ref = 'n' + str(self.next_id)
            node = {'ref': ref, 'kind': 'node', 'anchor': [x, y],
                    'hierarchy_name' if kind == 'hierarchy' else kind: name, 'pins': []}
            names = None
            if kind == 'hierarchy':
                sides = [part.split(',') if part else [] for part in arity.split('|')]
                names = sides[0] + sides[1]
                directions = ['input'] * len(sides[0]) + ['output'] * len(sides[1])
            else:
                directions = (['input'] * arity + ['output']) if kind == 'operator' else ['output']
            for index, direction in enumerate(directions):
                self.next_id += 1
                pin = 'p' + str(self.next_id)
                node['pins'].append(pin)
                added.append({'ref': pin, 'kind': 'pin', 'owner': ref,
                              'name': names[index] if names else ('x' + str(index + 1) if direction == 'input' else 'get/get'),
                              'input': direction == 'input', 'output': direction == 'output'})
            added.append(node)
            if kind == 'hierarchy':
                child_rows, pairs = [], []
                for index, pin in enumerate(added[:-1]):
                    internal = 1000 + int(node['ref'][1:]) * 10 + index
                    child_rows += [
                        {'kind': 'node', 'ref': 'n' + str(internal), 'pins': ['p' + str(internal)], 'hierarchy_boundary': True},
                        {'kind': 'pin', 'ref': 'p' + str(internal), 'owner': 'n' + str(internal),
                         'name': 'get' if pin['input'] else 'set', 'input': pin['output'], 'output': pin['input']}]
                    pairs.append({'external': int(pin['ref'][1:]), 'hierarchy': int(node['ref'][1:]),
                                  'internal_node': internal, 'internal_pin': internal, 'input': pin['input'], 'output': pin['output']})
                child_scope = self.state['diagram'] + '/h' + node['ref'][1:]
                child = {**clone(self.state), 'diagram': child_scope, 'diagram_kind': 'block_diagram',
                    'entries': sorted(child_rows, key=lambda r: r['ref']), 'lookup_nodes': len(pairs),
                    'lookup_edges': 0, 'boundary_context': pairs}
                self.scope_effects = [{'kind': 'hierarchy_scope', 'diagram': child_scope,
                    'parent_ref': self.state['diagram'] + '/' + node['ref'], 'before': None, 'after': child}]
        else:
            self.next_id += 1
            added.append({'ref': 'e' + str(self.next_id), 'kind': 'edge', 'source': args[1], 'target': args[2],
                          'type': 2, 'route': [[10, 20], [30, 20]]})
        self.state['entries'] = sorted(self.state['entries'] + added, key=lambda row: row['ref'])
        adjust_counts(self.state)
        after = self.observe(None, args[0])
        record.update(after=clone(after), added=[row['ref'] for row in added], scope_effects=clone(self.scope_effects))
        if self.lose_reply and len(self.calls) == 2:
            raise TimeoutError('second actual creation reply lost')
        return after

    def validate_construction_group(self, domain, ids):
        self.guarded.append(ids)

    def revert(self, domain, token):
        from bd_scope_effects import inverse_effects
        record = self.tokens[token]
        self.scope_effects = inverse_effects(record['scope_effects'])
        if self.observe(domain, record['args'][0]) != record['after']:
            raise NativePreconditionConflict('Native immediate inverse conflict')
        self.calls.append('revert')
        self.state['entries'] = [r for r in self.state['entries'] if r['ref'] not in record['added']]
        adjust_counts(self.state)
        return self.observe(domain, record['args'][0])


class ConstructionTests(unittest.TestCase):
    def setUp(self):
        temp = tempfile.TemporaryDirectory()
        self.addCleanup(temp.cleanup)
        self.addCleanup(patch.stopall)
        self.local = StructureJournal(Path(temp.name) / 'edits')
        self.group = GroupJournal(Path(temp.name) / 'groups', self.local)
        self.base = {'diagram': 'Main', 'generation': 1, 'targets': [], 'entries': [], 'lookup_nodes': 0, 'lookup_edges': 0}
        self.record = {'snapshot': 's_' + '1' * 32, 'session': 'test', 'component': 'BDE_Tool_Experiments\\Trial_Construct',
                       'database': 'db', 'oid': 'oid', 'ascet_process_epoch': 'epoch', 'structure': self.base}
        patch.object(service, 'load_record', side_effect=lambda *args: clone(self.record)).start()
        patch.object(service, 'STORE', Path(temp.name)).start()
        self.adapter = Adapter(self.base)
        self.steps = [{'snapshot': self.record['snapshot'], 'operations': [op]} for op in [
            {'op': 'create_block', 'kind': 'literal', 'name': '731.25', 'position': [1600, 1300]},
            {'op': 'create_block', 'kind': 'operator', 'name': '+', 'arity': 2, 'position': [1900, 1300]},
            {'op': 'connect_data', 'source': {'step': 0, 'direction': 'output'},
             'target': {'step': 1, 'direction': 'input', 'name': 'x1'}},
            {'op': 'connect_data', 'source': {'step': 0, 'direction': 'output'},
             'target': {'step': 1, 'direction': 'input', 'name': 'x2'}}]]

    @contextmanager
    def factory(self, request):
        yield self.adapter

    def request(self):
        return request_for({'request_id': 'build', 'steps': self.steps}, 'test')

    def test_creation_fanout_actual_id_resolution_replay_and_whole_inverse(self):
        request = self.request()
        receipt = self.group.execute(request, self.factory, nullcontext)
        self.assertEqual(receipt['status'], 'completed')
        self.assertEqual(self.group.execute(request, self.factory, nullcontext), receipt)
        self.assertEqual(self.adapter.calls, ['create_block', 'create_block', 'connect_data', 'connect_data'])
        patches = [self.local.read(row['receipt']['change_id'])[0]['payload'] for row in receipt['steps']]
        self.assertEqual(patches[2]['arguments'][1], 'p22')
        self.assertEqual(patches[2]['arguments'][2], 'p24')
        self.assertEqual(patches[3]['arguments'][2], 'p25')
        self.group.preflight_revert(receipt['change_id'], self.factory)
        inverse = self.group.revert(receipt['change_id'], 'undo', 'test', self.factory, nullcontext)
        self.assertEqual(inverse['status'], 'reverted')
        self.assertEqual(self.adapter.state, self.base)
        self.assertEqual(len(self.adapter.calls), 8)

    def test_ambiguous_created_input_stops_before_its_setter_and_is_recoverable(self):
        self.steps[2]['operations'][0]['target'].pop('name')
        receipt = self.group.execute(self.request(), self.factory, nullcontext)
        self.assertEqual(receipt['status'], 'partial')
        self.assertEqual(receipt['stopped_at'], 2)
        self.assertEqual(self.adapter.calls, ['create_block', 'create_block'])
        inverse = self.group.revert(receipt['change_id'], 'undo-partial', 'test', self.factory, nullcontext)
        self.assertEqual(inverse['status'], 'reverted')
        self.assertEqual(self.adapter.state, self.base)

    def test_stale_initial_scope_refuses_all_setters(self):
        self.adapter.state['generation'] = 2
        receipt = self.group.execute(self.request(), self.factory, nullcontext)
        self.assertEqual(receipt['status'], 'rejected')
        self.assertFalse(receipt['setter_called'])
        self.assertFalse(self.adapter.calls)

    def test_first_added_node_conflict_refuses_every_inverse(self):
        receipt = self.group.execute(self.request(), self.factory, nullcontext)
        next(r for r in self.adapter.state['entries'] if r.get('literal'))['literal'] = 'external'
        inverse = self.group.revert(receipt['change_id'], 'conflict', 'test', self.factory, nullcontext)
        self.assertEqual(inverse['status'], 'conflict')
        self.assertEqual(len(self.adapter.calls), 4)

    def test_forward_wrong_direction_and_cross_scope_dependencies_rejected(self):
        self.steps[2]['operations'][0]['source']['step'] = 3
        with self.assertRaises(Exception):
            self.request()
        self.steps[2]['operations'][0]['source']['step'] = 0
        self.steps[2]['operations'][0]['source']['direction'] = 'input'
        with self.assertRaises(Exception):
            self.request()

    def test_lost_creation_receipt_is_never_used_to_dispatch_a_connection(self):
        self.adapter.lose_reply = True
        request = self.request()
        receipt = self.group.execute(request, self.factory, nullcontext)
        self.assertEqual(receipt['status'], 'outcome_unknown')
        self.assertEqual(self.group.execute(request, self.factory, nullcontext), receipt)
        self.assertEqual(self.adapter.calls, ['create_block', 'create_block'])

    def test_offline_plan_is_immutable_and_dispatches_construction_mode(self):
        with patch.object(service, 'live_lock', side_effect=AssertionError('Plan must be offline')):
            value = flow.inspect({'query': 'flow_plan', 'steps': self.steps}, 'test')
        self.assertEqual(value['mode'], 'construction_sequence')
        self.assertEqual(flow.load(value['plan_ref'], 'test'), value)
        with patch('bd_group_tools.execute', return_value='dispatch') as execute:
            self.assertEqual(flow.edit({'request_id': 'r', 'operations': [{'op': 'connect_path', 'plan_ref': value['plan_ref']}]}, 'test', 4096), 'dispatch')
        self.assertEqual(execute.call_args.args[1]['mode'], 'construction_sequence')

    def test_component_declaration_propagates_across_scopes_without_graph_rows(self):
        request = self.request()
        source = clone(request['steps'][0]['request'])
        source['diagram'] = 'Main/h12'
        model = {'ref': 'm_123abc', 'kind': 'model', 'name': 'Signal'}
        node = {'ref': 'n98', 'kind': 'node', 'pins': []}
        differences = [{'ref': row['ref'], 'before': None, 'after': row} for row in (model, node)]
        completed = [{'index': 0, 'receipt': {'change_id': 'prior'}}]
        with patch('bd_construction_sequence.observed_patch', return_value=(source, differences)):
            resolved = resolved_patch(request, 1, completed, self.local)
            expected = clone(self.base)
            expected['entries'] = [model]
            self.assertEqual(resolved['expect'], fingerprint(expected))
            source['domain']['oid'] = 'other'
            self.assertEqual(resolved_patch(request, 1, completed, self.local)['expect'], fingerprint(self.base))

    def test_created_hierarchy_port_resolves_actual_id_and_name(self):
        self.steps[1]['operations'][0] = {'op': 'create_block', 'kind': 'hierarchy', 'name': 'Stage',
                                         'position': [1900, 1300], 'inputs': ['Signal', 'Other'], 'outputs': ['Result']}
        self.steps[2]['operations'][0]['target']['name'] = 'Signal'
        self.steps[3]['operations'][0]['target']['name'] = 'Other'
        receipt = self.group.execute(self.request(), self.factory, nullcontext)
        self.assertEqual(receipt['status'], 'completed')
        patches = [self.local.read(row['receipt']['change_id'])[0]['payload'] for row in receipt['steps']]
        self.assertEqual(patches[2]['arguments'][2], 'p24')
        self.assertEqual(patches[3]['arguments'][2], 'p25')
        self.assertEqual(self.group.revert(receipt['change_id'], 'undo-hierarchy', 'test', self.factory, nullcontext)['status'], 'reverted')
        self.assertEqual(self.adapter.state, self.base)

    def test_shape_and_existing_definition_templates_are_accepted_without_native_access(self):
        operations = [
            {'op': 'create_block', 'kind': 'array', 'name': 'Signals', 'position': [100, 100], 'model_type': 'cont', 'max_size': 4},
            {'op': 'create_block', 'kind': 'matrix', 'name': 'Gains', 'position': [300, 100], 'model_type': 'sdisc', 'max_size': [2, 3]},
            {'op': 'create_block', 'kind': 'component', 'name': 'Controller', 'position': [500, 100], 'definition': 'Library\\Controller'},
            {'op': 'create_block', 'kind': 'enumeration', 'name': 'Mode', 'position': [700, 100], 'definition': 'Library\\Modes'}]
        self.steps = [{'snapshot': self.record['snapshot'], 'operations': [op]} for op in operations]
        request = self.request()
        self.assertEqual(len(request['steps']), 4)
        self.assertFalse(self.adapter.calls)
        self.steps[-1]['operations'][0].pop('definition')
        self.steps[-1]['operations'][0]['new_definition'] = {'name': 'Modes', 'items': ['Off', 'On']}
        self.assertEqual(len(self.request()['steps']), 4)
        self.assertFalse(self.adapter.calls)

    def test_created_enum_templates_are_deferred_and_require_same_owner(self):
        self.steps = [{'snapshot': self.record['snapshot'], 'operations': [op]} for op in [
            {'op': 'create_block', 'kind': 'enumeration', 'name': 'Mode', 'position': [100, 100],
             'new_definition': {'name': 'Modes', 'items': ['Off', 'On']}},
            {'op': 'create_block', 'kind': 'send_message', 'name': 'ModeMessage', 'position': [300, 100],
             'model_type': 'enum', 'definition': {'step': 0}, 'message_scope': 'exported'}]]
        request = self.request()
        self.assertEqual(request['steps'][1]['template']['definition'], {'step': 0})
        self.group.preflight(request, self.factory)
        self.assertFalse(self.adapter.calls)
        from bd_construction_sequence import validate_steps
        request['steps'][1]['request']['domain']['oid'] = 'another-owner'
        with self.assertRaises(JournalError): validate_steps(request)
        self.steps[1]['operations'][0]['definition']['step'] = 1
        with self.assertRaises(JournalError): self.request()

    def test_enum_selector_uses_actual_oid_path_and_rejects_missing_evidence(self):
        self.steps = [{'snapshot': self.record['snapshot'], 'operations': [op]} for op in [
            {'op': 'create_block', 'kind': 'enumeration', 'name': 'Mode', 'position': [100, 100],
             'new_definition': {'name': 'Modes', 'items': ['Off', 'On']}},
            {'op': 'create_block', 'kind': 'enumeration', 'name': 'ModeCopy', 'position': [300, 100],
             'definition': {'step': 0}}]]
        request = self.request()
        definition = {'path': 'BDE_Tool_Experiments\\ActualModes', 'oid': 'actual-oid'}
        model = {'ref': 'm_abcd', 'kind': 'model', 'name': 'Mode', 'definition': definition}
        delta = [{'ref': model['ref'], 'before': None, 'after': model}]
        completed = [{'index': 0, 'receipt': {'change_id': 'edit-evidence'}}]
        local = Mock()
        local.receipt.return_value = {'library_effects': [{'kind': 'enumeration_definition', **definition,
            'before': None, 'after': {'items': ['Off', 'On']}}]}
        with patch('bd_construction_sequence.observed_patch', return_value=(request['steps'][0]['request'], delta)):
            resolved = resolved_patch(request, 1, completed, local)
            self.assertEqual(resolved['arguments'][5], definition['path'])
            local.receipt.return_value['library_effects'][0]['oid'] = 'wrong'
            with self.assertRaises(JournalError): resolved_patch(request, 1, completed, local)
            local.receipt.return_value['library_effects'] = []
            with self.assertRaises(JournalError): resolved_patch(request, 1, completed, local)

    def test_actual_distribution_and_occurrence_dependencies_do_not_predict_ids(self):
        self.steps = [{'snapshot': self.record['snapshot'], 'operations': [op]} for op in [
            {'op': 'create_block', 'kind': 'distribution', 'name': 'Axis', 'position': [100, 100], 'model_type': 'cont'},
            {'op': 'create_block', 'kind': 'oned_table_group', 'name': 'Table', 'position': [300, 100],
             'x_distribution': {'step': 0}},
            {'op': 'create_block', 'kind': 'existing_model', 'position': [500, 100], 'model': {'step': 0}}]]
        request = self.request()
        self.group.preflight(request, self.factory)
        self.assertFalse(self.adapter.calls)
        model = {'ref': 'm_abcd1234', 'kind': 'model', 'name': 'Axis', 'native_class': 'EtasAPIModelDistribution'}
        delta = [{'ref': model['ref'], 'before': None, 'after': model}]
        completed = [{'index': 0, 'receipt': {'change_id': 'edit-evidence'}}]
        with patch('bd_construction_sequence.observed_patch', return_value=(request['steps'][0]['request'], delta)):
            self.assertEqual(resolved_patch(request, 1, completed, self.local)['arguments'][5], model['ref'])
            self.assertEqual(resolved_patch(request, 2, completed, self.local)['arguments'][2], 'Axis')
            model['native_class'] = 'EtasAPIModelScalar'
            with self.assertRaises(JournalError): resolved_patch(request, 1, completed, self.local)

    def test_model_dependency_wrong_kind_forward_extra_name_and_cross_owner_refused(self):
        from bd_construction_sequence import validate_input_steps, validate_steps
        good = [{'snapshot': self.record['snapshot'], 'operations': [op]} for op in [
            {'op': 'create_block', 'kind': 'variable', 'name': 'Signal', 'position': [100, 100]},
            {'op': 'create_block', 'kind': 'existing_model', 'position': [300, 100], 'model': {'step': 0}}]]
        self.steps = clone(good)
        request = self.request()
        request['steps'][1]['request']['domain']['oid'] = 'wrong-owner'
        with self.assertRaises(JournalError): validate_steps(request)
        for op in [
            {**good[1]['operations'][0], 'name': 'Signal'},
            {**good[1]['operations'][0], 'model': {'step': 1}},
            {'op': 'create_block', 'kind': 'oned_table_group', 'name': 'Table', 'position': [300, 100], 'x_distribution': {'step': 0}}]:
            bad = clone(good); bad[1]['operations'] = [op]
            with self.assertRaises(JournalError): validate_input_steps(bad)

    def test_control_names_are_not_component_declarations(self):
        self.steps = [{'snapshot': self.record['snapshot'], 'operations': [
            {'op': 'create_block', 'kind': 'control', 'name': 'MUX', 'arity': 2, 'position': [x, 100]}]} for x in (100, 300)]
        self.assertEqual(len(self.request()['steps']), 2)

    def test_inverse_propagates_declaration_removal_to_other_scope_before_any_setter(self):
        request = self.request()
        patches = [clone(request['steps'][i]['request']) for i in (0, 1)]
        patches[1]['diagram'] = 'Main/h12'
        models = [{'ref': 'm_123a' + str(i), 'kind': 'model', 'name': 'Signal' + str(i)} for i in (0, 1)]
        nodes = [{'ref': 'n' + str(i + 10), 'kind': 'node', 'pins': []} for i in (0, 1)]
        def state(diagram, rows):
            result = {**clone(self.base), 'diagram': diagram, 'entries': sorted(clone(rows), key=lambda r: r['ref'])}
            adjust_counts(result)
            return result
        before = [state('Main', []), state('Main/h12', [models[0]])]
        after = [state('Main', [models[0], nodes[0]]), state('Main/h12', [*models, nodes[1]])]
        adapters = {('oid', 'Main'): Adapter(state('Main', [*models, nodes[0]])),
                    ('oid', 'Main/h12'): Adapter(after[1])}
        diffs = [[{'ref': r['ref'], 'before': None, 'after': r} for r in (models[i], nodes[i])] for i in (0, 1)]
        local = Mock()
        local.read.side_effect = lambda token: [{'kind': 'prepared', 'payload': {'before': before[int(token)]}}]
        steps = [(i, str(i), patches[i], after[i]) for i in (1, 0)]
        @contextmanager
        def factory(p):
            yield adapters[p['domain']['oid'], p['diagram']]
        with patch('bd_construction_sequence.observed_patch', side_effect=lambda _, t: (patches[int(t)], diffs[int(t)])):
            self.assertEqual(preflight_inverse(steps, factory, local), steps)
            self.assertFalse(any(a.calls for a in adapters.values()))
            adapters['oid', 'Main'].state['entries'][0]['name'] = 'external'
            with self.assertRaises(Exception):
                preflight_inverse(steps, factory, local)
            self.assertFalse(any(a.calls for a in adapters.values()))


if __name__ == '__main__':
    unittest.main()
