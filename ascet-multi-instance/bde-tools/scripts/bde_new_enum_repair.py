"""Exact pilot enum cleanup; requires unchanged graph/declarations and only its folder reference."""
import argparse
import json
import os
from pathlib import Path
import traceback
import bd_service as service
import bd_instance_pending as pending
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
from bde_public_oracle import compare, public_projection


def build():
    root = service.ROOT
    binary = root / 'analysis/live-api/AscetNewEnumRepair.exe'
    sources = ['AscetStructureRead.cs', 'AscetStructureSession.cs', 'AscetStructureExperiment.cs']
    resources = ['bde_structure_read.st', 'bde_structure_edit.st', 'bde_session_guard.st', 'bde_recovery_status.st', 'bde_recovery_release.st']
    service.run_process([os.environ.get('WINDIR', 'C:/Windows') + '/Microsoft.NET/Framework/v4.0.30319/csc.exe',
        '/nologo', '/platform:x86', '/define:BDE_SOURCE_EVAL', '/main:AscetStructureSession',
        '/r:E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll', '/r:System.Web.Extensions.dll', f'/out:{binary}',
        *[f'/resource:{root / "scripts" / name},{name}' for name in resources],
        f'/resource:{root}/scripts/bde_new_enum_repair.st,bde_source_eval.st',
        *[str(root / 'scripts' / name) for name in sources]], 30, build_step=True)
    return binary


class Adapter(NativeStructureAdapter):
    build = staticmethod(build)


def graph_content(entries):
    # Connection-wrapper refs can change on a fresh API handle. Keep every other field
    # and multiplicity; the native repair also requires original children identity/order.
    return sorted(json.dumps({k: v for k, v in row.items()
                             if not (row['kind'] == 'edge' and k == 'ref')}, sort_keys=True)
                  for row in entries)


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--inspect-only', action='store_true')
    parser.add_argument('--verify-only', action='store_true')
    options = parser.parse_args()
    folder = service.ROOT / 'analysis/bde-experiments/2026-10-01/bde-new-enum-01'
    output = options.output
    if output.exists():
        raise RuntimeError('Existing cleanup evidence; do not replay')
    original = json.loads((folder / 'result.json').read_text(encoding='utf-8'))
    token = original['outstanding'][0]['change_id']
    request = StructureJournal(folder / 'store/edits').read(token)[0]['payload']
    domain = request['domain']
    baseline = json.loads((folder / 'store/snapshots' / (original['cases'][0]['before_snapshot'] + '.json')).read_text(encoding='utf-8'))['structure']
    marker = pending.pending_path(domain)
    saved_marker = json.loads(marker.read_text(encoding='utf-8'))
    assert saved_marker['native_token'] == token
    evidence = {'passed': False, 'quarantine_retained': True, 'change_id': token,
                'source_manifest': {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in (Path(__file__), Path(__file__).with_suffix('.st'))}}
    def save():
        output.write_text(json.dumps(evidence, indent=2), encoding='utf-8')
    save()
    try:
        with service.live_lock(), Adapter(request['component']) as adapter:
            before = adapter.observe(domain, [])
            models = sorted(adapter.observe_models(domain), key=lambda row: row['name'])
            public = adapter.observe_public(domain)
            evidence['before'] = {'native': before, 'models': models, 'public': public,
                'enum': adapter._exchange({'cmd': 'observe_enum', 'name': original['cases'][0]['enum_name']})}
            evidence['baseline'] = baseline
            evidence['before_checks'] = {
                'entries_equal': before['entries'] == baseline['entries'],
                'graph_content_equal': graph_content(before['entries']) == graph_content(baseline['entries']),
                'public_baseline_equal': public_projection(public) == original['cases'][0]['before']['public'],
                'models_equal': models == original['cases'][0]['before']['models'],
                'public': compare(before['entries'], public)}
            save()
            evidence['inspection'] = adapter._exchange({'cmd': 'source_eval', 'action': 'verify_removed_enum' if options.verify_only else 'inspect_failed_enum', 'token': token})
            save()
            if not options.inspect_only:
                assert evidence['before_checks']['graph_content_equal']
                assert evidence['before_checks']['public_baseline_equal']
                assert evidence['before_checks']['models_equal']
                assert evidence['before_checks']['public']['passed']
                if options.verify_only:
                    assert evidence['before']['enum'] == {'status': 'absent'}
                else:
                    evidence['cleanup'] = adapter._exchange({'cmd': 'source_eval', 'action': 'remove_failed_enum', 'token': token})
                after = adapter.observe(domain, [])
                after_public = adapter.observe_public(domain)
                evidence['after'] = {'native': after, 'public': after_public, 'models': sorted(adapter.observe_models(domain), key=lambda row: row['name'])}
                evidence['baseline_restored'] = graph_content(after['entries']) == graph_content(baseline['entries']) and evidence['after']['models'] == original['cases'][0]['before']['models'] and public_projection(after_public) == original['cases'][0]['before']['public']
                evidence['public'] = compare(after['entries'], after_public)
                evidence['enum_after'] = adapter._exchange({'cmd': 'observe_enum', 'name': original['cases'][0]['enum_name']})
                evidence['passed'] = evidence['baseline_restored'] and evidence['public']['passed'] and evidence['enum_after'] == {'status': 'absent'}
                save()
                if evidence['passed']:
                    assert json.loads(marker.read_text(encoding='utf-8')) == saved_marker
                    pending.confirmed(marker)
                    evidence['quarantine_retained'] = False
                    save()
    except Exception as error:
        evidence['error'] = repr(error)
        evidence['traceback'] = traceback.format_exc()
        save()
    print(json.dumps({k: evidence.get(k) for k in ('passed', 'quarantine_retained', 'before_checks', 'inspection', 'error')}))
