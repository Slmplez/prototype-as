"""Check the committed source checkpoint without connecting to ASCET."""
import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parent

if __name__ == '__main__':
    manifest = json.loads((ROOT / 'files.sha256.json').read_text(encoding='utf-8'))
    failures = []
    for row in manifest['files']:
        path = (ROOT / row['path']).resolve()
        if not path.is_relative_to(ROOT):
            raise ValueError('Manifest entry escapes package root')
        if not path.is_file() or hashlib.sha256(path.read_bytes()).hexdigest() != row['sha256']:
            failures.append(row['path'])
    print(json.dumps(dict(profile=manifest['profile'], checked=len(manifest['files']), failures=failures)))
    raise SystemExit(1 if failures else 0)
