"""Create isolated tables through Doge, audit raw config slots, restore all creations."""
import argparse
import json
import os
from pathlib import Path
import traceback
import bd_service as service
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bde_tool_client import ToolClient


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--output', type=Path, required=True)
    a = p.parse_args()
    a.output.mkdir(parents=True, exist_ok=False)
    service.STORE = a.output / 'store'
    component = 'BDE_Tool_Experiments\\Trial_data_20260930_012339'
    session = str(a.output.resolve())
    files = [Path(__file__), service.ROOT/'scripts/bde_table_config_audit.st', service.ROOT/'scripts/AscetStructureRead.cs']
    result = {'passed': False, 'calls': [], 'cases': [], 'outstanding': [],
              'scope': 'raw table config slot audit only; no production table edits',
              'source_manifest': {str(f.relative_to(service.ROOT)): service.digest(f.read_bytes()) for f in files}}
    def save():
        (a.output/'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    def record(call):
        result['calls'].append(call)
        save()
    client = ToolClient(a.output, session, record)
    def inverse(key):
        _, receipt = client.value('bd_revert', {'change_id': result['outstanding'][-1], 'request_id': key})
        assert receipt['status'] == 'verified_local'
        result['outstanding'].pop()
        save()
    try:
        compile_bridge()
        binary = service.ROOT/'analysis/live-api/AscetTableAudit.exe'
        compiler = Path(os.environ.get('WINDIR','C:/Windows'))/'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        dll = Path(os.environ.get('ASCET_BD_DLL','E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
        service.run_process([str(compiler), '/nologo', '/platform:x86', '/define:BDE_SOURCE_AUDIT',
            f'/r:{dll}', '/r:System.Web.Extensions.dll', f'/out:{binary}',
            f'/resource:{files[1]},bde_structure_read.st', str(files[2])], 30, build_step=True)
        head, _, error = client.call('bd_read', {'component': component, 'view': 'structure'})
        assert not error
        baseline = service.load_record(head['snapshot'], 's_', 'snapshots')
        domain = {'session': session, 'database': baseline['database'], 'oid': baseline['oid'], 'process_epoch': baseline['ascet_process_epoch']}
        def observe():
            with service.live_lock(), NativeStructureAdapter(component) as adapter:
                return adapter.observe(domain, []), adapter.observe_public(domain), adapter.observe_models(domain)
        original = observe()
        for kind in ('oned_table', 'twod_table', 'oned_table_fixed', 'twod_table_fixed'):
            name = 'EvalTableAudit'
            _, body, error = client.call('bd_edit', {'snapshot': head['snapshot'], 'request_id': kind+'-create',
                'operations': [{'op': 'create_block', 'kind': kind, 'name': name, 'position': [2200,1800]}]})
            receipt = json.loads(body)
            if receipt.get('status') in ('applied_observed', 'postcondition_mismatch', 'outcome_unknown'):
                result['outstanding'].append(receipt['change_id'])
                save()
            assert not error and receipt['status'] == 'applied_observed', body
            path = (a.output/(kind+'.json')).resolve()
            with service.live_lock():
                service.run_process([str(binary), component, 'Main', str(path), name], 30)
            raw = json.loads(path.read_text(encoding='utf-8'))
            assert raw['status'] == 'ok' and raw['dirty_before'] == raw['dirty_after'] == 0
            result['cases'].append({'kind': kind, 'audit': raw['structure']})
            save()
            inverse(kind+'-inverse')
            assert observe() == original
            head, _, error = client.call('bd_read', {'component': component, 'view': 'structure'})
            assert not error
            print(json.dumps({'kind': kind, 'passed': True}), flush=True)
        result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
        save()
        while result['outstanding']:
            try:
                inverse('cleanup-'+str(len(result['outstanding'])))
            except Exception as error:
                result['cleanup_error'] = str(error)
                break
    save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','outstanding','cleanup_error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
