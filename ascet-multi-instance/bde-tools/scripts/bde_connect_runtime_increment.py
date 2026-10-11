"""Freeze and independently recompute the completed isolated no-Store lifecycle."""
import argparse
import ast
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess
import sys

import bd_service as service
from bde_connect_runtime_confirm import verify


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    root = service.ROOT / 'analysis/bde-experiments/2026-10-11'
    output = args.output.resolve()
    if not output.is_relative_to(root) or output.exists():
        raise ValueError('New owned evidence output required')
    output.mkdir(parents=True)
    report = dict(profile='bde_connect_runtime_checkpoint_v1', passed=False,
        native_calls_by_report=0, full_delivery=False, complete_message_lifecycle_cases_passed=0,
        required_cases_upgraded=False, production_connection_inverse_available=False,
        model_cache_restoration_verified=False, business_restoration_hold_cleared=False,
        ascet_started_or_restarted=False)
    try:
        def read(path):
            return json.loads(path.read_text(encoding='utf-8'))
        live = root / 'bde-connect-runtime-lifecycle-02'
        fresh = root / 'bde-connect-runtime-fresh-01'
        confirmation = root / 'bde-connect-runtime-confirm-02'
        original = read(live / 'result.json')
        summary = verify(original, read(live/'prepared.json'), read(live/'dispatch.json'),
            read(live/'actual.json'), read(live/'inspected.json'), read(live/'before.json'),
            read(live/'after.json'), read(fresh/'result.json'))
        confirmed = read(confirmation/'result.json')
        verified = read(confirmation/'verified-original-state.json')
        if (confirmed.get('passed') is not True
                or confirmed.get('pending_cleared_verified_original_state') is not True
                or any(confirmed.get(k) != v or verified.get(k) != v for k, v in summary.items())):
            raise ValueError('Original durable independent confirmation required')
        folders = (live, fresh, confirmation, root/'bde-connect-runtime-read-01',
            root/'bde-connect-runtime-lifecycle-01', root/'bde-connect-runtime-confirm-01')
        hashes = {}; archived = 0
        for folder in folders:
            doc = read(folder/'result.json')
            for relative, sha in doc.get('source_manifest', {}).items():
                path = folder/'source'/relative
                if not path.is_file():
                    path = folder/relative
                if hashlib.sha256(path.read_bytes()).hexdigest() != sha:
                    raise ValueError('Archived source drift: '+folder.name+'/'+relative)
                archived += 1
            for name in ('result.json','prepared.json','dispatch.json','actual.json','inspected.json',
                    'before.json','after.json','verified-original-state.json'):
                path = folder/name
                if path.is_file():
                    hashes[folder.name+'/'+name] = hashlib.sha256(path.read_bytes()).hexdigest()
        modules = ('test_bde_connect_runtime_study', 'test_bde_connect_runtime_confirm')
        files = {name+'.py' for name in modules} | {'bde_connect_runtime_increment.py',
            'bde_connect_runtime_lifecycle.st', 'bde_native_field_patch.st',
            'bde_native_collection_merge.st', 'AscetStructureSession.cs',
            'AscetStructureRead.cs', 'AscetConnectCompileProbe.cs', 'bde_connect_compile_probe.py'}
        queue = list(files); seen = set()
        while queue:
            name = queue.pop()
            if name in seen or not name.endswith('.py'):
                continue
            seen.add(name)
            for node in ast.walk(ast.parse((service.ROOT/'scripts'/name).read_text(encoding='utf-8-sig'))):
                imports = [a.name for a in node.names] if isinstance(node, ast.Import) else (
                    [node.module] if isinstance(node, ast.ImportFrom) and node.module else [])
                for imported in imports:
                    candidate = imported.split('.')[0]+'.py'
                    if (service.ROOT/'scripts'/candidate).is_file() and candidate not in files:
                        files.add(candidate); queue.append(candidate)
        sources = {}
        for name in sorted(files):
            path = service.ROOT/'scripts'/name
            destination = output/'source/scripts'/name
            destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(path, destination)
            sources['scripts/'+name] = hashlib.sha256(path.read_bytes()).hexdigest()
        tests = subprocess.run([sys.executable, '-X','utf8','-m','unittest','-v',*modules],
            cwd=output/'source/scripts', capture_output=True, timeout=60)
        log = tests.stdout+tests.stderr; (output/'controls.log').write_bytes(log)
        count = re.search(rb'Ran (\d+) tests', log)
        if tests.returncode or count is None:
            raise ValueError('Frozen runtime controls failed')
        for relative, sha in sources.items():
            if hashlib.sha256((output/'source'/relative).read_bytes()).hexdigest() != sha:
                raise ValueError('Frozen source drift')
        report.update(summary, passed=True, source_manifest=sources, frozen_source_files=len(sources),
            local_evidence_hashes=hashes, archived_source_hashes_checked=archived,
            pending_cleared_verified_original_state=True,
            offline_controls=dict(tests=int(count[1]),exit_code=0,modules=list(modules),
                executed_from_frozen_sources=True,online_acceptance=False),
            failures_preserved=[dict(folder='bde-connect-runtime-lifecycle-01',
                reason='Compared transient API wrapper rather than specification identity; no write dispatch'),
                dict(folder='bde-connect-runtime-confirm-01',
                reason='Command-name strings treated as dictionaries; no native call or pending clear')],
            native_wire={folder.name:read(folder/'result.json')['wire'] for folder in (live, fresh)},
            store_called=False, commit_called=False, persistent_writer_calls=0)
    except Exception as error:
        report['error'] = str(error)
    service.write_once(output/'result.json', report)
    print(json.dumps({k:report.get(k) for k in ('passed','error','summary','offline_controls')},ensure_ascii=False))
    return 0 if report['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
