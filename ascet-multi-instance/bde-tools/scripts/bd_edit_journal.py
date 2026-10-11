"""Durable local-edit executor, not yet enabled by bd_service.

An adapter must observe the declared local impact and finalize its own audited
operation. This module never imports a full-model reader. The caller supplies
the shared ASCET lock; a journal lock also protects replay/publication. Offline
adapter tests are not evidence that a native operation is safe to enable.
"""
from __future__ import annotations

from contextlib import contextmanager
from datetime import datetime, timezone
import hashlib
import json
import os
from pathlib import Path
import re
from typing import Protocol
import uuid


class JournalError(Exception):
    def __init__(self, code, message):
        self.code = code
        super().__init__(message)


class NativePreconditionConflict(Exception):
    """Trusted native reply confirms rejection before any model mutation."""


def canonical(value):
    return json.dumps(value, ensure_ascii=False, sort_keys=True, separators=(',', ':'), allow_nan=False)


def fingerprint(value):
    return hashlib.sha256(canonical(value).encode('utf-8')).hexdigest()


def clone(value):
    return json.loads(canonical(value))


@contextmanager
def file_lock(path):
    with path.open('a+b') as stream:
        stream.seek(0, 2)
        if stream.tell() == 0:
            stream.write(b'0')
            stream.flush()
        stream.seek(0)
        try:
            if os.name == 'nt':
                import msvcrt
                msvcrt.locking(stream.fileno(), msvcrt.LK_NBLCK, 1)
            else:
                import fcntl
                fcntl.flock(stream, fcntl.LOCK_EX | fcntl.LOCK_NB)
        except OSError as error:
            raise JournalError('EDIT_BUSY', 'Another edit owns this journal') from error
        try:
            yield
        finally:
            stream.seek(0)
            if os.name == 'nt':
                msvcrt.locking(stream.fileno(), msvcrt.LK_UNLCK, 1)
            else:
                fcntl.flock(stream, fcntl.LOCK_UN)


class LiteralAdapter(Protocol):
    def observe(self, domain: dict, target: str) -> dict:
        """Return exact domain, target, kind and fields literal/position/size.

        Must resolve current native identity and raise if ambiguous, stale,
        unavailable, or incomplete. No whole-model collection is allowed.
        """

    def apply_literal(self, domain: dict, target: str, value: str) -> dict:
        """Apply and finalize the audited operation; return native outcome.

        'completed' is true only when its required native stages completed.
        Return values alone are never verification of the resulting model.
        """


class EditJournal:
    def __init__(self, root):
        self.root = Path(root)
        self.root.mkdir(parents=True, exist_ok=True)

    def _path(self, change_id):
        if not isinstance(change_id, str) or not re.fullmatch(r'edit_[0-9a-f]{64}', change_id):
            raise JournalError('INVALID_REFERENCE', 'Invalid edit change ID')
        return self.root / change_id

    def _append(self, path, events, kind, payload):
        event = {'sequence': len(events), 'kind': kind, 'utc': datetime.now(timezone.utc).isoformat(),
                 'previous': events[-1]['checksum'] if events else None, 'payload': clone(payload)}
        event['checksum'] = fingerprint(event)
        temporary = path / ('.' + uuid.uuid4().hex + '.tmp')
        try:
            with temporary.open('x', encoding='utf-8', newline='\n') as stream:
                stream.write(canonical(event))
                stream.flush()
                os.fsync(stream.fileno())
            os.link(temporary, path / f'{len(events):06d}.json')
        finally:
            temporary.unlink(missing_ok=True)
        events.append(event)

    def read(self, change_id):
        path = self._path(change_id)
        if not path.is_dir():
            raise JournalError('CHANGE_NOT_FOUND', 'No such edit journal')
        events = []
        for source in sorted(path.glob('*.json')):
            try:
                event = json.loads(source.read_text(encoding='utf-8'))
                expected = dict(event)
                checksum = expected.pop('checksum')
                valid = (source.name == f'{len(events):06d}.json' and event['sequence'] == len(events)
                         and event['previous'] == (events[-1]['checksum'] if events else None)
                         and fingerprint(expected) == checksum)
            except (KeyError, ValueError, TypeError) as error:
                raise JournalError('JOURNAL_CORRUPT', 'Invalid edit journal record') from error
            if not valid:
                raise JournalError('JOURNAL_CORRUPT', 'Edit journal sequence or checksum mismatch')
            events.append(event)
        return events

    @staticmethod
    def receipt(change_id, events):
        result = next((e['payload'] for e in reversed(events) if e['kind'] == 'finished'), None)
        if result is not None:
            return {'change_id': change_id, 'record_type': 'edit', **result}
        started = any(e['kind'] == 'started' for e in events)
        return {'change_id': change_id, 'record_type': 'edit',
                'status': 'outcome_unknown' if started else 'interrupted_before_apply',
                'automatic_retry': False}

    def origin(self, change_id):
        """Resolve immutable ancestry offline, with bounded depth and domain checks."""
        seen, domains, chain = set(), [], []
        for _ in range(128):
            if change_id in seen:
                raise JournalError('JOURNAL_CORRUPT', 'Cyclic edit ancestry')
            seen.add(change_id)
            events = self.read(change_id)
            if not events or events[0]['kind'] != 'intent' or not isinstance(events[0]['payload'], dict):
                raise JournalError('JOURNAL_CORRUPT', 'Edit ancestry lacks an immutable intent')
            source = events[0]['payload']
            chain.append(change_id)
            if 'domain' in source:
                if not isinstance(source['domain'], dict) or domains and source['domain'] != domains[0]:
                    raise JournalError('IDENTITY_MISMATCH', 'Edit ancestry crosses identity domains')
                domains.append(source['domain'])
            if 'reverts' not in source:
                return {'change_id': change_id, 'intent': clone(source), 'chain': chain}
            change_id = source['reverts']
        raise JournalError('JOURNAL_CORRUPT', 'Edit ancestry exceeds 128 records')

    def diff(self, change_id):
        """Offline only: no adapter or native connection is needed."""
        events = self.read(change_id)
        result = self.receipt(change_id, events)
        source = self.origin(change_id)['intent']
        if 'operation' in source:
            result['component'] = source['component']
            result['diagram'] = source['diagram']
            result['differences'] = [{**row, 'qualified_ref': source['diagram']+'/'+row['ref']}
                for row in result.get('differences', [])]
        result['observations'] = [e['payload'] for e in events if e['kind'] == 'observed']
        return result

    @staticmethod
    def _validate(request):
        if set(request) - {'domain', 'request_id', 'target', 'expect', 'value', 'restore_fields', 'reverts'} or not {'domain', 'request_id', 'target', 'expect', 'value'} <= set(request):
            raise JournalError('INVALID_INPUT', 'Expected one literal request with domain, request_id, target, expect, value')
        domain = request['domain']
        if not isinstance(domain, dict) or set(domain) != {'session', 'database', 'oid', 'process_epoch'}:
            raise JournalError('INVALID_INPUT', 'Missing identity domain')
        if not all(isinstance(v, str) and v for v in domain.values()):
            raise JournalError('INVALID_INPUT', 'Identity domain values must be nonempty strings')
        if not isinstance(request['request_id'], str) or not 1 <= len(request['request_id']) <= 256:
            raise JournalError('INVALID_INPUT', 'Invalid request ID')
        if not isinstance(request['target'], str) or not re.fullmatch(r'Main/n[0-9]+', request['target']):
            raise JournalError('INVALID_INPUT', 'Only exact Main node references are implemented')
        if not isinstance(request['value'], str) or len(request['value']) > 4096:
            raise JournalError('INVALID_INPUT', 'Literal must be a bounded string')
        expect = request['expect']
        if not isinstance(expect, dict) or 'literal' not in expect or set(expect) - {'literal', 'position', 'size'}:
            raise JournalError('INVALID_INPUT', 'Expected literal and optional position/size preconditions')
        if not isinstance(expect['literal'], str):
            raise JournalError('INVALID_INPUT', 'Expected literal must be a string')
        if ('restore_fields' in request) != ('reverts' in request):
            raise JournalError('INVALID_INPUT', 'Inverse requires source change and restoration fields')
        if 'restore_fields' in request:
            restore = request['restore_fields']
            if not isinstance(restore, dict) or set(restore) != {'literal', 'position', 'size'} or restore['literal'] != request['value']:
                raise JournalError('INVALID_INPUT', 'Incomplete restoration postconditions')

    @staticmethod
    def _observation(value, domain, target):
        # Freeze the read so adapters cannot mutate the saved before object.
        value = clone(value)
        if value.get('domain') != domain or value.get('target') != target or value.get('kind') != 'BlockDiagramLiteral':
            raise JournalError('IDENTITY_MISMATCH', 'Adapter did not confirm exact literal identity')
        fields = value.get('fields')
        if not isinstance(fields, dict) or set(fields) != {'literal', 'position', 'size'} or not isinstance(fields['literal'], str):
            raise JournalError('INCOMPLETE_OBSERVATION', 'Local impact fields are missing or unsupported')
        for key in ('position', 'size'):
            if not isinstance(fields[key], list) or len(fields[key]) != 2 or not all(type(n) is int for n in fields[key]):
                raise JournalError('INCOMPLETE_OBSERVATION', 'Invalid layout observation')
        return value

    def execute_literal(self, request, adapter: LiteralAdapter, live_lock):
        request = clone(request)
        self._validate(request)
        if 'reverts' in request:
            # An inverse must be derived from this exact immutable edit, rather
            # than accepting caller-supplied recovery fields at face value.
            expected = self.prepare_literal_revert(request['reverts'], request['request_id'])
            if request != expected:
                raise JournalError('INVALID_INPUT', 'Inverse differs from the recorded edit')
        domain, target = request['domain'], request['target']
        change_id = 'edit_' + fingerprint({'domain': domain, 'request_id': request['request_id']})
        path = self._path(change_id)
        with file_lock(self.root / 'journal.lock'):
            if path.exists():
                events = self.read(change_id)
                if not events:
                    raise JournalError('JOURNAL_INCOMPLETE', 'Unpublished request directory; inspect before reuse')
                if events[0]['kind'] != 'intent' or events[0]['payload'] != request:
                    raise JournalError('REQUEST_ID_CONFLICT', 'Request ID already has different content')
                return self.receipt(change_id, events)
            # One lock across native identity resolution, before, apply, after.
            # It serializes cooperating tools, not GUI/external API clients.
            with live_lock():
                write_preflight = getattr(adapter, 'write_preflight', None)
                if write_preflight is not None:
                    write_preflight(domain)
                path.mkdir()
                events = []
                self._append(path, events, 'intent', request)
                before = self._observation(adapter.observe(domain, target), domain, target)
                conflicts = {k: {'expected': v, 'actual': before['fields'][k]}
                             for k, v in request['expect'].items() if before['fields'][k] != v}
                if conflicts:
                    self._append(path, events, 'finished', {'status': 'conflict', 'conflicts': conflicts, 'setter_called': False})
                    return self.receipt(change_id, events)
                if before['fields']['literal'] == request['value']:
                    self._append(path, events, 'finished', {'status': 'no_change', 'setter_called': False, 'differences': []})
                    return self.receipt(change_id, events)
                self._append(path, events, 'prepared', {'before': before, 'requested': request['value']})
                # Failure here must propagate, with no setter invoked.
                self._append(path, events, 'started', {'target': target})
                try:
                    returned = adapter.apply_literal(domain, target, request['value'])
                    after = self._observation(adapter.observe(domain, target), domain, target)
                    differences = [{'target': target, 'field': field, 'before': value, 'after': after['fields'][field]}
                                   for field, value in before['fields'].items() if value != after['fields'][field]]
                    observed = {'before': before, 'after': after, 'native_outcome': returned, 'differences': differences,
                                'outside_scope': 'not_observed', 'attribution': 'observed_around_call_not_atomic'}
                    self._append(path, events, 'observed', observed)
                    desired = request.get('restore_fields', {'literal': request['value']})
                    matched = all(after['fields'][field] == value for field, value in desired.items())
                    status = ('verified_local' if isinstance(returned, dict) and returned.get('completed') is True
                              and matched else 'needs_recovery')
                    self._append(path, events, 'finished', {'status': status, 'differences': differences,
                        'verification_scope': ['literal', 'position', 'size'], 'outside_scope': 'not_observed',
                        'database_committed': 'not_proven', 'automatic_retry': False})
                except Exception as error:
                    # A returned false, transport error or failed journal write
                    # cannot prove that the native model was left unchanged.
                    try:
                        self._append(path, events, 'finished', {'status': 'outcome_unknown',
                            'error': str(error)[:1000], 'automatic_retry': False})
                    except Exception:
                        pass  # Durable started record still blocks duplicate apply.
                return self.receipt(change_id, events)

    def prepare_literal_revert(self, change_id, request_id):
        """Build a guarded inverse. execute_literal performs fresh checks.

        Still not a native recovery capability: only an adapter with verified
        literal/layout restoration may execute it. Changed layout is checked;
        the executor checks every restoration field after applying.
        """
        events = self.read(change_id)
        if self.receipt(change_id, events)['status'] != 'verified_local':
            raise JournalError('REVERT_UNAVAILABLE', 'Only a verified local edit has an inverse candidate')
        request = events[0]['payload']
        observed = next(e['payload'] for e in events if e['kind'] == 'observed')
        # Retain complete local layout guards because setting text can resize
        # and recenter the literal; a later GUI move must not be overwritten.
        return {'domain': request['domain'], 'request_id': request_id, 'target': request['target'],
                'expect': observed['after']['fields'], 'value': observed['before']['fields']['literal'],
                'restore_fields': observed['before']['fields'], 'reverts': change_id}
