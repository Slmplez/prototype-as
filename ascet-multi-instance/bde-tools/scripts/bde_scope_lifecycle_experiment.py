"""Inspect real bounded scopes and exercise the native pin policy without model writes."""
import argparse
from contextlib import nullcontext
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
from bd_instance_pending import check as check_pending
from bd_native_structure import NativeStructureAdapter
from bd_edit_journal import fingerprint
from bd_scope_inventory import validate
from bd_structure_journal import StructureJournal
from bd_windows_endpoint import endpoint_process


def rebuilt_graph_equal(before, after, counter_offset):
    """Compare every field with only the reader's documented alias reallocation."""
    if type(counter_offset) is not int or counter_offset < 0:
        raise ValueError('Exact nonnegative alias allocation offset required')
    aliases = {}
    for row in before['entries']:
        ref = row['ref']
        if ref in aliases:
            raise ValueError('Duplicate native graph aliases')
        if re.fullmatch(r'[np][0-9]+', ref):
            aliases[ref] = ref
        elif re.fullmatch(r'e[0-9]+', ref):
            aliases[ref] = 'e' + str(int(ref[1:]) + counter_offset)
        else:
            raise ValueError('Legacy reset fixture must use ordinary node/pin/stored-edge aliases')
    expected_rows = []
    for row in before['entries']:
        expected = dict(row)
        for key in ('ref', 'owner', 'source', 'target'):
            if key in expected:
                expected[key] = aliases[expected[key]]
        if 'pins' in expected:
            expected['pins'] = [aliases[ref] for ref in expected['pins']]
        expected_rows.append(expected)
    expected_graph = dict(before, generation=after['generation'],
                          entries=sorted(expected_rows, key=lambda row: row['ref']))
    return expected_graph == after


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--reuse-fixture', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--exercise', action='store_true', help='Exercise real pressure, pinned refusal, exact retirement and stale journal refusal')
    parser.add_argument('--legacy-reset', action='store_true', help='Retire an unused isolated scope and verify an actual obsolete-reader generation reset')
    parser.add_argument('--verify-legacy-from', type=Path, help='Verify a completed failed legacy study without repeating retirement or legacy rebuilding')
    parser.add_argument('--pressure-target', action='append', default=[])
    parser.add_argument('--cleanup-prepared-from', type=Path)
    args = parser.parse_args()
    if (args.legacy_reset or args.verify_legacy_from) and (args.exercise or args.pressure_target or args.cleanup_prepared_from):
        parser.error('Legacy reset is a separate cache-only experiment')
    if args.legacy_reset and args.verify_legacy_from:
        parser.error('Completed legacy retirement must never be replayed')
    manifest_path, source, output = (p.resolve() for p in (args.manifest, args.reuse_fixture, args.output))
    owned = service.ROOT / 'analysis/bde-experiments'
    if any(not p.is_relative_to(owned) for p in (manifest_path, source, output)) or output.is_relative_to(source.parent):
        raise ValueError('Separate owned manifested source/output required')
    previous = json.loads(source.read_text(encoding='utf-8'))
    manifest = json.loads(manifest_path.read_text(encoding='utf-8-sig'))
    process = json.loads((manifest_path.parent / 'process.json').read_text(encoding='utf-8-sig'))
    preparation = json.loads((manifest_path.parent.parent / 'preparation.json').read_text())
    epoch = str(process['pid']) + '/' + process['start_time_utc']
    if (preparation.get('passed') is not True or preparation['instance_manifest'] != str(manifest_path)
            or previous.get('passed') is not True or previous['process_epoch'] != epoch
            or Path(previous['manifest']).resolve() != manifest_path
            or endpoint_process(manifest['port']) != process['pid']):
        raise ValueError('Exact passing restored fixture and disposable endpoint required')
    fixture = json.loads(Path(previous['fixture_result']).read_text())
    domain = {'session': 'bde_scope_lifecycle', 'database': manifest['database'],
              'process_epoch': epoch, 'oid': fixture['oid']}
    check_pending(domain)
    output.mkdir(parents=True, exist_ok=False)
    files = ('AscetStructureRead.cs', 'AscetStructureSession.cs', 'AscetStructureExperiment.cs',
             'bde_structure_read.st', 'bde_session_guard.st', 'bde_scope_inventory.st',
             'bd_scope_inventory.py', 'bde_scope_lifecycle_experiment.py', 'bd_structure_journal.py',
             'bd_native_structure.py', 'bde_structure_edit.st', 'bde_recovery_release.st', 'bde_recovery_status.st')
    hashes = lambda: {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in files}
    originals = lambda: {str(p.relative_to(source.parent)): service.digest(p.read_bytes())
                         for p in source.parent.rglob('*') if p.is_file()}
    result = {'passed': False, 'full_delivery': False, 'scope': __doc__, 'manifest': str(manifest_path),
              'domain': domain, 'component': fixture['component'], 'source_manifest': hashes(),
              'original_hashes': originals(), 'model_setters_called': 0, 'store_called': False,
              'automatic_retry': False, 'capacity_acceptance': False}
    result['exercise'] = args.exercise
    result['legacy_reset'] = args.legacy_reset
    result['legacy_verification_only'] = bool(args.verify_legacy_from)
    legacy_completed = None
    if args.verify_legacy_from:
        legacy_path = args.verify_legacy_from.resolve()
        if not legacy_path.is_relative_to(owned) or output.is_relative_to(legacy_path):
            raise ValueError('Separate owned immutable legacy source required')
        legacy_completed = json.loads((legacy_path / 'result.json').read_text())
        legacy_intent = json.loads((legacy_path / 'legacy-retirement-intent.json').read_text())
        if (legacy_completed.get('passed') is not False or legacy_completed.get('legacy_reset') is not True
                or legacy_completed['domain'] != domain or legacy_completed['manifest'] != str(manifest_path)
                or legacy_intent['domain'] != domain or legacy_intent['model_write_authorized'] is not False
                or legacy_completed['retirement'] != {'retired': True, 'scope': legacy_intent['scope'],
                                                     'generation': legacy_intent['generation']}
                or legacy_completed['legacy_rebuilt'] != legacy_completed['native_before']
                or legacy_completed['rebuilt']['generation'] <= legacy_intent['inventory']['high_water']
                or legacy_completed['model_setters_called'] != 0 or legacy_completed['store_called'] is not False):
            raise ValueError('Exact completed cache-only failed legacy study required')
        for name in files:
            if name.endswith(('.cs', '.st')) and hashes()[name] != legacy_completed['source_manifest'][name]:
                raise ValueError('Completed legacy study native source changed')
        legacy_originals = lambda: {str(p.relative_to(legacy_path)): service.digest(p.read_bytes())
                                   for p in legacy_path.rglob('*') if p.is_file()}
        result['legacy_source'] = str(legacy_path)
        result['legacy_original_hashes'] = legacy_originals()
        result['retirement_replayed'] = False
        result['legacy_reader_replayed'] = False
    save = lambda: (output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    save()
    wire = None
    try:
        binary = output / 'AscetScopeLifecycleProbe.exe'
        built = subprocess.run(['C:/Windows/Microsoft.NET/Framework/v4.0.30319/csc.exe', '/nologo', '/platform:x86',
            '/main:AscetStructureSession', '/define:BDE_SCOPE_LIFECYCLE_EVAL',
            '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', '/r:System.Web.Extensions.dll', '/out:' + str(binary),
            *['/resource:' + str(service.ROOT / 'scripts' / name) + ',' + name for name in files if name.endswith('.st')],
            *[str(service.ROOT / 'scripts' / name) for name in files if name.endswith('.cs')]],
            capture_output=True, text=True, timeout=30)
        result['build'] = {'exit_code': built.returncode, 'stdout': built.stdout, 'stderr': built.stderr}
        if built.returncode:
            raise ValueError('Fixed scope diagnostic build failed')
        shutil.copyfile('E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', output / 'Etas.AscetNET.dll')

        class ProbeAdapter(NativeStructureAdapter):
            build = staticmethod(lambda: binary)

            def __exit__(self, *exc):
                token = result.get('prepared_token')
                if (token and 'prepared_discard' not in result and self.process is not None
                        and self.process.poll() is None and not any(cmd in self.commands for cmd in ('apply', 'revert'))):
                    try:
                        status = self.recovery_status(domain, token)
                        result['failure_preparation_status'] = status
                        if status['state'] == 'prepared' and status['before'] == status['current'] and status['after'] is None:
                            result['failure_preparation_discard'] = self.discard_prepared(domain, token)
                    except Exception as cleanup_error:
                        result['failure_preparation_cleanup_error'] = repr(cleanup_error)
                    save()
                super().__exit__(*exc)

        environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']))
        with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
            environment['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            with ProbeAdapter(fixture['component'], environment=environment, timeout=30) as adapter:
                adapter._ensure_open(domain)
                if args.cleanup_prepared_from:
                    failed = args.cleanup_prepared_from.resolve()
                    if not failed.is_relative_to(owned) or output.is_relative_to(failed):
                        raise ValueError('Separate owned failed preparation source required')
                    failure = json.loads((failed / 'result.json').read_text())
                    intent = json.loads((failed / 'prepare-intent.json').read_text())
                    if (failure.get('passed') is not False or intent['domain'] != domain
                            or failure['domain'] != domain or intent['apply_authorized'] is not False
                            or intent['token'] != failure['prepared_token'] or 'prepared_discard' in failure):
                        raise ValueError('Exact original unexecuted preparation source required')
                    cleanup_hashes = lambda: {str(p.relative_to(failed)): service.digest(p.read_bytes())
                                             for p in failed.rglob('*') if p.is_file()}
                    result['cleanup_original_hashes'] = cleanup_hashes()
                    status = adapter.recovery_status(domain, intent['token'])
                    result['cleanup_status'] = status
                    if status['state'] != 'prepared' or status['before'] != status['current'] or status['after'] is not None:
                        raise ValueError('Preparation was started or changed; cannot discard recovery material')
                    result['cleanup_discard'] = adapter.discard_prepared(domain, intent['token'])
                    result['cleanup_original_files_unchanged'] = cleanup_hashes() == result['cleanup_original_hashes']
                    if not result['cleanup_original_files_unchanged']:
                        raise ValueError('Failed preparation evidence was changed')
                    save()
                result['inventory_before'] = adapter._exchange({'cmd': 'scope_inventory'})
                result['inventory_validation'] = validate(result['inventory_before'])
                result['policy_tests'] = adapter._exchange({'cmd': 'scope_policy_tests'})
                result['inventory_after_policy'] = adapter._exchange({'cmd': 'scope_inventory'})
                if result['inventory_before'] != result['inventory_after_policy']:
                    raise ValueError('Pure pin policy tests changed the real registry')
                result['native_before'] = adapter.observe(domain, [])
                result['public_before'] = adapter.observe_public(domain)
                expected_native = legacy_completed['rebuilt'] if legacy_completed else previous['rounds'][-1]['restored']
                if (result['native_before'] != expected_native
                        or result['public_before'] != previous['rounds'][-1]['public_restored']):
                    raise ValueError('Existing exact native/public fixture baseline changed')
                result['native_after'] = adapter.observe(domain, [])
                result['public_after'] = adapter.observe_public(domain)
                result['inventory_after_reads'] = adapter._exchange({'cmd': 'scope_inventory'})
                validate(result['inventory_after_reads'])
                if args.legacy_reset or legacy_completed:
                    if not fixture['component'].startswith('BDE_Tool_Experiments\\Trial_OrdinaryOrder_'):
                        raise ValueError('Actual legacy reset requires an owned isolated ordinary fixture')
                    target = fixture['final_anchor']
                    scope = domain['oid'] + '/Main'
                    if legacy_completed:
                        result['old_local_snapshot'] = legacy_completed['old_local_snapshot']
                        inventory = legacy_intent['inventory']
                        result['retirement'] = legacy_completed['retirement']
                        result['inventory_retired'] = legacy_completed['inventory_retired']
                        result['legacy_rebuilt'] = legacy_completed['legacy_rebuilt']
                        result['inventory_legacy'] = legacy_completed['inventory_legacy']
                    else:
                        result['old_local_snapshot'] = adapter.observe(domain, [target])
                        inventory = adapter._exchange({'cmd': 'scope_inventory'})
                        validate(inventory)
                        current_row = next(row for row in inventory['entries'] if row['scope'] == scope)
                        if current_row['pins'] or current_row['generation'] != 1:
                            raise ValueError('Legacy alias regression requires an unused original generation1 scope')
                        service.write_once(output / 'legacy-retirement-intent.json', {
                            'domain': domain, 'scope': scope, 'generation': current_row['generation'],
                            'inventory': inventory, 'model_write_authorized': False})
                        result['retirement'] = adapter._exchange({'cmd': 'scope_retire', 'expected_generation': current_row['generation']})
                        result['inventory_retired'] = adapter._exchange({'cmd': 'scope_inventory'})
                        retired_rows = result['inventory_retired']['entries']
                        if (len(retired_rows) != len(inventory['entries']) - 1
                                or result['inventory_retired']['high_water'] != inventory['high_water']
                                or any(row['scope'] == scope for row in retired_rows)
                                or result['inventory_retired']['evictions'] != inventory['evictions'] + 1):
                            raise ValueError('Legacy test did not retire exactly its unused scope')
                        save()
                        result['legacy_rebuilt'] = adapter._exchange({'cmd': 'scope_legacy_read'})
                        result['inventory_legacy'] = adapter._exchange({'cmd': 'scope_inventory'})
                        if result['legacy_rebuilt'] != result['native_before']:
                            raise ValueError('Obsolete reader did not reproduce the original full generation1 snapshot')
                    result['rebuilt'] = adapter.observe(domain, [])
                    result['inventory_rebuilt'] = adapter._exchange({'cmd': 'scope_inventory'})
                    validate(result['inventory_rebuilt'])
                    legacy_row = next(row for row in result['inventory_legacy']['entries'] if row['scope'] == scope)
                    edge_count = sum(row['kind'] == 'edge' for row in result['legacy_rebuilt']['entries'])
                    if legacy_row['identity_count'] != edge_count or legacy_row['counter'] != edge_count:
                        raise ValueError('Legacy fixture must have exclusively allocated edge aliases')
                    if (result['rebuilt']['generation'] <= inventory['high_water']
                            or not rebuilt_graph_equal(result['legacy_rebuilt'], result['rebuilt'], legacy_row['counter'])):
                        raise ValueError('Modern reader reused obsolete generation or changed full native values')
                    rebuilt_rows = {row['scope']: row for row in result['inventory_rebuilt']['entries']}
                    if (set(rebuilt_rows) != {row['scope'] for row in inventory['entries']}
                            or any(rebuilt_rows[row['scope']] != row for row in inventory['entries'] if row['scope'] != scope)):
                        raise ValueError('Legacy reset changed another scope or its retained pin bindings')
                    stale_request = {'domain': domain, 'request_id': str(output) + '/obsolete-snapshot',
                        'component': fixture['component'], 'diagram': 'Main', 'operation': 'set_literal',
                        'arguments': [[target], target, '999'], 'expect': fingerprint(result['old_local_snapshot'])}
                    journal = StructureJournal(output / 'stale-journal')
                    commands_before = len(adapter.commands)
                    with (patch.object(adapter, 'prepare', side_effect=AssertionError('Obsolete snapshot reached preparation')),
                          patch.object(adapter, 'apply', side_effect=AssertionError('Obsolete snapshot reached setters'))):
                        result['stale_refusal'] = journal.execute(stale_request, adapter, nullcontext)
                    result['stale_commands'] = adapter.commands[commands_before:]
                    stale_events = journal.read(result['stale_refusal']['change_id'])
                    if (result['stale_refusal']['status'] != 'conflict' or result['stale_commands'] != ['observe']
                            or any(event['kind'] in ('prepared', 'started', 'observed') for event in stale_events)):
                        raise ValueError('Obsolete generation was not refused before preparation/setters')
                    result['public_final'] = adapter.observe_public(domain)
                    if result['public_final'] != result['public_before']:
                        raise ValueError('Legacy cache regression changed the public model')
                    result['legacy_reset_acceptance'] = True
                    if legacy_completed:
                        result['legacy_source_files_unchanged'] = legacy_originals() == result['legacy_original_hashes']
                        if not result['legacy_source_files_unchanged']:
                            raise ValueError('Completed failed legacy evidence changed')
                    save()
                if args.exercise:
                    token = 'edit_' + fingerprint({'domain': domain, 'request_id': str(output) + '/retained-preparation'})
                    target = fixture['final_anchor']
                    arguments = [[target], target, '999']
                    service.write_once(output / 'prepare-intent.json', {'domain': domain, 'token': token,
                        'operation': 'set_literal', 'arguments': arguments, 'apply_authorized': False})
                    result['prepared'] = adapter.prepare(domain, token, 'set_literal', arguments)
                    result['prepared_token'] = token
                    save()
                    result['inventory_pinned'] = adapter._exchange({'cmd': 'scope_inventory'})
                    scope = domain['oid'] + '/Main'
                    pinned_row = next(row for row in result['inventory_pinned']['entries'] if row['scope'] == scope)
                    if 'DogeBDEStructureEditsV3:' + token not in pinned_row['pins']:
                        raise ValueError('Actual prepared recovery material did not pin the scope')
                    try:
                        adapter._exchange({'cmd': 'scope_retire', 'expected_generation': pinned_row['generation']})
                    except RuntimeError as refusal:
                        result['pinned_retirement_refusal'] = str(refusal)
                        if 'Structural scope retained; refusing retirement' not in str(refusal):
                            raise
                    else:
                        raise ValueError('Retained original scope was retired')
                    result['inventory_after_refusal'] = adapter._exchange({'cmd': 'scope_inventory'})
                    if result['inventory_after_refusal'] != result['inventory_pinned']:
                        raise ValueError('Pinned retirement refusal changed the registry')
                    result['pressure'] = []
                    candidates = args.pressure_target or sorted({row['definition']['path']
                        for row in fixture['source_before']['entries'] if 'definition' in row and row.get('model_type') != 'enum'})
                    result['pressure_candidates'] = []
                    for path in candidates:
                        before = adapter._exchange({'cmd': 'scope_inventory'})
                        candidate = adapter._exchange({'cmd': 'scope_target_read', 'component': path, 'inspect_only': True})
                        result['pressure_candidates'].append(candidate)
                        if not candidate['kind']['graphical']:
                            try:
                                adapter._exchange({'cmd': 'scope_target_read', 'component': path})
                            except RuntimeError as refusal:
                                candidate['actual_refusal'] = str(refusal)
                                if 'BDE_DIAGRAM_NOT_GRAPHICAL:' not in str(refusal):
                                    raise
                            else:
                                raise ValueError('Nongraphical scope was accepted')
                            if adapter._exchange({'cmd': 'scope_inventory'}) != before:
                                raise ValueError('Nongraphical refusal allocated or evicted a scope')
                            candidate['registry_unchanged'] = True
                        if (not candidate['kind']['graphical'] or not candidate['kind']['ordinary'] or candidate['oid'] + '/Main'
                                in {row['scope'] for row in before['entries']}):
                            if args.pressure_target:
                                raise ValueError('Requested pressure target is nongraphical or already cached')
                            continue
                        observed = adapter._exchange({'cmd': 'scope_target_read', 'component': path})
                        after = adapter._exchange({'cmd': 'scope_inventory'})
                        validate(after)
                        old_rows = {row['scope']: row for row in before['entries']}
                        new_rows = {row['scope']: row for row in after['entries']}
                        added_scope = observed['oid'] + '/Main'
                        if (len(old_rows) != 64 or len(new_rows) != 64 or added_scope in old_rows
                                or set(old_rows) - set(new_rows) != {before['eviction_candidate']}
                                or set(new_rows) - set(old_rows) != {added_scope}
                                or observed['structure']['generation'] <= before['high_water']
                                or after['evictions'] != before['evictions'] + 1
                                or any(new_rows.get(key) != row for key, row in old_rows.items() if row['pins'])):
                            raise ValueError('Real cache pressure did not preserve every pinned scope or exact bounded victim')
                        result['pressure'].append({'before': before, 'observation': observed, 'after': after, 'passed': True})
                        save()
                        if not args.pressure_target:
                            break
                    if not result['pressure']:
                        raise ValueError('No new graphical scope found; capacity acceptance not achieved')
                    result['prepared_discard'] = adapter.discard_prepared(domain, token)
                    save()
                    result['old_local_snapshot'] = adapter.observe(domain, [target])
                    inventory = adapter._exchange({'cmd': 'scope_inventory'})
                    current_row = next(row for row in inventory['entries'] if row['scope'] == scope)
                    if current_row['pins']:
                        raise ValueError('Scope still has retained materials; cannot exercise explicit retirement')
                    try:
                        adapter._exchange({'cmd': 'scope_retire', 'expected_generation': current_row['generation'] + 1})
                    except RuntimeError as refusal:
                        result['wrong_generation_refusal'] = str(refusal)
                        if 'Frozen retirement owner or generation changed' not in str(refusal):
                            raise
                    else:
                        raise ValueError('Wrong-generation retirement was accepted')
                    if adapter._exchange({'cmd': 'scope_inventory'}) != inventory:
                        raise ValueError('Wrong-generation refusal changed the registry')
                    service.write_once(output / 'retirement-intent.json', {'domain': domain, 'scope': scope,
                        'generation': current_row['generation'], 'inventory': inventory, 'model_write_authorized': False})
                    result['retirement'] = adapter._exchange({'cmd': 'scope_retire', 'expected_generation': current_row['generation']})
                    result['inventory_retired'] = adapter._exchange({'cmd': 'scope_inventory'})
                    if (len(result['inventory_retired']['entries']) != 63
                            or result['inventory_retired']['high_water'] != inventory['high_water']
                            or any(row['scope'] == scope for row in result['inventory_retired']['entries'])):
                        raise ValueError('Exact single retirement or monotonic high-water mark differs')
                    save()
                    result['rebuilt'] = adapter.observe(domain, [])
                    result['public_rebuilt'] = adapter.observe_public(domain)
                    if (result['rebuilt']['generation'] <= inventory['high_water']
                            or result['public_rebuilt'] != result['public_before']):
                        raise ValueError('Rebuilt scope reused a generation or changed public model state')
                    result['inventory_rebuilt'] = adapter._exchange({'cmd': 'scope_inventory'})
                    validate(result['inventory_rebuilt'])
                    stale_request = {'domain': domain, 'request_id': str(output) + '/old-snapshot',
                        'component': fixture['component'], 'diagram': 'Main', 'operation': 'set_literal',
                        'arguments': arguments, 'expect': fingerprint(result['old_local_snapshot'])}
                    journal = StructureJournal(output / 'stale-journal')
                    commands_before = len(adapter.commands)
                    with (patch.object(adapter, 'prepare', side_effect=AssertionError('Stale request reached preparation')),
                          patch.object(adapter, 'apply', side_effect=AssertionError('Stale request reached setters'))):
                        result['stale_refusal'] = journal.execute(stale_request, adapter, nullcontext)
                    result['stale_commands'] = adapter.commands[commands_before:]
                    stale_events = journal.read(result['stale_refusal']['change_id'])
                    if (result['stale_refusal']['status'] != 'conflict' or result['stale_commands'] != ['observe']
                            or any(event['kind'] in ('prepared', 'started', 'observed') for event in stale_events)):
                        raise ValueError('Stale generation was not refused before preparation/setters')
                    result['public_final'] = adapter.observe_public(domain)
                    if result['public_final'] != result['public_before']:
                        raise ValueError('Read-only lifecycle exercise changed the model')
                    result['capacity_acceptance'] = True
        result['original_files_unchanged'] = originals() == result['original_hashes']
        result['source_drift'] = [name for name, digest in hashes().items() if digest != result['source_manifest'][name]]
        result['passed'] = (result['policy_tests']['passed'] is True
            and result['policy_tests']['model_setters_called'] == 0 and result['policy_tests']['store_called'] is False
            and result['native_before'] == result['native_after'] and result['public_before'] == result['public_after']
            and (not args.exercise or result['capacity_acceptance'])
            and (not (args.legacy_reset or legacy_completed) or result.get('legacy_reset_acceptance') is True)
            and result['original_files_unchanged'] and not result['source_drift'] and not wire['errors'])
    except Exception as error:
        result.update(error=repr(error), traceback=traceback.format_exc())
    finally:
        if wire is not None:
            result['wire'] = {'requests': wire['request'].result(), 'responses': wire['response'].result(), 'errors': wire['errors']}
        save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'error', 'inventory_validation')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
