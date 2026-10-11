"""Read-only audit of retained failed-edit files and targeted backup metadata."""
import argparse
from datetime import datetime, timezone
import json
from pathlib import Path
import re
import subprocess

import bd_service as service
from bd_windows_endpoint import endpoint_process


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--reference', type=Path, required=True)
    parser.add_argument('--original-store', type=Path, required=True)
    parser.add_argument('--change-id', required=True)
    parser.add_argument('--backup-root', type=Path, action='append', default=[])
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    if not re.fullmatch(r'edit_[0-9a-f]{64}', args.change_id):
        raise ValueError('Exact Class change ID required')
    original = (args.original_store / 'class-edits' / args.change_id).resolve()
    if args.output.resolve().is_relative_to(original):
        raise ValueError('Audit output cannot modify the retained original')
    reference = json.loads(args.reference.read_text(encoding='utf-8'))
    expected = reference['original_hashes']
    hashes = {str(path.relative_to(original)): service.digest(path.read_bytes())
        for path in original.rglob('*') if path.is_file()}
    hold_hashes = {path: service.digest(Path(path).read_bytes()) for path in reference['hold_hashes']}
    candidates = []
    errors = []
    for root in args.backup_root:
        root = root.resolve()
        if not root.is_dir():
            errors.append({'root': str(root), 'error': 'Directory missing'})
            continue
        for name in ('sobjects.dat', 'AEB_1.exp'):
            for path in root.rglob(name):
                try:
                    stat = path.stat()
                    candidates.append({'path': str(path), 'length': stat.st_size,
                        'last_write_utc': datetime.fromtimestamp(stat.st_mtime, timezone.utc).isoformat(),
                        'logical_database_or_historical_object_validated': False,
                        'restoration_material_established': False})
                except OSError as error:
                    errors.append({'path': str(path), 'error': str(error)})
    shadow = subprocess.run(['powershell.exe', '-NoProfile', '-NonInteractive', '-Command',
        "$ErrorActionPreference = 'Stop'; Get-CimInstance Win32_ShadowCopy | Select-Object ID,InstallDate,VolumeName,DeviceObject | ConvertTo-Json"],
        capture_output=True, timeout=30)
    result = {'passed': hashes == expected and hold_hashes == reference['hold_hashes'],
        'restored': False, 'model_setters_called': 0, 'cebra_connections': 0,
        'original_record_file_count': len(hashes), 'original_files_unchanged': hashes == expected,
        'hold_unchanged': hold_hashes == reference['hold_hashes'], 'hold_hashes': hold_hashes,
        'reference_audit': str(args.reference.resolve()),
        'reference_audit_sha256': service.digest(args.reference.read_bytes()),
        'listener_port': 32503, 'listener_pid': endpoint_process(32503),
        'backup_scan_roots': [str(path.resolve()) for path in args.backup_root],
        'backup_candidates': candidates, 'scan_errors': errors,
        'backup_scope': 'Targeted sobjects.dat and AEB_1.exp metadata only; no disk-record decoding, imports, other database access or exhaustive backup search',
        'shadowcopy_query': {'exit_code': shadow.returncode,
            'stdout': shadow.stdout.decode('utf-8', errors='replace')[-4000:],
            'stderr': shadow.stderr.decode('utf-8', errors='replace')[-1500:],
            'unavailable_is_not_proof_of_absence': True},
        'restoration_hold_cleared': False, 'old_epoch_or_wal_rebound': False,
        'source_sha256': service.digest(Path(__file__).read_bytes())}
    args.output.mkdir(parents=True, exist_ok=False)
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({key: result[key] for key in ('passed', 'restored', 'original_record_file_count',
        'original_files_unchanged', 'hold_unchanged')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
