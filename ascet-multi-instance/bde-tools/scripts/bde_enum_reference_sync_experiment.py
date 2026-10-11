"""Exact retained Enum reference sync preparation/execution; no original undo replay."""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bd_declaration_cache import classify
from bd_instance_pending import pending_path
from bd_native_graphical_effects import same_current
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--failed', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--prepared', type=Path, help='Execute one already-verified preparation; never prepare it again')
    args = parser.parse_args()
    failed, output = args.failed.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if output.exists() or not all(p.is_relative_to(owned) for p in (failed, output)):
        raise ValueError('Owned original failure and fresh output required')
    old = json.loads((failed / 'result.json').read_text(encoding='utf-8'))
    manifest, process, epoch = live_manifest(old['manifest'])
    if (old['passed'] is not False or old['isolated_pending'] is not True
            or old['process_epoch'] != epoch or old['original_restored'] is not False
            or not old['component'].startswith('BDE_Tool_Experiments\\Trial_')):
        raise ValueError('Same-epoch retained unknown isolated Enum required')
    marker = pending_path(old['domain'])
    pending = json.loads(marker.read_text(encoding='utf-8'))
    if (pending['domain'] != old['domain'] or pending['command'] != 'create_history'
            or pending['native_token'] != old['native_token']
            or pending.get('managed_context', {}).get('owner_change_id') != old['start_head']):
        raise ValueError('Exact unknown original Enum quarantine required')
    token, result_id = old['native_token'], pending['managed_context']['result_change_id']
    log = StructureJournal(Path(old['source']) / 'store/edits')
    before_wals = {t: log.read(t) for t in (token, result_id)}
    previous = None
    if args.prepared:
        if not args.prepared.resolve().is_relative_to(owned):
            raise ValueError('Owned exact completed preparation required')
        previous = json.loads((args.prepared / 'result.json').read_text(encoding='utf-8'))
        if (previous.get('passed') is not True or previous.get('execution_dispatched') is not False
                or previous.get('pending_retained') is not True or previous.get('sources_match') is not True
                or previous.get('failed_trial') != str(failed)
                or previous.get('domain') != old['domain'] or previous.get('result_change_id') != result_id):
            raise ValueError('Exact successful pure preparation required; no replay of started sync')
    output.mkdir(parents=True)
    result = dict(passed=False, scope='Exact retained Enum reference repair only; original undo remains unconfirmed',
        failed_trial=str(failed), prepared_trial=str(args.prepared.resolve()) if previous else None,
        manifest=old['manifest'], process_epoch=epoch, domain=old['domain'], component=old['component'],
        native_token=token, result_change_id=result_id, source_manifest=source_manifest(), observer_calls=0,
        execution_dispatched=False, original_undo_redispatched=False, original_restored=False,
        history_terminal_certified=False, pending_cleared=False, complete_case_pass=False, full_delivery=False)
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    save_new(output / 'original-pending.json', pending)
    for t, events in before_wals.items():
        save_new(output / (t + '-original-wal.json'), events)
    for relative in result['source_manifest']:
        target = output / 'source' / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(service.ROOT / relative, target)
    try:
        binary = build_oracle(output)
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: binary)
        environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
            ASCET_BD_ENUM_REFERENCE_REPAIR='exact_v1')
        def native(label, mode, signature=''):
            if live_manifest(old['manifest']) != (manifest, process, epoch):
                raise ValueError('Original epoch changed; no rebind')
            if json.loads(marker.read_text(encoding='utf-8')) != pending:
                raise ValueError('Original unknown quarantine changed')
            result['observer_calls'] += 1
            save()
            wire = None
            try:
                with patch.dict(os.environ, environment, clear=True), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                    with Observer(old['component'], timeout=30,
                            environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                        adapter._ensure_open(old['domain'])
                        value = adapter._exchange(dict(cmd='enum_reference_sync', action=mode,
                            token=token, result_change_id=result_id, signature=signature))
            except Exception as error:
                save_new(output / (label + '-failure.json'), dict(error=str(error),
                    wire=wire_result(wire) if wire is not None else None))
                raise
            save_new(output / (label + '.json'), dict(result=value, wire=wire_result(wire)))
            return value
        result['preparation'] = native('inspect-prepared' if previous else 'prepare',
            'inspect_prepared' if previous else 'prepare')
        p = result['preparation']
        expected = dict(profile='native_enum_reference_sync_preparation_v1', native_token=token,
            result_change_id=result_id, signature=result_id + '/r1', native_source_orders_alias_verified=True,
            model_operations_replayed=0, model_setters_called=0, store_called=False,
            database_modified_called=False, database_commit_called=False, write_authorized=False)
        if any(type(p.get(k)) is not type(v) or p[k] != v for k, v in expected.items()):
            raise ValueError('Exact zero-write reference repair preparation differs')
        owner = next(r['ref'] for r in p['declaration_target']['objects'] if r['class'] == 'SGClass')
        result['cache_classification'] = classify(p['declaration_target'], p['declaration_target_schema'],
            p['declaration_current'], p['declaration_current_schema'], owner=owner)
        if previous:
            prior = previous['preparation']
            if (p['signature'] != prior['signature'] or p['original_execution'] != prior['original_execution']
                    or not same_current({'profile':'native_graphical_current_v1', **p['declaration_current']},
                        {'profile':'native_graphical_current_v1', **prior['declaration_current']})
                    or not same_current({'profile':'native_graphical_current_v1', **p['declaration_target']},
                        {'profile':'native_graphical_current_v1', **prior['declaration_target']})):
                raise ValueError('Retained preparation differs across trial/connection')
            save_new(output / 'sync-intent.json', dict(domain=old['domain'], token=token, result_change_id=result_id,
                signature=p['signature'], automatic_retry=False, original_undo_redispatched=False))
            result['execution_dispatched'] = True
            save()
            result['actual'] = native('execute', 'execute', p['signature'])
            a = result['actual']
            if (a.get('profile') != 'native_enum_reference_sync_actual_v1' or a['native_token'] != token
                    or a['result_change_id'] != result_id or a['original_undo_redispatched'] is not False
                    or a['history_terminal_certified'] is not False or a['declaration_target_verified'] is not True
                    or a['native_source_orders_alias_verified'] is not True
                    or not same_current({'profile':'native_graphical_current_v1', **a['declaration_after']},
                        {'profile':'native_graphical_current_v1', **p['declaration_target']})):
                raise ValueError('Full actual reference repair target differs')
            proof = a['definition_evidence']
            if (proof['persisted_target_verified'] is not True or proof['phase'] != 'target'
                    or proof['definition_references_current'] != proof['definition_references_expected']
                    or proof['definition_references_persisted_current'] != proof['definition_references_expected']):
                raise ValueError('Both original definition reference sources must reach exact target')
            result['status'] = native('status', 'status')
            if result['status'] != a:
                raise ValueError('Retained reference repair terminal differs across connections')
        else:
            result['inspect_prepared'] = native('inspect-prepared', 'inspect_prepared')
            q = result['inspect_prepared']
            if (p['signature'] != q['signature'] or not same_current(
                    {'profile':'native_graphical_current_v1', **p['declaration_current']},
                    {'profile':'native_graphical_current_v1', **q['declaration_current']})):
                raise ValueError('Pure reference repair preparation CURRENT changed')
        result['pending_retained'] = json.loads(marker.read_text(encoding='utf-8')) == pending
        result['wals_unchanged'] = all(log.read(t) == events for t, events in before_wals.items())
        result['sources_match'] = result['source_manifest'] == source_manifest()
        result['passed'] = result['pending_retained'] and result['wals_unchanged'] and result['sources_match']
    except Exception as error:
        result.update(error=str(error), traceback=traceback.format_exc())
    finally:
        save()
    print(json.dumps({k: result.get(k) for k in ('passed','error','observer_calls','execution_dispatched',
        'original_undo_redispatched','pending_retained','wals_unchanged','sources_match')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
