"""Independent complete-value oracle for native persisted BDE source candidates.

Only immutable exports are inspected. Graph references describe source storage;
they are not model handles, and this module never authorizes a native write.
"""
from dataclasses import dataclass
from collections import Counter
from copy import deepcopy
import re

from bd_collection_merge import merge_order

MAX_NODES = 100000
MAX_REFERENCES = 1000000
MAX_DEPTH = 128
ROLES = ('original', 'applied', 'current', 'candidate')


@dataclass(eq=False)
class Node:
    native_class: str
    kind: str
    value: object = None
    logic_id: int | None = None
    native_child_ids: tuple | None = None


def _atom(value, oid):
    if type(value) is not list or not value or type(value[0]) is not str:
        raise ValueError('Typed persisted source atom required')
    tag = value[0]
    if tag == 'nil' and len(value) == 1:
        return ('nil',)
    if tag == 'boolean' and len(value) == 2 and type(value[1]) is bool:
        return tuple(value)
    if tag == 'float64le' and len(value) == 2 and type(value[1]) is str and re.fullmatch('[0-9a-f]{16}', value[1]):
        return tuple(value)
    if len(value) == 3 and all(type(item) is str for item in value):
        if tag == 'integer' and value[1] in ('SmallInteger', 'LargePositiveInteger', 'LargeNegativeInteger'):
            if re.fullmatch('0|-?[1-9][0-9]*', value[2]):
                return tuple(value)
        if tag in ('string', 'symbol') and value[1]:
            return tuple(value)
        if tag == 'bytes' and value[1] and re.fullmatch('(?:[0-9a-f]{2})*', value[2]):
            return tuple(value)
        if tag == 'owner' and value[1] == oid and value[2]:
            return tuple(value)
    raise ValueError('Invalid or unsupported persisted source atom')


def decode_graph(graph, oid):
    if (type(graph) is not dict or graph.get('format') != 'bde_persisted_source_graph_v1'
            or graph.get('oid') != oid or graph.get('complete') is not True
            or type(graph.get('model_setters_called')) is not int or graph['model_setters_called'] != 0
            or graph.get('store_called') is not False
            or type(graph.get('nodes')) is not list or not 0 < len(graph['nodes']) <= MAX_NODES
            or type(graph.get('reference_count')) is not int or not 0 < graph['reference_count'] <= MAX_REFERENCES):
        raise ValueError('Complete readonly owner-bound source graph required')
    rows = graph['nodes']
    nodes = {}
    for index, row in enumerate(rows, 1):
        if (type(row) is not dict or type(row.get('id')) is not int or row['id'] != index
                or type(row.get('native_class')) is not str or not row['native_class']
                or row.get('kind') not in ('fields', 'dictionary', 'ordered')):
            raise ValueError('Dense typed source node table required')
        if 'logic_id' in row and row['logic_id'] is not None and type(row['logic_id']) is not int:
            raise ValueError('Invalid native graphical identifier')
        nodes[index] = Node(row['native_class'], row['kind'], logic_id=row.get('logic_id'))
    references = 0

    def value(encoded):
        nonlocal references
        references += 1
        if references > MAX_REFERENCES:
            raise ValueError('Source reference bound exceeded')
        if type(encoded) is list and len(encoded) == 2 and encoded[0] == 'ref':
            if type(encoded[1]) is not int or encoded[1] not in nodes:
                raise ValueError('Dangling or malformed persisted source reference')
            return nodes[encoded[1]]
        return _atom(encoded, oid)

    root = value(graph.get('root'))
    for row in rows:
        node = nodes[row['id']]
        base = {'id', 'native_class', 'kind'}
        if node.kind == 'ordered':
            if set(row) != base | {'items'} or type(row['items']) is not list or len(row['items']) > MAX_NODES:
                raise ValueError('Complete ordered source members required')
            node.value = [value(item) for item in row['items']]
        else:
            role = 'fields' if node.kind == 'fields' else 'entries'
            allowed = base | {role} | ({'logic_id'} if 'logic_id' in row else set())
            if 'native_child_ids' in row:
                allowed.add('native_child_ids')
                if role != 'fields' or type(row['native_child_ids']) is not list or len(row['native_child_ids']) > MAX_NODES:
                    raise ValueError('Bounded native child identifier witness required')
                witness = tuple(_atom(item, oid) for item in row['native_child_ids'])
                if any(item[0] not in ('nil', 'integer') for item in witness):
                    raise ValueError('Exact native child identifier witness required')
                node.native_child_ids = witness
            if set(row) != allowed or type(row.get(role)) is not list or len(row[role]) > MAX_NODES:
                raise ValueError('Complete named source fields or dictionary entries required')
            pairs = {}
            for pair in row[role]:
                if type(pair) is not list or len(pair) != 2:
                    raise ValueError('Exact source field pair required')
                key = pair[0] if role == 'fields' else _atom(pair[0], oid)
                if (role == 'fields' and (type(key) is not str or not key)) or key in pairs:
                    raise ValueError('Duplicate or malformed source field/key')
                if role == 'entries' and key[0] not in ('string', 'symbol', 'integer', 'bytes'):
                    raise ValueError('Audited scalar source dictionary key required')
                if role == 'entries':
                    references += 1
                pairs[key] = value(pair[1])
            node.value = pairs
    if references != graph['reference_count']:
        raise ValueError('Persisted source export reference count differs')
    if not isinstance(root, Node) or root.native_class != 'SGTopGraphicsBlockDB' or root.kind != 'fields':
        raise ValueError('Complete persisted root source required')
    reached = set()

    def visit(item, depth):
        if depth > MAX_DEPTH:
            raise ValueError('Source graph depth bound exceeded')
        if isinstance(item, Node) and id(item) not in reached:
            reached.add(id(item))
            for child in item.value if item.kind == 'ordered' else item.value.values():
                visit(child, depth + 1)
    visit(root, 0)
    if len(reached) != len(nodes):
        raise ValueError('Unreachable rows cannot claim complete source coverage')
    for node in nodes.values():
        if node.logic_id is not None:
            own = node.value.get('own') if node.kind == 'fields' else None
            if not isinstance(own, Node) or own.kind != 'ordered' or not own.value or integer(own.value[0]) != node.logic_id:
                raise ValueError('Native graphical identifier differs from persisted own slot')
        if node.native_child_ids is not None:
            descriptors = []
            for field in ('returnPorts', 'selectorPorts'):
                ports = node.value.get(field)
                if not isinstance(ports, Node) or ports.kind != 'dictionary':
                    raise ValueError('Native child witness lacks complete persisted ports')
                for method_ports in ports.value.values():
                    if not isinstance(method_ports, Node) or method_ports.kind != 'dictionary':
                        raise ValueError('Complete persisted method port dictionary required')
                    for port in method_ports.value.values():
                        if not isinstance(port, Node) or port.kind != 'ordered' or not port.value:
                            raise ValueError('Complete persisted port descriptor required')
                        identifier = port.value[0]
                        if type(identifier) is not tuple or identifier[0] not in ('nil', 'integer'):
                            raise ValueError('Exact persisted child graphical identifier required')
                        descriptors.append(identifier)
            if Counter(descriptors) != Counter(node.native_child_ids):
                raise ValueError('Native child getter disagrees with complete persisted port descriptors')
    return root


def integer(atom):
    if type(atom) is not tuple or len(atom) != 3 or atom[0] != 'integer':
        raise ValueError('Exact persisted integer required')
    return int(atom[2])


def block_identifier(member):
    graphical = member
    if isinstance(member, Node) and member.native_class == 'SGGraphicsBlockDB' and member.kind == 'fields':
        graphical = member.value.get('graphicBlock')
        if not isinstance(graphical, Node) or graphical.native_class != 'SGHierarchyGODB':
            raise ValueError('Audited hierarchy source graphical block required')
    if not isinstance(graphical, Node) or graphical.logic_id is None or not 0 <= graphical.logic_id <= 2147483647:
        raise ValueError('Audited persisted block identifier required')
    return graphical.logic_id


def equal(left, right):
    """Compare all source values and both directions of structural sharing."""
    forwards, backwards = {}, {}

    def compare(a, b, depth):
        if depth > MAX_DEPTH:
            raise ValueError('Source comparison depth bound exceeded')
        if not isinstance(a, Node) or not isinstance(b, Node):
            return type(a) is type(b) and a == b
        if (a.native_class, a.kind, a.logic_id) != (b.native_class, b.kind, b.logic_id):
            return False
        if id(a) in forwards or id(b) in backwards:
            return forwards.get(id(a)) is b and backwards.get(id(b)) is a
        forwards[id(a)], backwards[id(b)] = b, a
        if a.kind == 'ordered':
            return len(a.value) == len(b.value) and all(compare(x, y, depth + 1) for x, y in zip(a.value, b.value))
        return a.value.keys() == b.value.keys() and all(compare(item, b.value[key], depth + 1) for key, item in a.value.items())
    return compare(left, right, 0)


def _merge(before, applied, current):
    absent = object()
    memo = {}
    conflicts, changed, preserved, orders = [], [], [], []

    def merge(old, expected, now, path, depth):
        if depth > MAX_DEPTH:
            raise ValueError('Source inverse merge depth bound exceeded')
        if equal(old, expected):
            if not equal(expected, now):
                preserved.append(path)
            return now
        if equal(expected, now):
            changed.append(path)
            return old
        if old is absent or expected is absent or now is absent:
            conflicts.append({'code': 'SOURCE_ROW_EXISTENCE_CONFLICT', 'path': path})
            return now
        if not all(isinstance(item, Node) for item in (old, expected, now)):
            conflicts.append({'code': 'SOURCE_TOUCHED_VALUE_OR_ORDER_CONFLICT', 'path': path})
            return now
        if len({(item.native_class, item.kind) for item in (old, expected, now)}) != 1:
            conflicts.append({'code': 'SOURCE_CLASS_CONFLICT', 'path': path})
            return now
        if id(now) in memo:
            previous = memo[id(now)]
            if previous[0] is not old or previous[1] is not expected:
                raise ValueError('Ambiguous shared source lineage')
            return previous[2]
        if now.kind == 'ordered':
            if not path.endswith('/blocks'):
                conflicts.append({'code': 'SOURCE_TOUCHED_VALUE_OR_ORDER_CONFLICT', 'path': path})
                return now
            maps, sequences = [], []
            for members in (old, expected, now):
                mapping = {}
                for member in members.value:
                    identifier = block_identifier(member)
                    if identifier in mapping:
                        raise ValueError('Unique audited persisted block identifiers required')
                    mapping[identifier] = member
                maps.append(mapping)
                sequences.append([str(block_identifier(member)) for member in members.value])
            order = merge_order(*sequences)
            orders.append({'path': path, 'compatible': order['compatible'],
                           'merged_identifiers': [int(item) for item in order['merged']]})
            if not order['compatible']:
                conflicts.append({'code': 'SOURCE_BLOCK_ORDER_CONFLICT', 'path': path})
                return now
            result = Node(now.native_class, 'ordered', [])
            memo[id(now)] = (old, expected, result)
            for identifier in map(int, order['merged']):
                member = merge(*(mapping.get(identifier, absent) for mapping in maps), path + '/id:' + str(identifier), depth + 1)
                if member is absent:
                    raise ValueError('Source order references an absent block')
                result.value.append(member)
            return result
        if now.kind == 'fields' and (old.value.keys() != expected.value.keys() or expected.value.keys() != now.value.keys()):
            raise ValueError('Exact fixed source field roster changed')
        result = Node(now.native_class, now.kind, {}, now.logic_id)
        memo[id(now)] = (old, expected, result)
        keys = set(old.value) | set(expected.value) | set(now.value)
        for key in sorted(keys):
            suffix = key if now.kind == 'fields' else 'key:' + repr(key)
            item = merge(old.value.get(key, absent), expected.value.get(key, absent), now.value.get(key, absent),
                         path + '/' + suffix, depth + 1)
            if item is not absent:
                result.value[key] = item
        return result

    merged = merge(before, applied, current, 'root', 0)
    allocator = None
    field = 'highestUsedGraphicalIdentifier'
    roots = (before, applied, current)
    present = [field in root.value for root in roots]
    if any(present):
        if not all(present):
            raise ValueError('Complete allocator high-water field roster required')
        values = [root.value[field] for root in roots]
        if all(value == ('nil',) for value in values):
            numbers = [None, None, None]
        else:
            numbers = [integer(value) for value in values]
            if not 0 <= numbers[0] <= numbers[1] <= numbers[2] <= 2147483647:
                raise ValueError('Monotonic native allocator high-water history required')
        # Native store starts allocation at the current high-water, including deleted IDs.
        merged = deepcopy(merged)
        merged.value[field] = current.value[field]
        path = 'root/' + field
        changed[:] = [item for item in changed if item != path]
        if values[0] != values[2] and path not in preserved:
            preserved.append(path)
        allocator = {'policy': 'preserve_current_high_water_v1', 'path': path,
                     'original': numbers[0], 'applied': numbers[1], 'current': numbers[2], 'candidate': numbers[2]}
    return merged, {'compatible': not conflicts, 'conflicts': conflicts,
                    'changed_paths': changed, 'preserved_paths': preserved, 'block_order_plans': orders,
                    'allocator_high_water': allocator}


def inspect_candidate(result, oid):
    graphs = result.get('source_graphs')
    if type(graphs) is not dict or set(graphs) != set(ROLES):
        raise ValueError('All four complete persisted source graphs required')
    sources = {role: decode_graph(graphs[role], oid) for role in ROLES}
    candidate, analysis = _merge(sources['original'], sources['applied'], sources['current'])
    native = result['plan']
    if analysis['compatible'] is not native['compatible']:
        raise ValueError('Independent full source conflict analysis differs from native plan')
    if analysis['compatible'] and not equal(candidate, sources['candidate']):
        raise ValueError('Native candidate differs from independent complete source inverse')
    if native.get('allocator_high_water') != analysis['allocator_high_water']:
        raise ValueError('Native allocator policy differs from independent complete source history')
    original_equal = equal(sources['candidate'], sources['original'])
    current_equal = equal(sources['candidate'], sources['current'])
    if original_equal is not native['merged_equals_original'] or current_equal is not native['merged_equals_current']:
        raise ValueError('Native source equality summaries contradict complete candidate values')
    preserved_connections = []

    def connections(old, expected, now, merged, path, seen):
        if not all(isinstance(item, Node) for item in (old, expected, now, merged)):
            return
        lineage = tuple(id(item) for item in (old, expected, now, merged))
        if lineage in seen:
            return
        seen.add(lineage)
        if now.kind == 'fields' and old.kind == expected.kind == merged.kind == 'fields':
            if 'connections' in now.value and all('connections' in item.value for item in (old, expected, merged)):
                if equal(old.value['connections'], expected.value['connections']):
                    if not equal(now.value['connections'], merged.value['connections']):
                        raise ValueError('Candidate changed an untouched complete connection collection')
                    preserved_connections.append(path + '/connections')
            for key in sorted(set(old.value) & set(expected.value) & set(now.value) & set(merged.value)):
                connections(*(item.value[key] for item in (old, expected, now, merged)), path + '/' + key, seen)
        elif now.kind == 'ordered' and path.endswith('/blocks'):
            mappings = [{block_identifier(item): item for item in source.value}
                        for source in (old, expected, now, merged)]
            for identifier in sorted(set.intersection(*(set(mapping) for mapping in mappings))):
                connections(*(mapping[identifier] for mapping in mappings), path + '/id:' + str(identifier), seen)
    connections(*(sources[role] for role in ROLES), 'root', set())
    return {'profile': 'independent_complete_source_inverse_v1', 'complete_values_verified': True,
            'compatible': analysis['compatible'], 'candidate_matches_independent_inverse': analysis['compatible'],
            'structural_sharing_checked': True,
            'node_counts': {role: len(graphs[role]['nodes']) for role in ROLES},
            'preserved_complete_connections': preserved_connections,
            'block_order_plans': analysis['block_order_plans'],
            'allocator_high_water': analysis['allocator_high_water'],
            'write_authorized': False,
            'not_verified': ['merged caller/signature dependencies', 'native merged source publication',
                             'journaled partial failure recovery', 'retained identity after merged restore']}
