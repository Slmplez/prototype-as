"""Actual Tool.call historical recovery query after readonly witness release."""
import argparse
import json
import os
from pathlib import Path
import shutil

import bd_service as service
import bde_experiments as bench
from bd_structure_journal import StructureJournal
from bde_acceptance import source_manifest
from bde_main_workflow import save_new, verify_pages, wire_result
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--failed', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    owned = service.ROOT / 'analysis/bde-experiments'; failed, output = args.failed.resolve(), args.output.resolve()
    if any(not p.is_relative_to(owned) for p in (failed, output)) or output.exists():
        raise ValueError('Owned failed history and fresh output required')
    prior = json.loads((failed / 'result.json').read_text(encoding='utf-8'))
    manifest = json.loads(Path(prior['manifest']).read_text(encoding='utf-8-sig'))
    service.STORE = failed / 'store'; log = StructureJournal(service.STORE / 'edits')
    tokens = [p.name for p in log.root.glob('edit_*') if log.receipt(p.name, log.read(p.name))['status'] == 'compensated']
    if len(tokens) != 1:
        raise ValueError('Exactly one distinctly compensated failed forward required')
    token = tokens[0]; before_events = log.read(token); output.mkdir(parents=True)
    result = {'passed': False, 'scope': 'Historical compensated receipt only; no current model verification',
        'native_token': token, 'domain': prior['domain'], 'source_manifest': source_manifest(),
        'complete_case_pass': False, 'full_delivery': False}
    for relative in result['source_manifest']:
        dest = output / 'source' / relative; dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / relative, dest)
    calls = []
    def record(row):
        save_new(output / 'tool-calls' / (str(len(calls)).zfill(3) + '.json'), row); calls.append(row)
    with bench.proxy(upstream_port=manifest['port']) as wire:
        client = ToolClient(output, prior['domain']['session'], record)
        client.env.update(ASCET_BD_ENDPOINT_PORT=str(manifest['port']), ASCET_BD_PROBE_PORT=str(wire['port']))
        replies = []
        for reconcile in (False, True):
            start = len(calls)
            _, body, error = client.call('bd_inspect', {'query': 'recovery', 'change_id': token,
                'reconcile': reconcile, 'max_bytes': 8192})
            if error:
                raise ValueError('Historical recovery query rejected: ' + body)
            verify_pages(calls[start:], body, 8192); reply = json.loads(body); replies.append(reply)
            if (reply['receipt']['status'] != 'compensated' or reply['model_mutation_dispatched'] is not False
                    or reply['current_model_verified'] is not False or reply['instance_quarantined'] is not False):
                raise ValueError('Historical query implies mutation or current model verification')
        start = len(calls)
        _, body, error = client.call('bd_diff', {'change_id': token, 'max_bytes': 8192})
        if error:
            raise ValueError('Compensated actual diff rejected: ' + body)
        verify_pages(calls[start:], body, 8192); result['diff'] = json.loads(body)
        if (result['diff']['status'] != 'compensated'
                or result['diff']['failure_compensation']['primitive_writes'] != 10
                or len(result['diff']['failure_compensation']['actual_native_changes']) != 6):
            raise ValueError('Automatic compensated diff lacks actual native/source progress')
    result.update(replies=replies, tool_calls=len(calls), wire=wire_result(wire),
        journal_unchanged=log.read(token) == before_events,
        sources_match=result['source_manifest'] == source_manifest())
    result['passed'] = (result['wire']['request']['frames'] == 0 and result['wire']['response']['frames'] == 0
        and not result['wire']['errors'] and result['journal_unchanged'] and result['sources_match'])
    save_new(output / 'result.json', result)
    print(json.dumps({k: result[k] for k in ('passed', 'tool_calls', 'journal_unchanged')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
