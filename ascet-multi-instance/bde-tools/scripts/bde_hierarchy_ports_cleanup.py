"""Normal terminal reconciliation/inverse after a failed isolated port harness."""
import argparse
from collections import Counter
import json
from pathlib import Path
import time
import traceback

import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_public_oracle import public_projection, encoded
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--result', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    assert not args.output.exists()
    original = json.loads(args.result.read_text())
    service.STORE = args.result.parent / 'store'
    log = StructureJournal(service.STORE / 'edits')
    component = 'BDE_Tool_Experiments\\Trial_Hierarchy_20261001_100722_242e00'
    evidence = {'passed': False, 'original_result_sha256': service.digest(args.result.read_bytes()),
                'calls': [], 'outstanding': []}

    def save():
        args.output.write_text(json.dumps(evidence, indent=2), encoding='utf-8')

    def record(row):
        evidence['calls'].append(row)
        save()

    client = ToolClient(args.result.parent, 'ports-' + args.result.parent.name, record)

    def call(tool, values):
        start = time.monotonic()
        while True:
            _, text, failed = client.call(tool, values)
            value = json.loads(text)
            if failed and value.get('code') == 'ASCET_BUSY' and 'change_id' not in value and time.monotonic() - start < 30:
                time.sleep(2)
                continue
            assert not failed, value
            return value

    try:
        inverses = set()
        domain = None
        records = []
        for path in sorted(log.root.glob('edit_*')):
            events = log.read(path.name)
            source = events[0]['payload']
            if 'reverts' in source:
                status = log.receipt(path.name, events)['status']
                if status == 'outcome_unknown':
                    reply = call('bd_inspect', {'query': 'recovery', 'change_id': path.name, 'reconcile': True})
                    assert reply['receipt']['status'] == 'verified_local', reply
                    status = 'verified_local'
                if status == 'verified_local':
                    inverses.add(source['reverts'])
            else:
                assert source['component'].strip('\\') == component
                domain = source['domain']
                records.append((path.name, log.receipt(path.name, events)['status']))
        for token, status in reversed(records):
            if token in inverses or status not in ('applied_observed', 'postcondition_mismatch', 'outcome_unknown'):
                continue
            evidence['outstanding'].append(token)
            save()
            if status == 'outcome_unknown':
                reply = call('bd_inspect', {'query': 'recovery', 'change_id': token, 'reconcile': True})
                assert reply['receipt']['status'] == 'applied_observed', reply
            receipt = call('bd_revert', {'change_id': token, 'request_id': 'late-cleanup-' + token})
            assert receipt['status'] == 'verified_local', receipt
            evidence['outstanding'].remove(token)
        baseline = original['observations'][0]
        evidence['native'] = {}
        for scope in baseline['native']:
            with service.live_lock(), NativeStructureAdapter(component, scope) as adapter:
                value = adapter.observe(domain, [])
            evidence['native'][scope] = value
            assert value == baseline['native'][scope], scope
        with service.live_lock(), NativeStructureAdapter(component) as adapter:
            adapter.observe(domain, [])
            public = adapter._exchange({'cmd': 'observe_public_tree'})
            models = adapter.observe_models(domain)
        assert all(public_projection(public[s]) == public_projection(baseline['public'][s]) for s in public)
        assert Counter(map(encoded, models)) == Counter(map(encoded, baseline['models']))
        evidence.update(passed=True, baseline_restored=True, public=public, models=models)
    except Exception as error:
        evidence.update(error=repr(error), traceback=traceback.format_exc())
    save()
    print(json.dumps({k: evidence.get(k) for k in ('passed', 'baseline_restored', 'outstanding', 'error')}))
    return 0 if evidence['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
