"""Check snapshot hashes, archive integrity metadata and binary stage coverage."""
import collections
import hashlib
import json
import zipfile
from pathlib import Path
from unpack_all import BASE, ORIGINAL, REPORT, digest, write_json


def read(name):
    return json.loads((REPORT / name).read_text(encoding='utf-8'))


def main():
    catalog = read('binary-catalog.json')
    java = read('java-results.json')
    covered = set()
    for item in java:
        with zipfile.ZipFile(BASE / item['source']) as archive:
            for name in archive.namelist():
                if name.endswith('.class'):
                    covered.add(hashlib.sha256(archive.read(name)).hexdigest())
    orphans = [x for x in catalog if x['kind']=='class' and x['sha256'] not in covered]
    write_json(REPORT / 'orphan-class-files.json', orphans)
    missing = []
    for stage,kinds in {'dotnet':{'managed'}, 'java':{'java'},
                        'native':{'native','managed','object','library'}, 'smalltalk':{'smalltalk'}}.items():
        actual = {r['sha256'] for r in read(stage + '-results.json')}
        expected = {r['sha256'] for r in catalog if r['kind'] in kinds}
        missing.extend(dict(stage=stage,sha256=sha) for sha in expected-actual)
    snapshot = read('installation-manifest.json')
    mismatches = []
    for i,record in enumerate(snapshot,1):
        path = ORIGINAL / record['path']
        if not path.exists() or path.stat().st_size != record['size'] or digest(path) != record['sha256']:
            mismatches.append(record['path'])
        if i % 3000 == 0:
            print('Snapshot hash verification',i,'/',len(snapshot),flush=True)
    result = dict(snapshot_files_verified=len(snapshot), snapshot_mismatches=mismatches,
                  missing_binary_stages=missing, orphan_class_paths=len(orphans),
                  unique_class_bytes_covered_by_java_inputs=len(covered),
                  java_top_level_files_missing=sum(x.get('missing_top_level_java_files',0) for x in java))
    write_json(REPORT / 'verification.json',result)
    print(json.dumps(result),flush=True)
    if mismatches or missing or orphans or result['java_top_level_files_missing']:
        raise SystemExit(1)


if __name__ == '__main__':
    main()
