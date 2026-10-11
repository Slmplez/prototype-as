"""Validate exact persisted configuration graphs; never infer effective values."""
import hashlib
import json
import re


CONFIG_CLASSES = frozenset(('SGClassImplConfig', 'SGClassValueConfig',
                           'SGImplConfiguration', 'SGValueConfiguration'))
SLOT_CLASSES = frozenset(('RBArithmeticElement', 'RBDataEnumeration', 'RBDataBoolean',
    'RBDataDescription', 'RBBoundedLattice', 'RBInterval', 'RBTypedValue', 'RBBoolean',
    'RBFloat', 'RBInt16Signed', 'RBInt32Unsigned', 'RBInt32Signed', 'RBInt16Unsigned', 'RBInt8Unsigned', 'RBInt8Signed', 'RBStringType',
    'RBFormulaId', 'RBFormulaEnum', 'RBFormulaString', 'RBOneDCharTable', 'RBTwoDCharTable', 'RBImplBoolean', 'RBDataVector', 'RBDataMatrix', 'RBDiscreteDistribution', 'SGCodeArchive', 'SGMethodImplementation', 'ASDAdditionalImplInfo', 'SGExtraImplInfo', 'Infinity', 'RBBit', 'RBEnumeration', 'Vector', 'Matrix', 'Point', 'SGEnumeration', 'SortedCollection', 'ASDEnumerationEntry'))


def validate_graph(graph, oid):
    if (not isinstance(graph, dict) or graph.get('format') not in ('bde_configuration_graph_v1', 'bde_configuration_graph_v2')
            or graph.get('oid') != oid or not isinstance(graph.get('component'), str)):
        raise ValueError('Configuration graph owner or format mismatch')
    nodes, roots, links = (graph.get(key) for key in ('nodes', 'roots', 'linked_configurations'))
    if not isinstance(nodes, list) or len(nodes) > 32768 or not isinstance(roots, list) or len(roots) > 256:
        raise ValueError('Configuration graph bounds or coverage invalid')
    ids = list(range(1, len(nodes) + 1))
    id_set = set(ids)
    if any(not isinstance(node, dict) for node in nodes) or [node.get('id') for node in nodes] != ids:
        raise ValueError('Configuration graph node identities invalid')
    references = {}
    config_references = {}
    float_values = 0

    def value(row, owner=None, key=False):
        nonlocal float_values
        if not isinstance(row, list) or not row or not isinstance(row[0], str):
            raise ValueError('Configuration graph value invalid')
        tag = row[0]
        if tag == 'nil' and len(row) == 1:
            return
        if tag == 'boolean' and len(row) == 2 and type(row[1]) is bool:
            return
        if tag == 'integer' and len(row) == 2 and isinstance(row[1], str) and re.fullmatch(r'-?(0|[1-9][0-9]*)', row[1]):
            return
        if tag == 'float64le' and len(row) == 2 and isinstance(row[1], str) and re.fullmatch(r'[0-9a-f]{16}', row[1]):
            float_values += 1
            return
        if tag == 'bytes' and len(row) == 2 and isinstance(row[1], str) and re.fullmatch(r'([0-9a-f]{2})*', row[1]):
            return
        if tag in ('string', 'symbol') and len(row) == 2 and isinstance(row[1], str):
            return
        if tag == 'ref' and len(row) == 2 and type(row[1]) is int and row[1] in id_set:
            if key and nodes[row[1] - 1].get('class') not in ('String', 'ByteArray'):
                raise ValueError('Configuration dictionary key reference is not scalar storage')
            references.setdefault(owner, set()).add(row[1])
            return
        if (not key and tag == 'config_ref' and len(row) == 4 and type(row[1]) is int and row[1] in id_set
                and isinstance(row[2], str) and row[2] and row[3] in CONFIG_CLASSES
                and nodes[row[1] - 1].get('class') == row[3]):
            if row[2] in config_references and config_references[row[2]] != (row[1], row[3]):
                raise ValueError('Linked configuration resolves to different native objects')
            config_references[row[2]] = (row[1], row[3])
            references.setdefault(owner, set()).add(row[1])
            return
        if (not key and tag == 'database' and len(row) == 3 and all(isinstance(v, str) and v for v in row[1:])
                and row[2] not in CONFIG_CLASSES):
            return
        raise ValueError('Configuration graph has unknown, truncated or invalid value')

    root_oids = set()
    for root in roots:
        if (not isinstance(root, list) or len(root) != 4 or not isinstance(root[0], str) or not root[0]
                or root[0] in root_oids or root[1] not in CONFIG_CLASSES or not isinstance(root[2], str)):
            raise ValueError('Configuration root identity invalid or duplicated')
        root_oids.add(root[0])
        value(root[3])
        if root[3][0] != 'ref' or nodes[root[3][1] - 1]['class'] != root[1]:
            raise ValueError('Configuration root class mismatch')
    if [root[0] for root in roots] != sorted(root_oids):
        raise ValueError('Configuration root order invalid')
    for node in nodes:
        name = node.get('class')
        if name in ('String', 'ByteArray'):
            payload = 'text' if name == 'String' else 'hex'
            if (set(node) != {'id', 'class', payload} or not isinstance(node[payload], str)
                    or name == 'ByteArray' and not re.fullmatch(r'([0-9a-f]{2})*', node[payload])):
                raise ValueError('Configuration scalar storage invalid')
            continue
        payload = 'entries' if name in ('Dictionary', 'LookupTable') else 'items' if name in ('Array', 'OrderedCollection') else 'fields'
        if name not in CONFIG_CLASSES | SLOT_CLASSES | {'Dictionary', 'LookupTable', 'Array', 'OrderedCollection'}:
            raise ValueError('Unsupported configuration graph node class')
        if set(node) != {'id', 'class', payload} or not isinstance(node[payload], list) or len(node[payload]) > 8192:
            raise ValueError('Configuration node payload invalid')
        keys = set()
        for entry in node[payload]:
            if payload == 'items':
                value(entry, node['id'])
                continue
            if not isinstance(entry, list) or len(entry) != 2:
                raise ValueError('Configuration entry invalid')
            if payload == 'entries':
                value(entry[0], node['id'], key=True)
                key_value = entry[0]
                if key_value[0] == 'ref':
                    key_node = nodes[key_value[1] - 1]
                    key_value = [key_node['class'], key_node.get('text', key_node.get('hex'))]
                identity = json.dumps(key_value, separators=(',', ':'), ensure_ascii=True)
            else:
                if not isinstance(entry[0], str) or not entry[0]:
                    raise ValueError('Configuration slot name invalid')
                identity = entry[0]
            if identity in keys:
                raise ValueError('Duplicate configuration entry')
            keys.add(identity)
            value(entry[1], node['id'])
    reachable, pending = set(), list(references.get(None, ()))
    while pending:
        identity = pending.pop()
        if identity in reachable:
            continue
        reachable.add(identity)
        pending.extend(references.get(identity, ()))
    if reachable != id_set:
        raise ValueError('Configuration graph contains unreachable nodes')
    if (not isinstance(links, list) or any(not isinstance(link, list) or len(link) != 2
            or not isinstance(link[0], str) or not link[0] or link[1] not in CONFIG_CLASSES for link in links)
            or [link[0] for link in links] != sorted({link[0] for link in links})):
        raise ValueError('Linked configuration identities invalid')
    if graph['format'] == 'bde_configuration_graph_v2' and {oid: kind for oid, (_, kind) in config_references.items()} != dict(links):
        raise ValueError('Linked configuration graph identity coverage differs')
    if graph['format'] == 'bde_configuration_graph_v2' and any(config_references.get(root[0]) != (root[3][1], root[1]) for root in roots):
        raise ValueError('Configuration root and raw database object identity differ')
    text = json.dumps(graph, sort_keys=True, separators=(',', ':'), ensure_ascii=True)
    return {'sha256': hashlib.sha256(text.encode('utf-8')).hexdigest(),
            'roots': len(roots), 'nodes': len(nodes), 'float64_values': float_values,
            'coverage': 'exact persisted storage graph; no effective configuration evaluation'}
