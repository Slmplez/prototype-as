"""Bounded Class caller inspection, without capturing full BDE model data."""
import json
import os
from pathlib import Path
import uuid

import bd_service as service
from bd_class_selector import caller_pin_targets, select_formal


def validate_observation(raw, component):
    discovery = raw.get('discovery', {})
    signature = raw.get('signature', {})
    if (raw.get('status') != 'ok' or raw.get('component', '').strip('\\') != component or
        not raw.get('oid') or discovery.get('definition_oid') != raw['oid'] or signature.get('oid') != raw['oid'] or
        signature.get('path', '').strip('\\') != component or not raw.get('database') or
        not raw.get('database_session') or not raw.get('ascet_process_epoch')):
        raise ValueError('Class, endpoint or database identity incomplete')
    if type(raw.get('model_setters_called')) is not int or raw['model_setters_called'] != 0 or raw.get('dirty_before') != 0 or raw.get('dirty_after') != 0:
        raise ValueError('Clean, read-only Class discovery required')
    callers = discovery.get('callers')
    if not isinstance(callers, list) or len(callers) > 256 or not isinstance(discovery.get('excluded'), list):
        raise ValueError('Caller coverage incomplete')
    methods = signature.get('methods')
    if not isinstance(methods, list) or len({row['alias'] for row in methods}) != len(methods):
        raise ValueError('Class method identities incomplete or duplicated')
    method_formals = {}
    void_methods = set()
    all_formal_aliases = set()
    for method in methods:
        if method.get('owner_matches') is not True or not isinstance(method.get('alias'), str):
            raise ValueError('Class method owner mismatch')
        formals = list(method['arguments']) + ([method['return']] if method['return'] else [])
        if any(row.get('owner_matches') is not True or not isinstance(row.get('alias'), str) for row in formals):
            raise ValueError('Class formal owner mismatch')
        for formal in formals:
            if formal['alias'] in all_formal_aliases:
                raise ValueError('Class formal identities duplicated')
            all_formal_aliases.add(formal['alias'])
        method_formals[method['alias']] = {row['alias'] for row in formals}
        if method['return'] is None:
            void_methods.add(method['alias'])
    owner_ids = set()
    for owner in callers:
        if (owner.get('native_class') not in ('SGClass', 'SGModule') or not owner.get('component') or
            not owner.get('oid') or owner['oid'] in owner_ids or owner['oid'] == raw['oid']):
            raise ValueError('Invalid or duplicate caller identity')
        owner_ids.add(owner['oid'])
        declarations = owner.get('declarations')
        if not isinstance(declarations, list) or not declarations:
            raise ValueError('Caller declarations missing')
        refs = {row['ref'] for row in declarations}
        if len(refs) != len(declarations):
            raise ValueError('Duplicate caller declaration')
        scopes = owner.get('scopes')
        if not isinstance(scopes, list) or len({row['diagram'] for row in scopes}) != len(scopes):
            raise ValueError('Caller scopes incomplete or duplicated')
        for scope in scopes:
            nodes = set()
            scope_pins = set()
            for occurrence in scope['occurrences']:
                node = occurrence.get('node')
                if type(node) is not int or node < 0 or node in nodes or occurrence.get('model_ref') not in refs:
                    raise ValueError('Caller occurrence identity incomplete')
                nodes.add(node)
                pins = set()
                for pin in occurrence['pins']:
                    identity = pin.get('id')
                    if type(identity) is not int or identity < 0 or identity in pins or identity in scope_pins:
                        raise ValueError('Caller pin identity missing or duplicated')
                    pins.add(identity)
                    scope_pins.add(identity)
                    if 'position' in pin and (not isinstance(pin['position'], list) or len(pin['position']) != 2 or any(type(v) is not int for v in pin['position'])):
                        raise ValueError('Caller pin position has no exact native coordinates')
                    if type(pin.get('input')) is not bool or type(pin.get('output')) is not bool or not isinstance(pin.get('method_alias'), str):
                        raise ValueError('Caller pin binding incomplete')
                    aliases = method_formals.get(pin['method_alias'])
                    void_call = (pin['method_alias'] in void_methods and pin.get('formal_alias') == pin['method_alias']
                                 and pin['input'] is False and pin['output'] is False)
                    if aliases is None or (pin.get('formal_alias') is not None and pin['formal_alias'] not in aliases and not void_call):
                        raise ValueError('Caller pin does not bind to the observed Class signature')
    return discovery


def project_formal(raw, selector):
    method, formal = select_formal(raw['signature'], selector)
    targets = caller_pin_targets(raw['discovery'], selector)
    return {'selector': selector, 'method': {k: method[k] for k in ('alias', 'name', 'diagram')},
        'formal': formal, 'caller_pin_targets': targets,
        'observed_callers': len(raw['discovery']['callers']), 'matched_callers': len({r['oid'] for r in targets}),
        'definition_occurrences': 'not_collected; requires structure read of the definition scopes',
        'incident_edges': 'not_collected; requires structure reads of affected caller scopes',
        'signature_observation_sha256': service.digest(service.dump(raw['signature']).encode()),
        'caller_observation_sha256': service.digest(service.dump(raw['discovery']).encode()),
        'fingerprint_coverage': 'collected signature and direct caller bindings only; not full types/configuration or a write precondition'}


def capture_raw(component):
    """Caller owns the live lock, including helper shutdown."""
    component = component.strip('\\')
    if '\\' not in component or not 1 <= len(component) <= 2048:
        service.fail('INVALID_INPUT', 'Full Class component path required')
    sources = [service.ROOT / 'scripts' / name for name in ('AscetClassImpactRead.cs', 'AscetStructureRead.cs',
        'bde_database_identity.st', 'bde_class_interface_probe.st', 'bde_class_callers.st')]
    binary = service.ROOT / 'analysis/live-api/AscetClassImpactRead.exe'
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    raw_path = service.STORE / 'raw' / ('class_impact_' + uuid.uuid4().hex + '.json')
    service.ensure_probe()
    if not binary.exists() or binary.stat().st_mtime < max(path.stat().st_mtime for path in sources + [dll]):
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        service.run_process([str(compiler), '/nologo', '/platform:x86', '/main:AscetClassImpactRead',
            '/r:System.Web.Extensions.dll', f'/r:{dll}', f'/out:{binary}',
            *[f'/resource:{p},{p.name}' for p in sources if p.suffix == '.st'],
            *[str(p) for p in sources if p.suffix == '.cs']], 30, build_step=True)
    try:
        service.run_process([str(binary), component, str(raw_path)], 20)
    except service.ToolError as error:
        service.fail(error.code, str(error), raw_result=str(raw_path), **error.details)
    try:
        raw = json.loads(raw_path.read_text(encoding='utf-8'))
        discovery = validate_observation(raw, component)
    except (OSError, ValueError, KeyError, TypeError) as error:
        service.fail('READ_INCOMPLETE', str(error), raw_result=str(raw_path))
    return raw, discovery, raw_path


def inspect(args, session, budget):
    if set(args) - {'query', 'component', 'max_bytes', 'selector'} or not isinstance(args.get('component'), str):
        service.fail('INVALID_INPUT', 'class_callers requires component and optional exact selector/max_bytes')
    component = args['component'].strip('\\')
    with service.live_lock():
        raw, discovery, raw_path = capture_raw(component)
    data = {key: raw[key] for key in ('component', 'oid', 'database', 'ascet_process_epoch', 'database_session',
                                     'signature', 'discovery', 'elapsed_ms', 'observed_at_utc', 'model_setters_called')}
    data.update({'query': 'class_callers', 'editable_refs': False,
        'coverage': 'direct persisted DBProxy references with SGClass/SGModule declarations; bounded recursive ordinary BDE occurrences',
        'sampling': 'signature and caller bindings sampled twice; native database identity checked; not an atomic snapshot',
        'not_collected': ['caller full dataflow/layout', 'runtime delivery and effective instance configuration',
                          'transitive caller closure and other reference backends'],
        'raw_sha256': service.digest(raw_path.read_bytes()), 'raw_result': str(raw_path)})
    meta = {key: data[key] for key in ('query', 'component', 'oid', 'database', 'ascet_process_epoch', 'editable_refs')}
    meta.update({'read_strategy': 'fixed_native_class_signature_and_callers', 'live_read': True,
                 'callers': len(discovery['callers']), 'model_setters_called': 0})
    if 'selector' in args:
        try:
            data['selected_formal'] = project_formal(raw, args['selector'])
        except (ValueError, KeyError, TypeError) as error:
            service.fail('TARGET_NOT_FOUND', str(error), raw_result=str(raw_path))
        data.pop('signature')
        data.pop('discovery')
        data['projection'] = 'selected formal and exact direct caller pins; raw evidence retains complete bounded discovery'
        meta['projection'] = 'selected_formal'
    return service.paged(service.dump(data), meta, session, budget)
