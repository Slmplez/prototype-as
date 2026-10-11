"""Actual Doge Tool.call discovery/paging with a monitored, unused Cebra endpoint."""
import argparse
import hashlib
import json
from pathlib import Path
import traceback

import bd_service as service
from bde_experiments import proxy
from bde_tool_client import PersistentToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.output/'store'
    result = {'passed': False, 'scope': 'offline declared-operation discovery via real Doge Tool.call; not ASCET function acceptance',
        'full_delivery': False, 'native_inventory_complete': False, 'model_mutation_dispatched': False,
        'calls': [], 'checks': [], 'source_manifest': {}}
    for name in ('scripts/bd_block_catalog.py', 'scripts/bd_read_contract.py', 'scripts/bd_service.py',
                 'scripts/bde_block_catalog_experiment.py', 'scripts/bde_tool_client.py',
                 'Doge/src/tools/BlockDiagramTool/BlockDiagramTool.ts',
                 'Doge/src/tools/BlockDiagramTool/BlockDiagramReadContract.ts'):
        result['source_manifest'][name] = hashlib.sha256((service.ROOT/name).read_bytes()).hexdigest()
    def save():
        (args.output/'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2)+'\n', encoding='utf-8')
    def record(call):
        result['calls'].append(call)
        save()
    def check(name, condition):
        result['checks'].append({'name': name, 'passed': bool(condition)})
        save()
        if not condition: raise ValueError(name)
    save()
    client = None
    wire = None
    try:
        # Any accidental request would hit a monitored loopback endpoint and fail;
        # no running ASCET port is used for this strictly offline operation.
        with proxy(upstream_port=1) as wire:
            client = PersistentToolClient(args.output, 'bde-catalog-'+args.output.name, record)
            client.env.update(ASCET_BD_PROBE_PORT=str(wire['port']), ASCET_BD_STRUCTURAL_WRITES='0',
                ASCET_BD_CLASS_WRITES='0', ASCET_BD_SANDBOX_WRITES='0',
                LOCALAPPDATA=str((args.output/'isolated-native-state').resolve()))
            result['startup'] = client.start()
            _, value = client.value('bd_inspect', {'query':'block_types','owner_kind':'module','max_bytes':2048})
            check('Main list contains all 26 declared kinds with no write authorization',
                len(value['families']) == 26 and value['write_authorized'] is False)
            check('catalog output remains explicitly incomplete', value['native_inventory_complete'] is False)
            check('2KiB pages are fully reassembled through Tool.call',
                len(result['calls']) > 1 and all(len(c['response']['content'].encode('utf-8')) <= 2048 for c in result['calls']))
            _, value = client.value('bd_inspect', {'query':'block_types','block_kind':'enumeration',
                'owner_kind':'module','diagram_scope':'child','max_bytes':2048})
            row = value['families'][0]
            check('child enum creation and absent child scalar field route differ',
                row['creation_route'] == 'declared_isolated_route' and 'new_definition' in row['creation']['optional'] and row['field_operations'] == [])
            _, value = client.value('bd_inspect', {'query':'block_types','block_kind':'receive_message','owner_kind':'class'})
            check('Class message creation reports Module requirement',
                value['families'][0]['creation_reasons'] == ['module_owner_required'])
            _, value = client.value('bd_inspect', {'query':'block_types','block_kind':'array','owner_kind':'module','diagram_scope':'child'})
            check('missing child array creation is not advertised as supported',
                value['families'][0]['creation_reasons'] == ['child_creation_route_missing'])
            _, value = client.value('bd_inspect', {'query':'block_types','block_kind':'operator'})
            check('operator discovery includes native input counts and conversions',
                value['families'][0]['creation']['names']['bet'] == 3 and value['families'][0]['creation']['names']['limit'] == 1)
            response = client.invoke('bd_inspect', {'query':'block_types','owner_kind':'project'})
            record({'tool':'bd_inspect','args':{'query':'block_types','owner_kind':'project'},'response':response})
            check('invalid owner rejected by Doge schema before backend dispatch',
                response['is_error'] is True and response['phase'] == 'schema_validation' and response['tool_dispatched'] is False)
            client.close()
            client = None
        result['wire'] = {'connections': wire['connections'], 'request': wire['request'].result(),
            'response': wire['response'].result(), 'errors': wire['errors'], 'upstream':'unused loopback port 1; not ASCET'}
        check('all catalog Tool.calls make zero monitored Cebra connections/frames',
            wire['connections'] == 0 and wire['request'].result()['frames'] == 0 and not wire['errors'])
        result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        if client is not None:
            try: client.close()
            except Exception: result['close_error'] = traceback.format_exc()
        save()
    print(json.dumps({'passed': result['passed'], 'calls':len(result['calls']),
        'checks':len(result['checks']), 'wire':result.get('wire'), 'full_delivery':False}, ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
