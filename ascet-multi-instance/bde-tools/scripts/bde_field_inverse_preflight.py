"""Compare fixed native and Python field plans on detached current observations.

This is a zero-model-write module preflight, not a production inverse workflow.
"""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
from bd_edit_journal import fingerprint
from bd_field_inverse import plan
from bd_instance_pending import check as check_pending
from bd_native_structure import NativeStructureAdapter
from bde_acceptance import source_manifest
import bde_experiments as bench
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result
from bde_public_oracle import compare


def validate_source_material(raw, oid):
    from bd_source_inverse_oracle import decode_graph, equal
    from bd_source_field_oracle import inspect_case
    names = {
        'coordinate/independent_changes_undo', 'coordinate/inverse_of_inverse_actual_patch',
        'sharing/independent_changes_undo', 'sharing/inverse_of_inverse_actual_patch',
        'overlap/refused_before_mutation', 'late_overlap/refused_before_mutation',
    }
    if (raw.get('profile') != 'source_material_private_v1'
            or raw.get('live_source_unchanged') is not True
            or raw.get('production_local_inverse_enabled') is not False
            or len(raw['cases']) != len(names)
            or {case['case'] for case in raw['cases']} != names):
        raise ValueError('Exact detached source material scenarios required')
    comparisons = []
    for case in raw['cases']:
        compatible = case['case'].split('/')[0] in ('coordinate', 'sharing')
        if (case['compatible'] is not compatible or case['model_setters_called'] != 0
                or case['store_called'] is not False):
            raise ValueError('Private source case outcome or effect classification differs')
        graphs = {key: decode_graph(case[key], oid)
                  for key in ('original', 'applied', 'current', 'candidate')}
        if equal(graphs['original'], graphs['applied']):
            raise ValueError('Source scenario has no actual value/sharing patch')
        if compatible:
            expected = decode_graph(case['expected_manual'], oid)
            if not equal(graphs['candidate'], expected):
                raise ValueError('Full source candidate differs from independent manual target')
            if equal(graphs['candidate'], graphs['current']):
                raise ValueError('Source inverse did not change actual values or sharing')
        elif case['expected_manual'] is not None or not equal(graphs['current'], graphs['candidate']):
            raise ValueError('Rejected source overlap changed the complete source graph')
        proof = inspect_case(case, oid)
        comparisons.append({'case': case['case'], 'compatible': compatible,
            'candidate_sha256': fingerprint(case['candidate']),
            'complete_source_nodes': len(case['candidate']['nodes']),
            'independent_python_field_patch': proof})
    return comparisons


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--preflight',type=Path,required=True)
    parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--repeats',type=int,default=3,choices=(1,3))
    parser.add_argument('--private-profile',choices=('values','source_material','topology'),default='values')
    args=parser.parse_args()
    output=args.output.resolve(); preflight=args.preflight.resolve()
    owned=service.ROOT/'analysis/bde-experiments'
    if output.exists() or not output.is_relative_to(owned) or not preflight.is_relative_to(owned):
        raise ValueError('Fresh owned output and isolated preflight required')
    prior=json.loads((preflight/'result.json').read_text(encoding='utf-8-sig'))
    if prior.get('passed') is not True or len(prior['rounds'])!=9:
        raise ValueError('Exact three-structure preflight required')
    manifest,_,epoch=live_manifest(Path(prior['manifest']))
    if epoch!=prior['process_epoch']: raise ValueError('Preflight epoch expired')
    output.mkdir()
    result={'passed':False,'scope':'Zero-model-write Python/native value plans on detached observations',
        'private_profile':args.private_profile,
        'process_epoch':epoch,'manifest':prior['manifest'],'source_manifest':source_manifest(),
        'rounds':[],'model_setters_called':0,'store_called':False,
        'complete_case_pass':False,'full_delivery':False,'production_local_inverse_enabled':False,
        'not_verified':['Production native/source three-way inverse dispatch',
            'source sharing merge/persistence','formal conflict and independent-change histories',
            'native visual/Undo','all families/interfaces/flows and final delivery']}
    if args.private_profile == 'source_material':
        result['scope']='Zero-model-write retained source images and local three-way target on detached actual BDE source copies'
    elif args.private_profile == 'topology':
        result['scope']='Zero-model-write Python/native topology plans on detached real observations; current-edge conflicts use private value fixtures'
    def save(): (output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    save()
    active_trial=active_wire=None
    try:
        # Seal the entire candidate, not just the new helpers, before native use.
        for name,digest in result['source_manifest'].items():
            path=service.ROOT/name
            if service.digest(path.read_bytes())!=digest: raise ValueError('Source drift before seal: '+name)
            target=output/'source'/name; target.parent.mkdir(parents=True,exist_ok=True)
            shutil.copyfile(path,target)
        binary=build_oracle(output)
        class Observer(NativeStructureAdapter):
            build=staticmethod(lambda: binary)
        environment={**os.environ,'ASCET_BD_ENDPOINT_PORT':str(manifest['port']),
                     'ASCET_BD_PROBE_PORT':str(manifest['port'])}
        for structure in ('literal_fanout','operator_chain','operator_fanout'):
            fixture=json.loads(sorted((preflight/('fixture-'+structure)).glob('*.json'))[-1].read_text(encoding='utf-8-sig'))
            if fixture.get('passed') is not True: raise ValueError('Fixture not verified')
            domain={'session':output.name,'database':manifest['database'],'process_epoch':epoch,'oid':fixture['oid']}
            check_pending(domain)
            for repeat in range(args.repeats):
                trial=output/(structure+'-'+str(repeat)); trial.mkdir()
                active_trial=trial
                token='main_'+fingerprint({'domain':domain,'structure':structure,'repeat':repeat})
                with patch.dict(os.environ,environment),service.live_lock(),bench.proxy(upstream_port=manifest['port']) as wire:
                    active_wire=wire
                    with Observer(fixture['component'],timeout=40,
                            environment={**environment,'ASCET_BD_PROBE_PORT':str(wire['port'])}) as adapter:
                        adapter._ensure_open(domain)
                        retained=False; checked=None
                        try:
                            captured=adapter._exchange({'cmd':'main_readonly_witness','action':'capture','token':token})
                            retained=True; save_new(trial/'witness-before.json',captured)
                            before=adapter.observe(domain,[]);public_before=adapter.observe_public(domain)
                            save_new(trial/'before.json',{'native':before,'public':public_before})
                            if not compare(before['entries'],public_before)['passed']:
                                raise ValueError('Complete public before observation differs')
                            private_commands = {'values': 'main_field_inverse_values_private',
                                'source_material': 'main_source_material_private',
                                'topology': 'main_topology_inverse_values_private'}
                            raw=adapter._exchange({'cmd':private_commands[args.private_profile]})
                            save_new(trial/'raw.json',raw)
                            comparisons=[]
                            if raw['model_setters_called']!=0 or raw['store_called'] is not False:
                                raise ValueError('Exact fixed private case coverage required')
                            if args.private_profile == 'source_material':
                                comparisons=validate_source_material(raw,fixture['oid'])
                            else:
                                expected_count = 30 if args.private_profile == 'topology' else 16
                                if len(raw['cases'])!=expected_count:
                                    raise ValueError('Exact fixed private value coverage required')
                                purity_key = ('input_observations_unchanged' if args.private_profile == 'topology'
                                              else 'production_typed_copy_unchanged')
                                if raw[purity_key] is not True or raw['typed_baseline_unchanged'] is not True:
                                    raise ValueError('Production recursive observation copy or private inputs differ')
                                if args.private_profile == 'topology':
                                    names = {'disconnect/independent_other_row', 'disconnect/inverse_of_inverse',
                                        'disconnect/occupied_input', 'disconnect/endpoint_missing', 'disconnect/owner_conflict',
                                        'disconnect/metadata_conflict', 'disconnect/reappeared_conflict',
                                        'disconnect/collateral_independent', 'disconnect/collateral_overlap',
                                        'delete/independent_other_row', 'delete/inverse_of_inverse',
                                        'delete/restored_row_overlap', 'delete/new_pin_dependency_conflict',
                                        'delete/redo_new_pin_dependency_conflict', 'delete/collateral_independent',
                                        'delete/collateral_overlap', 'connect/independent_other_row',
                                        'connect/inverse_of_inverse', 'connect/route_overlap',
                                        'create/independent_other_row', 'create/inverse_of_inverse',
                                        'create/occurrence_overlap', 'create/declaration_independent',
                                        'create/declaration_inverse_of_inverse',
                                        'create/shared_declaration_conflict', 'create/declaration_overlap',
                                        'disconnect/endpoint_model_independent', 'disconnect/endpoint_model_conflict',
                                        'disconnect/endpoint_model_missing', 'delete/new_node_dependency_conflict'}
                                    if (raw['profile'] != 'private_topology_inverse_values_v1'
                                            or raw['production_local_inverse_enabled'] is not False
                                            or {case['case'] for case in raw['cases']} != names):
                                        raise ValueError('Exact fixed detached topology scenarios required')
                                for case in raw['cases']:
                                    planned=plan(case['before'],case['after'],case['current'],operation=case['operation'])
                                    if planned!=case['plan']: raise ValueError('Python/native plan differs: '+case['case'])
                                    compatible=not any(label in case['case'] for label in ('overlap','conflict','missing','occupied'))
                                    if planned['compatible']!=compatible:
                                        raise ValueError('Unexpected independent-merge/conflict classification: '+case['case'])
                                    comparisons.append({'case':case['case'],'compatible':compatible,
                                        'plan_sha256':fingerprint(planned),'cells':len(planned['cells'])})
                            after=adapter.observe(domain,[]);public_after=adapter.observe_public(domain)
                            save_new(trial/'after.json',{'native':after,'public':public_after})
                            checked=adapter._exchange({'cmd':'main_readonly_witness','action':'check','token':token})
                            save_new(trial/'witness-after.json',checked)
                            if before!=after or public_before!=public_after or checked['unchanged'] is not True:
                                raise ValueError('Complete live graph/native/source/identity purity differs')
                            for flag in ('native_fields_unchanged','source_unchanged','ids_unchanged',
                                    'physical_identity_order_unchanged','drawing_identity_order_unchanged'):
                                if checked[flag] is not True: raise ValueError('Witness differs: '+flag)
                            save_new(trial/'comparisons.json',comparisons)
                        finally:
                            if retained:
                                try:
                                    if checked is None:
                                        checked=adapter._exchange({'cmd':'main_readonly_witness','action':'check','token':token})
                                        save_new(trial/'witness-after-failure.json',checked)
                                    if checked['unchanged'] is True:
                                        released=adapter._exchange({'cmd':'main_readonly_witness','action':'release','token':token})
                                        save_new(trial/'witness-release.json',released)
                                    else:
                                        save_new(trial/'witness-retained.json',{'token':token,'domain':domain,
                                            'reason':'Complete live purity failed; original references retained'})
                                except Exception as witness_error:
                                    save_new(trial/'witness-retained.json',{'token':token,'domain':domain,
                                        'reason':'Witness check/release failed; do not replay capture',
                                        'error':str(witness_error)})
                save_new(trial/'wire.json',wire_result(wire))
                active_trial=active_wire=None
                row={'structure':structure,'repeat':repeat,'cases':len(comparisons),
                     'native_objects':checked['objects'],'complete_live_purity':True,'passed':True}
                result['rounds'].append(row);save();print(json.dumps(row),flush=True)
        result['source_unchanged']=result['source_manifest']==source_manifest()
        if not result['source_unchanged']: raise ValueError('Candidate source changed during preflight')
        result['passed']=True
    except Exception as error:
        result['error']=str(error);result['traceback']=traceback.format_exc()
        if active_trial is not None and active_wire is not None:
            save_new(active_trial/'wire-failure.json',wire_result(active_wire))
    save();print(json.dumps({'passed':result['passed'],'rounds':len(result['rounds']),
        'complete_case_pass':False,'error':result.get('error')},ensure_ascii=False),flush=True)
    return 0 if result['passed'] else 1


if __name__=='__main__': raise SystemExit(main())
