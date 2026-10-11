"""Isolated live message candidate/path and group edit/inverse experiments.

Uses actual Doge Tool.call, public graph/model projections and a public Project
lookup. Candidate counts also follow the independently declared primitive
fixture recipe; this does not certify all ASCET type compatibility predicates.
"""
import argparse
import json
from pathlib import Path
import subprocess
import sys
import time
import traceback

import bd_service as service
import bde_experiments as bench
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_project_messages import compare_project
from bd_project_tools import entities
from bd_signal_interfaces import graph_index, pin_ref
from bde_public_oracle import compare, public_projection, encoded
from bde_tool_client import ToolClient


def equivalent(left, right):
    return all(left[c]['native']['entries'] == right[c]['native']['entries']
        and encoded(left[c]['models']) == encoded(right[c]['models'])
        and set(left[c]['public']) == set(right[c]['public'])
        and all(public_projection(left[c]['public'][s]) == public_projection(right[c]['public'][s])
                for s in left[c]['public']) for c in left)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--fixture', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    args = parser.parse_args()
    fixture = json.loads(args.fixture.read_text(encoding='utf-8'))
    assert fixture['status'] == 'ok' and fixture['business_writes'] is False
    components = [row['component'] for row in fixture['modules']]
    assert len(components) == 3 and all(c.startswith('BDE_Tool_Experiments\\Trial_') for c in components)
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.output / 'store'
    result = {'passed': False, 'calls': [], 'metrics': [], 'cases': [], 'outstanding': [],
        'business_writes': False, 'atomic': False, 'baseline_restored': False,
        'not_verified': ['runtime transport/schedule', 'generic connect_path operation',
            'Class/hierarchy interface creation', 'all kinds/shapes of native compatibility',
            'complete original BDE visual lifecycle', 'database reopen lifecycle']}
    sources = [p for p in (service.ROOT / 'scripts').glob('*')
        if p.suffix in ('.py', '.cs', '.st', '.json') and p.name.startswith(('bd', 'AscetStructure', 'AscetBde'))]
    sources += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result['source_manifest'] = {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in sources}
    domains = {}; baseline = None

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(row):
        result['calls'].append(row); save()

    client = ToolClient(args.output, 'channel-eval-' + args.output.name, record)

    def call(tool, arguments, error=False):
        start = time.perf_counter()
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            head, body, failed = client.call(tool, arguments)
        metric = {'tool': tool, 'elapsed_ms': (time.perf_counter() - start) * 1000,
            'request_wire': wire['request'].result(), 'response_wire': wire['response'].result(),
            'connections': wire['connections'], 'errors': wire['errors'], 'body_bytes': len(body.encode())}
        result['metrics'].append(metric); save()
        assert failed == error and not wire['errors'], body
        return head, body if tool == 'bd_read' else json.loads(body), metric

    def read(component, view='structure'):
        head, _, _ = call('bd_read', {'component': component, 'view': view})
        raw = service.load_record(head['snapshot'], 's_', 'snapshots')
        if view == 'structure':
            domains[component] = {'session': client.session, 'database': raw['database'], 'oid': raw['oid'],
                                 'process_epoch': raw['ascet_process_epoch']}
        return raw

    def observe():
        rows = {}
        for c in components:
            with service.live_lock(), NativeStructureAdapter(c) as adapter:
                rows[c] = {'native': adapter.observe(domains[c], []),
                    'public': adapter._exchange({'cmd': 'observe_public_tree'}), 'models': adapter.observe_models(domains[c])}
            assert compare(rows[c]['native']['entries'], rows[c]['public']['Main'])['passed']
        return rows

    def verify_patch(before, after, receipt):
        from bd_group_tools import journal
        for step in receipt['steps']:
            local = step['receipt']; intent = journal().local.read(local['change_id'])[0]['payload']
            if 'reverts' in intent: intent = journal().local.read(intent['reverts'])[0]['payload']
            c = intent['component']; rows = {r['ref']: r for r in before[c]['native']['entries']}
            for change in local['differences']:
                assert rows.get(change['ref']) == change['before']
                if change['after'] is None: rows.pop(change['ref'])
                else: rows[change['ref']] = change['after']
            assert rows == {r['ref']: r for r in after[c]['native']['entries']}
            assert local['after_snapshot'] and local['additional_ASCET_reads'] == 0

    def edit(ops, snapshots, key, before):
        request = {'request_id': key, 'steps': [{'snapshot': snapshots[i]['snapshot'], 'operations': [op]} for i, op in ops]}
        _, preview, _ = call('bd_edit', {**request, 'preview': True})
        assert preview['status'] == 'preview' and equivalent(observe(), before)
        group = 'flow_' + fingerprint({'session': client.session, 'request_id': key})
        result['outstanding'].append(group); save()
        _, receipt, _ = call('bd_edit', request)
        assert receipt['status'] == 'completed' and receipt['change_id'] == group, receipt
        after = observe(); verify_patch(before, after, receipt)
        _, replay, metric = call('bd_edit', request)
        assert replay == receipt and metric['request_wire']['frames'] == metric['connections'] == 0
        _, diff, metric = call('bd_diff', {'change_id': group})
        assert metric['request_wire']['frames'] == metric['connections'] == 0
        for step, item in zip(receipt['steps'], diff['resource_differences']):
            assert item['differences'] == [{**change, 'qualified_ref': 'Main/' + change['ref']}
                                          for change in step['receipt']['differences']]
        for (i, _), step in zip(ops, receipt['steps']):
            snapshots[i] = service.load_record(step['receipt']['after_snapshot'], 's_', 'snapshots')
        return receipt, after

    def inverse(receipt, key, before):
        _, preview, _ = call('bd_revert', {'change_id': receipt['change_id'], 'request_id': key, 'preview': True})
        assert preview['status'] == 'preview' and equivalent(observe(), before)
        _, restored, _ = call('bd_revert', {'change_id': receipt['change_id'], 'request_id': key})
        assert restored['status'] == 'reverted', restored
        after = observe(); verify_patch(before, after, restored)
        result['outstanding'].remove(receipt['change_id']); save()
        return after

    def pins(record, name):
        rows = record['structure']['entries']; model = next(r for r in rows if r['kind'] == 'model' and r['name'] == name)
        node = next(r for r in rows if r['kind'] == 'node' and r.get('model_ref') == model['ref'])
        return {direction: 'Main/' + next(r['ref'] for r in rows if r['ref'] in node['pins'] and r[direction])
                for direction in ('input', 'output') if any(r['ref'] in node['pins'] and r[direction] for r in rows)}

    recipes = [
        ('forward', [(0, 'send_message', 'EvalChannel', 'cont', 'exported'), (2, 'receive_message', 'EvalChannel', 'cont', 'imported')], 1, 'unique_declaration_candidate', [0, 2]),
        ('reverse', [(0, 'receive_message', 'EvalChannel', 'cont', 'exported'), (2, 'send_message', 'EvalChannel', 'cont', 'imported')], 1, 'unique_declaration_candidate', [2, 0]),
        ('duplex', [(0, 'send_receive_message', 'EvalChannel', 'cont', 'exported'), (2, 'send_receive_message', 'EvalChannel', 'cont', 'imported')], 1, 'unique_declaration_candidate', [0, 2]),
        ('ambiguous', [(0, 'send_message', 'EvalChannel', 'cont', 'exported'), (1, 'send_message', 'EvalChannel', 'cont', 'exported'), (2, 'receive_message', 'EvalChannel', 'cont', 'imported')], 2, 'ambiguous_declaration', [0, 2]),
        ('wrong_type', [(0, 'send_message', 'EvalChannel', 'cont', 'exported'), (1, 'send_message', 'EvalChannel', 'log', 'exported'), (2, 'receive_message', 'EvalChannel', 'cont', 'imported')], 1, 'unique_declaration_candidate', [0, 2]),
        ('unresolved', [(0, 'send_message', 'EvalOther', 'cont', 'exported'), (2, 'receive_message', 'EvalChannel', 'cont', 'imported')], 0, 'unresolved', [0, 2]),
        ('repeated_instance', [(0, 'send_message', 'EvalChannel', 'cont', 'exported'), (2, 'receive_message', 'EvalChannel', 'cont', 'imported')], 1, 'unique_declaration_candidate', [0, 2]),
    ]
    try:
        snapshots = [read(c) for c in components]; baseline = observe()
        seed, seeded = edit([(i, {'op': 'create_block', 'kind': 'variable', 'name': 'EvalValue',
            'model_type': 'cont', 'position': [100, 160]}) for i in range(3)], snapshots, 'seed-values', baseline)
        for trial in range(args.repeats):
            for name, specs, count, status, direction in recipes:
                key = f'r{trial}-{name}'; row = {'trial': trial, 'case': name, 'passed': False}
                result['cases'].append(row); save()
                snapshots = [read(c) for c in components]
                ops = [(i, {'op': 'create_block', 'kind': kind, 'name': label, 'model_type': typ,
                            'message_scope': scope, 'position': [380, 160]}) for i, kind, label, typ, scope in specs]
                messages, current = edit(ops, snapshots, key + '-messages', seeded)
                row['messages'] = messages
                assert all(next(m for m in current[components[i]]['models'] if m['name'] == label)['model_type'] == typ
                           for i, _, label, typ, _ in specs)
                sender, receiver = direction
                names = {i: label for i, _, label, _, _ in specs}
                connection_ops = [(sender, {'op': 'connect_data', 'source': pins(snapshots[sender], 'EvalValue')['output'],
                    'target': pins(snapshots[sender], names[sender])['input']}),
                    (receiver, {'op': 'connect_data', 'source': pins(snapshots[receiver], names[receiver])['output'],
                    'target': pins(snapshots[receiver], 'EvalValue')['input']})]
                connected, current = edit(connection_ops, snapshots, key + '-connections', current)
                row['connections'] = connected
                reverse_connected = None
                if name == 'duplex':
                    reverse_connected, current = edit([
                        (receiver, {'op': 'connect_data', 'source': pins(snapshots[receiver], 'EvalValue')['output'],
                         'target': pins(snapshots[receiver], names[receiver])['input']}),
                        (sender, {'op': 'connect_data', 'source': pins(snapshots[sender], names[sender])['output'],
                         'target': pins(snapshots[sender], 'EvalValue')['input']})], snapshots, key + '-reverse-connections', current)
                    row['reverse_connections'] = reverse_connected
                project_path = fixture['repeated_project' if name == 'repeated_instance' else 'project']
                oracle_dir = args.output / (key + '-public-project')
                oracle = subprocess.run([sys.executable, str(service.ROOT / 'scripts/bde_project_message_experiment.py'),
                    '--project', project_path, '--messages', 'all', '--output', str(oracle_dir)], capture_output=True, timeout=180)
                (args.output / (key + '.oracle.log')).write_bytes(oracle.stdout + oracle.stderr)
                assert oracle.returncode == 0, oracle.stdout.decode(errors='replace')
                raw = json.loads((oracle_dir / 'probe.json').read_text(encoding='utf-8'))
                project = read(project_path, 'project_messages'); row['project_snapshot'] = project['snapshot']
                row['public_projection'] = compare_project(project['project_messages'], raw['public_after'])
                assert row['public_projection']['passed'] and project['database_session_identity'] == raw['database_session']
                binding, = project['message_bindings']['bindings']; row['binding'] = binding
                assert len(binding['candidates']) == count and binding['status'] == status
                expected_owners = {fixture['modules'][i]['oid'] for i, _, label, typ, scope in specs
                    if scope == 'exported' and label == 'EvalChannel' and typ == 'cont'}
                assert {c['owner_oid'] for c in binding['candidates']} == expected_owners
                assert binding['instance_resolution'] == ('multiple_owner_instances' if name == 'repeated_instance' else 'bounded_owner_chains_collected')
                instance_rows = entities(project); contexts = []; endpoints = []
                for i in direction:
                    interface = read(components[i], 'interfaces')
                    instance = next(ref for ref, item in instance_rows.items()
                        if item['fields'].get('interface_kind') == 'project_module_instance' and item['name'] == 'Module' + str(i))
                    contexts.append({'snapshot': interface['snapshot'], 'instance': instance})
                    nodes, pin_rows = graph_index(interface['interfaces'])
                    model = next(m for m in interface['interfaces']['models'] if m['name'] == 'EvalValue')
                    ids = {(n['scope'], n['id']) for n in nodes.values() if n.get('model_alias') == model['alias']}
                    endpoint = next(p for p in pin_rows.values() if (p['scope'], p['owner']) in ids and p['output' if i == sender else 'input'])
                    endpoints.append({'instance': instance, 'ref': pin_ref(endpoint)})
                _, path, metric = call('bd_inspect', {'query': 'project_signal_path', 'snapshot': project['snapshot'],
                    'components': contexts, 'source': endpoints[0], 'target': endpoints[1]})
                row['path'] = path
                assert metric['request_wire']['frames'] == metric['connections'] == 0
                valid = count == 1 and name != 'repeated_instance'
                assert path['status'] == ('observed_declared_static_path' if valid else 'no_path_in_collected_relations')
                assert [s['kind'] for s in path['segments']] == (['diagram_connection', 'message_binding', 'diagram_connection'] if valid else [])
                assert path['complete_signal_path'] is False and path['editable'] is False
                if not valid: assert path['blocked_bindings']
                if name == 'duplex':
                    reverse_endpoints = []
                    for i, want in ((receiver, 'output'), (sender, 'input')):
                        interface = next(service.load_record(ctx['snapshot'], 's_', 'snapshots')
                            for ctx in contexts if instance_rows[ctx['instance']]['name'] == 'Module' + str(i))
                        nodes, pin_rows = graph_index(interface['interfaces'])
                        model = next(m for m in interface['interfaces']['models'] if m['name'] == 'EvalValue')
                        ids = {(n['scope'], n['id']) for n in nodes.values() if n.get('model_alias') == model['alias']}
                        pin = next(p for p in pin_rows.values() if (p['scope'], p['owner']) in ids and p[want])
                        reverse_endpoints.append({'instance': contexts[direction.index(i)]['instance'], 'ref': pin_ref(pin)})
                    _, reverse_path, metric = call('bd_inspect', {'query': 'project_signal_path', 'snapshot': project['snapshot'],
                        'components': contexts, 'source': reverse_endpoints[0], 'target': reverse_endpoints[1]})
                    row['reverse_path'] = reverse_path
                    assert metric['request_wire']['frames'] == metric['connections'] == 0
                    assert reverse_path['status'] == 'observed_declared_static_path'
                    assert [s['kind'] for s in reverse_path['segments']] == ['diagram_connection', 'message_binding', 'diagram_connection']
                    current = inverse(reverse_connected, key + '-undo-reverse-connections', current)
                current = inverse(connected, key + '-undo-connections', current)
                current = inverse(messages, key + '-undo-messages', current)
                assert equivalent(current, seeded)
                row['passed'] = True; save()
        current = inverse(seed, 'undo-seed', seeded)
        result['baseline_restored'] = equivalent(current, baseline)
        assert result['baseline_restored']; result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        try:
            for group in list(reversed(result['outstanding'])):
                _, restored, _ = call('bd_revert', {'change_id': group, 'request_id': 'cleanup-' + group})
                assert restored['status'] == 'reverted', restored
                result['outstanding'].remove(group); save()
            if baseline is not None: result['baseline_restored'] = equivalent(observe(), baseline)
        except Exception:
            result['cleanup_error'] = traceback.format_exc()
        result['source_changes_during_run'] = [name for name, digest in result['source_manifest'].items()
            if service.digest((service.ROOT / name).read_bytes()) != digest]
        result['passed'] = result['passed'] and result['baseline_restored'] and not result['outstanding'] and not result['source_changes_during_run']
        save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'baseline_restored', 'outstanding', 'error', 'cleanup_error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
