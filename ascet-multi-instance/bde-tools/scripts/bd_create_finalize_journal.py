"""Journaled original graphical history closure; no retry of unknown source patches."""
import json
from bd_edit_journal import JournalError,NativePreconditionConflict,clone,file_lock,fingerprint
from bd_create_history_journal import context as history_context,one
from bd_create_finalize import preparation,observed
import bd_instance_pending as pending
from bd_message_declaration_material import KINDS as MESSAGE_KINDS


def context(log,head):
    ctx=history_context(log,head)
    if ctx['state']!='reverted':raise JournalError('REVERT_UNAVAILABLE','Completed graphical undo required for finalization')
    original=one(log.read(ctx['native_token']),'prepared')['before']
    if ctx['current']!=original:raise JournalError('REVERT_UNAVAILABLE','Complete original typed graph required')
    result={**ctx,'original':original}
    if ctx['source']['arguments'][1] in {'variable','enumeration'}|MESSAGE_KINDS:
        result['declaration_original']=one(log.read(ctx['native_token']),'prepared')['create_material_prepared']['declaration_material']['before']
    return result


def check(log,intent,value,result_id):
    ancestry=log.origin(intent['reverts']);source=ancestry['intent']
    if (intent['domain']!=source['domain'] or intent['finalizes']!=ancestry['change_id']
            or source.get('operation')!='create_block' or source['arguments'][1] not in {'literal','operator','variable','enumeration'}|MESSAGE_KINDS):
        raise JournalError('RECOVERY_UNRESOLVED','Exact retained original graphical finalization ancestry required')
    head_actual=one(log.read(intent['reverts']),'observed')['create_history_actual']
    original=one(log.read(ancestry['change_id']),'prepared')['before']
    result=preparation(value,token=ancestry['change_id'],owner=intent['reverts'],result_id=result_id,
        sequence=head_actual['execution']['sequence'],current=head_actual['observation'],original=original,oid=source['domain']['oid'])
    if source['arguments'][1]=='variable':
        from bd_declaration_history import reconstruct
        from bd_declaration_finalize import preparation as declaration_preparation
        if result['profile']!='native_create_finalize_preparation_v3':
            raise JournalError('RECOVERY_UNRESOLVED','Variable finalization requires complete original-body proof')
        declaration_preparation(result['declaration_evidence'],
            previous=reconstruct(head_actual['declaration_current'],head_actual['declaration_actual']),
            original=one(log.read(ancestry['change_id']),'prepared')['create_material_prepared']['declaration_material']['before'],
            model_oid=one(log.read(ancestry['change_id']),'observed')['create_material_actual']['created_model_oid'])
    if source['arguments'][1]=='enumeration':
        from bd_enum_declaration_history import next_origin
        origin=next_origin(one(log.read(ancestry['change_id']),'observed')['create_material_actual'],head_actual)
        if result['profile']!='native_create_finalize_preparation_v4' or result['enum_origin']!=origin:
            raise JournalError('RECOVERY_UNRESOLVED','Enum finalization requires its exact original forward and latest actual head')
    if source['arguments'][1] in MESSAGE_KINDS:
        from bd_message_declaration_history import next_origin
        origin=next_origin(one(log.read(ancestry['change_id']),'observed')['create_material_actual'],head_actual)
        if result['profile']!='native_create_finalize_preparation_v5' or result['message_origin']!=origin:
            raise JournalError('RECOVERY_UNRESOLVED','Message finalization requires its exact original forward and latest actual head')
    return result


def prepare(adapter,ctx,result_id):
    if getattr(adapter,'create_finalize_capable',False) is not True:
        raise JournalError('REVERT_UNAVAILABLE','Fixed original graphical finalization is disabled')
    if ctx['source']['arguments'][1]=='variable' and getattr(adapter,'create_declaration_finalize_capable',False) is not True:
        raise JournalError('REVERT_UNAVAILABLE','Fixed original declaration finalization is disabled')
    if ctx['source']['arguments'][1]=='enumeration' and getattr(adapter,'create_enum_finalize_capable',False) is not True:
        raise JournalError('REVERT_UNAVAILABLE','Independent Enum original declaration finalization is disabled')
    if ctx['source']['arguments'][1] in MESSAGE_KINDS and getattr(adapter,'create_message_finalize_capable',False) is not True:
        raise JournalError('REVERT_UNAVAILABLE','Independent Module message original declaration finalization is disabled')
    domain=ctx['source']['domain']
    if adapter.observe(domain,[])!=ctx['current']:
        raise NativePreconditionConflict('Complete original typed current changed')
    value=adapter.prepare_create_finalize(domain,ctx['native_token'],ctx['owner'],result_id)
    if ctx['source']['arguments'][1]=='enumeration':
        value={**value,'enum_origin':clone(ctx['enum_origin'])}
    if ctx['source']['arguments'][1] in MESSAGE_KINDS:
        value={**value,'message_origin':clone(ctx['message_origin'])}
    result=preparation(value,token=ctx['native_token'],owner=ctx['owner'],result_id=result_id,
        sequence=ctx['sequence'],current=ctx['current'],original=ctx['original'],oid=domain['oid'])
    if ctx['source']['arguments'][1]=='variable':
        from bd_declaration_finalize import preparation as declaration_preparation
        if result['profile']!='native_create_finalize_preparation_v3':
            raise JournalError('REVERT_UNAVAILABLE','Complete variable body finalization required')
        declaration_preparation(result['declaration_evidence'],previous=ctx['declaration_head'],
            original=ctx['declaration_original'],model_oid=ctx['created_model_oid'])
    if ctx['source']['arguments'][1]=='enumeration' and result['profile']!='native_create_finalize_preparation_v4':
        raise JournalError('REVERT_UNAVAILABLE','Complete original Enum finalization proof required')
    if ctx['source']['arguments'][1] in MESSAGE_KINDS and result['profile']!='native_create_finalize_preparation_v5':
        raise JournalError('REVERT_UNAVAILABLE','Complete original Module message finalization proof required')
    return result


def close(log,intent,actual,result_id):
    ancestry=log.origin(intent['reverts'])
    value=dict(finalization_change_id=result_id,native_token=intent['finalizes'],
        actual_sha256=fingerprint(actual),redo_closed=True,material_retained=True)
    for change in ancestry['chain']:
        events=log.read(change);old=[e['payload'] for e in events if e['kind']=='create_history_closed']
        if old and old!=[value]:raise JournalError('JOURNAL_CONFLICT','Another finalization owns original history closure')
        if not old:log._append(log._path(change),events,'create_history_closed',value)


def preview(log,head,request_id,adapter,live_lock):
    with file_lock(log.root/'journal.lock'),live_lock():
        try:
            ctx=context(log,head);rid='edit_'+fingerprint(dict(domain=ctx['source']['domain'],request_id=request_id))
            p=prepare(adapter,ctx,rid)
            return dict(status='preview',operation='finalize_create_history',change_id=head,
                allocator=clone(p['allocator']),setter_called=False,source_patch_dispatched=False,
                recovery_record_created=False,execution_revalidates=True)
        except Exception as error:
            return dict(status='conflict' if isinstance(error,NativePreconditionConflict) else 'rejected',
                error=str(error),setter_called=False,source_patch_dispatched=False,recovery_record_created=False)


def finish(log,path,events,intent,p,actual,recovered=False):
    close(log,intent,actual,p['result_change_id'])
    log._append(path,events,'finished',dict(status='finalized',finalizes=intent['finalizes'],
        reverts=intent['reverts'],differences=[],automatic_retry=False,allocator=clone(p['allocator']),
        original_native_source_verified=True,redo_closed=True,material_retained=True,
        execution=clone(actual['execution']),recovered_from_retained_terminal=recovered,
        **({'namespace':clone(actual['namespace'])} if 'namespace' in actual else {})))


def execute(log,head,request_id,adapter,live_lock):
    source=log.origin(head);domain=source['intent']['domain']
    intent=dict(domain=domain,request_id=request_id,reverts=head,finalizes=source['change_id'])
    rid='edit_'+fingerprint(dict(domain=domain,request_id=request_id));path=log._path(rid)
    with file_lock(log.root/'journal.lock'):
        if path.exists():
            events=log.read(rid)
            if not events or events[0]['payload']!=intent:raise JournalError('REQUEST_ID_CONFLICT','Finalization request differs')
            return log.receipt(rid,events)
        ctx=context(log,head)
        with live_lock():
            adapter.write_preflight(domain);path.mkdir();events=[];log._append(path,events,'intent',intent)
            try:
                p=prepare(adapter,ctx,rid);log._append(path,events,'prepared',dict(create_finalize=p))
            except Exception as error:
                log._append(path,events,'finished',dict(status='conflict' if isinstance(error,NativePreconditionConflict)
                    else 'rejected',error=str(error),source_patch_dispatched=False,automatic_retry=False))
                return log.receipt(rid,events)
            try:log._append(path,events,'started',dict(native_token=p['native_token'],owner=head,result_change_id=rid))
            except OSError:return log.receipt(rid,events)
            try:
                raw=adapter.execute_create_finalize(domain,p)
                log._append(path,events,'create_finalize_actual_reply',clone(raw))
                actual=observed(raw,p,oid=domain['oid']);log._append(path,events,'observed',observation(actual))
                finish(log,path,events,intent,p,actual);adapter.confirm_create_finalize(domain,p)
            except NativePreconditionConflict as error:
                log._append(path,events,'finished',dict(status='conflict',error=str(error),source_patch_dispatched=False,automatic_retry=False))
            except Exception as error:log._record_unknown(path,events,error)
            return log.receipt(rid,events)


def reconcile_locked(log,token,adapter,*,commit=False):
    events=log.read(token);intent=one(events,'intent');p=check(log,intent,one(events,'prepared')['create_finalize'],token)
    one(events,'started');domain=intent['domain'];marker=pending.pending_path(domain)
    expected=dict(domain=domain,command='create_finalize',native_token=p['native_token'],automatic_retry=False,
        managed_context={k:p[k] for k in ('owner_change_id','result_change_id','signature')})
    if marker.exists() and json.loads(marker.read_text(encoding='utf-8'))!=expected:
        raise JournalError('RECOVERY_UNRESOLVED','Another request owns finalization quarantine')
    if any(e['kind']=='recovery_released' for e in events):
        if marker.exists():raise JournalError('RECOVERY_UNRESOLVED','Released material cannot resolve a remaining quarantine')
        actual=observed(one(events,'observed')['create_finalize_actual'],p,oid=domain['oid'])
        if log.receipt(token,events)['status']!='finalized':
            raise JournalError('RECOVERY_UNRESOLVED','Released material lacks complete durable finalized receipt')
        return dict(change_id=token,profile='released_create_finalization_history_v1',terminal_verified=True,
            original_native_source_verified=True,verification_source='complete durable historical actual proof',
            current_state='not_queried_material_released',reconciled=False,instance_quarantined=False,
            execution_redispatched=False,model_setters_called=0,store_called=False,receipt=log.receipt(token,events))
    reply=adapter.create_finalize_status(domain,p);cache_query=None;cache_raw=None;enum_query=None;message_query=None
    message=p['profile']=='native_create_finalize_preparation_v5'
    enumeration=p['profile']=='native_create_finalize_preparation_v4'
    if p['profile'] in ('native_create_finalize_preparation_v3','native_create_finalize_preparation_v4','native_create_finalize_preparation_v5'):
        from bd_declaration_cache import evidence as cache_evidence
        query_keys={'profile','actual','read_cache_evidence','original_declaration_current_verified',
            'model_setters_called','store_called','execution_redispatched'}|({'enum_definition_evidence'} if enumeration else set())|({'message_owner_evidence'} if message else set())
        if (type(reply) is not dict or set(reply)!=query_keys
                or reply['profile']!=('native_create_finalize_terminal_query_v5' if message else 'native_create_finalize_terminal_query_v4' if enumeration else 'native_create_finalize_terminal_query_v3')
                or reply['model_setters_called']!=0 or type(reply['model_setters_called']) is not int
                or reply['store_called'] is not False or reply['execution_redispatched'] is not False):
            raise JournalError('RECOVERY_UNRESOLVED','Pure complete declaration finalization terminal query required')
        cache_raw=clone(reply['read_cache_evidence'])
        cache_query=cache_evidence(cache_raw,previous=p['declaration_evidence']['target']['expected'],
            owner_class='SGModule' if message else 'SGClass')
        exact=not cache_query['changes'] and cache_query['new_objects']==0
        if type(reply['original_declaration_current_verified']) is not bool or reply['original_declaration_current_verified']!=exact:
            raise JournalError('RECOVERY_UNRESOLVED','Original declaration baseline flag differs from complete current evidence')
        if enumeration:
            from bd_enum_declaration_finalize import terminal_query
            enum_query=terminal_query(reply['enum_definition_evidence'],reply['actual'],cache_raw)
        if message:
            from bd_message_declaration_finalize import terminal_query
            message_query=terminal_query(reply['message_owner_evidence'],reply['actual'],cache_raw)
        reply=reply['actual']
    actual=observed(reply,p,oid=domain['oid'])
    old=[e['payload'] for e in events if e['kind']=='observed']
    if old and old!=[observation(actual)]:
        raise JournalError('RECOVERY_UNRESOLVED','Finalization terminal differs from complete durable actual')
    if commit:
        log._append(log._path(token),events,'create_finalize_terminal_query',dict(actual_sha256=fingerprint(actual),execution_redispatched=False,
            **({'read_cache_evidence':cache_raw,'read_cache_differences':clone(cache_query),
                'current_matches_terminal':exact,'original_declaration_current_verified':exact,
                'model_setters_called':0,'store_called':False} if cache_raw is not None else {}),
            **({'enum_definition_evidence':clone(enum_query)} if enum_query is not None else {}),
            **({'message_owner_evidence':clone(message_query)} if message_query is not None else {})))
        if not old:log._append(log._path(token),events,'observed',observation(actual))
        if log.receipt(token,events)['status']!='finalized':finish(log,log._path(token),events,intent,p,actual,recovered=True)
        if marker.exists():adapter.confirm_create_finalize(domain,p)
    return dict(change_id=token,profile='retained_create_finalization_terminal_query_v2' if cache_query is not None else 'retained_create_finalization_terminal_query_v1',terminal_verified=True,
        original_native_source_verified=True,current_matches_terminal=exact if cache_query is not None else True,reconciled=commit,
        instance_quarantined=marker.exists(),execution_redispatched=False,model_setters_called=0,store_called=False,
        receipt=log.receipt(token,events),**({'read_cache_differences':clone(cache_query),
            'current_non_cache_original_state_matches_terminal':True,
            'original_declaration_current_verified':exact} if cache_query is not None else {}),
        **({'enum_definition_reference_targets_verified':True} if enum_query is not None else {}),
        **({'message_owner_reference_targets_verified':True} if message_query is not None else {}))


def observation(value):
    return dict(after=clone(value['observation']),create_finalize_actual=clone(value),library_effects=[],scope_effects=[])


def receipt_projection(change_id,events):
    intent=one(events,'intent');p=one(events,'prepared')['create_finalize']
    p=preparation(p,token=intent['finalizes'],owner=intent['reverts'],result_id=change_id,sequence=p['sequence'],
        current=p['before'],original=p['expected'],oid=intent['domain']['oid'])
    actual=one(events,'observed');value=observed(actual['create_finalize_actual'],p,oid=intent['domain']['oid'])
    if actual!=observation(value):raise JournalError('JOURNAL_CORRUPT','Finalization observation differs from complete actual proof')
    extras={}
    if p['profile'] in ('native_create_finalize_preparation_v3','native_create_finalize_preparation_v4','native_create_finalize_preparation_v5'):
        if p['profile']=='native_create_finalize_preparation_v5':
            from bd_message_declaration_finalize import observed as declaration_observed
        elif p['profile']=='native_create_finalize_preparation_v4':
            from bd_enum_declaration_finalize import observed as declaration_observed
        else:
            from bd_declaration_finalize import observed as declaration_observed
        from bd_declaration_cache import evidence as cache_evidence
        extras=dict(declaration_differences=declaration_observed(value,p['declaration_evidence']),
            read_cache_differences=cache_evidence(p['declaration_evidence']['target']['read_cache_evidence'],
                owner_class='SGModule' if p['profile']=='native_create_finalize_preparation_v5' else 'SGClass'))
    return dict(source_differences=[dict(source_root=p['source_evidence']['source_root'],field=p['allocator']['field'],
        before=p['allocator']['before'],after=p['allocator']['expected'])] if p['allocator']['before']!=p['allocator']['expected'] else [],
        graphical_differences=dict(changed_entries=0,new_objects=0,current_objects=len(value['graphical_current']['objects']),
            current_sha256=fingerprint(value['graphical_current']),actual_sha256=fingerprint(value['graphical_actual'])),
        **({'namespace':clone(value['namespace'])} if 'namespace' in value else {}),**extras)
