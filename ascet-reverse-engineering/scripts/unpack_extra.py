"""Extract embedded/self-extracting archives without launching the target executable."""
import collections
import concurrent.futures
import json
import subprocess
from unpack_all import BASE, DEST, ORIGINAL, REPORT, SEVEN, digest, kind, unpack_ar, unpack_zip, write_json


def detect_sfx(path):
    proc = subprocess.run([str(SEVEN), 'l', '-slt', str(path)], capture_output=True, timeout=60)
    text = proc.stdout.decode('utf-8', 'replace')
    # PE's resource listing is handled separately by process_all.py.
    types = [line[7:].strip() for line in text.splitlines() if line.startswith('Type = ')]
    if proc.returncode == 0 and types and types[0] not in {'PE', 'ELF', 'COFF'}:
        return path, types[0]
    return None


def main():
    binaries = []
    seen = set()
    for root in [ORIGINAL, DEST / 'archives']:
        for path in root.rglob('*'):
            if not path.is_file() or path.suffix.lower() not in {'.exe', '.dll'}:
                continue
            sha = digest(path)
            if sha not in seen:
                binaries.append(path)
                seen.add(sha)
    queue = collections.deque()
    with concurrent.futures.ThreadPoolExecutor(max_workers=4) as pool:
        for detected in pool.map(detect_sfx, binaries):
            if detected:
                queue.append((detected[0], detected[1], 0))
    # Resources are raw bytes with a numeric name; sniff their signatures too.
    for path in (DEST / 'native').glob('*/resources/*.bin'):
        archive_kind = kind(path)
        if archive_kind:
            queue.append((path, archive_kind, 0))
    records = []
    known = {}
    for filename in ['archives.json', 'archive-repairs.json', 'omf-archives.json']:
        file = REPORT / filename
        if file.exists():
            for record in json.loads(file.read_text(encoding='utf-8')):
                if record['status'] == 'ok':
                    known[record['sha256']] = record['output']
    while queue:
        path, archive_kind, depth = queue.popleft()
        sha = digest(path)
        record = dict(source=path.relative_to(BASE).as_posix(), sha256=sha, kind=archive_kind, depth=depth)
        if sha in known:
            record.update(status='duplicate', output=known[sha])
            records.append(record)
            continue
        output = DEST / 'archives' / sha[:16]
        output.mkdir(parents=True, exist_ok=True)
        record['output'] = output.relative_to(BASE).as_posix()
        try:
            if archive_kind.lower() == 'zip':
                unpack_zip(path, output)
            elif archive_kind == 'ar':
                unpack_ar(path, output)
            else:
                proc = subprocess.run([str(SEVEN), 'x', '-y', '-aou', '-bd', '-bso0', '-bsp0',
                                       '-o' + str(output), str(path)], capture_output=True, timeout=180)
                (output / '_extraction.log').write_bytes(proc.stdout + proc.stderr)
                if proc.returncode:
                    raise RuntimeError(f'7-Zip exit {proc.returncode}')
            children = [p for p in output.rglob('*') if p.is_file()]
            record.update(status='ok', files=len(children))
            known[sha] = record['output']
            for child in children:
                child_kind = kind(child)
                if child_kind:
                    queue.append((child, child_kind, depth + 1))
                elif child.suffix.lower() == '.exe':
                    detected = detect_sfx(child)
                    if detected:
                        queue.append((child, detected[1], depth + 1))
        except Exception as exc:
            record.update(status='error', error=str(exc))
        records.append(record)
        write_json(REPORT / 'extra-archives.json', records)
        print(path.name, archive_kind, record['status'], flush=True)
    write_json(REPORT / 'extra-archives.json', records)
    print('Scanned', len(binaries), 'unique executable/library files;', len(records), 'embedded archive records', flush=True)


if __name__ == '__main__':
    main()
