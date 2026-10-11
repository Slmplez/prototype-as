"""Recover Smalltalk method dictionaries, exact literal references and bytecode records."""
import json
import struct
from smalltalk_image import Universe, OUT, scan_methods
from vast_methods import Universe as LegacyUniverse


def recover_legacy_bindings(method_maps, mappings):
    """Recover bindings from the legacy IC class layout.

    Most images expose class dictionaries through the normal Metaclass
    hierarchy.  The older Abt/extension images use a compact class format
    whose class objects are typed as EsEntryPointList instead.  Their method
    dictionaries are still ordinary selector/method pairs, and the loader's
    extension tables add the same pairs through EsMethodArray objects.  The
    dedicated parser in ``vast_methods`` validates both forms and resolves
    imported class and method pointers, so use it only for method records that
    the normal pass could not bind.

    Keeping this as a fallback avoids changing the established snapshot/static
    bindings while making the alternate class hierarchy reproducible from the
    source images alone.
    """
    legacy = LegacyUniverse()
    legacy.identify_classes()
    owners = {}

    def add_dictionary(item, target, dictionary, provenance):
        fields = target.words(dictionary)
        # EsMethodArray and normal method dictionaries are selector/method
        # pairs.  Ignore malformed trailing words rather than inventing a
        # selector for them; the container parser has already checked bounds.
        for selector, method in zip(fields[::2], fields[1::2]):
            name = legacy.text(target, selector)
            resolved_method = legacy.method(target, method) if name else None
            if not resolved_method:
                continue
            module, body = resolved_method
            clazz = item['name'] if item['side'] == 'instance' else item['name'] + ' class'
            # Keep the on-disk casing used by the primary image reader; the
            # method index is keyed by that exact name.
            key = (module.path.name, body['address'])
            binding = dict(
                class_image=item['image'].path.name,
                clazz=clazz,
                selector=name,
                class_address=hex(item['object']['address']),
                dictionary_address=hex(dictionary['address']),
                provenance=provenance,
            )
            bucket = owners.setdefault(key, {})
            bucket[(binding['class_image'], binding['clazz'], binding['selector'])] = binding

    # The class object's third body word points at its method dictionary.
    for item in legacy.classes.values():
        image, obj = item['image'], item['object']
        fields = image.words(obj)
        if len(fields) < 3:
            continue
        resolved = legacy.resolve(image, fields[2])
        if resolved:
            add_dictionary(item, *resolved, {
                'kind': 'legacy_class_dictionary',
                'address': hex(resolved[1]['address']),
            })

    # Extension tables contain four-word rows: target class, defining
    # application, protocol metadata, and the EsMethodArray dictionary.
    for image in legacy.images.values():
        for obj in image.objects.values():
            if obj['flags'] & 6 or not obj['size'] or obj['size'] % 16:
                continue
            fields = image.words(obj)
            rows = []
            for i in range(0, len(fields), 4):
                clazz = legacy.resolve(image, fields[i])
                item = (legacy.classes.get((clazz[0].path.name.lower(), clazz[1]['address']))
                        if clazz else None)
                if not item:
                    break
                dictionary = legacy.resolve(image, fields[i + 3])
                if not dictionary:
                    break
                dtype = legacy.resolve(dictionary[0], dictionary[1]['class'])
                dtype = (legacy.classes.get((dtype[0].path.name.lower(), dtype[1]['address']), {})
                         if dtype else {})
                if dtype.get('name') != 'EsMethodArray':
                    break
                rows.append((item, *dictionary))
            else:
                for item, target, dictionary in rows:
                    add_dictionary(item, target, dictionary, {
                        'kind': 'legacy_extension_table',
                        'image': image.path.name,
                        'table_address': hex(obj['address']),
                        'dictionary_address': hex(dictionary['address']),
                    })

    added_records = 0
    added_bindings = 0
    for key, bucket in owners.items():
        image_name, address = key
        if image_name not in method_maps or address not in method_maps[image_name] or mappings.get(key):
            continue
        values = list(bucket.values())
        if values:
                mappings[key] = values
                added_records += 1
                added_bindings += len(values)
    return dict(named_records=len(owners), added_records=added_records,
                added_bindings=added_bindings)


def main():
    universe = Universe()
    index, layouts = [], []
    method_maps = {}
    for image in universe.images:
        methods, errors = scan_methods(image)
        method_maps[image.name] = methods
        layouts.append(dict(image=image.name, methods=len(methods), errors=errors,
                            shared_code=sum(x['shared_code'] for x in methods.values())))
        print(image.name,len(methods),'methods',len(errors),'boundary errors',flush=True)
    mappings = {}
    failures = []
    for image in universe.images:
        for address, obj in image.objects.items():
            if obj['size'] < 48 or obj['size'] % 4:
                continue
            # A class or metaclass is identified through the Metaclass hierarchy,
            # not merely by finding a printable word in an arbitrary object.
            clazz = universe.object(image,obj['clazz'])
            if not clazz:
                continue
            cimage,cobj = clazz
            meta_name = universe.class_name(cimage,cobj['address'])
            is_meta = meta_name == 'Metaclass'
            if not is_meta:
                metaclass = universe.object(cimage,cobj['clazz'])
                if not metaclass or universe.class_name(metaclass[0],metaclass[1]['address']) != 'Metaclass':
                    continue
            name = universe.class_name(image,address)
            if not name:
                continue
            dictionary_pointer = image.word(address+20)
            dictionary = universe.object(image,dictionary_pointer)
            if not dictionary:
                continue
            dim,dobj = dictionary
            if dobj['size'] % 8:
                continue
            words = struct.unpack_from('<'+'I'*(dobj['size']//4),dim.data,dobj['offset']+12)
            for i in range(0,len(words),2):
                if words[i] == 14:
                    continue
                selector = universe.text(dim,words[i])
                if not selector or not words[i+1]&1:
                    continue
                target = universe.resolve(dim,words[i+1]&~3)
                if not target:
                    failures.append(dict(image=image.name,clazz=name,selector=selector,pointer=hex(words[i+1])))
                    continue
                mi,ma = target
                if ma not in method_maps[mi.name]:
                    failures.append(dict(image=image.name,clazz=name,selector=selector,pointer=hex(words[i+1]),resolved_image=mi.name))
                    continue
                key=(mi.name,ma)
                mappings.setdefault(key,[]).append(dict(class_image=image.name,clazz=name,selector=selector,
                                                       class_address=hex(address),dictionary_address=hex(dobj['address'])))
    legacy_stats = recover_legacy_bindings(method_maps, mappings)
    print('Legacy class/method bindings', legacy_stats, flush=True)
    for image in universe.images:
        out = OUT / 'methods' / image.name
        out.mkdir(parents=True,exist_ok=True)
        with (out/'methods.jsonl').open('w',encoding='utf-8') as stream:
            for address,method in method_maps[image.name].items():
                method['bindings']=mappings.get((image.name,address),[])
                method['image']=image.name
                method['literal_descriptions']=[universe.describe(image,x,depth=1) for x in method['literals']]
                stream.write(json.dumps(method,ensure_ascii=False)+'\n')
                if method['bindings']:
                    index.append(dict(image=image.name,address=hex(address),offset=hex(method['offset']),
                                      bindings=method['bindings'],shared_code=method['shared_code']))
    (OUT/'method-layouts.json').write_text(json.dumps(layouts,indent=2),encoding='utf-8')
    (OUT/'method-index.json').write_text(json.dumps(index,indent=2),encoding='utf-8')
    (OUT/'unresolved-method-bindings.json').write_text(json.dumps(failures,indent=2),encoding='utf-8')
    print('Bound methods',len(index),'unresolved bindings',len(failures),flush=True)


if __name__ == '__main__':
    main()
