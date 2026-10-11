"""Distinct formal inverses of a retained applied rewire, with full restoration."""
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
from bd_instance_pending import check as check_pending
from bd_structure_journal import StructureJournal
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, verify_pages, wire_result
from bde_public_oracle import compare
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--failed', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    failed, output = args.failed.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if any(not p.is_relative_to(owned) for p in (failed, output)) or output.exists():
        raise ValueError('Owned original failed trial and fresh output required')
    prior = json.loads((failed / 'result.json').read_text(encoding='utf-8'))
    manifest, _, epoch = live_manifest(Path(prior['manifest']))
    if prior['passed'] is not False or not prior['witness_retained'] or epoch != prior['process_epoch']:
        raise ValueError('Exact original retained same-epoch witness required')
    if prior['edit_a']['status'] != 'applied_observed' or prior.get('cleanup_b', {}).get('status') != 'verified_local':
        raise ValueError('Actual confirmed rewire with independently restored second edit required')
    domain = prior['domain']; check_pending(domain)
    original_sha = service.digest((failed / 'result.json').read_bytes())
    output.mkdir(parents=True); service.STORE = failed / 'store'
    candidate = source_manifest()
    for rel, digest in candidate.items():
        source = service.ROOT / rel
        if hashlib.sha256(source.read_bytes()).hexdigest() != digest:
            raise ValueError('Source drift before seal')
        target = output / 'source' / rel; target.parent.mkdir(parents=True, exist_ok=True); shutil.copyfile(source, target)
    binary = build_oracle(output)
    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_OPERATION_EXECUTOR='staged_v1', ASCET_BD_SOURCE_MATERIAL_CAPTURE='identity_v1',
        ASCET_BD_LOCAL_FIELD_INVERSE='native_source_v1', ASCET_BD_SOURCE_IDENTITY_NORMALIZATION='identity_v1')
    calls = []
    result = {'passed': False, 'restored': False, 'scope': 'Same retained applied rewire formal inverse/redo/final restore',
        'manifest': prior['manifest'], 'process_epoch': epoch, 'domain': domain, 'component': prior['component'],
        'failed_trial': str(failed), 'original_failure_sha256': original_sha, 'source_manifest': candidate,
        'complete_case_pass': False, 'full_delivery': False, 'witness_retained': True}
    save = lambda: (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
    save()

    def native(label, action=None):
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(prior['component'], timeout=30,
                    environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain)
                if action is not None:
                    value = adapter._exchange({'cmd': 'main_readonly_witness',
                        'action': action, 'token': prior['capture']['token']})
                else:
                    value = {'native': adapter.observe(domain, []), 'public': adapter.observe_public(domain)}
                    if not compare(value['native']['entries'], value['public'])['passed']:
                        raise ValueError('Independent native/public mismatch')
        save_new(output / (label + '.json'), {'result': value, 'wire': wire_result(wire)})
        return value

    def record(row):
        save_new(output / 'tool-calls' / (str(len(calls)).zfill(3) + '.json'), row); calls.append(row)

    def tool(name, arguments):
        with bench.proxy(upstream_port=manifest['port']) as wire:
            client = ToolClient(output, domain['session'], record)
            client.env.update(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
            start = len(calls); _, body, error = client.call(name, arguments)
        count = wire_result(wire); save_new(output / 'call-wire' / (str(start).zfill(3) + '.json'), count)
        if error: raise ValueError('Formal tool rejected: ' + body)
        verify_pages(calls[start:], body, arguments.get('max_bytes', 12288))
        return json.loads(body), count

    def inverse(head, label):
        response, _ = tool('bd_revert', {'change_id': head, 'request_id': output.name + '_' + label})
        result[label] = response; save()
        if response['status'] != 'verified_local': raise ValueError('Inverse not confirmed: ' + label)
        diff, wire = tool('bd_diff', {'change_id': response['change_id']})
        if diff != StructureJournal(service.STORE / 'edits').diff(response['change_id']) or wire['request']['frames']:
            raise ValueError('Actual diff did not use its own immutable journal')
        result[label + '_diff'] = diff; save()
        return response['change_id']

    try:
        applied = native('applied-before')
        head = inverse(prior['edit_a']['change_id'], 'inverse')
        result['witness_after_inverse'] = native('witness-after-inverse', 'check'); save()
        if not result['witness_after_inverse']['unchanged']:
            raise ValueError('Strict original identity/source/order did not restore')
        redo = inverse(head, 'redo')
        if native('redone') != applied: raise ValueError('Actual redo differs from retained applied graph')
        inverse(redo, 'final_inverse')
        baseline = json.loads((failed / 'before.json').read_text(encoding='utf-8'))['result']
        final = native('final')
        result['witness_final'] = native('witness-final', 'check')
        result['restored'] = final == baseline and result['witness_final']['unchanged']
        if not result['restored']: raise ValueError('Full original baseline did not restore')
        result['witness_release'] = native('witness-release', 'release')
        result['witness_retained'] = not result['witness_release']['released']
        result['original_failure_verdict_preserved'] = service.digest((failed / 'result.json').read_bytes()) == original_sha
        result['sources_match'] = candidate == source_manifest()
        result['passed'] = not result['witness_retained'] and result['original_failure_verdict_preserved'] and result['sources_match']
    except Exception as error:
        result['error'] = str(error); result['traceback'] = traceback.format_exc()
        try: result['failed_witness_export'] = native('failed-witness-export', 'export')
        except Exception as export_error: result['witness_export_error'] = str(export_error)
    result['tool_calls'] = len(calls); save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'restored', 'tool_calls', 'error', 'witness_retained')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
