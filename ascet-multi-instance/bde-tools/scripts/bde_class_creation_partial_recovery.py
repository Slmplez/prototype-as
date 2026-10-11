"""Classify or restore one retained signature-only creation failure in its original disposable runtime."""
import argparse
from copy import deepcopy
import json
import os
from pathlib import Path
import subprocess
import traceback
from unittest.mock import patch

import bd_service as service
import bd_class_tools as tools
import bd_instance_pending as pending
from bd_class_selector import select_method
from bd_class_study_journal import audit, read_events
from bd_edit_journal import fingerprint
from bde_class_interface_probe import public_projection
from bde_isolated_runtime import live_manifest
import bde_experiments as bench


def classify_signature(before, current, selector, native):
    original = select_method(before, {key: selector[key] for key in ('diagram', 'method_alias')})
    actual = select_method(current, {key: selector[key] for key in ('diagram', 'method_alias')})
    if (native['state'] != 'mutation_started' or native['original_signature_restored'] is not False
            or native['original_arguments'] != [row['alias'] for row in original['arguments']]
            or native['current_arguments'] != native['original_arguments'] + [native['created_alias']]
            or len(actual['arguments']) != len(original['arguments']) + 1):
        raise ValueError('Actual retained creation does not match the original arguments plus created object')
    created = actual['arguments'][-1]
    if fingerprint(created) != fingerprint({
        'alias': native['created_alias'], 'slot': 'argument', 'index': len(original['arguments']) + 1,
        'name': original['name'] + '/' + selector['name'], 'model_type': selector['model_type'],
        'native_class': 'SGMethodArgument', 'owner_matches': True, 'in': True, 'out': False, 'in_out': False}):
        raise ValueError('Created formal fields differ from the exact requested appended argument')
    expected = deepcopy(before)
    select_method(expected, {key: selector[key] for key in ('diagram', 'method_alias')})['arguments'].append(created)
    if fingerprint(current) != fingerprint(expected):
        raise ValueError('Full signature differs outside the actual appended argument')


def complete_restoration(full, prepared):
    expected = {'observation': prepared['observation'], 'owners': prepared['owners']}
    actual = {'observation': full['before'], 'owners': tools.observation(full, 'observed')['owners']}
    if fingerprint(actual) != fingerprint(expected):
        raise ValueError('Complete original owner graphs/configurations/public values not restored')
    return actual


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--experiment', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    mode = parser.add_mutually_exclusive_group()
    mode.add_argument('--execute', action='store_true')
    mode.add_argument('--reconcile', type=Path, help='Verify and release a completed prior restoration without setter replay')
    args = parser.parse_args()
    manifest, process, epoch = live_manifest(args.manifest)
    source, output = args.experiment.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not source.is_relative_to(owned) or not output.is_relative_to(owned) or output.is_relative_to(source):
        raise ValueError('Separate owned failure/recovery evidence required')
    failure = json.loads((source / 'result.json').read_text(encoding='utf-8'))
    original = json.loads((source / 'study-0.json').read_text(encoding='utf-8'))
    events = read_events(source / 'study-0.wal')
    domain = events[0]['payload']['domain']
    prepared = next(event['payload'] for event in events if event['kind'] == 'prepared_all')
    evidence = audit(source / 'study-0.wal')
    if (failure.get('passed') is not False or original['ascet_process_epoch'] != epoch
            or original['database'].lower() != manifest['database'].lower()
            or original['operation'] != 'closed_create_argument' or evidence['status'] != 'outcome_unknown'
            or evidence['dispatch_count'] != 1 or evidence['completed_count'] != 0
            or evidence['unknown_step']['step'] != 'signature_apply'
            or events[0]['payload']['caller_resolution'] != 'native'):
        raise ValueError('Exact first-signature-only unknown creation required')
    tools.require_sandbox(original['component'])
    marker = pending.pending_path(domain)
    expected_marker = json.loads(marker.read_text(encoding='utf-8'))
    if expected_marker['domain'] != domain or expected_marker['native_token'] != str((source / 'study-0.wal').resolve()):
        raise ValueError('Original failed request quarantine binding differs')
    prior = None
    prior_hashes = None
    if args.reconcile:
        prior = args.reconcile.resolve()
        if not prior.is_relative_to(owned) or prior == output or prior.is_relative_to(source):
            raise ValueError('Separate owned completed restoration evidence required')
        prior_result = json.loads((prior / 'result.json').read_text(encoding='utf-8'))
        prior_restore = json.loads((prior / 'restore.json').read_text(encoding='utf-8'))
        prior_intent = json.loads((prior / 'restore-intent.json').read_text(encoding='utf-8'))
        if (prior_result.get('passed') is not False or prior_result.get('restore_dispatched') is not True
                or prior_result.get('original_files_unchanged') is not True or prior_result.get('source_drift')
                or prior_result.get('original_experiment') != str(source)
                or prior_intent.get('source') != str(source) or prior_intent.get('domain') != domain
                or prior_intent.get('automatic_retry') is not False
                or prior_restore.get('status') != 'ok' or prior_restore['native']['state'] != 'restored'
                or prior_restore['native']['original_signature_restored'] is not True
                or fingerprint(prior_restore['signature']) != fingerprint(original['before']['signature'])
                or prior_restore['public_after'] != original['before']['public_signature']):
            raise ValueError('Exact completed original-signature restoration required; setters cannot replay')
        prior_hashes = {str(p.relative_to(prior)): service.digest(p.read_bytes()) for p in prior.rglob('*') if p.is_file()}
    witnesses = []
    for owner in prepared['owners']:
        witnesses.extend([owner['oid'] + '/Main', str(owner['scopes']['Main']['generation'])])
    selector = original['selector']
    request = {'database': original['database'], 'component': original['component'], 'oid': original['oid'],
        'process_epoch': epoch, 'database_session': original['database_session'],
        'selector': [selector[key] for key in ('diagram', 'method_alias', 'name', 'model_type')],
        'witnesses': witnesses, 'action': 'inspect', 'expected_signature': ''}
    files = ('AscetClassCreationPartial.cs', 'AscetClassInterfaceProbe.cs', 'AscetStructureRead.cs',
        'bde_class_creation_partial.st', 'bde_class_interface_probe.st', 'bde_database_identity.st',
        'bde_class_creation_partial_recovery.py', 'bd_class_tools.py', 'bd_class_study_journal.py')
    originals = lambda: {str(p.relative_to(source)): service.digest(p.read_bytes()) for p in source.rglob('*') if p.is_file()}
    output.mkdir(parents=True, exist_ok=False)
    result = {'passed': False, 'execute': args.execute, 'original_experiment': str(source),
        'original_hashes': originals(), 'full_delivery': False, 'creation_replayed': False,
        'source_manifest': {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in files},
        'restore_dispatched': False, 'calls': []}
    if prior:
        result.update(reconciliation_source=str(prior), reconciliation_source_hashes=prior_hashes)
    save = lambda: (output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    save()
    try:
        if prior and prior_intent['source_hashes'] != result['original_hashes']:
            raise ValueError('Original evidence differs from completed restoration intent')
        binary = output / 'AscetClassCreationPartial.exe'
        service.run_process(['C:/Windows/Microsoft.NET/Framework/v4.0.30319/csc.exe', '/nologo', '/platform:x86',
            '/main:AscetClassCreationPartial', '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', '/r:System.Web.Extensions.dll',
            '/out:' + str(binary), *['/resource:' + str(service.ROOT / 'scripts' / name) + ',' + name for name in files if name.endswith('.st')],
            *[str(service.ROOT / 'scripts' / name) for name in files if name.endswith('.cs')]], 30, build_step=True)
        import shutil
        shutil.copyfile('E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', output / 'Etas.AscetNET.dll')
        environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']))
        def call(action, expected=''):
            path, raw = output / (action + '-input.json'), output / (action + '.json')
            service.write_once(path, dict(request, action=action, expected_signature=expected))
            with bench.proxy(upstream_port=manifest['port']) as wire:
                done = subprocess.run([str(binary), str(path), str(raw)], capture_output=True, timeout=30,
                    env={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])})
            value = json.loads(raw.read_text(encoding='utf-8')) if raw.exists() else {}
            result['calls'].append({'action': action, 'exit_code': done.returncode, 'stdout': done.stdout.decode(errors='replace'),
                'stderr': done.stderr.decode(errors='replace'), 'request': wire['request'].result(),
                'response': wire['response'].result(), 'wire_errors': wire['errors'], 'raw': str(raw)})
            save()
            if done.returncode or value.get('status') != 'ok' or wire['errors']:
                raise ValueError(value.get('error', 'Missing partial creation reply'))
            return value
        with patch.dict(os.environ, environment), service.live_lock():
            live_manifest(args.manifest)
            observed = call('inspect')
            if prior:
                if (observed['native']['state'] != 'restored'
                        or observed['native']['original_signature_restored'] is not True
                        or observed['native']['created_alias'] != prior_restore['native']['created_alias']
                        or observed['native']['original_arguments'] != prior_restore['native']['original_arguments']
                        or observed['native']['current_arguments'] != observed['native']['original_arguments']
                        or fingerprint(observed['signature']) != fingerprint(original['before']['signature'])
                        or observed['public_after'] != original['before']['public_signature']):
                    raise ValueError('Completed restoration no longer matches retained native/public originals')
                result['classification'] = {'status': 'actual_original_signature_restored',
                                            'created_alias': observed['native']['created_alias']}
                restored = observed
            else:
                classify_signature(original['before']['signature'], observed['signature'], selector, observed['native'])
                result['classification'] = {'status': 'actual_single_argument_applied', 'created_alias': observed['native']['created_alias']}
            if observed['public_before'] != observed['public_after'] or observed['public_after'] != public_projection(observed['signature']['methods']):
                raise ValueError('Independent public signature differs from the complete native observation')
            if args.execute:
                service.write_once(output / 'restore-intent.json', {'domain': domain, 'source': str(source),
                    'source_hashes': result['original_hashes'], 'observed': observed,
                    'automatic_retry': False, 'allowed_effect': 'restore_retained_original_method_arguments_only'})
                result['restore_dispatched'] = True
                save()
                restored = call('restore', observed['native']['signature_text'])
                if (fingerprint(restored['signature']) != fingerprint(original['before']['signature'])
                        or restored['public_after'] != original['before']['public_signature']):
                    raise ValueError('Original complete public/native signature is not restored')
            if args.execute or prior:
                observed_path = output / 'complete-input.json'
                service.write_once(observed_path, {'status': 'ok', 'database': original['database'],
                    'component': original['component'], 'oid': original['oid'], 'ascet_process_epoch': epoch,
                    'caller_resolution': 'native', 'expected_database_session': original['database_session']})
                with patch.dict(os.environ, {'ASCET_BD_CLASS_OBSERVATION_MODE': 'public_oracle'}), bench.proxy(upstream_port=manifest['port']) as wire:
                    with patch.dict(os.environ, {'ASCET_BD_PROBE_PORT': str(wire['port'])}):
                        full, code = tools.invoke(observed_path, output / 'complete.json', 'observe')
                result['complete_wire'] = {'requests': wire['request'].result(), 'responses': wire['response'].result(), 'errors': wire['errors']}
                if code or full.get('status') != 'observed' or wire['errors'] or full.get('model_setters_called') != 0:
                    raise ValueError('Independent complete observation failed')
                actual = complete_restoration(full, prepared)
                result['complete_baseline_restored'] = True
                service.write_once(output / 'verified-restoration.json', {'domain': domain, 'source': str(source),
                    'native': restored, 'complete_observation': actual, 'complete_observation_sha256': fingerprint(actual)})
                result['release'] = call('release', restored['native']['signature_text'])['native']
                if json.loads(marker.read_text(encoding='utf-8')) != expected_marker:
                    raise ValueError('Original quarantine changed before verified release')
                pending.confirmed(marker)
                result['quarantine_cleared_after_complete_validation'] = True
        result['original_files_unchanged'] = originals() == result['original_hashes']
        result['source_drift'] = [name for name, digest in result['source_manifest'].items()
                                if service.digest((service.ROOT / 'scripts' / name).read_bytes()) != digest]
        result['passed'] = result['original_files_unchanged'] and not result['source_drift']
    except Exception as error:
        result.update(error=repr(error), traceback=traceback.format_exc())
    finally:
        result['original_files_unchanged'] = originals() == result['original_hashes']
        result['source_drift'] = [name for name, digest in result['source_manifest'].items()
                                if service.digest((service.ROOT / 'scripts' / name).read_bytes()) != digest]
        if prior:
            result['reconciliation_source_unchanged'] = prior_hashes == {
                str(p.relative_to(prior)): service.digest(p.read_bytes()) for p in prior.rglob('*') if p.is_file()}
            result['passed'] = result['passed'] and result['reconciliation_source_unchanged']
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'error', 'restore_dispatched', 'complete_baseline_restored')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
