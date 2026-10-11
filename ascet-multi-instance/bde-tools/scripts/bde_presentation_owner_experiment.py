"""Real Doge old-diff clear rejection, with native status and full public audits."""
import argparse
from collections import Counter
import json
from pathlib import Path
import time
import traceback

import bd_service as service
import bde_experiments as bench
from bd_edit_journal import fingerprint
from bd_native_presentation import compile_overlay
from bd_native_structure import NativeStructureAdapter
from bde_public_oracle import compare, encoded, public_projection
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--scope', default='Main')
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    args = parser.parse_args()
    assert args.component.startswith('BDE_Tool_Experiments\\Trial_')
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.output / 'store'
    result = {'passed': False, 'cases': [], 'calls': [], 'metrics': [], 'observations': [],
              'outstanding': [], 'active': [], 'baseline_restored': False,
              'business_writes': False, 'visual_verified': False,
              'not_verified': ['screenshots, zoom, scroll, close/reopen', 'all UI transient state']}
    files = [p for p in (service.ROOT / 'scripts').glob('*')
             if p.suffix in ('.py', '.cs', '.st', '.json')
             and p.name.startswith(('bd', 'AscetStructure', 'AscetBde'))]
    files += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result['source_manifest'] = {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in files}
    baseline = domain = None

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(row):
        result['calls'].append(row)
        save()

    client = ToolClient(args.output, 'presentation-owner-' + args.output.name, record)
    client.env['ASCET_BD_NATIVE_PRESENTATION'] = '1'

    def call(tool, values, error=False):
        start = time.perf_counter()
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            head, body, failed = client.call(tool, values)
        result['metrics'].append({'tool': tool, 'elapsed_ms': (time.perf_counter() - start) * 1000,
                                  'request': wire['request'].result(), 'response': wire['response'].result(),
                                  'connections': wire['connections'], 'errors': wire['errors']})
        save()
        assert failed == error and not wire['errors'], body
        return head, body if tool == 'bd_read' else json.loads(body)

    def read():
        nonlocal domain
        head, _ = call('bd_read', {'component': args.component, 'view': 'structure',
                                 'scope': {'diagram': args.scope}})
        raw = service.load_record(head['snapshot'], 's_', 'snapshots')
        domain = {'session': client.session, 'database': raw['database'], 'oid': raw['oid'],
                  'process_epoch': raw['ascet_process_epoch']}
        return raw

    def observe():
        with service.live_lock(), NativeStructureAdapter(args.component, args.scope) as adapter:
            native = adapter.observe(domain, [])
            public = adapter._exchange({'cmd': 'observe_public_tree'})
            models = adapter.observe_models(domain)
        proof = compare(native['entries'], public[args.scope])
        assert proof['passed'], proof
        value = {'native': native, 'public': public, 'models': models}
        result['observations'].append(value)
        save()
        return value

    def equal(a, b):
        return (a['native'] == b['native'] and set(a['public']) == set(b['public'])
                and all(public_projection(a['public'][s]) == public_projection(b['public'][s]) for s in a['public'])
                and Counter(map(encoded, a['models'])) == Counter(map(encoded, b['models'])))

    def edit(op, key):
        raw = read()
        token = 'edit_' + fingerprint({'domain': domain, 'request_id': key})
        result['outstanding'].append(token)
        save()
        _, value = call('bd_edit', {'snapshot': raw['snapshot'], 'request_id': key, 'operations': [op]})
        assert value['status'] == 'applied_observed' and value['change_id'] == token, value
        return token

    def connect(key):
        raw = read()
        rows = raw['structure']['entries']
        source = next(r for r in rows if r.get('literal') == '731.25')
        operator = next(r for r in rows if r.get('operator') == '+')
        output = next(r['ref'] for r in rows if r['ref'] in source['pins'] and r['output'])
        inputs = sorted(r['ref'] for r in rows if r['ref'] in operator['pins'] and r['input'])
        assert len(inputs) == 2
        _, plan = call('bd_inspect', {'query': 'flow_plan', 'segments': [
            {'snapshot': raw['snapshot'], 'source': args.scope + '/' + output,
             'target': args.scope + '/' + pin} for pin in inputs]})
        token = 'flow_' + fingerprint({'session': client.session, 'request_id': key})
        result['outstanding'].append(token)
        save()
        _, value = call('bd_edit', {'request_id': key, 'operations': [{'op': 'connect_path', 'plan_ref': plan['plan_ref']}]})
        assert value['status'] == 'completed' and value['change_id'] == token, value
        return token

    def revert(token, key):
        _, value = call('bd_revert', {'change_id': token, 'request_id': key})
        assert value['status'] == ('reverted' if token.startswith('flow_') else 'verified_local'), value
        result['outstanding'].remove(token)
        save()

    def display(token, mode, error=False):
        if mode == 'show':
            result['active'].append(token)
            save()
        _, value = call('bd_diff', {'change_id': token, 'presentation': mode}, error)
        if not error:
            if token.startswith('flow_'):
                assert all(r['result'].get('native', {}).get('status') == 'ok' for r in value['resources']), value
            else:
                assert value['native']['status'] == 'ok', value
        if mode == 'clear' and not error and token in result['active']:
            result['active'].remove(token)
            save()
        return value

    def status(token):
        run = args.output / ('status-' + str(len(result['metrics'])))
        run.mkdir()
        service.write_once(run / 'commands.json', [])
        service.write_once(run / 'domain.json', {**domain, 'diagram': args.scope, 'presentation_token': token})
        with service.live_lock():
            service.run_process([str(compile_overlay()), args.component,
                                'group_status' if token.startswith('flow_') else 'status',
                                str(run / 'commands.json'), str(run / 'native.json'), str(run / 'domain.json')], 25)
        value = json.loads((run / 'native.json').read_text())
        assert value['status'] == 'ok', value
        return value

    try:
        save()
        read()
        baseline = observe()
        for trial in range(args.repeats):
            # The original local journal remains available after inverse restoration.
            old = edit({'op': 'create_block', 'kind': 'literal', 'name': '952.5',
                        'position': [1560, 1080]}, f'r{trial}-single-old')
            display(old, 'show')
            display(old, 'clear')
            revert(old, f'r{trial}-single-old-undo')
            assert equal(observe(), baseline)
            new = edit({'op': 'create_block', 'kind': 'literal', 'name': '953.5',
                        'position': [1680, 1180]}, f'r{trial}-single-new')
            display(new, 'show')
            current = observe()
            rejected = display(old, 'clear', True)
            assert 'PRESENTATION_OWNER_MISMATCH' in json.dumps(rejected), rejected
            active = status(new)
            assert '|token=' + new in active['presentation'] and '|undo_stream_unchanged=true' in active['presentation']
            assert equal(observe(), current)
            display(new, 'clear')
            revert(new, f'r{trial}-single-new-undo')
            assert equal(observe(), baseline)
            result['cases'].append({'trial': trial, 'kind': 'single', 'passed': True,
                                    'old_clear': rejected, 'active_status': active})
            save()

            literal = edit({'op': 'create_block', 'kind': 'literal', 'name': '731.25',
                            'position': [1560, 1080]}, f'r{trial}-seed-literal')
            operator = edit({'op': 'create_block', 'kind': 'operator', 'name': '+', 'arity': 2,
                             'position': [1900, 1080]}, f'r{trial}-seed-operator')
            seeded = observe()
            old = connect(f'r{trial}-group-old')
            display(old, 'show')
            display(old, 'clear')
            revert(old, f'r{trial}-group-old-undo')
            assert equal(observe(), seeded)
            new = connect(f'r{trial}-group-new')
            display(new, 'show')
            current = observe()
            _, rejected = call('bd_diff', {'change_id': old, 'presentation': 'clear'}, True)
            assert all(r['result']['is_error'] for r in rejected['resources']), rejected
            assert 'PRESENTATION_OWNER_MISMATCH' in json.dumps(rejected), rejected
            active = status(new)
            assert '|token=' + new in active['presentation'] and '|undo_stream_unchanged=true' in active['presentation']
            assert equal(observe(), current)
            display(new, 'clear')
            revert(new, f'r{trial}-group-new-undo')
            revert(operator, f'r{trial}-seed-operator-undo')
            revert(literal, f'r{trial}-seed-literal-undo')
            assert equal(observe(), baseline)
            result['cases'].append({'trial': trial, 'kind': 'group', 'passed': True,
                                    'old_clear': rejected, 'active_status': active})
            save()
        result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        for token in list(reversed(result['active'])):
            try:
                display(token, 'clear')
            except Exception:
                result['presentation_cleanup_error'] = traceback.format_exc()
                break
        for token in list(reversed(result['outstanding'])):
            try:
                revert(token, 'cleanup-' + token[-16:])
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
        save()
    print(json.dumps({key: result[key] for key in ('passed', 'baseline_restored', 'outstanding')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
