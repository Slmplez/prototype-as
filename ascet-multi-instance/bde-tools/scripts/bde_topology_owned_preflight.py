"""Compile fixed owned-topology helpers under a complete isolated model witness.

Compilation/binding alone is not actual inverse planning or edit acceptance.
"""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--preflight', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--managed-topology', action='store_true', help='Compile and bind fixed executor only; no execution')
    parser.add_argument('--terminal-recovery', action='store_true', help='Compile and bind fixed metadata certificate only')
    parser.add_argument('--connect-local-plan', action='store_true', help='Compile fixed retained-connect three-way planner and immutable export only')
    parser.add_argument('--connect-local-history', action='store_true', help='Compile fixed local connect executor and full proof export only; no model dispatch')
    args = parser.parse_args()
    if sum((args.managed_topology, args.terminal_recovery, args.connect_local_plan, args.connect_local_history)) > 1:
        parser.error('Select one fixed compilation profile')
    prior, output = args.preflight.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not prior.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Verified owned preflight and fresh output required')
    preflight = json.loads((prior / 'result.json').read_text(encoding='utf-8'))
    manifest, process, epoch = live_manifest(preflight['manifest'])
    if preflight['passed'] is not True or preflight['process_epoch'] != epoch:
        raise ValueError('Verified original-epoch fixture required')
    fixture = json.loads(sorted((prior / 'fixture-operator_fanout').glob('*.json'))[-1].read_text(encoding='utf-8'))
    domain = dict(session=output.name, database=manifest['database'], process_epoch=epoch, oid=fixture['oid'])
    output.mkdir(parents=True)
    candidate = source_manifest()
    result = dict(passed=False, source_manifest=candidate, manifest=preflight['manifest'],
                  process_epoch=epoch, pid=process['pid'], port=manifest['port'],
                  component=fixture['component'], domain=domain, witness_retained=False,
                  complete_case_pass=False, full_delivery=False, formal_managed_topology_inverse_dispatched=False)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    for rel in candidate:
        dest = output / 'source' / rel
        dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / rel, dest)
    try:
        binary = build_oracle(output)
    except Exception as error:
        result['error'] = str(error); result['traceback'] = traceback.format_exc()
        result['native_model_calls'] = 0
        save()
        print(json.dumps({'passed': False, 'error': str(error), 'native_model_calls': 0}))
        return 1
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
                       ASCET_BD_PROBE_PORT=str(manifest['port']), ASCET_BD_OPERATION_EXECUTOR='staged_v1')
    if args.managed_topology:
        environment.update(ASCET_BD_MANAGED_TOPOLOGY_INVERSE='native_source_v1',
            ASCET_BD_TOPOLOGY_LOCAL_INVERSE='native_source_v1', ASCET_BD_SOURCE_MATERIAL_CAPTURE='identity_v1',
            ASCET_BD_TOPOLOGY_EXACT_INVERSE='native_source_v1',
            ASCET_BD_TOPOLOGY_SOURCE_NORMALIZATION='identity_v1', ASCET_BD_ORDER_INVERSE_EXPERIMENTAL='1')
    if args.terminal_recovery:
        environment['ASCET_BD_MANAGED_TOPOLOGY_TERMINAL_CERTIFICATION'] = 'metadata_v1'
    if args.connect_local_plan:
        environment['ASCET_BD_CONNECT_LOCAL_PLAN'] = 'native_source_v1'
    if args.connect_local_history:
        environment.update(ASCET_BD_CONNECT_HISTORY='native_source_local_v1', ASCET_BD_CONNECT_MATERIAL='identity_v1',
            ASCET_BD_OPERATION_EXECUTOR='staged_v1')
    result['managed_topology_compile_only'] = args.managed_topology
    token = 'main_' + fingerprint({'domain': domain, 'compile': output.name})
    result['witness_token'] = token
    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)
    def call(label, request):
        with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(fixture['component'], timeout=30,
                          environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain)
                reply = adapter._exchange(request)
        save_new(output / (label + '.json'), {'result': reply, 'wire': wire_result(wire)})
        return reply
    def witness(action):
        return call('witness-' + action, {'cmd': 'main_readonly_witness', 'token': token, 'action': action})
    try:
        result['capture'] = witness('capture'); result['witness_retained'] = True; save()
        command = ('connect_history_compile' if args.connect_local_history else
                   'connect_local_plan_compile' if args.connect_local_plan else
                   'topology_terminal_recovery_compile' if args.terminal_recovery else
                   'topology_managed_compile' if args.managed_topology else 'topology_owned_compile')
        result['compilation'] = call('compile', {'cmd': command})
        expected = ({'profile': 'native_connect_local_execution_v1', 'compiled': True,
            'model_setters_called': 0, 'store_called': False, 'write_authorized': False} if args.connect_local_history else
            {'profile': 'native_connect_local_plan_v1', 'compiled': True,
            'model_setters_called': 0, 'store_called': False, 'write_authorized': False} if args.connect_local_plan else
            {'profile': 'retained_managed_terminal_certification_v1', 'compiled': True,
            'model_setters_called': 0, 'store_called': False, 'patch_execute_called': False} if args.terminal_recovery else
            {'profile': 'native_topology_execution_v1' if args.managed_topology else 'actual_owned_topology_inverse_plan_v1', 'compiled': True,
                'model_setters_called': 0, 'store_called': False, 'write_authorized': False})
        if result['compilation'] != expected:
            raise ValueError('Fixed owned helper compilation evidence differs')
    except Exception as error:
        result['error'] = str(error); result['traceback'] = traceback.format_exc()
    finally:
        if result['witness_retained']:
            result['after'] = witness('check')
            if result['after']['unchanged'] is True:
                result['release'] = witness('release')
                result['witness_retained'] = not result['release']['released']
            else:
                result['export'] = witness('export')
        result['sources_match'] = source_manifest() == candidate
        result['passed'] = (not result.get('error') and result.get('after', {}).get('unchanged') is True
                            and result['witness_retained'] is False and result['sources_match'])
        save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'witness_retained', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
