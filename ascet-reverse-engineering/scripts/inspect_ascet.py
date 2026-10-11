"""Read-only ASCET binary inventory and native disassembly (Python stdlib only)."""
import argparse
import csv
import hashlib
import json
import re
import struct
import subprocess
from pathlib import Path


def pe_info(data):
    if data[:2] != b'MZ':
        return None
    pe = struct.unpack_from('<I', data, 0x3C)[0]
    if data[pe:pe + 4] != b'PE\0\0':
        return None
    machine, count = struct.unpack_from('<HH', data, pe + 4)
    opt_size = struct.unpack_from('<H', data, pe + 20)[0]
    opt = pe + 24
    magic = struct.unpack_from('<H', data, opt)[0]
    directory = opt + (112 if magic == 0x20B else 96)
    clr = struct.unpack_from('<II', data, directory + 14 * 8)
    sections = []
    for i in range(count):
        pos = opt + opt_size + i * 40
        name = data[pos:pos + 8].rstrip(b'\0').decode('ascii', 'replace')
        virtual_size, rva, size, offset = struct.unpack_from('<IIII', data, pos + 8)
        sections.append(dict(name=name, rva=rva, virtual_size=virtual_size,
                             raw_size=size, raw_offset=offset))
    return dict(machine=hex(machine), managed=bool(clr[0]),
                entry_rva=hex(struct.unpack_from('<I', data, opt + 16)[0]),
                sections=sections)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--root', type=Path, default=Path(r'E:\ETAS\ASCET6.4'))
    parser.add_argument('--out', type=Path, default=Path('analysis'))
    args = parser.parse_args()
    args.out.mkdir(parents=True, exist_ok=True)
    records = []
    for path in sorted(args.root.rglob('*')):
        if not path.is_file() or path.suffix.lower() not in {'.exe', '.dll', '.ic', '.icx', '.jar', '.tlb'}:
            continue
        data = path.read_bytes()
        record = dict(path=path.relative_to(args.root).as_posix(), size=len(data),
                      sha256=hashlib.sha256(data).hexdigest())
        try:
            record['pe'] = pe_info(data)
        except (struct.error, IndexError) as exc:
            record['parse_error'] = str(exc)
        records.append(record)
    (args.out / 'inventory.json').write_text(json.dumps(records, indent=2), encoding='utf-8')
    managed = [r for r in records if r.get('pe') and r['pe']['managed']]
    (args.out / 'managed-assemblies.json').write_text(json.dumps(managed, indent=2), encoding='utf-8')
    # Include exact offsets; these are raw strings, not recovered method bodies.
    string_dir = args.out / 'strings'
    string_dir.mkdir(exist_ok=True)
    targets = [args.root / 'ASCET.exe', args.root / 'esvm40.dll', args.root / 'ascet.icx']
    targets += sorted((args.root / 'icsrun').glob('*.ic'))
    for path in targets:
        with (string_dir / (path.name + '.tsv')).open('w', encoding='utf-8', newline='') as out:
            writer = csv.writer(out, delimiter='\t')
            writer.writerow(['file_offset_hex', 'ascii_string'])
            for match in re.finditer(rb'[\x20-\x7e]{6,}', path.read_bytes()):
                writer.writerow([f'0x{match.start():08x}', match.group().decode('ascii')])
    objdump = args.root / 'Tools/compiler/mingw_GNU_472/bin/objdump.exe'
    native_dir = args.out / 'native'
    native_dir.mkdir(exist_ok=True)
    for filename in ['ASCET.exe', 'esvm40.dll', 'AscetESD.dll', 'asdl.dll', 'codstore.dll']:
        path = args.root / filename
        for label, flags in [('headers', ['-p', '-h']), ('disassembly', ['-d', '-M', 'intel'])]:
            result = subprocess.run([str(objdump), *flags, str(path)], capture_output=True, check=True)
            (native_dir / f'{filename}.{label}.txt').write_bytes(result.stdout)
    print(json.dumps(dict(files=len(records), managed=len(managed),
                          images=sum(r['path'].endswith(('.ic', '.icx')) for r in records),
                          output=str(args.out.resolve()))))


if __name__ == '__main__':
    main()
