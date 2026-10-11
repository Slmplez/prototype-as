"""Read-only named datastore byte audit; byte sightings are not recovered objects."""
import argparse
import json
from pathlib import Path
import traceback

import bd_service as service
import bd_class_tools as tools
import bd_instance_pending as pending
from bd_class_study_journal import actual_diff


def occurrences(data, needle):
    hits = []
    index = 0
    while len(hits) < 256:
        index = data.find(needle, index)
        if index < 0:
            return {'offsets': hits, 'truncated': False}
        hits.append(index)
        index += len(needle)
    return {'offsets': hits, 'truncated': data.find(needle, index) >= 0}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--store', type=Path, required=True)
    parser.add_argument('--change-id', required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.store.resolve()
    intent, applied, _ = tools.terminal_raw(args.change_id)
    original = tools.root(args.change_id)
    patch = actual_diff(original / 'native.wal')
    if patch['status'] != 'retained_applied':
        raise ValueError('Complete actual applied original Class WAL required')
    holds = pending.restoration_holds(intent['domain']['database'])
    if not holds:
        raise ValueError('This audit requires the outstanding original restoration hold')
    hashes = lambda: {str(path.relative_to(original)): service.digest(path.read_bytes())
                     for path in original.rglob('*') if path.is_file()}
    hold_hashes = lambda: {row['record']: service.digest(Path(row['record']).read_bytes())
                          for row in pending.restoration_holds(intent['domain']['database'])}
    directory = Path(intent['identity']['database']).resolve()
    if args.output.resolve().is_relative_to(directory) or args.output.resolve().is_relative_to(original):
        raise ValueError('Output must not modify database or original recovery records')
    selector = intent['operation']['selector']
    alias = selector['formal_alias']
    method = next(row for row in patch['definition_effect']['after']['methods'] if row['alias'] == selector['method_alias'])
    controls = [selector['method_alias'], *[row['alias'] for row in method['arguments']],
                *([method['return']['alias']] if method['return'] else [])]
    patterns = [{'role': 'missing_original_formal', 'alias': alias}]
    patterns += [{'role': 'surviving_control', 'alias': value} for value in controls if value != alias]
    for row in patterns:
        value = row['alias']
        if not isinstance(value, str) or not value.startswith('bytes:'):
            raise ValueError('Exact byte identities are required')
        if not 8 <= len(bytes.fromhex(value[6:])) <= 64:
            raise ValueError('Native alias byte width is outside the audit bound')
    result = {'passed': False, 'scope': __doc__, 'online_model_observation': False,
              'model_setters_called': 0, 'cebra_connections': 0, 'restored': False,
              'restoration_material_established': False, 'hold_cleared': False,
              'change_id': args.change_id, 'database_directory': str(directory),
              'original_hashes': hashes(), 'hold_hashes': hold_hashes(), 'files': [],
              'source_sha256': service.digest(Path(__file__).read_bytes()),
              'interpretation': 'Exact raw byte sightings only. Compression, encoding, historical record identity, ownership and completeness are not decoded. Missing bytes do not establish original-object absence.'}

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    try:
        for name in ('sobjects.dat', 'sobjects.idx', 'codestorage.dat'):
            path = directory / name
            stat = path.stat()
            if stat.st_size > 512 * 1024 * 1024:
                raise ValueError('Named datastore audit exceeds the 512MiB file bound')
            data = path.read_bytes()
            checked = path.read_bytes()
            current_stat = path.stat()
            stable = (data == checked and stat.st_size == current_stat.st_size and stat.st_mtime_ns == current_stat.st_mtime_ns)
            if not stable:
                raise ValueError('Datastore file changed during read-only byte capture: ' + name)
            target = args.output / name
            target.write_bytes(data)
            row = {'path': str(path), 'snapshot': str(target.resolve()), 'length': len(data),
                   'sha256': service.digest(data), 'stable_two_reads': True,
                   'last_write_ns': stat.st_mtime_ns, 'patterns': []}
            for pattern in patterns:
                needles = (('native_bytes', bytes.fromhex(pattern['alias'][6:])),
                           ('ascii_hex', pattern['alias'][6:].encode('ascii')))
                row['patterns'].append({**pattern, 'representations': {encoding: occurrences(data, needle)
                                        for encoding, needle in needles}})
            result['files'].append(row)
            save()
        result['original_records_unchanged'] = hashes() == result['original_hashes']
        result['hold_unchanged'] = hold_hashes() == result['hold_hashes']
        result['passed'] = result['original_records_unchanged'] and result['hold_unchanged'] and len(result['files']) == 3
    except Exception:
        result['error'] = traceback.format_exc()
    save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'restored', 'restoration_material_established', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
