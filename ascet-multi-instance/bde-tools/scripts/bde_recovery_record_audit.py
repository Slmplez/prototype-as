"""Locate source-derived CTree records in a frozen snapshot; no native loading."""
import argparse
import json
from pathlib import Path
import struct
import traceback

import bd_service as service
import bd_class_tools as tools
from bd_class_study_journal import actual_diff
from bde_recovery_byte_audit import occurrences


# Search-record GIDs concatenate pcId/tsThisVersion and a separate transactionId.
PROFILES = (
    {'name': 'CTreeSearchObjectRecord', 'fixed_size': 130, 'name_size': 37,
     'version': 108, 'transaction_id': 123, 'blob_size': 126},
    {'name': 'CTreeSearchObjectRecordN32', 'fixed_size': 126, 'name_size': 33,
     'version': 104, 'transaction_id': 119, 'blob_size': 122},
)


def candidate_at(data, start, profile):
    fixed = profile['fixed_size']
    if start < 0 or start + fixed > len(data) or data[start + 1] not in (0, fixed):
        return None, 'fixed-size byte or header bounds'
    size = struct.unpack_from('<I', data, start + profile['blob_size'])[0]
    blob_start, end = start + fixed, start + fixed + size
    if size < 16 or size > 16 * 1024 * 1024 or end > len(data):
        return None, 'blob size/bounds'
    wrapper = None
    if start >= 10 and data[start - 10:start - 8] == b'\xfa\xfa':
        allocated, used = struct.unpack_from('<II', data, start - 8)
        if used != fixed + size or allocated < used + 10 or start - 10 + allocated > len(data):
            return None, 'storage-block lengths disagree with profile'
        wrapper = {'offset': start - 10, 'allocated_length': allocated, 'used_length': used}
    # create:size: does not set storedFixedSize. A zero needs independent block bounds.
    if data[start + 1] == 0 and wrapper is None:
        return None, 'zero size marker without bounded storage block'
    classname_bytes = data[start + 38:start + 71].split(b'\0', 1)[0]
    if not classname_bytes or any(byte < 32 or byte > 126 for byte in classname_bytes):
        return None, 'non-ASCII/empty class name; unsupported profile'
    name = data[start + 71:start + 71 + profile['name_size']].split(b'\0', 1)[0]
    txn = start + profile['transaction_id']
    return {'profile': profile['name'], 'record_offset': start, 'blob_offset': blob_start,
            'blob_size': size, 'record_end': end, 'fixed_size': fixed,
            'stored_fixed_size_byte': data[start + 1], 'storage_block': wrapper,
            'class_name': classname_bytes.decode('ascii'), 'name_bytes_hex': name.hex(),
            'global_id': 'bytes:' + (data[start + 2:start + 20] + data[txn:txn + 2]).hex(),
            'first_version_id': 'bytes:' + data[start + 20:start + 38].hex(),
            'delete_flag_byte': data[start],
            'version': struct.unpack_from('<I', data, start + profile['version'])[0]}, None


def locate_records(data, gid):
    if len(gid) != 20:
        raise ValueError('CTreeRecord globalIdLength requires 20 bytes')
    hits = occurrences(data, gid[:18])
    if hits['truncated']:
        raise ValueError('Identity prefix exceeds the bounded scan; no complete claim')
    candidates, rejected = [], []
    for offset in hits['offsets']:
        start = offset - 2
        for profile in PROFILES:
            row = {'global_id_prefix_offset': offset, 'profile': profile['name']}
            candidate, reason = candidate_at(data, start, profile)
            if candidate is None:
                rejected.append({**row, 'reason': reason})
                continue
            if candidate['global_id'] != 'bytes:' + gid.hex():
                rejected.append({**row, 'reason': 'split transactionId differs'})
                continue
            candidates.append({**row, **candidate})
    return candidates, rejected


def containing_records(data, needle, *, include_allocation=False):
    sightings = occurrences(data, needle)
    if sightings['truncated']:
        raise ValueError('Alias scan exceeds the bounded audit')
    candidates = []
    offset = 0
    while True:
        offset = data.find(b'\xfa\xfa', offset)
        if offset < 0:
            return candidates
        for profile in PROFILES:
            candidate, _ = candidate_at(data, offset + 10, profile)
            if candidate is not None and candidate['storage_block'] is not None:
                limit = candidate['record_end']
                if include_allocation:
                    limit = offset + candidate['storage_block']['allocated_length']
                hits = [hit for hit in sightings['offsets'] if
                        candidate['blob_offset'] <= hit and hit + len(needle) <= limit]
                if hits:
                    candidates.append({**candidate, 'alias_offsets': hits,
                                       'alias_within_used_blob': all(hit + len(needle) <= candidate['record_end'] for hit in hits)})
        offset += 2


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--store', type=Path, required=True)
    parser.add_argument('--change-id', required=True)
    parser.add_argument('--snapshot', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    service.STORE = args.store.resolve()
    original = tools.root(args.change_id)
    patch = actual_diff(original / 'native.wal')
    if patch['status'] != 'retained_applied':
        raise ValueError('Complete applied actual WAL required')
    source = json.loads((args.snapshot / 'result.json').read_text(encoding='utf-8'))
    if not source.get('passed') or source['change_id'] != args.change_id:
        raise ValueError('Successful same-change frozen byte audit required')
    metadata = next(row for row in source['files'] if Path(row['path']).name == 'sobjects.dat')
    data = (args.snapshot / 'sobjects.dat').read_bytes()
    if service.digest(data) != metadata['sha256']:
        raise ValueError('Frozen sobjects.dat checksum changed')
    signature = patch['definition_effect']['before']
    identity = next(row['identity'] for row in signature['references'] if row['oid'] == signature['oid'])
    gid = bytes.fromhex(identity.removeprefix('bytes:'))
    if len(gid) != 20:
        raise ValueError('CTreeRecord globalIdLength source profile requires 20 bytes')
    output = args.output.resolve()
    if any(output.is_relative_to(path.resolve()) for path in
           (original, args.snapshot, Path(source['database_directory']))):
        raise ValueError('Output must not modify database, original WAL or frozen snapshot')
    args.output.mkdir(parents=True, exist_ok=False)
    missing_row = next(row for row in metadata['patterns'] if row['role'] == 'missing_original_formal')
    missing = bytes.fromhex(missing_row['alias'].removeprefix('bytes:'))
    proof_sources = ('CTreeRecord.st', 'CTreeRecord_class.st', 'CTreeSearchObjectRecord.st',
                     'CTreeSearchObjectRecord_class.st', 'CTreeSearchObjectRecordN32_class.st', 'DBInterface32.st')
    result = {'passed': False, 'scope': __doc__, 'change_id': args.change_id,
              'original_directory': str(original.resolve()),
              'snapshot_sha256': metadata['sha256'], 'class_oid': signature['oid'], 'class_global_id': identity,
              'profiles': PROFILES,
              'source_sha256': service.digest(Path(__file__).read_bytes()),
              'decompiled_sources': {name: service.digest((service.ROOT / 'unpacked/smalltalk-source/ASDBase.ic' / name).read_bytes()) for name in proof_sources},
              'candidates': [], 'containing_candidates': [], 'allocation_sightings': [],
              'rejected_occurrences': [], 'restored': False,
              'restoration_material_established': False, 'cebra_connections': 0, 'model_setters_called': 0,
              'interpretation': 'Source-shaped header candidates only. FAFA storage-block lengths are a frozen-file observation, not a general format guarantee. Native index membership and object-filer completeness are not verified.'}
    try:
        candidates, result['rejected_occurrences'] = locate_records(data, gid)
        containers = containing_records(data, missing)
        result['allocation_sightings'] = containing_records(data, missing, include_allocation=True)
        unique = {row['record_offset']: row for row in candidates}
        for row in containers:
            unique.setdefault(row['record_offset'], row)
        artifacts = {}
        for index, candidate in enumerate(unique.values()):
            start, blob_start, end = (candidate[key] for key in ('record_offset', 'blob_offset', 'record_end'))
            blob = data[blob_start:end]
            record_file = args.output / f'record-{index}.bin'
            blob_file = args.output / f'blob-{index}.bin'
            record_file.write_bytes(data[start:end])
            blob_file.write_bytes(blob)
            artifacts[start] = {'record_sha256': service.digest(data[start:end]),
                               'blob_sha256': service.digest(blob),
                               'record_artifact': str(record_file.resolve()),
                               'blob_artifact': str(blob_file.resolve())}
        for index, candidate in enumerate(candidates):
            start, blob_start, end = (candidate[key] for key in ('record_offset', 'blob_offset', 'record_end'))
            blob = data[blob_start:end]
            result['candidates'].append({**candidate, **artifacts[start], 'index': index,
                'missing_formal_alias': occurrences(blob, missing),
                'blob_prefix_hex': blob[:32].hex()})
        result['containing_candidates'] = [{**row, **artifacts[row['record_offset']]} for row in containers]
        result['passed'] = bool(result['candidates'])
    except Exception:
        result['error'] = traceback.format_exc()
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({key: result.get(key) for key in ('passed', 'candidates', 'containing_candidates', 'restoration_material_established', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
