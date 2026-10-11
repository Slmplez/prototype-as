"""Inspect one retained native attempt through a simulated incomplete local WAL.

The original complete WAL is immutable. Its exact capture-request prefix is
copied to an independent store to simulate a missing local prepared receipt;
this is NOT an actual lost Cebra reply. Exactly one read-only attempt command is
allowed, through the production recovery entry point. No capture is replayed.
"""
import argparse
import json
import os
from pathlib import Path
import time
from unittest.mock import patch

import bd_commit_attempt as capture
import bd_instance_pending as pending
import bd_recovery as recovery
import bd_service as service
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bd_sandbox_edit import binding
from bd_structure_journal import StructureJournal
from bde_acceptance import source_manifest
from bde_experiments import proxy
from bde_isolated_runtime import live_manifest


def read(path):
    return json.loads(Path(path).read_text(encoding='utf-8'))


def tree_hashes(folder):
    return {p.relative_to(folder).as_posix(): service.digest(p.read_bytes())
            for p in sorted(folder.rglob('*')) if p.is_file()}


def pending_image(domain):
    path = pending.pending_path(domain)
    return dict(path=str(path), exists=path.exists(),
                sha256=service.digest(path.read_bytes()) if path.exists() else None)


def build_fixture(preparation, store):
    """Offline: retain exact event bytes/checksums; omit only the local suffix."""
    original = read(preparation)
    token = original['native_token']
    if original.get('passed') is not True:
        raise ValueError('A verified original preparation is required')
    source = preparation.parent / 'journal'
    original_hashes = tree_hashes(source)
    if not source.is_dir():
        raise ValueError('Original immutable structural WAL required')
    events = StructureJournal(source).read(token)
    state = capture.history(events, token=token)
    if (state is None or state['prepared'] is None or state['attempts']
            or state['requested']['receipt_profile'] != 'native_commit_prepare_v5'
            or original.get('prepared_resources') != [state['prepared']]):
        raise ValueError('Original complete v5 request/prepared WAL must match its verified receipt')
    request = events[0]['payload']
    if request['domain'] != original['domain'] or request['component'] != original['component']:
        raise ValueError('Original preparation identity differs from WAL')
    cutoff = next(i for i, event in enumerate(events) if event['kind'] == 'commit_capture_requested') + 1
    prefix = events[:cutoff]
    if any(e['kind'] in ('prepared', 'started', 'finished') for e in prefix):
        raise ValueError('Fixture prefix must end before all prepared/execution evidence')
    store.mkdir(parents=True, exist_ok=False)
    log = StructureJournal(store / 'edits')
    destination = log._path(token)
    destination.mkdir()
    source_token = source / token
    for event in prefix:
        name = f"{event['sequence']:06d}.json"
        raw = (source_token / name).read_bytes()
        with (destination / name).open('xb') as stream:
            stream.write(raw); stream.flush(); os.fsync(stream.fileno())
    copied = log.read(token)
    if copied != prefix:
        raise ValueError('Fixture is not the exact original durable request prefix')
    with patch.object(service, 'STORE', store):
        # This experiment has no published bd_read snapshot. Recovery only
        # uses the exact component/domain; null avoids inventing a snapshot.
        if binding(request, request['component'], None) != token:
            raise ValueError('Fixture binding changed the original native token')
    if tree_hashes(source) != original_hashes:
        raise ValueError('Fixture construction changed the original WAL')
    metadata = dict(profile='local_missing_prepared_receipt_fixture_v1',
        simulated_local_wal_missing_receipt=True, actual_transport_reply_lost=False,
        original_preparation=str(preparation.resolve()), original_wal=str(source.resolve()),
        original_wal_hashes=original_hashes, copied_event_checksums=[e['checksum'] for e in prefix],
        omitted_suffix_kinds=[e['kind'] for e in events[cutoff:]],
        native_token=token, native_material_recaptured=False, native_token_rebound=False,
        snapshot_context=None, before_receipt=log.receipt(token, copied))
    return original, log, copied, metadata


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    for name in ('manifest', 'preparation', 'output'):
        parser.add_argument('--' + name, type=Path, required=True)
    args = parser.parse_args()
    args.preparation = args.preparation.resolve(); args.output = args.output.resolve()
    if (not args.output.is_relative_to(service.ROOT / 'analysis/bde-experiments')
            or args.output.is_relative_to(args.preparation.parent)):
        raise ValueError('A new independent experiment directory outside the original preparation is required')
    manifest, _, epoch = live_manifest(args.manifest)
    original = read(args.preparation)
    if (original.get('passed') is not True or original['process_epoch'] != epoch
            or original['domain']['process_epoch'] != epoch
            or original['domain']['database'] != manifest['database']):
        raise ValueError('Exact original live isolated epoch/database required; no rebinding')
    args.output.mkdir(parents=True, exist_ok=False)
    result = dict(passed=False, native_token=original['native_token'], process_epoch=epoch,
        process_started=False, process_restarted=False, automatic_retry=False,
        simulated_local_wal_missing_receipt=True, actual_transport_reply_lost=False,
        full_delivery=False, complete_case_pass=False, model_edit_verified=False,
        write_authorized=False, inverse_authorized=False, full_commit_resource_closure=False,
        validation_scope='one real read-only attempt via production recovery, using an exact local WAL-prefix fault fixture')
    service.write_once(args.output / 'intent.json', result)
    trace = []; wire = None; started = time.perf_counter()
    try:
        original, log, prefix, fixture = build_fixture(args.preparation, args.output / 'store')
        service.write_once(args.output / 'fixture.json', fixture)
        token, domain = original['native_token'], original['domain']
        binary = compile_bridge()
        sources = source_manifest()
        for path in (binary, binary.with_name('Etas.AscetNET.dll')):
            sources[path.relative_to(service.ROOT).as_posix()] = service.digest(path.read_bytes())
        for name in sources:
            destination = args.output / 'source' / name
            destination.parent.mkdir(parents=True, exist_ok=True)
            destination.write_bytes((service.ROOT / name).read_bytes())
        service.write_once(args.output / 'source-manifest.json', sources)
        service.write_once(args.output / 'input-manifest.json', {
            str(path.resolve()): service.digest(path.read_bytes()) for path in (args.preparation, args.manifest)})
        with patch.object(service, 'STORE', args.output / 'store'), proxy(manifest['port']) as wire:
            environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
                               ASCET_BD_PROBE_PORT=str(wire['port']))

            class AttemptOnlyAdapter(NativeStructureAdapter):
                """Real bridge with a pre-dispatch read-only command allowlist."""
                def __init__(self, component, diagram='Main'):
                    if component != original['component'] or diagram != 'Main':
                        raise ValueError('Exact original component/Main required')
                    super().__init__(component, diagram, timeout=50, environment=environment)

                def _exchange(self, command):
                    cmd = command.get('cmd')
                    if cmd == 'open':
                        if command != dict(cmd='open', component=original['component'], domain=domain, diagram='Main'):
                            raise ValueError('Original read-only session open identity differs')
                    elif cmd == 'observe':
                        if command != dict(cmd='observe', targets=[]):
                            raise ValueError('Only full graph observations permitted')
                    elif command == dict(cmd='commit_resources', action='attempt', token=token):
                        if any(row['cmd'] == 'commit_resources' for row in trace):
                            raise ValueError('Attempt already requested; automatic retry is forbidden')
                        service.write_once(args.output / 'native-attempt-requested.json', dict(command=command,
                            process_epoch=epoch, automatic_retry=False, prior_dispatch_confirmed=False))
                    else:
                        raise ValueError('Native command outside the fixed read-only experiment allowlist')
                    trace.append(command.copy())
                    value = super()._exchange(command)
                    if cmd == 'commit_resources':
                        service.write_once(args.output / 'native-attempt.json', value)
                    return value

            with service.live_lock(), AttemptOnlyAdapter(original['component']) as adapter:
                result['pending_before'] = pending_image(domain)
                before = adapter.observe(domain, [])
                service.write_once(args.output / 'before.json', before)
            with patch.object(recovery, 'NativeStructureAdapter', AttemptOnlyAdapter), patch.object(
                    pending, 'confirmed', side_effect=AssertionError('Attempt inspection must never clear a pending marker')):
                reply = service.handle('bd_inspect', dict(query='recovery', change_id=token, max_bytes=16384), domain['session'])
            service.write_once(args.output / 'tool-reply.json', reply)
            head, body = reply['content'].split('\n\n', 1)
            if json.loads(head)['page']['has_more']:
                raise ValueError('Expected one complete compact attempt summary')
            agent = json.loads(body); service.write_once(args.output / 'agent-summary.json', agent)
            events = log.read(token); added = events[len(prefix):]
            if events[:len(prefix)] != prefix or len(added) != 1 or added[0]['kind'] != 'commit_capture_attempt_observed':
                raise ValueError('Formal recovery did not append exactly one original attempt observation')
            attempt = added[0]['payload']
            if (attempt != read(args.output / 'native-attempt.json')
                    or attempt['prepared_receipt'] != original['prepared_resources'][0]
                    or capture.summary(attempt, prefix[-1]['payload']) != agent):
                raise ValueError('Native receipt, durable attempt and agent summary differ from the original v5 capture')
            result['native_attempt_receipt_matches_original'] = True
            traffic_before = wire['request'].result(); trace_before = len(trace)
            with patch.object(recovery, 'NativeStructureAdapter', side_effect=AssertionError('Offline/reconcile path must not open a native adapter')):
                diff = log.diff(token)
                service.write_once(args.output / 'diff.json', diff)
                try:
                    service.handle('bd_inspect', dict(query='recovery', change_id=token, reconcile=True), domain['session'])
                except service.ToolError as error:
                    if error.code != 'RECOVERY_UNRESOLVED': raise
                    result['reconcile_rejected_before_native'] = True
                else:
                    raise ValueError('Incomplete capture reconciliation was unexpectedly accepted')
            result['offline_diff_and_rejection_zero_native_frames'] = (traffic_before == wire['request'].result() and trace_before == len(trace))
            if (len(diff['commit_capture_attempts']) != 1 or diff['commit_capture_attempts'][0]['status'] != attempt
                    or diff['commit_capture_attempts'][0]['event_sha256'] != added[0]['checksum']
                    or diff['commit_capture_attempts'][0]['as_of_utc'] != added[0]['utc']
                    or diff['commit_capture_attempts'][0]['model_edit_claimed'] is not False
                    or diff['commit_capture_attempts'][0]['is_fresh_live_observation'] is not False
                    or diff['observations'] != []):
                raise ValueError('Offline diff changed or omitted actual attempt evidence')
            final_events = log.read(token)
            receipt = log.receipt(token, final_events); service.write_once(args.output / 'receipt.json', receipt)
            result['preparation_remains_unconfirmed'] = (receipt['commit_capture']['status'] == 'unconfirmed'
                and receipt['automatic_retry'] is False and receipt['commit_capture']['automatic_retry'] is False
                and final_events == events and not any(e['kind'] in ('prepared', 'started') for e in final_events))
            with service.live_lock(), AttemptOnlyAdapter(original['component']) as adapter:
                after = adapter.observe(domain, [])
                service.write_once(args.output / 'after.json', after)
                result['pending_after'] = pending_image(domain)
            result['pending_marker_unchanged'] = result['pending_before'] == result['pending_after']
            result['pending_clear_function_never_called'] = True
            result['typed_graph_unchanged'] = before == after
            result['fixture_event_kinds'] = [e['kind'] for e in final_events]
        result['exact_epoch_unchanged'] = live_manifest(args.manifest)[2] == epoch
        result['original_wal_unchanged'] = tree_hashes(Path(fixture['original_wal'])) == fixture['original_wal_hashes']
        result['fixed_sources_unchanged'] = all(service.digest((service.ROOT / name).read_bytes()) == digest for name, digest in sources.items())
        result['native_attempt_commands'] = sum(command['cmd'] == 'commit_resources' for command in trace)
        result['native_prepare_apply_retry_commands'] = 0
        result['passed'] = (result['native_attempt_commands'] == 1 and all(result[key] is True for key in (
            'native_attempt_receipt_matches_original', 'offline_diff_and_rejection_zero_native_frames',
            'reconcile_rejected_before_native', 'preparation_remains_unconfirmed', 'pending_marker_unchanged',
            'pending_clear_function_never_called', 'typed_graph_unchanged', 'exact_epoch_unchanged',
            'original_wal_unchanged', 'fixed_sources_unchanged')))
    except Exception as error:
        result['error'] = repr(error); result['passed'] = False
        service.write_once(args.output / 'unknown.json', dict(error=repr(error), automatic_retry=False,
            native_attempt_requested=(args.output / 'native-attempt-requested.json').exists(),
            native_reply_saved=(args.output / 'native-attempt.json').exists(),
            original_native_material_released=False, simulated_local_wal_missing_receipt=True))
    if wire is not None:
        result['traffic'] = dict(request=wire['request'].result(), response=wire['response'].result(), errors=wire['errors'])
    result['wall_ms'] = (time.perf_counter() - started) * 1000
    service.write_once(args.output / 'native-commands.json', trace)
    service.write_once(args.output / 'result.json', result)
    print(json.dumps({key: result.get(key) for key in ('passed', 'error', 'native_token', 'native_attempt_commands',
        'preparation_remains_unconfirmed', 'typed_graph_unchanged', 'original_wal_unchanged')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
