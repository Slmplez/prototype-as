"""Original primitive-message declaration before/actual-after; no inverse authorization."""
import re
from bd_declaration_material import KEYS as BASE_KEYS, schema
from bd_edit_journal import clone, fingerprint
from bd_enum_declaration_before import reference_set
from bd_message_declaration_before import body
from bd_message_declaration_inventory import SEND, RECEIVE
from bd_native_graphical_effects import same_current,validate_actual_diff,summary as diff_summary


KEYS=BASE_KEYS|frozenset(('generation kind request_name model_type message_scope model_refs_before model_refs_after '
    'owner_references_before owner_references_after owner_database_record_references_before '
    'owner_database_record_references_after').split())
KINDS=frozenset(('receive_message','send_message','send_receive_message'))
TYPE_CLASS=dict(cont='SGReal',sdisc='SGSignedInteger',udisc='SGUnsignedInteger',log='SGBoolean')
API_CLASS=dict(receive_message='EtasAPIModelReceiveMessage',send_message='EtasAPIModelSendMessage',
    send_receive_message='EtasAPIModelSendReceiveMessage')
MODEL_FIELDS=['properties','comment','elementName','aliasName','sgClass','owner','attributes','kind',
    'elementKind','memory','methodAccessEnabled','formula','symbolicName','isSend','isReceive']


def validate(value,*,token,oid,phase):
    expected_keys=KEYS|{'created_owner_binding'} if phase=='attached' else KEYS
    if type(value) is not dict or set(value)!=expected_keys or phase not in ('prepared','attached'):
        raise ValueError('Exact original primitive-message declaration material required')
    fixed=dict(profile='native_message_declaration_material_v1',native_token=token,component_oid=oid,
        phase=phase,foreign_database_boundaries=True,same_original_objects_retained=True,
        inverse_authorized=False,model_setters_called=0,store_called=False)
    if any(type(value.get(k)) is not type(v) or value.get(k)!=v for k,v in fixed.items()):
        raise ValueError('Original message factory binding/authorization differs')
    if (type(value['generation']) is not int or value['generation']<=0 or value['kind'] not in KINDS
            or value['model_type'] not in TYPE_CLASS or value['message_scope'] not in ('local','imported','exported')
            or type(value['request_name']) is not str
            or not re.fullmatch(r'[A-Za-z_][A-Za-z0-9_]{0,63}', value['request_name'])):
        raise ValueError('Bounded original message namespace/role/type/scope required')
    before,fields=schema(value['before'],value['before_schema'])
    owner=value['owner_ref']
    body(dict(owner_ref=owner,roots=value['roots_before'],model_refs=value['model_refs_before'],
        configuration_links=value['configuration_links_before']),before,fields)
    for key in ('owner_references_before','owner_database_record_references_before'):reference_set(value[key])
    after_keys=('after','after_schema','roots_after','configuration_links_after','actual_diff','created_model_ref',
        'model_refs_after','owner_references_after','owner_database_record_references_after')
    if phase=='prepared':
        if any(value[k] is not None for k in after_keys):
            raise ValueError('Prepared message cannot invent actual factory results')
    else:
        after,names=schema(value['after'],value['after_schema'])
        body(dict(owner_ref=owner,roots=value['roots_after'],model_refs=value['model_refs_after'],
            configuration_links=value['configuration_links_after']),after,names)
        if any(names.get(ref) != fields[ref] for ref in before):
            raise ValueError('Original message body slot schema changed after factory')
        validate_actual_diff(value['before'],value['actual_diff'])
        expected=clone(value['before']);bound={r['ref']:r for r in expected['objects']}
        for row in value['actual_diff']['new_objects']:
            copied=clone(row);expected['objects'].append(copied);bound[row['ref']]=copied
        for delta in value['actual_diff']['changes']:
            row=bound[delta['object']]
            if row['kind']=='fields':row['value'][delta['index']-1]=clone(delta['after'])
            else:row['value']=clone(delta['after'])
        if not same_current(expected,value['after']):
            raise ValueError('Complete actual message body diff does not explain after image')
        created=value['created_model_ref']; old=set(value['model_refs_before']);new=set(value['model_refs_after'])
        if (created in before or created not in after or after[created]['class']!='SGVariable'
                or after[created]['kind']!='fields' or new-old!={created} or not old<=new
                or not {r['ref'] for r in value['roots_before']}<={r['ref'] for r in value['roots_after']}):
            raise ValueError('Actual message must be the sole retained original SGVariable factory object')
        if names[created]!=MODEL_FIELDS:
            raise ValueError('Complete original SGVariable message slot schema required')
        def member(ref,name):return after[ref]['value'][names[ref].index(name)]
        native_type=after.get(member(created,'sgClass').get('ref'))
        if native_type is None or native_type['class']!=TYPE_CLASS[value['model_type']]:
            raise ValueError('Actual original message native type differs from requested primitive type')
        attributes=member(created,'attributes')
        if (attributes.get('class')!='SmallInteger' or not attributes.get('value','').isdigit()):
            raise ValueError('Audited integer original message attributes required')
        bits=int(attributes['value']);wanted_receive=value['kind'] in ('receive_message','send_receive_message')
        wanted_send=value['kind'] in ('send_message','send_receive_message')
        if bool(bits&SEND)!=wanted_send or bool(bits&RECEIVE)!=wanted_receive:
            raise ValueError('Actual message role differs from audited attributes bits')
        scope=after.get(member(created,'kind').get('ref'))
        if (scope is None or scope['class']!='String' or scope['kind']!='value'
                or scope['value']!=list(value['message_scope'].encode('ascii'))):
            raise ValueError('Actual message scope differs from original kind storage')
        name=after.get(member(created,'elementName').get('ref'))
        if (name is None or name['class']!='String' or name['kind']!='value'
                or name['value']!=list(value['request_name'].encode('ascii'))):
            raise ValueError('Actual original message name differs from creation request')
        pointer=member(created,'owner')
        proxy=after.get(pointer.get('ref'))
        binding=value['created_owner_binding']
        expected_binding=dict(model_ref=created,pointer_ref=pointer.get('ref'),pointer_class='DBProxy',
            database_oid=oid,database_class='SGModule',resolved_owner_ref=owner,same_original_owner=True)
        if (pointer!={'class':'DBProxy','ref':pointer.get('ref')}
                or proxy is None or proxy['class']!='DBProxy' or proxy['kind']!='boundary'
                or fingerprint(binding)!=fingerprint(expected_binding)):
            raise ValueError('Actual message owner proxy must bind the exact original Module identity')
        for prefix in ('owner_references','owner_database_record_references'):
            if reference_set(value[prefix+'_after']) != reference_set(value[prefix+'_before']):
                raise ValueError('Primitive message factory changed a shared Module inbound reference set: '+prefix)
    return clone(value)


def bind_request(value,arguments):
    if (type(arguments) is not list or len(arguments) not in (6,7) or arguments[0]!=[]
            or arguments[1]!=value['kind'] or arguments[2]!=value['request_name']
            or (arguments[5] or 'cont')!=value['model_type']):
        raise ValueError('Original message role/name/type differs from exact creation request')
    scope=(arguments[6][1:] if len(arguments)==7 and type(arguments[6]) is str and arguments[6].startswith('S')
        else ('imported' if arguments[1]=='receive_message' else 'exported'))
    if (len(arguments)==7 and arguments[6]!='S'+scope) or scope!=value['message_scope']:
        raise ValueError('Original message scope differs from exact creation request')


def summary(value):
    result=dict(profile=value['profile'],phase=value['phase'],owner_ref=value['owner_ref'],
        generation=value['generation'],kind=value['kind'],request_name=value['request_name'],
        model_type=value['model_type'],message_scope=value['message_scope'],
        before_objects=len(value['before']['objects']),after_objects=None if value['after'] is None else len(value['after']['objects']),
        created_model_ref=value['created_model_ref'],same_original_objects_retained=True,inverse_authorized=False,
        created_owner_binding=clone(value.get('created_owner_binding')),
        actual_diff=None if value['actual_diff'] is None else diff_summary(value['before'],value['actual_diff']),
        sha256=fingerprint(value),detail_source='durable create_material_actual.declaration_material')
    for prefix in ('owner_references','owner_database_record_references'):
        before=value[prefix+'_before'];after=value[prefix+'_after']
        result[prefix+'_diff']=None if after is None else dict(added=[r for r in after if r not in before],
            removed=[r for r in before if r not in after])
    return result
