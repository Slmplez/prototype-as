"""Read a failed actual managed execution; preserve quarantine and never replay."""
import argparse
import hashlib
import json
import os
from pathlib import Path
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bd_native_structure import NativeStructureAdapter
from bd_edit_journal import fingerprint
from bd_structure_journal import differences
from bd_instance_pending import pending_path
from bde_isolated_runtime import live_manifest
from bde_main_workflow import save_new, wire_result, build_oracle
from bde_acceptance import source_manifest


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', required=True, type=Path)
    parser.add_argument('--output', required=True, type=Path)
    parser.add_argument('--retained-only', action='store_true', help='Inspect retained images without the expired generic scope reader')
    args = parser.parse_args()
    prior, output = args.experiment.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not prior.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Owned retained experiment and fresh diagnostic output required')
    previous = json.loads((prior / 'result.json').read_text(encoding='utf-8'))
    manifest, process, epoch = live_manifest(previous['manifest'])
    if previous['process_epoch'] != epoch:
        raise ValueError('Exact original failed execution epoch required')
    domain, component = previous['domain'], previous['component']
    failed_binary = prior / 'AscetMainWorkflowOracle.exe'
    token = previous['edit_a']['change_id']
    marker_path = pending_path(domain)
    marker_before = marker_path.read_bytes() if marker_path.exists() else None
    output.mkdir(parents=True)
    try:
        binary = build_oracle(output)
    except Exception as error:
        save_new(output / 'result.json', dict(passed=False, error=str(error), original_experiment=str(prior),
            native_model_calls=0, model_setters_called=0, complete_case_pass=False, full_delivery=False,
            quarantine_preserved=marker_before == (marker_path.read_bytes() if marker_path.exists() else None)))
        return 1
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_PROBE_PORT=str(manifest['port']), ASCET_BD_OPERATION_EXECUTOR='staged_v1')
    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)
    result = dict(passed=False, original_experiment=str(prior), manifest=previous['manifest'],
        pid=process['pid'], process_epoch=epoch, native_token=token, model_setters_called=0,
        store_called=False, quarantine_preserved=False, complete_case_pass=False, full_delivery=False,
        retained_failure_binary_sha256=hashlib.sha256(failed_binary.read_bytes()).hexdigest(),
        reader_binary_sha256=hashlib.sha256(binary.read_bytes()).hexdigest(), source_manifest=source_manifest())
    witness_token = 'main_' + fingerprint({'domain': domain, 'diagnostic': output.name})
    def call(label, request):
        with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(component, timeout=30, environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain)
                reply = adapter._exchange(request)
        save_new(output / (label + '.json'), dict(result=reply, wire=wire_result(wire)))
        return reply
    def witness(action):
        return call('witness-' + action, dict(cmd='main_readonly_witness', token=witness_token, action=action))
    result['capture'] = witness('capture')
    try:
        retained = call('retained-material', dict(cmd='topology_managed_inspect', token=token))
        result['retained_material'] = {key: value for key, value in retained.items()
            if key not in ('expected_values', 'registered_observation')}
        result['expected_equals_registered'] = retained['expected_values'] == retained['registered_observation']
        result['retained_metadata_differences'] = {key: [retained['expected_values'].get(key), retained['registered_observation'].get(key)]
            for key in set(retained['expected_values']) | set(retained['registered_observation'])
            if key != 'entries' and retained['expected_values'].get(key) != retained['registered_observation'].get(key)}
        result['scope'] = 'Retained native/source/endpoint/order images only; no scope rebinding or terminal certification'
        if args.retained_only:
            result['native_state'] = retained['state']
            result['execution'] = retained['execution']
        if not args.retained_only:
            native = call('native-status', dict(cmd='recovery_status', token=token))
            result['native_state'] = native['state']
            result['execution'] = native.get('topology_execution')
            result['expected_equals_current'] = native.get('inverse_expected') == native.get('current')
            result['current_sha256'] = fingerprint(native['current'])
            result['expected_sha256'] = fingerprint(native.get('inverse_expected'))
            if native.get('inverse_expected') is not None:
                result['typed_differences'] = differences(native['inverse_expected'], native['current'])
                result['metadata_differences'] = {key: [native['inverse_expected'].get(key), native['current'].get(key)]
                    for key in set(native['inverse_expected']) | set(native['current'])
                    if key != 'entries' and native['inverse_expected'].get(key) != native['current'].get(key)}
            result['current_public'] = call('public-observation', dict(cmd='observe_public'))
    except Exception as error:
        result['error'] = str(error)
    finally:
        result['check'] = witness('check')
        if result['check']['unchanged'] is True:
            result['release'] = witness('release')
        result['quarantine_preserved'] = marker_before == (marker_path.read_bytes() if marker_path.exists() else None)
        result['passed'] = (not result.get('error') and result['check']['unchanged'] is True
            and result.get('release', {}).get('released') is True and result['quarantine_preserved'])
        save_new(output / 'result.json', result)
    print(json.dumps({key: result.get(key) for key in ('passed', 'native_state', 'expected_equals_current',
        'typed_differences', 'metadata_differences', 'quarantine_preserved', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
