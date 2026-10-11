"""Verify the production order helper on native PRIVATE copies; never invoke a model edit."""
import argparse
import json
import os
from pathlib import Path
import time
import traceback
from unittest.mock import patch

import bd_class_tools as tools
import bd_service as service
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_parent_order_inverse import validate_probe
from bd_parent_order_effects import validate_probe as validate_evidence_probe
from bd_windows_endpoint import endpoint_process
import bde_experiments as bench


SOURCES = ('AscetStructureRead.cs', 'AscetStructureSession.cs', 'AscetStructureExperiment.cs')
RESOURCES = ('bde_structure_read.st', 'bde_structure_edit.st', 'bde_session_guard.st',
             'bde_recovery_release.st', 'bde_recovery_status.st', 'bde_native_collection_merge.st',
             'bde_parent_order_inverse.st', 'bde_class_local_inverse_bindings.st',
             'bde_native_graph_clone.st', 'bde_parent_order_inverse_probe.st',
             'bde_parent_order_evidence.st', 'bde_parent_order_evidence_probe.st', 'bde_edge_restore_guard.st')


def build(output):
    service.ensure_probe()
    # The existing runtime stages Cebra assemblies beside binaries in live-api.
    binary = service.ROOT / 'analysis/live-api/AscetParentOrderEval.exe'
    compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    service.run_process([str(compiler), '/nologo', '/platform:x86', '/define:BDE_PARENT_ORDER_EVAL',
        '/main:AscetStructureSession', f'/r:{dll}', '/r:System.Web.Extensions.dll', f'/out:{binary}',
        *[f'/resource:{service.ROOT / "scripts" / name},{name}' for name in RESOURCES],
        *[str(service.ROOT / 'scripts' / name) for name in SOURCES]], 30, build_step=True)
    return binary


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    parser.add_argument('--command', choices=('parent_order_eval', 'parent_order_evidence_eval'), default='parent_order_eval')
    args = parser.parse_args()
    tools.require_sandbox(args.component)
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = (args.output / 'state').resolve()
    for name in ('raw', 'snapshots', 'documents', 'cursors', 'delivery'):
        (service.STORE / name).mkdir(parents=True)
    names = set((*tools.SOURCES, *SOURCES, *RESOURCES, 'bd_parent_order_inverse.py',
                 'bd_native_structure.py', 'bd_parent_order_effects.py', 'bde_parent_order_inverse_experiment.py'))
    manifest = lambda: {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in sorted(names)}
    result = {'passed': False, 'scope': 'native parent order helper on PRIVATE graphical copies; no model dispatcher',
        'source_manifest': manifest(), 'rounds': [], 'full_delivery': False, 'production_dispatch': False, 'command': args.command,
        'not_verified': ['actual deletion inverse/addGO/store and independent fields', 'multi-edge restore order',
            'native fault/transport recovery for the new production branch', 'Class whole-owner local inverse',
            'original display01 restoration', 'complete BDE acceptance']}
    log = Path('E:/ETASData/ASCET6.4/crash.log')
    crash_before = log.read_bytes()

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    before = None
    try:
        binary = build(args.output)
        result['binary_sha256'] = service.digest(binary.read_bytes())
        for index in range(args.repeats):
            with patch.dict(os.environ, {'ASCET_BD_CLASS_OBSERVATION_MODE': 'public_oracle'}):
                before = tools.capture(args.component, args.output.name + '-before-' + str(index))
            record = before['class_interface']
            domain = {'session': args.output.name, 'process_epoch': before['ascet_process_epoch'],
                'database': before['database'], 'oid': before['oid']}
            if str(endpoint_process(32503)) != domain['process_epoch'].split('/', 1)[0]:
                raise ValueError('Primary endpoint no longer belongs to the observed ASCET process')
            row = {'round': index, 'domain': domain, 'before_sha256': fingerprint(record)}
            result['rounds'].append(row)
            tools.write(args.output / f'public-before-{index}.json', before)
            start = time.perf_counter()
            with service.live_lock(), bench.proxy() as wire:
                with NativeStructureAdapter(args.component, timeout=60,
                        environment=dict(os.environ, ASCET_BD_PROBE_PORT=str(wire['port']),
                                         ASCET_BD_ENDPOINT_PORT='32503')) as adapter:
                    adapter.build = lambda: binary
                    adapter.observe(domain, [])
                    receipt = adapter._exchange({'cmd': args.command})
                    tools.write(args.output / f'native-{index}.json', receipt)
                    row['checks'] = (validate_evidence_probe if args.command == 'parent_order_evidence_eval' else validate_probe)(receipt)
                row.update(elapsed_ms=(time.perf_counter() - start) * 1000,
                    request_wire=wire['request'].result(), response_wire=wire['response'].result(),
                    wire_errors=wire['errors'])
            with patch.dict(os.environ, {'ASCET_BD_CLASS_OBSERVATION_MODE': 'public_oracle'}):
                after = tools.capture(args.component, args.output.name + '-after-' + str(index))
            tools.write(args.output / f'public-after-{index}.json', after)
            row['after_sha256'] = fingerprint(after['class_interface'])
            row['public_unchanged'] = (fingerprint(record) == fingerprint(after['class_interface'])
                and all(before[key] == after[key] for key in ('database_session', 'ascet_process_epoch', 'oid', 'database')))
            row['passed'] = row['public_unchanged'] and not row['wire_errors']
            save()
            if not row['passed']:
                raise ValueError('Public owner bookends or native wire differ')
        result['source_drift'] = [name for name, sha in manifest().items() if result['source_manifest'].get(name) != sha]
        result['assertion_delta'] = max(0, log.read_bytes()[len(crash_before):].count(b'Assertion failed'))
        result['passed'] = (all(row['passed'] for row in result['rounds']) and not result['source_drift']
                            and result['assertion_delta'] == 0)
    except Exception as error:
        result['error'] = str(error)
        result['traceback'] = traceback.format_exc()
        if before is not None:
            try:
                with patch.dict(os.environ, {'ASCET_BD_CLASS_OBSERVATION_MODE': 'public_oracle'}):
                    failed_after = tools.capture(args.component, args.output.name + '-failure-after')
                tools.write(args.output / 'public-failure-after.json', failed_after)
                result['failure_public_unchanged'] = fingerprint(before['class_interface']) == fingerprint(failed_after['class_interface'])
            except Exception as failure:
                result['failure_public_observation_error'] = str(failure)
    finally:
        save()
    print(json.dumps({'passed': result['passed'], 'rounds': len(result['rounds']), 'error': result.get('error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
