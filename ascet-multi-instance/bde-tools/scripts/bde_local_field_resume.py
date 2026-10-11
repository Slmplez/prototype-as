"""Finish an isolated literal history rejected during zero-write decoding.

The original failure remains failed. This requires exact same-epoch retained
materials and unchanged native blocks, and never retries an unknown mutation.
"""
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
from bd_structure_journal import StructureJournal
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result, verify_pages
from bde_public_oracle import compare
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--failed-trial', required=True, type=Path)
    parser.add_argument('--output', required=True, type=Path)
    args = parser.parse_args()
    prior, output = args.failed_trial.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not prior.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Owned failed trial and fresh output required')
    failure = json.loads((prior / 'result.json').read_text(encoding='utf-8'))
    if (failure['passed'] is not False or failure['stage'] != 'inverse_started'
            or 'Invalid parent evidence envelope' not in failure.get('error', '')
            or failure.get('inverse') or failure['edit']['status'] != 'applied_observed'):
        raise ValueError('Only the exact rejected zero-write preview may continue here')
    last = json.loads(sorted((prior / 'tool-calls').glob('*.json'))[-1].read_text(encoding='utf-8'))
    content = last['response']['content']
    rejected = json.loads(content.split('\n\n', 1)[1])
    if (last['tool'] != 'bd_revert' or last['args'].get('preview') is not True
            or rejected['status'] != 'rejected' or rejected['setter_called'] is not False
            or rejected['recovery_record_created'] is not False):
        raise ValueError('No authoritative proof of an unexecuted inverse preview')
    manifest, _, epoch = live_manifest(Path(failure['manifest']))
    domain = failure['domain']
    if epoch != domain['process_epoch']:
        raise ValueError('Retained native epoch expired; no reference rebinding')
    # The retained native blocks belong to the failed source version. The only
    # runtime code change allowed here repairs host decoding, not those blocks.
    for rel, digest in failure['source_manifest'].items():
        if (rel.startswith('scripts/') and not rel.startswith('scripts/test_')
                and rel not in ('scripts/AscetStructureRead.cs', 'scripts/AscetStructureDecodeTests.cs',
                                'scripts/bde_main_workflow.py')
                and hashlib.sha256((service.ROOT / rel).read_bytes()).hexdigest() != digest):
            raise ValueError('Retained runtime source differs: ' + rel)
    output.mkdir(parents=True)
    candidate = source_manifest()
    for rel, digest in candidate.items():
        path = service.ROOT / rel
        if hashlib.sha256(path.read_bytes()).hexdigest() != digest:
            raise ValueError('Candidate changed while sealing')
        destination = output / 'source' / rel
        destination.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(path, destination)
    service.STORE = prior / 'store'
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_PROBE_PORT=str(manifest['port']), ASCET_BD_STRUCTURAL_WRITES='1',
        ASCET_BD_OPERATION_EXECUTOR='staged_v1', ASCET_BD_SOURCE_MATERIAL_CAPTURE='identity_v1',
        ASCET_BD_LOCAL_FIELD_INVERSE='native_source_v1')
    binary = build_oracle(output)
    calls = []
    result = {'passed': False, 'restored': False, 'full_delivery': False, 'complete_case_pass': False,
        'scope': 'Complete existing isolated literal history after an unexecuted preview decoder failure',
        'original_failure': str(prior), 'original_failed_verdict_preserved': True,
        'native_material_source_version': failure['source_manifest'], 'source_manifest': candidate,
        'process_epoch': epoch, 'domain': domain, 'component': failure['component'],
        'edit': failure['edit'], 'witness_retained': True}
    save = lambda: (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
    save()

    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)

    def native(label, function):
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(failure['component'], timeout=30,
                    environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain)
                value = function(adapter)
        save_new(output / (label + '.json'), {'result': value, 'wire': wire_result(wire)})
        return value

    def witness(action, label):
        return native(label, lambda a: a._exchange({'cmd': 'main_readonly_witness',
            'action': action, 'token': failure['witness_capture']['token']}))

    def record(row):
        save_new(output / 'tool-calls' / (str(len(calls)).zfill(3) + '.json'), row)
        calls.append(row)

    def tool(name, arguments):
        with bench.proxy(upstream_port=manifest['port']) as wire:
            client = ToolClient(output, domain['session'], record)
            client.env.update(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
            start = len(calls)
            meta, body, error = client.call(name, arguments)
        save_new(output / 'call-wire' / (str(start).zfill(3) + '.json'), wire_result(wire))
        if error:
            raise ValueError('Formal tool rejected: ' + body)
        verify_pages(calls[start:], body, arguments.get('max_bytes', 12288))
        return json.loads(body)

    def observation(label):
        pair = native(label, lambda a: {'native': a.observe(domain, []), 'public': a.observe_public(domain)})
        oracle = compare(pair['native']['entries'], pair['public'])
        if not oracle['passed']:
            raise ValueError('Independent public/native mismatch at ' + label)
        result.setdefault('public_oracles', {})[label] = oracle
        return pair

    try:
        log = StructureJournal(service.STORE / 'edits')
        edit = failure['edit']['change_id']
        events = log.read(edit)
        actual_after = next(e['payload']['after'] for e in events if e['kind'] == 'observed')
        status = native('initial-recovery', lambda a: a.recovery_status(domain, edit))
        if status['state'] != 'applied' or status['current'] != actual_after or status['after'] != actual_after:
            raise ValueError('Existing actual forward terminal changed; do not replay')
        before = json.loads((prior / 'before.json').read_text(encoding='utf-8'))
        after = json.loads((prior / 'after.json').read_text(encoding='utf-8'))
        head = edit
        for phase, suffix, state, expected in [('inverse', '_undo', 'reverted', before),
                ('redo', '_redo', 'applied', after), ('final_inverse', '_final_restore', 'reverted', before)]:
            result['stage'] = phase; save()
            request = {'change_id': head, 'request_id': prior.name + suffix}
            preview = tool('bd_revert', {**request, 'preview': True})
            if preview['status'] != 'preview':
                raise ValueError('Local inverse preview did not pass')
            receipt = tool('bd_revert', request)
            result[phase] = receipt; save()
            if receipt['status'] != 'verified_local' or not receipt.get('after_snapshot'):
                raise ValueError('Actual local inverse not confirmed: ' + receipt['status'])
            head = receipt['change_id']
            current = observation(phase + '-observation')
            if current['native'] != expected['native'] or current['public'] != expected['public']:
                raise ValueError('Independent full graph differs at ' + phase)
            material = native(phase + '-material', lambda a: a._exchange({'cmd': 'field_material_inspect', 'token': edit}))
            if (material['state'] != state or material['local_inverse_head_id'] != head
                    or material['local_inverse_profile'] != 'native_source_local_inverse_v1'):
                raise ValueError('Actual local head material ownership differs at ' + phase)
            recorded = log.read(head)
            head_before = next(e['payload']['before'] for e in recorded if e['kind'] == 'prepared')
            head_after = next(e['payload']['after'] for e in recorded if e['kind'] == 'observed')
            result.setdefault('heads', {})[phase] = {'head': head, 'before': head_before, 'after': head_after}
            diff = tool('bd_diff', {'change_id': head})
            if diff != log.diff(head):
                raise ValueError('Actual head diff differs from journal')
            save()
        result['witness_final'] = witness('check', 'witness-final-check')
        if not result['witness_final']['unchanged']:
            raise ValueError('Full native/source identity witness did not restore')
        result['witness_release'] = witness('release', 'witness-release')
        result['witness_retained'] = not result['witness_release']['released']
        result['restored'] = not result['witness_retained']
        result['sources_match'] = candidate == source_manifest()
        result['passed'] = result['restored'] and result['sources_match']
    except Exception as error:
        result['error'] = str(error); result['traceback'] = traceback.format_exc()
        try:
            result['failed_witness_export'] = witness('export', 'witness-failed-export')
        except Exception as export_error:
            result['witness_export_error'] = str(export_error)
    result['tool_calls'] = len(calls); save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'restored', 'tool_calls', 'stage', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
