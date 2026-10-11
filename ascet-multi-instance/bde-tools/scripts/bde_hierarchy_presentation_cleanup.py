"""Recover confirmed experiment journals; preserve original failure evidence."""
import argparse
import json
from pathlib import Path
import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bde_tool_client import ToolClient
from bde_public_oracle import public_projection, encoded


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--result', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    if args.output.exists(): raise ValueError('New output required')
    original = json.loads(args.result.read_text())
    run = args.result.parent
    service.STORE = run/'store'
    fixture = json.loads((service.ROOT/'analysis/bde-experiments/2026-10-01/bde-hierarchy-fixture-02/fixture.json').read_text())
    assert fixture['component'] == 'BDE_Tool_Experiments\\Trial_Hierarchy_20261001_100722_242e00'
    domain = {'session': str(run.resolve()), 'database': fixture['database'], 'oid': fixture['oid'], 'process_epoch': fixture['ascet_process_epoch']}
    result = {'calls': [], 'passed': False, 'outstanding': list(original['outstanding'])}
    def save(): args.output.write_text(json.dumps(result, indent=2), encoding='utf-8')
    def record(call): result['calls'].append(call); save()
    client = ToolClient(run, domain['session'], record)
    client.env['ASCET_BD_NATIVE_PRESENTATION'] = '1'
    for change in reversed(original['outstanding']):
        _, value = client.value('bd_diff', {'change_id': change, 'presentation': 'clear'})
        assert value['native']['status'] == 'ok'
        _, value = client.value('bd_revert', {'change_id': change, 'request_id': 'late-cleanup-'+change})
        assert value['status'] == 'verified_local'
        result['outstanding'].remove(change); save()
    with service.live_lock(), NativeStructureAdapter(fixture['component']) as adapter:
        adapter._ensure_open(domain)
        actual = {'tree': adapter._exchange({'cmd': 'observe_public_tree'}), 'models': adapter.observe_models(domain)}
    result['after'] = actual
    expected = original['baseline']
    result['public_restored'] = set(expected['tree']) == set(actual['tree']) and all(public_projection(expected['tree'][s]) == public_projection(actual['tree'][s]) for s in expected['tree'])
    result['declarations_restored'] = encoded(expected['models']) == encoded(actual['models'])
    result['passed'] = result['public_restored'] and result['declarations_restored'] and not result['outstanding']
    save()
    print(json.dumps({k: result[k] for k in ('passed','public_restored','declarations_restored','outstanding')}))


if __name__ == '__main__': main()
