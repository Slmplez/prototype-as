"""Readonly actual retained rewire planner diagnosis; preserve the original failure."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bd_native_structure import NativeStructureAdapter
from bd_field_inverse import plan
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--failed', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    failed, output = args.failed.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if any(not p.is_relative_to(owned) for p in (failed, output)) or output.exists():
        raise ValueError('Owned failed evidence and fresh output required')
    prior = json.loads((failed / 'result.json').read_text(encoding='utf-8'))
    manifest, _, epoch = live_manifest(Path(prior['manifest']))
    if prior['passed'] is not False or not prior['witness_retained'] or epoch != prior['process_epoch']:
        raise ValueError('Original retained live failure required')
    original_sha = service.digest((failed / 'result.json').read_bytes())
    output.mkdir(parents=True)
    candidate = source_manifest()
    for rel, digest in candidate.items():
        p = service.ROOT / rel
        if hashlib.sha256(p.read_bytes()).hexdigest() != digest:
            raise ValueError('Source drift before seal')
        target = output / 'source' / rel; target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(p, target)
    try:
        binary = build_oracle(output)
    except Exception as error:
        save_new(output / 'result.json', {'passed': False, 'stage': 'oracle_build', 'error': str(error),
            'native_calls': 0, 'model_setters_called': 0, 'source_manifest': candidate})
        raise
    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']))
    with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
        with Observer(prior['component'], timeout=30,
                environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
            adapter._ensure_open(prior['domain'])
            evidence = adapter._exchange({'cmd': 'rewire_inverse_inspect', 'token': prior['edit_a']['change_id']})
    save_new(output / 'evidence.json', evidence)
    python_plan = plan(evidence['before'], evidence['after'], evidence['current'], operation='rewire_data')
    result = {'passed': evidence['native_unchanged'] and evidence['source_unchanged'],
        'scope': 'Readonly retained actual rewire values and fresh typed planner diagnosis',
        'original_failure_verdict_preserved': service.digest((failed / 'result.json').read_bytes()) == original_sha,
        'model_setters_called': 0, 'store_called': False, 'complete_case_pass': False, 'full_delivery': False,
        'python_plan': python_plan, 'native_plan': evidence['plan'], 'wire': wire_result(wire),
        'source_manifest': candidate, 'source_hashes_unchanged': candidate == source_manifest()}
    result['plans_match'] = evidence['plan'] == python_plan
    save_new(output / 'result.json', result)
    print(json.dumps({k: result[k] for k in ('passed', 'plans_match', 'native_plan')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
