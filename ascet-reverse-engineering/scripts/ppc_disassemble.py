"""PowerPC ELF disassembly fallback for legacy ASCET target objects and ar libraries."""
import json
import struct
import sys
from pathlib import Path
from unpack_all import BASE, REPORT, write_json

sys.path.insert(0, str(BASE / 'tools/python'))
from capstone import Cs, CS_ARCH_PPC, CS_MODE_32, CS_MODE_64, CS_MODE_BIG_ENDIAN, CS_MODE_LITTLE_ENDIAN


def elf(data, stream, label):
    if not data.startswith(b'\x7fELF'):
        return False
    endian = '>' if data[5] == 2 else '<'
    machine = struct.unpack_from(endian + 'H', data, 18)[0]
    if machine not in (20, 21):
        return False
    bits = data[4]
    if bits == 1:
        section_offset = struct.unpack_from(endian + 'I', data, 32)[0]
        entry_size, count, names_index = struct.unpack_from(endian + 'HHH', data, 46)
        section_format = endian + 'IIIIIIIIII'
    else:
        section_offset = struct.unpack_from(endian + 'Q', data, 40)[0]
        entry_size, count, names_index = struct.unpack_from(endian + 'HHH', data, 58)
        section_format = endian + 'IIQQQQIIQQ'
    sections = [struct.unpack_from(section_format, data, section_offset + i * entry_size) for i in range(count)]
    names_section = sections[names_index]
    names = data[names_section[4]:names_section[4] + names_section[5]]
    engine = Cs(CS_ARCH_PPC, (CS_MODE_32 if bits == 1 else CS_MODE_64) |
                (CS_MODE_BIG_ENDIAN if endian == '>' else CS_MODE_LITTLE_ENDIAN))
    engine.skipdata = True
    stream.write(f'\nOBJECT {label}\nPowerPC ELF; relocations are not applied.\n')
    for section in sections:
        if not section[2] & 4 or section[1] == 8:
            continue
        name = names[section[0]:].split(b'\0', 1)[0].decode('ascii', 'replace')
        body = data[section[4]:section[4] + section[5]]
        stream.write(f'\nSECTION {name} offset={section[4]:#x} address={section[3]:#x}\n')
        for address, size, mnemonic, operands in engine.disasm_lite(body, section[3]):
            stream.write(f'{address:08x}: {mnemonic:12s} {operands}\n')
    return True


def main():
    records = json.loads((REPORT / 'native-results.json').read_text(encoding='utf-8'))
    archives = json.loads((REPORT / 'archives.json').read_text(encoding='utf-8'))
    mapping = {r['sha256']:r for r in archives if r['status'] == 'ok' and r['kind'] == 'ar'}
    for record in records:
        if record['status'] != 'partial':
            continue
        source = BASE / record['source']
        output = BASE / record['output']
        count = 0
        with (output / 'disassembly.powerpc.txt').open('w', encoding='utf-8') as stream:
            if record['sha256'] in mapping:
                root = BASE / mapping[record['sha256']]['output']
                for member in json.loads((root / '_members.json').read_text(encoding='utf-8')):
                    count += int(elf((root / member['output']).read_bytes(), stream, member['name']))
            else:
                count += int(elf(source.read_bytes(), stream, source.name))
        if count:
            record['powerpc_objects_disassembled'] = count
            record['status'] = 'ok_with_powerpc_fallback'
            print(source.name, count, 'PowerPC objects', flush=True)
            write_json(output / '_result.json', record)
    write_json(REPORT / 'native-results.json', records)


if __name__ == '__main__':
    main()
