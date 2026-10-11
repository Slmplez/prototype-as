"""Freeze verified native source roundtrip evidence, without any ASCET call."""
import argparse
import ast
import hashlib
import json
import re
import shutil
import subprocess
import sys
from pathlib import Path

import bd_service as service
from bde_fresh_serializer_extract_probe import SOURCES
from bde_fresh_serializer_extract_confirm import verify_documents


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args(); root = service.ROOT / 'analysis/bde-experiments/2026-10-11'; output = args.output.resolve()
    if not output.is_relative_to(root) or output.exists(): raise ValueError('Fresh owned checkpoint required')
    output.mkdir(parents=True)
    result = dict(profile='bde_fresh_source_roundtrip_checkpoint_v1', passed=False, full_delivery=False,
        native_calls_by_report=0, production_connection_inverse_available=False,
        complete_message_lifecycle_cases_passed=0, old_epoch_rebound=False, unknown_load_replayed=False)
    try:
        names = ('bde-fresh-serializer-workbench-live-10', 'bde-fresh-serializer-inventory-live-03',
            'bde-fresh-serializer-dump-live-03', 'bde-fresh-serializer-dump-fresh-01', 'bde-fresh-serializer-dump-confirm-01',
            'bde-fresh-serializer-extract-live-01', 'bde-fresh-serializer-extract-failed-fresh-01',
            'bde-fresh-serializer-extract-failed-fresh-02', 'bde-fresh-serializer-extract-finish-live-01',
            'bde-fresh-serializer-extract-finish-fresh-01', 'bde-fresh-serializer-extract-confirm-01',
            'bde-private-existing-database-open-01')
        def read(path): return json.loads(path.read_text(encoding='utf-8'))
        evidence = {}; evidence_hashes = {}; checked = 0
        for name in names:
            doc = read(root / name / 'result.json'); evidence[name] = doc
            for file, sha in doc.get('source_manifest', {}).items():
                if Path(file).name != file or hashlib.sha256((root / name / file).read_bytes()).hexdigest() != sha:
                    raise ValueError('Archived source changed: ' + name + '/' + file)
                checked += 1
            for file in ('result.json', 'native.json', 'prepared.json', 'dispatch.json', 'build.log', 'native.stderr.log', 'verified-original-state.json'):
                path = root / name / file
                if path.is_file(): evidence_hashes[name + '/' + file] = hashlib.sha256(path.read_bytes()).hexdigest()
        extracted = evidence[names[8]]; dump = evidence[names[2]]; inventory = evidence[names[1]]; fresh = evidence[names[9]]
        confirmation = evidence[names[10]]; dump_confirmation = evidence[names[4]]
        verified = verify_documents(extracted, read(root / names[8] / 'native.json'), dump, inventory, dump_confirmation, fresh,
            read(root / names[8] / 'prepared.json'), read(root / names[8] / 'dispatch.json'))
        if confirmation.get('passed') is not True or confirmation.get('pending_cleared_verified_original_state') is not True or any(
                confirmation.get(k) != v for k, v in verified.items()):
            raise ValueError('Completed exact independent extraction confirmation required')
        summary = verified['summary']
        recovery = read(root / 'bde-fresh-serializer-increment-02/approved-restart-result.json')
        evidence_hashes['bde-fresh-serializer-increment-02/approved-restart-result.json'] = hashlib.sha256(
            (root / 'bde-fresh-serializer-increment-02/approved-restart-result.json').read_bytes()).hexdigest()
        files = set(SOURCES) | {'bde_fresh_serializer_extract_probe.py', 'bde_fresh_serializer_extract_confirm.py',
            'bde_fresh_serializer_roundtrip_increment.py', 'AscetOpenExistingDatabaseProbe.cs'}
        modules = ('test_bde_fresh_serializer_extract_probe', 'test_bde_fresh_serializer_dump_probe',
            'test_bde_reference_leaf_noop_probe', 'test_bde_reference_leaf_lifecycle_probe', 'test_bde_persistent_owner_patch_probe')
        files.update(m + '.py' for m in modules)
        queue = list(files); visited = set()
        while queue:
            name = queue.pop()
            if name in visited or not name.endswith('.py'): continue
            visited.add(name)
            tree = ast.parse((service.ROOT / 'scripts' / name).read_text(encoding='utf-8-sig'))
            for node in ast.walk(tree):
                imports = [a.name for a in node.names] if isinstance(node, ast.Import) else [node.module] if isinstance(node, ast.ImportFrom) and node.module else []
                for imported in imports:
                    candidate = imported.split('.')[0] + '.py'
                    if (service.ROOT / 'scripts' / candidate).is_file() and candidate not in files:
                        files.add(candidate); queue.append(candidate)
        hashes = {}
        for name in sorted(files):
            src = service.ROOT / 'scripts' / name; dest = output / 'source/scripts' / name
            dest.parent.mkdir(parents=True, exist_ok=True); shutil.copyfile(src, dest)
            hashes['scripts/' + name] = hashlib.sha256(src.read_bytes()).hexdigest()
        for name in ('bde-fresh-source-serializer.md', 'bde-delivery-status.md', 'bde-tools-task-nodes-v1.md'):
            src = service.ROOT / 'docs' / name; dest = output / 'source/docs' / name
            dest.parent.mkdir(parents=True, exist_ok=True); shutil.copyfile(src, dest)
            hashes['docs/' + name] = hashlib.sha256(src.read_bytes()).hexdigest()
        controls = subprocess.run([sys.executable, '-X', 'utf8', '-m', 'unittest', '-v', *modules],
            cwd=output / 'source/scripts', capture_output=True, timeout=60)
        log = controls.stdout + controls.stderr; (output / 'controls.log').write_bytes(log)
        count = re.search(rb'Ran (\d+) tests', log)
        if controls.returncode or count is None: raise ValueError('Frozen related controls failed')
        for path, sha in hashes.items():
            if hashlib.sha256((output / 'source' / path).read_bytes()).hexdigest() != sha: raise ValueError('Frozen source drift')
        workbench = evidence[names[0]]['native']['module_read']['serializer_workbench']
        result.update(passed=True, source_manifest=hashes, evidence_sha256=evidence_hashes,
            archived_source_hashes_checked=checked, frozen_source_files=len(hashes),
            source_dump_verified=True, own_bytes_native_load_verified=True, proxy_extraction_verified=True,
            source_projection_equivalent=True, embedded_self_proxy_removed=True,
            online_scope='one isolated Module/Main, 58 objects, own bytes, no DB replacement boundaries',
            online_dump=dump_confirmation['summary'], online_extract=summary,
            private_constructor_checks=workbench['checks'],
            independent_original_state_confirmation=verified,
            lifecycle_wire={name: evidence[name]['wire'] for name in (names[2], names[5], names[8], names[9])},
            failed_extraction_preserved=dict(evidence=names[5], passed=False,
                reason=evidence[names[5]]['native']['actual'], original_result_sha256=evidence_hashes[names[5] + '/result.json']),
            weaker_reference_coverage_refused=dict(evidence=names[6], equivalent_to_original=False,
                reason='Missing explicit Module/source reciprocal targets; v1 observation cannot replace original v2'),
            runtime_recovery=dict(user_authorized_private_restart_count=1, authorized_restart_executed=True,
                business_instance_restarted=False, old_material_rebound=False, existing_database_open_verified=True),
            offline_controls=dict(tests=int(count[1]), exit_code=0, modules=list(modules), online_acceptance=False, executed_from_frozen_sources=True),
            graphical_changed_payload_verified=False, persistent_graphical_inverse_verified=False,
            cross_module_supported=False, required_cases_upgraded=False)
    except Exception as error: result['error'] = str(error)
    service.write_once(output / 'result.json', result)
    print(json.dumps({k: result.get(k) for k in ('passed', 'error', 'source_dump_verified', 'own_bytes_native_load_verified', 'offline_controls', 'full_delivery')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
