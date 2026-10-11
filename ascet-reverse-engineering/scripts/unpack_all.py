"""Snapshot and recursively unpack the installed ASCET tree; never execute its installers."""
import collections
import hashlib
import json
import re
import shutil
import struct
import subprocess
import zipfile
from pathlib import Path

BASE = Path(__file__).resolve().parents[1]
SOURCE = Path(r'E:\ETAS\ASCET6.4')
DEST = BASE / 'unpacked'
ORIGINAL = DEST / 'installation'
SEVEN = Path(r'C:\Program Files\NVIDIA Corporation\NVIDIA app\7z.exe')
REPORT = BASE / 'analysis/full'


def digest(path):
    with path.open('rb') as stream:
        return hashlib.file_digest(stream, 'sha256').hexdigest()


def write_json(path, value):
    path.parent.mkdir(parents=True, exist_ok=True)
    temporary = path.with_suffix('.tmp')
    temporary.write_text(json.dumps(value, indent=2, ensure_ascii=False), encoding='utf-8')
    temporary.replace(path)


def kind(path):
    with path.open('rb') as stream:
        head = stream.read(12)
    if head.startswith((b'PK\x03\x04', b'PK\x05\x06', b'PK\x07\x08')):
        return 'zip'
    if head.startswith(b'!<arch>\n'):
        return 'ar'
    if head.startswith(b'ITSF'):
        return 'chm'
    if head.startswith(b'MSCF'):
        return 'cab'
    if head.startswith(b'\x1f\x8b'):
        return 'gzip'
    if head.startswith(b'7z\xbc\xaf\x27\x1c'):
        return '7z'
    if path.suffix.lower() == '.msi' and head.startswith(b'\xd0\xcf\x11\xe0'):
        return 'msi'
    return None


def safe_name(name):
    return re.sub(r'[<>:"/\\|?*\x00-\x1f]', '_', name).rstrip(' .') or 'unnamed'


def unpack_ar(path, out):
    data = path.read_bytes()
    pos, index, long_names = 8, [], b''
    while pos < len(data):
        header = data[pos:pos + 60]
        if len(header) != 60 or header[58:] != b'`\n':
            raise ValueError(f'Invalid ar member header at {pos}')
        length = int(header[48:58].strip())
        raw_name = header[:16].decode('ascii', 'replace').strip()
        body = data[pos + 60:pos + 60 + length]
        if len(body) != length:
            raise ValueError('Truncated ar member')
        name = raw_name
        if raw_name == '//':
            long_names = body
            name = '__long_names'
        elif raw_name == '/':
            name = '__symbol_table'
        elif raw_name.startswith('#1/'):
            n = int(raw_name[3:])
            name = body[:n].decode('utf-8', 'replace').rstrip('\0')
            body = body[n:]
        elif raw_name.startswith('/') and raw_name[1:].isdigit():
            tail = long_names[int(raw_name[1:]):]
            name = re.split(b'/\n|\0|\n', tail, maxsplit=1)[0].decode('utf-8', 'replace')
        else:
            name = name.rstrip('/')
        # Ordinal prefix preserves duplicate archive members on Windows.
        output = out / f'{len(index):05d}_{safe_name(name)}'
        output.write_bytes(body)
        index.append(dict(name=name, archive_offset=pos + 60, size=len(body),
                          output=output.name, sha256=hashlib.sha256(body).hexdigest()))
        pos += 60 + length + length % 2
    write_json(out / '_members.json', index)


def unpack_zip(path, out):
    index, seen = [], set()
    with zipfile.ZipFile(path) as archive:
        for ordinal, info in enumerate(archive.infolist()):
            # Preserve all entries, including case-insensitive duplicate names.
            parts = info.filename.replace('\\', '/').split('/')
            if any(part == '..' for part in parts) or info.filename.startswith('/'):
                raise ValueError(f'Unsafe archive entry: {info.filename}')
            relative = Path(*[safe_name(x) for x in parts if x and x != '.'])
            target = out / relative
            key = str(target).casefold()
            if key in seen and not info.is_dir():
                target = out / '__duplicate_entries__' / str(ordinal) / relative
            seen.add(key)
            if info.is_dir():
                target.mkdir(parents=True, exist_ok=True)
                continue
            target.parent.mkdir(parents=True, exist_ok=True)
            with archive.open(info) as source, target.open('wb') as dest:
                shutil.copyfileobj(source, dest)
            index.append(dict(name=info.filename, output=target.relative_to(out).as_posix(),
                              size=info.file_size, crc32=f'{info.CRC:08x}'))
    write_json(out / '_members.json', index)


def main():
    REPORT.mkdir(parents=True, exist_ok=True)
    ORIGINAL.mkdir(parents=True, exist_ok=True)
    files = sorted(p for p in SOURCE.rglob('*') if p.is_file())
    manifest = []
    for i, source in enumerate(files, 1):
        relative = source.relative_to(SOURCE)
        target = ORIGINAL / relative
        target.parent.mkdir(parents=True, exist_ok=True)
        source_hash = digest(source)
        if not target.exists() or digest(target) != source_hash:
            shutil.copy2(source, target)
        target_hash = digest(target)
        if source_hash != target_hash:
            raise ValueError(f'Copy verification failed: {relative}')
        manifest.append(dict(path=relative.as_posix(), size=target.stat().st_size,
                             sha256=target_hash))
        if i % 1000 == 0:
            print(f'Snapshot verified {i}/{len(files)}', flush=True)
    write_json(REPORT / 'installation-manifest.json', manifest)
    # Detect magic, including archives with nonstandard extensions and embedded CABs.
    queue = collections.deque((ORIGINAL / x['path'], 0) for x in manifest)
    records, processed = [], {}
    while queue:
        source, depth = queue.popleft()
        archive_kind = kind(source)
        if archive_kind is None:
            continue
        source_hash = digest(source)
        record = dict(source=source.relative_to(BASE).as_posix(), kind=archive_kind,
                      sha256=source_hash, depth=depth)
        if source_hash in processed:
            record.update(status='duplicate', output=processed[source_hash])
            records.append(record)
            continue
        output = DEST / 'archives' / source_hash[:16]
        output.mkdir(parents=True, exist_ok=True)
        record['output'] = output.relative_to(BASE).as_posix()
        try:
            if archive_kind == 'ar':
                unpack_ar(source, output)
            elif archive_kind == 'zip':
                unpack_zip(source, output)
            else:
                proc = subprocess.run([str(SEVEN), 'x', '-y', '-aou', '-bd', '-bso0',
                                       '-bsp0', '-o' + str(output), str(source)],
                                      capture_output=True, text=True, errors='replace', timeout=180)
                (output / '_extraction.log').write_text(proc.stdout + proc.stderr, encoding='utf-8')
                if proc.returncode:
                    raise RuntimeError(f'7-Zip exit {proc.returncode}: {proc.stderr[:500]}')
            children = [p for p in output.rglob('*') if p.is_file()]
            record.update(status='ok', files=len(children))
            processed[source_hash] = record['output']
            queue.extend((child, depth + 1) for child in children
                         if child.name not in {'_members.json', '_extraction.log'})
        except Exception as exc:
            record.update(status='error', error=str(exc))
        records.append(record)
        write_json(REPORT / 'archives.json', records)
        print(f"Archive {len(records)}: {archive_kind} {source.name} -> {record['status']}", flush=True)
    write_json(REPORT / 'archives.json', records)
    print(json.dumps(dict(snapshot_files=len(manifest), snapshot_bytes=sum(x['size'] for x in manifest),
                          archives=len(records), statuses=dict(collections.Counter(x['status'] for x in records)))))


if __name__ == '__main__':
    main()
