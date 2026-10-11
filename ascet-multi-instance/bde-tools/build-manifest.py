"""Build hashes for a source checkpoint; excluded runtime state is never packaged."""
import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent

if __name__ == '__main__':
    files = []
    for path in sorted(ROOT.rglob('*')):
        relative = path.relative_to(ROOT)
        if (not path.is_file() or 'analysis' in relative.parts or '__pycache__' in relative.parts
                or path.suffix in ('.pyc', '.pyo') or relative.as_posix() == 'files.sha256.json'):
            continue
        raw = path.read_bytes()
        files.append(dict(path=relative.as_posix(), bytes=len(raw), sha256=hashlib.sha256(raw).hexdigest()))
    (ROOT / 'files.sha256.json').write_text(json.dumps(dict(profile='bde_source_checkpoint_sha256_v1',
        full_delivery=False, files=files), indent=2) + '\n', encoding='utf-8')
    print(json.dumps(dict(files=len(files), bytes=sum(row['bytes'] for row in files))))
