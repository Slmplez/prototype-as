"""Same-epoch PRIVATE session descriptors and resumable evidence, not native archives."""
from datetime import datetime, timezone
import hashlib
import json
from pathlib import Path
import re

import bd_service as service
from bd_edit_journal import fingerprint
from bd_class_study_journal import read_events
from bd_private_step_journal import audit_events, validate_export, _reply_flags


STATIC_EXPORT = ('profile', 'token', 'current', 'original', 'boundaries', 'copied_objects', 'copied_fields',
                 'steps', 'pin_key', 'incident_edges', 'additional_objects', 'independent_ref',
                 'independent_x_before', 'original_projection')


def descriptor(domain, token, manifest):
    value = {'profile': 'private_retained_session_v1', 'domain': domain, 'token': token,
             'source_manifest': manifest, 'source_sha256': fingerprint(manifest),
             'native_archive_available': False, 'production_write_authorized': False}
    value['integrity_sha256'] = fingerprint(value)
    validate_descriptor(value)
    return value


def validate_descriptor(value, expected=None):
    if (type(value) is not dict or set(value) != {'profile', 'domain', 'token', 'source_manifest',
            'source_sha256', 'native_archive_available', 'production_write_authorized', 'integrity_sha256'} or
            value['profile'] != 'private_retained_session_v1' or value['native_archive_available'] is not False or
            value['production_write_authorized'] is not False):
        raise ValueError('Exact private session descriptor required')
    domain = value['domain']
    if (type(domain) is not dict or set(domain) != {'database', 'database_session', 'process_epoch', 'oid', 'component'} or
            any(type(item) is not str or not item or len(item) > 1024 for item in domain.values()) or
            not re.fullmatch(r'BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+', domain['component']) or
            not re.fullmatch(r'[0-9a-f]{32}', value['token'])):
        raise ValueError('Exact isolated private session identity required')
    manifest = value['source_manifest']
    if (type(manifest) is not dict or not manifest or any(type(name) is not str or not name or
            type(digest) is not str or not re.fullmatch(r'[0-9a-f]{64}', digest) for name, digest in manifest.items()) or
            value['source_sha256'] != fingerprint(manifest) or
            value['integrity_sha256'] != fingerprint({key: item for key, item in value.items() if key != 'integrity_sha256'})):
        raise ValueError('Private session descriptor checksum or source identity differs')
    if expected is not None and value != expected:
        raise ValueError('Private session cannot rebind epoch, owner, source or database')
    return value


class PrivateWal:
    """Append only after validating the existing chain under the caller's live lock."""
    def __init__(self, root, binding, intent=None):
        self.root = Path(root)
        self.binding = validate_descriptor(binding)
        if intent is not None:
            self.root.mkdir(parents=True, exist_ok=False)
            self.append('intent', intent)
        else:
            rows = read_events(self.root)
            if rows[0]['payload'].get('domain') != binding['domain'] or rows[0]['payload'].get('token') != binding['token']:
                raise ValueError('Private WAL session binding differs')
            matches = [row for row in rows if row['kind'] == 'registry_bound']
            if len(matches) != 1 or matches[0]['payload'] != {'descriptor': binding}:
                raise ValueError('Private WAL retained descriptor differs')
            if any(row['kind'] == 'finished' for row in rows):
                raise ValueError('Terminal private WAL cannot reopen')

    def append(self, kind, payload):
        rows = read_events(self.root) if any(self.root.glob('*.json')) else []
        if any(row['kind'] == 'finished' for row in rows):
            raise ValueError('Private WAL cannot append after terminal')
        if not rows and kind != 'intent':
            raise ValueError('Private WAL needs an initial intent')
        sequence = len(rows)
        previous = rows[-1]['checksum'] if rows else None
        utc = datetime.now(timezone.utc).isoformat()
        body = json.dumps(payload, ensure_ascii=False, separators=(',', ':'))
        checksum = hashlib.sha256('\n'.join((str(sequence), kind, utc, previous or '', body)).encode()).hexdigest()
        service.write_once(self.root / f'{sequence:06d}.json', {'sequence': sequence, 'kind': kind, 'utc': utc,
            'previous': previous, 'payload_json': body, 'checksum': checksum})


def audit_registry(root, expected):
    validate_descriptor(expected)
    events = read_events(root)
    normalized = []
    bound = exported = lookup = released = None
    host_exits = lookups = refusals = 0
    active = None
    last = None
    terminated_pid = None
    for row in events:
        kind, body = row['kind'], row['payload']
        if released is not None and kind != 'finished':
            raise ValueError('Private registry event follows release')
        if kind == 'intent':
            if body['domain'] != expected['domain'] or body['token'] != expected['token']:
                raise ValueError('Private registry WAL domain differs')
        if kind == 'prepared':
            exported = body['export']
            validate_export(exported)
            last = exported
        if kind == 'registry_bound':
            if bound is not None or exported is None or body != {'descriptor': expected}:
                raise ValueError('Private registry binding differs')
            bound = expected
        elif kind == 'host_terminated':
            if bound is None or active is None or lookup is not None:
                raise ValueError('Private host exit is not bound to outstanding work')
            host_exits += 1
            terminated_pid = body['host_pid']
            normalized.append((kind, body))
        elif kind == 'registry_lookup':
            if (host_exits != lookups + 1 or active is None or lookup is not None or
                    set(body) != {'descriptor', 'host_pid', 'export', 'commands'} or body['descriptor'] != expected or
                    body['commands'] != ['open', 'lookup'] or type(body['host_pid']) is not int or
                    body['host_pid'] <= 0 or body['host_pid'] == terminated_pid):
                raise ValueError('Private registry lookup is not an exact read-only continuation')
            validate_descriptor(body['descriptor'], expected)
            lookup = body['export']
            if any(fingerprint(lookup[key]) != fingerprint(exported[key]) for key in STATIC_EXPORT):
                raise ValueError('Private lookup replaced material or reference tokens')
            lookups += 1
        elif kind == 'registry_refused':
            if (bound is None or active is not None or set(body) != {'command', 'error', 'before', 'after'} or body['before'] != body['after'] or
                    not isinstance(body['error'], str) or 'BDE_PRIVATE_REGISTRY_ERROR:' not in body['error']):
                raise ValueError('Private registry refusal changed state or lacks native evidence')
            _reply_flags(body['after'])
            if body['after']['action'] != 'observe' or body['after']['index'] != 0 or any(
                    body['after'][key] != last[key] for key in ('token', 'status', 'actual_changes', 'recovery_plan',
                                                              'current_matches', 'desired_checkpoint_matches', 'independent_x')):
                raise ValueError('Private registry refusal is not the current retained state')
            refusals += 1
        elif kind == 'registry_released':
            reply = body['reply']
            if (bound is None or active is not None or lookup is not None or last is None or last['current_matches'] is not True or
                    set(body) != {'reply', 'size_before', 'size_after'} or body['size_before'] != body['size_after'] + 1 or
                    type(body['size_after']) is not int or body['size_after'] < 0 or reply.get('released') is not True or
                    reply['token'] != expected['token'] or reply['action'] != 'release' or reply['index'] != 0 or
                    reply['status']['state'] != 'recovered' or reply['current_matches'] is not True or
                    {key: item for key, item in reply.items() if key not in ('action', 'released', 'result')} !=
                    {key: item for key, item in last.items() if key not in ('action', 'result')}):
                raise ValueError('Private registry release is not a restored terminal state')
            released = reply
        else:
            if kind == 'step_started':
                if bound is None:
                    raise ValueError('Private dispatch preceded retained registration')
                active = body
            if kind in ('step_observed', 'reconciled'):
                if kind == 'reconciled':
                    if lookup is None or any(lookup[key] != item for key, item in body['reply'].items() if key != 'action'):
                        raise ValueError('Private reconciliation differs from exact retained lookup')
                    lookup = None
                active = None
                last = body['reply']
            normalized.append((kind, body))
    receipt = audit_events(normalized)
    if host_exits != 2 or lookups != 2 or released is None or receipt['host_terminations'] != 2:
        raise ValueError('Private host-loss study has incomplete exit/recovery/release coverage')
    return {**receipt, 'same_epoch_registry_lookups': lookups, 'registry_refusals': refusals,
            'registry_released': True, 'production_inverse_available': False}
