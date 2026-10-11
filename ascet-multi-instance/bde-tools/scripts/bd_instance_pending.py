"""Cross-STORE quarantine for a possibly running native mutation.

Caller holds the host live lock. Mark before sending the mutating command and
remove only after a complete native reply or a typed no-setter conflict. Host
death leaves evidence and prevents another tool store from blindly writing.
"""
import json
import os
import ntpath
import re
from pathlib import Path
from bd_edit_journal import JournalError, fingerprint
import bd_service as service


def pending_path(domain):
    root = Path(os.environ.get('LOCALAPPDATA', Path.home()/'.local/share'))/'AscetBdeTools'/'pending'
    root.mkdir(parents=True, exist_ok=True)
    return root/(fingerprint({'process_epoch':domain['process_epoch']})+'.json')


def check(domain):
    check_restoration(domain)
    path = pending_path(domain)
    if path.exists():
        raise JournalError('INSTANCE_OUTCOME_UNKNOWN', 'A native mutation has no confirmed reply. Inspect ' + str(path) + '; do not repeat or start dependent edits.')


def begin(domain, command, token, *, context=None):
    check(domain)
    path = pending_path(domain)
    value = {'domain':domain,'command':command,'native_token':token,'automatic_retry':False}
    if context is not None:
        value['managed_context'] = context
    service.write_once(path, value)
    return path


def confirmed(path):
    path.unlink()


def restoration_directory(database):
    if not isinstance(database, str) or not database.strip():
        raise JournalError('IDENTITY_UNRESOLVED', 'A database identity is required for the restoration guard')
    root = Path(os.environ.get('LOCALAPPDATA', Path.home()/'.local/share'))/'AscetBdeTools'/'restoration-holds'
    return root/fingerprint({'database_path': ntpath.normcase(ntpath.normpath(database))})


def restoration_holds(database):
    directory = restoration_directory(database)
    values = []
    for path in sorted(directory.glob('*.json')):
        try:
            row = json.loads(path.read_text(encoding='utf-8'))
            checksum = row.pop('integrity_sha256')
            if (service.digest(row) != checksum or row['version'] != 1 or
                    path.name != row['source_change_id'] + '.json' or
                    restoration_directory(row['original_domain']['database']) != directory):
                raise ValueError('Restoration record integrity or database differs')
            values.append({**row, 'record': str(path)})
        except (OSError, ValueError, KeyError, TypeError) as error:
            raise JournalError('RESTORATION_HOLD_CORRUPT', 'Invalid retained restoration guard: ' + str(path)) from error
    return values


def check_restoration(domain):
    holds = restoration_holds(domain['database'])
    if holds:
        raise JournalError('DATABASE_RESTORATION_REQUIRED', 'An isolated experiment in this database is not restored. '
            'Retain its original journal and supply genuine recovery material before further writes. Record: ' + holds[0]['record'])


def retain_unrestored(domain, change_id, journal, terminal_checksum, before_hash, after_hash):
    if (not isinstance(change_id, str) or not re.fullmatch(r'edit_[0-9a-f]{64}', change_id) or
            any(not isinstance(value, str) or not re.fullmatch(r'[0-9a-f]{64}', value)
                for value in (terminal_checksum, before_hash, after_hash))):
        raise JournalError('INVALID_INPUT', 'Exact retained change and recovery evidence hashes required')
    path = restoration_directory(domain['database'])/(change_id + '.json')
    value = {'version': 1, 'original_domain': domain, 'source_change_id': change_id,
        'journal': str(Path(journal).resolve()), 'terminal_checksum': terminal_checksum,
        'original_before_sha256': before_hash, 'actual_after_sha256': after_hash,
        'reason': 'known isolated edit persists; original native inverse lost across restart',
        'clearing_policy': 'verified original-state recovery required; pending confirmation does not clear this record',
        'automatic_retry': False}
    existing = restoration_holds(domain['database'])
    match = next((row for row in existing if row['source_change_id'] == change_id), None)
    if match is not None:
        if {key: item for key, item in match.items() if key != 'record'} != value:
            raise JournalError('JOURNAL_CONFLICT', 'Retained restoration guard has different immutable evidence')
        return path
    path.parent.mkdir(parents=True, exist_ok=True)
    service.write_once(path, {**value, 'integrity_sha256': service.digest(value)})
    return path
