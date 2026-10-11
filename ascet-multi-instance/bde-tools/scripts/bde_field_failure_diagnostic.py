"""Export retained source/native progress after a failed isolated field inverse.

Read only: no reader reload, setter, store, replay, release or pending clearance.
"""
import argparse
import json
import os
from pathlib import Path
import traceback
from unittest.mock import patch

import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bde_acceptance import source_manifest
import bde_experiments as bench
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result
from bd_source_inverse_oracle import decode_graph, equal


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--failed', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--private-alias', action='store_true', help='Execute an alias-only patch on new private source copies; never modify retained live source')
    args = parser.parse_args()
    owned = service.ROOT / 'analysis/bde-experiments'
    failed, output = args.failed.resolve(), args.output.resolve()
    if not failed.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Owned failure and fresh diagnostic output required')
    prior = json.loads((failed / 'result.json').read_text(encoding='utf-8'))
    manifest, _, epoch = live_manifest(Path(prior['manifest']))
    if (prior['passed'] is not False or prior.get('witness_retained') is not True
            or prior['process_epoch'] != epoch or prior['operation'] not in NativeStructureAdapter.managed_inverse_operations
            or not prior['component'].lstrip('\\').startswith('BDE_Tool_Experiments\\Trial_')):
        raise ValueError('Exact retained isolated field failure required')
    output.mkdir(parents=True)
    result = {'passed': False, 'failed_trial': str(failed), 'domain': prior['domain'],
              'source_manifest': source_manifest(), 'model_setters_called': 0, 'store_called': False,
              'failure_relabelled': False, 'pending_cleared': False, 'complete_case_pass': False}
    def save():
        (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    try:
        binary = build_oracle(output)
        class Observer(NativeStructureAdapter):
            build = staticmethod(lambda: binary)
        environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
                           ASCET_BD_PROBE_PORT=str(manifest['port']))
        material = private = wire = None
        try:
            with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                with Observer(prior['component'], timeout=30,
                        environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                    adapter._ensure_open(prior['domain'])
                    material = adapter._exchange({'cmd': 'field_source_inspect', 'token': prior['edit']['change_id']})
                    if args.private_alias:
                        private = adapter._exchange({'cmd': 'field_source_alias_private', 'token': prior['edit']['change_id']})
        finally:
            # A later private-copy failure must not discard the completed
            # read-only inspection or the actual wire counters.
            if wire is not None:
                save_new(output / 'wire.json', wire_result(wire))
            if material is not None:
                save_new(output / 'source-inspection.json', {'result': material, 'wire': wire_result(wire)})
            if private is not None:
                save_new(output / 'private-source-alias.json', {'result': private})
        if args.private_alias:
            oid = prior['domain']['oid']
            images = {role: decode_graph(private['source_' + role], oid) for role in ('before', 'after', 'expected')}
            if (private['passed'] is not True or private['cell_count'] <= 0
                    or private['completed_primitives'] != private['cell_count']
                    or not equal(images['after'], images['expected'])
                    or equal(images['before'], images['after'])
                    or not all(private[key] is True for key in ('replay_refused', 'conflict_refused_before_mutation',
                                                                'protected_references_preserved', 'live_source_unchanged'))
                    or private['model_setters_called'] != 0 or private['store_called'] is not False):
                raise ValueError('Private source sharing patch or full independent source oracle differs')
            result['private_alias'] = {key: private[key] for key in private if not key.startswith('source_')}
        if (material['model_setters_called'] != 0 or material['store_called'] is not False
                or material['native_token'] != prior['edit']['change_id']
                or material['component_oid'] != prior['domain']['oid']):
            raise ValueError('Read-only source inspection binding differs')
        result['source_matches_original'] = material['source_matches_original']
        result['field_execution'] = material['field_execution']
        result['source_unchanged'] = result['source_manifest'] == source_manifest()
        result['passed'] = result['source_unchanged']
    except Exception as error:
        result['error'] = str(error); result['traceback'] = traceback.format_exc()
    save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'source_matches_original', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
