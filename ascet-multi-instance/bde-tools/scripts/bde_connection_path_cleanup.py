"""Separate evidence for normal journal restoration of a failed path experiment."""
import argparse
import json
from pathlib import Path
import traceback

import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bde_connection_path_experiment import equivalent
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--run', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    previous = json.loads((args.run / 'result.json').read_text(encoding='utf-8'))
    service.STORE = args.run / 'store'
    sid = previous['calls'][0]['response']['content'].split('\n\n')[0]
    raw = service.load_record(json.loads(sid)['snapshot'], 's_', 'snapshots')
    result = {'passed': False, 'calls': [], 'restorations': [], 'outstanding': list(previous['outstanding']),
              'original_result_unchanged': True, 'original_result_sha256': service.digest((args.run / 'result.json').read_bytes())}

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(row):
        result['calls'].append(row)
        save()

    client = ToolClient(args.output, raw['session'], record)
    baseline = previous['observations'][0]
    try:
        for token in reversed(previous['outstanding']):
            _, recovery = client.value('bd_inspect', {'query': 'recovery', 'change_id': token, 'reconcile': True})
            assert recovery['reconciled'] and recovery['model_setters_called'] == 0, recovery
            _, restored = client.value('bd_revert', {'change_id': token, 'request_id': 'late-cleanup-' + token[-16:]})
            assert restored['status'] == ('reverted' if token.startswith('flow_') else 'verified_local'), restored
            result['restorations'].append(restored)
            result['outstanding'].remove(token)
            save()
        final = {}
        for c, base in baseline.items():
            native = {}
            domain = next(service.load_record(path.stem, 's_', 'snapshots') for path in (service.STORE / 'snapshots').glob('s_*.json')
                          if service.load_record(path.stem, 's_', 'snapshots')['component'] == c)
            domain = {'session': raw['session'], 'database': domain['database'], 'oid': domain['oid'], 'process_epoch': domain['ascet_process_epoch']}
            with service.live_lock():
                for scope in base['native']:
                    with NativeStructureAdapter(c, scope) as adapter:
                        native[scope] = adapter.observe(domain, [])
                with NativeStructureAdapter(c) as adapter:
                    adapter.observe(domain, [])
                    public = adapter._exchange({'cmd': 'observe_public_tree'})
                    models = adapter.observe_models(domain)
            final[c] = {'native': native, 'public': public, 'models': models}
        result['final'] = final
        result['baseline_restored'] = equivalent(final, baseline)
        result['passed'] = result['baseline_restored'] and not result['outstanding']
    except Exception:
        result['error'] = traceback.format_exc()
    save()
    print(json.dumps({key: result[key] for key in ('passed', 'outstanding')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
