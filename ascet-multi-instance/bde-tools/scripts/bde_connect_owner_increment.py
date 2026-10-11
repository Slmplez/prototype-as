"""Freeze v4 original owner preparation and offline composite journal controls."""
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
from bd_connect_material import validate
from bd_persistent_owner_records import validate as validate_owners


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args(); root = service.ROOT / 'analysis/bde-experiments/2026-10-11'; output = args.output.resolve()
    if not output.is_relative_to(root) or output.exists(): raise ValueError('Fresh owned checkpoint output required')
    output.mkdir(parents=True)
    report = dict(profile='bde_connect_owner_journal_checkpoint_v1', passed=False, native_calls_by_report=0,
        full_delivery=False, complete_message_lifecycle_cases_passed=0, required_cases_upgraded=False,
        connection_edit_dispatched=False, model_cache_restoration_verified=False,
        production_connection_inverse_available=False, business_restoration_hold_cleared=False,
        ascet_started_or_restarted=False)
    try:
        def read(p): return json.loads(p.read_text(encoding='utf-8'))
        pre = root / 'bde-connect-owner-v4-preflight-02'
        original = root / 'bde-connect-owner-v4-read-01'
        guards = root / 'bde-connect-owner-v4-native-guard-01'
        p, first, last = (read(folder / 'result.json') for folder in (pre, original, guards))
        if any(doc.get('passed') is not True for doc in (p, first, last)):
            raise ValueError('Three successful independent live results required')
        if (p.get('full_owners_original_prepared_record_bound') is not True
                or p.get('apply_refused_before_native_dispatch') is not True
                or p.get('host_explicit_no_mutation_refusal') is not True
                or p.get('observed_original_unchanged') is not True
                or last.get('native_guard_controls_verified') is not True):
            raise ValueError('Original prepare, Python/host/native refusals and original bookends required')
        prepared = read(pre / 'prepared.json'); material = prepared['material']; domain = p['domain']
        validate(material, token=p['native_token'], component_oid=domain['oid'], source=p['source'], target=p['target'], phase='prepared')
        for doc in (first, last):
            native = doc['native']; module = native['module_read']
            if native['database'] != domain['database'] or native['process_epoch'] != domain['process_epoch']:
                raise ValueError('Live epoch or database changed across witnesses')
            samples = [validate_owners(v, component_oid=domain['oid']) for v in module['owner_observations']]
            if len(samples) != 2 or samples[0] != samples[1] or samples[0] != material['persistent_owner_records']['before']:
                raise ValueError('Complete independent raw owner/reference observations differ')
        if read(pre/'inspected.json') != material or read(pre/'before.json') != read(pre/'after.json'):
            raise ValueError('Original prepare inspection or complete public/native bookends changed')
        if material['profile'] != 'native_connect_material_v4': raise ValueError('Complete original v4 coverage required')
        evidence = {}; archived = 0
        for folder in (original, pre, guards, root/'bde-connect-owner-v4-preflight-01'):
            doc = read(folder/'result.json')
            for relative, sha in doc.get('source_manifest', {}).items():
                path = folder/'source'/relative
                if not path.is_file(): path = folder/relative
                if hashlib.sha256(path.read_bytes()).hexdigest() != sha:
                    raise ValueError('Archived evidence source drift: '+folder.name+'/'+relative)
                archived += 1
            for file in ('result.json', 'native.json', 'prepared.json', 'inspected.json', 'before.json', 'after.json', 'build.log'):
                path = folder/file
                if path.is_file(): evidence[folder.name+'/'+file] = hashlib.sha256(path.read_bytes()).hexdigest()
        modules = ('test_bd_connect_owner_inverse', 'test_bd_connect_owner_records', 'test_bd_connect_material',
            'test_bd_connect_journal', 'test_bd_persistent_owner_records', 'test_bd_module_persistent_references',
            'test_bd_structural_diff_route', 'test_bd_finite_reference_patch_journal', 'test_bd_persistent_owner_patch')
        files = set(m+'.py' for m in modules) | {'bde_connect_material.st', 'bde_persistent_owner_records.st',
            'bde_structure_edit.st', 'bde_structure_stage_guard.st', 'bde_connect_history.st',
            'bde_connect_preparation_guard_probe.st', 'bde_connect_compile_probe.py', 'bde_connect_reference_preflight.py',
            'AscetStructureSession.cs', 'AscetStructureRead.cs', 'AscetConnectCompileProbe.cs', 'bde_connect_owner_increment.py'}
        queue = list(files); seen = set()
        while queue:
            name = queue.pop()
            if name in seen or not name.endswith('.py'): continue
            seen.add(name); tree = ast.parse((service.ROOT/'scripts'/name).read_text(encoding='utf-8-sig'))
            for node in ast.walk(tree):
                imports = [a.name for a in node.names] if isinstance(node, ast.Import) else [node.module] if isinstance(node, ast.ImportFrom) and node.module else []
                for imported in imports:
                    item = imported.split('.')[0]+'.py'
                    if (service.ROOT/'scripts'/item).is_file() and item not in files: files.add(item); queue.append(item)
        hashes = {}
        for name in sorted(files):
            src = service.ROOT/'scripts'/name; dest = output/'source/scripts'/name; dest.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(src, dest); hashes['scripts/'+name] = hashlib.sha256(src.read_bytes()).hexdigest()
        tests = subprocess.run([sys.executable, '-X', 'utf8', '-m', 'unittest', '-v', *modules],
            cwd=output/'source/scripts', capture_output=True, timeout=60)
        log = tests.stdout+tests.stderr; (output/'controls.log').write_bytes(log); count = re.search(rb'Ran (\d+) tests', log)
        if tests.returncode or count is None: raise ValueError('Frozen composite journal controls failed')
        for relative, sha in hashes.items():
            if hashlib.sha256((output/'source'/relative).read_bytes()).hexdigest()!=sha: raise ValueError('Frozen source drift')
        report.update(passed=True, source_manifest=hashes, frozen_source_files=len(hashes),
            local_evidence_hashes=evidence, archived_source_hashes_checked=archived,
            original_prepare_and_full_raw_records_verified=True, independent_full_original_reads_equal=True,
            python_host_native_no_write_guards_verified=True, native_guard_invocations=3,
            prepared_owners=len(material['persistent_owner_records']['before']['owners']),
            owner_raw_bytes=sum(row['allocated_size'] for row in material['persistent_owner_records']['before']['owners']),
            source_profile='native_connect_material_v4',
            offline_controls=dict(tests=int(count[1]), exit_code=0, modules=list(modules),
                executed_from_frozen_sources=True, online_acceptance=False),
            native_wire={folder.name:doc['wire'] for folder,doc in ((original,first),(pre,p),(guards,last))},
            first_failed_preflight_preserved=True,
            failure_reason='Production bridge omitted the fixed owner-record embedded resource; fixed and revalidated',
            offline_composite_inverse_plan_verified=True, actual_connection_inverse_verified=False,
            external_reciprocal_write_supported=False)
        report['report_field_correction'] = 'The prior checkpoint called original-state read equality restoration; no connection edit or inverse was dispatched in either checkpoint.'
        report['test_count_correction'] = 'Earlier 118-test reports included 11 imported fixture test methods twice. This report avoids that import discovery and records the executed count; no online verdict changed.'
    except Exception as error: report['error'] = str(error)
    service.write_once(output/'result.json', report)
    print(json.dumps({k:report.get(k) for k in ('passed','error','offline_controls','full_delivery')}, ensure_ascii=False))
    return 0 if report['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
