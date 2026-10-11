"""One exact experimental unstored failure cleanup, never generic unknown replay."""
import json
import os
import sys
from pathlib import Path

import bd_service as service
import bd_instance_pending as pending
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_public_oracle import public_projection
from collections import Counter


def build():
    binary = service.ROOT / 'analysis/live-api/AscetHierarchyPortAbort.exe'
    resources = ('bde_structure_read.st', 'bde_structure_edit.st', 'bde_session_guard.st',
                 'bde_recovery_status.st', 'bde_recovery_release.st', 'bde_hierarchy_port_abort.st')
    service.run_process([os.environ.get('WINDIR', 'C:/Windows') + '/Microsoft.NET/Framework/v4.0.30319/csc.exe',
        '/nologo', '/platform:x86', '/define:BDE_PORT_ABORT_EVAL', '/main:AscetStructureSession',
        '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', '/r:System.Web.Extensions.dll', f'/out:{binary}',
        *[f'/resource:{service.ROOT / "scripts" / name},{name}' for name in resources],
        *[str(service.ROOT / 'scripts' / name) for name in ('AscetStructureRead.cs', 'AscetStructureSession.cs',
          'AscetStructureExperiment.cs')]], 30, build_step=True)
    return binary


class Adapter(NativeStructureAdapter):
    build = staticmethod(build)


def main():
    folder = service.ROOT / 'analysis/bde-experiments/2026-10-02/bde-hierarchy-ports-02'
    output = folder / 'unstored-abort.json'
    assert not output.exists()
    original = json.loads((folder / 'result.json').read_text())
    token, = original['outstanding']
    log = StructureJournal(folder / 'store/edits')
    request = log.read(token)[0]['payload']
    evidence = {'passed': False, 'original_failure_preserved': True, 'token': token,
                'scope': 'exact failed unpublished graph; no StoreToCache, no write replay'}
    with service.live_lock():
        if '--verify-only' in sys.argv:
            evidence['private_cleanup'] = 'completed on the prior cleanup invocation; this invocation only verifies published state'
        else:
            with Adapter(request['component']) as adapter:
                adapter._ensure_open(request['domain'])
                evidence['private_cleanup'] = adapter._exchange({'cmd': 'port_abort', 'token': token})
        def canonical(value):
            rows = Counter(json.dumps({k: v for k, v in row.items() if row['kind'] != 'edge' or k != 'ref'}, sort_keys=True)
                           for row in value['entries'])
            return {k: v for k, v in value.items() if k not in ('generation', 'entries')}, rows
        observed = {}
        for scope, baseline in original['observations'][0]['native'].items():
            with NativeStructureAdapter(request['component'], scope) as adapter:
                value = adapter.observe(request['domain'], [])
            observed[scope] = value
            assert canonical(value) == canonical(baseline), scope
        with NativeStructureAdapter(request['component']) as adapter:
            adapter.observe(request['domain'], [])
            public = adapter._exchange({'cmd': 'observe_public_tree'})
            models = adapter.observe_models(request['domain'])
        baseline_public = original['observations'][0]['public']
        assert all(public_projection(public[s]) == public_projection(baseline_public[s]) for s in public)
        assert models == original['observations'][0]['models']
        evidence.update(passed=True, baseline_restored=True, outstanding=[], native=observed, public=public, models=models,
                        old_refs_expired=True)
        service.write_once(output, evidence)
        barrier = pending.pending_path(request['domain'])
        marker = json.loads(barrier.read_text())
        assert marker['native_token'] == token and marker['domain'] == request['domain'] and marker['command'] == 'apply'
        pending.confirmed(barrier)
    print(json.dumps({'passed': True, 'baseline_restored': True, 'quarantine_cleared': True}))


if __name__ == '__main__':
    main()
