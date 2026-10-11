"""New library enum + BDE occurrence via Tool.call, with cross-component inverse conflicts."""
import argparse
import json
from pathlib import Path
import traceback

import bd_service as service
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bde_public_oracle import compare, public_projection
from bde_tool_client import ToolClient


COMPONENTS = [
    'BDE_Tool_Experiments\\Trial_data_20260930_012339',
    'BDE_Tool_Experiments\\Trial_AEB_Core_20260930_123955',
    'BDE_Tool_Experiments\\Trial_Messages_20260930_132738',
]


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    parser.add_argument('--components', type=int, choices=(1, 3), default=3)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.output / 'store'
    session = str(args.output.resolve())
    sources = [p for p in (service.ROOT / 'scripts').glob('*')
               if p.suffix in ('.py', '.cs', '.st', '.json') and p.name.startswith(('bd', 'AscetStructure', 'AscetRead', 'AscetBde', 'format_bd'))]
    sources += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result = {'passed': False, 'calls': [], 'cases': [], 'outstanding': [],
              'scope': 'new enum type plus BDE variable; ordinary Main, sandbox only; actual Tool.call and independent public getters',
              'source_manifest': {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in sources}}

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(call):
        result['calls'].append(call)
        save()

    client = ToolClient(args.output, session, record)
    domains, baselines, snapshots = {}, {}, {}

    def read(component):
        header, body, error = client.call('bd_read', {'component': component, 'view': 'structure'})
        assert not error, body
        raw = service.load_record(header['snapshot'], 's_', 'snapshots')
        domains[component] = {'session': session, 'database': raw['database'], 'oid': raw['oid'], 'process_epoch': raw['ascet_process_epoch']}
        snapshots[component] = header['snapshot']
        return raw

    def observe(component, enum_name=None):
        with service.live_lock(), NativeStructureAdapter(component) as adapter:
            native = adapter.observe(domains[component], [])
            public = adapter.observe_public(domains[component])
            models = sorted(adapter.observe_models(domains[component]), key=lambda row: row['name'])
            enumeration = adapter._exchange({'cmd': 'observe_enum', 'name': enum_name}) if enum_name else None
        assert compare(native['entries'], public)['passed']
        return {'native': native['entries'], 'public': public_projection(public), 'models': models, 'enum': enumeration}

    def edit(component, operation, key):
        header, body, error = client.call('bd_edit', {'snapshot': snapshots[component], 'request_id': key, 'operations': [operation]})
        receipt = json.loads(body)
        if receipt.get('status') in ('applied_observed', 'postcondition_mismatch', 'outcome_unknown'):
            result['outstanding'].append({'component': component, 'change_id': receipt['change_id']})
            save()
        assert not error and receipt['status'] == 'applied_observed', (header, receipt)
        assert receipt['additional_ASCET_reads'] == 0
        snapshots[component] = receipt['after_snapshot']
        return receipt

    def inverse(item, key):
        _, receipt = client.value('bd_revert', {'change_id': item['change_id'], 'request_id': key})
        assert receipt['status'] == 'verified_local', receipt
        snapshots[item['component']] = receipt['after_snapshot']
        result['outstanding'].remove(item)
        save()
        return receipt

    try:
        binary = compile_bridge()
        result['runtime_manifest'] = {str(binary): service.digest(binary.read_bytes())}
        # Companion is a different component, even for the single-fixture pilot.
        for component in COMPONENTS:
            read(component)
            baselines[component] = observe(component)
        for ci, component in enumerate(COMPONENTS[:args.components]):
            companion = COMPONENTS[(ci + 1) % len(COMPONENTS)]
            for trial in range(args.repeats):
                enum_name = 'EvalNewEnum_' + service.digest(session)[:8] + '_' + str(ci) + '_' + str(trial)
                key = str(ci) + '-' + str(trial)
                row = {'component': component, 'companion': companion, 'trial': trial, 'enum_name': enum_name, 'passed': False}
                result['cases'].append(row)
                row['before'] = observe(component, enum_name)
                assert row['before']['enum'] == {'status': 'absent'}
                operation = {'op': 'create_block', 'kind': 'enumeration', 'name': 'EvalNewEnumVariable',
                             'new_definition': {'name': enum_name, 'items': ['Off', 'On', 'Fault']},
                             'initial_value': 'On', 'position': [320, 240] if ci == 0 else [2200, 1800]}
                _, preview = client.value('bd_edit', {'snapshot': snapshots[component], 'request_id': key + '-preview', 'operations': [operation], 'preview': True})
                assert preview['status'] == 'preview' and not preview['setter_called'] and not preview['recovery_record_created']
                assert observe(component, enum_name) == row['before']
                row['before_snapshot'] = snapshots[component]
                row['created'] = edit(component, operation, key + '-create')
                primary = dict(result['outstanding'][-1])
                row['after'] = observe(component, enum_name)
                definition = row['after']['enum']
                assert definition['status'] == 'read' and definition['items'] == operation['new_definition']['items']
                model = next(d['after'] for d in row['created']['differences'] if d['after'] and d['after']['kind'] == 'model')
                assert model['enum_values'] == definition['items'] and model['definition']['oid'] == definition['oid']
                assert row['created']['library_effects'] == [{'kind': 'enumeration_definition', 'path': definition['path'],
                    'oid': definition['oid'], 'before': None, 'after': {'items': definition['items']}}]
                public_model = next(m for m in row['after']['models'] if m['name'] == operation['name'])
                assert public_model['enum_values'] == definition['items'] and public_model['definition_oid'] == definition['oid']
                assert public_model['default_value'] == 'On'
                _, diff = client.value('bd_diff', {'change_id': primary['change_id']})
                assert diff['differences'] == row['created']['differences']
                assert diff['library_effects'] == row['created']['library_effects']
                _, replay = client.value('bd_edit', {'snapshot': row['before_snapshot'], 'request_id': key + '-create', 'operations': [operation]})
                assert replay == row['created']
                duplicate = {**operation, 'name': 'EvalDuplicateType'}
                _, body, rejected = client.call('bd_edit', {'snapshot': snapshots[component], 'request_id': key + '-duplicate', 'operations': [duplicate]})
                row['duplicate_rejected'] = json.loads(body)
                assert rejected and row['duplicate_rejected']['status'] == 'rejected' and row['duplicate_rejected']['setter_called'] is False
                assert observe(component, enum_name) == row['after']
                external = edit(companion, {'op': 'create_block', 'kind': 'enumeration', 'name': 'EvalExternalEnumReference',
                                           'definition': definition['path'], 'position': [2400, 2000]}, key + '-external')
                secondary = dict(result['outstanding'][-1])
                _, body, conflict = client.call('bd_revert', {'change_id': primary['change_id'], 'request_id': key + '-conflict'})
                row['external_reference_conflict'] = json.loads(body)
                assert conflict and row['external_reference_conflict']['status'] == 'conflict' and row['external_reference_conflict']['setter_called'] is False
                assert observe(component, enum_name) == row['after']
                row['external_inverse'] = inverse(secondary, key + '-external-inverse')
                assert observe(companion) == baselines[companion]
                row['inverse'] = inverse(primary, key + '-inverse')
                assert row['inverse']['library_effects'] == [{**effect, 'before': effect['after'], 'after': None}
                    for effect in row['created']['library_effects']]
                row['restored'] = observe(component, enum_name)
                assert row['restored'] == row['before']
                row['passed'] = True
                save()
        result['baseline_restored'] = all(observe(c) == baselines[c] for c in COMPONENTS)
        assert result['baseline_restored'] and not result['outstanding']
        result['passed'] = True
    except Exception as error:
        result['error'] = repr(error)
        result['traceback'] = traceback.format_exc()
    finally:
        if result['outstanding']:
            try:
                for index, item in enumerate(list(reversed(result['outstanding']))):
                    inverse(item, 'cleanup-' + str(index))
                result['cleanup_baseline_restored'] = all(observe(c) == baselines[c] for c in baselines)
            except Exception as error:
                result['cleanup_error'] = repr(error)
        result['source_changes_during_run'] = [str(p.relative_to(service.ROOT)) for p in sources
            if service.digest(p.read_bytes()) != result['source_manifest'][str(p.relative_to(service.ROOT))]]
        if result['source_changes_during_run']:
            result['passed'] = False
        save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'error', 'cleanup_error', 'outstanding', 'baseline_restored')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
