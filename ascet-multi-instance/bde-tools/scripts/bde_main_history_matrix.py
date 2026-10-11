"""Three structures x three formal literal histories with retained raw evidence.

This validates one operation's current-epoch lifecycle; no UI, other operation,
persisted source or complete required-case verdict is granted by this matrix.
"""
import argparse
import json
import os
from pathlib import Path
import subprocess
import sys
import traceback

import bd_service as service
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest

STRUCTURES = ('literal_fanout', 'operator_chain', 'operator_fanout')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--preflight', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    output = args.output.resolve()
    preflight = args.preflight.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not output.is_relative_to(owned) or not preflight.is_relative_to(owned) or output.exists():
        raise ValueError('Fresh owned matrix output and exact preflight required')
    prior = json.loads((preflight / 'result.json').read_text(encoding='utf-8'))
    if prior.get('passed') is not True or len(prior.get('rounds', [])) != 9:
        raise ValueError('Three-structure/three-round complete preflight required')
    manifest, _, epoch = live_manifest(Path(prior['manifest']))
    if epoch != prior['process_epoch']:
        raise ValueError('Preflight runtime epoch expired')
    if os.environ.get('ASCET_BD_OPERATION_EXECUTOR') != 'staged_v1':
        raise ValueError('Explicit staged_v1 fixed executor required')
    output.mkdir()
    result = {'passed': False, 'complete_case_pass': False, 'operation': 'set_literal',
        'executor_profile': 'staged_v1', 'structures': list(STRUCTURES), 'repeats_per_structure': 3,
        'manifest': prior['manifest'], 'process_epoch': epoch, 'source_manifest': source_manifest(),
        'scope': 'Nine actual formal literal histories; strict current-epoch baseline restoration only',
        'cases': [], 'model_retry_count': 0, 'restored': False,
        'not_verified': ['three-way independent-change conflicts', 'other field/layout/wire/create/delete operations',
            'all native-applicable families/owners', 'native visual/Undo lifecycle', 'persistent source fidelity across restart',
            'real agent/AEB_Core/original restoration/package', 'complete required-case acceptance']}
    record = output / 'result.json'

    def save():
        record.write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')

    save()
    try:
        for structure in STRUCTURES:
            for index in range(3):
                case = output / (structure + '-' + str(index))
                result['stage'] = case.name
                save()
                argv = [sys.executable, '-X', 'utf8', str(service.ROOT / 'scripts/bde_main_edit_workflow.py'),
                    '--preflight', str(preflight), '--output', str(case), '--fixture-structure', structure,
                    '--verify-managed-history', '--verify-retention']
                process = subprocess.Popen(argv, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                    text=True, encoding='utf-8', errors='replace')
                result['active_child_pid'] = process.pid
                save()
                stdout, stderr = process.communicate()
                result['active_child_pid'] = None
                (output / (case.name + '-process.json')).write_text(json.dumps({
                    'argv': argv, 'exit_code': process.returncode, 'stdout': stdout, 'stderr': stderr},
                    ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
                raw = json.loads((case / 'result.json').read_text(encoding='utf-8'))
                summary = {'structure': structure, 'repeat': index, 'result': str(case / 'result.json'),
                    'exit_code': process.returncode, 'passed': raw.get('passed') is True,
                    'restored': raw.get('restored') is True, 'tool_calls': raw.get('tool_calls'),
                    'history_verified': raw.get('managed_history_verified') is True,
                    'first_inverse_native_unchanged': raw.get('witness_after_first_inverse', {}).get('unchanged') is True,
                    'final_native_unchanged': raw.get('witness_final', {}).get('unchanged') is True,
                    'witness_released': raw.get('witness_retained') is False,
                    'compatible_source': raw.get('source_manifest') == result['source_manifest']}
                result['cases'].append(summary)
                save()
                print(json.dumps(summary, ensure_ascii=False), flush=True)
                if process.returncode != 0 or not all(summary[k] for k in
                    ('passed', 'restored', 'history_verified', 'first_inverse_native_unchanged',
                     'final_native_unchanged', 'witness_released', 'compatible_source')):
                    raise ValueError('Actual matrix case failed; preserve unknown/witness; no automatic replay')
        result['source_unchanged'] = result['source_manifest'] == source_manifest()
        if not result['source_unchanged']:
            raise ValueError('Matrix candidate source changed')
        result['restored'] = all(c['restored'] for c in result['cases'])
        result['passed'] = len(result['cases']) == 9 and result['restored']
    except Exception as error:
        result['error'] = str(error)
        result['traceback'] = traceback.format_exc()
    save()
    print(json.dumps({'passed': result['passed'], 'cases': len(result['cases']),
        'restored': result['restored'], 'complete_case_pass': False, 'error': result.get('error')}, ensure_ascii=False), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
