"""Resolve IC dependencies and recover named methods with exact bytecode/literal provenance."""
import collections
import json
import re
import struct
from pathlib import Path
from vast_image import BASE,ROOT,Image

class Universe:
    def __init__(self):
        self.images={p.name.lower():Image(p) for p in sorted(ROOT.rglob('*')) if p.suffix.lower() in {'.ic','.icx'}}
        self.classes={}
        self.cache={}

    def resolve(self,image,address,depth=0):
        key=(image.path.name.lower(),address)
        if key in self.cache:
            return self.cache[key]
        if depth>20:
            return None
        if address in image.objects:
            result=(image,image.objects[address])
        else:
            result=None
            for reference in image.references:
                w=reference['words']
                full=bool(image.header[4])
                start=w[5] if full else w[3]
                length=w[4]-w[3]
                if start<=address<start+length:
                    target=self.images.get(reference['dependency'].lower())
                    if target is None:
                        break
                    segment=next((s for s in target.segments if s.index==w[2]),None)
                    if segment is None:
                        break
                    resolved=segment.address+address-start
                    if segment.flags>>16==9:
                        relative=segment.offset+address-start
                        resolved=struct.unpack_from('<I',target.data,relative)[0]
                    result=self.resolve(target,resolved,depth+1)
                    break
        self.cache[key]=result
        return result

    def text(self,image,address):
        resolved=self.resolve(image,address)
        if resolved:
            target,obj=resolved
            if obj['flags']&6==2:
                return target.payload(obj).decode('cp1252',errors='replace')
        return None

    def identify_classes(self):
        for image in self.images.values():
            for address,obj in image.objects.items():
                # Class subclasses (e.g. external structures / COM classes) add
                # fields after the 14-word Class prefix. Do not truncate at 56.
                if obj['size']<56 or obj['flags']&6:
                    continue
                fields=image.words(obj)
                name=self.text(image,fields[11])
                if name and re.fullmatch(r'[A-Za-z_]\w*',name):
                    meta=self.resolve(image,obj['class'])
                    if not meta or meta[1]['size']!=48:
                        continue
                    instance=self.resolve(meta[0],meta[0].words(meta[1])[11])
                    if instance and instance[0] is image and instance[1]['address']==address:
                        self.classes[(image.path.name.lower(),address)]={'image':image,'object':obj,'name':name,'side':'instance'}
        for item in list(self.classes.values()):
            target=self.resolve(item['image'],item['object']['class'])
            if target and target[1]['size']==48:
                image,obj=target
                self.classes.setdefault((image.path.name.lower(),obj['address']),
                                        {'image':image,'object':obj,'name':item['name'],'side':'class'})

    def method(self,image,address):
        pointer=address&~3
        if pointer in image.methods:
            return image,image.methods[pointer]
        for reference in image.references:
            w=reference['words']
            start=w[5] if image.header[4] else w[3]
            if start<=pointer<start+w[4]-w[3]:
                target=self.images.get(reference['dependency'].lower())
                segment=next((s for s in target.segments if s.index==w[2]),None) if target else None
                if segment:
                    return self.method(target,segment.address+pointer-start)
        return None

    def literal(self,image,address,depth=0):
        if address in {14,30,46}:
            return {14:'nil',30:'true',46:'false'}[address]
        if address&1:
            value=address if address<0x80000000 else address-0x100000000
            return value>>1
        resolved=self.resolve(image,address)
        if resolved:
            target,obj=resolved
            clazz=self.resolve(target,obj['class'])
            class_item=self.classes.get((clazz[0].path.name.lower(),clazz[1]['address']),{}) if clazz else {}
            class_name=class_item.get('name')
            if obj['flags']&6==2:
                if class_name in {'String','Symbol','DBString','EsString'}:
                    return {'text':target.payload(obj).decode('cp1252',errors='replace'),'kind':class_name}
                return {'bytes_hex':target.payload(obj).hex(),'kind':class_name or 'byte_object'}
            item=self.classes.get((target.path.name.lower(),obj['address']))
            if item:
                return {'class':item['name'],'side':item['side']}
            if obj['size']==8 and class_name in {'Association','EsPoolAssociation'}:
                fields=target.words(obj)
                name=self.text(target,fields[0])
                if name:
                    if class_name=='EsPoolAssociation':
                        return {'pool_names':name.split('\0'),'flags':hex(obj['flags']),
                                'object':hex(obj['address']),'image':target.path.name}
                    return {'association':name}
            if class_name=='Array' and obj['size']<=256 and depth<3:
                return {'array':[self.literal(target,x,depth+1) for x in target.words(obj)]}
            return {'object':hex(obj['address']),'image':target.path.name,'size':obj['size'],'kind':class_name}
        return {'unresolved':hex(address)}


def main():
    universe=Universe()
    universe.identify_classes()
    output=BASE/'unpacked/smalltalk-recovered'
    output.mkdir(parents=True,exist_ok=True)
    owners=collections.defaultdict(list)
    def add_dictionary(item,target,dictionary,provenance):
        fields=target.words(dictionary)
        for selector,method in zip(fields[::2],fields[1::2]):
            name=universe.text(target,selector)
            resolved_method=universe.method(target,method) if name else None
            if resolved_method:
                module,body=resolved_method
                owner={'class':item['name'],'side':item['side'],'selector':name,
                       'class_image':item['image'].path.name,'provenance':provenance}
                bucket=owners[(module.path.name.lower(),body['address'])]
                if not any(all(old[k]==owner[k] for k in ['class','side','selector','class_image']) for old in bucket):
                    bucket.append(owner)
    for item in universe.classes.values():
        image,obj=item['image'],item['object']
        resolved=universe.resolve(image,image.words(obj)[2])
        if resolved:
            add_dictionary(item,*resolved,{'kind':'class_dictionary','address':hex(resolved[1]['address'])})
    # IC extension tables contain four-word entries:
    # target class, defining applications, protocols, EsMethodArray.
    # Validate every row's class and dictionary type before accepting a table.
    for image in universe.images.values():
        for obj in image.objects.values():
            if obj['flags']&6 or not obj['size'] or obj['size']%16:
                continue
            fields=image.words(obj)
            rows=[]
            for i in range(0,len(fields),4):
                clazz=universe.resolve(image,fields[i])
                item=universe.classes.get((clazz[0].path.name.lower(),clazz[1]['address'])) if clazz else None
                if not item:
                    break
                dictionary=universe.resolve(image,fields[i+3])
                if not dictionary:
                    break
                dtype=universe.resolve(dictionary[0],dictionary[1]['class'])
                dtype=universe.classes.get((dtype[0].path.name.lower(),dtype[1]['address']),{}) if dtype else {}
                if dtype.get('name')!='EsMethodArray':
                    break
                rows.append((item,*dictionary))
            else:
                for item,target,dictionary in rows:
                    add_dictionary(item,target,dictionary,{'kind':'extension_table','image':image.path.name,
                                                           'table_address':hex(obj['address']),'dictionary_address':hex(dictionary['address'])})
    summary=[]
    for image in universe.images.values():
        folder=output/image.path.name
        folder.mkdir(exist_ok=True)
        # Normal records own code bytes. Shared-tail records reference an owner's code prefix.
        code_owners={m['code_offset']:m for m in image.methods.values() if not m['shared']}
        records=[]
        for address,method in image.methods.items():
            owner=code_owners.get(method['code_offset'])
            names=owners.get((image.path.name.lower(),address),[])
            record=dict(method,owners=names)
            literal_data=image.data[method['offset']+8:method['offset']+8+method['literal_size']]
            literals=struct.unpack('<'+'I'*(len(literal_data)//4),literal_data)
            record['literals_raw']=[hex(x) for x in literals]
            record['literals']=[universe.literal(image,x) for x in literals]
            if owner:
                block=image.data[method['code_offset']:method['code_offset']+owner['code_size_field']]
                record['code_header_hex']=block[:4].hex()
                record['bytecodes_hex']=block[4:].hex()
                record['argument_count']=block[1] if len(block)>1 else None
                record['temporary_count']=block[0] if block else None
            else:
                record['error']='Shared code prefix did not match an owned method body'
            records.append(record)
        with (folder/'methods.jsonl').open('w',encoding='utf-8') as stream:
            for record in records:
                stream.write(json.dumps(record,ensure_ascii=False)+'\n')
        classes=[{'name':c['name'],'side':c['side'],'address':hex(c['object']['address'])}
                 for c in universe.classes.values() if c['image']==image]
        (folder/'classes.json').write_text(json.dumps(classes,indent=2),encoding='utf-8')
        item={'image':image.path.name,'objects':len(image.objects),'classes_and_metaclasses':len(classes),
              'methods':len(records),'named_methods':sum(bool(m['owners']) for m in records),
              'bytecode_bodies':sum('bytecodes_hex' in m for m in records),
              'unresolved_bytecode_bodies':sum('error' in m for m in records)}
        summary.append(item)
        print(item,flush=True)
    (output/'summary.json').write_text(json.dumps(summary,indent=2),encoding='utf-8')

if __name__=='__main__':
    main()
