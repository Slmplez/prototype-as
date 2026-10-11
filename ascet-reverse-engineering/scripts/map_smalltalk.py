"""Index observable Smalltalk dependencies and .NET message selectors; no source reconstruction."""
import collections
import csv
import json
import re
import struct
from pathlib import Path
from unpack_all import BASE, ORIGINAL, REPORT, write_json

images = []
hits = collections.defaultdict(list)
for path in sorted(p for p in ORIGINAL.rglob('*') if p.suffix.lower() in {'.ic', '.icx'}):
    data = path.read_bytes()
    record = dict(path=path.relative_to(BASE).as_posix(), size=len(data),
                  header_words_le=[f'0x{x:08x}' for x in struct.unpack('<8I', data[:32])], dependencies=[])
    # Container modules have an observed table of fixed 272-byte dependency entries.
    words = struct.unpack('<8I', data[:32])
    if data[:4] == b'\x1aITO' and words[4] == 0 and words[3] < 1024:
        entries = []
        for i in range(words[3]):
            pos = 32 + 272 * i
            block = data[pos:pos+272]
            name = block[:256].split(b'\0', 1)[0]
            if not re.fullmatch(rb'[A-Za-z0-9_.-]+\.ic', name):
                break
            entries.append(dict(name=name.decode('ascii'), file_offset=pos,
                                trailer_hex=block[256:].hex()))
        if len(entries) == words[3]:
            record['dependencies'] = entries
            record['dependency_table_end'] = 32 + 272 * words[3]
    for match in re.finditer(rb'[\x20-\x7e]{4,}', data):
        value = match.group().decode('ascii')
        if len(value) < 200:
            hits[value].append((path.relative_to(BASE).as_posix(), match.start()))
    images.append(record)
write_json(REPORT / 'smalltalk-structure.json', images)
rows = []
root = BASE / 'decompiled/Etas.AscetNET'
pattern = re.compile(r'create(?:InstanceMethod|ControlMessage)Call\("([^"\r\n]+)"|createClassMethodCall\("[^"\r\n]+",\s*"([^"\r\n]+)"')
for path in sorted(root.rglob('*.cs')):
    for number, line in enumerate(path.read_text(encoding='utf-8').splitlines(), 1):
        for match in pattern.finditer(line):
            selector = match.group(1) or match.group(2)
            rows.append(dict(source=path.relative_to(BASE).as_posix(), line=number,
                             selector=selector, exact_string_hits=[dict(file=p, offset=f'0x{o:x}')
                                                                    for p, o in hits.get(selector, [])]))
write_json(REPORT / 'dotnet-smalltalk-selectors.json', rows)
print('Images', len(images), 'message call sites', len(rows),
      'call sites with exact image strings', sum(bool(x['exact_string_hits']) for x in rows))
