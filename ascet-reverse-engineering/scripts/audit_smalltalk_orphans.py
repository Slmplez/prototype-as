"""Audit references to compact methods without a class/selector binding."""
import bisect
import json
import struct

from decompile_smalltalk import Literals, decode, lower
from smalltalk_image import OUT, Universe


def method_references(universe, owner, address):
    segment = next(s for s in owner.segments if s.base <= address < s.base + s.used)
    references = []
    candidates_by_image = {}
    for image in universe.images:
        candidates = set()
        if image is owner:
            candidates.add(address)
        for relocation in image.relocations:
            if image.dependencies[relocation['dependency']].lower() != owner.name.lower():
                continue
            targets = [s for s in owner.segments if s.words[15] == relocation['segment']]
            if len(targets) != 1 or targets[0] != segment:
                continue
            pointer = relocation['start'] + address - segment.base
            if relocation['start'] <= pointer < relocation['end']:
                candidates.add(pointer)
        candidates = {p for p in candidates if universe.resolve(image, p) == (owner, address)}
        if not candidates:
            continue
        candidates_by_image[image.name] = [hex(p) for p in sorted(candidates)]
        objects = sorted(image.objects.values(), key=lambda obj: obj['offset'])
        starts = [obj['offset'] for obj in objects]
        for pointer in sorted(candidates):
            needle = struct.pack('<I', pointer | 1)
            offset = image.data.find(needle)
            while offset != -1:
                index = bisect.bisect_right(starts, offset) - 1
                obj = objects[index] if index >= 0 else None
                inside = (obj and obj['offset'] + 12 <= offset and
                          offset + 4 <= obj['offset'] + 12 + obj['size'])
                if inside and (offset - obj['offset'] - 12) % 4 == 0:
                    location = dict(kind='object_word', object_address=hex(obj['address']),
                                    word_index=(offset - obj['offset'] - 12) // 4,
                                    object_class=universe.class_name(image, obj['clazz']))
                else:
                    location = dict(kind='other_bytes')
                references.append(dict(image=image.name, file_offset=offset,
                                       pointer=hex(pointer | 1), **location))
                offset = image.data.find(needle, offset + 1)
    return candidates_by_image, references


def main():
    universe = Universe()
    literals = Literals(universe)
    orphans = []
    for image in universe.images:
        path = OUT / 'methods' / image.name / 'methods.jsonl'
        with path.open(encoding='utf8') as stream:
            orphans.extend((image, row) for line in stream
                           if not (row := json.loads(line))['bindings'])
    report = []
    for owner, method in orphans:
        candidates, references = method_references(universe, owner, method['address'])
        block_literals = []
        for pointer in method['literals']:
            target = universe.object(owner, pointer)
            if target and universe.class_name(target[0], target[1]['clazz']) == 'EsCompactBlockContextTemplate':
                block_literals.append(dict(image=target[0].name, address=hex(target[1]['address'])))
        item = dict(image=owner.name, address=hex(method['address']),
                           file_offset=method['offset'],
                           bytecode_bytes=method['code_bytes'],
                           literal_count=len(method['literals']),
                           block_literals=block_literals,
                           relocated_addresses=candidates, references=references,
                           method_array_references=[ref for ref in references
                                                    if ref.get('object_class') == 'EsMethodArray'])
        instructions = decode(bytes.fromhex(method['code_hex']))
        if not any(ins['kind'] in ('ivar', 'store_ivar') or
                   (ins['kind'] == 'send' and len(ins['args']) == 4)
                   for ins in instructions):
            # The placeholder is used only to satisfy the lowerer's signature
            # check; the emitted body has no lexical class or selector dependency.
            binding = dict(selector='anonymous', clazz='', class_image=owner.name,
                           class_address='0x0')
            source, lowered, kind = lower(method, binding, literals)
            body = source.partition('\n')[2]
            assert body and lowered
            filename = f'orphan-{owner.name}-{method["address"]:#x}.body.txt'
            (OUT / filename).write_text(
                f'# Unbound compact method: {owner.name} {method["address"]:#x}\n'
                '# Class and selector unknown; this is a reconstructed body, not a file-out method.\n'
                f'# Image file offset: {method["offset"]:#x}; lowering: {kind}\n\n'
                + body, encoding='utf8')
            item['body_source'] = filename
            item['body_instruction_count'] = len(lowered)
        report.append(item)
    (OUT / 'orphan-method-audit.json').write_text(json.dumps(report, indent=2), encoding='utf8')
    print('Unbound methods:', len(report))
    for item in report:
        print(item['image'], item['address'], 'references:', len(item['references']),
              'method-array references:', len(item['method_array_references']))


if __name__ == '__main__':
    main()
