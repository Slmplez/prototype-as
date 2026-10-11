"""Adversarial candidate dependencies must refuse independently of value merges."""
from copy import deepcopy
import unittest

from bd_source_dependencies import inspect_dependencies
from bd_source_inverse_oracle import Node, inspect_candidate


def number(value):
    return ('integer', 'SmallInteger', str(value))


def alias(value):
    return ('bytes', 'ByteArray', value)


def array(items):
    return Node('Array', 'ordered', items)


def dictionary(items):
    return Node('Dictionary', 'dictionary', items)


def encode(root, oid='owner'):
    identifiers, queue, rows = {}, [], []
    references = 0

    def ref(value):
        nonlocal references
        references += 1
        if not isinstance(value, Node):
            return list(value)
        if id(value) not in identifiers:
            identifiers[id(value)] = len(queue) + 1
            queue.append(value)
        return ['ref', identifiers[id(value)]]
    root_ref = ref(root)
    for value in queue:
        row = {'id': identifiers[id(value)], 'native_class': value.native_class, 'kind': value.kind}
        if value.logic_id is not None:
            row['logic_id'] = value.logic_id
        if value.native_child_ids is not None:
            row['native_child_ids'] = [list(item) for item in value.native_child_ids]
        if value.kind == 'ordered':
            row['items'] = [ref(item) for item in value.value]
        else:
            row['fields' if value.kind == 'fields' else 'entries'] = [
                [key if value.kind == 'fields' else ref(key), ref(item)] for key, item in value.value.items()]
        rows.append(row)
    return {'format': 'bde_persisted_source_graph_v1', 'oid': oid, 'root': root_ref,
            'nodes': rows, 'complete': True, 'reference_count': references,
            'model_setters_called': 0, 'store_called': False}


def dependency_graph(added=False, moved=False, connect_added=False, nil_return=False):
    descriptor = lambda identifier, visible=True: array([
        ('nil',) if identifier is None else number(identifier),
        ('symbol', 'Symbol', 'left'), ('nil',), ('boolean', visible)])
    method_ports = {alias('bb'): descriptor(2), alias('cc'): descriptor(None if nil_return else 3)}
    if added:
        method_ports[alias('ee')] = descriptor(6)
    returns = dictionary({alias('aa'): dictionary(method_ports),
                          ('string', 'String', 'get'): dictionary({('string', 'String', 'return'): descriptor(4, False)})})
    selectors = dictionary({('string', 'String', 'set'): dictionary({('string', 'String', 'aValue'): descriptor(5, False)})})
    code = Node('SGCodeGODB', 'fields', {'own': array([number(1)]), 'aliasName': alias('dd'),
                'returnPorts': returns, 'selectorPorts': selectors}, 1,
                tuple(port.value[0] for table in (returns, selectors) for ports in table.value.values() for port in ports.value.values()))
    literal = Node('SGLiteralGODB', 'fields', {'own': array([number(10)]), 'connectors': array([number(11)]),
                   'literalString': ('string', 'String', 'moved' if moved else 'original')}, 10)
    edge = lambda pin: Node('SGConnectionGODB', 'fields', {'info': array([number(10), number(1), number(11), number(pin)])})
    return encode(Node('SGTopGraphicsBlockDB', 'fields', {'blocks': array([code, literal]),
                       'connections': array([edge(2)] + ([edge(6)] if connect_added else []))}))


def context():
    formal = lambda value: {'alias': 'bytes:' + value, 'owner_matches': True}
    method = {'alias': 'bytes:aa', 'arguments': [formal('bb')], 'return': formal('cc'), 'owner_matches': True}
    owner = {'oid': 'owner', 'component': 'Trial_Owner', 'scopes': {'Main': {'generation': 7, 'entries': [
        {'kind': 'model', 'ref': 'm_dd', 'definition': {'oid': 'definition'}}]}}}
    before = {'observation': {'signature': {'oid': 'definition', 'methods': [method]}}, 'owners': [deepcopy(owner)]}
    applied = deepcopy(before)
    applied['observation']['signature']['methods'][0]['arguments'].append(formal('ee'))
    current = deepcopy(applied)
    return owner, before, applied, current


def candidate_result(connect_added=False):
    return {'source_graphs': {'original': dependency_graph(), 'applied': dependency_graph(added=True),
                             'current': dependency_graph(added=True, moved=True, connect_added=connect_added),
                             'candidate': dependency_graph(moved=True, connect_added=connect_added)},
            'plan': {'compatible': True, 'merged_equals_original': False, 'merged_equals_current': False}}


class SourceDependencyTests(unittest.TestCase):
    def setUp(self):
        self.result = candidate_result()
        self.owner, self.before, self.applied, self.current = context()

    def inspect(self):
        return inspect_dependencies(self.result, 'owner', self.owner, self.before, self.applied, self.current)

    def test_compatible_value_inverse_keeps_valid_endpoints_and_formals(self):
        saved = deepcopy((self.result, self.owner, self.before, self.applied, self.current))
        value = self.inspect()
        self.assertTrue(inspect_candidate(self.result, 'owner')['complete_values_verified'])
        self.assertTrue(value['compatible'])
        self.assertEqual((value['connections_checked'], value['callers_checked'], value['formal_descriptors_checked']), (1, 1, 2))
        self.assertFalse(value['write_authorized'])
        self.assertEqual((self.result, self.owner, self.before, self.applied, self.current), saved)

    def test_new_connection_to_reverted_input_is_a_dependency_conflict(self):
        self.result = candidate_result(connect_added=True)
        self.assertTrue(inspect_candidate(self.result, 'owner')['compatible'])
        value = self.inspect()
        self.assertFalse(value['compatible'])
        self.assertEqual(value['conflicts'], [{'code': 'SOURCE_DANGLING_ENDPOINT', 'diagram': 'Main',
            'connection_source_index': 1, 'side': 'end', 'block_id': 1, 'connector_id': 6}])

    def test_existing_pin_on_another_block_cannot_bind_the_endpoint(self):
        graph = self.result['source_graphs']['candidate']
        info = next(row for row in graph['nodes'] if row['kind'] == 'ordered' and len(row['items']) == 4
                    and row['items'][0] == list(number(10)))
        info['items'][3] = list(number(11))
        self.assertEqual(self.inspect()['conflicts'][0]['code'], 'SOURCE_DANGLING_ENDPOINT')

    def test_getter_must_agree_including_hidden_descriptors(self):
        graph = self.result['source_graphs']['candidate']
        code = next(row for row in graph['nodes'] if row['native_class'] == 'SGCodeGODB')
        code['native_child_ids'].pop()
        with self.assertRaisesRegex(ValueError, 'getter disagrees'):
            self.inspect()

    def test_missing_native_witness_does_not_claim_live_dependency_proof(self):
        graph = self.result['source_graphs']['candidate']
        code = next(row for row in graph['nodes'] if row['native_class'] == 'SGCodeGODB')
        del code['native_child_ids']
        with self.assertRaisesRegex(ValueError, 'getter witness required'):
            self.inspect()
        retained = inspect_dependencies(self.result, 'owner', self.owner, self.before, self.applied, self.current,
                                        require_native_witness=False)
        self.assertFalse(retained['native_child_witness_required'])

    def test_nil_hidden_formal_is_still_part_of_the_signature_check(self):
        self.result['source_graphs']['candidate'] = dependency_graph(moved=True, nil_return=True)
        value = self.inspect()
        self.assertTrue(value['compatible'])
        self.assertEqual(value['nil_formal_descriptors_checked'], 1)
        self.before['observation']['signature']['methods'][0]['return']['alias'] = 'bytes:ff'
        self.assertEqual(self.inspect()['conflicts'][0]['code'], 'SOURCE_CALLER_FORMAL_ALIASES_DIFFER')

    def test_alias_replacement_is_not_matched_by_position_or_name(self):
        self.before['observation']['signature']['methods'][0]['arguments'][0]['alias'] = 'bytes:ff'
        self.assertEqual(self.inspect()['conflicts'][0]['code'], 'SOURCE_CALLER_FORMAL_ALIASES_DIFFER')

    def test_signature_change_requires_a_separate_signature_merge(self):
        self.current['observation']['signature']['methods'][0]['arguments'].clear()
        self.assertEqual(self.inspect()['conflicts'][0]['code'], 'SOURCE_SIGNATURE_BASELINE_REQUIRED')

    def test_missing_context_refuses_before_any_candidate_authorization(self):
        for malformed in (None, {}, {'observation': {'signature': []}}):
            with self.subTest(malformed=malformed):
                with self.assertRaisesRegex(ValueError, 'signature context'):
                    inspect_dependencies(self.result, 'owner', self.owner, malformed, self.applied, self.current)

    def test_missing_or_external_declaration_does_not_bind_the_target_class(self):
        self.owner['scopes']['Main']['entries'][0]['ref'] = 'm_ff'
        self.assertEqual(self.inspect()['conflicts'][0]['code'], 'SOURCE_DECLARATION_MISSING')
        self.owner['scopes']['Main']['entries'][0].update(ref='m_dd', definition={'oid': 'foreign'})
        with self.assertRaisesRegex(ValueError, 'External Class'):
            self.inspect()

    def test_candidate_scope_roster_cannot_omit_a_current_hierarchy(self):
        self.owner['scopes']['Main/h1'] = deepcopy(self.owner['scopes']['Main'])
        with self.assertRaisesRegex(ValueError, 'hierarchy roster'):
            self.inspect()

    def test_duplicate_port_identifier_cannot_have_two_owners(self):
        graph = self.result['source_graphs']['candidate']
        literal = next(row for row in graph['nodes'] if row['native_class'] == 'SGLiteralGODB')
        connectors = next(value for name, value in literal['fields'] if name == 'connectors')
        graph['nodes'][connectors[1] - 1]['items'] = [list(number(2))]
        with self.assertRaisesRegex(ValueError, 'multiple descriptors'):
            self.inspect()

    def test_unaudited_endpoint_family_refuses(self):
        graph = self.result['source_graphs']['candidate']
        literal = next(row for row in graph['nodes'] if row['native_class'] == 'SGLiteralGODB')
        literal['native_class'] = 'UnknownSource'
        with self.assertRaisesRegex(ValueError, 'Unaudited source endpoint family'):
            self.inspect()


if __name__ == '__main__':
    unittest.main()
