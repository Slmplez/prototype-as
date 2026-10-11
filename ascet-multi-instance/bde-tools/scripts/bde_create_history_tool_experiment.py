"""Actual formal same-object graphical create undo/redo/undo; allocator stays retained."""
import argparse
import json
import os
from pathlib import Path
import shutil
import traceback
from unittest.mock import patch

import bd_service as service
import bde_experiments as bench
import bd_instance_pending as pending
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bd_create_history_journal import context as history_context
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
from bde_main_workflow import build_oracle, save_new, wire_result, verify_pages
from bde_public_oracle import compare
from bde_tool_client import ToolClient
from bd_message_declaration_material import KINDS as MESSAGE_KINDS


def resume_context(old,prior,source,log):
    """Only continue a durable completed first undo, never retry the old execution."""
    if prior.get('certificate_published') is True:
        if (old['operation']['kind'] != 'enumeration' or prior.get('passed') is not True
                or prior.get('source') != str(source) or prior.get('domain') != old['domain']
                or prior.get('process_epoch') != old['process_epoch'] or prior.get('native_token') != old['native_token']
                or prior.get('original_undo_redispatched') is not False or prior.get('isolated_pending') is not False
                or prior.get('receipt', {}).get('status') != 'verified_local'):
            raise ValueError('Exact formally recovered original Enum first undo required')
        failed = json.loads((Path(prior['failed_trial'])/'result.json').read_text(encoding='utf-8'))
        if (failed.get('passed') is not False or failed.get('witness_retained') is not True
                or any(failed.get(k) != old[k] for k in ('native_token','domain','process_epoch','component'))
                or failed.get('created_capture',{}).get('retained') is not True):
            raise ValueError('Original failed Enum driver and created witness required')
        head = prior['receipt']['change_id']; ctx = history_context(log, head)
        if ctx['native_token'] != old['native_token'] or ctx['sequence'] != 2 or ctx['state'] != 'reverted':
            raise ValueError('Recovered Enum first-undo durable direction differs')
        prior['created_capture'] = failed['created_capture']
        prior['recovered_first_undo'] = True
        return head, ctx, failed['created_capture']['token']
    if (Path(prior.get('source','')).resolve()!=source.resolve()
            or prior.get('domain')!=old['domain'] or prior.get('process_epoch')!=old['process_epoch']
            or prior.get('native_token')!=old['native_token'] or prior.get('passed') is not False
            or prior.get('isolated_pending') is not False or prior.get('witness_retained') is not True
            or len(prior.get('histories',[]))!=1 or prior['histories'][0]['label']!='undo'
            or prior['histories'][0]['receipt']['status']!='verified_local'
            or prior.get('created_capture',{}).get('component_oid')!=old['domain']['oid']
            or prior.get('created_capture',{}).get('retained') is not True):
        raise ValueError('Exact preserved completed first undo and original created witness required')
    head=prior['histories'][0]['receipt']['change_id'];ctx=history_context(log,head)
    if (ctx['native_token']!=old['native_token'] or ctx['sequence']!=2
            or ctx['state']!='reverted' or ctx['source']['domain']!=old['domain']):
        raise ValueError('Durable first-undo ownership/state differs; never replay old undo')
    return head,ctx,prior['created_capture']['token']


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--source',required=True,type=Path)
    parser.add_argument('--output',required=True,type=Path)
    parser.add_argument('--resume',type=Path,help='Preserved failed driver after a durable completed first undo')
    parser.add_argument('--verification',type=Path,help='Exact preserved variable verification or original message terminal audit')
    args=parser.parse_args();source=args.source.resolve();output=args.output.resolve()
    owned=service.ROOT/'analysis/bde-experiments'
    if output.exists() or not source.is_relative_to(owned) or not output.is_relative_to(owned):
        raise ValueError('Retained owned exact graphical creation and fresh output required')
    old=json.loads((source/'result.json').read_text(encoding='utf-8'))
    manifest,process,epoch=live_manifest(old['manifest'])
    if args.verification and not args.verification.resolve().is_relative_to(owned):
        raise ValueError('Owned preserved capture verification required')
    from bde_create_history_source import validate as validate_source
    declaration=validate_source(source,old,epoch,args.verification)
    message=old['operation']['kind'] in MESSAGE_KINDS
    verified_message=json.loads((args.verification.resolve()/'result.json').read_text(encoding='utf-8')) if message else None
    domain=old['domain'];token=verified_message['native_token'] if message else old['native_token'];pending.check(domain)
    output.mkdir(parents=True);service.STORE=source/'store';log=StructureJournal(service.STORE/'edits')
    ctx=history_context(log,token);head=token;prior=None
    if args.resume:
        resume=args.resume.resolve()
        if not resume.is_relative_to(owned):raise ValueError('Owned original failed driver required')
        prior=json.loads((resume/'result.json').read_text(encoding='utf-8'))
        head,ctx,inherited_witness=resume_context(old,prior,source,log)
    save_new(output/'original-journal.json',log.read(token))
    result=dict(passed=False,scope='Formal retained graphical create undo/redo/undo, exact CURRENT; allocator retained',
        source=str(source),manifest=old['manifest'],process_epoch=epoch,domain=domain,component=old['component'],
        native_token=token,source_manifest=source_manifest(),formal_tool_calls=0,histories=[],documents=[],
        material_retained=True,witness_retained=False,original_restored=False,allocator_baseline_restored=False,
        local_merge_verified=False,declaration_body_restore_verified=False,complete_case_pass=False,
        full_delivery=False,business_model_calls=0,undo_redispatched=False,undo_witness_retained=False,
        declaration_history_enabled=declaration,verification_source=str(args.verification.resolve()) if args.verification else None,
        resume_from=str(args.resume.resolve()) if prior else None,start_head=head)
    if prior and prior.get('recovered_first_undo') is True:
        result['histories'].append(dict(label='undo', receipt=prior['receipt'],
            verification='no-replay original terminal certificate and formal recovery', evidence=str(args.resume.resolve())))
    def save():(output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    save()
    for relative in result['source_manifest']:
        dest=output/'source'/relative;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copyfile(service.ROOT/relative,dest)
    environment=dict(os.environ,ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_OPERATION_EXECUTOR='staged_v1',ASCET_BD_CREATE_MATERIAL='identity_v1',
        ASCET_BD_CREATE_HISTORY='native_source_exact_v1')
    if declaration:
        if message:
            environment.update(ASCET_BD_CREATE_DECLARATIONS='message_body_v1',ASCET_BD_CREATE_DECLARATION_HISTORY='message_body_exact_v1')
        elif old['operation']['kind'] == 'enumeration':
            environment.update(ASCET_BD_CREATE_DECLARATIONS='enum_body_v1',ASCET_BD_CREATE_DECLARATION_HISTORY='enum_body_exact_v1')
        else:
            environment.update(ASCET_BD_CREATE_DECLARATIONS='body_v1',ASCET_BD_CREATE_DECLARATION_HISTORY='body_exact_v1')
    witness_token=inherited_witness if prior else 'main_'+fingerprint(dict(domain=domain,purpose=output.name+'-created-original'))
    undo_witness='main_'+fingerprint(dict(domain=domain,purpose=output.name+'-undo-original'))
    calls=[]
    try:
        binary=build_oracle(output)
        class Observer(NativeStructureAdapter):build=staticmethod(lambda:binary)
        def runtime():
            if live_manifest(old['manifest'])!=(manifest,process,epoch):raise ValueError('Original runtime changed; never rebind')
        def native(label,callback):
            runtime()
            with patch.dict(os.environ,environment,clear=True),service.live_lock(),bench.proxy(upstream_port=manifest['port']) as wire:
                with Observer(old['component'],timeout=30,environment={**environment,'ASCET_BD_PROBE_PORT':str(wire['port'])}) as adapter:
                    adapter._ensure_open(domain);value=callback(adapter)
            save_new(output/(label+'.json'),dict(result=value,wire=wire_result(wire)));return value
        def witness(action,label,token=None):
            return native(label,lambda a:a._exchange(dict(cmd='main_readonly_witness',action=action,token=token or witness_token)))
        def record(row):
            save_new(output/'tool-calls'/(str(len(calls)).zfill(3)+'.json'),row);calls.append(row)
            result['formal_tool_calls']=len(calls);save()
        def tool(label,name,arguments,offline=False):
            runtime()
            with bench.proxy(upstream_port=manifest['port']) as wire:
                client=ToolClient(output,domain['session'],record);client.env.update(environment,ASCET_BD_PROBE_PORT=str(wire['port']))
                start=len(calls);meta,body,error=client.call(name,arguments)
            frames=wire_result(wire);save_new(output/'call-wire'/(label+'.json'),frames)
            save_new(output/'responses'/(label+'.json'),dict(meta=meta,body=body,is_error=error))
            if error:raise ValueError('Formal history failed '+label+': '+body)
            result['documents'].append(dict(label=label,**verify_pages(calls[start:],body,arguments.get('max_bytes',12288))))
            if offline and (frames['connections'] or frames['request']['frames']):raise ValueError('Offline history request read ASCET')
            return json.loads(body)
        if prior:
            result['created_capture']=prior['created_capture'];result['witness_retained']=True;save()
            result['resume_terminal_query']=tool('resume-terminal-query','bd_inspect',dict(query='recovery',change_id=head))
            if (result['resume_terminal_query'].get('terminal_verified') is not True
                    or result['resume_terminal_query'].get('execution_redispatched') is not False):
                raise ValueError('Completed original undo lacks exact live terminal verification')
            result['undo_capture']=witness('capture','undo-current-capture',undo_witness)
            result['undo_witness_retained']=True;save()
        else:
            result['created_capture']=witness('capture','created-current-capture');result['witness_retained']=True;save()
        result['compiled']=native('history-compile',lambda a:a._exchange(dict(cmd='create_history_compile')))
        for label in (('redo','undo-again') if prior else ('undo','redo','undo-again')):
            ctx=history_context(log,head)
            request=dict(change_id=head,request_id=output.name+'-'+label)
            preview=tool(label+'-preview','bd_revert',{**request,'preview':True})
            if preview['status']!='preview':raise ValueError('Fixed native history constraints failed before mutation')
            save_new(output/(label+'-intent.json'),dict(domain=domain,request=request,automatic_retry=False))
            actual=tool(label+'-actual','bd_revert',request)
            result['histories'].append(dict(label=label,receipt=actual));save()
            if actual['status']!='verified_local':raise ValueError('Actual retained creation history incomplete')
            head=actual['change_id'];newctx=history_context(log,head)
            if newctx['state']!=('reverted' if ctx['state']=='applied' else 'applied') or newctx['current']!=ctx['expected']:
                raise ValueError('Actual durable head/direction differs')
            independent=native(label+'-independent',lambda a:dict(native=a.observe(domain,[]),public=a.observe_public(domain),
                **(dict(models=a.observe_models(domain), configuration=a._exchange(dict(cmd='main_configuration')))
                   if old['operation']['kind']=='enumeration' or message else {})))
            if independent['native']!=newctx['current'] or not compare(independent['native']['entries'],independent['public'])['passed']:
                raise ValueError('Complete independent actual native/public graph differs')
            if old['operation']['kind']=='enumeration':
                baseline='before' if newctx['state']=='reverted' else 'after'
                if (independent['models'] != old[baseline]['models']
                        or independent['configuration'] != old['configuration_'+baseline]):
                    raise ValueError('Full independent Enum declaration/configuration baseline differs')
            if message:
                baseline=old['before'] if newctx['state']=='reverted' else verified_message['independent']
                config=old['configuration_before'] if newctx['state']=='reverted' else verified_message['independent']['configuration']
                if independent['models']!=baseline['models'] or independent['configuration']!=config:
                    raise ValueError('Full independent Module message declaration/configuration baseline differs')
            diff=tool(label+'-diff','bd_diff',dict(change_id=head),offline=True)
            duplicate=tool(label+'-duplicate','bd_revert',request,offline=True)
            if duplicate!=actual or diff['graphical_differences']!=actual['graphical_differences']:
                raise ValueError('Actual offline diff/identical duplicate differs')
            terminal=tool(label+'-terminal-query','bd_inspect',dict(query='recovery',change_id=head))
            if not terminal.get('terminal_verified') or terminal.get('execution_redispatched') is not False:
                raise ValueError('Retained actual terminal query incomplete')
            save_new(output/(label+'-journal.json'),log.read(head))
            if label=='undo':
                result['undo_capture']=witness('capture','undo-current-capture',undo_witness)
                result['undo_witness_retained']=True;save()
            if label=='redo':
                result['redo_complete_created_witness']=witness('check','redo-created-witness')
                if result['redo_complete_created_witness']['unchanged'] is not True:
                    raise ValueError('Redo did not restore complete original created native/source/order/alias state')
                result['current_witness_release']=witness('release','created-current-release')
                result['witness_retained']=not result['current_witness_release']['released'];save()
        result['final_head']=head;result['final_context']=history_context(log,head)
        result['typed_original_restored']=result['final_context']['current']==history_context(log,token)['expected']
        result['undo_complete_witness']=witness('check','undo-complete-witness',undo_witness)
        if result['undo_complete_witness']['unchanged'] is not True:
            raise ValueError('Final undo did not restore complete first-undo native/source/order/alias state')
        result['undo_witness_release']=witness('release','undo-current-release',undo_witness)
        result['undo_witness_retained']=not result['undo_witness_release']['released']
        pending.check(domain);result['isolated_pending']=False
        result['sources_match']=source_manifest()==result['source_manifest']
        result['passed']=(result['sources_match'] and result['typed_original_restored']
            and not result['witness_retained'] and not result['undo_witness_retained'])
        if old['operation']['kind']=='enumeration':
            result['enum_same_object_history_verified']=result['passed'] and len(result['histories'])==3
            result['definition_reference_targets_verified']=result['enum_same_object_history_verified']
        if message:
            result['message_same_object_history_verified']=result['passed'] and len(result['histories'])==3
            result['owner_reference_targets_verified']=result['message_same_object_history_verified']
    except Exception as error:
        result.update(error=str(error),traceback=traceback.format_exc())
        try:
            pending.check(domain);result['isolated_pending']=False
        except Exception as pending_error:result.update(isolated_pending=True,pending_error=str(pending_error))
        if result['witness_retained']:
            try:result['failure_witness']=witness('export','failure-created-witness')
            except Exception as diagnostic_error:result['diagnostic_error']=str(diagnostic_error)
        if result['undo_witness_retained']:
            try:result['failure_undo_witness']=witness('export','failure-undo-witness',undo_witness)
            except Exception as diagnostic_error:result['undo_diagnostic_error']=str(diagnostic_error)
    finally:save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','formal_tool_calls','isolated_pending','original_restored','sources_match')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
