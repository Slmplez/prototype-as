"""Read-only diagnosis of the exact retained unknown Enum history; never replay it."""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bd_instance_pending import pending_path
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_native_graphical_effects import same_current
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result


def same_diagnostic(left, right):
    """Keep every field and ordered member; only native maps/sets are unordered."""
    images = {'declaration_current', 'declaration_target'}
    schemas = {'declaration_current_schema', 'declaration_target_schema'}
    if left.keys() != right.keys():
        return False
    for key in left:
        if key in images:
            if not same_current({'profile': 'native_graphical_current_v1', **left[key]},
                    {'profile': 'native_graphical_current_v1', **right[key]}):
                return False
        elif key in schemas:
            if ({r['ref']: r for r in left[key]['objects']} != {r['ref']: r for r in right[key]['objects']}
                    or {k: v for k, v in left[key].items() if k != 'objects'} !=
                       {k: v for k, v in right[key].items() if k != 'objects'}):
                return False
        elif left[key] != right[key]:
            return False
    return True


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--failed', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    failed, output = args.failed.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if output.exists() or not all(p.is_relative_to(owned) for p in (failed, output)):
        raise ValueError('Original owned failure and fresh owned output required')
    old = json.loads((failed / 'result.json').read_text(encoding='utf-8'))
    manifest, process, epoch = live_manifest(old['manifest'])
    if (old['passed'] is not False or old.get('isolated_pending') is not True
            or old['process_epoch'] != epoch or old['original_restored'] is not False
            or not old['component'].startswith('BDE_Tool_Experiments\\Trial_')):
        raise ValueError('Exact-epoch unrestored isolated unknown Enum failure required')
    quarantine = pending_path(old['domain'])
    pending = json.loads(quarantine.read_text(encoding='utf-8'))
    if pending['domain'] != old['domain'] or pending['command'] != 'create_history':
        raise ValueError('Exact original history quarantine required')
    original_token = old['native_token']
    managed = pending.get('managed_context', {})
    if pending['native_token'] != original_token or managed.get('owner_change_id') != old['start_head']:
        raise ValueError('Exact original creation token and unknown owner required')
    result_token = managed['result_change_id']
    log = StructureJournal(Path(old['source']) / 'store/edits')
    original_events, failed_events = log.read(original_token), log.read(result_token)
    if (not any(e['kind'] == 'finished' and e['payload'].get('status') == 'outcome_unknown' for e in failed_events)
            or not any(e['kind'] == 'started' and e['payload'].get('native_token') == original_token for e in failed_events)):
        raise ValueError('Exact original unknown started WAL required')
    output.mkdir(parents=True)
    result = dict(passed=False, scope='Readonly retained original Enum failure diagnosis',
        failed_trial=str(failed), manifest=old['manifest'], process_epoch=epoch, domain=old['domain'],
        component=old['component'], native_token=original_token, result_change_id=result_token,
        source_manifest=source_manifest(), observer_calls=0, model_setters_called=0, store_called=False,
        execution_redispatched=False, pending_cleared=False, original_restored=False,
        complete_case_pass=False, full_delivery=False)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    save_new(output / 'original-forward-wal.json', original_events)
    save_new(output / 'unknown-history-wal.json', failed_events)
    save_new(output / 'original-pending.json', pending)
    for relative in result['source_manifest']:
        target = output / 'source' / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / relative, target)
    try:
        binary = build_oracle(output)
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: binary)
        environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']))
        def native(label):
            if live_manifest(old['manifest']) != (manifest, process, epoch):
                raise ValueError('Original live epoch changed; no rebind')
            if json.loads(quarantine.read_text(encoding='utf-8')) != pending:
                raise ValueError('Original quarantine changed')
            result['observer_calls'] += 1
            save()
            wire = None
            try:
                with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                    with Observer(old['component'], timeout=30,
                            environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                        adapter._ensure_open(old['domain'])
                        value = adapter._exchange(dict(cmd='enum_history_failure_diagnostic',
                            token=original_token, result_change_id=result_token))
            except Exception as error:
                save_new(output / (label + '-failure.json'), dict(error=str(error),
                    wire=wire_result(wire) if wire is not None else None))
                raise
            save_new(output / (label + '.json'), dict(result=value, wire=wire_result(wire)))
            return value
        result['diagnostic'] = native('diagnostic')
        result['repeat_diagnostic'] = native('repeat-diagnostic')
        if not same_diagnostic(result['diagnostic'], result['repeat_diagnostic']):
            raise ValueError('Original failure diagnosis changed across readonly connections')
        for value in (result['diagnostic'], result['repeat_diagnostic']):
            if any(value[k] is not True for k in ('declaration_diagnosis_unchanged',
                    'native_diagnosis_unchanged', 'source_diagnosis_unchanged')):
                raise ValueError('Readonly diagnosis changed the complete retained current images')
            controls = value.get('native_rejection_controls', [])
            if (len(controls) != 2 or {c['name'] for c in controls} != {'wrong_presence', 'wrong_original_proxy'}
                    or any(c['passed'] is not True for c in controls)):
                raise ValueError('Exact native detached Enum rejection controls failed')
        from bd_declaration_cache import classify
        d = result['diagnostic']
        owner = next(r['ref'] for r in d['declaration_target']['objects'] if r['class'] == 'SGClass')
        result['cache_drift_from_target'] = classify(d['declaration_target'], d['declaration_target_schema'],
            d['declaration_current'], d['declaration_current_schema'], owner=owner)
        result['pending_retained'] = json.loads(quarantine.read_text(encoding='utf-8')) == pending
        result['wals_unchanged'] = (log.read(original_token) == original_events and log.read(result_token) == failed_events)
        result['sources_match'] = result['source_manifest'] == source_manifest()
        result['passed'] = result['pending_retained'] and result['wals_unchanged'] and result['sources_match']
    except Exception as error:
        result.update(error=str(error), traceback=traceback.format_exc())
    finally:
        save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'error', 'observer_calls', 'pending_retained',
        'execution_redispatched', 'wals_unchanged', 'sources_match')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
