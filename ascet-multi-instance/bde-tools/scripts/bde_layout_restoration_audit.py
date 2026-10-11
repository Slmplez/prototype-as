"""Fresh ordinary production-reader bookends after separate exact layout recovery."""
import argparse
import json
import os
from pathlib import Path
import traceback
from unittest.mock import patch

import bd_instance_pending as pending
import bd_service as service
import bde_experiments as bench
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_windows_endpoint import endpoint_process


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', type=Path, required=True)
    parser.add_argument('--reconciliation', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    source, reconciliation, output = args.experiment.resolve(), args.reconciliation.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if (any(not p.is_relative_to(owned) for p in (source, reconciliation, output))
            or output.is_relative_to(source) or output.is_relative_to(reconciliation)):
        raise ValueError('Separate owned evidence paths required')
    verified = json.loads((reconciliation / 'result.json').read_text())
    if verified.get('passed') is not True or verified.get('restored') is not True or verified.get('pending_cleared') is not True:
        raise ValueError('Completed exact verified recovery required')
    previous = json.loads((source / 'result.json').read_text())
    row = previous['rounds'][-1]
    request = StructureJournal(source / 'journal').read(row['edit']['change_id'])[0]['payload']
    domain = request['domain']
    manifest = json.loads(Path(previous['manifest']).read_text(encoding='utf-8-sig'))
    if endpoint_process(manifest['port']) != int(domain['process_epoch'].split('/')[0]) or domain['database'] != manifest['database']:
        raise ValueError('Exact recovered live endpoint required')
    pending.check(domain)
    output.mkdir(parents=True, exist_ok=False)
    originals = lambda: {str(p.relative_to(source)): service.digest(p.read_bytes()) for p in source.rglob('*') if p.is_file()}
    result = {'passed': False, 'full_delivery': False, 'model_setters_called': 0, 'store_called': False,
              'original_hashes': originals(), 'reconciliation_sha256': service.digest((reconciliation / 'result.json').read_bytes())}
    wire = None
    try:
        environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']))
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            environment['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            with NativeStructureAdapter(request['component'], environment=environment) as adapter:
                result['native_before'] = adapter.observe(domain, [])
                result['public_before'] = adapter.observe_public(domain)
                result['native_after'] = adapter.observe(domain, [])
                result['public_after'] = adapter.observe_public(domain)
        result['original_files_unchanged'] = originals() == result['original_hashes']
        result['passed'] = (result['native_before'] == row['full_before'] == result['native_after']
            and result['public_before'] == row['public_before'] == result['public_after']
            and result['original_files_unchanged'] and not wire['errors'])
    except Exception as error:
        result.update(error=repr(error), traceback=traceback.format_exc())
    finally:
        if wire is not None:
            result['wire'] = {'requests': wire['request'].result(), 'responses': wire['response'].result(), 'errors': wire['errors']}
        (output / 'result.json').write_text(json.dumps(result, indent=2))
    print(json.dumps({key: result.get(key) for key in ('passed', 'error', 'original_files_unchanged')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
