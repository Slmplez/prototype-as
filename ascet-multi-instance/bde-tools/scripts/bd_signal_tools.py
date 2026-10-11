"""Read-only interface snapshots and observed paths for the six BDE tools."""
from collections import Counter
import json
import os
from pathlib import Path
import uuid

import bd_service as service
from bd_signal_interfaces import class_bindings, graph_index, hierarchy_bindings, pin_ref, signal_path
from bd_interface_document import FORMAT, encode
from bd_class_body import formal_body_bindings


UNCOLLECTED = ['Project message bindings and Module instance chains', 'Class method body dataflow',
               'configuration and layout', 'execution schedule and runtime delivery',
               'database reopen and graph reload lifecycle']


def capture(component, session):
    if not isinstance(component, str) or '\\' not in component or len(component) > 2048:
        service.fail('INVALID_INPUT', 'Full component path required')
    source = service.ROOT / 'scripts/AscetStructureRead.cs'
    template = service.ROOT / 'scripts/bde_signal_interfaces.st'
    identity = service.ROOT / 'scripts/bde_database_identity.st'
    binary = service.ROOT / 'analysis/live-api/AscetSignalInterfaces.exe'
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    sid = 's_' + uuid.uuid4().hex
    raw_path = service.STORE / 'raw' / f'{sid}.json'
    with service.live_lock():
        service.ensure_probe()
        if not binary.exists() or binary.stat().st_mtime < max(p.stat().st_mtime for p in (source, template, identity, dll)):
            compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
            service.run_process([str(compiler), '/nologo', '/platform:x86', f'/r:{dll}',
                '/r:System.Web.Extensions.dll', f'/resource:{template},bde_structure_read.st',
                f'/resource:{identity},bde_database_identity.st',
                f'/out:{binary}', str(source)], 30, build_step=True)
        service.run_process([str(binary), component, 'Main', str(raw_path), 'all'], 30)
        raw_bytes = raw_path.read_bytes()
        raw = json.loads(raw_bytes)
        if raw.get('status') != 'ok' or raw['component'].strip('\\') != component.strip('\\'):
            service.fail('READ_INCOMPLETE', 'Interface capture failed')
        data = raw['structure']
        try:
            graph_index(data)
            classes = class_bindings(data)
            hierarchy = hierarchy_bindings(data)
        except (ValueError, KeyError, TypeError) as error:
            service.fail('READ_INCOMPLETE', f'Interface validation failed: {error}')
        body_bindings = formal_body_bindings(data)
        record = {'snapshot': sid, 'session': session, 'source': 'native_signal_interfaces_v1',
            'scope': {'profile': 'signal_interfaces_v1', 'diagram': 'Main', 'definitions': 'interfaces_only',
                      'hierarchy_depth_limit': 8},
            'interfaces': data, 'interface_bindings': {'classes': classes, 'hierarchy': hierarchy, 'formal_body': body_bindings},
            'counts': {key: len(data[key]) for key in ('models', 'formals', 'definitions', 'nodes', 'pins', 'edges')},
            'database': raw['database'], 'component': raw['component'], 'oid': raw['oid'],
            'ascet_process_epoch': raw['ascet_process_epoch'], 'observed_at_utc': raw['observed_at_utc'],
            'database_session_identity': raw['database_session'],
            'database_identity_basis': raw['database_identity_basis'], 'database_reload_identity': 'not_verified',
            'editable_refs': False, 'document_format': FORMAT,
            'dirty_editors': [raw['dirty_before'], raw['dirty_after']], 'unresolved_bindings': UNCOLLECTED,
            'raw_sha256': service.digest(raw_bytes), 'read_strategy': 'fixed_native_interface_block',
            'sampling': 'one bounded native query; not an atomic database snapshot'}
        try:
            record['logic'] = render(record)
        except (ValueError, KeyError, TypeError) as error:
            service.fail('READ_INCOMPLETE', f'Interface reference validation failed: {error}')
        record['integrity_sha256'] = service.digest(record)
        service.commit_observation(record)
        return record


def entities(record):
    data = record['interfaces']
    _, pins = graph_index(data)
    result = {}
    declaration_refs = {}

    def add(ref, kind, name, fields):
        if ref in result:
            raise ValueError('Duplicate interface reference')
        result[ref] = {'ref': ref, 'key': record['oid'] + '/' + ref, 'kind': kind,
                       'name': name, 'fields': {**fields, 'editable': False}}

    def alias_ref(prefix, alias):
        return prefix + service.digest(alias)[:16]

    for row in data['models']:
        ref = alias_ref('declaration:', row['alias'])
        add(ref, 'message' if row['message'] else 'model', row['name'], row)
        declaration_refs[row['alias']] = ref
    for prefix, rows in [('formal:', data['formals']),
                         *[(f"definition:{definition['oid']}/formal:", definition['formals']) for definition in data['definitions']]]:
        for row in rows:
            ref = alias_ref(prefix, row['alias'])
            add(ref, 'interface', row['name'], row)
            if prefix == 'formal:':
                declaration_refs[row['alias']] = ref
    for row in data['definitions']:
        add('definition:' + row['oid'], 'interface', row['path'],
            {key: value for key, value in row.items() if key != 'formals'})
    for row in data['nodes']:
        fields = {**row}
        if row.get('model_alias') in declaration_refs:
            fields['model_ref'] = declaration_refs[row['model_alias']]
        add(f"{row['scope']}/n{row['id']}", 'node', row.get('name', row.get('model_name', row['native_class'])), fields)
    for row in data['pins']:
        add(pin_ref(row), 'pin', row['name'], row)
    # Connection identifiers may be -1. Compare semantic multisets and keep
    # record indexes only as immutable evidence, never as editable identities.
    edges = Counter(service.dump({key: row[key] for key in ('scope', 'source', 'target', 'type')}) for row in data['edges'])
    for value, multiplicity in sorted(edges.items()):
        row = json.loads(value)
        source = pin_ref(pins[(row['scope'], row['source'])])
        target = pin_ref(pins[(row['scope'], row['target'])])
        ref = 'connection:' + service.digest(row)[:16]
        add(ref, 'edge', source + ' -> ' + target, {**row, 'source_ref': source, 'target_ref': target, 'multiplicity': multiplicity})
    for row in record['interface_bindings']['hierarchy']['bindings']:
        add('boundary:' + row['external'], 'interface', row['external'], row)
    for row in record['interface_bindings']['classes']['bindings']:
        pin = pins[(row['scope'], row['pin_id'])]
        fields = {**row}
        if row.get('interface_kind') == 'method_formal':
            fields['formal_ref'] = alias_ref(f"definition:{row['definition_oid']}/formal:", row['formal_alias'])
        add('class_binding:' + pin_ref(pin), 'interface', pin['name'], fields)
    for row in record['interface_bindings'].get('formal_body', {}).get('bindings', []):
        fields = {**row, 'interface_kind': 'formal_body_access',
                  'formal_ref': alias_ref('formal:', row['formal_alias'])}
        add('formal_body:' + row['pin'], 'interface', row['formal']['name'], fields)
    return result


def render(record):
    selected = {
        'node': ('hierarchy', 'hierarchy_pin', 'definition_oid', 'model_name', 'model_ref'),
        'pin': ('input', 'output', 'method_name', 'sequence'),
        'edge': ('source_ref', 'target_ref', 'type', 'multiplicity'),
        'model': ('scope', 'complex', 'model_type', 'definition_oid'),
        'message': ('scope', 'imported', 'exported', 'send', 'receive', 'send_receive', 'model_type', 'global_label'),
        'interface': ('status', 'reason', 'external', 'internal', 'source', 'target', 'direction',
                      'definition_oid', 'interface_kind', 'formal_ref', 'scope', 'instance_node_id', 'pin_id',
                      'method_name', 'argument', 'return', 'local', 'in', 'out', 'in_out', 'access', 'path'),
    }
    return encode([{'ref': row['ref'], 'kind': row['kind'], 'name': row['name'],
        **({'relation_kind': row['fields']['kind']} if 'kind' in row['fields'] else {}),
        **{key: row['fields'][key] for key in selected[row['kind']] if key in row['fields']}}
        for row in entities(record).values()])


def inspect(record, args):
    if 'interfaces' not in record:
        service.fail('INCOMPATIBLE_SCOPE', 'This query requires a view=interfaces snapshot')
    targets = args['targets']
    try:
        if args['query'] == 'signal_path':
            return signal_path(record['interfaces'], *targets)
        available = entities(record)
        bindings = record['interface_bindings']
        result = []
        for target in targets:
            if target not in available:
                service.fail('TARGET_NOT_FOUND', f'Unknown interface reference: {target}')
            kind = available[target]['kind']
            if kind == 'pin':
                relations = [row for row in bindings['hierarchy']['bindings']
                             if target in (row['external'], row.get('internal'))]
                relations += [row for row in bindings['classes']['bindings']
                              if target == f"{row['scope']}/n{row['instance_node_id']}.p{row['pin_id']}"]
                relations += [row for row in bindings.get('formal_body', {}).get('bindings', []) if target == row['pin']]
                matched = all(row['status'] in ('matched_native_identity', 'matched_native_aliases', 'matched_formal_body_access') for row in relations)
                result.append({'ref': target, 'bindings': relations,
                               'status': ('collected' if matched else 'unresolved') if relations else 'no_interface_binding_in_collected_relations'})
            elif kind == 'interface':
                result.append({'ref': target, 'fields': available[target]['fields']})
            elif kind == 'message':
                result.append({'ref': target, 'declaration': available[target]['fields'],
                               'project_binding': 'not_collected'})
            else:
                service.fail('INVALID_INPUT', 'interface_binding requires pin, interface or message references')
        return {'results': result, 'editable': False, 'not_collected': UNCOLLECTED}
    except (ValueError, KeyError, TypeError) as error:
        service.fail('INVALID_INPUT', str(error))
