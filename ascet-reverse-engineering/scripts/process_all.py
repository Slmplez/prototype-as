"""Batch decompilation and binary extraction from the verified ASCET snapshot."""
import argparse
import collections
import concurrent.futures
import csv
import hashlib
import json
import re
import struct
import subprocess
import zipfile
from pathlib import Path

from inspect_ascet import pe_info
from unpack_all import BASE, DEST, REPORT, digest, safe_name, write_json

DOTNET = r'C:\Program Files\dotnet\dotnet.exe'
JAVA = r'E:\app\MATLAB26\sys\java\jre\win64\jre\bin\java.exe'
OBJDUMP = r'C:\Program Files\mingw64\bin\objdump.exe'
ILSPY = BASE / 'tools/ilspycmd/tools/net8.0/any/ilspycmd.dll'
CFR = BASE / 'tools/cfr-0.152.jar'
WARNING_PATTERN = re.compile(r'could not be decompiled|Could not decompile|Exception decompiling|Invalid IL code|could not be foundin any section|Unknown result type|This method is not decompiled|Unable to fully structure|This method has failed|Decompilation failed|WARNING -|IL_[0-9A-Fa-f]+: Expected', re.I)


def catalog(installation_only=False):
    records = []
    repairs_path = REPORT / 'archive-repairs.json'
    excluded = set()
    if repairs_path.exists():
        excluded = {str(BASE / r['superseded_partial_output']) for r in json.loads(repairs_path.read_text(encoding='utf-8'))}
    roots = [DEST / 'installation']
    if not installation_only:
        roots.append(DEST / 'archives')
    for path in sorted(p for root in roots for p in root.rglob('*') if p.is_file()):
        if any(str(path).startswith(prefix + '\\') for prefix in excluded):
            continue
        with path.open('rb') as stream:
            head = stream.read(64)
        category = None
        pe = None
        if head.startswith(b'MZ'):
            try:
                pe = pe_info(path.read_bytes())
                if pe:
                    category = 'managed' if pe['managed'] else 'native'
            except (ValueError, struct.error, IndexError):
                pass
        elif head.startswith(b'PK') and path.suffix.lower() in {'.jar', '.zip'}:
            with zipfile.ZipFile(path) as archive:
                if path.suffix.lower() == '.jar' or any(n.endswith('.class') for n in archive.namelist()):
                    category = 'java'
        elif head.startswith(b'\xca\xfe\xba\xbe'):
            category = 'class'
        elif head.startswith(b'!<arch>\n'):
            category = 'library'
        elif path.suffix.lower() in {'.ic', '.icx'}:
            category = 'smalltalk'
        elif (head.startswith(b'\x7fELF') or path.suffix.lower() in {'.o', '.obj'}) and 'archives' not in path.relative_to(DEST).parts:
            category = 'object'
        if category:
            records.append(dict(path=path.relative_to(BASE).as_posix(), kind=category,
                                size=path.stat().st_size, sha256=digest(path), pe=pe))
    write_json(REPORT / 'binary-catalog.json', records)
    print(dict(collections.Counter(x['kind'] for x in records)), flush=True)


def resources(data, pe, output):
    pe_offset = struct.unpack_from('<I', data, 0x3c)[0]
    opt = pe_offset + 24
    magic = struct.unpack_from('<H', data, opt)[0]
    directory = opt + (112 if magic == 0x20b else 96)
    rva, size = struct.unpack_from('<II', data, directory + 16)
    if not rva or not size:
        return []

    def offset(address):
        for section in pe['sections']:
            relative = address - section['rva']
            if 0 <= relative < section['raw_size']:
                return section['raw_offset'] + relative
        raise ValueError(f'Unmapped resource RVA: {address:#x}')

    root = offset(rva)
    found, visited = [], set()

    def walk(relative, names):
        if relative in visited or len(names) > 8:
            raise ValueError('Cyclic or excessive resource directory depth')
        visited.add(relative)
        pos = root + relative
        named, ids = struct.unpack_from('<HH', data, pos + 12)
        for i in range(named + ids):
            name, child = struct.unpack_from('<II', data, pos + 16 + i * 8)
            if name & 0x80000000:
                npos = root + (name & 0x7fffffff)
                length = struct.unpack_from('<H', data, npos)[0]
                label = data[npos + 2:npos + 2 + length * 2].decode('utf-16le', 'replace')
            else:
                label = str(name)
            chain = names + [label]
            if child & 0x80000000:
                walk(child & 0x7fffffff, chain)
            else:
                address, length, codepage, reserved = struct.unpack_from('<IIII', data, root + child)
                start = offset(address)
                body = data[start:start + length]
                if len(body) != length:
                    raise ValueError('Truncated resource')
                filename = f'{len(found):05d}_' + '_'.join(safe_name(x) for x in chain)[:150] + '.bin'
                (output / filename).write_bytes(body)
                found.append(dict(path=chain, file=filename, rva=address, file_offset=start,
                                  size=length, codepage=codepage,
                                  sha256=hashlib.sha256(body).hexdigest()))
        visited.remove(relative)

    walk(0, [])
    return found


def destination(record, mode):
    legacy = DEST / mode / f"{record['sha256'][:16]}_{safe_name(Path(record['path']).name)[:90]}"
    saved = legacy / '_result.json'
    failed = saved.exists() and json.loads(saved.read_text(encoding='utf-8')).get('status') == 'error'
    if legacy.exists() and not failed:
        return legacy
    return DEST / mode / record['sha256'][:16]


def process(record, mode):
    source = BASE / record['path']
    output = destination(record, mode)
    output.mkdir(parents=True, exist_ok=True)
    result = dict(source=record['path'], sha256=record['sha256'], kind=record['kind'],
                  output=output.relative_to(BASE).as_posix())
    try:
        if mode == 'dotnet':
            command = [DOTNET, str(ILSPY), '-p', '-o', str(output), str(source)]
        elif mode == 'java':
            command = [JAVA, '-Xmx1024m', '-jar', str(CFR), str(source),
                       '--analyseas', 'JAR', '--outputdir', str(output), '--silent', 'true', '--outputencoding', 'UTF-8']
        elif mode == 'native':
            command = None
            returncodes = []
            for label, flags in [('headers', ['-x', '-h']), ('disassembly', ['-d', '-M', 'intel'])]:
                with (output / f'{label}.txt').open('wb') as out, (output / f'{label}.errors.txt').open('wb') as err:
                    p = subprocess.run([OBJDUMP, *flags, str(source)], stdout=out, stderr=err, timeout=240)
                returncodes.append(p.returncode)
            result['exit_codes'] = returncodes
            if record.get('pe'):
                data = source.read_bytes()
                section_dir = output / 'sections'
                section_dir.mkdir(exist_ok=True)
                for i, section in enumerate(record['pe']['sections']):
                    start, length = section['raw_offset'], section['raw_size']
                    (section_dir / f"{i:02d}_{safe_name(section['name'])}.bin").write_bytes(data[start:start + length])
                resource_dir = output / 'resources'
                resource_dir.mkdir(exist_ok=True)
                try:
                    res = resources(data, record['pe'], resource_dir)
                    write_json(resource_dir / 'index.json', res)
                    result['resources'] = len(res)
                except Exception as exc:
                    result['resource_error'] = str(exc)
                write_json(output / 'pe.json', record['pe'])
            result['status'] = 'ok' if not any(returncodes) and not result.get('resource_error') else 'partial'
        elif mode == 'smalltalk':
            command = None
            data = source.read_bytes()
            (output / 'header.hex.txt').write_text(data[:512].hex(' '), encoding='ascii')
            with (output / 'strings.tsv').open('w', encoding='utf-8', newline='') as out:
                writer = csv.writer(out, delimiter='\t')
                writer.writerow(['file_offset_hex', 'encoding', 'text'])
                count = 0
                for pattern, encoding in [(rb'[\x20-\x7e]{4,}', 'ascii'),
                                           (rb'(?:[\x20-\x7e]\x00){4,}', 'utf-16le')]:
                    for match in re.finditer(pattern, data):
                        writer.writerow([f'0x{match.start():08x}', encoding, match.group().decode(encoding)])
                        count += 1
            result.update(status='strings_only', strings=count,
                          limitation='No Smalltalk object graph or bytecode decompiler has been applied.')
        if command:
            with (output / 'tool.log').open('wb') as log:
                proc = subprocess.run(command, stdout=log, stderr=subprocess.STDOUT, timeout=900)
            result.update(exit_code=proc.returncode, status='ok' if proc.returncode == 0 else 'error')
            result['source_files'] = len(list(output.rglob('*.cs' if mode == 'dotnet' else '*.java')))
            if mode == 'java':
                with zipfile.ZipFile(source) as archive:
                    result['input_classes'] = sum(n.endswith('.class') for n in archive.namelist())
            warnings = []
            pattern = WARNING_PATTERN
            for path in output.rglob('*.cs' if mode == 'dotnet' else '*.java'):
                for line_number, line in enumerate(path.read_text(encoding='utf-8', errors='replace').splitlines(), 1):
                    if pattern.search(line):
                        warnings.append(dict(file=path.relative_to(output).as_posix(), line=line_number, text=line.strip()))
            write_json(output / 'decompiler-warnings.json', warnings)
            result['warning_lines'] = len(warnings)
            if warnings and result['status'] == 'ok':
                result['status'] = 'partial'
        write_json(output / '_result.json', result)
    except Exception as exc:
        result.update(status='error', error=str(exc))
        write_json(output / '_result.json', result)
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('mode', choices=['catalog', 'dotnet', 'java', 'native', 'smalltalk'])
    parser.add_argument('--workers', type=int, default=2)
    parser.add_argument('--installation-only', action='store_true')
    args = parser.parse_args()
    if args.mode == 'catalog':
        catalog(args.installation_only)
        return
    records = json.loads((REPORT / 'binary-catalog.json').read_text(encoding='utf-8'))
    wanted = {'dotnet': {'managed'}, 'java': {'java'}, 'native': {'native', 'object', 'managed', 'library'},
              'smalltalk': {'smalltalk'}}[args.mode]
    unique, aliases = {}, collections.defaultdict(list)
    for record in records:
        if record['kind'] in wanted:
            unique.setdefault(record['sha256'], record)
            aliases[record['sha256']].append(record['path'])
    results, pending = [], []
    # Resume completed outputs instead of repeating expensive decompilation.
    for record in unique.values():
        source = BASE / record['path']
        saved = destination(record, args.mode) / '_result.json'
        if saved.exists():
            result = json.loads(saved.read_text(encoding='utf-8'))
            if result['status'] not in {'error'}:
                result['aliases'] = aliases[record['sha256']]
                results.append(result)
                continue
        pending.append(record)
    with concurrent.futures.ThreadPoolExecutor(max_workers=args.workers) as pool:
        tasks = {pool.submit(process, record, args.mode): record for record in pending}
        for future in concurrent.futures.as_completed(tasks):
            result = future.result()
            result['aliases'] = aliases[result['sha256']]
            results.append(result)
            write_json(REPORT / f'{args.mode}-results.json', results)
            print(f"{args.mode} {len(results)}/{len(unique)} {Path(result['source']).name}: {result['status']}", flush=True)
    write_json(REPORT / f'{args.mode}-results.json', results)
    print(dict(collections.Counter(x['status'] for x in results)), flush=True)


if __name__ == '__main__':
    main()
