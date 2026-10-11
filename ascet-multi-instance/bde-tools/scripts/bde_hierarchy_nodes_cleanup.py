"""Normal journal inverses after a no-setter busy refusal; preserve failed evidence."""
import argparse
import json
from pathlib import Path
import traceback

import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bde_public_oracle import public_projection, encoded
from bde_tool_client import ToolClient
from collections import Counter


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--result', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    if args.output.exists():
        raise ValueError('New cleanup evidence required')
    original = json.loads(args.result.read_text(encoding='utf-8'))
    component = original['component']
    if component != 'BDE_Tool_Experiments\\Trial_Hierarchy_20261001_100722_242e00':
        raise ValueError('Exact isolated hierarchy fixture required')
    folder = args.result.parent
    service.STORE = folder / 'store'
    baseline = original['baseline']
    sample = baseline['Main']
    domain = {'session': str(folder.resolve()), 'database': sample['database'], 'oid': sample['oid'],
              'process_epoch': sample['ascet_process_epoch']}
    result = {'passed': False, 'original_result_sha256': service.digest(args.result.read_bytes()),
              'calls': [], 'outstanding': list(original['outstanding'])}

    def save():
        args.output.write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(call):
        result['calls'].append(call)
        save()

    client = ToolClient(folder, domain['session'], record)
    try:
        save()
        for change in reversed(original['outstanding']):
            _, body, error = client.call('bd_revert', {'change_id': change, 'request_id': 'late-cleanup-' + change})
            receipt = json.loads(body)
            assert not error and receipt['status'] == 'verified_local', receipt
            result['outstanding'].remove(change)
            save()
        result['native'] = {}
        for scope in baseline:
            with service.live_lock(), NativeStructureAdapter(component, scope) as adapter:
                result['native'][scope] = adapter.observe(domain, [])
            assert result['native'][scope] == baseline[scope]['structure'], scope
        with service.live_lock(), NativeStructureAdapter(component) as adapter:
            adapter._ensure_open(domain)
            result['public'] = adapter._exchange({'cmd': 'observe_public_tree'})
            result['models'] = adapter.observe_models(domain)
        expected = original['public_baseline']
        assert set(result['public']) == set(expected['tree'])
        assert all(public_projection(result['public'][s]) == public_projection(expected['tree'][s]) for s in baseline)
        assert Counter(map(encoded, result['models'])) == Counter(map(encoded, expected['models']))
        result.update(passed=True, native_restored=True, public_restored=True, declarations_restored=True)
    except Exception:
        result['error'] = traceback.format_exc()
    save()
    print(json.dumps({k: v for k, v in result.items() if k not in ('calls', 'native', 'public', 'models')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
