"""Compare fixed native graphical checkpoints to independent public API bookends."""
import argparse
import json
import os
from pathlib import Path
import time
import traceback
from unittest.mock import patch

import bd_class_tools as tools
import bd_service as service
from bd_edit_journal import fingerprint
import bde_experiments as bench
from bd_class_native_bindings import compare_bindings, compare_checkpoints, compare_copy_merges, compare_bound_plans
from bd_class_native_clone import compare_graph_clones, compare_graph_splices


def compare_projection(observed, projections):
    owners = {row['oid']: row for row in observed['owners']}
    if type(projections) is not list or len(projections) != len(owners):
        raise ValueError('Complete native projection owner roster required')
    if len({row['oid'] for row in projections}) != len(projections):
        raise ValueError('Duplicate projection owner')
    public = {row['component']: row['public_tree'] for row in observed['observation']['callers']}
    definition = observed['observation']['signature']
    public[definition['path']] = {'Main': observed['observation']['body']}
    counts = {'owners': len(owners), 'scopes': 0, 'nodes': 0, 'pins': 0, 'edges': 0, 'comments': 0}

    def same(left, right):
        if fingerprint(left) != fingerprint(right):
            raise ValueError('Detached graphical field differs from independent collected/public value')

    for projection in projections:
        owner = owners[projection['oid']]
        same(projection['component'], owner['component'])
        scopes = projection['scopes']
        if (type(scopes) is not list or len(scopes) != len(owner['scopes']) or
                {row['diagram'] for row in scopes} != set(owner['scopes'])):
            raise ValueError('Detached projection scope coverage differs')
        for scope in scopes:
            counts['scopes'] += 1
            graph = owner['scopes'][scope['diagram']]
            entries = {row['ref']: row for row in graph['entries']}
            nodes = {row['ref']: row for row in graph['entries'] if row['kind'] == 'node' and row['native_class'] != 'SGCommentGO'}
            same(sorted('n' + str(row['id']) for row in scope['nodes']), sorted(nodes))
            # Native node and connector order is retained. The public tree checks
            # its independent occurrence enumeration and scalar API getters.
            public_scope = public.get(owner['component'], {}).get(scope['diagram'])
            if public_scope is not None:
                same([row['id'] for row in scope['nodes']], [row['id'] for row in public_scope['nodes']])
            public_nodes = {row['id']: row for row in public_scope['nodes']} if public_scope is not None else {}
            for row in scope['nodes']:
                counts['nodes'] += 1
                node = nodes['n' + str(row['id'])]
                for native_key, key in (('class', 'native_class'), ('anchor', 'anchor'), ('position', 'position'), ('size', 'size')):
                    same(row[native_key], node[key])
                public_node = public_nodes.get(row['id'])
                if public_node is not None:
                    same(row['position'], public_node['position'])
                    same(row['size'], public_node['size'])
                    same([pin['id'] for pin in row['pins']], [pin['native']['id'] for pin in public_node['pins']])
                public_pins = {pin['native']['id']: pin for pin in public_node['pins']} if public_node is not None else {}
                same(['p' + str(pin['id']) for pin in row['pins']], node['pins'])
                for key in ('literal', 'control', 'operator', 'hierarchy_name', 'conversion_type'):
                    if key in node:
                        same(row[key], node[key])
                if 'model_ref' in node:
                    tag, value = row['element_alias']
                    same(tag, 'bytes')
                    same('m_' + bytes(value).hex(), node['model_ref'])
                for pin in row['pins']:
                    counts['pins'] += 1
                    recorded = entries['p' + str(pin['id'])]
                    same('n' + str(pin['owner']), recorded['owner'])
                    for key in ('input', 'output'):
                        same(pin[key], recorded[key])
                    if pin['id'] in public_pins:
                        public_pin = public_pins[pin['id']]
                        same(pin['class'], public_pin['native']['native_class'])
                        same(pin['owner'], public_pin['owner'])
                        for key in ('input', 'output'):
                            same(pin[key], public_pin[key])
                    sequence = recorded['sequence']
                    if sequence is None:
                        same(pin['sequence'], None)
                    else:
                        value = pin['sequence']
                        same([value[0], value[1], value[3], value[4], value[5]],
                             [sequence['id'], sequence['number'], sequence['position'], sequence['label'], sequence['size']])
            actual_edges = [{'source': 'p' + str(row['source']), 'target': 'p' + str(row['target']), 'route': row['route']}
                            for row in scope['edges']]
            expected_edges = [{key: row[key] for key in ('source', 'target', 'route')}
                              for row in graph['entries'] if row['kind'] == 'edge']
            same(sorted(actual_edges, key=fingerprint), sorted(expected_edges, key=fingerprint))
            counts['edges'] += len(actual_edges)
            if public_scope is not None:
                public_edges = [{'source': 'p' + str(row['source']['native']['id']),
                    'target': 'p' + str(row['target']['native']['id']), 'route': row['route']}
                    for row in public_scope['edges']]
                same(sorted(actual_edges, key=fingerprint), sorted(public_edges, key=fingerprint))
            comments = [row for row in graph['entries'] if row['kind'] == 'node' and row['native_class'] == 'SGCommentGO']
            same(len(scope['comments']), len(comments))
            if public_scope is not None:
                expected = [{'id': row['native']['id'], 'class': row['native']['native_class'],
                    'text': row['text'], 'position': row['position'], 'size': row['size']} for row in public_scope['comments']]
                same(scope['comments'], expected)
            counts['comments'] += len(comments)
    return counts


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    parser.add_argument('--bindings', action='store_true', help='Also audit exact native occurrence/parent bindings')
    parser.add_argument('--checkpoints', action='store_true', help='Also capture and verify full native collection checkpoints')
    parser.add_argument('--merge-copies', action='store_true', help='Splice private native member copies only; no model writes')
    clone_modes = parser.add_mutually_exclusive_group()
    clone_modes.add_argument('--inspect-clone', action='store_true', help='Read native graph field/class ownership before any private clone')
    clone_modes.add_argument('--clone-graph', action='store_true', help='Clone only a private graph with exact native correspondence; never store or install it')
    clone_modes.add_argument('--splice-clone', action='store_true', help='Delete/restore exact connected pins only in a private clone, preserving an independent field')
    clone_modes.add_argument('--fault-clone', action='store_true', help='Inject primitive completion failures and recover private CURRENT checkpoints; no durable WAL or model writes')
    clone_modes.add_argument('--remote-clone', action='store_true', help='Fixed Cebra private steps with flushed CURRENT/WAL, discarded application receipts and local recovery; no model writes')
    args = parser.parse_args()
    tools.require_sandbox(args.component)
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = (args.output / 'state').resolve()
    for name in ('raw', 'snapshots', 'documents', 'cursors', 'delivery'):
        (service.STORE / name).mkdir(parents=True)
    sources = (*tools.SOURCES, 'bd_class_tools.py', 'bd_service.py', 'bd_class_preview.py',
               'bde_class_detached_projection_experiment.py', 'bd_class_native_bindings.py', 'bd_class_native_clone.py',
               'bd_private_step_journal.py')
    manifest = lambda: {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in sources}
    scope = 'read-only current native graphical projection' + (' and exact occurrence/parent bindings' if args.bindings else '')
    if args.checkpoints:
        scope += ' and complete member order/manager checkpoint checks'
    if args.merge_copies:
        scope += ' and three-way splice execution on private collection copies'
    if args.inspect_clone:
        scope += ' and read-only private graph clone ownership inspection'
    if args.clone_graph:
        scope += ' and allocation/projection/identity verification of a private graph clone'
    if args.splice_clone or args.fault_clone:
        scope += ' and actual private pin/incident-edge deletion/local inverse'
    if args.fault_clone:
        scope += ' and retained in-memory private CURRENT partial-fault recovery'
    if args.remote_clone:
        scope += ' and fixed Cebra private step protocol/durable descriptive CURRENT/WAL'
    result = {'passed': False, 'scope': scope + '; no live model deletion/restoration or production inverse',
        'source_manifest': manifest(), 'rounds': [], 'model_setters_called': 0, 'full_delivery': False,
        'not_verified': ['detached originals after live model deletion', 'unaudited native object/resource families',
            'production local merged native inverse/WAL', 'real creation/inverse', 'original display01 restoration',
            'cross-observation manager token identity', 'additional native parent/member families']}
    log = Path('E:/ETASData/ASCET6.4/crash.log')
    initial_log = log.read_bytes()

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    before = None
    try:
        for index in range(args.repeats):
            row = {'round': index}
            result['rounds'].append(row)
            with patch.dict(os.environ, {'ASCET_BD_CLASS_OBSERVATION_MODE': 'public_oracle'}):
                before = tools.capture(args.component, 'detached-oracle-' + args.output.name)
            input_value = tools.inputs(before)
            input_value['detached_projection_oracle'] = True
            if args.bindings:
                input_value['local_inverse_binding_oracle'] = True
            if args.checkpoints or args.inspect_clone or args.clone_graph or args.splice_clone or args.fault_clone or args.remote_clone:
                input_value['native_binding_checkpoint_oracle'] = True
            if args.merge_copies:
                input_value['native_collection_copy_merge_oracle'] = True
            if args.inspect_clone or args.clone_graph or args.splice_clone or args.fault_clone:
                input_value['native_graph_clone_oracle'] = True
                input_value['native_graph_clone_mode'] = 'faults' if args.fault_clone else 'splice' if args.splice_clone else 'clone' if args.clone_graph else 'inspect'
            if args.remote_clone:
                input_value['native_private_remote_oracle'] = True
            source, output = args.output / f'input-{index}.json', args.output / f'raw-{index}.json'
            tools.write(source, input_value)
            started = time.perf_counter()
            with service.live_lock(), bench.proxy() as wire, patch.dict(os.environ, {
                    'ASCET_BD_CLASS_OBSERVATION_MODE': 'bulk_public_v1', 'ASCET_BD_PROBE_PORT': str(wire['port'])}):
                raw, code = tools.invoke(source, output, 'observe')
            row.update(elapsed_ms=(time.perf_counter() - started) * 1000,
                request_frames=wire['request'].result(), response_frames=wire['response'].result(),
                wire_errors=wire['errors'], raw=str(output.resolve()))
            save()
            if (code or raw.get('status') != 'observed' or raw.get('model_setters_called') != 0 or
                    raw.get('model_mutation_dispatched') is not False or raw.get('outstanding') is not False or
                    raw.get('dirty_before') != 0 or raw.get('dirty_after') != 0):
                raise ValueError('Native projection observation failed; no model mutation authorized')
            current = tools.observation(raw, 'observed')
            if fingerprint(current) != fingerprint(before['class_interface']):
                raise ValueError('Native observation differs from complete independent public baseline')
            row['coverage'] = compare_projection(before['class_interface'], raw['detached_projection_observed'])
            if args.bindings:
                row['native_bindings'] = compare_bindings(before['class_interface'], raw['local_inverse_bindings_observed'])
            if args.checkpoints or args.inspect_clone or args.clone_graph or args.splice_clone or args.fault_clone or args.remote_clone:
                row['native_checkpoints'] = compare_checkpoints(before['class_interface'], raw['native_binding_checkpoints_observed'])
            if args.merge_copies:
                row['native_copy_merges'] = compare_copy_merges(before['class_interface'], raw['native_collection_copy_merges_observed'])
                row['native_bound_plans'] = compare_bound_plans(before['class_interface'], raw['native_collection_copy_merges_observed'])
            if args.inspect_clone or args.clone_graph:
                row['native_graph_clone'] = compare_graph_clones(before['class_interface'],
                    raw['native_graph_clone_observed'], raw['native_binding_checkpoints_observed'],
                    'clone' if args.clone_graph else 'inspect')
            if args.splice_clone or args.fault_clone:
                row['native_graph_splices'] = compare_graph_splices(before['class_interface'],
                    raw['native_graph_clone_observed'], raw['native_binding_checkpoints_observed'],
                    raw['detached_projection_observed'])
            if args.remote_clone:
                from bd_private_step_journal import compare_remote_studies
                row['native_remote_steps'] = compare_remote_studies(before['class_interface'], raw['native_private_remote_observed'],
                    raw['detached_projection_observed'], {'database': before['database'],
                        'database_session': before['database_session'], 'process_epoch': before['ascet_process_epoch']})
            with patch.dict(os.environ, {'ASCET_BD_CLASS_OBSERVATION_MODE': 'public_oracle'}):
                after = tools.capture(args.component, before['session'])
            if (fingerprint(before['class_interface']) != fingerprint(after['class_interface']) or
                    any(before[key] != raw[key] or raw[key] != after[key]
                        for key in ('database_session', 'ascet_process_epoch')) or (service.STORE / 'class-edits').exists()):
                raise ValueError('Public bookends/domain differ or an edit record was allocated')
            row.update(passed=True, independent_public_bookends_unchanged=True,
                       edit_records_allocated=False, native_recovery_allocated=False)
            save()
            print(json.dumps({'round': index, 'passed': True, 'coverage': row['coverage']}), flush=True)
        result['passed'] = all(row.get('passed') for row in result['rounds'])
    except Exception:
        result['error'] = traceback.format_exc()
        if before is not None:
            try:
                with patch.dict(os.environ, {'ASCET_BD_CLASS_OBSERVATION_MODE': 'public_oracle'}):
                    final = tools.capture(args.component, before['session'])
                result['failure_public_bookend'] = {
                    'unchanged': fingerprint(before['class_interface']) == fingerprint(final['class_interface']),
                    'same_domain': all(before[key] == final[key] for key in ('database_session', 'ascet_process_epoch')),
                    'edit_records_allocated': (service.STORE / 'class-edits').exists()}
            except Exception:
                result['failure_public_bookend_error'] = traceback.format_exc()
    current_log = log.read_bytes()
    result['crash_log_append_only'] = current_log.startswith(initial_log)
    appended = current_log[len(initial_log):] if result['crash_log_append_only'] else current_log
    (args.output / 'crash-log-appended.txt').write_bytes(appended)
    result['new_assertion_count'] = appended.count(b'Dumping walkback to file:')
    result['source_drift'] = [name for name, digest in manifest().items() if digest != result['source_manifest'][name]]
    result['passed'] = result['passed'] and result['crash_log_append_only'] and not result['new_assertion_count'] and not result['source_drift']
    save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'new_assertion_count', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
