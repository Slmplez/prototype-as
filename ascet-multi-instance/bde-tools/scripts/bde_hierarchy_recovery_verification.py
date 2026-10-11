"""Verify the exact failed hierarchy inverse and release its retained metadata."""
import json
import os
from pathlib import Path
import bd_service as service
import bde_experiments as bench
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_public_oracle import compare, public_projection


def build():
    binary = service.ROOT / 'analysis/live-api/AscetHierarchyRecovery.exe'
    sources = ['AscetStructureRead.cs', 'AscetStructureSession.cs', 'AscetStructureExperiment.cs']
    resources = ['bde_structure_read.st', 'bde_structure_edit.st', 'bde_session_guard.st',
        'bde_recovery_status.st', 'bde_recovery_release.st', 'bde_hierarchy_recovery.st']
    service.run_process([os.environ.get('WINDIR', 'C:/Windows') + '/Microsoft.NET/Framework/v4.0.30319/csc.exe',
        '/nologo', '/platform:x86', '/define:BDE_HIERARCHY_RECOVERY_EVAL', '/main:AscetStructureSession',
        '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', '/r:System.Web.Extensions.dll', f'/out:{binary}',
        *[f'/resource:{service.ROOT / "scripts" / name},{name}' for name in resources],
        *[str(service.ROOT / 'scripts' / name) for name in sources]], 30, build_step=True)
    return binary


class Adapter(NativeStructureAdapter):
    build = staticmethod(build)


def main():
    folder = service.ROOT / 'analysis/bde-experiments/2026-10-01/bde-hierarchy-edit-01'
    output = folder / 'research-recovery-verification.json'
    if output.exists():
        raise RuntimeError('Inspect existing recovery evidence before another run')
    raw = json.loads((folder / 'result.json').read_text(encoding='utf-8'))
    token, = raw['outstanding']
    log = StructureJournal(folder / 'store/edits')
    request = log.read(token)[0]['payload']
    evidence = {'passed': False, 'original_token': token, 'historical_failure_preserved': True, 'model_setters_called': 0}
    evidence['source_manifest'] = {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in
        ('bde_structure_read.st', 'bde_hierarchy_recovery.st', 'bde_hierarchy_recovery_verification.py', 'AscetStructureSession.cs')}
    with service.live_lock(), bench.proxy() as wire:
        env = dict(os.environ, ASCET_BD_PROBE_PORT=str(wire['port']))
        with Adapter(request['component'], request['diagram'], environment=env) as adapter:
            native = adapter.recovery_status(request['domain'], token)
            assert native['state'] == 'restore_mismatch' and native['current'] == native['before']
    evidence['native_terminal_verified'] = native
    # Run full scopes sequentially on the one allowed live Cebra connection.
    with service.live_lock():
        for scope, baseline in raw['baseline'].items():
            with NativeStructureAdapter(request['component'], scope) as reader:
                state = reader.observe(request['domain'], [])
                assert state == baseline['structure'], scope
                evidence.setdefault('native_full', {})[scope] = state
        with Adapter(request['component'], request['diagram']) as adapter:
            adapter._ensure_open(request['domain'])
            tree = adapter._exchange({'cmd': 'observe_public_tree'})
            assert all(compare(evidence['native_full'][scope]['entries'], tree[scope])['passed'] for scope in tree)
            assert all(public_projection(tree[scope]) == public_projection(raw['public_baseline'][scope]) for scope in tree)
            evidence['public_tree'] = tree
            evidence['verified_recovery_metadata'] = adapter._exchange({'cmd': 'hierarchy_recovery', 'token': token})
            evidence['released'] = adapter.release(request['domain'], token)
    evidence['passed'] = True
    evidence['outstanding'] = []
    output.write_text(json.dumps(evidence, indent=2), encoding='utf-8')
    print(json.dumps({'passed': True, 'outstanding': [], 'model_setters_called': 0}))


if __name__ == '__main__':
    main()
