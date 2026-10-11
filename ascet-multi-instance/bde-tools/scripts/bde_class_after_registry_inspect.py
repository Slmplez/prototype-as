"""Inspect a confirmed isolated Class edit after a separately reverted ordinary edit."""
import argparse
import json
import os
from pathlib import Path
import traceback

import bd_class_tools as tools
import bd_service as service
import bde_experiments as bench
from bde_isolated_runtime import live_manifest


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--store', type=Path, required=True)
    parser.add_argument('--change-id', required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    manifest, _, epoch = live_manifest(args.manifest)
    service.STORE = args.store.resolve()
    intent = tools.read_intent(args.change_id)
    _, applied, audited = tools.terminal_raw(args.change_id)
    if (intent['identity']['ascet_process_epoch'] != epoch
            or audited['dispatch_count'] != audited['completed_count']):
        raise ValueError('Confirmed applied same-process Class edit required')
    tools.require_sandbox(intent['identity']['component'])
    args.output.mkdir(parents=True, exist_ok=False)
    original_files = lambda: {str(path.relative_to(tools.root(args.change_id))): service.digest(path.read_bytes())
        for path in tools.root(args.change_id).rglob('*') if path.is_file()}
    result = {'passed': False, 'restored': False, 'model_setters_called': 0,
              'change_id': args.change_id, 'source_hashes': original_files()}
    try:
        expected = tools.observation(applied, 'after')
        request = tools.inputs(intent['identity'])
        request['recovery_probe_selector'] = tools.native_selector(intent['operation'])
        tools.write(args.output / 'input.json', request)
        os.environ['ASCET_BD_ENDPOINT_PORT'] = str(manifest['port'])
        os.environ['ASCET_BD_CLASS_OBSERVATION_MODE'] = 'public_oracle'
        with service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            os.environ['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            raw, code = tools.invoke(args.output / 'input.json', args.output / 'raw.json', 'observe')
        result['wire'] = {'request': wire['request'].result(), 'response': wire['response'].result(), 'errors': wire['errors']}
        if (code or raw.get('status') != 'observed' or raw.get('model_setters_called') != 0
                or raw.get('model_mutation_dispatched') is not False or wire['errors']
                or tools.observation(raw, 'observed') != expected
                or raw.get('ascet_process_epoch') != epoch or raw.get('dirty_before') != 0 or raw.get('dirty_after') != 0):
            raise ValueError('Complete independent public/native applied baseline differs')
        result['native_recovery_probe'] = raw['native_recovery_probe']
        result['complete_applied_baseline_matches'] = True
        live_manifest(args.manifest)
        result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    result['original_files_unchanged'] = original_files() == result['source_hashes']
    result['passed'] = result['passed'] and result['original_files_unchanged']
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({key: result.get(key) for key in ('passed', 'restored', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
