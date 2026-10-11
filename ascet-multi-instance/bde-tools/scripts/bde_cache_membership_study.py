"""Original-bound cache preflight and fresh private native inverse experiments.

No live cache edits, Store, Commit or production inverse. Private controls do not
constitute persisted BDE edits or restore a registered modification census.
"""
import argparse
import json
import os
from pathlib import Path
import shutil

import bd_service as service
import bd_instance_pending as pending
from bd_cache_membership import validate
from bd_native_structure import NativeStructureAdapter
from bd_windows_endpoint import endpoint_process
from bd_edit_journal import canonical
from bde_experiments import proxy
from bde_acceptance import source_manifest


def check_flags(value):
    for key in ('store_called', 'commit_called', 'production_inverse_authorized', 'full_commit_resource_closure'):
        if value.get(key) is not False:
            raise ValueError('Native authority or scope flag differs: '+key)
    if type(value.get('model_setters_called')) is not int or value['model_setters_called'] != 0:
        raise ValueError('Private/preflight cannot call model setters')


def validate_private(value, *, joint=False):
    check_flags(value)
    profile = 'native_cache_state_private_v1' if joint else 'native_cache_membership_private_v1'
    if value.get('profile') != profile or value.get('live_cache_mutated') is not False:
        raise ValueError('Fresh native private cache evidence required')
    expected = [
        ([[1,1],[2,2]], [1]),
        ([[2,4],[3,3]], [3]),
        ([[2,4],[3,3],[5,5]], [3,5]),
        ([[1,1],[2,2],[5,5]], [1,5]),
        ([[2,4],[3,3],[5,5]], [3,5]),
        ([[1,1],[2,2],[5,5]], [1,5]),
        ([[1,1],[2,2]], [1]),
    ]
    states = [dict(members=m, modified_proxy_ids=d) for m,d in expected]
    if joint:
        for index, state in enumerate(states):
            state['proxy_istates'] = ([0,0,1,0,1] if index in (1,2,4) else [1,0,0,0,1])
        if value.get('independent_proxy_name_preserved') is not True:
            raise ValueError('Unrelated proxy field not preserved')
        if value.get('all_original_direct_fields_except_independent_restored') is not True:
            raise ValueError('Whole direct entry/proxy images not verified')
    if canonical(value.get('states')) != canonical(states):
        raise ValueError('Exact seven native memberships/derived dirty censuses differ')
    classes = [['DBCacheObject']*len(d) for _, d in expected]
    if value.get('modified_return_classes') != classes:
        raise ValueError('Exact native cache modification return types required')
    if canonical(value.get('conflict_completed_primitives')) != canonical([0]*5):
        raise ValueError('All five execution conflicts require measured zero completed primitives')
    primitives = [5,5,5] if joint else [3,3,3]
    if canonical(value.get('native_primitives')) != canonical(primitives):
        raise ValueError('Actual undo/redo/second undo require exact native primitives')
    if joint and canonical(value.get('primitive_parts')) != canonical([dict(membership=3, fields=2)]*3):
        raise ValueError('Joint membership/dirty field primitive counters differ')
    if type(value.get('conflict_primitives')) is not int or value['conflict_primitives'] != 0:
        raise ValueError('Conflict dispatched a primitive')
    refusals = ['touched_entry', 'entry_field', 'dirty_dependency', 'mutated_key_bytes',
                'equal_distinct_current_key', 'missing_original_direct' if joint else 'duplicate_retained_key', 'executor_replay']
    if value.get('native_refusals') != refusals:
        raise ValueError('All native refusal controls required')
    return dict(profile='cache_state_private_summary_v1' if joint else 'cache_membership_private_summary_v1', stages=7, native_primitives=primitives,
                refusal_controls=7, private_derived_modified_census_verified=True,
                live_cache_restore_verified=False, production_inverse_authorized=False)


def validate_preflight(value, audit):
    check_flags(value)
    if (value.get('profile') != 'native_cache_membership_preflight_v1'
            or value.get('native_token') != audit['native_token']
            or value.get('component_oid') != audit['component_oid']
            or value.get('generation') != audit['generation']
            or value.get('executed') is not False or value.get('current_used_as_edit_after') is not False):
        raise ValueError('Exact original-only no-execution binding required')
    before = audit['original_capture']['before_read']; validate(before)
    expected = sorted([dict(key={k:r['key'][k] for k in ('class','ref')}, key_bytes=r['key']['value'],
                            entry={k:r['entry'][k] for k in ('class','ref')}) for r in before['cache_entries']],
                      key=lambda r:r['key']['ref'])
    if (canonical(value['original']) != canonical(expected)
            or canonical(value['current']) != canonical(expected)
            or value['storage'] != {k:before['storage'][k] for k in ('class','ref')}
            or type(value.get('cell_count')) is not int or value['cell_count'] != 0
            or value.get('compatible') is not True):
        raise ValueError('Complete original/CURRENT membership differs; no promotion')
    return dict(profile='cache_membership_preflight_summary_v1', original_members=len(expected),
                current_members=len(expected), cell_count=0, executed=False,
                production_inverse_authorized=False)


def main():
    from bde_main_workflow import build_oracle
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--preparation', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--mode', choices=('preflight', 'private', 'state_private'), required=True)
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
    validate(audit['original_capture']['before_read']); pending.check(original['domain'])
    original_hashes = {p.name: service.digest(p.read_bytes()) for p in prior.glob('*.json')}
    output.mkdir(parents=True)
    result = dict(profile='bde_cache_membership_study_v1', mode=args.mode, passed=False,
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
        env.update(ASCET_BD_CACHE_MEMBERSHIP_STUDY='isolated_v1',
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
                        cache_before = adapter._exchange(dict(cmd='cache_membership_preflight', token=original['native_token']))
                        service.write_once(output/'cache-before.json', cache_before)
                        validate_preflight(cache_before, audit)
                        command = dict(cmd='cache_state_private' if args.mode == 'state_private' else 'cache_membership_'+args.mode, token=original['native_token'])
                        service.write_once(output/'dispatch.json', dict(command=command, automatic_retry=False,
                                                                      no_live_model_write_authorized=True))
                        value = adapter._exchange(command)
                        service.write_once(output/'actual.json', value)
                        result['summary'] = (validate_preflight(value, audit) if args.mode == 'preflight'
                                             else validate_private(value, joint=args.mode == 'state_private'))
                        cache_after = adapter._exchange(dict(cmd='cache_membership_preflight', token=original['native_token']))
                        service.write_once(output/'cache-after.json', cache_after)
                        validate_preflight(cache_after, audit)
                        if canonical(cache_before) != canonical(cache_after):
                            raise ValueError('Live cache original/current complete membership bookends differ')
                        result['complete_live_cache_membership_bookends_equal'] = True
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
