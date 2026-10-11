"""Doge write refusal for a real retained failure; zero native write dispatches."""
import argparse
import json
from pathlib import Path
import traceback

import bd_service as service
import bd_instance_pending as pending
import bde_experiments as bench
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    result = {'passed': False, 'scope': 'real Doge calls, independent stores, existing database restoration guard',
        'model_setters_called': 0, 'outstanding_edit_resolved': False, 'trials': [], 'tool_calls': [],
        'source_manifest': {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in (
            'bd_instance_pending.py', 'bd_native_literal.py', 'bd_native_structure.py', 'bd_structure_journal.py',
            'bd_structural_tools.py', 'bd_service.py', 'bde_restoration_guard_experiment.py')}}
    service.STORE = (args.output / 'read-state').resolve()
    client = ToolClient(args.output, 'restoration-guard-' + args.output.name, result['tool_calls'].append)
    client.env['ASCET_BD_ENDPOINT_PORT'] = '32503'

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def read():
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            head, _, error = client.call('bd_read', {'component': args.component, 'view': 'structure', 'max_bytes': 8192})
        if error or wire['errors']:
            raise ValueError('Fresh guarded database read failed: ' + str(result['tool_calls'][-1]['response']))
        record = service.load_record(head['snapshot'], 's_', 'snapshots')
        if (head['capabilities'].get('write_block_reason') != 'DATABASE_RESTORATION_REQUIRED' or
                head['capabilities']['edit'] or record['dirty_editors'] != [0, 0]):
            raise ValueError('Read did not report the database guard or clean editors')
        return record

    try:
        before = read()
        holds = pending.restoration_holds(before['database'])
        if not holds:
            raise ValueError('This experiment is meaningful only for a real retained restoration guard')
        hold_bytes = {row['record']: Path(row['record']).read_bytes() for row in holds}
        literals = [row for row in before['structure']['entries'] if row['kind'] == 'node' and row.get('literal') is not None]
        if not literals:
            raise ValueError('Read-only fixture has no existing literal for a valid refused request')
        target = literals[0]
        for index in range(3):
            store = args.output / ('write-state-' + str(index))
            (store / 'snapshots').mkdir(parents=True)
            service.write_once(store / 'snapshots' / (before['snapshot'] + '.json'), before)
            writer = ToolClient(args.output, client.session, result['tool_calls'].append)
            writer.env['ASCET_BD_ENDPOINT_PORT'] = '32503'
            writer.env['ASCET_BD_STORE'] = str(store.resolve())
            request = {'snapshot': before['snapshot'], 'request_id': 'blocked-' + str(index),
                'operations': [{'op': 'set_literal', 'target': 'Main/' + target['ref'],
                    'expect': {'text': target['literal']}, 'value': {'text': '987654321.0'}}]}
            with bench.proxy() as wire:
                writer.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
                _, body, error = writer.call('bd_edit', request)
            row = {'trial': index, 'store': str(store.resolve()), 'request': request, 'response': body,
                'is_error': error, 'request_wire': wire['request'].result(), 'errors': wire['errors'],
                'edit_records_created': list((store / 'edits').glob('edit_*'))}
            row['passed'] = bool(error and 'DATABASE_RESTORATION_REQUIRED' in body and
                row['request_wire']['frames'] == 0 and not wire['errors'] and not row['edit_records_created'])
            row['edit_records_created'] = [str(path) for path in row['edit_records_created']]
            result['trials'].append(row)
            save()
            if not row['passed']:
                raise ValueError('A guarded Tool.call did not refuse before native dispatch and edit intent')
        after = read()
        result['complete_selected_scope_unchanged'] = before['structure'] == after['structure']
        result['restoration_records_unchanged'] = all(Path(path).read_bytes() == data for path, data in hold_bytes.items())
        result['passed'] = result['complete_selected_scope_unchanged'] and result['restoration_records_unchanged']
    except Exception:
        result['error'] = traceback.format_exc()
    save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
