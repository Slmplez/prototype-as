"""Reconcile the fixed stored-literal failure without replaying any model setter."""
from copy import deepcopy
import argparse
from collections import Counter
import json
import os
from pathlib import Path
import traceback

import bd_service as service
import bde_experiments as bench
from bd_class_interface_contract import graph_semantics
from bd_structure_journal import StructureJournal, differences, postcondition
from bd_native_structure import NativeStructureAdapter
from bde_class_shape_diagnostic import DiagnosticAdapter
from bde_public_oracle import public_projection, encoded
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--failure', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    failure = json.loads(args.failure.read_text(encoding='utf-8'))
    service.STORE = args.failure.parent / 'store'
    domain = failure['domain']
    component = failure['baseline']['Main']['component']
    token = 'edit_7fc3abd0ef12d19bb33e1c6d879007a286f65d1070ac105ce2b3b326e1d1f9f9'
    assert failure['outstanding'][-1] == token
    result = {'passed': False, 'apply_setters_replayed': 0, 'reconciliation_model_setters': 0, 'calls': [], 'outstanding': list(failure['outstanding'])}

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(call):
        result['calls'].append(call)
        save()

    client = ToolClient(args.output, domain['session'], record)
    log = StructureJournal(service.STORE / 'edits')
    events = log.read(token)
    request = events[0]['payload']
    before = next(e['payload']['before'] for e in events if e['kind'] == 'prepared')
    assert request['operation'] == 'create_block' and request['arguments'][1:3] == ['literal', '7.25']
    mapping = []
    for scope, snapshot in failure['baseline'].items():
        for row in snapshot['structure']['entries']:
            if row['kind'] == 'edge':
                mapping.append('|'.join((scope, row['ref'], row['source'], row['target'], ';'.join(','.join(map(str, p)) for p in row['route']))))
    try:
        save()
        with service.live_lock(), bench.proxy() as wire:
            with DiagnosticAdapter(component, environment=dict(os.environ, ASCET_BD_PROBE_PORT=str(wire['port']))) as adapter:
                adapter._ensure_open(domain)
                result['preflight'] = adapter._exchange({'cmd': 'class_shape', 'token': token})
                rebound = adapter._exchange({'cmd': 'class_shape_recovery', 'action': 'rebind', 'mapping': mapping})
                result['rebound'] = rebound
                assert rebound['before'] == before
                actual = rebound['current']
                assert postcondition(request, before, actual)
                delta = differences(before, actual)
                assert len(delta) == 2 and all(d['before'] is None and d['after']['kind'] in ('node', 'pin') for d in delta), delta
                expected = deepcopy(before)
                expected['entries'].extend(d['after'] for d in delta)
                expected['lookup_nodes'] += 1
                assert graph_semantics(actual) == graph_semantics(expected), 'Unexpected geometry/configuration/dataflow effect'
                public = adapter._exchange({'cmd': 'observe_public_tree'})
                for scope, original in failure['public_baseline']['tree'].items():
                    if scope != request['diagram']:
                        assert public_projection(public[scope]) == public_projection(original)
                result['full_public_preflight'] = public
                result['finished_native_terminal'] = adapter._exchange({'cmd': 'class_shape_recovery', 'action': 'finish'})
                assert result['finished_native_terminal']['current'] == actual
        result['repair_wire'] = {'request': wire['request'].result(), 'response': wire['response'].result(), 'errors': wire['errors']}
        save()
        _, receipt = client.value('bd_inspect', {'query': 'recovery', 'change_id': token, 'reconcile': True})
        result['reconciled'] = receipt
        assert receipt['reconciled'] and receipt['receipt']['status'] == 'applied_observed'
        for index, change in enumerate(reversed(failure['outstanding'])):
            _, inverse = client.value('bd_revert', {'change_id': change, 'request_id': 'shape-repair-inverse-' + str(index)})
            assert inverse['status'] == 'verified_local'
            result['outstanding'].remove(change)
            save()
        with service.live_lock(), NativeStructureAdapter(component) as adapter:
            adapter._ensure_open(domain)
            final = {scope: adapter.observe(domain, []) if scope == 'Main' else None for scope in failure['baseline']}
            public = adapter._exchange({'cmd': 'observe_public_tree'})
            models = adapter.observe_models(domain)
        for scope, original in failure['public_baseline']['tree'].items():
            assert public_projection(public[scope]) == public_projection(original), scope
        assert Counter(map(encoded, models)) == Counter(map(encoded, failure['public_baseline']['models']))
        for scope, original in failure['baseline'].items():
            with service.live_lock(), NativeStructureAdapter(component, scope) as adapter:
                final[scope] = adapter.observe(domain, [])
            assert graph_semantics(final[scope]) == graph_semantics(original['structure']), scope
        result.update(native_restored=final, public_restored=public, models_restored=models, passed=True)
    except Exception:
        result['error'] = traceback.format_exc()
    save()
    print(json.dumps({'passed': result['passed'], 'error': result.get('error'), 'outstanding': result['outstanding']}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
