"""Classify audited SGItemWithSpec lazy caches without authorizing any mutation."""
from bd_declaration_material import schema
from bd_native_graphical_effects import _same_image
from bd_edit_journal import fingerprint
from bd_edit_journal import clone
from bd_native_graphical_effects import same_current


CACHE_FIELDS = frozenset(('aliasNameCache', 'methodAliasNameCache', 'additionalMethodCache'))
CACHE_CLASSES = frozenset(('LookupTable', 'Array', 'String', 'ByteArray', 'SGAliasVariable', 'SGSelfClass', 'DBProxy'))
EVIDENCE_KEYS = frozenset(('profile recorded recorded_schema current current_schema owner_ref native_guard '
    'write_authorized previous_recorded previous_schema namespace_bindings').split())


def bind_images(value, *, previous=None):
    """Verify every original reference and schema across two retained namespaces."""
    old, old_fields = schema(value['previous_recorded'], value['previous_schema'])
    recorded, recorded_fields = schema(value['recorded'], value['recorded_schema'])
    pairs = value['namespace_bindings']
    if (type(pairs) is not list or len(pairs) != len(old)
            or any(type(p) is not list or len(p) != 2 or any(type(r) is not str for r in p) for p in pairs)):
        raise ValueError('Complete original-object namespace bindings required')
    bindings = dict(pairs)
    if (len(bindings) != len(pairs) or set(bindings) != set(old)
            or set(bindings.values()) != set(recorded) or len(set(bindings.values())) != len(bindings)):
        raise ValueError('Original object namespace mapping must be complete and bijective')

    def remap(item):
        if type(item) is list:return [remap(x) for x in item]
        if type(item) is dict:
            return {k:bindings[v] if k=='ref' else remap(v) for k,v in item.items()}
        return clone(item)

    if (not same_current(remap(value['previous_recorded']), value['recorded'])
            or {bindings[r]:names for r,names in old_fields.items()} != recorded_fields):
        raise ValueError('Mapped cache origin differs from exact original image/schema')
    if previous is not None and not same_current(value['previous_recorded'], previous):
        raise ValueError('Image origin differs from the complete durable previous head')
    return fingerprint(pairs)


def evidence(value, *, previous=None, current=None, owner_class='SGClass'):
    if (type(value) is not dict or set(value) != EVIDENCE_KEYS
            or value['profile'] != 'native_declaration_read_cache_evidence_v1'
            or value['write_authorized'] is not False):
        raise ValueError('Complete bound read-cache evidence required; not write authorization')
    binding_hash = bind_images(value, previous=previous)
    if current is not None and not same_current(value['current'], current):
        raise ValueError('Read-cache CURRENT differs from complete preparation')
    result = classify(value['recorded'],value['recorded_schema'],value['current'],value['current_schema'],
                      owner=value['owner_ref'],owner_class=owner_class)
    fixed = dict(profile='native_declaration_cache_guard_v1',non_cache_original_state_unchanged=True,
        changed_entries=len(result['changes']),new_objects=result['new_objects'],cache_objects=result['cache_objects'],
        model_setters_called=0,store_called=False,inverse_authorized=False)
    guard = value['native_guard']
    if type(guard) is not dict or set(guard) != set(fixed) or any(
            type(guard[k]) is not type(v) or guard[k] != v for k,v in fixed.items()):
        raise ValueError('Native cache guard differs from complete independently checked images')
    result['namespace_binding_sha256'] = binding_hash
    return result


def references(value):
    if type(value) is dict:
        if 'ref' in value: yield value['ref']
        else:
            for item in value.values(): yield from references(item)
    elif type(value) is list:
        for item in value: yield from references(item)


def classify(original, original_schema, current, current_schema, *, owner, owner_class='SGClass'):
    before, old_fields = schema(original, original_schema)
    after, fields = schema(current, current_schema)
    if (owner_class not in ('SGClass','SGModule') or not before.keys() <= after.keys()
            or owner not in before or before[owner]['class'] != owner_class
            or not CACHE_FIELDS <= set(old_fields[owner])):
        raise ValueError('Complete original '+owner_class+' cache and CURRENT identities required')
    if any((before[r]['class'],before[r]['kind'],old_fields[r]) !=
           (after[r]['class'],after[r]['kind'],fields[r]) for r in before):
        raise ValueError('Original declaration schema or identities changed')

    def closure(rows, names, peers=None):
        found = set(); pending = []
        for name in CACHE_FIELDS:
            value = rows[owner]['value'][names[owner].index(name)]
            if value == {'class':'UndefinedObject','value':'nil'}: continue
            if type(value) is not dict or value.get('class') != 'LookupTable' or set(value) != {'class','ref'}:
                raise ValueError('Audited lazy cache must retain nil or actual LookupTable storage')
            pending.append(value['ref'])
        while pending:
            ref = pending.pop()
            if ref in found: continue
            row = rows[ref]
            # Existing semantic models, methods, configurations and other shared
            # declarations stay outside cache ownership and must remain exact.
            if row['class'] not in CACHE_CLASSES:
                if peers is not None and ref in peers: continue
                raise ValueError('Unknown object cannot be promoted to computed cache ownership')
            found.add(ref); pending.extend(references(row['value']))
        return found

    old_cache = closure(before, old_fields, before)
    new_cache = closure(after, fields, before)
    owned = old_cache | new_cache
    if not (after.keys() - before.keys()) <= new_cache:
        raise ValueError('New CURRENT objects exist outside the audited cache graph')
    changes = []
    for ref, old in before.items():
        new = after[ref]
        if old['kind'] == 'fields':
            for index,(a,b) in enumerate(zip(old['value'],new['value'])):
                if a == b: continue
                name = old_fields[ref][index]
                if not ((ref == owner and name in CACHE_FIELDS) or (ref in owned and old['class'] == 'LookupTable')):
                    raise ValueError('Non-cache declaration or configuration field changed: '+name)
                changes.append(dict(ref=ref,native_class=old['class'],field=name,before=a,after=b))
        elif not _same_image(old,old['value'],new['value']):
            if ref not in owned or old['class'] != 'Array' or old['kind'] != 'collection':
                raise ValueError('Non-cache or non-storage original value changed')
            changes.append(dict(ref=ref,native_class=old['class'],kind=old['kind'],before=old['value'],after=new['value']))
    changed_cache = {r['ref'] for r in changes if r['ref'] != owner}
    for ref,row in before.items():
        if ref in owned: continue
        values = row['value']
        if ref == owner:
            values = [v for name,v in zip(old_fields[ref],values) if name not in CACHE_FIELDS]
        if changed_cache.intersection(references(values)):
            raise ValueError('Changed cache storage is shared with non-cache declaration state')
    return dict(profile='native_declaration_cache_classification_v1',owner_ref=owner,
        changes=changes,new_objects=len(after)-len(before),cache_objects=len(owned),
        before_sha256=fingerprint(original),current_sha256=fingerprint(current),
        non_cache_original_state_unchanged=True,inverse_authorized=False,
        external_database_boundaries_preserved=True)
