"""Actual Doge cross-Module path query with fresh independent public projections."""
import argparse
import json
from pathlib import Path
import subprocess
import sys
import time
import traceback

import bd_service as service
import bde_experiments as bench
from bde_tool_client import ToolClient
from bd_project_messages import compare_project
from bd_project_tools import entities
from bd_signal_interfaces import compare_public, graph_index, pin_ref


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--project', required=True)
    parser.add_argument('--message', default='AEBdFxTarLoc')
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.output / 'store'
    files = list((service.ROOT / 'scripts').glob('bd*.py'))
    files += [service.ROOT / 'scripts' / name for name in ('bde_read_contract_cases.json',
        'bde_project_messages.st', 'bde_signal_interfaces.st', 'bde_database_identity.st',
        'AscetStructureRead.cs', 'AscetProjectMessagesRead.cs', 'AscetSignalInterfaceRead.cs',
        'bde_project_path_experiment.py', 'bde_project_message_experiment.py', 'bde_signal_interface_experiment.py')]
    files += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result = {'passed': False, 'calls': [], 'metrics': [], 'scope': 'two Module pin graphs and a declared Project message path',
        'business_writes': False, 'setter_called': False, 'online_path_queries': 0,
        'not_verified': ['runtime transport', 'independent complete candidate oracle', 'Class internal dataflow',
                         'database reopen lifecycle', 'cross-resource edit/revert'],
        'source_manifest': {str(path.relative_to(service.ROOT)): service.digest(path.read_bytes()) for path in files}}

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(call):
        result['calls'].append(call)
        save()

    client = ToolClient(args.output, 'project-path-eval-' + args.output.name, record)
    client.env['ASCET_BD_STRUCTURAL_WRITES'] = '0'

    def call(tool, arguments, expected_error=False):
        start = time.perf_counter()
        begin = len(result['calls'])
        with bench.proxy() as traffic:
            client.env['ASCET_BD_PROBE_PORT'] = str(traffic['port'])
            head, body, error = client.call(tool, arguments)
        metric = {'tool': tool, 'elapsed_ms': (time.perf_counter() - start) * 1000,
            'frames': traffic['request'].result()['frames'], 'connections': traffic['connections'],
            'pages': len(result['calls']) - begin, 'bytes': len(body.encode()), 'proxy_errors': traffic['errors']}
        result['metrics'].append(metric)
        assert error == expected_error and not metric['proxy_errors'], body
        return head, body, metric

    def oracle(script, parameters, name):
        output = args.output / name
        process = subprocess.run([sys.executable, str(service.ROOT / 'scripts' / script), *parameters,
            '--output', str(output)], capture_output=True, timeout=180)
        (args.output / (name + '.stdout.log')).write_bytes(process.stdout)
        (args.output / (name + '.stderr.log')).write_bytes(process.stderr)
        assert process.returncode == 0, process.stdout.decode(errors='replace')
        return json.loads((output / 'probe.json').read_text(encoding='utf-8'))

    try:
        save()
        public = oracle('bde_project_message_experiment.py', ['--project', args.project, '--messages', 'all'], 'public-project')
        head, _, _ = call('bd_read', {'component': args.project, 'view': 'project_messages'})
        project = service.load_record(head['snapshot'], 's_', 'snapshots')
        result['project_public_fields'] = compare_project(project['project_messages'], public['public_after'])
        assert result['project_public_fields']['passed'] and project['database_session_identity'] == public['database_session']
        binding = next(row for row in project['message_bindings']['bindings'] if row['import']['name'] == args.message)
        assert binding['status'] == 'unique_declaration_candidate' and binding['instance_resolution'] == 'bounded_owner_chains_collected'
        imported, exported = binding['import'], binding['candidates'][0]
        assert exported['send'] and imported['receive'], 'This experiment expects exported send -> imported receive'
        component_entries = entities(project)
        components = []
        endpoints = []
        for index, declaration in enumerate((exported, imported)):
            component = declaration['owner_path']
            public = oracle('bde_signal_interface_experiment.py', ['--component', component, '--public-oracle'], f'public-component-{index}')
            head, _, _ = call('bd_read', {'component': component, 'view': 'interfaces'})
            snapshot = service.load_record(head['snapshot'], 's_', 'snapshots')
            assert snapshot['database_session_identity'] == project['database_session_identity'] == public['database_session']
            projection = compare_public(snapshot['interfaces'], public['public_after'])
            assert projection['passed']
            result.setdefault('component_public_fields', []).append(projection)
            instance = next(ref for ref, row in component_entries.items() if ref.startswith('module_instance:')
                            and row['fields']['definition_oid'] == declaration['owner_oid'])
            components.append({'snapshot': snapshot['snapshot'], 'instance': instance})
            data = snapshot['interfaces']
            nodes, pins = graph_index(data)
            occurrences = {key for key, row in nodes.items() if row.get('model_alias') == declaration['alias']}
            accesses = [pin for pin in pins.values() if (pin['scope'], pin['owner']) in occurrences
                        and pin.get('set_access' if index == 0 else 'get_access') is True]
            adjacent = []
            for pin in accesses:
                for edge in data['edges']:
                    if edge['scope'] == pin['scope'] and edge['target' if index == 0 else 'source'] == pin['id']:
                        adjacent.append(pins[(edge['scope'], edge['source' if index == 0 else 'target'])])
            assert len(adjacent) == 1, 'Require one exact adjacent BDE endpoint in the sample'
            endpoints.append({'instance': instance, 'ref': pin_ref(adjacent[0])})
        request = {'query': 'project_signal_path', 'snapshot': project['snapshot'], 'components': components,
                   'source': endpoints[0], 'target': endpoints[1]}
        for _ in range(3):
            _, body, metric = call('bd_inspect', request)
            path = json.loads(body)
            assert metric['frames'] == metric['connections'] == 0
            assert path['status'] == 'observed_declared_static_path' and path['complete_for_requested_pin_endpoints']
            assert [row['kind'] for row in path['segments']] == ['diagram_connection', 'message_binding', 'diagram_connection']
            assert path['segments'][1]['export'] == [exported['owner_oid'], exported['alias']]
            assert path['segments'][1]['import'] == [imported['owner_oid'], imported['alias']]
            assert not path['complete_signal_path'] and not path['editable']
            result['path'] = path
        _, _, metric = call('bd_inspect', {**request, 'target': {**request['target'], 'ref': 'Main/n999999.p999999'}}, True)
        assert metric['frames'] == metric['connections'] == 0
        result['request'] = request
        result['source_changes_during_run'] = [name for name, digest in result['source_manifest'].items()
            if service.digest((service.ROOT / name).read_bytes()) != digest]
        assert not result['source_changes_during_run']
        result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    save()
    print(json.dumps({key: result[key] for key in ('passed', 'scope', 'error') if key in result}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
