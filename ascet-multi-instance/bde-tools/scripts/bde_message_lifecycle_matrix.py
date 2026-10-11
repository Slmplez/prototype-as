"""Serial formal primitive-message lifecycle matrix, full materials/oracles and no failed-stage retry."""
import argparse
import json
from pathlib import Path
import shutil
import subprocess
import sys
import traceback

import bd_service as service
import bd_instance_pending as pending
from bd_edit_journal import fingerprint
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest

ROLES=('receive_message','send_message','send_receive_message')
TYPES=('cont','sdisc','udisc','log')
SCOPES=('local','imported','exported')
ALL_CASES=[(role,model_type,scope) for role in ROLES for model_type in TYPES for scope in SCOPES]
PRIORITY=[('send_message','log','exported'),('send_receive_message','udisc','local'),('receive_message','sdisc','exported')]
ORDER=PRIORITY+[case for case in ALL_CASES if case not in PRIORITY]
STAGES=('prepare','create','create-audit','history-prepare','history',
        'finalize-prepare','finalize','released-audit')


def case_id(case):return '-'.join(case)


def stage_paths(output,case):
    if case not in ALL_CASES:raise ValueError('Declared primitive-message case required')
    # Child drivers bind session/request IDs to output.name, so every leaf must
    # distinguish the matrix as well as the case and stage, across separate stores.
    # Keep native .NET/Python journal temp paths below Windows MAX_PATH. Human
    # case/stage labels remain in result.json; a hash binds the complete identity.
    return {stage:output/'runs'/('m_'+fingerprint(dict(output=str(output.resolve()),
        case=case_id(case),stage=stage))[:24]) for stage in STAGES}


def check_creation_identity(value,output,domain,seen):
    expected_domain={**domain,'session':output.name}
    expected='edit_'+fingerprint(dict(domain=expected_domain,request_id=output.name+'-forward'))
    token=value.get('native_token')
    if (value.get('domain')!=expected_domain or token!=expected
            or value.get('edit',{}).get('change_id')!=expected):
        raise ValueError('Creation receipt does not bind its exact matrix/case request')
    if token in seen:raise ValueError('Matrix reused a native change identity across cases')
    seen.add(token)
    return dict(native_token=token,session=output.name,request_id=output.name+'-forward',unique=True)


def frames(directory):
    totals=dict(connections=0,request_frames=0,response_frames=0,request_bytes=0,response_bytes=0,wire_files=0)
    for file in sorted([*directory.glob('*.json'),*(directory/'call-wire').glob('*.json')]):
        if file.name=='result.json':continue
        value=json.loads(file.read_text(encoding='utf-8'))
        if type(value) is not dict:continue
        wire=value.get('wire') if 'wire' in value else value if 'connections' in value and 'request' in value else None
        if type(wire) is not dict:continue
        totals['wire_files']+=1;totals['connections']+=wire['connections']
        for direction in ('request','response'):
            totals[direction+'_frames']+=wire[direction]['frames'];totals[direction+'_bytes']+=wire[direction]['bytes']
            if wire[direction]['parse_error'] is not None or wire[direction]['incomplete_bytes']:
                raise ValueError('Incomplete actual wire evidence: '+str(file))
        if wire['errors']:raise ValueError('Actual counting proxy errors: '+str(file))
    return totals


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source',type=Path,required=True,help='Completed unchanged exact isolated Module original-material study')
    parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--case',choices=[case_id(c) for c in ALL_CASES],action='append',help='Diagnose selected cases; omission executes all36')
    args=parser.parse_args();source=args.source.resolve();output=args.output.resolve();owned=service.ROOT/'analysis/bde-experiments'
    if output.exists() or any(not p.is_relative_to(owned) for p in (source,output)):
        raise ValueError('Completed owned Module study and fresh output required; never restart an existing matrix')
    study=json.loads((source/'result.json').read_text(encoding='utf-8'))
    manifest,process,epoch=live_manifest(study['manifest']);domain=study['domain']
    if (study['passed'] is not True or study.get('message_study_requested') is not True
            or study.get('creation_dispatched') is not False or study.get('message_study_retained') is not False
            or study.get('witness_retained') is not False or study.get('isolated_pending') is not False
            or domain['process_epoch']!=epoch or domain['database']!=manifest['database']):
        raise ValueError('Completed unchanged selected-epoch primitive Module study required')
    pending.check(domain)
    requested=args.case or [case_id(c) for c in ORDER]
    if len(requested)!=len(set(requested)):raise ValueError('Duplicate matrix cases are not allowed')
    cases=[c for c in ORDER if case_id(c) in requested]
    planned_paths=[path for case in cases for path in stage_paths(output,case).values()]
    if len({path.name for path in planned_paths})!=len(planned_paths):
        raise ValueError('Matrix child session/request namespaces must be distinct before dispatch')
    output.mkdir(parents=True)
    result=dict(passed=False,scope='Formal primitive-message create/actual diff/same-object undo-redo-undo/full closure only; wire-delete/populated/flow separate',
        source=str(source),manifest=study['manifest'],process_epoch=epoch,component=study['component'],domain=domain,
        source_manifest=source_manifest(),requested_cases=[case_id(c) for c in cases],completed_cases=[],cases=[],
        active_stage=None,automatic_retry=False,complete_case_pass=False,full_delivery=False,
        populated_module_coverage=False,wire_delete_coverage=False,cross_module_project_flow_coverage=False,
        original_restored=False,business_model_calls=0,
        request_identity_scope='resolved_matrix_output/case/stage',creation_identity_checks=[])
    seen_tokens=set()
    def save():(output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    save()
    for rel in result['source_manifest']:
        target=output/'source'/rel;target.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(service.ROOT/rel,target)
    def runtime():
        if live_manifest(study['manifest'])!=(manifest,process,epoch):raise ValueError('Original selected epoch changed; never rebind')
        if source_manifest()!=result['source_manifest']:raise ValueError('Matrix source version changed; stop before another stage')
    try:
        for role,model_type,scope in cases:
            runtime();pending.check(domain)
            name=case_id((role,model_type,scope));case=dict(case_id=name,kind=role,model_type=model_type,message_scope=scope,
                passed=False,stages=[],original_restored=False)
            result['cases'].append(case);save()
            paths=stage_paths(output,(role,model_type,scope))
            stages=[
                ('prepare','bde_message_creation_preflight.py',['--source',str(source),'--kind',role,'--model-type',model_type,'--message-scope',scope]),
                ('create','bde_create_tool_capture_experiment.py',['--preflight',str(paths['prepare']),'--kind',role,'--declarations']),
                ('create-audit','bde_message_creation_terminal_audit.py',['--source',str(paths['create'])]),
                ('history-prepare','bde_message_history_preflight.py',['--source',str(paths['create']),'--verification',str(paths['create-audit']),'--execution-profile']),
                ('history','bde_create_history_tool_experiment.py',['--source',str(paths['create']),'--verification',str(paths['create-audit'])]),
                ('finalize-prepare','bde_create_finalize_preflight.py',['--source',str(paths['history'])]),
                ('finalize','bde_create_finalize_tool_experiment.py',['--source',str(paths['history'])]),
                ('released-audit','bde_message_finalize_terminal_audit.py',['--source',str(paths['finalize'])])]
            for stage,script,arguments in stages:
                runtime();result['active_stage']=dict(case_id=name,stage=stage,output=str(paths[stage]));save()
                command=[sys.executable,'-X','utf8',str(service.ROOT/'scripts'/script),*arguments,'--output',str(paths[stage])]
                print(json.dumps(dict(event='stage_started',case_id=name,stage=stage),ensure_ascii=False),flush=True)
                child=subprocess.run(command,cwd=service.ROOT,capture_output=True,text=True,encoding='utf-8')
                child_path=paths[stage]/'result.json'
                value=json.loads(child_path.read_text(encoding='utf-8')) if child_path.exists() else None
                record=dict(stage=stage,output=str(paths[stage]),command=command,exit_code=child.returncode,
                    stdout=child.stdout,stderr=child.stderr,passed=child.returncode==0 and value is not None and value.get('passed') is True)
                case['stages'].append(record);save()
                if record['passed'] is not True:
                    result['failed_case']=name;result['failed_stage']=stage
                    if value is not None:result['failed_outcome']={k:value.get(k) for k in ('error','isolated_pending','material_retained',
                        'witness_retained','current_witness_retained','prepared_retained','study_retained','original_restored','native_token')}
                    raise ValueError('Matrix stage failed; do not retry or start next case: '+name+'/'+stage)
                if value['source_manifest']!=result['source_manifest']:
                    raise ValueError('Successful child stage used a different frozen source version')
                if stage=='create':
                    result['creation_identity_checks'].append(
                        dict(case_id=name,**check_creation_identity(value,paths[stage],domain,seen_tokens)))
                record['wire']=frames(paths[stage]);save()
                print(json.dumps(dict(event='stage_passed',case_id=name,stage=stage),ensure_ascii=False),flush=True)
            final=json.loads((paths['finalize']/'result.json').read_text(encoding='utf-8'))
            audit=json.loads((paths['released-audit']/'result.json').read_text(encoding='utf-8'))
            if (final['original_restored'] is not True or final['material_retained'] is not False
                    or final['witness_retained'] is not False or final['isolated_pending'] is not False
                    or audit['material_retained'] is not False or audit['witness_retained'] is not False
                    or audit['isolated_pending'] is not False):
                raise ValueError('Complete exact original restoration/release proof missing; stop matrix')
            case.update(passed=True,original_restored=True,finalization_change_id=final['edit']['change_id'])
            result['completed_cases'].append(name);result['active_stage']=None;save()
            print(json.dumps(dict(event='case_passed',case_id=name,completed=len(result['completed_cases']),requested=len(cases)),ensure_ascii=False),flush=True)
        runtime();pending.check(domain)
        result.update(passed=True,original_restored=True,isolated_pending=False,all36_primitive_axes_covered=len(cases)==36,
            sources_match=True,active_stage=None)
    except Exception as error:
        result.update(error=str(error),traceback=traceback.format_exc(),sources_match=source_manifest()==result['source_manifest'])
        try:pending.check(domain);result['isolated_pending']=False
        except Exception as pending_error:result.update(isolated_pending=True,pending_error=str(pending_error))
    finally:save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','failed_case','failed_stage','isolated_pending','original_restored','all36_primitive_axes_covered')},ensure_ascii=False),flush=True)
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
