"""Read-only public Class membership/occurrence oracle and exact Project joins."""
import argparse
import json
from pathlib import Path
import subprocess
import sys
import time
import traceback

import bd_service as service
import bde_experiments as bench
from bd_class_body import compare_class_public, formal_body_bindings, instance_body_segments
from bd_project_tools import entities
from bd_signal_interfaces import graph_index, pin_ref
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--parent', default='PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Private\\AutomaticBraking\\AEB_axControl')
    parser.add_argument('--child', default='PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Private\\AutomaticBraking\\AEB_dFxTar')
    parser.add_argument('--project', default='PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Component\\AEB_iBooster\\AEBiBooster_ECU_CSW_BB00001')
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.output / 'store'
    result = {'passed': False, 'calls': [], 'metrics': [], 'rounds': [], 'business_writes': False,
        'model_setters_called': 0, 'not_verified': ['pin manager predicate independence', 'formal in/out flags without public getters',
            'interface creation/deletion', 'method execution', 'runtime transfer', 'all Class shapes', 'same-definition instance fixture']}
    files = [p for p in (service.ROOT / 'scripts').glob('*') if p.suffix in ('.py', '.cs', '.st', '.json')
             and p.name.startswith(('bd', 'AscetSignal', 'AscetStructure'))]
    files += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result['source_manifest'] = {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in files}

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(row):
        result['calls'].append(row)
        save()

    client = ToolClient(args.output, 'class-body-' + args.output.name, record)

    def call(tool, values, error=False):
        started = time.perf_counter()
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            head, body, failed = client.call(tool, values)
        metric = {'tool': tool, 'elapsed_ms': (time.perf_counter() - started) * 1000,
            'request': wire['request'].result(), 'response': wire['response'].result(),
            'connections': wire['connections'], 'errors': wire['errors'], 'body_bytes': len(body.encode())}
        result['metrics'].append(metric)
        assert failed == error and not wire['errors'], body
        return head, body if tool == 'bd_read' else json.loads(body), metric

    def read(c, view):
        head, _, _ = call('bd_read', {'component': c, 'view': view})
        return service.load_record(head['snapshot'], 's_', 'snapshots')

    try:
        save()
        for trial in range(args.repeats):
            row = {'trial': trial, 'passed': False, 'public_oracles': {}, 'joins': [], 'paths': []}
            result['rounds'].append(row)
            records = []
            for tag, component in [('parent', args.parent), ('child', args.child)]:
                output = args.output / f'r{trial}-{tag}-public'
                p = subprocess.run([sys.executable, str(service.ROOT / 'scripts/bde_signal_interface_experiment.py'),
                    '--component', component, '--public-oracle', '--output', str(output)], capture_output=True, timeout=150)
                (args.output / f'r{trial}-{tag}.stdout.log').write_bytes(p.stdout)
                (args.output / f'r{trial}-{tag}.stderr.log').write_bytes(p.stderr)
                assert p.returncode == 0, p.stdout.decode(errors='replace')
                raw = json.loads((output / 'probe.json').read_text(encoding='utf-8'))
                record = read(component, 'interfaces')
                for field in ('database', 'ascet_process_epoch', 'oid'):
                    assert record[field] == raw[field]
                assert record['database_session_identity'] == raw['database_session']
                proof = compare_class_public(record['interfaces'], raw['public_after'])
                unchanged = compare_class_public(raw['structure'], raw['public_before'])
                assert proof['passed'] and unchanged['passed'], {'proof': proof, 'before': unchanged}
                assert raw['dirty_before'] == raw['dirty_after']
                row['public_oracles'][tag] = proof
                records.append(record)
            parent, child = records
            project = read(args.project, 'project_messages')
            instances = {ref: item['fields'] for ref, item in entities(project).items()
                         if item['fields'].get('interface_kind') in ('project_module_instance', 'project_component_instance')}
            supplied = []
            for child_ref, instance in instances.items():
                if instance['definition_oid'] != child['oid'] or instance.get('owner_oid') != parent['oid']:
                    continue
                parent_ref = instance['parent_ref']
                assert parent_ref in instances and instances[parent_ref]['definition_oid'] == parent['oid']
                relations = instance_body_segments(parent, child, instance)
                assert relations, {'instance': instance, 'formal_body': formal_body_bindings(child['interfaces'])}
                row['joins'].append({'parent_instance': parent_ref, 'child_instance': child_ref, 'relations': relations})
                supplied = [{'snapshot': parent['snapshot'], 'instance': parent_ref}, {'snapshot': child['snapshot'], 'instance': child_ref}]
                pn, pp = graph_index(parent['interfaces'])
                cn, cp = graph_index(child['interfaces'])
                parent_pin_keys = {pin_ref(pin): (pin['scope'], pin['id']) for pin in pp.values()}
                child_pin_keys = {pin_ref(pin): (pin['scope'], pin['id']) for pin in cp.values()}
                for relation in relations:
                    ps, pi = parent_pin_keys[relation['parent_pin']]
                    cs, ci = child_pin_keys[relation['body_pin']]
                    inward = relation['direction'] == 'parent_to_body'
                    parent_edge = next((e for e in parent['interfaces']['edges'] if e['scope'] == ps
                        and e['target' if inward else 'source'] == pi), None)
                    child_edge = next((e for e in child['interfaces']['edges'] if e['scope'] == cs
                        and e['source' if inward else 'target'] == ci), None)
                    if parent_edge is None or child_edge is None:
                        continue
                    parent_end = {'instance': parent_ref, 'ref': pin_ref(pp[(ps, parent_edge['source' if inward else 'target'])])}
                    child_end = {'instance': child_ref, 'ref': pin_ref(cp[(cs, child_edge['target' if inward else 'source'])])}
                    source, target = (parent_end, child_end) if inward else (child_end, parent_end)
                    _, path, metric = call('bd_inspect', {'query': 'project_signal_path', 'snapshot': project['snapshot'],
                        'components': supplied, 'source': source, 'target': target})
                    assert metric['request']['frames'] == metric['connections'] == 0
                    assert any(s['kind'] == 'class_formal_boundary' for s in path['segments']), path
                    row['paths'].append({'direction': relation['direction'], 'result': path})
                save()
            assert row['joins'] and row['paths'], {'joins': row['joins'], 'paths': row['paths'], 'instances': len(instances)}
            # A current Project reference cannot be replaced by a display name.
            _, rejected, metric = call('bd_inspect', {'query': 'project_signal_path', 'snapshot': project['snapshot'],
                'components': supplied, 'source': {'instance': 'name:AEB_dFxTar', 'ref': row['paths'][0]['result']['source']['ref']},
                'target': row['paths'][0]['result']['target']}, True)
            assert metric['request']['frames'] == metric['connections'] == 0
            row['passed'] = True
            save()
        result['passed'] = all(row['passed'] for row in result['rounds'])
    except Exception:
        result['error'] = traceback.format_exc()
    result['source_changes_during_run'] = [name for name, sha in result['source_manifest'].items()
        if service.digest((service.ROOT / name).read_bytes()) != sha]
    if result['source_changes_during_run']:
        result['passed'] = False
    save()
    print(json.dumps({'passed': result['passed'], 'rounds': len(result['rounds']), 'error': result.get('error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
