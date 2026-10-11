"""Actual Doge formula edits with independent native audit and exact restoration."""
import argparse
import json
import os
from pathlib import Path
import sys
import traceback
import bd_service as service
from bd_edit_journal import clone
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bd_structure_journal import differences
from bde_public_oracle import compare, public_projection
from bde_tool_client import ToolClient
import bde_experiments as bench


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component',required=True)
    parser.add_argument('--output',type=Path,required=True)
    parser.add_argument('--repeats',type=int,choices=[1,3],default=3)
    args=parser.parse_args()
    if not args.component.startswith('BDE_Tool_Experiments\\Trial_'):parser.error('Sandbox component required')
    args.output.mkdir(parents=True,exist_ok=False);service.STORE=args.output/'store'
    sources=[f for f in (service.ROOT/'scripts').glob('*') if f.suffix in ('.py','.cs','.st','.json')
             and f.name.startswith(('bd','AscetStructure','AscetRead','AscetBde','format_bd'))]
    sources+=list((service.ROOT/'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result={'passed':False,'component':args.component,'calls':[],'cases':[],'outstanding':[],
        'scope':'existing dependent cont scalar expressions and existing default bindings; same formal objects/order; one fixture',
        'source_manifest':{str(f.relative_to(service.ROOT)):service.digest(f.read_bytes()) for f in sources}}
    def save():(args.output/'result.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    def record(call):result['calls'].append(call);save()
    client=ToolClient(args.output,str(args.output.resolve()),record)
    def edit(snapshot,op,key):
        _,body,error=client.call('bd_edit',{'snapshot':snapshot,'request_id':key,'operations':[op]})
        receipt=json.loads(body)
        if receipt.get('status') in ('applied_observed','postcondition_mismatch','outcome_unknown'):
            result['outstanding'].append(receipt['change_id']);save()
        assert not error and receipt['status']=='applied_observed',body
        assert receipt['additional_ASCET_reads']==0
        return receipt
    def inverse(key):
        _,receipt=client.value('bd_revert',{'change_id':result['outstanding'][-1],'request_id':key})
        assert receipt['status']=='verified_local',receipt
        result['outstanding'].pop();save();return receipt
    initial=None;pristine=None
    try:
        compile_bridge()
        audit_binary=service.ROOT/'analysis/live-api/AscetFormulaAudit.exe'
        audit_template=service.ROOT/'scripts/bde_formula_audit.st'
        source=service.ROOT/'scripts/AscetStructureRead.cs'
        compiler=Path(os.environ.get('WINDIR','C:/Windows'))/'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        dll=Path(os.environ.get('ASCET_BD_DLL','E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
        service.run_process([str(compiler),'/nologo','/platform:x86',f'/r:{dll}','/r:System.Web.Extensions.dll',
            f'/resource:{audit_template},bde_structure_read.st',f'/out:{audit_binary}',str(source)],30,build_step=True)
        header,_,error=client.call('bd_read',{'component':args.component,'view':'structure'});assert not error
        baseline=service.load_record(header['snapshot'],'s_','snapshots')
        domain={'session':str(args.output.resolve()),'database':baseline['database'],'oid':baseline['oid'],'process_epoch':baseline['ascet_process_epoch']}
        result['domain']=domain
        def observe(label):
            with service.live_lock(),NativeStructureAdapter(args.component) as adapter:
                native=adapter.observe(domain,[]);public=adapter.observe_public(domain);models=adapter.observe_models(domain)
            path=(args.output/(label+'-audit.json')).resolve()
            with service.live_lock():metric,raw=bench.run([str(audit_binary),args.component,'Main',str(path),'all'],path)
            assert not metric['error'] and not metric['proxy_errors'] and raw.get('status')=='ok',raw
            assert raw['dirty_before']==raw['dirty_after']==0
            assert compare(native['entries'],public)['passed']
            observation={'native':native,'public':public_projection(public),'models':sorted(models,key=lambda m:m['name']),
                'formulas':raw['structure']['formulas'],'audit_metrics':metric}
            (args.output/(label+'-observation.json')).write_text(json.dumps(observation,indent=2),encoding='utf-8')
            return observation
        def stable(observation):return {k:v for k,v in observation.items() if k!='audit_metrics'}
        def formula_projection(rows):
            return {r['ref']:clone({k:v for k,v in r.items() if k not in ('copy_compiled','copy_text','parsed_names')}) for r in rows}
        pristine=observe('baseline');result['baseline']=pristine;save()
        creation=edit(header['snapshot'],{'op':'create_block','kind':'parameter','name':'EvalFormulaSource',
            'model_type':'cont','position':[1800,1600],'initial_value':2.125},'fixture-parameter')
        result['fixture_parameter_creation']=creation
        initial=observe('fixture-with-parameter');save()
        rows=baseline['structure']['entries']
        targets=[next(row for row in rows if row.get('name')==name) for name in
            ('C_AEB_AXCDeadZonePos','C_AEB_AXCKiMass','b0_AxTar')]
        for model in targets:
            for trial in range(args.repeats):
                key=model['name']+'-'+str(trial)
                header,_,error=client.call('bd_read',{'component':args.component,'view':'structure'});assert not error
                current=service.load_record(header['snapshot'],'s_','snapshots')
                old=next(row for row in current['structure']['entries'] if row['ref']==model['ref']);formula=old['dependent_formula']
                before=observe(key+'-before');assert stable(before)==stable(initial)
                op={'op':'set_formula','target':'Main/'+old['ref'],'expect':{k:formula[k] for k in ('text','compiled')},
                    'text':'('+formula['text']+') + 1'}
                _,preview=client.value('bd_edit',{'snapshot':header['snapshot'],'request_id':key+'-preview','operations':[op],'preview':True})
                assert preview['status']=='preview'
                assert stable(observe(key+'-preview'))==stable(before)
                for label,text in [('syntax','('+formula['text']+') +'),('new-formal','('+formula['text']+') + UnknownNewFormal')]:
                    bad={**op,'text':text}
                    for preview_flag in (True,False):
                        _,body,error=client.call('bd_edit',{'snapshot':header['snapshot'],'request_id':key+'-'+label+'-'+str(preview_flag),
                            'operations':[bad],'preview':preview_flag})
                        assert error,body
                assert stable(observe(key+'-negatives'))==stable(before)
                changed=edit(header['snapshot'],op,key+'-expression')
                case={'key':key,'passed':False,'expression':changed};result['cases'].append(case);save()
                after=observe(key+'-expression-after')
                assert changed['differences']==differences(before['native'],after['native'])
                assert len(changed['differences'])==1 and changed['differences'][0]['ref']==old['ref']
                expected=formula_projection(before['formulas'])
                old_audit=next(r for r in before['formulas'] if r['ref']==old['ref'])
                expected[old['ref']].update(text=op['text'],compiled=old_audit['copy_compiled'])
                assert formula_projection(after['formulas'])==expected
                assert after['public']==before['public'] and after['models']==before['models']
                _,duplicate=client.value('bd_edit',{'snapshot':header['snapshot'],'request_id':key+'-expression','operations':[op]})
                assert duplicate['change_id']==changed['change_id']
                _,logged=client.value('bd_diff',{'change_id':changed['change_id']})
                assert logged['differences']==changed['differences']
                _,body,error=client.call('bd_edit',{'snapshot':header['snapshot'],'request_id':key+'-stale','operations':[op]});assert error,body
                inverse(key+'-undo-expression')
                assert stable(observe(key+'-expression-restored'))==stable(before)
                header,_,error=client.call('bd_read',{'component':args.component,'view':'structure'});assert not error
                current=service.load_record(header['snapshot'],'s_','snapshots')
                current_rows=current['structure']['entries']
                formal=formula['bindings']['values'][0];old_actual=formal['actual_ref']
                candidate=next(row for row in current_rows if row['ref']!=old_actual and row.get('parameter') is True
                    and row.get('native_class')=='EtasAPIModelScalar' and row.get('model_type')=='cont'
                    and 'dependent_formula' not in row and row.get('default_value',{}).get('status')=='read')
                binding={'op':'set_formula_binding','target':'Main/'+old['ref'],'formal_oid':formal['formal_oid'],
                    'expect':{'actual':'Main/'+old_actual},'actual':'Main/'+candidate['ref']}
                bound=edit(header['snapshot'],binding,key+'-binding');case['binding']=bound;save()
                binding_after=observe(key+'-binding-after')
                assert bound['differences']==differences(before['native'],binding_after['native'])
                expected=formula_projection(before['formulas'])
                selected=next(f for f in expected[old['ref']]['formals'] if f['oid']==formal['formal_oid'])
                selected['actual_ref']=candidate['ref']
                assert formula_projection(binding_after['formulas'])==expected
                assert binding_after['public']==before['public'] and binding_after['models']==before['models']
                _,body,error=client.call('bd_edit',{'snapshot':header['snapshot'],'request_id':key+'-binding-stale','operations':[binding]});assert error,body
                inverse(key+'-undo-binding')
                assert stable(observe(key+'-binding-restored'))==stable(before)
                case['passed']=True;save();print(json.dumps({'case':key,'passed':True}),flush=True)
        assert stable(observe('before-fixture-teardown'))==stable(initial)
        inverse('undo-fixture-parameter')
        result['baseline_restored']=stable(observe('final'))==stable(pristine)
        assert result['baseline_restored'];result['passed']=True
    except Exception:
        result['error']=traceback.format_exc();save()
        while result['outstanding']:
            try:inverse('failure-cleanup-'+str(len(result['outstanding'])))
            except Exception as error:result['cleanup_error']=str(error);break
        if pristine is not None and not result['outstanding']:
            try:result['baseline_restored']=stable(observe('failure-final'))==stable(pristine)
            except Exception:result['cleanup_error']=traceback.format_exc()
    result['source_changes_during_run']=[str(f.relative_to(service.ROOT)) for f in sources
        if service.digest(f.read_bytes())!=result['source_manifest'][str(f.relative_to(service.ROOT))]]
    result['passed']=result['passed'] and not result['source_changes_during_run']
    save();print(json.dumps({k:result.get(k) for k in ('passed','baseline_restored','outstanding','error','cleanup_error')}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
