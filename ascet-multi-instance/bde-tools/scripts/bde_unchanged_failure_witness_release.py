"""Release only a retained failure witness independently proven wholly unchanged."""
import argparse
import json
import os
from pathlib import Path
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bd_native_structure import NativeStructureAdapter
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--failed', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    owned = service.ROOT / 'analysis/bde-experiments'
    failed, output = args.failed.resolve(), args.output.resolve()
    if any(not p.is_relative_to(owned) for p in (failed, output)) or output.exists():
        raise ValueError('Owned original failed evidence and fresh cleanup required')
    prior = json.loads((failed / 'result.json').read_text(encoding='utf-8'))
    manifest, _, epoch = live_manifest(Path(prior['manifest']))
    if prior['passed'] is not False or prior['witness_retained'] is not True or epoch != prior['process_epoch']:
        raise ValueError('Exact retained failed witness in original epoch required')
    original_sha = service.digest((failed / 'result.json').read_bytes())
    output.mkdir(parents=True); binary = build_oracle(output)
    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']))
    with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
        with Observer(prior['component'], timeout=30,
                environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
            adapter._ensure_open(prior['domain'])
            captures = [prior[key]['token'] for key in ('capture', 'witness_capture')
                        if isinstance(prior.get(key), dict) and 'token' in prior[key]]
            if len(set(captures)) != 1 or (prior.get('witness_token') is not None and prior['witness_token'] != captures[0]):
                raise ValueError('One exact original failed witness token required')
            token = captures[0]
            check = adapter._exchange({'cmd': 'main_readonly_witness', 'token': token, 'action': 'check'})
            save_new(output / 'witness-check.json', check)
            if check['unchanged'] is not True:
                raise ValueError('Full original native/source/identity/order differs; retain witness')
            released = adapter._exchange({'cmd': 'main_readonly_witness', 'token': token, 'action': 'release'})
            save_new(output / 'witness-release.json', released)
    result = {'passed': released['released'] and released['unchanged'], 'model_setters_called': 0,
        'store_called': False, 'model_mutation_dispatched': False,
        'original_failure_verdict_preserved': service.digest((failed / 'result.json').read_bytes()) == original_sha,
        'witness_retained': False, 'failed_trial': str(failed), 'wire': wire_result(wire)}
    save_new(output / 'result.json', result)
    print(json.dumps({k: result[k] for k in ('passed', 'witness_retained', 'original_failure_verdict_preserved')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
