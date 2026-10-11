"""Compare retained/fresh native sequence layout after isolated resource creation."""
import argparse
import json
import os
from pathlib import Path
import traceback
import bd_service as service
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bde_public_oracle import compare
from bde_tool_client import ToolClient


def main():
    p = argparse.ArgumentParser(description=__doc__)
    p.add_argument('--output', type=Path, required=True)
    a = p.parse_args(); a.output.mkdir(parents=True, exist_ok=False)
    service.STORE = a.output / 'store'; session = str(a.output.resolve())
    component = 'BDE_Tool_Experiments\\Trial_Messages_20260930_132738'
    result = {'passed': False, 'calls': [], 'outstanding': []}
    def save():
        (a.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    def record(call):
        result['calls'].append(call); save()
    client = ToolClient(a.output, session, record)
    try:
        compile_bridge()
        source = service.ROOT / 'scripts/AscetStructureRead.cs'
        template = service.ROOT / 'scripts/bde_sequence_layout_audit.st'
        binary = service.ROOT / 'analysis/live-api/AscetSequenceLayoutAudit.exe'
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        service.run_process([str(compiler), '/nologo', '/platform:x86', '/define:BDE_SOURCE_AUDIT',
            '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', '/r:System.Web.Extensions.dll',
            f'/out:{binary}', f'/resource:{template},bde_structure_read.st', str(source)], 30, build_step=True)
        head, _, error = client.call('bd_read', {'component': component, 'view': 'structure'}); assert not error
        baseline = service.load_record(head['snapshot'], 's_', 'snapshots')
        domain = {'session': session, 'database': baseline['database'], 'oid': baseline['oid'], 'process_epoch': baseline['ascet_process_epoch']}
        with service.live_lock(), NativeStructureAdapter(component) as adapter:
            public_before = adapter.observe_public(domain)
            models_before = adapter.observe_models(domain)
        _, created = client.value('bd_edit', {'snapshot': head['snapshot'], 'request_id': 'create', 'operations': [
            {'op': 'create_block', 'kind': 'resource', 'name': 'EvalResourceLayout', 'position': [2200, 1800]}]})
        result['outstanding'].append(created['change_id']); result['created'] = created; save()
        with service.live_lock(), NativeStructureAdapter(component) as adapter:
            native = adapter.observe(domain, [])
        with service.live_lock():
            service.run_process([str(binary), component, 'Main', str(a.output / 'layout.json'), 'all'], 30)
            result['layout'] = json.loads((a.output / 'layout.json').read_text())
        with service.live_lock(), NativeStructureAdapter(component) as adapter:
            public = adapter.observe_public(domain)
            result['comparison'] = compare(native['entries'], public)
            result['native_after_public'] = adapter.observe(domain, [])
        save()
        result['passed'] = result['comparison']['passed']
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        while result['outstanding']:
            try:
                _, receipt = client.value('bd_revert', {'change_id': result['outstanding'][-1], 'request_id': 'cleanup'})
                assert receipt['status'] == 'verified_local'; result['outstanding'].pop()
            except Exception:
                result['cleanup_error'] = traceback.format_exc(); break
        if not result['outstanding'] and 'baseline' in locals():
            with service.live_lock(), NativeStructureAdapter(component) as adapter:
                result['restored'] = (adapter.observe(domain, []) == baseline['structure']
                    and adapter.observe_public(domain) == public_before
                    and adapter.observe_models(domain) == models_before)
            result['passed'] = result['passed'] and result['restored']
        save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'outstanding', 'error', 'cleanup_error', 'layout', 'comparison')}, indent=2))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
