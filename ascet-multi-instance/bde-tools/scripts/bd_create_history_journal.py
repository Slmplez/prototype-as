"""Formal retained graphical create inverse with durable actual evidence and no replay."""
import json
from bd_edit_journal import JournalError, NativePreconditionConflict, clone, file_lock, fingerprint
from bd_create_history import preparation, observed
from bd_create_material import observation as creation_observation
from bd_native_graphical_effects import summary
from bd_parent_order_effects import differences as order_differences
import bd_drawing_order_effects as drawing
import bd_instance_pending as pending
from bd_message_declaration_material import KINDS as MESSAGE_KINDS

DECLARATIONS=frozenset(('variable','enumeration'))|MESSAGE_KINDS


def one(events, kind):
    items = [event['payload'] for event in events if event['kind']==kind]
    if len(items)!=1:
        raise JournalError('RECOVERY_UNRESOLVED','One complete creation history '+kind+' required')
    return items[0]


def observation(value, prepared=None):
    parents = [dict(kind='parent_order',before=value['parent_before'],after=value['parent_after'])]
    drawings = [dict(kind='drawing_order',before=value['drawing_before'],after=value['drawing_after'])]
    result = dict(after=clone(value['observation']),create_history_actual=clone(value),library_effects=[],scope_effects=[],
        parent_order_effects=parents,parent_order_differences=order_differences(parents),
        drawing_order_effects=drawings,drawing_order_differences=drawing.differences(drawings),
        graphical_current=value['graphical_current'],graphical_actual=value['graphical_actual'],
        graphical_differences=summary(value['graphical_current'],value['graphical_actual']))
    if value['profile'] in ('native_create_exact_actual_v2','native_create_exact_actual_v3','native_create_exact_actual_v4','native_create_exact_actual_v5'):
        if value['profile']=='native_create_exact_actual_v5':
            from bd_message_declaration_history import summary as declaration_summary
        elif value['profile'] in ('native_create_exact_actual_v3', 'native_create_exact_actual_v4'):
            from bd_enum_declaration_history import summary as declaration_summary
        else:
            from bd_declaration_history import summary as declaration_summary
        result['declaration_differences'] = declaration_summary(value,
            prepared['declaration_evidence'] if value['profile'] in ('native_create_exact_actual_v3','native_create_exact_actual_v4','native_create_exact_actual_v5') and prepared else None)
        if prepared is None:
            raise JournalError('CREATE_HISTORY_INVALID','Complete prepared read-cache origin required')
        from bd_declaration_cache import evidence as cache_evidence
        result['read_cache_differences'] = cache_evidence(prepared['declaration_evidence']['read_cache_evidence'],
            owner_class='SGModule' if prepared['kind'] in MESSAGE_KINDS else 'SGClass')
    return result


def ready_value(prepared,actual):
    result = dict(profile='retained_create_exact_v1',native_token=prepared['native_token'],
        owner_change_id=prepared['result_change_id'],state=actual['execution']['after_state'],
        sequence=actual['execution']['sequence'],allocator=prepared['allocator'],local_merge_enabled=False)
    if prepared['kind'] in DECLARATIONS:
        result.update(profile='retained_create_exact_v2',
            created_model_oid=prepared['declaration_evidence']['created_model_oid'],
            declaration_actual_sha256=fingerprint({k:actual[k] for k in (
                'declaration_current', 'declaration_actual', 'declaration_schema')}))
        result['read_cache_origin_sha256'] = fingerprint(prepared['declaration_evidence']['read_cache_evidence'])
        if prepared['kind'] == 'enumeration':
            result.update(profile='retained_create_exact_v3',
                definition_target_sha256=fingerprint(actual['enum_definition_evidence']),
                definition_reference_targets_verified=True,
                durable_enum_origin_sha256=fingerprint(prepared['enum_origin']))
        if prepared['kind'] in MESSAGE_KINDS:
            result.update(profile='retained_create_exact_v4',
                owner_target_sha256=fingerprint(actual['message_owner_evidence']),owner_reference_targets_verified=True,
                durable_message_origin_sha256=fingerprint(prepared['message_origin']))
    return result


def ready(log,path,events,prepared,actual):
    value = ready_value(prepared,actual)
    old = [e['payload'] for e in events if e['kind']=='create_history_ready']
    if old and old!=[value]:
        raise JournalError('JOURNAL_CONFLICT','Durable actual creation history owner differs')
    if not old: log._append(path,events,'create_history_ready',value)
    return value


def receipt_projection(change_id,events,status):
    """Rebuild old successful receipts from complete durable proofs, never re-execute."""
    records = [e['payload'] for e in events if e['kind']=='observed'
               and 'create_history_actual' in e['payload']]
    heads = [e['payload'] for e in events if e['kind']=='create_history_ready']
    if not records:
        if heads:
            raise JournalError('JOURNAL_CORRUPT','Creation history head lacks complete actual evidence')
        return {}
    if len(records)!=1:
        raise JournalError('JOURNAL_CORRUPT','One actual creation history observation required')
    intent=one(events,'intent');durable=one(events,'prepared');p=durable['create_history']
    p=preparation(p,token=p['native_token'],owner=intent['reverts'],state=p['state'],
        result_id=change_id,sequence=p['sequence'],kind=p['kind'],current=durable['before'],
        expected=durable['inverse_expected'],oid=intent['domain']['oid'])
    value=observed(records[0]['create_history_actual'],p,oid=intent['domain']['oid'])
    actual=observation(value,p)
    if records[0]!=actual or (heads and heads!=[ready_value(p,value)]):
        raise JournalError('JOURNAL_CORRUPT','Creation history summary differs from complete durable proof')
    result={key:clone(actual[key]) for key in (
        'graphical_differences','parent_order_differences','drawing_order_differences')}
    result['create_execution']=clone(value['execution'])
    if 'declaration_differences' in actual:
        result['declaration_differences'] = clone(actual['declaration_differences'])
        result['read_cache_differences'] = clone(actual['read_cache_differences'])
    result['create_history']={**ready_value(p,value),
        'complete_actual_head_saved':bool(heads),
        'revert_of_revert_available':status=='verified_local' and bool(heads)}
    return result


def context(log,token):
    ancestry = log.origin(token); source = ancestry['intent']
    if (source.get('operation')!='create_block' or source.get('diagram')!='Main'
            or source['arguments'][0]!=[] or source['arguments'][1] not in {'literal','operator'}|DECLARATIONS):
        raise JournalError('REVERT_UNAVAILABLE','Complete retained graphical Main creation required')
    previous = None
    for index, change in enumerate(reversed(ancestry['chain']),1):
        events = log.read(change); p,actual = one(events,'prepared'),one(events,'observed')
        if any(e['kind']=='create_history_closed' for e in events):
            raise JournalError('REVERT_UNAVAILABLE','Original creation history has been finalized; no redo')
        if change==ancestry['change_id']:
            if log.receipt(change,events)['status']!='applied_observed':
                raise JournalError('REVERT_UNAVAILABLE','Forward creation lacks observed completion')
            if source['arguments'][1] == 'variable' and (
                    p.get('create_material_prepared', {}).get('profile') != 'native_create_material_v2'
                    or actual.get('create_material_actual', {}).get('profile') != 'native_create_material_v2'):
                raise JournalError('REVERT_UNAVAILABLE','Variable history requires its real original body-before')
            if source['arguments'][1] == 'enumeration' and (
                    p.get('create_material_prepared', {}).get('profile') != 'native_create_material_v3'
                    or actual.get('create_material_actual', {}).get('profile') != 'native_create_material_v3'):
                raise JournalError('REVERT_UNAVAILABLE','Enum history requires original existing-definition body material')
            if source['arguments'][1] in MESSAGE_KINDS and (
                    p.get('create_material_prepared',{}).get('profile')!='native_create_material_v4'
                    or actual.get('create_material_actual',{}).get('profile')!='native_create_material_v4'):
                raise JournalError('REVERT_UNAVAILABLE','Message history requires full original Module declaration material')
            computed = dict(after=actual['after'],library_effects=[],scope_effects=[],**creation_observation(
                p['before'],actual['after'],p['create_material_prepared'],actual['create_material_actual'],
                token=change,oid=source['domain']['oid'],kind=source['arguments'][1]))
            from bd_structure_journal import postcondition
            if actual!=computed or not postcondition(source,p['before'],actual['after']):
                raise JournalError('REVERT_UNAVAILABLE','Complete durable actual forward factory proof required')
        else:
            if log.receipt(change,events)['status']!='verified_local':
                raise JournalError('REVERT_UNAVAILABLE','Creation history has an unverified ancestor')
            prepared = check_preparation(p['create_history'],source=source,token=ancestry['change_id'],
                owner=previous['change'],state=previous['state'],sequence=index-1,
                current=previous['after'],expected=previous['before'],result_id=change,
                enum_origin=previous.get('enum_origin'),message_origin=previous.get('message_origin'))
            if p!=dict(before=prepared['before'],inverse_expected=prepared['expected'],create_history=prepared):
                raise JournalError('REVERT_UNAVAILABLE','Durable preparation differs from actual ancestry')
            value = observed(actual['create_history_actual'],prepared,oid=source['domain']['oid'])
            if source['arguments'][1] in DECLARATIONS:
                from bd_declaration_cache import evidence as cache_evidence
                cache_evidence(prepared['declaration_evidence']['read_cache_evidence'],previous=previous['declaration_head'],
                    owner_class='SGModule' if source['arguments'][1] in MESSAGE_KINDS else 'SGClass')
            if actual!=observation(value,prepared) or [e['payload'] for e in events if e['kind']=='create_history_ready']!=[
                    ready_value(prepared, value)]:
                raise JournalError('REVERT_UNAVAILABLE','Actual retained history proof/ownership differs')
        previous = dict(change=change,before=p['before'],after=actual['after'],
                        state='applied' if index%2 else 'reverted',sequence=index)
        if source['arguments'][1] in DECLARATIONS:
            if change == ancestry['change_id']:
                previous['declaration_head'] = clone(actual['create_material_actual']['declaration_material']['after'])
            else:
                from bd_declaration_history import reconstruct
                proof=actual['create_history_actual']
                previous['declaration_head'] = reconstruct(proof['declaration_current'],proof['declaration_actual'])
            if source['arguments'][1] == 'enumeration':
                from bd_enum_declaration_history import initial_origin, next_origin
                forward = one(log.read(ancestry['change_id']), 'observed')['create_material_actual']
                previous['enum_origin'] = initial_origin(forward) if change == ancestry['change_id'] else next_origin(
                    forward, actual['create_history_actual'])
            if source['arguments'][1] in MESSAGE_KINDS:
                from bd_message_declaration_history import initial_origin,next_origin
                forward=one(log.read(ancestry['change_id']),'observed')['create_material_actual']
                previous['message_origin']=initial_origin(forward) if change==ancestry['change_id'] else next_origin(
                    forward,actual['create_history_actual'])
    result = dict(source=source,native_token=ancestry['change_id'],owner=token,state=previous['state'],
                  sequence=previous['sequence'],current=previous['after'],expected=previous['before'])
    if source['arguments'][1] in DECLARATIONS:
        forward = one(log.read(ancestry['change_id']), 'observed')['create_material_actual']
        result['created_model_oid'] = forward['created_model_oid']
        result['declaration_head'] = previous['declaration_head']
        if source['arguments'][1] == 'enumeration': result['enum_origin'] = clone(previous['enum_origin'])
        if source['arguments'][1] in MESSAGE_KINDS:result['message_origin']=clone(previous['message_origin'])
    return result


def check_preparation(value, *, source, token, owner, state, sequence, current, expected, result_id,
                      enum_origin=None,message_origin=None):
    if source['arguments'][1] == 'enumeration' and enum_origin is not None and value.get('enum_origin') != enum_origin:
        raise JournalError('REVERT_UNAVAILABLE','Enum preparation origin differs from the actual durable ancestry')
    if source['arguments'][1] in MESSAGE_KINDS and message_origin is not None and value.get('message_origin')!=message_origin:
        raise JournalError('REVERT_UNAVAILABLE','Message preparation origin differs from the actual durable ancestry')
    return preparation(value,token=token,owner=owner,state=state,result_id=result_id,sequence=sequence,
        kind=source['arguments'][1],current=current,expected=expected,oid=source['domain']['oid'])


def prepare(adapter,ctx,result_id):
    if getattr(adapter,'create_history_capable',False) is not True:
        raise JournalError('REVERT_UNAVAILABLE','Fixed creation history profile is disabled')
    if ctx['source']['arguments'][1] == 'variable' and getattr(adapter,'create_declaration_history_capable',False) is not True:
        raise JournalError('REVERT_UNAVAILABLE','Fixed original declaration history profile is disabled')
    if ctx['source']['arguments'][1] == 'enumeration' and getattr(adapter,'create_enum_history_capable',False) is not True:
        raise JournalError('REVERT_UNAVAILABLE','Fixed original Enum history execution profile is disabled')
    if ctx['source']['arguments'][1] in MESSAGE_KINDS and getattr(adapter,'create_message_history_capable',False) is not True:
        raise JournalError('REVERT_UNAVAILABLE','Fixed original message history execution profile is disabled')
    domain = ctx['source']['domain']
    if adapter.observe(domain,[])!=ctx['current']:
        raise NativePreconditionConflict('Complete creation head changed; exact inverse unavailable')
    value = adapter.prepare_create_history(domain,ctx['native_token'],ctx['owner'],ctx['state'],result_id)
    if ctx['source']['arguments'][1] == 'enumeration': value = {**value, 'enum_origin': clone(ctx['enum_origin'])}
    if ctx['source']['arguments'][1] in MESSAGE_KINDS:value={**value,'message_origin':clone(ctx['message_origin'])}
    prepared = check_preparation(value,source=ctx['source'],token=ctx['native_token'],owner=ctx['owner'],
        state=ctx['state'],sequence=ctx['sequence'],current=ctx['current'],expected=ctx['expected'],result_id=result_id,
        enum_origin=ctx.get('enum_origin'),message_origin=ctx.get('message_origin'))
    if ctx['source']['arguments'][1] in DECLARATIONS and (
            prepared['declaration_evidence']['created_model_oid'] != ctx['created_model_oid']):
        raise JournalError('REVERT_UNAVAILABLE','Declaration history differs from original forward model OID')
    if ctx['source']['arguments'][1] in DECLARATIONS:
        from bd_declaration_cache import evidence as cache_evidence
        cache_evidence(prepared['declaration_evidence']['read_cache_evidence'],previous=ctx['declaration_head'],
            owner_class='SGModule' if ctx['source']['arguments'][1] in MESSAGE_KINDS else 'SGClass')
    return prepared


def preview(log,token,request_id,adapter,live_lock):
    with file_lock(log.root/'journal.lock'),live_lock():
        try:
            ctx=context(log,token)
            result_id='edit_'+fingerprint(dict(domain=ctx['source']['domain'],request_id=request_id))
            p=prepare(adapter,ctx,result_id)
            return dict(status='preview',setter_called=False,operation='create_inverse',change_id=token,
                allocator=p['allocator'],validation=dict(native_constraints='passed',complete_current_verified=True,
                    local_merge_enabled=False),recovery_record_created=False,execution_revalidates=True)
        except Exception as error:
            return dict(status='conflict' if isinstance(error,NativePreconditionConflict) else 'rejected',
                setter_called=False,operation='create_inverse',error=str(error),recovery_record_created=False,
                execution_revalidates=True)


def execute(log,token,request_id,adapter,live_lock):
    domain=log.origin(token)['intent']['domain']
    intent=dict(domain=domain,request_id=request_id,reverts=token)
    result_id='edit_'+fingerprint(dict(domain=domain,request_id=request_id));path=log._path(result_id)
    with file_lock(log.root/'journal.lock'):
        if path.exists():
            events=log.read(result_id)
            if not events or events[0]['payload']!=intent:
                raise JournalError('REQUEST_ID_CONFLICT','Creation history request differs')
            return log.receipt(result_id,events)
        ctx=context(log,token)
        with live_lock():
            adapter.write_preflight(domain)
            path.mkdir();events=[];log._append(path,events,'intent',intent)
            try:
                p=prepare(adapter,ctx,result_id)
                log._append(path,events,'prepared',dict(before=p['before'],inverse_expected=p['expected'],create_history=p))
            except Exception as error:
                log._append(path,events,'finished',dict(status='conflict' if isinstance(error,NativePreconditionConflict)
                    else 'rejected',setter_called=False,automatic_retry=False,error=str(error)))
                return log.receipt(result_id,events)
            try:
                log._append(path,events,'started',dict(native_token=ctx['native_token'],owner=token,
                    state=ctx['state'],result_change_id=result_id))
            except OSError:
                return log.receipt(result_id,events)
            try:
                value=adapter.execute_create_history(domain,p)
                log._append(path,events,'create_history_actual_reply',clone(value))
                value=observed(value,p,oid=domain['oid'])
                log._append(path,events,'observed',observation(value,p))
                from bd_structure_journal import differences
                log._append(path,events,'finished',dict(status='verified_local',reverts=token,
                    differences=differences(p['before'],value['observation']),automatic_retry=False,
                    local_merge_enabled=False,allocator=p['allocator']))
                ready(log,path,events,p,value)
                adapter.confirm_create_history(domain,p)
            except NativePreconditionConflict as error:
                log._append(path,events,'finished',dict(status='conflict',setter_called=False,
                    automatic_retry=False,error=str(error)))
            except Exception as error:
                log._record_unknown(path,events,error)
                log._append(path,events,'create_history_confirmation_failed',dict(error=str(error),automatic_retry=False))
            return log.receipt(result_id,events)


def reconcile_locked(log,token,adapter,*,commit=False):
    events=log.read(token);path=log._path(token);intent=one(events,'intent');durable=one(events,'prepared')
    one(events,'started');ctx=context(log,intent['reverts']);domain=intent['domain']
    if domain!=ctx['source']['domain'] or getattr(adapter,'create_history_capable',False) is not True:
        raise JournalError('RECOVERY_UNRESOLVED','Exact enabled retained creation history domain required')
    if ctx['source']['arguments'][1] == 'variable' and getattr(adapter,'create_declaration_history_capable',False) is not True:
        raise JournalError('RECOVERY_UNRESOLVED','Explicit retained declaration history required for recovery')
    if ctx['source']['arguments'][1] == 'enumeration' and getattr(adapter,'create_enum_history_capable',False) is not True:
        raise JournalError('RECOVERY_UNRESOLVED','Explicit original Enum history execution profile required for recovery')
    if ctx['source']['arguments'][1] in MESSAGE_KINDS and getattr(adapter,'create_message_history_capable',False) is not True:
        raise JournalError('RECOVERY_UNRESOLVED','Explicit original message history execution profile required for recovery')
    p=check_preparation(durable['create_history'],source=ctx['source'],token=ctx['native_token'],
        owner=ctx['owner'],state=ctx['state'],sequence=ctx['sequence'],current=ctx['current'],
        expected=ctx['expected'],result_id=token,enum_origin=ctx.get('enum_origin'),message_origin=ctx.get('message_origin'))
    if ctx['source']['arguments'][1] in DECLARATIONS and p['declaration_evidence']['created_model_oid'] != ctx['created_model_oid']:
        raise JournalError('RECOVERY_UNRESOLVED','Actual forward declaration OID differs from recovery preparation')
    marker=pending.pending_path(domain)
    expected=dict(domain=domain,command='create_history',native_token=p['native_token'],automatic_retry=False,
        managed_context={k:p[k] for k in ('owner_change_id','state','result_change_id','signature')})
    if marker.exists() and json.loads(marker.read_text(encoding='utf-8'))!=expected:
        raise JournalError('RECOVERY_UNRESOLVED','Another request owns creation history quarantine')
    reply=adapter.create_history_status(domain,p)
    cache_current=None;cache_summary=None;current_matches_terminal=True
    definition_current=None
    message_current=None
    if p['kind'] in DECLARATIONS:
        keys={'profile','actual','read_cache_evidence','model_setters_called','store_called','execution_redispatched'}
        if p['kind']=='enumeration': keys |= {'definition_evidence'}
        if p['kind'] in MESSAGE_KINDS:keys |= {'message_evidence'}
        profile='native_create_exact_terminal_query_v4' if p['kind'] in MESSAGE_KINDS else 'native_create_exact_terminal_query_v3' if p['kind']=='enumeration' else 'native_create_exact_terminal_query_v2'
        if (type(reply) is not dict or set(reply)!=keys or reply['profile']!=profile
                or type(reply['model_setters_called']) is not int or reply['model_setters_called']!=0
                or reply['store_called'] is not False or reply['execution_redispatched'] is not False):
            raise JournalError('RECOVERY_UNRESOLVED','Complete no-replay declaration terminal query required')
        definition_current=reply.get('definition_evidence')
        message_current=reply.get('message_evidence')
        cache_current=reply['read_cache_evidence'];reply=reply['actual']
    value=observed(reply,p,oid=domain['oid'])
    if cache_current is not None:
        from bd_declaration_cache import evidence as cache_evidence
        from bd_declaration_history import reconstruct
        terminal=reconstruct(value['declaration_current'],value['declaration_actual'])
        cache_summary=cache_evidence(cache_current,previous=terminal,owner_class='SGModule' if p['kind'] in MESSAGE_KINDS else 'SGClass')
        current_matches_terminal=not cache_summary['changes'] and cache_summary['new_objects']==0
    if definition_current is not None:
        from bd_enum_declaration_history import terminal_query
        terminal_query(definition_current, value, p, cache_current)
    if message_current is not None:
        from bd_message_declaration_history import terminal_query
        terminal_query(message_current,value,p,cache_current)
    actual=observation(value,p);old=[e['payload'] for e in events if e['kind']=='observed']
    if old and old!=[actual]:
        raise JournalError('RECOVERY_UNRESOLVED','Retained creation terminal differs from durable actual evidence')
    if commit:
        query=dict(actual=value,execution_redispatched=False)
        if cache_current is not None:query['read_cache_evidence']=clone(cache_current)
        if definition_current is not None:query['definition_evidence']=clone(definition_current)
        if message_current is not None:query['message_evidence']=clone(message_current)
        log._append(path,events,'create_history_terminal_query',query)
        if not old:log._append(path,events,'observed',actual)
        if log.receipt(token,events)['status']!='verified_local':
            from bd_structure_journal import differences
            log._append(path,events,'finished',dict(status='verified_local',reverts=intent['reverts'],
                differences=differences(p['before'],value['observation']),automatic_retry=False,
                local_merge_enabled=False,allocator=p['allocator'],recovered_from_retained_terminal=True))
        ready(log,path,events,p,value)
        if marker.exists():adapter.confirm_create_history(domain,p)
    result=dict(change_id=token,profile='retained_create_history_terminal_query_v1',
        current_matches_terminal=current_matches_terminal,terminal_verified=True,reconciled=commit,
        instance_quarantined=marker.exists(),execution_redispatched=False,model_setters_called=0,
        store_called=False,automatic_retry=False,receipt=log.receipt(token,events))
    if cache_summary is not None:
        result.update(profile='retained_create_history_terminal_query_v2',
            current_non_cache_original_state_matches_terminal=True,read_cache_differences=cache_summary)
    if definition_current is not None:
        result.update(profile='retained_create_history_terminal_query_v3',
            definition_reference_targets_verified=True,
            definition_references_current=clone(definition_current['definition_references_current']),
            database_record_references_current=clone(definition_current['definition_references_persisted_current']))
    if message_current is not None:
        result.update(profile='retained_create_history_terminal_query_v4',owner_reference_targets_verified=True,
            owner_references_current=clone(message_current['owner_references_current']),
            database_record_references_current=clone(message_current['owner_database_record_references_current']))
    return result
