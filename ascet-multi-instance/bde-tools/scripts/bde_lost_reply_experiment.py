"""Live isolated fault: consume a real native completion then lose its reply.

No setters are mocked. Only the transport receipt is deliberately discarded.
Native partial execution/host kill/cancellation remain separate untested cases.
"""
import argparse
import json
import os
from pathlib import Path
from unittest.mock import patch
import bd_service as service
import bd_structural_tools
from bd_native_structure import NativeStructureAdapter


class LoseReply(NativeStructureAdapter):
    lose_command = None
    native_mutations = []

    def _exchange(self, request):
        result = super()._exchange(request)
        if request['cmd'] in ('apply','revert'):
            self.native_mutations.append(request['cmd'])
        if request['cmd'] == self.lose_command:
            raise ConnectionError('EVAL: native completed; transport reply deliberately lost')
        return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    if not args.component.startswith('BDE_Tool_Experiments\\Trial_'):
        raise ValueError('Sandbox only')
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.output/'store'
    session = str(args.output.resolve())
    os.environ['ASCET_BD_STRUCTURAL_WRITES'] = '1'
    evidence = {'passed':False,'calls':[],'trials':[],'outstanding':[]}
    def save():
        (args.output/'result.json').write_text(json.dumps(evidence,indent=2),encoding='utf-8')
    def call(tool, payload, expected_error=False):
        response = service.handle(tool,payload,session)
        evidence['calls'].append({'tool':tool,'args':payload,'response':response});save()
        if bool(response.get('is_error')) != expected_error:
            raise RuntimeError('Unexpected tool result: '+response['content'])
        header, content = response['content'].split('\n\n',1)
        meta = json.loads(header)
        while meta['page']['has_more']:
            page = service.handle('bd_read',{'cursor':meta['page']['next_cursor']},session)
            h,b = page['content'].split('\n\n',1);content += b;meta=json.loads(h)
        return json.loads(header), content
    def receipt(tool, payload, expected_error=False):
        return json.loads(call(tool,payload,expected_error)[1])
    try:
        header,_ = call('bd_read',{'component':args.component,'view':'structure'})
        snapshot = header['snapshot']; original=service.load_record(snapshot,'s_','snapshots')
        domain={'session':session,'database':original['database'],'oid':original['oid'],'process_epoch':original['ascet_process_epoch']}
        with service.live_lock(), NativeStructureAdapter(args.component) as adapter:
            evidence['public_before'] = adapter.observe_public(domain)
        for trial in range(3):
            op={'snapshot':snapshot,'request_id':'lost_'+str(trial),'operations':[{'op':'create_block','kind':'literal','name':'31.0','position':[400,400]}]}
            LoseReply.lose_command = 'apply'
            with patch.object(bd_structural_tools,'NativeStructureAdapter',LoseReply):
                unknown=receipt('bd_edit',op,True)
                assert unknown['status']=='outcome_unknown'
                evidence['outstanding']=[unknown['change_id']];save()
                replay=receipt('bd_edit',op,True)
                assert replay==unknown
            recovered=receipt('bd_inspect',{'query':'recovery','change_id':unknown['change_id'],'reconcile':True})
            assert recovered['reconciled'] and recovered['receipt']['status']=='applied_observed'
            undo={'change_id':unknown['change_id'],'request_id':'lost_inverse_'+str(trial)}
            LoseReply.lose_command = 'revert'
            with patch.object(bd_structural_tools,'NativeStructureAdapter',LoseReply):
                inverse=receipt('bd_revert',undo,True)
                assert inverse['status']=='outcome_unknown'
            restored=receipt('bd_inspect',{'query':'recovery','change_id':inverse['change_id'],'reconcile':True})
            assert restored['reconciled'] and restored['receipt']['status']=='verified_local'
            snapshot=restored['receipt']['after_snapshot']
            with service.live_lock(), NativeStructureAdapter(args.component) as adapter:
                assert adapter.observe_public(domain)==evidence['public_before']
                assert adapter.observe(domain,[])==original['structure']
                adapter.release(domain,unknown['change_id'])
            evidence['outstanding']=[]
            evidence['trials'].append({'trial':trial,'passed':True,'apply':unknown['change_id'],'inverse':inverse['change_id']});save()
        evidence['native_mutations']=LoseReply.native_mutations
        assert LoseReply.native_mutations==['apply','revert']*3
        evidence['passed']=True
    except Exception as error:
        evidence['error']=repr(error)
    save()
    print(json.dumps({k:evidence.get(k) for k in ('passed','error','outstanding','native_mutations')}))
    return 0 if evidence['passed'] else 1


if __name__=='__main__':
    raise SystemExit(main())
