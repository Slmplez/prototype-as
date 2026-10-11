"""Restore one known partial literal move, then certify the exact applied Class baseline."""
import argparse
from collections import Counter
from copy import deepcopy
import json
import os
from pathlib import Path
import shutil
import subprocess
import traceback

import bd_service as service
import bd_class_tools as class_tools
import bd_instance_pending as pending
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_isolated_runtime import live_manifest
from bde_tool_client import ToolClient
import bde_experiments as bench


def expected_partial_move(applied, request, inspection):
    expected = deepcopy(applied)
    owners = [owner for owner in expected['owners'] if owner['component'] == request['component']]
    if len(owners) != 1 or request['diagram'] != 'Main':
        raise ValueError('Unique complete Main caller baseline required')
    graph = owners[0]['scopes']['Main']
    target = request['arguments'][1]
    current = inspection['native_recovery_status']['current']
    rows = {row['ref']: row for row in current['entries']}
    original_rows = {row['ref']: row for row in graph['entries']}
    node = original_rows[target]
    known = rows[target]
    if (node['native_class'] != 'SGLiteralGO' or node['anchor'] != [100, 320]
            or known['anchor'] != [140, 360] or request['arguments'][2:] != [137, 361]
            or known['pins'] != node['pins'] or known['literal'] != node['literal']):
        raise ValueError('Exact recorded literal move profile required')
    for name in ('anchor', 'position', 'size'):
        node[name] = deepcopy(known[name])
    for edge in graph['entries']:
        if edge['kind'] != 'edge' or edge['source'] not in node['pins']:
            continue
        matches = [row for row in rows.values() if row['kind'] == 'edge'
                   and (row['source'], row['target'], row['type']) ==
                   (edge['source'], edge['target'], edge['type'])]
        if len(matches) != 1:
            raise ValueError('Unique recorded incident edge required')
        edge['route'] = deepcopy(matches[0]['route'])
    callers = [caller for caller in expected['observation']['callers']
               if caller['component'] == request['component']]
    if len(callers) != 1:
        raise ValueError('Complete independent caller geometry witness required')
    caller = callers[0]
    public_nodes = [row for row in caller['public_tree']['Main']['nodes'] if 'n' + str(row['id']) == target]
    if len(public_nodes) != 1:
        raise ValueError('Unique independent public literal required')
    public_nodes[0]['position'] = deepcopy(known['position'])
    public_nodes[0]['size'] = deepcopy(known['size'])
    for edge in caller['public_tree']['Main']['edges']:
        source_pin = 'p' + str(edge['source']['native']['id'])
        if source_pin not in node['pins']:
            continue
        target_pin = 'p' + str(edge['target']['native']['id'])
        matches = [row for row in rows.values() if row['kind'] == 'edge'
                   and (row['source'], row['target'], row['type']) ==
                   (source_pin, target_pin, edge['type'])]
        if len(matches) != 1:
            raise ValueError('Unique independent public incident edge required')
        edge['route'] = deepcopy(matches[0]['route'])
        caller['public_connected_pin_positions']['Main/' + source_pin] = deepcopy(edge['route'][0])
    return expected


def partial_move_values_match(expected, actual, component):
    left, right = deepcopy(expected), deepcopy(actual)
    left_owners = [owner for owner in left['owners'] if owner['component'] == component]
    right_owners = [owner for owner in right['owners'] if owner['component'] == component]
    if len(left_owners) != 1 or len(right_owners) != 1:
        return False
    for owner in (left_owners[0], right_owners[0]):
        graph = owner['scopes']['Main']
        graph.pop('generation')
        edges, members = [], []
        for row in graph['entries']:
            if row['kind'] == 'edge':
                edges.append({key: value for key, value in row.items() if key != 'ref'})
            else:
                members.append(row)
        graph['entries'] = sorted(members, key=lambda row: row['ref'])
        graph['edge_value_multiset'] = sorted(Counter(fingerprint(row) for row in edges).items())
    return left == right


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--source', type=Path, required=True)
    parser.add_argument('--inspection', type=Path, required=True)
    parser.add_argument('--change-id', required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--execute-from', type=Path)
    args = parser.parse_args()
    manifest, _, epoch = live_manifest(args.manifest)
    source, inspection_path, output = args.source.resolve(), args.inspection.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    paths = (source, inspection_path, output) + ((args.execute_from.resolve(),) if args.execute_from else ())
    if (any(not path.is_relative_to(owned) for path in paths)
            or any(output.is_relative_to(path) or path.is_relative_to(output)
                   for path in paths if path != output)):
        raise ValueError('Separate owned immutable recovery evidence required')
    events = StructureJournal(source / 'state/edits').read(args.change_id)
    request = events[0]['payload']
    if (events[-1]['payload'].get('status') != 'outcome_unknown' or request['operation'] != 'move_node'
            or request['domain']['process_epoch'] != epoch
            or request['domain']['database'].lower() != manifest['database'].lower()):
        raise ValueError('Exact unresolved same-runtime move required')
    failure = class_tools.load(source / 'result.json')
    class_id = failure['rounds'][0]['change_id']
    raw = class_tools.load(source / 'state/class-edits' / class_id / 'raw.json')
    applied = class_tools.observation(raw, 'after')
    inspection = class_tools.load(inspection_path / 'result.json')
    if (inspection.get('passed') is not True or inspection['change_id'] != args.change_id
            or inspection['process_epoch'] != epoch or not inspection['pending_marker_unchanged']
            or inspection['native_recovery_status']['state'] != 'started'):
        raise ValueError('Exact successful setter-free partial-state inspection required')
    expected = expected_partial_move(applied, request, inspection)
    marker = pending.pending_path(request['domain'])
    original_marker = marker.read_bytes()
    marker_value = json.loads(original_marker)
    if (marker_value['native_token'] != args.change_id or marker_value['command'] != 'apply'
            or marker_value['domain'] != request['domain']):
        raise ValueError('Original unresolved-move quarantine required')
    files = ('AscetStructureRead.cs', 'AscetStructureSession.cs', 'AscetStructureExperiment.cs',
             'bde_structure_read.st', 'bde_session_guard.st', 'bde_native_graph_current.st',
             'bde_retained_move_restore.st', 'bde_retained_move_restoration.py')
    source_hashes = {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in files}
    immutable = lambda: {str(path.relative_to(source)): service.digest(path.read_bytes())
                         for path in source.rglob('*') if path.is_file()}
    output.mkdir(parents=True, exist_ok=False)
    result = {'passed': False, 'restored_move': False, 'full_delivery': False,
              'class_apply_remains_outstanding': True, 'automatic_retry': False,
              'model_mutation_dispatched': False, 'source': str(source), 'process_epoch': epoch,
              'source_token': args.change_id, 'class_apply': class_id, 'source_manifest': source_hashes,
              'original_hashes': immutable(), 'pending_sha256': service.digest(original_marker),
              'tool_calls': [], 'scope': __doc__}
    service.STORE = output / 'state'
    for name in ('raw', 'snapshots', 'changes', 'documents', 'cursors', 'delivery'):
        (service.STORE / name).mkdir(parents=True, exist_ok=True)
    client = ToolClient(output, 'move-recovery-' + output.name, result['tool_calls'].append)
    client.env.update(ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_CLASS_IMPACT_UPSTREAM_PORT=str(manifest['port']),
        ASCET_BD_PROBE_PORT=str(manifest['port']), ASCET_BD_CLASS_OBSERVATION_MODE='public_oracle',
        ASCET_BD_CLASS_QUERY_CACHE='0', ASCET_BD_CLASS_OBSERVATION_BATCH='0',
        ASCET_BD_CLASS_CONFIGURATION_GUARD='0')
    log = Path(manifest['logs']) / 'crash.log'
    initial_log = log.read_bytes()

    def save():
        temporary = output / 'result.tmp'
        temporary.write_text(json.dumps(result, indent=2), encoding='utf-8')
        temporary.replace(output / 'result.json')

    def read_class():
        head, body, error = client.call('bd_read', {'component': raw['component'],
            'view': 'class_interface', 'max_bytes': 8192})
        if error:
            raise ValueError(body)
        record = service.load_record(head['snapshot'], 's_', 'snapshots')
        if record['ascet_process_epoch'] != epoch or record['dirty_editors'] != [0, 0]:
            raise ValueError('Complete same-runtime clean Class observation required')
        return record['class_interface']

    save()
    try:
        result['before'] = read_class()
        result['known_partial_values_match'] = partial_move_values_match(expected, result['before'], request['component'])
        if not result['known_partial_values_match']:
            raise ValueError('Current full Class signature/owners/configuration differs from the exact known partial move')
        binary = output / 'AscetRetainedMoveRestoration.exe'
        built = subprocess.run(['C:/Windows/Microsoft.NET/Framework/v4.0.30319/csc.exe', '/nologo',
            '/platform:x86', '/main:AscetStructureSession', '/define:BDE_MOVE_RECOVERY_EVAL',
            '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', '/r:System.Web.Extensions.dll', '/out:' + str(binary),
            *['/resource:' + str(service.ROOT / 'scripts' / name) + ',' + name for name in files if name.endswith('.st')],
            *[str(service.ROOT / 'scripts' / name) for name in files if name.endswith('.cs')]],
            capture_output=True, text=True, timeout=30)
        result['build'] = {'exit_code': built.returncode, 'stdout': built.stdout, 'stderr': built.stderr}
        if built.returncode:
            raise ValueError('Fixed restoration bridge compilation failed')
        shutil.copyfile('E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', output / 'Etas.AscetNET.dll')

        class RecoveryAdapter(NativeStructureAdapter):
            build = staticmethod(lambda: binary)

        prior = None
        if args.execute_from:
            prior = class_tools.load(args.execute_from.resolve() / 'result.json')
            if (prior.get('passed') is not True or prior['model_mutation_dispatched'] is not False
                    or prior['source_token'] != args.change_id or prior['process_epoch'] != epoch
                    or prior['source_manifest'] != source_hashes or prior['pending_sha256'] != result['pending_sha256']):
                raise ValueError('Exact successful unchanged native preparation required; never replay an execute')
            token = prior['restoration_token']
        else:
            token = 'edit_' + fingerprint({'kind': 'known_partial_literal_move_restoration',
                'source': args.change_id, 'class_apply': class_id, 'output': output.name})
        result['restoration_token'] = token
        command = {'cmd': 'retained_move_restore', 'token': args.change_id, 'restoration_token': token}
        with service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            env = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']), ASCET_BD_PROBE_PORT=str(wire['port']))
            with RecoveryAdapter(request['component'], environment=env) as adapter:
                adapter._ensure_open(request['domain'])
                prepared = prior['prepared'] if prior else adapter._exchange({**command, 'action': 'prepare'})
                result['prepared'] = prepared
                command['prepared_signature'] = prepared['prepared_signature']
                result['checked'] = adapter._exchange({**command, 'action': 'check'})
                save()
                if args.execute_from:
                    if marker.read_bytes() != original_marker or immutable() != result['original_hashes']:
                        raise ValueError('Original unknown evidence changed before dispatch')
                    service.write_once(output / 'restoration-started.json', {'source_token': args.change_id,
                        'restoration_token': token, 'prepared_sha256': fingerprint(prepared), 'automatic_retry': False})
                    result['model_mutation_dispatched'] = True
                    save()
                    result['restored'] = adapter._exchange({**command, 'action': 'execute'})
                    restored = result['restored']
                    if (restored['state'] != 'restored' or not restored['class_after_current_bindings_match']
                            or not restored['stored_complete_layout_source_matches'] or not restored['source_record_unchanged']):
                        raise ValueError('Complete exact original native move compensation failed')
                result['commands'] = list(adapter.commands)
            result['wire'] = {'requests': wire['request'].result(), 'responses': wire['response'].result(),
                              'errors': wire['errors']}
        if args.execute_from:
            result['after'] = read_class()
            result['exact_complete_class_applied_baseline_matches'] = result['after'] == applied
            if not result['exact_complete_class_applied_baseline_matches']:
                raise ValueError('Full independent public/native/configuration applied Class baseline not restored')
            result['restored_move'] = True
            service.write_once(output / 'restoration-verified.json', result)
            if marker.read_bytes() != original_marker or immutable() != result['original_hashes']:
                raise ValueError('Original failure files or marker changed before verified release')
            pending.confirmed(marker)
            result['pending_cleared_after_complete_verification'] = True
        live_manifest(args.manifest)
        result['passed'] = not result['wire']['errors'] and (not args.execute_from or result['restored_move'])
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        current_log = log.read_bytes()
        result['crash_log_append_only'] = current_log.startswith(initial_log)
        appended = current_log[len(initial_log):] if result['crash_log_append_only'] else current_log
        (output / 'crash-log-appended.txt').write_bytes(appended)
        result['new_assertion_count'] = appended.count(b'Dumping walkback to file:')
        result['original_files_unchanged'] = immutable() == result['original_hashes']
        result['source_drift'] = [name for name, digest in source_hashes.items()
                                  if service.digest((service.ROOT / 'scripts' / name).read_bytes()) != digest]
        result['passed'] = (result['passed'] and result['original_files_unchanged'] and not result['source_drift']
                            and result['crash_log_append_only'] and result['new_assertion_count'] == 0)
        save()
    print(json.dumps({key: result.get(key) for key in
                      ('passed', 'error', 'restored_move', 'model_mutation_dispatched', 'original_files_unchanged')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
