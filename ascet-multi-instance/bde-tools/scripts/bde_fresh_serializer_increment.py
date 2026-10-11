"""Freeze constructor/inventory success and failed dump dispatch; no native I/O."""
import argparse
import ast
import hashlib
import json
import os
from pathlib import Path
import re
import shutil
import subprocess
import sys

import bd_service as service
from bde_fresh_serializer_dump_probe import SOURCES, validate_inventory_proof


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args(); output = args.output.resolve()
    root = service.ROOT / 'analysis/bde-experiments/2026-10-11'
    if not output.is_relative_to(root) or output.exists(): raise ValueError('Fresh owned report output required')
    output.mkdir(parents=True)
    result = dict(profile='bde_fresh_source_serializer_checkpoint_v1', passed=False, full_delivery=False,
        native_calls_by_report=0, source_dump_verified=False, proxy_extraction_verified=False,
        production_connection_inverse_available=False, production_write_authorized=False,
        complete_message_lifecycle_cases_passed=0, ascet_started_or_restarted=False,
        old_epoch_rebound=False, unknown_writer_replayed=False)
    try:
        names = ('bde-fresh-serializer-workbench-live-08', 'bde-fresh-serializer-inventory-live-02',
            'bde-fresh-serializer-dump-live-02', 'bde-fresh-serializer-post-refusal-health-01')
        evidence = {}; checked = 0; evidence_hashes = {}
        for name in names:
            document = json.loads((root / name / 'result.json').read_text(encoding='utf-8')); evidence[name] = document
            for file, sha in document['source_manifest'].items():
                if Path(file).name != file or hashlib.sha256((root / name / file).read_bytes()).hexdigest() != sha:
                    raise ValueError('Archived experimental source changed: ' + name + '/' + file)
                checked += 1
            for file in ('result.json', 'native.json', 'prepared.json', 'dispatch.json', 'build.log', 'native.stderr.log'):
                path = root / name / file
                if path.exists(): evidence_hashes[name + '/' + file] = hashlib.sha256(path.read_bytes()).hexdigest()
        constructed = evidence[names[0]]; inventory = evidence[names[1]]; failed = evidence[names[2]]; health = evidence[names[3]]
        validate_inventory_proof(inventory)
        workbench = constructed['native']['module_read']['serializer_workbench']
        if (constructed.get('passed') is not True or constructed.get('fresh_serializer_configuration_equivalent') is not True
                or not all(v is True for v in workbench['checks'].values())
                or workbench['workbench_index'] != inventory['native']['module_read']['serializer_inventory']['workbench_index']):
            raise ValueError('Equivalent constructor and exact retained inventory required')
        if (failed.get('passed') is not False or failed.get('bridge_compile_passed') is not True
                or failed.get('parent_validated_original_before') or failed.get('pending_record')
                or (root / names[2] / 'prepared.json').exists() or (root / names[2] / 'dispatch.json').exists()
                or (root / names[2] / 'native.json').exists()):
            raise ValueError('Preserved pre-readiness failure without parent dispatch required')
        if health.get('passed') is not False or health['wire']['response']['bytes'] != 16:
            raise ValueError('Preserved rejected-handle health result required')
        files = set(SOURCES) | {'bde_fresh_serializer_dump_probe.py', 'bde_fresh_serializer_dump_confirm.py',
            'test_bde_fresh_serializer_dump_probe.py', 'bde_fresh_serializer_increment.py',
            'bde_connect_compile_probe.py', 'AscetConnectCompileProbe.cs', 'bde_fresh_serializer_inventory_reader.st',
            'test_bd_persistent_owner_records.py', 'test_bd_module_persistent_references.py',
            'bd_edit_journal.py', 'bd_service.py', 'bde_experiments.py'}
        modules = ('test_bde_fresh_serializer_dump_probe', 'test_bde_persistent_owner_patch_probe',
            'test_bde_persistent_owner_noop_probe', 'test_bde_persistent_owner_noop_confirm',
            'test_bd_persistent_owner_records', 'test_bd_persistent_owner_patch',
            'test_bde_reference_leaf_noop_probe', 'test_bde_reference_leaf_lifecycle_probe')
        files.update(module + '.py' for module in modules)
        # Freeze local Python imports transitively so controls run from the
        # archive, without quietly using changed main-workspace dependencies.
        queue = list(files); visited = set()
        while queue:
            name = queue.pop()
            if name in visited or not name.endswith('.py'): continue
            visited.add(name)
            tree = ast.parse((service.ROOT / 'scripts' / name).read_text(encoding='utf-8-sig'))
            for node in ast.walk(tree):
                imports = [alias.name for alias in node.names] if isinstance(node, ast.Import) else [node.module] if isinstance(node, ast.ImportFrom) and node.module else []
                for imported in imports:
                    candidate = imported.split('.')[0] + '.py'
                    if (service.ROOT / 'scripts' / candidate).is_file() and candidate not in files:
                        files.add(candidate); queue.append(candidate)
        hashes = {}
        for name in sorted(files):
            source = service.ROOT / 'scripts' / name; destination = output / 'source' / 'scripts' / name
            destination.parent.mkdir(parents=True, exist_ok=True); shutil.copyfile(source, destination)
            hashes['scripts/' + name] = hashlib.sha256(source.read_bytes()).hexdigest()
        doc = service.ROOT / 'docs/bde-fresh-source-serializer.md'
        (output / 'source/docs').mkdir(); shutil.copyfile(doc, output / 'source/docs' / doc.name)
        hashes['docs/' + doc.name] = hashlib.sha256(doc.read_bytes()).hexdigest()
        controls = subprocess.run([sys.executable, '-X', 'utf8', '-m', 'unittest', '-v', *modules],
            cwd=output / 'source/scripts', capture_output=True, timeout=60)
        log = controls.stdout + controls.stderr; (output / 'controls.log').write_bytes(log)
        count = re.search(rb'Ran (\d+) tests', log)
        if controls.returncode or count is None: raise ValueError('Related offline controls failed')
        compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
        dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
        inputs = [output / 'source/scripts' / name for name in files]
        build = subprocess.run([str(compiler), '/nologo', '/platform:x86', '/main:AscetFreshSerializerProbe',
            '/r:' + str(dll), '/r:System.Web.Extensions.dll', '/out:' + str(output / 'AscetFreshSerializerProbe.exe'),
            *['/resource:' + str(p) + ',' + p.name for p in inputs if p.suffix == '.st'],
            *[str(p) for p in inputs if p.name in ('AscetFreshSerializerProbe.cs', 'AscetStructureRead.cs')]],
            capture_output=True, timeout=30)
        (output / 'build.log').write_bytes(build.stdout + build.stderr)
        if build.returncode: raise ValueError('Current fixed bridge build failed')
        for relative, sha in hashes.items():
            if hashlib.sha256((output / 'source' / relative).read_bytes()).hexdigest() != sha:
                raise ValueError('Frozen source differs')
        result.update(passed=True, source_manifest=hashes, evidence_sha256=evidence_hashes,
            archived_source_hashes_checked=checked, frozen_source_files=len(hashes), bridge_compile_passed=True,
            corrected_smalltalk_runtime_compilation_verified=False,
            offline_controls=dict(tests=int(count[1]), exit_code=0, modules=list(modules), online_acceptance=False,
                executed_from_frozen_sources=True),
            online_constructor=dict(private_work_roles=4, checks=workbench['checks'], config_equivalent=True),
            online_inventory={k: inventory['native']['module_read']['serializer_inventory'][k] for k in
                ('objects', 'byte_values', 'class_counts', 'boundary_class_counts', 'blockers', 'serialization_called')},
            attempted_dump=dict(parent_authorized=False, dispatch_created=False, pending_created=False,
                native_terminal_reply_received=False, dump_success=False,
                failure='Uncaught pre-readiness ByteArray special-root guard; parent timed out; native child killed'),
            runtime_status=dict(private_ui_alive=True, new_api_handle_available=False, latest_null_handle_response_bytes=16,
                restart_executed=False, user_no_restart_constraint_preserved=True),
            remaining=['Recover private ToolAPI with explicit authorization', 'Fresh epoch-bound preparation/inventory and one-shot source dump',
                'Native proxy extraction and actual graphical payload', 'Combined owner/reference/model/source/cache journal-bound inverse',
                'Real connect/diff/BDE display/conflict/revert, then remaining T0-T9 required gates'])
    except Exception as error: result['error'] = str(error)
    service.write_once(output / 'result.json', result)
    print(json.dumps({k: result.get(k) for k in ('passed', 'error', 'offline_controls', 'frozen_source_files', 'full_delivery')}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
