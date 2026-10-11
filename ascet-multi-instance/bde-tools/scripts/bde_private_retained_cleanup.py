"""Release only a genuinely recovered original PRIVATE study; retain its failure."""
import argparse
import json
import os
from pathlib import Path

import bd_service as service
from bd_class_study_journal import read_events
from bd_private_registry import validate_descriptor, STATIC_EXPORT
from bd_private_step_journal import validate_export, _actual, _same, _integer
from bd_edit_journal import fingerprint
from bde_private_host_exit_experiment import PrivateBridge, manifest


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--case', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    binding = validate_descriptor(json.loads((args.case / 'session.json').read_text(encoding='utf-8')))
    if binding['source_manifest'] != manifest():
        raise ValueError('Original retained cleanup source cannot rebind')
    events = read_events(args.case / 'wal')
    exported = next(row['payload']['export'] for row in events if row['kind'] == 'prepared')
    current, refs = validate_export(exported)
    args.output.mkdir(parents=True, exist_ok=False)
    environment = {**os.environ, 'ASCET_BD_ENDPOINT_PORT': '32503'}
    with service.live_lock():
        bridge = PrivateBridge(binding, environment)
        try:
            retained = bridge._exchange({'cmd': 'lookup'})
            if any(fingerprint(retained[key]) != fingerprint(exported[key]) for key in STATIC_EXPORT):
                raise ValueError('Retained cleanup lookup replaced original material')
            before = bridge.request('observe')
            if (before['status']['state'] != 'recovered' or before['physical_pending'] is not None or
                    len(before['actual_changes']) != 1 or before['independent_x'] != exported['independent_x_before'] + 7):
                raise ValueError('Retained cleanup requires complete recovery with only the independent field')
            cell = before['actual_changes'][0]
            if (cell['ref'] != exported['independent_ref'] or cell['kind'] != 'fields' or
                    _integer(cell['before']) != exported['independent_x_before'] or
                    _integer(cell['after']) != exported['independent_x_before'] + 7):
                raise ValueError('Retained cleanup independent field identity differs')
            actual = _actual(current, before['actual_changes'], refs)
            actual[cell['ref']]['values'][cell['index'] - 1] = cell['before']
            if not _same(actual, current):
                raise ValueError('Retained cleanup CURRENT has other changes')
            service.write_once(args.output / 'started.json', {'descriptor': binding, 'before': before,
                'action': 'reset_then_release', 'source_manifest': manifest(), 'production_write_authorized': False})
            after = bridge.request('reset')
            if after['current_matches'] is not True:
                raise ValueError('Retained cleanup CURRENT did not restore')
            release = bridge._exchange({'cmd': 'release'})
            size = bridge._exchange({'cmd': 'size'})
            if size != 0:
                raise ValueError('Unexpected retained registry roots')
            service.write_once(args.output / 'result.json', {'passed': True, 'full_delivery': False,
                'original_failed_run_remains_failed': True, 'original_material_preserved': True,
                'before': before, 'after': after, 'release': release, 'final_registry_size': size,
                'source_manifest': manifest(), 'model_setters_called': 0, 'restoration_hold_released': False})
        finally:
            bridge.close()
    print(json.dumps({'passed': True, 'final_registry_size': size, 'original_failed_run_remains_failed': True}))


if __name__ == '__main__':
    main()
