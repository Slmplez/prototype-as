"""Audit bounded Smalltalk swapper streams in frozen bytes; never load native objects."""
import argparse
import json
from pathlib import Path
import struct
import traceback
import zlib

import bd_service as service
from bde_recovery_byte_audit import occurrences


PROFILE_PREFIX = bytes.fromhex('00141fa004030214')


def decode_stream(data, start):
    if data[start:start + 8] != PROFILE_PREFIX or start + 20 > len(data):
        raise ValueError('Unsupported/truncated EswHeader profile')
    offset, segments = start + 20, []
    for index in range(64):
        if offset + 20 > len(data):
            raise ValueError('Truncated EswSubheader')
        if data[offset] != 55 or data[offset + 1] not in (0, 1):
            raise ValueError('Invalid subheader indicator or last-segment flag')
        size, crc = struct.unpack_from('<II', data, offset + 4)
        begin, end = offset + 20, offset + 20 + size
        if size < 16 or size > 16 * 1024 * 1024 or end > len(data):
            raise ValueError('Segment size/bounds')
        actual = zlib.crc32(data[begin:end])
        segments.append({'index': index, 'subheader_offset': offset, 'offset': begin,
                         'end': end, 'length': size, 'stored_crc': crc,
                         'computed_zlib_crc32': actual, 'crc_match': actual == crc})
        if actual != crc:
            raise ValueError('Segment CRC differs from verified control profile')
        if data[offset + 1] == 1:
            return {'offset': start, 'end': end, 'length': end - start,
                    'profile_prefix': PROFILE_PREFIX.hex(), 'segments': segments,
                    'crc_matches': True}
        offset = end
    raise ValueError('Stream exceeds the 64-segment bound')


def scan_containers(data, alias):
    hits = occurrences(data, alias)
    if hits['truncated']:
        raise ValueError('Alias scan exceeds bound')
    offset, count, containers, rejected = 0, 0, [], []
    while True:
        offset = data.find(PROFILE_PREFIX, offset)
        if offset < 0:
            return containers, rejected, count
        count += 1
        if count > 10000:
            raise ValueError('Swapper profile scan exceeds bound')
        try:
            candidate = decode_stream(data, offset)
            matches = [hit for hit in hits['offsets'] if any(
                row['offset'] <= hit and hit + len(alias) <= row['end']
                for row in candidate['segments'])]
            if matches:
                containers.append({**candidate, 'alias_offsets': matches})
        except ValueError as error:
            rejected.append({'offset': offset, 'reason': str(error)})
        offset += len(PROFILE_PREFIX)


def header_inventory(data, alias):
    variants, sightings, offset = {}, occurrences(data, alias), 0
    if sightings['truncated']:
        raise ValueError('Alias scan exceeds bound')
    nearest = {hit: None for hit in sightings['offsets']}
    count = 0
    while True:
        offset = data.find(PROFILE_PREFIX[:4], offset)
        if offset < 0:
            for header in nearest.values():
                if header is not None:
                    try:
                        stream = decode_stream(data, header['offset'])
                        header['crc_valid_stream_end'] = stream['end']
                    except ValueError as error:
                        header['decode_error'] = str(error)
            return {'platform_prefix': PROFILE_PREFIX[:4].hex(), 'variants': variants,
                    'nearest_preceding_headers': [{'alias_offset': hit, 'header': header}
                                                  for hit, header in nearest.items()]}
        count += 1
        if count > 10000:
            raise ValueError('Header inventory exceeds bound')
        value = data[offset:offset + 8].hex()
        variants[value] = variants.get(value, 0) + 1
        for hit in nearest:
            if offset <= hit:
                nearest[hit] = {'offset': offset, 'prefix': value, 'distance': hit - offset}
        offset += 4


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--snapshot', type=Path, required=True)
    parser.add_argument('--record-audit', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    source = json.loads((args.snapshot / 'result.json').read_text(encoding='utf-8'))
    record_source = json.loads((args.record_audit / 'result.json').read_text(encoding='utf-8'))
    if not source.get('passed') or not record_source.get('passed') or source['change_id'] != record_source['change_id']:
        raise ValueError('Successful same-change frozen byte/record audit required')
    if not record_source.get('original_directory'):
        raise ValueError('Record audit must explicitly bind the retained original directory')
    for path in (args.snapshot, args.record_audit, Path(source['database_directory']),
                 Path(record_source['original_directory'])):
        if args.output.resolve().is_relative_to(path.resolve()):
            raise ValueError('Output must not modify source snapshots or database')
    metadata = next(row for row in source['files'] if Path(row['path']).name == 'sobjects.dat')
    data = (args.snapshot / 'sobjects.dat').read_bytes()
    if service.digest(data) != metadata['sha256'] or record_source['snapshot_sha256'] != metadata['sha256']:
        raise ValueError('Frozen snapshot checksum changed')
    missing = next(row for row in metadata['patterns'] if row['role'] == 'missing_original_formal')
    alias = bytes.fromhex(missing['alias'].removeprefix('bytes:'))
    args.output.mkdir(parents=True, exist_ok=False)
    proof = ('EswHeader.st', 'EswHeader_class.st', 'EswSubheader.st', 'EswSubheader_class.st',
             'ObjectLoader.st', 'ByteArray.st')
    result = {'passed': False, 'scope': __doc__, 'change_id': source['change_id'],
              'snapshot_sha256': metadata['sha256'], 'missing_formal_alias': missing['alias'],
              'source_sha256': service.digest(Path(__file__).read_bytes()),
              'decompiled_sources': {name: service.digest((service.ROOT / 'unpacked/smalltalk-source/cfsnls.ic' / name).read_bytes()) for name in proof},
              'controls': [], 'containers': [], 'restored': False, 'hold_cleared': False,
              'restoration_material_established': False, 'cebra_connections': 0, 'model_setters_called': 0,
              'interpretation': 'Header/segment boundaries and CRC32 only. CRC algorithm matches a frozen current-record control; native VM equivalence and complete original-object graph/ownership remain unverified.'}
    try:
        for row in record_source['candidates']:
            start = row['blob_offset']
            decoded = decode_stream(data, start)
            if decoded['end'] != row['record_end']:
                raise ValueError('Verified record and stream boundaries differ')
            result['controls'].append(decoded)
        containers, rejected, count = scan_containers(data, alias)
        result.update({'containers': containers, 'rejected_streams': rejected, 'streams_scanned': count})
        result['header_inventory'] = header_inventory(data, alias)
        result['failed_recovery_condition'] = None if containers else 'Original alias is outside every CRC-valid stream in the tested frozen-file profile'
        for index, row in enumerate(containers):
            blob = data[row['offset']:row['end']]
            target = args.output / f'stream-{index}.bin'
            target.write_bytes(blob)
            row.update({'sha256': service.digest(blob), 'artifact': str(target.resolve())})
            for segment in row['segments']:
                raw = data[segment['offset']:segment['end']]
                segment['sha256'] = service.digest(raw)
                segment['contains_alias'] = occurrences(raw, alias)
        result['passed'] = bool(containers) and bool(result['controls'])
    except Exception:
        result['error'] = traceback.format_exc()
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({key: result.get(key) for key in ('passed', 'streams_scanned', 'containers', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
