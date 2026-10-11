"""Readonly dependency checks for a Class persisted-source inverse candidate.

Connection collection positions below locate evidence only; they never identify
an edge across captures or authorize a mutation.
"""
from collections import Counter
import re

from bd_source_inverse_oracle import Node, block_identifier, decode_graph, integer


def _node(value, kind):
    if not isinstance(value, Node) or value.kind != kind:
        raise ValueError('Complete typed dependency source required')
    return value


def _identifier(value):
    result = integer(value)
    if not 0 <= result <= 2147483647:
        raise ValueError('Audited nonnegative endpoint identifier required')
    return result


def _ports(graphical, require_native_witness):
    fields = graphical.value
    if graphical.native_class in ('SGCodeGODB', 'SGDataGODB'):
        if require_native_witness and graphical.native_child_ids is None:
            raise ValueError('Native memory-block child getter witness required')
        result = []
        for field in ('returnPorts', 'selectorPorts'):
            for method, members in _node(fields.get(field), 'dictionary').value.items():
                for formal, descriptor in _node(members, 'dictionary').value.items():
                    descriptor = _node(descriptor, 'ordered').value
                    if len(descriptor) < 4 or descriptor[3] not in (('boolean', True), ('boolean', False)):
                        raise ValueError('Audited complete memory-block port descriptor required')
                    identifier = None if descriptor[0] == ('nil',) else _identifier(descriptor[0])
                    result.append((identifier, method, formal))
        return result
    if graphical.native_class in ('SGOperatorGODB', 'SGLiteralGODB'):
        return [(_identifier(item), None, None) for item in _node(fields.get('connectors'), 'ordered').value]
    if graphical.native_class == 'SGHierarchyGODB':
        result = []
        for descriptor in _node(fields.get('pins'), 'dictionary').value.values():
            descriptor = _node(descriptor, 'ordered').value
            if not descriptor:
                raise ValueError('Audited complete hierarchy pin descriptor required')
            result.append((None if descriptor[0] == ('nil',) else _identifier(descriptor[0]), None, None))
        return result
    raise ValueError('Unaudited source endpoint family: ' + graphical.native_class)


def _scopes(root, require_native_witness):
    scopes = {}
    seen = set()

    def visit(source, diagram):
        if id(source) in seen:
            raise ValueError('Repeated hierarchy source cannot bind an exact scope')
        seen.add(id(source))
        blocks, connectors, code_blocks = {}, {}, []
        for member in _node(source.value.get('blocks'), 'ordered').value:
            identifier = block_identifier(member)
            if identifier in blocks:
                raise ValueError('Unique persisted scope block identifiers required')
            graphical = member.value['graphicBlock'] if member.native_class == 'SGGraphicsBlockDB' else member
            blocks[identifier] = graphical
            ports = _ports(graphical, require_native_witness)
            for pin, _, _ in ports:
                if pin is not None:
                    if pin in connectors:
                        raise ValueError('Persisted connector identifier belongs to multiple descriptors')
                    connectors[pin] = identifier
            if graphical.native_class == 'SGCodeGODB':
                code_blocks.append((identifier, graphical.value.get('aliasName'), ports))
            if member.native_class == 'SGGraphicsBlockDB':
                visit(member, diagram + '/h' + str(identifier))
        edges = []
        for index, edge in enumerate(_node(source.value.get('connections'), 'ordered').value):
            if not isinstance(edge, Node) or edge.native_class != 'SGConnectionGODB' or edge.kind != 'fields':
                raise ValueError('Audited complete persisted connection source required')
            info = _node(edge.value.get('info'), 'ordered').value
            if len(info) < 4:
                raise ValueError('Complete persisted connection endpoint slots required')
            edges.append((index, *(_identifier(item) for item in info[:4])))
        scopes[diagram] = {'blocks': blocks, 'connectors': connectors, 'code_blocks': code_blocks, 'edges': edges}
    visit(root, 'Main')
    return scopes


def _alias(value):
    if type(value) is not tuple or len(value) != 3 or value[0] != 'bytes' or not value[2]:
        raise ValueError('Exact persisted model alias bytes required')
    return 'bytes:' + value[2]


def _signature(signature):
    if type(signature) is not dict or type(signature.get('oid')) is not str or not signature['oid']:
        raise ValueError('Complete original Class signature required')
    methods = {}
    if type(signature.get('methods')) is not list:
        raise ValueError('Complete original method roster required')
    for method in signature['methods']:
        if (type(method) is not dict or type(method.get('alias')) is not str
                or not re.fullmatch('bytes:(?:[0-9a-f]{2})+', method['alias'])
                or method['alias'] in methods or method.get('owner_matches') is not True
                or type(method.get('arguments')) is not list):
            raise ValueError('Unique exact owner-bound method aliases required')
        parameters = method['arguments'] + ([method['return']] if method.get('return') is not None else [])
        aliases = []
        for parameter in parameters:
            if (type(parameter) is not dict or type(parameter.get('alias')) is not str
                    or not re.fullmatch('bytes:(?:[0-9a-f]{2})+', parameter['alias'])
                    or parameter.get('owner_matches') is not True):
                raise ValueError('Exact owner-bound formal aliases required')
            aliases.append(parameter['alias'])
        if method.get('return') is None:
            aliases.append(method['alias'])
        if len(aliases) != len(set(aliases)):
            raise ValueError('Unique method formal aliases required')
        methods[method['alias']] = Counter(aliases)
    return methods


def inspect_dependencies(result, oid, owner, before, applied, current, *, require_native_witness=True):
    """Bind candidate endpoints and target callers to a strict signature inverse.

    Signature merging remains unavailable: a later signature change is a conflict.
    Hidden/nil descriptors still participate in alias checks.
    """
    signatures = []
    for observed in (before, applied, current):
        if (type(observed) is not dict or type(observed.get('observation')) is not dict
                or type(observed['observation'].get('signature')) is not dict):
            raise ValueError('Complete original/applied/current signature context required')
        signatures.append(observed['observation']['signature'])
    signature, expected_signature, current_signature = signatures
    if (signature.get('oid') != expected_signature.get('oid')
            or signature.get('oid') != current_signature.get('oid')):
        raise ValueError('Class dependency signatures belong to different definitions')
    methods = _signature(signature)
    conflicts = []
    if current_signature != expected_signature:
        conflicts.append({'code': 'SOURCE_SIGNATURE_BASELINE_REQUIRED'})
    if result['plan']['compatible'] is not True:
        return {'profile': 'class_source_dependencies_v1', 'candidate_available': False,
                'compatible': False, 'conflicts': conflicts, 'write_authorized': False}
    candidate = decode_graph(result['source_graphs']['candidate'], oid)
    scopes = _scopes(candidate, require_native_witness)
    observed_scopes = owner['scopes']
    if set(scopes) != set(observed_scopes):
        raise ValueError('Candidate hierarchy roster differs from exact current scope coverage')
    edge_count = caller_count = formal_count = hidden_count = 0
    for diagram, scope in sorted(scopes.items()):
        edge_count += len(scope['edges'])
        for index, start, end, source_pin, target_pin in scope['edges']:
            for side, block, pin in (('start', start, source_pin), ('end', end, target_pin)):
                if block not in scope['blocks'] or scope['connectors'].get(pin) != block:
                    conflicts.append({'code': 'SOURCE_DANGLING_ENDPOINT', 'diagram': diagram,
                                      'connection_source_index': index, 'side': side,
                                      'block_id': block, 'connector_id': pin})
        entries = observed_scopes[diagram]['entries']
        models = {}
        for entry in entries:
            if entry.get('kind') == 'model':
                ref = entry.get('ref')
                if type(ref) is not str or ref in models:
                    raise ValueError('Unique current declaration aliases required')
                models[ref] = entry
        for block, alias, ports in scope['code_blocks']:
            ref = 'm_' + _alias(alias)[6:]
            declaration = models.get(ref)
            if declaration is None:
                conflicts.append({'code': 'SOURCE_DECLARATION_MISSING', 'diagram': diagram,
                                  'block_id': block, 'model_ref': ref})
                continue
            definition = declaration.get('definition')
            if type(definition) is not dict or definition.get('oid') != signature['oid']:
                raise ValueError('External Class dependency signature is unavailable')
            caller_count += 1
            actual = {}
            for pin, method, formal in ports:
                if method[0] == 'bytes':
                    actual.setdefault(_alias(method), Counter())[_alias(formal)] += 1
                    formal_count += 1
                    hidden_count += int(pin is None)
                elif method[0] not in ('string', 'symbol') or method[2] not in ('get', 'set'):
                    raise ValueError('Unaudited synthesized method storage dependency')
            if actual != methods:
                conflicts.append({'code': 'SOURCE_CALLER_FORMAL_ALIASES_DIFFER', 'diagram': diagram,
                                  'block_id': block, 'model_ref': ref})
    return {'profile': 'class_source_dependencies_v1', 'candidate_available': True,
            'compatible': not conflicts, 'conflicts': conflicts,
            'signature_policy': 'exact_current_applied_signature_restore_original',
            'scopes_checked': len(scopes), 'connections_checked': edge_count,
            'callers_checked': caller_count, 'formal_descriptors_checked': formal_count,
            'nil_formal_descriptors_checked': hidden_count,
            'native_child_witness_required': require_native_witness,
            'write_authorized': False,
            'not_verified': ['signal direction/type compatibility', 'external Class signatures',
                             'native merged source publication', 'journaled partial failure recovery']}
