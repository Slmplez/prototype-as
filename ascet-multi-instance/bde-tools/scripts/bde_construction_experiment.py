"""Actual Doge create/connect plans with cumulative native/public patch audits."""
import argparse
from collections import Counter
import json
import os
from pathlib import Path
import subprocess
import sys
import time
import traceback
from unittest.mock import patch

import bd_service as service
import bd_group_tools
import bd_structural_tools
import bde_experiments as bench
from bd_construction_sequence import apply_patch_rows
from bd_edit_journal import clone, fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_structural_tools import select
from bd_project_messages import compare_project
from bd_project_tools import entities
from bd_signal_interfaces import graph_index, pin_ref
from bde_public_oracle import compare, encoded, native_projection, public_projection
from bde_tool_client import ToolClient


class LoseSecondReply(NativeStructureAdapter):
    mutations = []
    loss_command = 'apply'
    loss_index = 2

    def _exchange(self, request):
        result = super()._exchange(request)
        if request['cmd'] in ('apply', 'revert'):
            self.mutations.append({'cmd': request['cmd'], 'component': self.component, 'token': request.get('token')})
        if request['cmd'] == self.loss_command and len(self.mutations) == self.loss_index:
            raise ConnectionError('EVAL: real construction ' + self.loss_command + ' reply discarded')
        return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--fixture', type=Path, required=True)
    parser.add_argument('--hierarchy', required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    parser.add_argument('--presentation', action='store_true')
    parser.add_argument('--enum-definition')
    parser.add_argument('--class-definition', default='PlatformLibrary\\Package\\AEB_AutomaticEmergencyBrake\\Private\\AutomaticBraking\\AEB_dFxTar')
    parser.add_argument('--cases', nargs='+', choices=('fanout', 'two_module_messages', 'two_nested_scopes',
                        'nested_component_declarations', 'typed_creations', 'hierarchy_ports',
                        'cross_module_channel', 'ambiguous_pin', 'lost_second_creation_reply', 'lost_hierarchy_reply',
                        'lost_hierarchy_inverse_reply', 'shape_creations', 'shared_enum',
                        'lost_enum_reply', 'lost_enum_dependency_reply', 'lost_enum_inverse_reply',
                        'model_dependencies', 'lost_group_table_reply', 'lost_occurrence_reply'))
    parser.add_argument('--visual-hold', type=int, choices=range(0, 901), default=0)
    args = parser.parse_args()
    if args.visual_hold and (not args.presentation or args.cases != ['fanout']):
        parser.error('Visual gates require --presentation --cases fanout')
    fixture = json.loads(args.fixture.read_text())
    components = [row['component'] for row in fixture['modules'][:2]] + [args.hierarchy]
    assert fixture['status'] == 'ok' and all(c.startswith('BDE_Tool_Experiments\\Trial_') for c in components)
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.output / 'store'
    result = {'passed': False, 'calls': [], 'metrics': [], 'cases': [], 'observations': [], 'outstanding': [],
              'active': [], 'ui': {}, 'visual_verified': False, 'business_writes': False, 'baseline_restored': False,
              'not_verified': ['new Class/hierarchy interfaces', 'shared enum construction', 'runtime delivery', 'screenshots and lifecycle'],
              'fault': 'controlled adapter exception after a real second native apply; not wire truncation'}
    files = [p for p in (service.ROOT / 'scripts').glob('*') if p.suffix in ('.py', '.cs', '.st', '.json')
             and p.name.startswith(('bd', 'AscetStructure', 'AscetBde'))]
    files += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result['source_manifest'] = {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in files}
    domains, scopes = {}, {}
    baseline = None

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(row):
        result['calls'].append(row)
        save()

    client = ToolClient(args.output, 'construction-' + args.output.name, record)
    if args.presentation:
        client.env['ASCET_BD_NATIVE_PRESENTATION'] = '1'

    def call(tool, values, error=False, direct=False):
        started = time.perf_counter()
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            if direct:
                from bd_group_recovery import document
                with patch.dict(os.environ, client.env), patch.object(bd_group_tools, 'NativeStructureAdapter', LoseSecondReply), \
                        patch.object(bd_structural_tools, 'NativeStructureAdapter', LoseSecondReply):
                    response = service.handle(tool, values, client.session)
                body = document(response, client.session)
                head, failed = {}, response['is_error']
                record({'tool': tool, 'args': values, 'response': response, 'invocation': 'direct backend fault injection'})
            else:
                head, text, failed = client.call(tool, values)
                body = text if tool == 'bd_read' else json.loads(text)
        metric = {'tool': tool, 'elapsed_ms': (time.perf_counter() - started) * 1000,
                  'request': wire['request'].result(), 'response': wire['response'].result(),
                  'connections': wire['connections'], 'errors': wire['errors']}
        result['metrics'].append(metric)
        save()
        assert (error is None or failed == error) and not wire['errors'], body
        return head, body, metric

    def read(c, s):
        head, _, _ = call('bd_read', {'component': c, 'view': 'structure', 'scope': {'diagram': s}})
        raw = service.load_record(head['snapshot'], 's_', 'snapshots')
        domains[c] = {'session': client.session, 'database': raw['database'], 'oid': raw['oid'], 'process_epoch': raw['ascet_process_epoch']}
        return raw

    def observe():
        value = {}
        with service.live_lock():
            for c in components:
                with NativeStructureAdapter(c) as adapter:
                    adapter.observe(domains[c], [])
                    public = adapter._exchange({'cmd': 'observe_public_tree'})
                    models = adapter.observe_models(domains[c])
                native = {}
                for s in public:
                    with NativeStructureAdapter(c, s) as adapter:
                        native[s] = adapter.observe(domains[c], [])
                assert set(public) == set(native)
                for s in native:
                    proof = compare(native[s]['entries'], public[s])
                    assert proof['passed'], proof
                value[c] = {'native': native, 'public': public, 'models': models}
        result['observations'].append(value)
        save()
        return value

    def equal(a, b):
        return (set(a) == set(b) and all(a[c]['native'] == b[c]['native']
                and set(a[c]['public']) == set(b[c]['public'])
                and all(public_projection(a[c]['public'][s]) == public_projection(b[c]['public'][s]) for s in a[c]['public'])
                and Counter(map(encoded, a[c]['models'])) == Counter(map(encoded, b[c]['models'])) for c in a))

    def audit(receipt, before, after):
        virtual = clone(before)
        projections = {(c, s): public_projection(before[c]['public'][s]) for c in components for s in before[c]['native']}
        for row in receipt['steps']:
            local = row['receipt']
            source = bd_group_tools.journal().local.read(local['change_id'])[0]['payload']
            if 'reverts' in source:
                source = bd_group_tools.journal().local.read(source['reverts'])[0]['payload']
            c, s = source['component'], source['diagram']
            apply_patch_rows(virtual[c]['native'][s], local['differences'])
            for delta in local['differences']:
                if delta['before']:
                    projections[c, s] -= native_projection([delta['before']])
                if delta['after']:
                    projections[c, s] += native_projection([delta['after']])
            # Declarations are component-wide; the same model row appears in every complete scope.
            model_diffs = [d for d in local['differences'] if (d['after'] or d['before'])['kind'] == 'model']
            for other in virtual[c]['native']:
                if other != s:
                    apply_patch_rows(virtual[c]['native'][other], model_diffs)
            for effect in local.get('scope_effects', []):
                child = effect['diagram']
                assert virtual[c]['native'].get(child) == effect['before']
                if effect['after'] is None:
                    virtual[c]['native'].pop(child)
                    projections.pop((c, child))
                else:
                    virtual[c]['native'][child] = clone(effect['after'])
                    projections[c, child] = native_projection(effect['after']['entries'])
            for child_snapshot in local.get('scope_after_snapshots', []):
                child = service.load_record(child_snapshot['snapshot'], 's_', 'snapshots')['structure']
                assert child == virtual[c]['native'][child_snapshot['diagram']]
            assert local['additional_ASCET_reads'] == 0 and local['after_snapshot']
            snapshot = service.load_record(local['after_snapshot'], 's_', 'snapshots')['structure']
            assert select(virtual[c]['native'][s], snapshot['targets']) == snapshot
        for c in components:
            assert virtual[c]['native'] == after[c]['native']
            for s in virtual[c]['native']:
                assert projections[c, s] == public_projection(after[c]['public'][s])
            old_models = {m['name']: m for m in before[c]['models']}
            new_models = {m['name']: m for m in after[c]['models']}
            assert all(new_models.get(name) == m for name, m in old_models.items() if name in new_models)
            native_models = {m['name']: m for m in after[c]['native']['Main']['entries'] if m['kind'] == 'model'}
            assert set(native_models) == set(new_models)
            for name in set(new_models) - set(old_models):
                public, native = new_models[name], native_models[name]
                assert public['model_type'] == native.get('model_type')
                if 'definition' in native:
                    assert public['definition_oid'] == native['definition']['oid']
                    assert public['definition_path'].strip('\\') == native['definition']['path'].strip('\\')
                value = native.get('default_value', {})
                if value.get('status') == 'read':
                    assert public['default_configuration_oid'] == value['configuration_oid']
                    if 'value' in value:
                        assert public['default_value'] == value['value']
                    prefix = {'EtasAPIModelArray': 'array', 'EtasAPIModelMatrix': 'matrix',
                              'EtasAPIModelDistribution': 'distribution', 'EtasAPIModelOneDTable': 'table',
                              'EtasAPIModelTwoDTable': 'table'}.get(native['native_class'])
                    if prefix:
                        for field in ('values', 'size', 'declared_max_size'):
                            assert public[prefix + '_' + field] == value[field]
                        if prefix == 'table':
                            assert public['table_x'] == value['x']
                            if 'y' in value: assert public['table_y'] == value['y']
                            for field in ('interpolation_linear', 'interpolation_rounded', 'extrapolation_constant'):
                                assert public[field] == value[field]
                        else:
                            assert public[prefix + '_max_size'] == value['max_size']
        result.setdefault('patch_audits', []).append({'change_id': receipt['change_id'], 'passed': True})
        save()

    def make_plan(resources, key, message=False, ambiguous=False, declaration=False, typed=False, hierarchy=False, shapes=False, shared=False, models=False):
        steps = []
        for c, s in resources:
            raw = read(c, s)
            if declaration:
                steps.append({'snapshot': raw['snapshot'], 'operations': [{'op': 'create_block', 'kind': 'variable',
                              'name': 'EvalBuild_' + key + '_' + str(len(steps)), 'model_type': 'cont',
                              'position': [1450, 1550]}]})
            base = len(steps)
            def add(op):
                steps.append({'snapshot': raw['snapshot'], 'operations': [op]})
            if models:
                for i in (0, 1):
                    add({'op': 'create_block', 'kind': 'distribution', 'name': 'EvalAxis_' + key + '_' + str(i),
                         'position': [1200, 1000 + i * 250], 'model_type': 'cont', 'max_size': 4})
                add({'op': 'create_block', 'kind': 'oned_table_group', 'name': 'EvalTable1_' + key,
                     'position': [1550, 1000], 'x_distribution': {'step': base}})
                add({'op': 'create_block', 'kind': 'twod_table_group', 'name': 'EvalTable2_' + key,
                     'position': [1550, 1250], 'x_distribution': {'step': base}, 'y_distribution': {'step': base + 1}})
                add({'op': 'create_block', 'kind': 'variable', 'name': 'EvalVariable_' + key,
                     'position': [1900, 1000], 'model_type': 'cont', 'initial_value': 12.75})
                add({'op': 'create_block', 'kind': 'existing_model', 'position': [1900, 1250], 'model': {'step': base + 4}})
                add({'op': 'create_block', 'kind': 'literal', 'name': '91.25', 'position': [1600, 1500]})
                for i in (base + 4, base + 5):
                    add({'op': 'connect_data', 'source': {'step': base + 6, 'direction': 'output'},
                         'target': {'step': i, 'direction': 'input', 'name': 'set/aValue'}})
                continue
            if shared:
                add({'op': 'create_block', 'kind': 'enumeration', 'name': 'EvalMode_' + key,
                     'position': [1600, 1300], 'new_definition': {'name': 'Trial_BuildEnum_' + key, 'items': ['Off', 'On']},
                     'initial_value': 'Off'})
                add({'op': 'create_block', 'kind': 'send_message', 'name': 'EvalMessage_' + key,
                     'position': [1940, 1180], 'model_type': 'enum', 'definition': {'step': base}, 'message_scope': 'local'})
                add({'op': 'create_block', 'kind': 'enumeration', 'name': 'EvalCopy_' + key,
                     'position': [1940, 1450], 'definition': {'step': base}, 'initial_value': 'On'})
                for i in (base + 1, base + 2):
                    add({'op': 'connect_data', 'source': {'step': base, 'direction': 'output', 'name': 'get/get'},
                         'target': {'step': i, 'direction': 'input', 'name': 'set/aValue'}})
                continue
            if shapes:
                specs = [('array', {'model_type': 'cont', 'max_size': 4}),
                         ('matrix', {'model_type': 'sdisc', 'max_size': [2, 3]}),
                         ('distribution', {'model_type': 'cont', 'max_size': 4}),
                         ('oned_table', {'model_type': 'cont', 'max_size': 4}),
                         ('twod_table', {'model_type': 'cont', 'max_size': [2, 3]}),
                         ('oned_table_fixed', {'model_type': 'udisc', 'max_size': 4}),
                         ('twod_table_fixed', {'model_type': 'cont', 'max_size': [2, 3]}),
                         ('resource', {}), ('delta_t', {}), ('implementation_cast', {}),
                         ('control', {'arity': 2}), ('component', {'definition': args.class_definition})]
                if args.enum_definition:
                    specs.append(('enumeration', {'definition': args.enum_definition}))
                for i, (kind, fields) in enumerate(specs):
                    name = 'dT' if kind == 'delta_t' else 'MUX' if kind == 'control' else 'EvalShape_' + key + '_' + str(i)
                    add({'op': 'create_block', 'kind': kind, 'name': name, 'position': [1000 + (i % 4) * 300, 1100 + (i // 4) * 180], **fields})
                continue
            if typed:
                for i, kind in enumerate(('comment', 'parameter', 'constant', 'send_receive_message')):
                    op = {'op': 'create_block', 'kind': kind, 'name': 'EvalBuild_' + key + '_' + kind,
                          'position': [1400 + i * 220, 1500]}
                    if kind in ('parameter', 'constant'):
                        op.update(model_type='cont', initial_value=91.25 + i)
                    if kind == 'send_receive_message':
                        op.update(model_type='cont', message_scope='local')
                    add(op)
                continue
            add({'op': 'create_block', 'kind': 'literal', 'name': '731.25', 'position': [300, 250] if args.visual_hold else [1600, 1300]})
            if hierarchy:
                add({'op': 'create_block', 'kind': 'hierarchy', 'name': 'EvalStage_' + key,
                     'position': [1940, 1300], 'inputs': ['Signal', 'Other'], 'outputs': ['Result']})
                for name in ('Signal', 'Other'):
                    add({'op': 'connect_data', 'source': {'step': base, 'direction': 'output'},
                         'target': {'step': base + 1, 'direction': 'input', 'name': name}})
                add({'op': 'create_block', 'kind': 'variable', 'name': 'EvalBuild_' + key,
                     'model_type': 'cont', 'initial_value': 3.25, 'position': [2260, 1300]})
                add({'op': 'connect_data', 'source': {'step': base + 1, 'direction': 'output', 'name': 'Result'},
                     'target': {'step': base + 4, 'direction': 'input', 'name': 'set/aValue'}})
                continue
            if message:
                add({'op': 'create_block', 'kind': 'send_message', 'name': 'EvalBuild_' + key,
                     'model_type': 'cont', 'message_scope': 'exported', 'position': [1940, 1300]})
                add({'op': 'connect_data', 'source': {'step': base, 'direction': 'output'},
                     'target': {'step': base + 1, 'direction': 'input', 'name': 'set/aValue'}})
            else:
                add({'op': 'create_block', 'kind': 'operator', 'name': '+', 'arity': 2, 'position': [620, 250] if args.visual_hold else [1940, 1300]})
                for name in ('in#1', 'in#2'):
                    target = {'step': base + 1, 'direction': 'input'}
                    if not ambiguous:
                        target['name'] = name
                    add({'op': 'connect_data', 'source': {'step': base, 'direction': 'output'}, 'target': target})
                if ambiguous:
                    steps.pop()
        _, value, metric = call('bd_inspect', {'query': 'flow_plan', 'steps': steps})
        assert metric['request']['frames'] == metric['connections'] == 0
        return {'request_id': key, 'operations': [{'op': 'connect_path', 'plan_ref': value['plan_ref']}]}

    def inverse(token, key):
        _, receipt, _ = call('bd_revert', {'change_id': token, 'request_id': key})
        assert receipt['status'] == 'reverted', receipt
        result['outstanding'].remove(token)
        save()
        return receipt

    def parent_projection(value):
        return {c: {**data, 'native': {s: data['native'][s] for s in scopes[c]},
                    'public': {s: data['public'][s] for s in scopes[c]}} for c, data in value.items()}

    def verify_hierarchy(key, receipt, current):
        from bd_signal_interfaces import hierarchy_bindings
        c = components[0]
        node, = [d['after'] for d in receipt['steps'][1]['receipt']['differences']
                 if d['before'] is None and d['after']['kind'] == 'node']
        child = 'Main/h' + node['ref'][1:]
        assert set(current[c]['native']) == set(scopes[c]) | {child}
        rows = current[c]['native'][child]['entries']
        assert sum(r['kind'] == 'node' for r in rows) == 3
        assert not any(r['kind'] == 'edge' for r in rows)
        assert Counter((r['input'], r['output']) for r in rows if r['kind'] == 'pin') == Counter({(False, True): 2, (True, False): 1})
        head, _, _ = call('bd_read', {'component': c, 'view': 'interfaces'})
        raw = service.load_record(head['snapshot'], 's_', 'snapshots')
        bindings = hierarchy_bindings(raw['interfaces'])
        paired = [r for r in bindings['bindings'] if r['external'].startswith('Main/' + node['ref'] + '.')]
        assert len(paired) == 3 and all(r['status'] == 'matched_native_identity' for r in paired), paired
        result.setdefault('hierarchy_checks', []).append({'trial': key, 'child': child, 'bindings': paired,
            'child_public_projection': compare(rows, current[c]['public'][child]),
            'local_patch_scope': 'parent differences plus actual child scope effect; declarations not counted as child creations'})
        save()
        by_ref = {r['ref']: r for r in current[c]['native']['Main']['entries']}
        ports = {by_ref[r['external'].rsplit('.', 1)[1]]['name']: r for r in paired}
        assert set(ports) == {'Signal', 'Other', 'Result'}
        return child, ports

    def visual_gate(label):
        if not args.visual_hold:
            return
        from bde_hierarchy_presentation_experiment import visual_gate_verified
        result['phase'] = label
        save()
        path = args.output / (label + '.json')
        print(json.dumps({'phase': label, 'release_file': str(path)}), flush=True)
        deadline = time.monotonic() + args.visual_hold
        while not path.exists() and time.monotonic() < deadline:
            time.sleep(.25)
        result['ui'][label] = json.loads(path.read_text()) if path.exists() else {'status': 'timed_out'}
        save()
        assert visual_gate_verified(result['ui'][label]), 'Visual gate incomplete: ' + label

    def visual_status(label):
        from bd_native_presentation import compile_overlay
        path = args.output / (label + '-status.json')
        domain_path = args.output / (label + '-domain.json')
        domain_path.write_text(json.dumps({**domains[components[0]], 'diagram': 'Main'}))
        empty = args.output / 'empty.json'
        if not empty.exists():
            empty.write_text('[]')
        with service.live_lock():
            metric, raw = bench.run([str(compile_overlay()), components[0], 'group_status', str(empty.resolve()),
                                    str(path.resolve()), str(domain_path.resolve())], path, 30)
        assert not metric['error'] and raw['status'] == 'ok', raw
        return raw['presentation']

    def make_channel(key):
        label = 'EvalChannelBuild_' + key
        templates = [
            (0, {'op': 'create_block', 'kind': 'literal', 'name': '731.25', 'position': [400, 300]}),
            (0, {'op': 'create_block', 'kind': 'send_message', 'name': label, 'model_type': 'cont',
                 'message_scope': 'exported', 'position': [740, 300]}),
            (0, {'op': 'connect_data', 'source': {'step': 0, 'direction': 'output'},
                 'target': {'step': 1, 'direction': 'input', 'name': 'set/aValue'}}),
            (1, {'op': 'create_block', 'kind': 'receive_message', 'name': label, 'model_type': 'cont',
                 'message_scope': 'imported', 'position': [400, 300]}),
            (1, {'op': 'create_block', 'kind': 'variable', 'name': 'EvalChannelValue_' + key,
                 'model_type': 'cont', 'position': [740, 300]}),
            (1, {'op': 'connect_data', 'source': {'step': 3, 'direction': 'output', 'name': 'get/get'},
                 'target': {'step': 4, 'direction': 'input', 'name': 'set/aValue'}})]
        snapshots = [read(c, 'Main')['snapshot'] for c in components[:2]]
        steps = [{'snapshot': snapshots[i], 'operations': [op]} for i, op in templates]
        _, plan, metric = call('bd_inspect', {'query': 'flow_plan', 'steps': steps})
        assert metric['request']['frames'] == metric['connections'] == 0
        return {'request_id': key, 'operations': [{'op': 'connect_path', 'plan_ref': plan['plan_ref']}]}, label

    def verify_channel(key, label, receipt):
        project_path = fixture['project']
        oracle_dir = args.output / (key + '-public-project')
        process = subprocess.run([sys.executable, str(service.ROOT / 'scripts/bde_project_message_experiment.py'),
                                  '--project', project_path, '--messages', 'all', '--output', str(oracle_dir)],
                                 capture_output=True, timeout=180)
        (args.output / (key + '.oracle.log')).write_bytes(process.stdout + process.stderr)
        assert process.returncode == 0, process.stderr.decode(errors='replace')
        oracle = json.loads((oracle_dir / 'probe.json').read_text())
        head, _, _ = call('bd_read', {'component': project_path, 'view': 'project_messages'})
        project = service.load_record(head['snapshot'], 's_', 'snapshots')
        proof = compare_project(project['project_messages'], oracle['public_after'])
        assert proof['passed'] and project['database_session_identity'] == oracle['database_session']
        binding, = project['message_bindings']['bindings']
        assert binding['status'] == 'unique_declaration_candidate' and len(binding['candidates']) == 1
        assert binding['candidates'][0]['owner_oid'] == domains[components[0]]['oid']
        contexts, endpoints = [], []
        instance_rows = entities(project)
        for i, step, direction in ((0, 0, 'output'), (1, 4, 'input')):
            head, _, _ = call('bd_read', {'component': components[i], 'view': 'interfaces'})
            interface = service.load_record(head['snapshot'], 's_', 'snapshots')
            instance = next(ref for ref, row in instance_rows.items()
                            if row['name'] == 'Module' + str(i) and row['fields'].get('interface_kind') == 'project_module_instance')
            actual = receipt['steps'][step]['receipt']['differences']
            node, = [d['after'] for d in actual if d['before'] is None and d['after']['kind'] == 'node']
            _, pins = graph_index(interface['interfaces'])
            pin, = [p for p in pins.values() if p['scope'] == 'Main' and str(p['owner']) == node['ref'][1:] and p[direction]]
            contexts.append({'snapshot': interface['snapshot'], 'instance': instance})
            endpoints.append({'instance': instance, 'ref': pin_ref(pin)})
        _, path, metric = call('bd_inspect', {'query': 'project_signal_path', 'snapshot': project['snapshot'],
                               'components': contexts, 'source': endpoints[0], 'target': endpoints[1]})
        assert metric['request']['frames'] == metric['connections'] == 0
        assert path['status'] == 'observed_declared_static_path'
        assert [s['kind'] for s in path['segments']] == ['diagram_connection', 'message_binding', 'diagram_connection']
        assert path['complete_signal_path'] is False and path['editable'] is False
        result.setdefault('channel_checks', []).append({'trial': key, 'label': label, 'binding': binding,
                                                        'public_projection': proof, 'path': path})
        save()

    try:
        save()
        for c in components:
            read(c, 'Main')
            with service.live_lock(), NativeStructureAdapter(c) as adapter:
                adapter.observe(domains[c], [])
                scopes[c] = list(adapter._exchange({'cmd': 'observe_public_tree'}))
        baseline = observe()
        for trial in range(args.repeats):
            cases = [('fanout', [(components[0], 'Main')], False, False),
                     ('two_module_messages', [(components[0], 'Main'), (components[1], 'Main')], True, False),
                     ('two_nested_scopes', [(components[2], 'Main/h12'), (components[2], 'Main/h12/h5')], False, False),
                     ('nested_component_declarations', [(components[2], 'Main/h12'), (components[2], 'Main/h12/h5')], False, True),
                     ('typed_creations', [(components[0], 'Main')], False, False),
                     ('hierarchy_ports', [(components[0], 'Main')], False, False),
                     ('shape_creations', [(components[0], 'Main')], False, False),
                     ('shared_enum', [(components[0], 'Main')], False, False),
                     ('model_dependencies', [(components[0], 'Main')], False, False)]
            for name, resources, message, declaration in cases:
                if args.cases and name not in args.cases:
                    continue
                key = f'r{trial}_{name}'
                hierarchy = name == 'hierarchy_ports'
                request = make_plan(resources, key, message, declaration=declaration,
                                    typed=name == 'typed_creations', hierarchy=hierarchy, shapes=name == 'shape_creations', shared=name == 'shared_enum',
                                    models=name == 'model_dependencies')
                _, preview, _ = call('bd_edit', {**request, 'preview': True})
                assert preview['status'] == 'preview' and equal(observe(), baseline)
                token = 'flow_' + fingerprint({'session': client.session, 'request_id': key})
                result['outstanding'].append(token)
                save()
                _, receipt, _ = call('bd_edit', request)
                assert receipt['status'] == 'completed', receipt
                current = observe()
                audit(receipt, baseline, current)
                if name == 'shared_enum':
                    effect, = receipt['steps'][0]['receipt']['library_effects']
                    with service.live_lock(), NativeStructureAdapter(components[0]) as adapter:
                        adapter.observe(domains[components[0]], [])
                        enum = adapter._exchange({'cmd': 'observe_enum', 'name': effect['path'].split('\\')[-1]})
                    assert enum['status'] == 'read' and enum['oid'] == effect['oid'] and enum['items'] == ['Off', 'On'], enum
                    _, refused, _ = call('bd_revert', {'change_id': receipt['steps'][0]['receipt']['change_id'],
                                                      'request_id': key + '-single-conflict'}, True)
                    assert refused['status'] == 'conflict' and refused['setter_called'] is False and equal(observe(), current), refused
                    raw = read(components[0], 'Main')
                    _, extra, _ = call('bd_edit', {'snapshot': raw['snapshot'], 'request_id': key + '-extra',
                        'operations': [{'op': 'create_block', 'kind': 'enumeration', 'name': 'EvalExternal_' + key,
                                        'position': [2300, 1600], 'definition': effect['path']}]})
                    assert extra['status'] == 'applied_observed'
                    result['outstanding'].append(extra['change_id']); save()
                    changed = observe()
                    _, refused, _ = call('bd_revert', {'change_id': token, 'request_id': key + '-group-conflict'}, True)
                    assert refused['status'] == 'conflict' and refused['setter_called'] is False and equal(observe(), changed), refused
                    _, extra_inverse, _ = call('bd_revert', {'change_id': extra['change_id'], 'request_id': key + '-extra-undo'})
                    assert extra_inverse['status'] == 'verified_local'
                    result['outstanding'].remove(extra['change_id']); save()
                    assert equal(observe(), current)
                if hierarchy:
                    child, ports = verify_hierarchy(key, receipt, current)
                    child_snapshot, = receipt['steps'][1]['receipt']['scope_after_snapshots']
                    assert child_snapshot['diagram'] == child
                    _, edit, _ = call('bd_edit', {'snapshot': child_snapshot['snapshot'], 'request_id': key + '-child-change',
                        'operations': [{'op': 'connect_data', 'source': child + '/' + ports['Signal']['internal'].rsplit('.', 1)[1],
                                        'target': child + '/' + ports['Result']['internal'].rsplit('.', 1)[1]}]})
                    assert edit['status'] == 'applied_observed'
                    result['outstanding'].append(edit['change_id'])
                    save()
                    changed = observe()
                    interface_head, _, _ = call('bd_read', {'component': components[0], 'view': 'interfaces'})
                    literal, = [d['after'] for d in receipt['steps'][0]['receipt']['differences']
                                if d['before'] is None and d['after']['kind'] == 'node']
                    destination, = [d['after'] for d in receipt['steps'][4]['receipt']['differences']
                                    if d['before'] is None and d['after']['kind'] == 'node']
                    source_ref = 'Main/' + literal['ref'] + '.' + literal['pins'][0]
                    edge, = [d['after'] for d in receipt['steps'][5]['receipt']['differences']
                             if d['before'] is None and d['after']['kind'] == 'edge']
                    target_ref = 'Main/' + destination['ref'] + '.' + edge['target']
                    _, path, path_metric = call('bd_inspect', {'snapshot': interface_head['snapshot'], 'query': 'signal_path',
                                                            'targets': [source_ref, target_ref]})
                    assert path['status'] == 'observed_static_path' and [s['kind'] for s in path['segments']] == [
                        'diagram_connection', 'hierarchy_boundary', 'diagram_connection', 'hierarchy_boundary', 'diagram_connection'], path
                    assert path_metric['request']['frames'] == path_metric['connections'] == 0
                    result.setdefault('hierarchy_paths', []).append({'trial': key, 'path': path})
                    save()
                    _, refused, _ = call('bd_revert', {'change_id': token, 'request_id': key + '-conflict'}, True)
                    assert refused['status'] == 'conflict' and refused['setter_called'] is False and equal(observe(), changed), refused
                    _, child_inverse, _ = call('bd_revert', {'change_id': edit['change_id'], 'request_id': key + '-child-undo'})
                    assert child_inverse['status'] == 'verified_local'
                    result['outstanding'].remove(edit['change_id'])
                    save()
                    assert equal(observe(), current)
                _, replay, metric = call('bd_edit', request)
                assert replay == receipt and metric['request']['frames'] == metric['connections'] == 0
                _, _, metric = call('bd_diff', {'change_id': token})
                assert metric['request']['frames'] == metric['connections'] == 0
                if args.presentation:
                    result['active'].append(token)
                    save()
                    _, shown, _ = call('bd_diff', {'change_id': token, 'presentation': 'show'})
                    assert all(r['result']['native']['status'] == 'ok' for r in shown['resources']), shown
                    assert equal(observe(), current)
                    visual_gate(key + '-shown')
                    if args.visual_hold:
                        status = visual_status(key + '-shown')
                        assert '|error=none' in status and '|undo_stream_unchanged=true' in status and '|scope_active=true' in status
                        visual_gate(key + '-close')
                        assert visual_status(key + '-closed') == 'absent'
                        call('bd_diff', {'change_id': token, 'presentation': 'show'})
                        visual_gate(key + '-reopened')
                        status = visual_status(key + '-reopened')
                        assert '|error=none' in status and '|undo_stream_unchanged=true' in status and '|scope_active=true' in status
                    call('bd_diff', {'change_id': token, 'presentation': 'clear'})
                    if args.visual_hold:
                        assert visual_status(key + '-cleared') == 'absent'
                    visual_gate(key + '-cleared')
                    result['active'].remove(token)
                    save()
                _, preview, _ = call('bd_revert', {'change_id': token, 'request_id': key + '-preview', 'preview': True})
                assert preview['status'] == 'preview' and equal(observe(), current)
                restored = inverse(token, key + '-undo')
                final = observe()
                audit(restored, current, final)
                assert equal(final, baseline)
                if name == 'shared_enum':
                    with service.live_lock(), NativeStructureAdapter(components[0]) as adapter:
                        adapter.observe(domains[components[0]], [])
                        enum = adapter._exchange({'cmd': 'observe_enum', 'name': effect['path'].split('\\')[-1]})
                    assert enum['status'] == 'absent', enum
                result['cases'].append({'case': name, 'trial': trial, 'passed': True, 'change_id': token})
                save()
            if not args.cases or 'cross_module_channel' in args.cases:
                key = f'r{trial}_cross_module_channel'
                request, label = make_channel(key)
                token = 'flow_' + fingerprint({'session': client.session, 'request_id': key})
                result['outstanding'].append(token)
                save()
                _, receipt, _ = call('bd_edit', request)
                assert receipt['status'] == 'completed', receipt
                current = observe()
                audit(receipt, baseline, current)
                verify_channel(key, label, receipt)
                restored = inverse(token, key + '-undo')
                final = observe()
                audit(restored, current, final)
                assert equal(final, baseline)
                result['cases'].append({'case': 'cross_module_channel', 'trial': trial, 'passed': True, 'change_id': token})
                save()
            for name, ambiguous, fault in [('ambiguous_pin', True, False), ('lost_second_creation_reply', False, True),
                                            ('lost_hierarchy_reply', False, True), ('lost_enum_reply', False, True),
                                            ('lost_enum_dependency_reply', False, True), ('lost_group_table_reply', False, True),
                                            ('lost_occurrence_reply', False, True)]:
                if args.cases and name not in args.cases:
                    continue
                key = f'r{trial}_{name}'
                request = make_plan([(components[0], 'Main')], key, ambiguous=ambiguous, hierarchy=name == 'lost_hierarchy_reply',
                                    shared=name.startswith('lost_enum'), models=name in ('lost_group_table_reply', 'lost_occurrence_reply'))
                token = 'flow_' + fingerprint({'session': client.session, 'request_id': key})
                result['outstanding'].append(token)
                LoseSecondReply.mutations = []
                LoseSecondReply.loss_command = 'apply'
                LoseSecondReply.loss_index = {'lost_enum_reply': 1, 'lost_group_table_reply': 4, 'lost_occurrence_reply': 6}.get(name, 2)
                save()
                _, receipt, _ = call('bd_edit', request, True, fault)
                assert receipt['status'] == ('outcome_unknown' if fault else 'partial'), receipt
                if fault:
                    assert len(LoseSecondReply.mutations) == LoseSecondReply.loss_index
                    _, receipt, _ = call('bd_inspect', {'query': 'recovery', 'change_id': token, 'reconcile': True})
                    assert receipt['reconciled'] and receipt['model_setters_called'] == 0 and not receipt['continued_steps']
                    receipt = receipt['receipt']
                assert len(receipt['steps']) == (LoseSecondReply.loss_index if fault else 2)
                current = observe()
                audit(receipt, baseline, current)
                inverse(token, key + '-undo')
                assert equal(observe(), baseline)
                result['cases'].append({'case': name, 'trial': trial, 'passed': True, 'change_id': token})
                save()
            if not args.cases or 'lost_enum_inverse_reply' in args.cases:
                key = f'r{trial}_lost_enum_inverse_reply'
                request = make_plan([(components[0], 'Main')], key, shared=True)
                _, receipt, _ = call('bd_edit', request)
                assert receipt['status'] == 'completed'
                result['outstanding'].append(receipt['change_id']); save()
                current = observe()
                audit(receipt, baseline, current)
                LoseSecondReply.mutations = []
                LoseSecondReply.loss_command, LoseSecondReply.loss_index = 'revert', len(receipt['steps'])
                _, lost, _ = call('bd_revert', {'change_id': receipt['change_id'], 'request_id': key + '-undo'}, True, True)
                assert lost['status'] == 'outcome_unknown' and len(LoseSecondReply.mutations) == len(receipt['steps'])
                _, recovered, _ = call('bd_inspect', {'query': 'recovery', 'change_id': lost['change_id'], 'reconcile': True})
                assert recovered['reconciled'] and recovered['model_setters_called'] == 0 and recovered['receipt']['status'] == 'reverted'
                restored = recovered['receipt']
                assert restored['steps'][-1]['receipt']['library_effects'][0]['after'] is None
                _, replay, metric = call('bd_inspect', {'query': 'recovery', 'change_id': lost['change_id'], 'reconcile': True})
                assert replay['model_setters_called'] == 0 and metric['request']['frames'] == metric['connections'] == 0
                result['outstanding'].remove(receipt['change_id']); save()
                final = observe()
                audit(restored, current, final)
                assert equal(final, baseline)
                result['cases'].append({'case': 'lost_enum_inverse_reply', 'trial': trial, 'passed': True,
                                        'change_id': receipt['change_id'], 'inverse': lost['change_id']}); save()
            if not args.cases or 'lost_hierarchy_inverse_reply' in args.cases:
                key = f'r{trial}_lost_hierarchy_inverse_reply'
                raw = read(components[0], 'Main')
                _, edit, _ = call('bd_edit', {'snapshot': raw['snapshot'], 'request_id': key + '-create',
                    'operations': [{'op': 'create_block', 'kind': 'hierarchy', 'name': 'EvalInverse_' + key,
                                    'position': [1800, 1200], 'inputs': ['Signal'], 'outputs': ['Result']}]})
                assert edit['status'] == 'applied_observed'
                result['outstanding'].append(edit['change_id'])
                save()
                if args.presentation:
                    result['active'].append(edit['change_id']); save()
                    _, shown, _ = call('bd_diff', {'change_id': edit['change_id'], 'presentation': 'show'})
                    assert len(shown['resources']) == 2 and all(not r['result']['is_error'] for r in shown['resources'])
                    call('bd_diff', {'change_id': edit['change_id'], 'presentation': 'clear'})
                    result['active'].remove(edit['change_id']); save()
                LoseSecondReply.mutations = []
                LoseSecondReply.loss_command, LoseSecondReply.loss_index = 'revert', 1
                _, inverse_receipt, _ = call('bd_revert', {'change_id': edit['change_id'], 'request_id': key + '-undo'}, True, True)
                assert inverse_receipt['status'] == 'outcome_unknown' and len(LoseSecondReply.mutations) == 1
                _, recovered, _ = call('bd_inspect', {'query': 'recovery', 'change_id': inverse_receipt['change_id'], 'reconcile': True})
                assert recovered['reconciled'] and recovered['model_setters_called'] == 0
                assert recovered['receipt']['status'] == 'verified_local'
                assert recovered['receipt']['scope_effects'][0]['after'] is None
                _, replay, replay_metric = call('bd_inspect', {'query': 'recovery', 'change_id': inverse_receipt['change_id'], 'reconcile': True})
                assert replay['model_setters_called'] == 0 and replay_metric['request']['frames'] == 0
                result['outstanding'].remove(edit['change_id']); save()
                assert equal(observe(), baseline)
                result['cases'].append({'case': 'lost_hierarchy_inverse_reply', 'trial': trial, 'passed': True,
                                        'change_id': edit['change_id'], 'inverse': inverse_receipt['change_id']})
                save()
        result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        for token in list(reversed(result['active'])):
            try:
                call('bd_diff', {'change_id': token, 'presentation': 'clear'})
                result['active'].remove(token)
            except Exception:
                result['presentation_cleanup_error'] = traceback.format_exc()
                break
        for token in list(reversed(result['outstanding'])):
            try:
                call('bd_inspect', {'query': 'recovery', 'change_id': token, 'reconcile': True}, None)
                inverse(token, 'cleanup-' + token[-16:])
            except Exception:
                result['cleanup_error'] = traceback.format_exc()
                break
        if baseline is not None and not result['outstanding']:
            try:
                result['baseline_restored'] = equal(observe(), baseline)
            except Exception:
                result['final_error'] = traceback.format_exc()
        result['source_changes_during_run'] = [name for name, sha in result['source_manifest'].items()
                                               if service.digest((service.ROOT / name).read_bytes()) != sha]
        result['passed'] = result['passed'] and result['baseline_restored'] and not result['source_changes_during_run']
        if args.visual_hold:
            from bde_hierarchy_presentation_experiment import visual_gate_verified
            result['visual_verified'] = bool(result['ui']) and all(visual_gate_verified(row) for row in result['ui'].values())
            result['passed'] = result['passed'] and result['visual_verified']
        result['phase'] = 'finished'
        save()
    print(json.dumps({key: result[key] for key in ('passed', 'baseline_restored', 'outstanding')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
