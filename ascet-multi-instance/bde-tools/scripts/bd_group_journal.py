"""Durable non-atomic groups of independent structural resource patches."""
from contextlib import nullcontext
import re

from bd_edit_journal import EditJournal, JournalError, clone, file_lock, fingerprint
from bd_structure_journal import validate_request


GROUP_OPERATIONS = {'connect_data', 'disconnect_data', 'rewire_data', 'delete_node', 'create_block',
                    'move_node', 'set_literal', 'set_comment', 'set_sequence', 'set_sequence_number'}


def validate_group(request):
    if not isinstance(request, dict) or not {'session', 'request_id', 'steps'} <= set(request) or set(request) - {'session', 'request_id', 'steps', 'mode'}:
        raise JournalError('INVALID_INPUT', 'Group requires session, request_id and steps')
    sequence = request.get('mode') == 'connection_sequence'
    construction = request.get('mode') == 'construction_sequence'
    if 'mode' in request and not (sequence or construction):
        raise JournalError('INVALID_INPUT', 'Unknown group execution mode')
    if any(not isinstance(request[key], str) or not 1 <= len(request[key]) <= 256 for key in ('session', 'request_id')):
        raise JournalError('INVALID_INPUT', 'Bounded group identity required')
    steps = request['steps']
    if not isinstance(steps, list) or not 2 <= len(steps) <= 16:
        raise JournalError('INVALID_INPUT', 'Group requires 2..16 independent component patches')
    owners = set()
    shared = None
    for step in steps:
        expected_keys = {'snapshot', 'request', 'baseline', 'template'} if construction else {'snapshot', 'request', 'baseline'} if sequence else {'snapshot', 'request'}
        if not isinstance(step, dict) or set(step) != expected_keys or not isinstance(step['snapshot'], str):
            raise JournalError('INVALID_INPUT', 'Invalid group step')
        patch = step['request']
        if construction and patch.get('arguments') is None:
            validate_request({**patch, 'arguments': [['p0', 'p1'], 'p0', 'p1']})
        else:
            validate_request(patch)
        domain = patch['domain']
        if domain['session'] != request['session']:
            raise JournalError('IDENTITY_UNRESOLVED', 'All group steps require the same agent session')
        identity = (domain['database'], domain['process_epoch'])
        if shared is not None and identity != shared:
            raise JournalError('IDENTITY_UNRESOLVED', 'All group resources require the same database/process')
        shared = identity
        if domain['oid'] in owners and not (sequence or construction):
            raise JournalError('CAPABILITY_UNAVAILABLE', 'One patch per component per group; dependent same-root steps are unavailable')
        owners.add(domain['oid'])
        if sequence and patch['operation'] != 'connect_data':
            raise JournalError('CAPABILITY_UNAVAILABLE', 'Connection sequences only add edges between existing exact pins')
        if not re.fullmatch(r'BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+', patch['component'].strip('\\')):
            raise JournalError('CAPABILITY_UNAVAILABLE', 'Sandbox resources only')
        if patch['operation'] not in GROUP_OPERATIONS:
            raise JournalError('CAPABILITY_UNAVAILABLE', 'Group operation is not validated for independent resources')
        if (not construction and patch['operation'] == 'create_block' and patch['arguments'][1] == 'enumeration'
                and patch['arguments'][5].startswith('NEWENUM|')):
            raise JournalError('CAPABILITY_UNAVAILABLE', 'New shared library definitions require dependency-aware group recovery')
    if sequence:
        from bd_connection_sequence import validate_baselines
        validate_baselines(request)
    if construction:
        from bd_construction_sequence import validate_steps
        validate_steps(request)


class GroupJournal(EditJournal):
    def __init__(self, root, local):
        super().__init__(root)
        self.local = local

    def _path(self, change_id):
        if not isinstance(change_id, str) or not re.fullmatch('flow_[0-9a-f]{64}', change_id):
            raise JournalError('INVALID_REFERENCE', 'Invalid group change ID')
        return self.root / change_id

    @staticmethod
    def receipt(change_id, events):
        terminal = next((event['payload'] for event in reversed(events) if event['kind'] == 'finished'), None)
        # Reconciliation appends corrected receipts without rewriting history.
        latest = {event['payload']['index']: event['payload']
                  for event in events if event['kind'] == 'step_finished'}
        steps = list(latest.values())
        started = [event['payload'] for event in events if event['kind'] == 'step_started']
        unknown = [row for row in started if row['index'] not in {step['index'] for step in steps}]
        return {'change_id': change_id, 'record_type': 'resource_group', 'atomic': False,
            'automatic_retry': False, 'steps': steps, 'unknown_steps': unknown,
            **(terminal if terminal is not None else {'status': 'outcome_unknown' if started else 'interrupted_before_apply'})}

    def _finish(self, path, events, payload):
        self._append(path, events, 'finished', payload)
        return self.receipt(path.name, events)

    def _unknown(self, path, events, error):
        try:
            self._append(path, events, 'finished', {'status': 'outcome_unknown', 'error': str(error)})
        except OSError:
            pass
        return self.receipt(path.name, events)

    def preflight(self, request, adapters):
        if request.get('mode') == 'construction_sequence':
            from bd_construction_sequence import preflight
            return preflight(request, adapters)
        observations = []
        for step in request['steps']:
            patch = step['request']
            with adapters(patch) as adapter:
                before = adapter.observe(patch['domain'], patch['arguments'][0])
                if fingerprint(before) != patch['expect']:
                    raise JournalError('PRECONDITION_CONFLICT', 'Group resource changed before any write')
                if adapter.validate(patch['domain'], patch['operation'], patch['arguments']) != before:
                    raise JournalError('PRECONDITION_CONFLICT', 'Native validation observed a different state')
                observations.append(before)
        return observations

    def execute(self, request, adapters, live_lock, bind=lambda request, snapshot, component: None):
        request = clone(request)
        validate_group(request)
        token = 'flow_' + fingerprint({'session': request['session'], 'request_id': request['request_id']})
        path = self._path(token)
        with file_lock(self.root / 'group.lock'):
            if path.exists():
                events = self.read(token)
                if not events or events[0]['payload'] != request:
                    raise JournalError('REQUEST_ID_CONFLICT', 'Group request ID has different content')
                return self.receipt(token, events)
            with live_lock():
                path.mkdir()
                events = []
                self._append(path, events, 'intent', request)
                try:
                    before = self.preflight(request, adapters)
                    self._append(path, events, 'preflight', {'before': before, 'all_resources_checked': True})
                except Exception as error:
                    return self._finish(path, events, {'status': 'rejected', 'setter_called': False, 'error': str(error)})
                for index, step in enumerate(request['steps']):
                    patch = step['request']
                    if request.get('mode') in ('connection_sequence', 'construction_sequence'):
                        try:
                            if request['mode'] == 'construction_sequence':
                                from bd_construction_sequence import resolved_patch
                            else:
                                from bd_connection_sequence import resolved_patch
                            patch = resolved_patch(request, index, self.receipt(token, events)['steps'], self.local)
                            self._append(path, events, 'step_planned', {'index': index, 'request': patch})
                        except Exception as error:
                            return self._finish(path, events, {'status': 'partial' if index else 'rejected',
                                'stopped_at': index, 'setter_called': False, 'error': str(error)})
                    local_id = 'edit_' + fingerprint({'domain': patch['domain'], 'request_id': patch['request_id']})
                    try:
                        bind(patch, step['snapshot'], patch['component'])
                        self._append(path, events, 'step_started', {'index': index, 'change_id': local_id})
                        with adapters(patch) as adapter:
                            receipt = self.local.execute(patch, adapter, nullcontext)
                        self._append(path, events, 'step_finished', {'index': index, 'receipt': receipt})
                    except Exception as error:
                        return self._unknown(path, events, error)
                    if receipt['status'] != 'applied_observed':
                        status = ('outcome_unknown' if receipt['status'] == 'outcome_unknown' else
                                  'partial' if index or receipt['status'] == 'postcondition_mismatch' else 'rejected')
                        return self._finish(path, events, {'status': status, 'stopped_at': index})
                return self._finish(path, events, {'status': 'completed'})

    def recovery_steps(self, token):
        events = self.read(token)
        receipt = self.receipt(token, events)
        if receipt['status'] not in ('completed', 'partial') or receipt['unknown_steps']:
            raise JournalError('REVERT_UNAVAILABLE', 'Group has no fully observed recoverable outcome')
        if 'reverts' in events[0]['payload']:
            raise JournalError('REVERT_UNAVAILABLE', 'A group inverse cannot itself be inverted')
        recoverable = []
        for row in receipt['steps']:
            local = row['receipt']
            if local['status'] in ('applied_observed', 'postcondition_mismatch'):
                local_events = self.local.read(local['change_id'])
                patch = local_events[0]['payload']
                after = next(event['payload']['after'] for event in local_events if event['kind'] == 'observed')
                recoverable.append((row['index'], local['change_id'], patch, after))
            elif local.get('setter_called') is not False:
                raise JournalError('REVERT_UNAVAILABLE', 'Unconfirmed group step may have modified a resource')
        return list(reversed(recoverable))

    def preflight_revert(self, token, adapters):
        steps = self.recovery_steps(token)
        if self.read(token)[0]['payload'].get('mode') == 'connection_sequence':
            from bd_connection_sequence import preflight_inverse
            return preflight_inverse(steps, adapters, self.local)
        if self.read(token)[0]['payload'].get('mode') == 'construction_sequence':
            from bd_construction_sequence import preflight_inverse
            return preflight_inverse(steps, adapters, self.local)
        for _, local_id, patch, after in steps:
            with adapters(patch) as adapter:
                current = adapter.observe(patch['domain'], patch['arguments'][0])
                if current != after or adapter.validate_revert(patch['domain'], local_id) != after:
                    raise JournalError('PRECONDITION_CONFLICT', 'Group inverse conflict before any restoration')
        return steps

    def revert(self, token, request_id, session, adapters, live_lock, bind=lambda request, snapshot, component: None):
        original = self.read(token)[0]['payload']
        if original['session'] != session or not isinstance(request_id, str) or not 1 <= len(request_id) <= 256:
            raise JournalError('IDENTITY_UNRESOLVED', 'Original group session and bounded request ID required')
        intent = {'session': session, 'request_id': request_id, 'reverts': token}
        inverse_id = 'flow_' + fingerprint({'session': session, 'request_id': request_id})
        path = self._path(inverse_id)
        with file_lock(self.root / 'group.lock'):
            if path.exists():
                events = self.read(inverse_id)
                if not events or events[0]['payload'] != intent:
                    raise JournalError('REQUEST_ID_CONFLICT', 'Group inverse request ID has different content')
                return self.receipt(inverse_id, events)
            with live_lock():
                path.mkdir()
                events = []
                self._append(path, events, 'intent', intent)
                try:
                    steps = self.preflight_revert(token, adapters)
                    self._append(path, events, 'preflight', {'all_resources_checked': True,
                                                           'changes': [step[1] for step in steps]})
                except Exception as error:
                    return self._finish(path, events, {'status': 'conflict', 'setter_called': False, 'error': str(error)})
                for position, (index, local_id, patch, _) in enumerate(steps):
                    local_request_id = 'group-revert-' + fingerprint({'group': inverse_id, 'index': index})
                    expected_id = 'edit_' + fingerprint({'domain': patch['domain'], 'request_id': local_request_id})
                    try:
                        bind({'domain': patch['domain'], 'request_id': local_request_id, 'reverts': local_id},
                             original['steps'][index]['snapshot'], patch['component'])
                        self._append(path, events, 'step_started', {'index': index, 'change_id': expected_id, 'reverts': local_id})
                        with adapters(patch) as adapter:
                            receipt = self.local.revert(local_id, local_request_id, adapter, nullcontext)
                        self._append(path, events, 'step_finished', {'index': index, 'receipt': receipt})
                    except Exception as error:
                        return self._unknown(path, events, error)
                    if receipt['status'] != 'verified_local':
                        status = ('outcome_unknown' if receipt['status'] == 'outcome_unknown' else
                                  'partial' if position or receipt['status'] == 'restore_mismatch' else 'conflict')
                        return self._finish(path, events, {'status': status, 'stopped_at': index})
                return self._finish(path, events, {'status': 'reverted', 'reverts': token})

    def diff(self, token):
        events = self.read(token)
        receipt = self.receipt(token, events)
        local_ids = {event['payload']['index']: event['payload']['change_id']
                     for event in events if event['kind'] == 'step_started'}
        differences = []
        for index, local_id in local_ids.items():
            try:
                differences.append({'index': index, **self.local.diff(local_id)})
            except JournalError as error:
                differences.append({'index': index, 'change_id': local_id, 'status': 'unavailable', 'code': error.code})
        return {**receipt, 'resource_differences': differences, 'source': 'durable journals; zero live reads'}
