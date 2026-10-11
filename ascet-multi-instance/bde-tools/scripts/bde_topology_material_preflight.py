"""Verify formal topology preparation retains original native/source identities.

No apply/revert/model setter/store is dispatched. This is not edit acceptance.
"""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
from bd_edit_journal import fingerprint
from bd_instance_pending import check as check_pending
from bd_native_material_evidence import reconcile
from bd_native_structure import NativeStructureAdapter
from bde_acceptance import source_manifest
import bde_experiments as bench
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result, VARIANTS


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--preflight', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    prior_path, output = args.preflight.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not prior_path.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Verified owned preflight and fresh output required')
    prior = json.loads((prior_path / 'result.json').read_text(encoding='utf-8'))
    if prior.get('passed') is not True or len(prior['rounds']) != 9:
        raise ValueError('Three-structure/three-round preflight required')
    manifest, process, epoch = live_manifest(prior['manifest'])
    if epoch != prior['process_epoch']:
        raise ValueError('Original isolated fixture epoch expired')
    output.mkdir(parents=True)
    result = {'passed': False, 'scope': 'Formal disconnect/delete preparation and retained materials only',
        'manifest': prior['manifest'], 'pid': process['pid'], 'port': manifest['port'],
        'process_epoch': epoch, 'source_manifest': source_manifest(), 'rounds': [],
        'model_setters_called': 0, 'store_called': False,
        'complete_case_pass': False, 'full_delivery': False, 'formal_topology_inverse_dispatched': False}
    result['local_topology_requested'] = os.environ.get('ASCET_BD_TOPOLOGY_LOCAL_INVERSE') == 'native_source_v1'
    save = lambda: (output / 'result.json').write_text(
        json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    binary = build_oracle(output)
    for path in result['source_manifest']:
        destination = output / 'source' / path
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / path, destination)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_PROBE_PORT=str(manifest['port']), ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_SOURCE_MATERIAL_CAPTURE='identity_v1')
    # Capture is deliberately separate from the field inverse execution gate.
    for key in ('ASCET_BD_LOCAL_FIELD_INVERSE', 'ASCET_BD_SOURCE_IDENTITY_NORMALIZATION'):
        environment.pop(key, None)

    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)

    for variant in VARIANTS:
        fixture = json.loads(sorted((prior_path / ('fixture-' + variant)).glob('*.json'))[-1].read_text(encoding='utf-8'))
        if fixture.get('passed') is not True:
            raise ValueError('Verified fixture required')
        for operation in ('disconnect_data', 'delete_node'):
            case = output / (variant + '-' + operation)
            case.mkdir()
            domain = {'session': case.name + '-' + output.name, 'database': manifest['database'],
                'process_epoch': epoch, 'oid': fixture['oid']}
            check_pending(domain)
            token = 'edit_' + fingerprint({'domain': domain, 'capture': str(output)})
            witness_token = 'main_' + fingerprint({'domain': domain, 'witness': str(output)})
            row = {'variant': variant, 'operation': operation, 'domain': domain,
                'native_token': token, 'witness_token': witness_token,
                'prepared_retained': False, 'witness_retained': False, 'passed': False}
            result['rounds'].append(row); save()

            def execute(adapter_class, label, callback):
                with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                    with adapter_class(fixture['component'], timeout=30,
                            environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                        adapter._ensure_open(domain)
                        value = callback(adapter)
                save_new(case / (label + '.json'), {'result': value, 'wire': wire_result(wire)})
                return value

            def witness(action, label):
                return execute(Observer, label, lambda adapter: adapter._exchange(
                    {'cmd': 'main_readonly_witness', 'action': action, 'token': witness_token}))

            try:
                row['capture'] = witness('capture', 'witness-capture')
                row['witness_retained'] = True; save()
                if row['capture']['unchanged'] is not True:
                    raise ValueError('Original complete witness differs')
                before = execute(NativeStructureAdapter, 'before', lambda adapter: adapter.observe(domain, []))
                node = next(x for x in before['entries'] if x['ref'] == fixture['target_node'])
                target = (next(x['ref'] for x in before['entries'] if x['kind'] == 'edge'
                    and (x['source'] in node['pins'] or x['target'] in node['pins']))
                    if operation == 'disconnect_data' else node['ref'])
                row['prepare_intent'] = {'operation': operation, 'arguments': [[], target]}; save()
                row['prepared'] = execute(NativeStructureAdapter, 'prepare', lambda adapter:
                    adapter.prepare(domain, token, operation, row['prepare_intent']['arguments']))
                row['prepared_retained'] = True; save()
                material = execute(Observer, 'material', lambda adapter: adapter._exchange(
                    {'cmd': 'topology_material_inspect', 'token': token}))
                row['material'] = material
                if (material['profile'] != 'ordinary_topology_material_v1' or material['token'] != token
                        or material['operation'] != operation or material['state'] != 'prepared'
                        or material['before_values'] != before or material['source_before_objects'] <= 0
                        or any(material[k] is not True for k in ('source_before_current_matches',
                            'native_before_current_matches', 'source_root_current_same', 'parent_order_retained',
                            'drawing_order_retained', 'original_ids_retained'))
                        or material['retained_graphical_objects'] <= 0 or material['endpoint_dependencies'] <= 0
                        or material['execution_sequence'] != 0 or material['execution_head_retained'] is not False
                        or material['field_executor_bound'] is not False
                        or material['managed_topology_inverse_enabled'] is not False
                        or set(material['phases']) != {'prepared'}):
                    raise ValueError('Complete prepared topology native/source/typed/order materials differ')
                phase = material['phases']['prepared']
                row['reconciliation'] = reconcile(material['original_graph'], material['original_fields'],
                    phase['actual'], phase['graph'], phase['fields'])
                if row['reconciliation']['changes']:
                    raise ValueError('Preparation changed native fields')
                row['after_prepare'] = witness('check', 'witness-after-prepare')
                if row['after_prepare']['unchanged'] is not True:
                    raise ValueError('Prepare changed complete witness; retain original materials')
                row['discard'] = execute(NativeStructureAdapter, 'discard', lambda adapter: adapter.discard_prepared(domain, token))
                row['prepared_retained'] = False; save()
                row['after_discard'] = witness('check', 'witness-after-discard')
                if row['after_discard']['unchanged'] is not True:
                    raise ValueError('Discard changed native/source/identity/order')
                row['release'] = witness('release', 'witness-release')
                row['witness_retained'] = not row['release']['released']
                row['passed'] = not row['witness_retained']; save()
            except Exception as error:
                row['error'] = str(error); row['traceback'] = traceback.format_exc()
                if row['witness_retained']:
                    try:
                        row['failed_witness_export'] = witness('export', 'witness-failed-export')
                    except Exception as export_error:
                        row['witness_export_error'] = str(export_error)
                save()
                print(json.dumps({'passed': False, 'variant': variant, 'operation': operation, 'error': str(error)}))
                return 1
    result['sources_match'] = source_manifest() == result['source_manifest']
    result['passed'] = result['sources_match'] and len(result['rounds']) == 6 and all(row['passed'] for row in result['rounds'])
    save()
    print(json.dumps({'passed': result['passed'], 'rounds': len(result['rounds']),
        'model_setters_called': 0, 'store_called': False}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
