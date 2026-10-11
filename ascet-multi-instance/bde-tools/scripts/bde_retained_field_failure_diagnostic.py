"""Readonly fixed diagnosis of a retained failed ordinary field forward. No retries."""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
from bd_instance_pending import pending_path
from bd_native_structure import NativeStructureAdapter
from bde_acceptance import source_manifest
import bde_experiments as bench
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result
from bd_native_graphical_effects import same_current


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--failed', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    failed, output = args.failed.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not failed.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Owned retained failure and fresh output required')
    prior = json.loads((failed / 'result.json').read_text(encoding='utf-8'))
    manifest, _, epoch = live_manifest(Path(prior['manifest']))
    if prior['passed'] is not False or prior['witness_retained'] is not True or epoch != prior['process_epoch']:
        raise ValueError('Retained failure and original live epoch required')
    domain = prior['domain']
    pending = json.loads(pending_path(domain).read_text(encoding='utf-8'))
    if pending['domain'] != domain or pending['command'] != 'apply':
        raise ValueError('Exact failed forward quarantine required')
    token = pending['native_token']
    witness_token = prior['capture']['token']
    output.mkdir(parents=True)
    result = {'passed': False, 'scope': 'Fixed retained field failure readonly diagnosis',
        'failed_trial': str(failed), 'manifest': prior['manifest'], 'process_epoch': epoch,
        'domain': domain, 'component': prior['component'], 'native_token': token,
        'witness_token': witness_token, 'source_manifest': source_manifest(),
        'model_setters_called': 0, 'store_called': False, 'pending_cleared': False,
        'complete_case_pass': False, 'full_delivery': False}
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    for relative in result['source_manifest']:
        destination = output / 'source' / relative
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / relative, destination)
    wire = None
    try:
        binary = build_oracle(output)
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: binary)
        environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']))
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(prior['component'], timeout=30,
                    environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain)
                result['before'] = adapter._exchange({'cmd': 'main_readonly_witness', 'action': 'check', 'token': witness_token})
                save()
                result['material'] = adapter._exchange({'cmd': 'field_material_inspect', 'token': token})
                save()
                result['probe'] = adapter._exchange({'cmd': 'retained_field_failure_probe', 'token': token})
                save()
                result['after'] = adapter._exchange({'cmd': 'main_readonly_witness', 'action': 'check', 'token': witness_token})
        before, after = result['before'], result['after']
        compared = ('generation', 'physical', 'drawing', 'ids_unchanged', 'source_unchanged',
            'native_fields_unchanged', 'physical_identity_order_unchanged', 'drawing_identity_order_unchanged')
        result['diagnosis_unchanged'] = (all(before[k] == after[k] for k in compared)
            and same_current(before['terminal_graph'], after['terminal_graph']))
        result['sources_match'] = result['source_manifest'] == source_manifest()
        result['pending_retained'] = json.loads(pending_path(domain).read_text(encoding='utf-8')) == pending
        result['passed'] = result['diagnosis_unchanged'] and result['sources_match'] and result['pending_retained']
    except Exception as error:
        result['error'] = str(error); result['traceback'] = traceback.format_exc()
    finally:
        if wire is not None:
            result['wire'] = wire_result(wire)
    save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'diagnosis_unchanged', 'pending_retained', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
