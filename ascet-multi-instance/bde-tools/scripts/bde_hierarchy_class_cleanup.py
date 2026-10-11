"""Guarded six-tool inverses for confirmed nested-Class experiments interrupted externally."""
import argparse
from collections import Counter
import json
import os
from pathlib import Path
import traceback

import bd_service as service
from bd_class_interface_contract import graph_semantics
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_public_oracle import public_projection, encoded
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--failure', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    failure = json.loads(args.failure.read_text(encoding='utf-8'))
    os.environ['ASCET_BD_ENDPOINT_PORT'] = '32503'
    service.STORE = args.failure.parent / 'store'
    domain = failure['domain']
    component = failure['baseline']['Main']['component']
    assert component == 'BDE_Tool_Experiments\\Trial_Hierarchy_20261001_100722_242e00'
    result = {'passed': False, 'outstanding': list(failure['outstanding']), 'calls': [], 'business_writes': False}

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(call):
        result['calls'].append(call)
        save()

    client = ToolClient(args.output, domain['session'], record)
    try:
        log = StructureJournal(service.STORE / 'edits')
        for change in failure['outstanding']:
            assert log.receipt(change, log.read(change))['status'] == 'applied_observed', 'Unknown edits require separate reconciliation'
        for index, change in enumerate(reversed(failure['outstanding'])):
            _, inverse = client.value('bd_revert', {'change_id': change, 'request_id': 'confirmed-cleanup-' + args.output.name + '-' + str(index)})
            assert inverse['status'] == 'verified_local'
            result['outstanding'].remove(change)
            save()
        with service.live_lock(), NativeStructureAdapter(component) as adapter:
            adapter._ensure_open(domain)
            result['public'] = adapter._exchange({'cmd': 'observe_public_tree'})
            result['models'] = adapter.observe_models(domain)
        for scope, original in failure['public_baseline']['tree'].items():
            assert public_projection(result['public'][scope]) == public_projection(original), scope
        assert Counter(map(encoded, result['models'])) == Counter(map(encoded, failure['public_baseline']['models']))
        result['native'] = {}
        for scope, original in failure['baseline'].items():
            with service.live_lock(), NativeStructureAdapter(component, scope) as adapter:
                result['native'][scope] = adapter.observe(domain, [])
            assert graph_semantics(result['native'][scope]) == graph_semantics(original['structure']), scope
        result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    save()
    print(json.dumps({'passed': result['passed'], 'error': result.get('error'), 'outstanding': result['outstanding']}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
