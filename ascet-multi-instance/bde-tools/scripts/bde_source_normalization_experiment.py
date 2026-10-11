"""Validate source identity normalization on private frozen-source copies only."""
import argparse
import hashlib
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bd_native_structure import NativeStructureAdapter
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result
from bd_edit_journal import fingerprint
from bd_instance_pending import check as check_pending


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--history', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    history, output = args.history.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not history.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Owned retained history and new output required')
    prior = json.loads((history / 'result.json').read_text(encoding='utf-8'))
    manifest, _, epoch = live_manifest(Path(prior['manifest']))
    if prior['restored'] is not True or prior['process_epoch'] != epoch:
        raise ValueError('Restored same-epoch original-reference materials required')
    domain = {**prior['domain'], 'session': output.name}
    check_pending(domain)
    output.mkdir(parents=True)
    candidate = source_manifest()
    for rel, digest in candidate.items():
        source = service.ROOT / rel
        if hashlib.sha256(source.read_bytes()).hexdigest() != digest:
            raise ValueError('Candidate drift before source seal')
        target = output / 'source' / rel
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(source, target)
    result = {
        'passed': False, 'scope': 'Private source copies from actual retained before/after images',
        'manifest': prior['manifest'], 'process_epoch': epoch, 'domain': domain,
        'source_manifest': candidate, 'history': str(history.relative_to(service.ROOT)),
        'native_token': prior['edit_a']['change_id'], 'complete_case_pass': False,
        'full_delivery': False, 'formal_tool_calls': 0, 'live_source_normalization_dispatched': False,
        'witness_retained': False,
    }
    save = lambda: (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
    save()
    try:
        binary = build_oracle(output)
    except Exception as error:
        result.update(stage='oracle_build', error=str(error), native_calls=0,
                      model_setters_called=0, store_called=False)
        save()
        print(json.dumps({'passed': False, 'stage': result['stage'], 'error': result['error']}))
        return 1
    witness_token = 'main_' + fingerprint({'domain': domain, 'purpose': 'private_source_normalization'})
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
                       ASCET_BD_LOCAL_FIELD_INVERSE='native_source_v1',
                       ASCET_BD_SOURCE_MATERIAL_CAPTURE='identity_v1',
                       ASCET_BD_OPERATION_EXECUTOR='staged_v1')

    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)

    with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
        try:
            with Observer(prior['component'], timeout=30,
                          environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain)
                witness = lambda action: adapter._exchange({'cmd': 'main_readonly_witness',
                    'action': action, 'token': witness_token})
                result['witness_capture'] = witness('capture')
                result['witness_retained'] = True
                save()
                before = {'native': adapter.observe(domain, []), 'public': adapter.observe_public(domain)}
                save_new(output / 'before.json', before)
                try:
                    result['private_normalization'] = adapter._exchange({
                        'cmd': 'field_source_normalization_private', 'token': result['native_token']})
                except Exception as error:
                    result['private_error'] = str(error)
                    result['private_traceback'] = traceback.format_exc()
                save()
                after = {'native': adapter.observe(domain, []), 'public': adapter.observe_public(domain)}
                save_new(output / 'after.json', after)
                result['witness_final'] = witness('check')
                result['live_unchanged'] = before == after and result['witness_final']['unchanged'] is True
                if not result['live_unchanged']:
                    raise ValueError('Live native/public/source/identity witness changed during private validation')
                result['witness_release'] = witness('release')
                result['witness_retained'] = result['witness_release']['released'] is not True
                result['sources_match'] = candidate == source_manifest()
                result['passed'] = (result.get('private_normalization', {}).get('passed') is True
                                    and not result['witness_retained'] and result['sources_match'])
        except Exception as error:
            result['error'] = str(error)
            result['traceback'] = traceback.format_exc()
        finally:
            result['wire'] = wire_result(wire)
            save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'live_unchanged',
        'witness_retained', 'private_normalization', 'private_error', 'error')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
