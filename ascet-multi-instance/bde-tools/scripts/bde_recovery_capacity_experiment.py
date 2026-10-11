"""Fill recovery slots using non-mutating prepares, then release only our slots."""
import argparse
from contextlib import nullcontext
import json
from pathlib import Path
import traceback
from unittest.mock import patch
import bd_service as service
from bd_native_structure import NativeStructureAdapter
from bd_edit_journal import fingerprint
from bd_structure_journal import StructureJournal


def main():
    parser=argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--reference',type=Path,required=True);parser.add_argument('--output',type=Path,required=True)
    a=parser.parse_args();a.output.mkdir(parents=True,exist_ok=False)
    raw=json.loads(a.reference.read_text(encoding='utf-8'));assert raw['oid']=='040ts00000001qg714f06gl6l0bgk'
    domain={'session':str(a.output.resolve()),'database':raw['database'],'oid':raw['oid'],'process_epoch':raw['ascet_process_epoch']}
    result={'passed':False,'trials':[],'prepared_outstanding':[],'applied_outstanding':[],
        'scope':'capacity of retained native records; no silent eviction; exact-state discard; prewrite persistence failures',
        'source_manifest':{str(p.relative_to(service.ROOT)):service.digest(p.read_bytes()) for p in (service.ROOT/'scripts').glob('*')
            if p.suffix in ('.py','.st','.cs') and p.name.startswith(('bd','AscetStructure'))}}
    def save():(a.output/'result.json').write_text(json.dumps(result,indent=2),encoding='utf-8')
    try:
        with service.live_lock(),NativeStructureAdapter(raw['component']) as adapter:
            before=adapter.observe(domain,[]);public=adapter.observe_public(domain);result['public_before']=public;save()
            arguments=[[],'literal','91.0',500,500,'']
            for trial in range(3):
                row={'trial':trial,'passed':False};result['trials'].append(row)
                try:
                    for index in range(129):
                        token='edit_'+fingerprint({'domain':domain,'trial':trial,'slot':index})
                        try:observed=adapter.prepare(domain,token,'create_block',arguments)
                        except RuntimeError as error:
                            assert 'Recovery capacity reached' in str(error),str(error)
                            row['capacity_error']=str(error);break
                        result['prepared_outstanding'].append(token);save()
                        assert observed==before
                    else:raise AssertionError('Capacity limit was not enforced')
                    assert 0<len(result['prepared_outstanding'])<=128
                    row['available_slots']=len(result['prepared_outstanding'])
                    first=result['prepared_outstanding'][0]
                    assert adapter.recovery_status(domain,first)['state']=='prepared','Prepared records must not be evicted'
                    assert adapter.validate(domain,'create_block',arguments)==before,'Preview must not allocate a slot'
                    assert adapter.observe_public(domain)==public
                finally:
                    while result['prepared_outstanding']:
                        adapter.discard_prepared(domain,result['prepared_outstanding'][-1])
                        result['prepared_outstanding'].pop();save()
                # Real prepare followed by injected Python disk failures must
                # free that prepared record without calling any setter.
                for phase in ('prepared','started'):
                    request={'domain':domain,'request_id':f'disk-{trial}-{phase}','component':raw['component'],'diagram':'Main',
                        'operation':'create_block','arguments':arguments,'expect':fingerprint(before)}
                    log=StructureJournal(a.output/'journal');append=log._append
                    def fault(path,events,kind,payload):
                        if kind==phase:raise OSError('EVAL prewrite disk full')
                        return append(path,events,kind,payload)
                    with patch.object(log,'_append',fault):rejected=log.execute(request,adapter,nullcontext)
                    assert rejected['status']=='rejected' and rejected['setter_called'] is False
                    assert rejected['prepared_recovery_discarded']['released']
                    try:adapter.recovery_status(domain,rejected['change_id'])
                    except RuntimeError as error:assert 'Recovery token unavailable' in str(error)
                    else:raise AssertionError('Aborted preparation still occupies native capacity')
                    assert adapter.observe(domain,[])==before and adapter.observe_public(domain)==public
                    row[phase+'_failure']=rejected;save()
                # Applied objects are never discardable as preparations.
                request={'domain':domain,'request_id':f'apply-{trial}','component':raw['component'],'diagram':'Main',
                    'operation':'create_block','arguments':arguments,'expect':fingerprint(before)}
                log=StructureJournal(a.output/'journal');created=log.execute(request,adapter,nullcontext)
                result['applied_outstanding']=[created['change_id']];save()
                assert created['status']=='applied_observed'
                for method in (adapter.discard_prepared,adapter.release):
                    try:method(domain,created['change_id'])
                    except RuntimeError as error:assert 'Recovery state differs' in str(error)
                    else:raise AssertionError('Applied recovery must remain retained')
                restored=log.revert(created['change_id'],f'undo-{trial}',adapter,nullcontext)
                assert restored['status']=='verified_local'
                count=len(adapter.commands)
                assert log.revert(created['change_id'],f'undo-{trial}',adapter,nullcontext)==restored
                assert len(adapter.commands)==count,'Repeat inverse must not contact native'
                assert adapter.observe(domain,[])==before and adapter.observe_public(domain)==public
                result['applied_outstanding']=[];row['passed']=True;save()
            result['passed']=True
    except Exception as error:result['error']=repr(error);result['traceback']=traceback.format_exc()
    save();print(json.dumps({k:result.get(k) for k in ('passed','error','prepared_outstanding','applied_outstanding')}))
    return 0 if result['passed'] else 1


if __name__=='__main__':raise SystemExit(main())
