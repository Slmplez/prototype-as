"""Extract Borland OMF library modules with their record boundaries and checksums."""
import json
import struct
from unpack_all import BASE, DEST, ORIGINAL, REPORT, digest, safe_name, write_json

records = []
for path in sorted(ORIGINAL.rglob('*.lib')):
    data = path.read_bytes()
    if not data or data[0] != 0xf0:
        continue
    sha = digest(path)
    output = DEST / 'archives' / sha[:16]
    output.mkdir(parents=True, exist_ok=True)
    page = struct.unpack_from('<H', data, 1)[0] + 3
    dictionary_offset = struct.unpack_from('<I', data, 3)[0]
    (output / '_library_header.bin').write_bytes(data[:page])
    if dictionary_offset:
        (output / '_dictionary.bin').write_bytes(data[dictionary_offset:])
    position, modules = page, []
    try:
        while position < (dictionary_offset or len(data)):
            if data[position] == 0xf1:
                break
            start, details, name = position, [], f'module_{len(modules)}'
            while position + 3 <= len(data):
                tag = data[position]
                length = struct.unpack_from('<H', data, position + 1)[0]
                end = position + 3 + length
                if not length or end > len(data):
                    raise ValueError(f'Invalid record at {position:#x}')
                body = data[position:end]
                if tag in (0x80, 0x82):
                    name = body[4:4 + body[3]].decode('cp1252', 'replace')
                details.append(dict(offset=position, type=f'{tag:02x}', size=len(body),
                                    checksum_valid=sum(body) % 256 == 0,
                                    checksum_disabled=body[-1] == 0))
                position = end
                if tag in (0x8a, 0x8b):
                    break
            else:
                raise ValueError('OMF module missing MODEND')
            filename = f'{len(modules):05d}_{safe_name(name)[:100]}.obj'
            (output / filename).write_bytes(data[start:position])
            modules.append(dict(name=name, file=filename, offset=start, size=position-start, records=details))
            position = ((position + page - 1) // page) * page
        write_json(output / '_members.json', modules)
        records.append(dict(source=path.relative_to(BASE).as_posix(), sha256=sha,
                            output=output.relative_to(BASE).as_posix(), kind='omf-library',
                            status='ok', files=len(modules) + 3, modules=len(modules)))
        print(path.name, len(modules), 'modules', flush=True)
    except Exception as exc:
        records.append(dict(source=path.relative_to(BASE).as_posix(), sha256=sha,
                            output=output.relative_to(BASE).as_posix(), kind='omf-library',
                            status='error', error=str(exc)))
write_json(REPORT / 'omf-archives.json', records)
