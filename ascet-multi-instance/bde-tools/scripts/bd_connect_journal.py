"""Formal exact connect history using durable actual observations and retained native objects."""
from bd_edit_journal import JournalError, NativePreconditionConflict, clone, file_lock, fingerprint
from bd_connect_history import preparation, observed
from bd_native_graphical_effects import summary as graphical_summary
from bd_parent_order_effects import differences as order_differences
import bd_drawing_order_effects as drawing


def ready(log, path, events, *, native_token, owner, state, sequence, local=False):
    # The existing inverse kernel restores graphical/source material only.
    # An inbound-reference capture cannot upgrade it to a database inverse.
    if any(e['kind'] == 'observed' and 'module_references_actual' in e['payload'] for e in events):
        return None
    value = dict(profile='retained_connect_local_v1' if local else 'retained_connect_exact_v1', native_token=native_token,
        owner_change_id=owner, state=state, sequence=sequence, local_merge_enabled=local)
    old = [e['payload'] for e in events if e['kind'] == 'connect_history_ready']
    if old and old != [value]:
        raise JournalError('JOURNAL_CONFLICT', 'Recorded connection head differs')
    if not old:
        log._append(path, events, 'connect_history_ready', value)
    return value


def context(log, token):
    ancestry = log.origin(token); source = ancestry['intent']
    if source.get('operation') != 'connect_data' or source.get('diagram') != 'Main' or source['arguments'][0] != []:
        raise JournalError('REVERT_UNAVAILABLE', 'Complete retained Main connection history required')
    sequence = len(ancestry['chain']); state = 'applied' if sequence % 2 else 'reverted'
    previous = None
    for index, change_id in reversed(list(enumerate(ancestry['chain']))):
        events = log.read(change_id)
        expected_status = 'applied_observed' if change_id == ancestry['change_id'] else 'verified_local'
        if log.receipt(change_id, events)['status'] != expected_status:
            raise JournalError('REVERT_UNAVAILABLE', 'Connection ancestry has an unverified outcome')
        p = one(events, 'prepared'); actual = one(events, 'observed')
        if 'module_references_actual' in actual:
            raise JournalError('REVERT_UNAVAILABLE', 'Module reference history requires persistent inverse closure; graphical inverse is insufficient')
        local = p.get('connect_history', {}).get('profile') == 'native_connect_local_preparation_v1'
        expected = dict(profile='retained_connect_local_v1' if local else 'retained_connect_exact_v1', native_token=ancestry['change_id'],
            owner_change_id=change_id, state='applied' if (sequence - index) % 2 else 'reverted',
            sequence=sequence - index, local_merge_enabled=local)
        if [e['payload'] for e in events if e['kind'] == 'connect_history_ready'] != [expected]:
            raise JournalError('REVERT_UNAVAILABLE', 'One durable actual connection head required at every ancestor')
        if change_id == ancestry['change_id']:
            material = forward_material(source, p, actual.get('connect_material_actual'), change_id)
            from bd_structure_journal import postcondition
            if (not postcondition(source, p['before'], actual['after'])
                    or actual != forward_observation(actual['after'], material)):
                raise JournalError('REVERT_UNAVAILABLE', 'Complete durable forward connection proof required')
        else:
            proof = check_preparation(p.get('connect_history'), dict(native_token=ancestry['change_id'],
                owner=previous['change_id'], state=previous['state'], sequence=previous['sequence'],
                current=previous['after'], expected=previous['before'], source=source), change_id)
            if p != dict(before=proof['before'], inverse_expected=proof['expected'], connect_history=proof):
                raise JournalError('REVERT_UNAVAILABLE', 'Durable inverse preparation differs from its actual ancestry')
            checked = observed(actual.get('connect_actual'), proof)
            if actual != observation(checked):
                raise JournalError('REVERT_UNAVAILABLE', 'Durable inverse observation differs from full actual proof')
        previous = dict(change_id=change_id, before=p['before'], after=actual['after'],
            state=expected['state'], sequence=expected['sequence'])
    before, after = previous['before'], previous['after']
    return dict(source=source, native_token=ancestry['change_id'], owner=token, state=state,
        sequence=sequence, current=clone(after), expected=clone(before))


def one(events, kind):
    values = [e['payload'] for e in events if e['kind'] == kind]
    if len(values) != 1:
        raise JournalError('RECOVERY_UNRESOLVED', 'One complete durable ' + kind + ' event required')
    return values[0]


def reference_inverse_plan(log, token, current):
    """Bind a semantic-only candidate to one confirmed durable v2 forward.

    No live call or WAL change occurs here. The original before/after cannot
    be supplied by the caller, inferred from CURRENT, or replaced by a later
    observation. Epoch/raw/reciprocal closure is still missing, so this never
    grants retained connect history or persistent inverse authority.
    """
    events = log.read(token); intent = events[0]['payload']
    if (intent.get('operation') != 'connect_data' or intent.get('diagram') != 'Main'
            or intent.get('arguments', [None])[0] != []
            or log.receipt(token, events)['status'] != 'applied_observed'):
        raise JournalError('REVERT_UNAVAILABLE', 'One confirmed complete Main connection forward required for reference planning')
    prepared, actual = one(events, 'prepared'), one(events, 'observed')
    material = forward_material(intent, prepared, actual.get('connect_material_actual'), token)
    from bd_structure_journal import postcondition
    if ('module_references' not in material or actual != forward_observation(actual['after'], material)
            or not postcondition(intent, prepared['before'], actual['after'])):
        raise JournalError('REVERT_UNAVAILABLE', 'Complete durable actual Module reference proof required')
    from bd_module_references import plan_inverse
    result = plan_inverse(material['module_references'], current, token=token, component_oid=intent['domain']['oid'])
    result.update(journal_bound=True, original_domain=clone(intent['domain']),
        durable_actual_sha256=fingerprint(actual))
    return result


def persistent_reference_inverse_plan(log, token, current):
    """Bind a raw finite proposal to the durable confirmed original forward.

    Caller may supply only CURRENT. Original raw records come from the WAL and
    cannot be replaced by a later probe. This grants no native write authority.
    """
    intent, prepared, actual, material = _persistent_reference_context(log, token)
    from bd_finite_reference_inverse import plan
    result = plan(material['module_persistent_references'], current, token=token,
        component_oid=intent['domain']['oid'], generation=prepared['before']['generation'])
    result.update(journal_bound=True, original_domain=clone(intent['domain']), durable_actual_sha256=fingerprint(actual))
    return result


def persistent_reference_inverse_request(log, token, current):
    """WAL-bound immutable leaf arguments, with no dispatch or history upgrade.

    The bounded leaf executor is available only to explicit isolated research.
    Model/source/cache and full commit closure remain prerequisites for a
    production connection inverse. Original before and actual after are read
    from one confirmed WAL; CURRENT cannot replace either of them.
    """
    intent, prepared, actual, material = _persistent_reference_context(log, token)
    from bd_finite_reference_patch import inverse_request
    result = inverse_request(material['module_persistent_references'], current, token=token,
        component_oid=intent['domain']['oid'], generation=prepared['before']['generation'])
    result.update(journal_bound=True, original_domain=clone(intent['domain']),
        durable_actual_sha256=fingerprint(actual), original_prepared_sha256=fingerprint(prepared),
        native_leaf_executor_profile='isolated_module_source_only_v1',
        production_connection_inverse_available=False)
    return result


def persistent_owner_inverse_request(log, token, current):
    """Plan owner and reciprocal patches from one verified v4 WAL forward.

    All resources are checked before returning any candidate. Caller supplies
    only CURRENT; old before/actual after come from the original journal. This
    does not execute native writes or certify model/cache restoration.
    """
    intent, prepared, actual, material = _persistent_reference_context(log, token)
    if 'persistent_owner_records' not in material:
        raise JournalError('REVERT_UNAVAILABLE', 'Original full owner records were not captured; a later read cannot replace them')
    from bd_connect_owner_inverse import request
    result = request(material['persistent_owner_records'], material['module_persistent_references'], current,
        token=token, component_oid=intent['domain']['oid'], generation=prepared['before']['generation'])
    result.update(journal_bound=True, original_domain=clone(intent['domain']),
        durable_actual_sha256=fingerprint(actual), original_prepared_sha256=fingerprint(prepared))
    return result


def _persistent_reference_context(log, token):
    events = log.read(token); intent = events[0]['payload']
    if (intent.get('operation') != 'connect_data' or intent.get('diagram') != 'Main'
            or intent.get('arguments', [None])[0] != []
            or log.receipt(token, events)['status'] != 'applied_observed'):
        raise JournalError('REVERT_UNAVAILABLE', 'Confirmed complete Main connection forward required for raw reference planning')
    prepared, actual = one(events, 'prepared'), one(events, 'observed')
    material = forward_material(intent, prepared, actual.get('connect_material_actual'), token)
    from bd_structure_journal import postcondition
    if ('module_persistent_references' not in material or actual != forward_observation(actual['after'], material)
            or not postcondition(intent, prepared['before'], actual['after'])):
        raise JournalError('REVERT_UNAVAILABLE', 'Complete durable actual finite raw reference proof required')
    return intent, prepared, actual, material


def forward_material(source, prepared, value, token):
    from bd_connect_material import validate
    bindings = dict(token=token, component_oid=source['domain']['oid'],
        source=source['arguments'][1], target=source['arguments'][2])
    original = validate(prepared.get('connect_material_prepared'), **bindings, phase='prepared')
    actual = validate(value, **bindings, phase='attached')
    if actual['profile'] != original['profile']:
        raise JournalError('CONNECT_MATERIAL_INVALID', 'Actual connection reference coverage differs from preparation')
    if 'module_references' in original:
        if original['module_references']['generation'] != prepared['before'].get('generation'):
            raise JournalError('CONNECT_MATERIAL_INVALID', 'Module references differ from the original semantic generation')
        for key in ('before', 'generation'):
            if actual['module_references'][key] != original['module_references'][key]:
                raise JournalError('CONNECT_MATERIAL_INVALID', 'Actual connection differs from durable original Module ' + key)
    if 'module_persistent_references' in original:
        for key in ('before', 'generation'):
            if actual['module_persistent_references'][key] != original['module_persistent_references'][key]:
                raise JournalError('CONNECT_MATERIAL_INVALID', 'Actual finite reference proof differs from durable original ' + key)
    if 'persistent_owner_records' in original:
        for key in ('before', 'generation'):
            if actual['persistent_owner_records'][key] != original['persistent_owner_records'][key]:
                raise JournalError('CONNECT_MATERIAL_INVALID', 'Actual owner records differ from durable original ' + key)
    for key in ('graphical_before', 'parent_before', 'drawing_before',
            'original_native_objects', 'original_source_objects'):
        if actual[key] != original[key]:
            raise JournalError('CONNECT_MATERIAL_INVALID', 'Actual connection differs from durable original ' + key)
    return actual


def forward_observation(after, material):
    parents = [dict(kind='parent_order', before=material['parent_before'], after=material['parent_after'])]
    drawings = [dict(kind='drawing_order', before=material['drawing_before'], after=material['drawing_after'])]
    result = dict(after=clone(after), connect_material_actual=clone(material), library_effects=[], scope_effects=[],
        parent_order_effects=parents, parent_order_differences=order_differences(parents),
        drawing_order_effects=drawings, drawing_order_differences=drawing.differences(drawings),
        graphical_current=material['graphical_before'], graphical_actual=material['graphical_actual'],
        graphical_differences=graphical_summary(material['graphical_before'], material['graphical_actual']))
    if 'module_references' in material:
        from bd_module_references import differences
        result.update(module_references_actual=clone(material['module_references']),
            module_reference_differences=differences(material['module_references']))
    if 'module_persistent_references' in material:
        from bd_module_persistent_references import differences
        result.update(module_persistent_references_actual=clone(material['module_persistent_references']),
            module_persistent_reference_differences=differences(material['module_persistent_references']))
    if 'persistent_owner_records' in material:
        from bd_persistent_owner_records import differences as owner_differences
        result.update(persistent_owner_records_actual=clone(material['persistent_owner_records']),
            persistent_owner_record_differences=owner_differences(material['persistent_owner_records']))
    return result


def prepare(adapter, domain, ctx, result_id):
    if getattr(adapter, 'connect_history_capable', False) is not True:
        raise JournalError('REVERT_UNAVAILABLE', 'Fixed connection history profile is disabled')
    current = adapter.observe(domain, [])
    local = getattr(adapter, 'connect_local_history_capable', False) is True
    if not local and current != ctx['current']:
        raise NativePreconditionConflict('Complete connection head changed; exact inverse unavailable')
    value = adapter.prepare_connect_history(domain, ctx['native_token'], ctx['owner'], ctx['state'], result_id)
    if (value.get('profile') == 'native_connect_local_preparation_v1') is not local:
        raise JournalError('CONNECT_HISTORY_INVALID', 'Native connection preparation profile differs from the explicit adapter gate')
    return check_preparation(value, ctx, result_id, current=current)


def check_preparation(value, ctx, result_id, *, current=None):
    """Recompute the target from durable actual ancestry, also during recovery."""
    local = type(value) is dict and value.get('profile') == 'native_connect_local_preparation_v1'
    if current is None:
        current = value.get('before') if local else ctx['current']
    expected = ctx['expected']
    if local:
        from bd_topology_inverse import plan
        inverse = plan(ctx['expected'], ctx['current'], current, operation='connect_data')
        if inverse.get('compatible') is not True:
            raise NativePreconditionConflict('Complete actual connection inverse conflicts with CURRENT')
        expected = inverse['expected']
    return preparation(value, token=ctx['native_token'], owner=ctx['owner'], state=ctx['state'],
        result_id=result_id, sequence=ctx['sequence'], current=current, expected=expected,
        historical_before=ctx['expected'], historical_after=ctx['current'], component_oid=ctx['source']['domain']['oid'])


def observation(actual):
    parents = [dict(kind='parent_order', before=actual['parent_before'], after=actual['parent_after'])]
    drawings = [dict(kind='drawing_order', before=actual['drawing_before'], after=actual['drawing_after'])]
    return dict(after=actual['observation'], connect_actual=actual, connect_execution=actual['execution'],
        library_effects=[], scope_effects=[], parent_order_effects=parents,
        parent_order_differences=order_differences(parents), drawing_order_effects=drawings,
        drawing_order_differences=drawing.differences(drawings), graphical_current=actual['graphical_current'],
        graphical_actual=actual['graphical_actual'],
        graphical_differences=graphical_summary(actual['graphical_current'], actual['graphical_actual']))


def preview(log, token, request_id, adapter, live_lock):
    with file_lock(log.root / 'journal.lock'), live_lock():
        ctx = context(log, token); domain = ctx['source']['domain']
        result_id = 'edit_' + fingerprint(dict(domain=domain, request_id=request_id))
        try:
            p = prepare(adapter, domain, ctx, result_id)
            return dict(status='preview', setter_called=False, operation='connect_inverse', change_id=token,
                validation=dict(native_constraints='passed', complete_current_verified=True,
                    target_sha256=fingerprint(p['expected']), local_merge_enabled=p['local_merge_enabled']),
                recovery_record_created=False, execution_revalidates=True)
        except Exception as error:
            return dict(status='conflict' if isinstance(error, NativePreconditionConflict) else 'rejected',
                setter_called=False, operation='connect_inverse', error=str(error),
                recovery_record_created=False, execution_revalidates=True)


def execute(log, token, request_id, adapter, live_lock):
    domain = log.read(token)[0]['payload']['domain']
    intent = dict(domain=domain, request_id=request_id, reverts=token)
    result_id = 'edit_' + fingerprint(dict(domain=domain, request_id=request_id))
    path = log._path(result_id)
    with file_lock(log.root / 'journal.lock'):
        if path.exists():
            events = log.read(result_id)
            if not events or events[0]['payload'] != intent:
                raise JournalError('REQUEST_ID_CONFLICT', 'Connection inverse request differs')
            return log.receipt(result_id, events)
        ctx = context(log, token)
        with live_lock():
            adapter.write_preflight(domain)
            path.mkdir(); events = []
            log._append(path, events, 'intent', intent)
            try:
                p = prepare(adapter, domain, ctx, result_id)
                log._append(path, events, 'prepared', dict(before=p['before'], inverse_expected=p['expected'], connect_history=p))
            except Exception as error:
                log._append(path, events, 'finished', dict(status='conflict' if isinstance(error, NativePreconditionConflict) else 'rejected',
                    setter_called=False, automatic_retry=False, error=str(error)))
                return log.receipt(result_id, events)
            try:
                log._append(path, events, 'started', dict(native_token=ctx['native_token'], owner=token,
                    state=ctx['state'], result_change_id=result_id))
            except OSError:
                # No native dispatch: the immutable preparation is sufficient to diagnose interruption.
                return log.receipt(result_id, events)
            try:
                actual = adapter.execute_connect_history(domain, p)
                log._append(path, events, 'connect_actual_reply', clone(actual))
                actual = observed(actual, p)
                log._append(path, events, 'observed', observation(actual))
                from bd_structure_journal import differences
                log._append(path, events, 'finished', dict(status='verified_local', reverts=token,
                    differences=differences(p['before'], actual['observation']), automatic_retry=False))
                ready(log, path, events, native_token=ctx['native_token'], owner=result_id,
                    state=actual['execution']['after_state'], sequence=actual['execution']['sequence'], local=p['local_merge_enabled'])
                adapter.confirm_connect(domain, 'connect_history', ctx['native_token'], context={
                    k: p[k] for k in ('owner_change_id', 'state', 'result_change_id', 'signature')})
            except NativePreconditionConflict as error:
                log._append(path, events, 'finished', dict(status='conflict', setter_called=False,
                    automatic_retry=False, error=str(error)))
            except Exception as error:
                log._record_unknown(path, events, error)
                log._append(path, events, 'connect_confirmation_failed', dict(error=str(error), automatic_retry=False))
            return log.receipt(result_id, events)


def reconcile(log, token, adapter, live_lock, *, commit=False):
    """Read a retained terminal result. No execute/capture/factory or metadata handoff."""
    with file_lock(log.root / 'journal.lock'), live_lock():
        return reconcile_locked(log, token, adapter, commit=commit)


def reconcile_locked(log, token, adapter, *, commit=False):
    """Internal recovery entry: caller already owns journal then live locks."""
    events = log.read(token); path = log._path(token); intent = events[0]['payload']
    durable = one(events, 'prepared'); one(events, 'started')
    domain = intent['domain']
    import bd_instance_pending as pending
    import json
    marker = pending.pending_path(domain)
    if 'connect_history' in durable:
        ctx = context(log, intent['reverts'])
        p = check_preparation(durable['connect_history'], ctx, token)
        command, native_token = 'connect_history', p['native_token']
        ownership = {k: p[k] for k in ('owner_change_id', 'state', 'result_change_id', 'signature')}
    elif intent.get('operation') == 'connect_data' and 'connect_material_prepared' in durable:
        p = None; command, native_token, ownership = 'connect_apply', token, None
    else:
        raise JournalError('RECOVERY_UNRESOLVED', 'Complete dispatched retained connection preparation required')
    expected_marker = dict(domain=domain, command=command, native_token=native_token, automatic_retry=False)
    if ownership is not None:
        expected_marker['managed_context'] = ownership
    if marker.exists() and json.loads(marker.read_text(encoding='utf-8')) != expected_marker:
        raise JournalError('RECOVERY_UNRESOLVED', 'Another request owns connection quarantine')
    if p is not None:
        actual = observed(adapter.connect_history_status(domain, p), p)
        value = observation(actual)
        state, sequence = actual['execution']['after_state'], actual['execution']['sequence']
        from bd_structure_journal import differences
        finished = dict(status='verified_local', reverts=intent['reverts'],
            differences=differences(p['before'], actual['observation']), automatic_retry=False,
            recovered_from_retained_terminal=True)
    else:
        # inspect_attached requires capture to have completed previously. It
        # never captures or replays an incomplete forward write.
        material = forward_material(intent, durable, adapter.connect_material_status(domain, token), token)
        after = adapter.observe(domain, [])
        from bd_structure_journal import postcondition, differences
        if not postcondition(intent, durable['before'], after):
            raise JournalError('RECOVERY_UNRESOLVED', 'Complete actual forward connection target differs')
        actual = material; value = forward_observation(after, material)
        state, sequence = 'applied', 1
        finished = dict(status='applied_observed', requested_effect_verified=True,
            differences=differences(durable['before'], after), automatic_retry=False,
            library_effects=[], scope_effects=[], scope_differences=[],
            parent_order_effects=value['parent_order_effects'], parent_order_differences=value['parent_order_differences'],
            drawing_order_differences=value['drawing_order_differences'], graphical_differences=value['graphical_differences'],
            recovery='retained_native_objects_same_ASCET_process', outside_scope='not_observed',
            recovered_from_retained_terminal=True)
    existing = [e['payload'] for e in events if e['kind'] == 'observed']
    if existing and existing != [value]:
        raise JournalError('RECOVERY_UNRESOLVED', 'Durable actual connection differs from retained terminal')
    result = dict(change_id=token, model_setters_called=0, current_matches_terminal=True,
        terminal_verified=True, automatic_retry=False, reconciled=False)
    if commit:
        log._append(path, events, 'connect_terminal_query', dict(actual=actual, model_setters_called=0))
        if not existing:
            log._append(path, events, 'observed', value)
        if log.receipt(token, events)['status'] != finished['status']:
            log._append(path, events, 'finished', finished)
        ready(log, path, events, native_token=native_token, owner=token, state=state, sequence=sequence,
            local=p is not None and p['local_merge_enabled'])
        if marker.exists():
            adapter.confirm_connect(domain, command, native_token, context=ownership)
        result['reconciled'] = True
    result['instance_quarantined'] = marker.exists()
    result['receipt'] = log.receipt(token, events)
    return result
