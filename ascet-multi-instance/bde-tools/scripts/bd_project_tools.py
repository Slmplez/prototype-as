"""Bounded Project message observations; refs are evidence, never write targets."""
import json
import os
from pathlib import Path
import uuid

import bd_service as service
from bd_interface_document import FORMAT, encode
from bd_project_messages import analyze_messages, declaration_key, validate_instances


UNCOLLECTED = ['instance descendants beyond the reported depth or recursive stop', 'Class method body dataflow', 'BDE connections and layout',
              'execution tasks and runtime delivery', 'database reopen and graph reload lifecycle',
              'independent native compatibility candidate oracle']


def capture(project, session):
    if not isinstance(project, str) or '\\' not in project or len(project) > 2048:
        service.fail('INVALID_INPUT', 'Full Project path required')
    source = service.ROOT / 'scripts/AscetProjectMessagesRead.cs'
    shared = service.ROOT / 'scripts/AscetStructureRead.cs'
    template = service.ROOT / 'scripts/bde_project_messages.st'
    identity = service.ROOT / 'scripts/bde_database_identity.st'
    binary = service.ROOT / 'analysis/live-api/AscetProjectMessagesRead.exe'
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    sid = 's_' + uuid.uuid4().hex
    raw_path = service.STORE / 'raw' / f'{sid}.json'
    with service.live_lock():
        service.ensure_probe()
        if not binary.exists() or binary.stat().st_mtime < max(p.stat().st_mtime for p in (source, shared, template, identity, dll)):
            compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
            service.run_process([str(compiler), '/nologo', '/platform:x86', f'/r:{dll}',
                '/r:System.Web.Extensions.dll', f'/resource:{template},bde_structure_read.st',
                f'/resource:{identity},bde_database_identity.st',
                '/main:AscetProjectMessagesRead', f'/out:{binary}', str(shared), str(source)], 30, build_step=True)
        service.run_process([str(binary), project, '-', str(raw_path), 'all', '--native-only'], 30)
        raw_bytes = raw_path.read_bytes()
        raw = json.loads(raw_bytes)
        if raw.get('status') != 'ok' or raw['project'].strip('\\') != project.strip('\\'):
            service.fail('READ_INCOMPLETE', 'Project message capture failed')
        data = raw['structure']
        if data.get('target_guard') != 'passed' or data.get('editable_refs') is not False:
            service.fail('READ_INCOMPLETE', 'Project read-only target guard missing')
        try:
            analysis = analyze_messages(data)
            record = {'snapshot': sid, 'session': session, 'source': 'native_project_messages_v2',
                'scope': {'profile': 'project_messages_v2', 'messages': 'all', 'module_instances': 'bounded_alias_chains', 'instance_depth_limit': data['instance_depth_limit']},
                'project_messages': data, 'message_bindings': analysis,
                'counts': {key: len(data[key]) for key in ('modules', 'declarations', 'bindings')},
                'database': raw['database'], 'component': raw['project'], 'oid': raw['project_oid'],
                'ascet_process_epoch': raw['ascet_process_epoch'], 'observed_at_utc': raw['observed_at_utc'],
                'database_session_identity': raw['database_session'],
                'database_identity_basis': raw['database_identity_basis'], 'database_reload_identity': 'not_verified',
                'editable_refs': False, 'document_format': FORMAT,
                'dirty_editors': [raw['dirty_before'], raw['dirty_after']], 'unresolved_bindings': UNCOLLECTED,
                'raw_sha256': service.digest(raw_bytes), 'read_strategy': raw['read_strategy'],
                'sampling': 'one bounded native query; not an atomic database snapshot'}
            record['logic'] = render(record)
        except (ValueError, KeyError, TypeError) as error:
            service.fail('READ_INCOMPLETE', f'Project message validation failed: {error}')
        record['integrity_sha256'] = service.digest(record)
        service.commit_observation(record)
        return record


def declaration_ref(row):
    return ('message:' if row['message'] else 'declaration:') + row['owner_oid'] + '/' + service.digest(row['alias'])[:24]


def entities(record):
    data = record['project_messages']
    result = {}
    module_refs = {}
    instance_refs = {}

    def add(ref, kind, name, fields):
        if ref in result:
            raise ValueError('Duplicate Project reference')
        result[ref] = {'ref': ref, 'key': record['oid'] + '/' + ref, 'kind': kind, 'name': name,
                       'fields': {**fields, 'editable': False}}

    for row in sorted(data['modules'], key=lambda row: row['alias']):
        ref = 'module_instance:' + service.digest(row['alias'])[:24]
        module_refs[row['alias']] = ref
        instance_refs[(row['alias'],)] = ref
        add(ref, 'interface', row['name'], {**row, 'interface_kind': 'project_module_instance',
            'project_oid': record['oid'], 'instance_chain': [row['alias']], 'nested_instances': 'not_collected'})
    for chain, row in sorted(validate_instances(data, record['oid']).items()):
        if len(chain) == 1:
            result[module_refs[chain[0]]]['fields'].update(row, instance_chain=row['chain'], nested_instances=row['expansion'])
        else:
            ref = 'component_instance:' + service.digest(row['chain'])[:24]
            instance_refs[chain] = ref
            add(ref, 'interface', row['name'], {**row, 'interface_kind': 'project_component_instance',
                'project_oid': record['oid'], 'instance_chain': row['chain'], 'parent_ref': instance_refs[chain[:-1]]})

    # Lookup buckets can include declarations outside the enumerated Module definitions.
    # Keep them with explicit membership, including an inconsistent native selection.
    declarations = {}
    memberships = {}
    for row in data['declarations']:
        key = declaration_key(row)
        declarations[key] = row
        memberships[key] = 'enumerated_module_definition'
    for binding in data['bindings']:
        for row in [*binding['label_candidates'], *binding['candidates'],
                    *([binding['native_selected']] if binding['native_selected'] is not None else [])]:
            key = declaration_key(row)
            if key in declarations and declarations[key] != row:
                raise ValueError('Inconsistent declaration evidence for the same identity')
            declarations[key] = row
            memberships.setdefault(key, 'lookup_evidence_only')
    for key, row in sorted(declarations.items()):
        add(declaration_ref(row), 'message' if row['message'] else 'model', row['name'], {**row, 'membership': memberships[key],
            'owner_instances': [module_refs[m['alias']] for m in sorted(data['modules'], key=lambda r: r['alias'])
                                if m['definition_oid'] == row['owner_oid']]})
    raw_bindings = {declaration_key(row['import']): row for row in data['bindings']}
    for row in sorted(record['message_bindings']['bindings'], key=lambda row: declaration_key(row['import'])):
        raw = raw_bindings[declaration_key(row['import'])]
        ref = 'message_binding:' + service.digest(declaration_key(row['import']))[:24]
        add(ref, 'interface', row['import']['name'], {**row, 'interface_kind': 'project_message_binding',
            'import_ref': declaration_ref(row['import']),
            'candidate_refs': [declaration_ref(item) for item in row['candidates']],
            'label_candidate_refs': sorted(declaration_ref(item) for item in raw['label_candidates']),
            'native_selected_ref': None if row['native_selected'] is None else declaration_ref(row['native_selected']),
            'import_instance_refs': [module_refs[alias] for alias in row['import_owner_instances']],
            'candidate_instance_refs': [[module_refs[alias] for alias in aliases] for aliases in row['candidate_owner_instances']]})
        if 'instances' in data:
            result[ref]['fields']['import_instance_refs'] = [instance_refs[tuple(chain)] for chain in row['import_owner_chains']]
            result[ref]['fields']['candidate_instance_refs'] = [[instance_refs[tuple(chain)] for chain in chains] for chains in row['candidate_owner_chains']]
    return result


def render(record):
    selected = ('owner_oid', 'alias', 'scope', 'imported', 'exported', 'send', 'receive', 'send_receive',
        'global_label', 'membership', 'owner_instances', 'definition_oid', 'definition_path', 'interface_kind',
        'instance_chain', 'name_chain', 'expansion', 'instance_kind', 'parent_ref', 'nested_instances', 'status', 'instance_resolution', 'import_ref', 'candidate_refs',
        'label_candidate_refs', 'native_selected_ref', 'import_instance_refs', 'candidate_instance_refs')
    return encode([{'ref': row['ref'], 'kind': row['kind'], 'name': row['name'],
                   **{key: row['fields'][key] for key in selected if key in row['fields']}}
                  for row in entities(record).values()])


def inspect(record, args):
    available = entities(record)
    bindings = [row for row in available.values() if row['fields'].get('interface_kind') == 'project_message_binding']
    result = []
    for target in args['targets']:
        if target not in available:
            service.fail('TARGET_NOT_FOUND', f'Unknown Project reference: {target}')
        row = available[target]
        if row['kind'] in ('message', 'model'):
            relations = [item['fields'] for item in bindings if target in
                         [item['fields']['import_ref'], *item['fields']['candidate_refs'],
                          *item['fields']['label_candidate_refs'], item['fields']['native_selected_ref']]]
            result.append({'ref': target, 'declaration': row['fields'], 'bindings': relations})
        else:
            result.append({'ref': target, 'fields': row['fields']})
    return {'results': result, 'editable': False, 'scope': record['scope'], 'not_collected': UNCOLLECTED}
