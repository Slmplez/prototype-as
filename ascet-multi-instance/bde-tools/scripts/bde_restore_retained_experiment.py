"""Restore a retained isolated structural experiment using its original journal."""
import argparse
from contextlib import nullcontext
import json
from pathlib import Path

import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    original = json.loads((args.experiment / 'result.json').read_text(encoding='utf-8'))
    change_id = original['edit']['change_id']
    event = json.loads((args.experiment / 'journal' / change_id / '000000.json').read_text(encoding='utf-8'))
    source = event['payload']
    if not source['component'].replace('/', '\\').startswith('BDE_Tool_Experiments\\Trial_'):
        raise ValueError('Only isolated experimental components may be restored')
    args.output.mkdir(parents=True, exist_ok=False)
    result = {'original_change': change_id, 'passed': False}
    try:
        with service.live_lock(), NativeStructureAdapter(source['component']) as adapter:
            result['revert'] = StructureJournal(args.experiment / 'journal').revert(
                change_id, args.output.name, adapter, nullcontext)
            result['public_after'] = adapter.observe_public(source['domain'])
            result['after'] = adapter.observe(source['domain'], source['arguments'][0])
            result['independent_restored'] = result['public_after'] == original['public_before']
            result['native_restored'] = result['after'] == original['before']
            result['passed'] = result['independent_restored'] and result['native_restored'] and result['revert']['status'] == 'verified_local'
    except Exception as error:
        result['error'] = repr(error)
    finally:
        (args.output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
        print(json.dumps(result, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
