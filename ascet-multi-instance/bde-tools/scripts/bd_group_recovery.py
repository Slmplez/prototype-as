"""Reconcile group journals with local terminal evidence; never resume setters."""
import json

import bd_service as service
import bd_recovery
from bd_edit_journal import JournalError, file_lock, fingerprint
from bd_group_tools import journal, publish


def document(result, session):
    header, body = result['content'].split('\n\n', 1)
    page = json.loads(header)['page']
    while page['has_more']:
        resumed = service.resume(page['next_cursor'], session)
        header, chunk = resumed['content'].split('\n\n', 1)
        body += chunk
        page = json.loads(header)['page']
    return json.loads(body)


def expected_local(log, token, source, started):
    inverse = 'reverts' in source
    original = log.read(source['reverts'])[0]['payload'] if inverse else source
    index = started['index']
    if type(index) is not int or not 0 <= index < len(original['steps']):
        raise JournalError('RECOVERY_UNRESOLVED', 'Invalid group step index')
    patch = original['steps'][index]['request']
    request_id = ('group-revert-' + fingerprint({'group':token,'index':index})
                  if inverse else patch['request_id'])
    expected_id = 'edit_' + fingerprint({'domain':patch['domain'],'request_id':request_id})
    if started['change_id'] != expected_id:
        raise JournalError('RECOVERY_UNRESOLVED', 'Local change ID differs from group intent')
    if inverse:
        reverts = 'edit_' + fingerprint({'domain':patch['domain'],'request_id':patch['request_id']})
        if started.get('reverts') != reverts:
            raise JournalError('RECOVERY_UNRESOLVED', 'Group inverse target differs from intent')
        expected = {'domain':patch['domain'],'request_id':request_id,'reverts':reverts}
    else:
        expected = patch
        if source.get('mode') == 'connection_sequence':
            planned = [event['payload']['request'] for event in log.read(token)
                       if event['kind'] == 'step_planned' and event['payload']['index'] == index]
            if len(planned) != 1 or {k:v for k,v in planned[0].items() if k != 'expect'} != {k:v for k,v in patch.items() if k != 'expect'}:
                raise JournalError('RECOVERY_UNRESOLVED', 'Dependent step lacks its durable resolved precondition')
            expected = planned[0]
        elif source.get('mode') == 'construction_sequence':
            from bd_construction_sequence import resolved_patch
            planned = [event['payload']['request'] for event in log.read(token)
                       if event['kind'] == 'step_planned' and event['payload']['index'] == index]
            completed = [step for step in log.receipt(token, log.read(token))['steps'] if step['index'] < index]
            resolved = resolved_patch(source, index, completed, log.local)
            if planned != [resolved]:
                raise JournalError('RECOVERY_UNRESOLVED', 'Construction lacks its exact durable actual dependency resolution')
            expected = resolved
    return expected


def reconcile(log, token, session, resolve, apply=False):
    """resolve inspects a local native record and may persist its terminal reply."""
    with file_lock(log.root / 'group.lock'):
        events = log.read(token)
        if not events or events[0]['kind'] != 'intent':
            raise JournalError('RECOVERY_UNRESOLVED', 'Group intent is missing')
        source = events[0]['payload']
        if source['session'] != session:
            raise JournalError('IDENTITY_UNRESOLVED', 'Original group session required')
        receipt = log.receipt(token,events)
        started = [event['payload'] for event in events if event['kind']=='step_started']
        if len({row['index'] for row in started}) != len(started):
            raise JournalError('RECOVERY_UNRESOLVED', 'Duplicate group dispatch index')
        diagnostics = []
        confirmed = []
        unresolved = []
        current = {step['index']:step['receipt'] for step in receipt['steps']}
        changed = False
        for row in started:
            item = {'index':row['index'],'change_id':row['change_id']}
            try:
                expected = expected_local(log,token,source,row)
                local_events = log.local.read(row['change_id'])
                if not local_events or local_events[0]['kind'] != 'intent' or local_events[0]['payload'] != expected:
                    raise JournalError('RECOVERY_UNRESOLVED', 'Local journal does not match group intent')
                local = log.local.receipt(row['change_id'],local_events)
                if local['status'] == 'outcome_unknown':
                    item['native'] = resolve(row['change_id'],apply)
                    if item['native'].get('model_setters_called') != 0:
                        raise JournalError('RECOVERY_UNRESOLVED', 'Recovery resolver did not confirm zero setters')
                    local = log.local.receipt(row['change_id'],log.local.read(row['change_id']))
                accepted = ('verified_local','restore_mismatch') if 'reverts' in source else ('applied_observed','postcondition_mismatch')
                if local['status'] not in accepted and not (local['status'] in ('rejected','conflict') and local.get('setter_called') is False):
                    raise JournalError('RECOVERY_UNRESOLVED', 'Local step has no confirmed terminal outcome')
                item['status']=local['status']
                confirmed.append({'index':row['index'],'receipt':local})
                if apply and current.get(row['index']) != local:
                    log._append(log._path(token),events,'step_finished',{'index':row['index'],'receipt':local})
                    changed=True
            except (JournalError,service.ToolError) as error:
                item.update(status='outcome_unknown',code=error.code,error=str(error))
                unresolved.append(row['index'])
            diagnostics.append(item)
        if apply and not unresolved and (changed or receipt['status']=='outcome_unknown'):
            inverse = 'reverts' in source
            planned = len(log.recovery_steps(source['reverts'])) if inverse else len(source['steps'])
            success = 'verified_local' if inverse else 'applied_observed'
            modified = [row for row in confirmed if row['receipt']['status'] in
                        ('verified_local','restore_mismatch','applied_observed','postcondition_mismatch')]
            status = ('reverted' if inverse else 'completed') if len(confirmed)==planned and all(
                row['receipt']['status']==success for row in confirmed) else 'partial' if modified else 'conflict' if inverse else 'rejected'
            log._append(log._path(token),events,'reconciliation',{'setter_called':False,
                'confirmed_indices':[row['index'] for row in confirmed],'continued_steps':False})
            log._append(log._path(token),events,'finished',{'status':status,'reconciled':True,
                'automatic_retry':False,'continued_steps':False,'model_setters_called':0})
        receipt = log.receipt(token,events)
        return {'change_id':token,'receipt':receipt,'resources':diagnostics,
                'unresolved_steps':unresolved,'reconciled':apply and not unresolved,
                'model_setters_called':0,'automatic_retry':False,'continued_steps':False,
                'source':'durable local journals and retained native terminal observations'}


def inspect(args, session, budget):
    if set(args)-{'query','change_id','reconcile','max_bytes'} or type(args.get('reconcile',False)) is not bool:
        service.fail('INVALID_INPUT','Group recovery requires change_id and optional reconcile boolean')
    log = journal()
    def resolve(token, apply):
        return document(bd_recovery.inspect({'query':'recovery','change_id':token,'reconcile':apply},session,12288),session)
    try:
        result = reconcile(log,args['change_id'],session,resolve,args.get('reconcile',False))
        result['receipt'] = publish(log,result['receipt'])
        response = service.paged(service.dump(result),{'query':'recovery','change_id':args['change_id'],
                                'record_type':'resource_group'},session,budget)
        response['is_error'] = bool(result['unresolved_steps'])
        return response
    except JournalError as error:
        service.fail(error.code,str(error))
