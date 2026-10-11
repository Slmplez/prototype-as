"""Inspect an unresolved isolated move without setters, retries or reconciliation."""
import argparse
import json
import os
from pathlib import Path
import shutil
import subprocess
import traceback

import bd_service as service
import bd_instance_pending as pending
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_isolated_runtime import live_manifest
import bde_experiments as bench


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--source', type=Path, required=True)
    parser.add_argument('--change-id', required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--retained-material', action='store_true')
    args = parser.parse_args()
    manifest, _, epoch = live_manifest(args.manifest)
    source, output = args.source.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if (not source.is_relative_to(owned) or not output.is_relative_to(owned)
            or output.is_relative_to(source) or source.is_relative_to(output)):
        raise ValueError('Separate owned inspection evidence required')
    service.STORE = source / 'state'
    binding_path = service.STORE / 'edit-bindings' / (args.change_id + '.json')
    binding = json.loads(binding_path.read_text(encoding='utf-8'))
    events = StructureJournal(service.STORE / 'edits').read(args.change_id)
    request = events[0]['payload']
    if (request['operation'] != 'move_node' or binding['domain'] != request['domain']
            or binding['component'] != request['component']
            or request['domain']['process_epoch'] != epoch
            or request['domain']['database'].lower() != manifest['database'].lower()
            or events[-1]['payload'].get('status') != 'outcome_unknown'):
        raise ValueError('Exact same-instance unresolved isolated move required')
    hashes = lambda: {str(path.relative_to(source)): service.digest(path.read_bytes())
                      for path in source.rglob('*') if path.is_file()}
    before_hashes = hashes()
    marker = pending.pending_path(request['domain'])
    marker_before = marker.read_bytes() if marker.exists() else None
    if marker_before is None:
        raise ValueError('Unresolved mutation must retain its pending marker')
    marker_value = json.loads(marker_before)
    if (marker_value['native_token'] != args.change_id or marker_value['command'] != 'apply'
            or marker_value['domain'] != request['domain']):
        raise ValueError('Another request owns the pending marker')
    output.mkdir(parents=True, exist_ok=False)
    result = {'passed': False, 'full_delivery': False, 'restored': False,
              'model_setters_called': 0, 'automatic_retry': False,
              'scope': __doc__, 'change_id': args.change_id,
              'process_epoch': epoch, 'source_hashes': before_hashes,
              'pending_marker': str(marker), 'request': request,
              'authoritative_status': 'outcome_unknown',
              'class_apply_remains_outstanding': True}
    log = Path(manifest['logs']) / 'crash.log'
    initial_log = log.read_bytes()

    def save():
        temporary = output / 'result.tmp'
        temporary.write_text(json.dumps(result, indent=2), encoding='utf-8')
        temporary.replace(output / 'result.json')

    save()
    try:
        adapter_type = NativeStructureAdapter
        if args.retained_material:
            files = ('AscetStructureRead.cs', 'AscetStructureSession.cs', 'AscetStructureExperiment.cs',
                     'bde_structure_read.st', 'bde_session_guard.st', 'bde_recovery_status.st',
                     'bde_retained_move_probe.st')
            binary = output / 'AscetRetainedMoveProbe.exe'
            result['probe_source_hashes'] = {name: service.digest((service.ROOT / 'scripts' / name).read_bytes())
                                             for name in files}
            built = subprocess.run(['C:/Windows/Microsoft.NET/Framework/v4.0.30319/csc.exe',
                '/nologo', '/platform:x86', '/main:AscetStructureSession', '/define:BDE_MOVE_RECOVERY_EVAL',
                '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', '/r:System.Web.Extensions.dll',
                '/out:' + str(binary),
                *['/resource:' + str(service.ROOT / 'scripts' / name) + ',' + name
                  for name in files if name.endswith('.st')],
                *[str(service.ROOT / 'scripts' / name) for name in files if name.endswith('.cs')]],
                capture_output=True, text=True, timeout=30)
            result['probe_build'] = {'exit_code': built.returncode, 'stdout': built.stdout, 'stderr': built.stderr}
            if built.returncode:
                raise ValueError('Fixed retained probe compilation failed')
            shutil.copyfile('E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', output / 'Etas.AscetNET.dll')

            class RetainedProbeAdapter(NativeStructureAdapter):
                build = staticmethod(lambda: binary)

            adapter_type = RetainedProbeAdapter
        with service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
                               ASCET_BD_PROBE_PORT=str(wire['port']))
            with adapter_type(request['component'], request['diagram'], environment=environment) as adapter:
                if args.retained_material:
                    adapter._ensure_open(request['domain'])
                    result['retained_material'] = adapter._exchange(
                        {'cmd': 'retained_move_probe', 'token': args.change_id})
                else:
                    result['retained_material'] = None
                try:
                    result['native_recovery_status'] = adapter.recovery_status(
                        request['domain'], args.change_id)
                except Exception:
                    result['native_recovery_status_error'] = traceback.format_exc()
                result['fresh_public_graph'] = adapter.observe_public(request['domain'])
                result['commands'] = list(adapter.commands)
                native = result.get('native_recovery_status')
                if native is not None:
                    previous = {row['ref']: row for row in native['before']['entries']}
                    current = {row['ref']: row for row in native['current']['entries']}
                    target = request['arguments'][1]
                    actual = current[target]
                    public_nodes = [row for row in result['fresh_public_graph']['nodes']
                                    if 'n' + str(row['id']) == target]
                    source_pin_ids = set(actual['pins'])
                    native_edges = [row for row in current.values() if row['kind'] == 'edge'
                                    and row['source'] in source_pin_ids]
                    public_edges = [row for row in result['fresh_public_graph']['edges']
                                    if 'p' + str(row['source']['native']['id']) in source_pin_ids]
                    edge_values = sorted((row['source'], row['target'], row['route'], row['type'])
                                         for row in native_edges)
                    public_values = sorted(('p' + str(row['source']['native']['id']),
                                            'p' + str(row['target']['native']['id']),
                                            row['route'], row['type']) for row in public_edges)
                    result['classification'] = {
                        'native_state': native['state'], 'terminal_after_missing': native['after'] is None,
                        'target': target, 'before_anchor': previous[target]['anchor'],
                        'current_anchor': actual['anchor'], 'requested_anchor': request['arguments'][2:],
                        'public_target_position_size_match': len(public_nodes) == 1
                        and public_nodes[0]['position'] == actual['position']
                        and public_nodes[0]['size'] == actual['size'],
                        'outgoing_edge_values_match': edge_values == public_values,
                        'outgoing_edge_count': len(native_edges),
                        'identity_and_whole_owner_restoration_verified': False,
                    }
            result['request_frames'] = wire['request'].result()
            result['response_frames'] = wire['response'].result()
            result['wire_errors'] = wire['errors']
        live_manifest(args.manifest)
        result['passed'] = (not result['wire_errors']
                            and result['request_frames']['parse_error'] is None
                            and result['response_frames']['parse_error'] is None)
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        current_log = log.read_bytes()
        result['crash_log_append_only'] = current_log.startswith(initial_log)
        appended = (current_log[len(initial_log):] if result['crash_log_append_only']
                    else current_log)
        (output / 'crash-log-appended.txt').write_bytes(appended)
        result['new_assertion_count'] = appended.count(b'Dumping walkback to file:')
        result['source_files_unchanged'] = hashes() == before_hashes
        result['pending_marker_unchanged'] = marker.exists() and marker.read_bytes() == marker_before
        result['passed'] = (result['passed'] and result['source_files_unchanged']
                            and result['pending_marker_unchanged']
                            and result['crash_log_append_only']
                            and result['new_assertion_count'] == 0)
        save()
    print(json.dumps({key: result.get(key) for key in
                      ('passed', 'restored', 'native_recovery_status_error', 'error',
                       'source_files_unchanged', 'pending_marker_unchanged')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
