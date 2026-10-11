"""Static VA Smalltalk image reader. Fields are validated against stored boundaries.

The layout is recovered from this ASCET distribution; unsupported structures fail
explicitly. Addresses refer to the serialized image, never to this Python process.
"""
import bisect
import json
import struct
from dataclasses import dataclass
from pathlib import Path

BASE = Path(__file__).resolve().parents[1]
ROOT = BASE / 'unpacked/installation'
OUT = BASE / 'analysis/smalltalk-recovery'


@dataclass
class Segment:
    index: int
    flags: int
    base: int
    capacity: int
    used: int
    file_offset: int
    words: tuple


class Image:
    def __init__(self, path):
        self.path = Path(path)
        self.name = self.path.name
        self.data = self.path.read_bytes()
        self.header = struct.unpack_from('<8I', self.data)
        magic, version, endian, count, roots, segment_count, extra, timestamp = self.header
        assert magic == 0x4f54491a and endian == 0x12345678
        assert version in (1, 4) and roots in (0, 1)
        position = 32 + (128 if roots else 0)
        dependency_count = count if version == 4 else 0
        self.dependencies = []
        self.dependency_records = []
        for i in range(dependency_count):
            block = self.data[position:position+272]
            self.dependencies.append(block[:256].split(b'\0', 1)[0].decode('ascii'))
            self.dependency_records.append(struct.unpack_from('<4I',block,256))
            position += 272
        self.relocations = []
        dep = -1
        if roots and version == 4:
            # Running snapshots contain interleaved saved relocation records without
            # the static-module sentinel. Validate the entire descriptor table.
            candidates = []
            for candidate in range(position, min(len(self.data), position + 0x20000), 32):
                valid = True
                for i in range(segment_count):
                    w = struct.unpack_from('<16I', self.data, candidate + 64*i)
                    if not (w[0] < 0x100000 and w[2] == w[3] and w[2] <= w[4] <= w[2]+w[1]
                            and w[2] <= w[5] <= w[4] and w[13] == 0xabcdabcd):
                        valid = False
                        break
                if valid:
                    candidates.append(candidate)
            assert len(candidates) == 1, (self.name, candidates)
            self.snapshot_relocation_bytes = self.data[position:candidates[0]]
            self.saved_dependency_relocations = []
            cursor = position
            for dep, metadata in enumerate(self.dependency_records):
                for j in range(metadata[1]):
                    words = struct.unpack_from('<8I', self.data, cursor)
                    assert words[7] == 0xabcdabcd
                    self.relocations.append(dict(dependency=dep, segment=words[2], start=words[3],
                                                 end=words[4], flags=words[6], file_offset=cursor))
                    cursor += 32
                for j in range(metadata[2]):
                    words = struct.unpack_from('<8I', self.data, cursor)
                    self.saved_dependency_relocations.append(dict(dependency=dep, words=words))
                    cursor += 32
            assert cursor == candidates[0], (self.name, cursor, candidates[0])
            position = candidates[0]
        while not (roots and version == 4) and struct.unpack_from('<I', self.data, position + 28)[0] == 0xabcdabcd:
            words = struct.unpack_from('<8I', self.data, position)
            if words[2] == 1:
                dep += 1
            self.relocations.append(dict(dependency=dep, segment=words[2], start=words[3],
                                         end=words[4], flags=words[6], file_offset=position))
            position += 32
        self.segment_table_offset = position
        self.segments = []
        data_position = position + 64 * segment_count
        for i in range(segment_count):
            words = struct.unpack_from('<16I', self.data, position + 64 * i)
            flags, capacity, base = words[:3]
            used = words[5] - base
            assert 0 <= used <= capacity, (self.name, i, words)
            assert data_position + used <= len(self.data), (self.name, i, data_position, used)
            self.segments.append(Segment(i, flags, base, capacity, used, data_position, words))
            data_position += used
        self.data_end = data_position
        self.objects = {}
        self.object_errors = []

    def local_offset(self, address):
        for segment in self.segments:
            if segment.base <= address < segment.base + segment.used:
                return segment.file_offset + address - segment.base
        return None

    def word(self, address):
        position = self.local_offset(address)
        if position is None:
            raise ValueError(f'{self.name}: address {address:#x} not in serialized data')
        return struct.unpack_from('<I', self.data, position)[0]

    def scan_objects(self):
        for segment in self.segments:
            if segment.flags & 0x80:
                continue
            pos, end = segment.file_offset, segment.file_offset + segment.used
            while pos < end:
                if pos + 12 > end:
                    self.object_errors.append(dict(segment=segment.index, offset=pos, reason='short header'))
                    break
                clazz, flags, size = struct.unpack_from('<3I', self.data, pos)
                total = 12 + ((size + 3) & ~3)
                if pos + total > end:
                    self.object_errors.append(dict(segment=segment.index, offset=pos, reason='object exceeds segment', size=size))
                    break
                address = segment.base + pos - segment.file_offset
                self.objects[address] = dict(address=address, offset=pos, clazz=clazz, flags=flags,
                                             size=size, total=total, segment=segment.index)
                pos += total


def load_images():
    images = [Image(p) for p in sorted(ROOT.rglob('*')) if p.suffix.lower() in {'.ic', '.icx'}]
    for image in images:
        image.scan_objects()
    return images


class Universe:
    def __init__(self, images=None):
        self.images = images if images is not None else load_images()
        self.by_name = {image.name.lower():image for image in self.images}

    def resolve(self, image, address):
        if address & 1 or address in (0, 2, 4, 6, 8, 10, 12, 14):
            return None
        if image.local_offset(address) is not None:
            return image, address
        for relocation in image.relocations:
            if relocation['start'] <= address < relocation['end']:
                dep = self.by_name[image.dependencies[relocation['dependency']].lower()]
                segments = [s for s in dep.segments if s.words[15] == relocation['segment']]
                if len(segments) != 1:
                    return None
                mapped = segments[0].base + address - relocation['start']
                if relocation['flags'] >> 16 == 9:
                    # A type-9 relocation names a pointer slot in the
                    # dependency's serialized segment.  Read the relocated
                    # value at the segment file offset; treating ``mapped``
                    # as a virtual address would shift it by the dependency
                    # base once more and fails for legacy class hierarchies.
                    slot = segments[0].file_offset + address - relocation['start']
                    mapped = struct.unpack_from('<I', dep.data, slot)[0]
                    # The slot can itself contain a relocated address.  Follow
                    # that address through the dependency graph exactly as a
                    # normal pointer, rather than returning the raw word.
                    return self.resolve(dep, mapped)
                return dep, mapped
        return None

    def object(self, image, address):
        resolved = self.resolve(image, address)
        if not resolved:
            return None
        target, pointer = resolved
        record = target.objects.get(pointer)
        return (target, record) if record else None

    def text(self, image, address):
        obj = self.object(image, address)
        if not obj:
            return None
        target, record = obj
        body = target.data[record['offset']+12:record['offset']+12+record['size']]
        if body and all(32 <= byte < 127 or byte in (9,10,13) for byte in body):
            return body.decode('ascii')
        return None

    def describe(self, image, address, depth=0):
        if address & 1:
            value = address if address < 0x80000000 else address - 0x100000000
            return value >> 1
        if address in (0,2,4,6,8,10,12,14):
            return f'tag:{address:#x}'
        obj = self.object(image, address)
        if not obj:
            return f'unresolved:{image.name}:{address:#x}'
        target, record = obj
        text = self.text(target, record['address'])
        if text is not None:
            return text
        value = dict(image=target.name, address=hex(record['address']),clazz=hex(record['clazz']),size=record['size'])
        if depth < 1 and record['size'] % 4 == 0 and record['size'] <= 128:
            body = struct.unpack_from('<'+'I'*(record['size']//4),target.data,record['offset']+12)
            value['fields'] = [self.describe(target,p,depth+1) for p in body]
        return value

    def class_name(self, image, address):
        obj = self.object(image, address)
        if not obj:
            return None
        target, record = obj
        if record['size'] < 48:
            return None
        name_pointer = target.word(record['address']+56)
        name = self.text(target, name_pointer)
        if name:
            return name
        regular = self.object(target, name_pointer)
        if regular and regular[1]['size'] >= 48:
            name = self.text(regular[0],regular[0].word(regular[1]['address']+56))
            if name:
                return name + ' class'
        return None


def scan_methods(image):
    methods, errors = {}, []
    for segment in image.segments:
        if segment.flags & 0xff != 0x84:
            continue
        pos, end = segment.file_offset, segment.file_offset+segment.used
        while pos < end:
            identity, lengths = struct.unpack_from('<II', image.data,pos)
            literal_bytes, code_bytes = lengths & 0xffff, lengths >> 16
            stub = bool(identity & 0x80000000)
            total = 8 + literal_bytes + (0 if stub else ((code_bytes+3)&~3))
            if literal_bytes%4 or pos+total>end or total<8:
                errors.append(dict(offset=pos,identity=identity,lengths=lengths,segment=segment.index))
                break
            address = segment.base+pos-segment.file_offset
            literals = list(struct.unpack_from('<'+'I'*(literal_bytes//4),image.data,pos+8))
            code_offset = pos+8+literal_bytes
            code = b'' if stub else image.data[code_offset:code_offset+code_bytes]
            methods[address] = dict(address=address, offset=pos, identity=identity,
                                    literal_bytes=literal_bytes, code_bytes=code_bytes, stub=stub,
                                    literals=literals, code_offset=code_offset, code_hex=code.hex(), total=total)
            pos += total
    code_blocks = {m['code_offset']:m for m in methods.values() if not m['stub']}
    for method in methods.values():
        method['shared_code'] = method['stub']
        if method['shared_code']:
            code_offset = method['offset'] + 1 + method['code_bytes']
            owner = code_blocks.get(code_offset)
            if owner is None:
                errors.append(dict(offset=method['offset'], reason='shared code target missing', target=code_offset))
                continue
            method['shared_offset_field'] = method['code_bytes']
            method['code_offset'] = code_offset
            method['code_bytes'] = owner['code_bytes']
            method['code_hex'] = owner['code_hex']
            method['code_owner_address'] = owner['address']
        method['stub'] = False
    return methods, errors


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    report = []
    for image in load_images():
        record = dict(name=image.name, path=str(image.path), dependencies=image.dependencies,
                      relocations=image.relocations, segments=[vars(s) for s in image.segments],
                      objects=len(image.objects), object_errors=image.object_errors,
                      data_end=image.data_end, file_size=len(image.data), trailing_bytes=len(image.data)-image.data_end)
        report.append(record)
        print(image.name, 'segments',len(image.segments),'objects',len(image.objects),
              'errors',len(image.object_errors),'trailing',record['trailing_bytes'],flush=True)
    (OUT / 'parsed-layouts.json').write_text(json.dumps(report, indent=2), encoding='utf-8')


if __name__ == '__main__':
    main()
