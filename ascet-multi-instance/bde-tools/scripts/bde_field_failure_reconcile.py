"""Formal read-only classification of a previously completed distinct compensation."""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bd_edit_journal import file_lock
from bd_field_failure_recovery import register
from bd_instance_pending import pending_path
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, verify_pages, wire_result
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--failed', type=Path, required=True)
    parser.add_argument('--prepared', type=Path, required=True)
    parser.add_argument('--applied', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    owned = service.ROOT / 'analysis/bde-experiments'
    failed, prepared, applied, output = [getattr(args, k).resolve() for k in ('failed', 'prepared', 'applied', 'output')]
    if any(not p.is_relative_to(owned) for p in (failed, prepared, applied, output)) or output.exists():
        raise ValueError('Exact owned compensation evidence and fresh output required')
    prior = json.loads((failed / 'result.json').read_text(encoding='utf-8'))
    restored = json.loads((applied / 'result.json').read_text(encoding='utf-8'))
    manifest, _, epoch = live_manifest(Path(prior['manifest']))
    if epoch != prior['process_epoch'] or restored['restored'] is not True or restored['passed'] is not True:
        raise ValueError('Exact same-epoch previously completed distinct restoration required')
    domain = prior['domain']; token = restored['native_token']; witness = restored['witness_token']
    service.STORE = failed / 'store'; log = StructureJournal(service.STORE / 'edits')
    output.mkdir(parents=True)
    result = {'passed': False, 'restored': False, 'scope': 'Formal bd_inspect compensation classification only',
        'failed_trial': str(failed), 'prepared_trial': str(prepared), 'applied_trial': str(applied),
        'manifest': prior['manifest'], 'process_epoch': epoch, 'domain': domain,
        'native_token': token, 'source_manifest': source_manifest(), 'original_edit_replayed': False,
        'model_mutation_dispatched': False, 'model_setters_called': 0, 'store_called': False,
        'complete_case_pass': False, 'full_delivery': False, 'pending_cleared': False}
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    for relative in result['source_manifest']:
        dest = output / 'source' / relative; dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / relative, dest)
    calls = []
    def record(row):
        save_new(output / 'tool-calls' / (str(len(calls)).zfill(3) + '.json'), row); calls.append(row)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']))
    try:
        binary = build_oracle(output)
        with file_lock(log.root / 'journal.lock'), service.live_lock():
            result['registered'] = register(log, token, prepared, applied)
        save()
        with patch.dict(os.environ, environment), bench.proxy(upstream_port=manifest['port']) as wire:
            client = ToolClient(output, domain['session'], record)
            client.env.update(environment, ASCET_BD_PROBE_PORT=str(wire['port']))
            for index, reconcile in enumerate((False, True)):
                start = len(calls)
                _, body, error = client.call('bd_inspect', {'query': 'recovery', 'change_id': token,
                    'reconcile': reconcile, 'max_bytes': 8192})
                if error:
                    raise ValueError('Formal compensation classification rejected: ' + body)
                verify_pages(calls[start:], body, 8192)
                reply = json.loads(body)
                result['formal_' + ('reconciled' if reconcile else 'readonly')] = reply
                save()
                if reply['model_mutation_dispatched'] is not False or reply['original_edit_replayed'] is not False:
                    raise ValueError('Classification implies model replay')
                if reconcile and (reply['reconciled'] is not True or reply['receipt']['status'] != 'compensated'):
                    raise ValueError('Original failed forward was not distinctly compensated')
                if not reconcile and (reply['reconciled'] is not False or reply['instance_quarantined'] is not True):
                    raise ValueError('Readonly inspection changed quarantine')
        result['formal_wire'] = wire_result(wire)
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: binary)
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            with Observer(prior['component'], timeout=30,
                    environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                adapter._ensure_open(domain)
                result['final_witness'] = adapter._exchange({'cmd': 'main_readonly_witness', 'action': 'check', 'token': witness})
                save()
                if result['final_witness']['unchanged'] is not True:
                    raise ValueError('Formal readonly classification changed original native/source/identity/order')
                result['witness_release'] = adapter._exchange({'cmd': 'main_readonly_witness', 'action': 'release', 'token': witness})
        result['witness_wire'] = wire_result(wire)
        result['pending_cleared'] = not pending_path(domain).exists()
        result['restored'] = result['final_witness']['unchanged'] and result['witness_release']['released']
        result['sources_match'] = result['source_manifest'] == source_manifest()
        result['tool_calls'] = len(calls)
        result['passed'] = result['restored'] and result['pending_cleared'] and result['sources_match']
    except Exception as error:
        result['error'] = str(error); result['traceback'] = traceback.format_exc()
        result['tool_calls'] = len(calls)
    save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'restored', 'pending_cleared', 'tool_calls', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
