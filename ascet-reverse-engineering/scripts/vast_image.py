"""Offline parser for the observed 32-bit VA Smalltalk IC container layout.

All offsets and sizes are validated against the input; unsupported layouts fail closed.
"""
import bisect
import json
import struct
from dataclasses import dataclass
from pathlib import Path

BASE=Path(__file__).resolve().parents[1]
ROOT=BASE/'unpacked/installation'

@dataclass
class Segment:
    index:int
    flags:int
    address:int
    used:int
    offset:int

class Image:
    def __init__(self,path):
        self.path=Path(path)
        self.data=self.path.read_bytes()
        self.header=struct.unpack_from('<8I',self.data)
        assert self.header[0]==0x4f54491a and self.header[2]==0x12345678
        version,full=self.header[1],self.header[4]
        position=32+(128 if full else 0)
        count=0 if version==1 else self.header[3]
        self.dependencies=[]
        for i in range(count):
            name=self.data[position:position+256].split(b'\0',1)[0].decode('ascii')
            trailer=struct.unpack_from('<4I',self.data,position+256)
            self.dependencies.append({'name':name,'fields':trailer})
            position+=272
        self.references=[]
        for dependency in self.dependencies:
            for i in range(dependency['fields'][1]+(dependency['fields'][2] if full else 0)):
                words=struct.unpack_from('<8I',self.data,position)
                self.references.append({'dependency':dependency['name'],'words':words})
                position+=32
        descriptors=[]
        for i in range(self.header[5]):
            words=struct.unpack_from('<16I',self.data,position)
            assert words[5]>=words[3],(path,i,words)
            descriptors.append(words)
            position+=64
        self.segments=[]
        for words in descriptors:
            size=words[5]-words[3]
            self.segments.append(Segment(words[15],words[0],words[3],size,position))
            position+=size
        if position!=len(self.data):
            raise ValueError(f'Payload end {position:#x} != file size {len(self.data):#x}')
        self.objects={}
        self.methods={}
        self.errors=[]
        for segment in self.segments:
            offset=segment.offset
            end=offset+segment.used
            if segment.flags & 0xff == 0x84:
                while offset<end:
                    method_id,literal_size,code_size=struct.unpack_from('<IHH',self.data,offset)
                    shared=bool(method_id&0x80000000)
                    size=8+literal_size+(0 if shared else (code_size+3)&~3)
                    if offset+size>end or literal_size%4:
                        self.errors.append({'offset':offset,'reason':'method bounds','size':size})
                        break
                    address=segment.address+offset-segment.offset
                    self.methods[address]={'address':address,'offset':offset,'id':method_id&0x7fffffff,
                                           'shared':shared,'literal_size':literal_size,'code_size_field':code_size,
                                           'code_offset':offset+code_size+1 if shared else offset+8+literal_size}
                    offset+=size
                continue
            while offset<end:
                if offset+12>end:
                    self.errors.append({'offset':offset,'reason':'trailing bytes','size':end-offset})
                    break
                clazz,flags,size=struct.unpack_from('<3I',self.data,offset)
                next_offset=offset+12+((size+3)&~3)
                if next_offset>end:
                    self.errors.append({'offset':offset,'reason':'object exceeds segment','size':size,'segment':segment.index})
                    break
                address=segment.address+offset-segment.offset
                self.objects[address]={'address':address,'offset':offset,'class':clazz,'flags':flags,
                                       'size':size,'segment':segment.index}
                offset=next_offset

    def payload(self,obj):
        start=obj['offset']+12
        return self.data[start:start+obj['size']]

    def words(self,obj):
        data=self.payload(obj)
        return struct.unpack('<'+'I'*(len(data)//4),data[:len(data)//4*4])

def main():
    report=[]
    output=BASE/'analysis/smalltalk-deep'
    output.mkdir(parents=True,exist_ok=True)
    for path in sorted(p for p in ROOT.rglob('*') if p.suffix.lower() in {'.ic','.icx'}):
        try:
            image=Image(path)
            record={'file':str(path.relative_to(ROOT)),'segments':[s.__dict__ for s in image.segments],
                    'objects':len(image.objects),'methods':len(image.methods),'object_errors':image.errors,'dependencies':image.dependencies,
                    'references':image.references}
            print(path.name,'segments',len(image.segments),'objects',len(image.objects),'methods',len(image.methods),'errors',len(image.errors),flush=True)
        except Exception as exc:
            record={'file':str(path.relative_to(ROOT)),'error':str(exc)}
            print(path.name,'ERROR',str(exc),flush=True)
        report.append(record)
    (output/'containers.json').write_text(json.dumps(report,indent=2),encoding='utf-8')

if __name__=='__main__':
    main()
