"""Strict Module role audit. Inventory evidence never authorizes an edit or inverse."""
from bd_enum_declaration_before import reference_set


KEYS = frozenset(('profile component_oid component_path api_class messages_possible generation owner '
    'objects collections declarations owner_references owner_database_record_references '
    'configuration_references complete_body_capture creation_before_bound inverse_authorized '
    'editable_refs model_setters_called store_called').split())
SEND = 134217728
RECEIVE = 67108864


def descriptor(value):
    if type(value) is not dict or type(value.get('native_class')) is not str or not value['native_class']:
        raise ValueError('Exact native inventory descriptor required')
    kind = value.get('kind')
    keys = {'native_class', 'kind'}
    if kind == 'atom':
        keys |= {'value'}
    elif kind in ('value', 'opaque'):
        keys |= {'ref'}
        if kind == 'value': keys |= {'value'}
        if value['native_class'] in ('DBProxy','DBObject'): keys |= {'database_oid', 'database_class'}
    else:
        raise ValueError('Known native inventory descriptor kind required')
    if set(value) != keys or any(type(value[k]) is not str or not value[k] for k in keys - {'value'}):
        raise ValueError('Exact native descriptor shape and identity required')
    if 'value' in keys:
        data = value['value']
        if value['native_class']=='ByteArray' and kind=='value':
            if type(data) is not list or len(data)>8192 or any(type(b) is not int or not 0<=b<=255 for b in data):
                raise ValueError('Complete original bounded ByteArray required')
        elif type(data) is not str or len(data)>8192:
            raise ValueError('Bounded native inventory value required')
    return value


def validate(value, domain, *, component):
    fixed = dict(profile='message_declaration_inventory_v1', component_oid=domain['oid'],
        api_class='EtasAPIModuleBDE', messages_possible=True, complete_body_capture=False,
        creation_before_bound=False, inverse_authorized=False, editable_refs=False,
        model_setters_called=0, store_called=False)
    if type(value) is not dict or set(value) != KEYS or any(type(value.get(k)) is not type(v)
            or value.get(k) != v for k, v in fixed.items()):
        raise ValueError('Exact isolated zero-write Module inventory receipt required')
    path = value['component_path']
    if (type(path) is not str or path.lstrip('\\') != component.lstrip('\\')
            or not path.lstrip('\\').startswith('BDE_Tool_Experiments\\Trial_')
            or type(value['generation']) is not int or value['generation'] <= 0):
        raise ValueError('Exact isolated Module path/generation required')
    owner = descriptor(value['owner'])
    if owner['kind'] != 'opaque' or owner['native_class']!='SGModule':
        raise ValueError('Exact original Module owner identity required')
    rows = value['objects']
    if type(rows) is not list or not 3 <= len(rows) <= 8195:
        raise ValueError('Bounded original Module role schemas required')
    roles = {}
    bindings = {}
    for row in rows:
        if (type(row) is not dict or set(row) != {'role', 'binding', 'field_names', 'fields'}
                or type(row['role']) is not str or not row['role'] or row['role'] in roles):
            raise ValueError('Unique complete native role schema required')
        bound = descriptor(row['binding'])
        if bound['kind'] != 'opaque': raise ValueError('Native schema role must retain its original object')
        names, fields = row['field_names'], row['fields']
        if (type(names) is not list or len(names) > 512 or type(fields) is not list
                or len(names) != len(fields) or any(type(n) is not str or not n for n in names)
                or len(set(names)) != len(names)):
            raise ValueError('Complete bounded native slot names required')
        for index, field in enumerate(fields, 1):
            if (type(field) is not dict or set(field) != {'slot', 'field', 'value'}
                    or type(field['slot']) is not int or field['slot'] != index or field['field'] != names[index - 1]):
                raise ValueError('Contiguous native slot schema required')
            descriptor(field['value'])
        roles[row['role']] = row
        if bound['ref'] in bindings and bindings[bound['ref']] != {k:row[k] for k in ('binding','field_names','fields')}:
            raise ValueError('Same original native object has inconsistent slot images')
        bindings[bound['ref']] = {k:row[k] for k in ('binding','field_names','fields')}
    if not {'owner','primitiveVariables','complexVariables'} <= set(roles) or roles['owner']['binding'] != owner:
        raise ValueError('Complete original Module owner and declaration roots required')
    def member(row, name):
        if name not in row['field_names']: raise ValueError('Original Module slot unavailable: ' + name)
        return row['fields'][row['field_names'].index(name)]['value']
    for name in ('primitiveVariables', 'complexVariables'):
        row = roles[name]
        if row['binding']['native_class'] != 'LookupTable' or row['field_names'] != ['elementCount','keys','values']:
            raise ValueError('Exact Module LookupTable slots required')
        if member(roles['owner'],name) != row['binding']:
            raise ValueError('Original Module declaration membership storage differs')
    collections = value['collections']
    if type(collections) is not list or len(collections) != 2:
        raise ValueError('Both original declaration membership collections required')
    members = []
    for collection, name in zip(collections, ('primitiveVariables','complexVariables')):
        if (type(collection) is not dict or set(collection) != {'binding','entries'}
                or collection['binding'] != roles[name]['binding'] or type(collection['entries']) is not list
                or len(collection['entries']) > 4096):
            raise ValueError('Exact bounded declaration memberships required')
        keys = []
        for pair in collection['entries']:
            if type(pair) is not list or len(pair) != 2: raise ValueError('Actual native membership pair required')
            key, model = map(descriptor,pair)
            if key['kind'] != 'value': raise ValueError('Native declaration membership name required')
            keys.append(key['value']); members.append(model)
        if len(set(keys)) != len(keys): raise ValueError('Duplicate declaration membership key')
    declarations = value['declarations']
    if type(declarations) is not list or len(declarations) > 4096:
        raise ValueError('Bounded complete original Module declarations required')
    seen = set()
    seen_xml_oids = set()
    message_count = 0
    for model in declarations:
        if (type(model) is not dict or set(model) != {'name','binding','xml_oid','type','attributes','raw_kind','scope','send','receive','message'}
                or type(model['name']) is not str or not model['name']):
            raise ValueError('Exact original Module declaration descriptor required')
        xml_oid = model['xml_oid']
        if (type(xml_oid) is not list or len(xml_oid) != 20
                or any(type(byte) is not int or not 0 <= byte <= 255 for byte in xml_oid)
                or not any(xml_oid) or tuple(xml_oid) in seen_xml_oids):
            raise ValueError('Unique exact original20byte Module XML identity required')
        binding = descriptor(model['binding']); native_type = descriptor(model['type']); raw_kind = descriptor(model['raw_kind'])
        if binding['native_class'] != 'SGVariable' or binding['kind'] != 'opaque' or binding['ref'] in seen:
            raise ValueError('Unique original SGVariable declaration identity required')
        row = roles.get('model:' + model['name'])
        if row is None or row['binding'] != binding or not {'attributes','kind','sgClass','aliasName'} <= set(row['field_names']):
            raise ValueError('Complete actual SGVariable role slots required')
        alias = member(row, 'aliasName')
        if (alias['native_class'] != 'ByteArray' or alias['kind'] != 'value' or alias['value'] != xml_oid):
            raise ValueError('Original XML identity differs from the exact native aliasName byte array')
        attributes = model['attributes']
        if (type(attributes) is not int or attributes < 0
                or member(row,'attributes') != {'native_class':'SmallInteger','kind':'atom','value':str(attributes)}
                or member(row,'kind') != raw_kind or member(row,'sgClass') != native_type):
            raise ValueError('Original role/scope/type slots disagree with declaration evidence')
        for name, expected in dict(send=bool(attributes & SEND),receive=bool(attributes & RECEIVE),
                message=bool(attributes & (SEND | RECEIVE))).items():
            if type(model[name]) is not bool or model[name] != expected:
                raise ValueError('Message role disagrees with audited attributes bits')
        if (model['scope'] not in ('local','imported','exported') or raw_kind['kind'] != 'value'
                or raw_kind['value'] != model['scope']):
            raise ValueError('Known original declaration scope kind required')
        if members.count(binding) != 1:
            raise ValueError('Exactly one original declaration membership required')
        if native_type['native_class'] not in ('DBProxy','DBObject'):
            type_row = roles.get('type:' + model['name'])
            if type_row is None or type_row['binding'] != native_type:
                raise ValueError('Complete direct original type slot inventory required')
        seen.add(binding['ref']); seen_xml_oids.add(tuple(xml_oid)); message_count += int(model['message'])
    if {m['ref'] for m in members if m['native_class']=='SGVariable'} != seen:
        raise ValueError('Native SGVariable membership and API inventory differ')
    combined = reference_set(value['owner_references'])
    recorded = reference_set(value['owner_database_record_references'])
    configs = reference_set(value['configuration_references'])
    from bd_declaration_material import CONFIGS
    if configs != [r for r in combined if r[1] in CONFIGS]:
        raise ValueError('Complete original configuration reference inventory required')
    return dict(owner_class=owner['native_class'], declarations=len(declarations), messages=message_count,
        role_schemas=len(rows), native_slots=sum(len(r['fields']) for r in rows),
        configurations=len(configs), combined_references=len(combined), database_record_references=len(recorded),
        reference_sets_equal=combined==recorded, complete_body_capture=False, inverse_authorized=False)
