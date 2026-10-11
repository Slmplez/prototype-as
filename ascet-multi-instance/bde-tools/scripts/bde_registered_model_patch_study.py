"""Isolated SG patch prerequisites; retained read-only preflight and private executor controls.

No Store/model edit is dispatched. Private execution touches only freshly
allocated objects, never registered SG roots. It is not persistence acceptance.
"""
import argparse
import json
import os
from pathlib import Path
import shutil

import bd_service as service
import bd_instance_pending as pending
from bd_native_structure import NativeStructureAdapter
from bd_windows_endpoint import endpoint_process
from bd_commit_model_diff import delta, image, original_image
from bd_edit_journal import canonical
from bde_experiments import proxy
from bde_acceptance import source_manifest


def validate_preflight(value, audit):
    original = original_image(audit)
    if (value.get('profile') != 'native_registered_model_patch_preflight_v1'
            or value['native_token'] != audit['native_token']
            or value['component_oid'] != audit['component_oid']
            or type(value['generation']) is not int or value['generation'] != audit['generation']
            or value['prepared_receipt'] != audit['prepared_receipt']
            or value['original_image'] != original['image']):
        raise ValueError('Exact original retained v6 preparation required')
    for key in ('current_used_as_edit_after', 'executed', 'store_called', 'commit_called',
                'write_authorized', 'inverse_authorized', 'full_commit_resource_closure', 'full_delivery'):
        if value[key] is not False:
            raise ValueError('Read-only model preflight cannot authorize writes or closure')
    if type(value['model_setters_called']) is not int or value['model_setters_called'] != 0:
        raise ValueError('Preflight cannot execute model setters')
    current = dict(image=value['current_image'], registered_roots=value['current_roots'],
                   registered_members=value['current_members'])
    actual = delta(original, current, 'since_preparation')
    for key, expected in (('original_objects', len(image(original['image']))),
                          ('current_objects', len(image(current['image'])))):
        if type(value[key]) is not int or value[key] != expected:
            raise ValueError('Complete original/current model roster differs')
    if (type(value['cell_count']) is not int or not 0 <= value['cell_count'] <= 100000
            or type(value['compatible']) is not bool or actual != value['actual_changes']):
        raise ValueError('Original-bound model preflight diff or patch shape differs')
    return dict(profile='registered_model_patch_preflight_summary_v1',
                original_objects=value['original_objects'], current_objects=value['current_objects'],
                candidate_cells=value['cell_count'], compatible=value['compatible'],
                independently_verified_actual_changes=len(actual), executed=False,
                production_inverse_authorized=False, full_commit_resource_closure=False)


def validate_private(value):
    if value.get('profile') != 'native_registered_model_patch_private_v1':
        raise ValueError('Fixed native private executor proof required')
    for key in ('touched_conflict_refused', 'unrelated_changes_preserved',
                'undo_redo_second_undo_verified', 'original_private_objects_restored', 'live_observation_unchanged'):
        if value[key] is not True:
            raise ValueError('Complete private executor lifecycle required')
    for key in ('store_called', 'commit_called', 'production_inverse_authorized', 'full_delivery'):
        if value[key] is not False:
            raise ValueError('Private controls cannot authorize production or persistence')
    for key in ('live_model_setters_called', 'conflict_primitives'):
        if type(value[key]) is not int or value[key] != 0:
            raise ValueError('Private conflict/live mutation guard failed')
    primitives = value['native_primitives']
    if value['native_preparation_refusals'] != ['missing_original', 'field_schema', 'resized_value',
                                               'mutable_boundary', 'introduced_object_changed']:
        raise ValueError('Complete native image/refusal controls required')
    if not isinstance(primitives, list) or len(primitives) != 3 or any(
            type(n) is not int or not 1 <= n <= 100000 for n in primitives):
        raise ValueError('Three actually executed nonempty private inverse/redo plans required')
    before = value['before']; checks = value['checks']
    if not isinstance(checks, list) or len(checks) != 4 or len(image(before['image'])) != 6:
        raise ValueError('Complete six-object private before and four actual stages required')
    applied = checks[0]
    for baseline, report in zip((before, applied, applied, applied), checks):
        if (report['profile'] != 'native_registered_sg_check_v1'
                or report['category'] != 'since_preparation'
                or report['component_oid'] != applied['component_oid']
                or type(report['generation']) is not int or report['generation'] != applied['generation']
                or type(report['original_objects_retained']) is not int or report['original_objects_retained'] != 6
                or report['original_material_held'] is not True
                or report['registered_roots'] != [] or report['registered_members'] != []
                or type(report['model_setters_called']) is not int or report['model_setters_called'] != 0
                or any(report[key] is not False for key in ('db_proxies_resolved', 'full_model_transitive_closure',
                                                           'write_authorized', 'inverse_authorized', 'store_called'))):
            raise ValueError('Private image cannot claim registered-root changes, another epoch or mutation authority')
        if delta(baseline, report, 'since_preparation') != report['actual_changes']:
            raise ValueError('Private actual SG diff differs from independent full-image computation')
    forward = delta(before, applied, 'since_preparation')
    if (len(forward) != 7 or sum(r['field'] == '$contents' for r in forward) != 5
            or sum(r['field'] == '$new_observed_object' for r in forward) != 1):
        raise ValueError('Complete value/field/array/order/key/member forward coverage required')
    original = image(before['image']); maps = [image(r['image']) for r in checks]
    def content(row):
        data = row['value']
        return sorted(data, key=canonical) if row['binding']['class'] in (
            'Dictionary', 'IdentityDictionary', 'Set', 'IdentitySet') else data
    for ref, row in original.items():
        if content(maps[3][ref]) != content(row) or maps[3][ref]['binding'] != row['binding']:
            raise ValueError('Terminal original private contents or identity not restored')
        for stage in maps:
            if stage[ref]['binding'] != row['binding'] or stage[ref]['field_names'] != row['field_names']:
                raise ValueError('Private original native identities/schema changed')
    side = delta(before, checks[1], 'since_preparation')
    if (sum(r['field'] == '$contents' for r in side) != 3
            or sum(r['field'] in ('y', 'yValue') for r in side) != 1
            or any(r['field'] not in ('$contents', '$new_observed_object', 'y', 'yValue') for r in side)):
        raise ValueError('Undo failed to preserve exactly the independent field/key/member/order changes')
    # Check the independent field/key/member/order values in both inverse and redo.
    point = next(ref for ref, row in original.items() if row['binding']['class'] == 'Point')
    for stage in maps[1:3]:
        if stage[point]['value'][1]['value'] != '77':
            raise ValueError('Unrelated native point field lost')
        for ref, row in original.items():
            kind = row['binding']['class']; contents = stage[ref]['value']
            if kind == 'Dictionary' and not any(pair[0].get('value') == '#gamma'
                    and pair[1].get('value') == '3' for pair in contents):
                raise ValueError('Independent dictionary key lost')
            if kind == 'Set' and not any(member.get('value') == '43' for member in contents):
                raise ValueError('Independent set member lost')
            if kind == 'OrderedCollection':
                last = stage[contents[-1]['ref']]
                if last['kind'] != 'value' or bytes(last['value']) != b'SIDE':
                    raise ValueError('Independent order insertion lost')
    return dict(profile='registered_model_patch_private_summary_v1',
                private_object_types=6, actual_forward_changes=len(forward),
                native_primitives=primitives, touched_conflict_refused=True, conflict_primitives=0,
                unrelated_changes_preserved=True, undo_redo_second_undo_verified=True,
                original_private_objects_restored=True, online_model_edit_verified=False,
                native_preparation_refusals=len(value['native_preparation_refusals']),
                model_store_verified=False, production_inverse_authorized=False)


def main():
    from bde_main_workflow import build_oracle
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--preparation', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--mode', choices=('preflight', 'private'), required=True)
    args = parser.parse_args(); base = service.ROOT/'analysis/bde-experiments'
    prior, output = args.preparation.resolve(), args.output.resolve()
    if not prior.is_relative_to(base) or not output.is_relative_to(base) or output.exists():
        raise ValueError('Existing original preparation and fresh owned output required')
    read = lambda p: json.loads(p.read_text(encoding='utf-8'))
    original = read(prior/'result.json'); audit = read(prior/'original-audit.json')
    if (original.get('passed') is not True or original.get('edit_dispatched') is not False
            or original.get('commit_resources_profile') != 'native_commit_prepare_v6'
            or endpoint_process(original['port']) != original['pid']):
        raise ValueError('Exact existing original no-write preparation required')
    original_image(audit); pending.check(original['domain'])
    original_hashes = {p.name: service.digest(p.read_bytes()) for p in prior.glob('*.json')}
    output.mkdir(parents=True)
    result = dict(profile='bde_registered_model_patch_study_v1', mode=args.mode, passed=False,
                  domain=original['domain'], model_operations=0, store_called=False, commit_called=False,
                  production_inverse_authorized=False, full_delivery=False, ascet_started_or_restarted=False,
                  automatic_retry=False, original_material_rebound=False, source_manifest=source_manifest())
    service.write_once(output/'intent.json', result)
    try:
        binary = build_oracle(output)
        for name in result['source_manifest']:
            dest = output/'source'/name; dest.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(service.ROOT/name, dest)
        env = {k:v for k,v in os.environ.items() if not k.startswith('ASCET_BD_')}
        env.update(ASCET_BD_REGISTERED_MODEL_PATCH_STUDY='isolated_v1',
                   ASCET_BD_ENDPOINT_PORT=str(original['port']))
        with service.live_lock():
            pending.check(original['domain'])
            if endpoint_process(original['port']) != original['pid']:
                raise ValueError('Original listener expired before dispatch')
            with proxy(upstream_port=original['port']) as wire:
                try:
                    with NativeStructureAdapter(original['component'], timeout=50,
                            environment=dict(env, ASCET_BD_PROBE_PORT=str(wire['port']))) as adapter:
                        adapter.build = lambda: binary
                        before = adapter.observe(original['domain'], [])
                        public_before = adapter.observe_public(original['domain'])
                        service.write_once(output/'before.json', dict(native=before, public=public_before))
                        command = dict(cmd='registered_model_patch_'+args.mode)
                        if args.mode == 'preflight': command['token'] = original['native_token']
                        service.write_once(output/'dispatch.json', dict(command=command, automatic_retry=False,
                                                                      no_live_model_write_authorized=True))
                        value = adapter._exchange(command)
                        service.write_once(output/'actual.json', value)
                        result['summary'] = (validate_preflight(value, audit) if args.mode == 'preflight'
                                             else validate_private(value))
                        after = adapter.observe(original['domain'], [])
                        public_after = adapter.observe_public(original['domain'])
                        service.write_once(output/'after.json', dict(native=after, public=public_after))
                        if before != after or public_before != public_after:
                            raise ValueError('Complete independent public/native bookends differ')
                        result['complete_public_native_bookends_equal'] = True
                finally:
                    if 'adapter' in locals(): result['native_commands'] = adapter.commands.copy()
                    result['wire'] = dict(connections=wire['connections'], request=wire['request'].result(),
                                          response=wire['response'].result(), errors=wire['errors'])
        if result['wire']['errors']: raise ValueError('Transport failure retained')
        if endpoint_process(original['port']) != original['pid']:
            raise ValueError('Original listener changed')
        if original_hashes != {p.name:service.digest(p.read_bytes()) for p in prior.glob('*.json')}:
            raise ValueError('Original preparation evidence changed')
        result.update(original_evidence_unchanged=True, sources_match=result['source_manifest'] == source_manifest())
        if not result['sources_match']: raise ValueError('Native experiment source drift')
        result['passed'] = True
    except Exception as error:
        result.update(passed=False, error=str(error))
    service.write_once(output/'result.json', result)
    print(json.dumps({k:result.get(k) for k in ('passed', 'error', 'summary', 'full_delivery')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
