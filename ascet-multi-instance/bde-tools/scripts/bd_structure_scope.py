"""Canonical scope paths for retained root BlockDiagram structures."""
import re

CHILD_OPERATIONS = ('connect_data', 'disconnect_data', 'rewire_data', 'create_block', 'delete_node',
                    'set_literal', 'set_comment', 'move_node', 'set_edge_route',
                    'create_hierarchy_port', 'delete_hierarchy_port')
CHILD_CREATION_KINDS = ('literal', 'comment', 'operator', 'variable', 'parameter', 'constant',
                        'receive_message', 'send_message', 'send_receive_message', 'enumeration', 'component')


def valid_diagram(value):
    if not isinstance(value, str) or not re.fullmatch(r'Main(?:/h(?:0|[1-9][0-9]{0,9})){0,16}', value):
        return False
    return all(int(part[1:]) <= 2147483647 for part in value.split('/')[1:])


def diagram_of(record):
    return record['structure'].get('diagram', 'Main')


def qualify(record, ref):
    return diagram_of(record) + '/' + ref
