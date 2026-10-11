"""Join immutable Project and BDE evidence without inventing missing signal paths."""
import argparse
from collections import Counter
import json
from pathlib import Path

import bd_service as service
from bd_project_messages import analyze_messages
from bd_signal_interfaces import class_bindings


def component_witnesses(project_probe, component_probe):
    for key in ('database', 'ascet_process_epoch'):
        if not project_probe.get(key) or project_probe[key] != component_probe.get(key):
            raise ValueError(f'Incomparable evidence: {key}')
    if project_probe.get('database_session') or component_probe.get('database_session'):
        if not project_probe.get('database_session') or project_probe['database_session'] != component_probe.get('database_session'):
            raise ValueError('Incomparable evidence: database_session')
    if project_probe.get('status') != 'ok' or component_probe.get('status') != 'ok':
        raise ValueError('Cannot join unsuccessful observations')
    if not project_probe.get('project_oid') or not component_probe.get('oid'):
        raise ValueError('Missing Project/component identity')
    resolution = analyze_messages(project_probe['structure'])
    graph = component_probe['structure']
    # Graphical IDs are scoped, and edge record indexes are only evidence refs.
    nodes = {(row['scope'], row['id']): row for row in graph['nodes']}
    pins = {(row['scope'], row['id']): row for row in graph['pins']}
    if len(nodes) != len(graph['nodes']) or len(pins) != len(graph['pins']):
        raise ValueError('Duplicate scoped graphical identity')
    aliases = Counter(row['alias'] for row in graph['models'])
    if any(count != 1 for count in aliases.values()):
        raise ValueError('Duplicate model alias')
    formals = {(row['scope'], row['pin_id']): row for row in class_bindings(graph)['bindings']}

    def endpoint(scope, pin_id):
        pin = pins.get((scope, pin_id))
        if pin is None or (scope, pin['owner']) not in nodes:
            raise ValueError('Connection endpoint outside collected graph')
        return {'node': nodes[(scope, pin['owner'])], 'pin': pin,
                'class_interface': formals.get((scope, pin_id))}

    witnesses = []
    for binding in resolution['bindings']:
        declaration = binding['import']
        if declaration['owner_oid'] != component_probe['oid']:
            continue
        local = [row for row in graph['models'] if row['alias'] == declaration['alias']]
        if len(local) != 1 or any(local[0].get(key) != declaration.get(key)
                for key in ('name', 'scope', 'imported', 'exported', 'message', 'send', 'receive', 'send_receive')):
            raise ValueError('Project and component declaration disagree')
        row = {'project_oid': project_probe['project_oid'], 'component_oid': component_probe['oid'],
               'declaration': declaration, 'binding': binding, 'segments': [],
               'editable': False, 'consistency': 'non_atomic_observations',
               'database_session_identity': ('matched' if project_probe.get('database_session')
                                             else 'not_verified'),
               'execution': 'not_collected', 'method_bodies': 'not_collected',
               'runtime_delivery': 'not_verified', 'complete_signal_path': False}
        if graph.get('diagram_collected') is not True:
            row.update(status='diagram_not_collected')
            witnesses.append(row)
            continue
        occurrences = [node for node in graph['nodes'] if node.get('model_alias') == declaration['alias']]
        if not occurrences:
            row.update(status='no_occurrence_in_collected_diagram')
            witnesses.append(row)
            continue
        occurrence_keys = {(node['scope'], node['id']) for node in occurrences}
        accesses = [pin for pin in graph['pins'] if (pin['scope'], pin['owner']) in occurrence_keys]
        for pin in accesses:
            scope, pin_id = pin['scope'], pin['id']
            send = (declaration['send'] or declaration['send_receive']) and pin['input'] and pin.get('set_access')
            receive = (declaration['receive'] or declaration['send_receive']) and pin['output'] and pin.get('get_access')
            for index, edge in enumerate(graph['edges']):
                if edge['scope'] != scope:
                    continue
                if not ((send and edge['target'] == pin_id) or (receive and edge['source'] == pin_id)):
                    continue
                source, target = endpoint(scope, edge['source']), endpoint(scope, edge['target'])
                if not source['pin']['output'] or not target['pin']['input']:
                    raise ValueError('Observed edge direction is invalid')
                row['segments'].append({'kind': 'diagram_connection', 'edge_record_index': index,
                    'edge': edge, 'source': source, 'target': target,
                    'message_access': 'send' if send and edge['target'] == pin_id else 'receive',
                    'binding_status': binding['status']})
        row['status'] = 'observed_local_segments' if row['segments'] else 'no_matching_connection_in_collected_diagram'
        witnesses.append(row)
    return witnesses


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--project-probe', type=Path, required=True)
    parser.add_argument('--component-probe', type=Path, action='append', required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    inputs = [args.project_probe, *args.component_probe]
    manifest = {str(path.resolve()): service.digest(path.read_bytes()) for path in inputs}
    sources = [Path(__file__), service.ROOT / 'scripts/bd_project_messages.py',
               service.ROOT / 'scripts/bd_signal_interfaces.py']
    source_manifest = {str(path.relative_to(service.ROOT)): service.digest(path.read_bytes()) for path in sources}
    project = json.loads(args.project_probe.read_text(encoding='utf-8'))
    result = {'schema': 'bde_signal_witnesses_research_v1', 'online_calls': 0,
              'input_manifest': manifest, 'source_manifest': source_manifest,
              'editable_refs': False, 'complete_signal_path': False}
    try:
        witnesses = []
        for path in args.component_probe:
            component = json.loads(path.read_text(encoding='utf-8'))
            rows = component_witnesses(project, component)
            for row in rows:
                row['component_evidence'] = str(path.resolve())
            witnesses.extend(rows)
        result.update(status='ok', witnesses=witnesses,
                      counts=dict(Counter(row['status'] for row in witnesses)))
    except (ValueError, KeyError) as error:
        result.update(status='failed', error=str(error))
    (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({key: value for key, value in result.items() if key != 'witnesses'}))
    return 0 if result['status'] == 'ok' else 1


if __name__ == '__main__':
    raise SystemExit(main())
