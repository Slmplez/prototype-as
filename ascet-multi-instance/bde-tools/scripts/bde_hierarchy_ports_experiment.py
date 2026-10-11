"""Actual Doge hierarchy interface edits; both scopes checked against public APIs."""
import argparse
from collections import Counter
from contextlib import contextmanager
import json
import os
from pathlib import Path
import time
import traceback
from unittest.mock import patch

import bd_service as service
import bd_structural_tools
import bde_experiments as bench
from bd_edit_journal import clone
from bd_native_structure import NativeStructureAdapter
from bde_public_oracle import compare, encoded, public_projection
from bde_tool_client import ToolClient


class LoseReply(NativeStructureAdapter):
    command = 'apply'
    mutations = []

    def _exchange(self, request):
        value = super()._exchange(request)
        if request['cmd'] in ('apply', 'revert'):
            self.mutations.append({'cmd': request['cmd'], 'token': request['token']})
            if request['cmd'] == self.command:
                raise ConnectionError('EVAL: hierarchy port real native reply discarded')
        return value


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    parser.add_argument('--cases', nargs='+', choices=('create_input', 'create_output', 'delete_input', 'delete_output',
        'child_conflict', 'lost_apply_reply', 'lost_inverse_reply'), default=['create_input', 'create_output',
        'delete_input', 'delete_output', 'child_conflict', 'lost_apply_reply', 'lost_inverse_reply'])
    args = parser.parse_args()
    assert args.component == 'BDE_Tool_Experiments\\Trial_Hierarchy_20261001_100722_242e00'
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.output / 'store'
    result = {'passed': False, 'business_writes': False, 'calls': [], 'metrics': [], 'cases': [],
              'observations': [], 'outstanding': [], 'baseline_restored': False,
              'not_verified': ['Class interfaces', 'new child scope plans', 'screenshots/lifecycle', 'reload', 'runtime delivery'],
              'fault': 'controlled adapter exception after real native completion; no setter retry'}
    sources = [p for p in (service.ROOT / 'scripts').glob('*') if p.suffix in ('.py', '.st', '.cs', '.json')
               and p.name.startswith(('bd', 'AscetStructure', 'AscetBde'))]
    sources += list((service.ROOT / 'Doge/src/tools/BlockDiagramTool').glob('*.ts'))
    result['source_manifest'] = {str(p.relative_to(service.ROOT)): service.digest(p.read_bytes()) for p in sources}
    domain, initial = None, None
    scopes = ['Main', 'Main/h12', 'Main/h12/h5']

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def record(row):
        result['calls'].append(row)
        save()

    client = ToolClient(args.output, 'ports-' + args.output.name, record)

    def call_once(tool, values, direct=False):
        started = time.perf_counter()
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            if direct:
                from bd_group_recovery import document
                with patch.dict(os.environ, client.env), patch.object(bd_structural_tools, 'NativeStructureAdapter', LoseReply):
                    response = service.handle(tool, values, client.session)
                text = document(response, client.session)
                head, failed = {}, response['is_error']
                record({'tool': tool, 'args': values, 'response': response, 'invocation': 'backend fault injection'})
            else:
                head, text, failed = client.call(tool, values)
        metric = {'tool': tool, 'elapsed_ms': (time.perf_counter() - started) * 1000,
                  'request': wire['request'].result(), 'response': wire['response'].result(), 'errors': wire['errors']}
        result['metrics'].append(metric)
        save()
        body = text if tool == 'bd_read' or not isinstance(text, str) else json.loads(text)
        assert not wire['errors'], body
        return head, body, metric, failed

    def call(tool, values, error=False, direct=False):
        start = time.monotonic()
        while True:
            head, body, metric, failed = call_once(tool, values, direct)
            if (failed and isinstance(body, dict) and body.get('code') == 'ASCET_BUSY'
                    and 'change_id' not in body and time.monotonic() - start < 30):
                result.setdefault('busy_waits', []).append({'tool': tool, 'seconds': 2, 'no_dispatch': True})
                save()
                time.sleep(2)
                continue
            assert error is None or failed == error, body
            return head, body, metric

    @contextmanager
    def live_slot():
        start = time.monotonic()
        while True:
            entered = False
            try:
                with service.live_lock():
                    entered = True
                    yield
                return
            except service.ToolError as error:
                if entered or error.code != 'ASCET_BUSY' or time.monotonic() - start >= 30:
                    raise
                result.setdefault('busy_waits', []).append({'tool': 'independent_read', 'seconds': 2, 'no_dispatch': True})
                save()
                time.sleep(2)

    def read(scope):
        head, _, _ = call('bd_read', {'component': args.component, 'view': 'structure', 'scope': {'diagram': scope}})
        return service.load_record(head['snapshot'], 's_', 'snapshots')

    def observe():
        with live_slot():
            native = {}
            for scope in scopes:
                with NativeStructureAdapter(args.component, scope) as adapter:
                    native[scope] = adapter.observe(domain, [])
            with NativeStructureAdapter(args.component) as adapter:
                adapter.observe(domain, [])
                public = adapter._exchange({'cmd': 'observe_public_tree'})
                models = adapter.observe_models(domain)
        assert set(public) == set(native)
        for scope in scopes:
            proof = compare(native[scope]['entries'], public[scope])
            assert proof['passed'], proof
        value = {'native': native, 'public': public, 'models': models}
        result['observations'].append(value)
        save()
        return value

    def equal(left, right):
        return (left['native'] == right['native'] and all(public_projection(left['public'][s]) ==
            public_projection(right['public'][s]) for s in scopes)
            and Counter(map(encoded, left['models'])) == Counter(map(encoded, right['models'])))

    def audit(receipt, before, after):
        from bd_structure_journal import differences
        scope = receipt['diagram']
        assert receipt['differences'] == differences(before['native'][scope], after['native'][scope])
        changed_scopes = {scope}
        for effect in receipt['scope_effects']:
            child = effect['diagram']
            changed_scopes.add(child)
            assert effect['before'] == before['native'][child] and effect['after'] == after['native'][child]
        assert all(before['native'][s] == after['native'][s] for s in scopes if s not in changed_scopes)
        assert before['models'] == after['models']
        _, patch_data, metric = call('bd_diff', {'change_id': receipt['change_id']})
        assert [{k: v for k, v in d.items() if k != 'qualified_ref'} for d in patch_data['differences']] == receipt['differences']
        assert patch_data['scope_effects'] == receipt['scope_effects']
        assert metric['request']['frames'] == 0

    def track(receipt):
        if receipt.get('status') in ('applied_observed', 'postcondition_mismatch', 'outcome_unknown'):
            result['outstanding'].append(receipt['change_id'])
            save()

    def edit(snapshot, op, tag, direct=False):
        _, receipt, _ = call('bd_edit', {'snapshot': snapshot['snapshot'], 'request_id': tag, 'operations': [op]}, None, direct)
        track(receipt)
        assert receipt['status'] == ('outcome_unknown' if direct else 'applied_observed'), receipt
        return receipt

    def undo(change, tag, direct=False):
        _, receipt, _ = call('bd_revert', {'change_id': change, 'request_id': tag}, None, direct)
        assert receipt['status'] == ('outcome_unknown' if direct else 'verified_local'), receipt
        if not direct:
            result['outstanding'].remove(change)
            save()
        return receipt

    def reconcile(change):
        _, reply, _ = call('bd_inspect', {'query': 'recovery', 'change_id': change, 'reconcile': True})
        receipt = reply.get('receipt')
        assert receipt and receipt['status'] in ('applied_observed', 'verified_local'), reply
        return receipt

    try:
        first = read('Main')
        domain = {'session': client.session, 'database': first['database'], 'oid': first['oid'],
                  'process_epoch': first['ascet_process_epoch']}
        initial = observe()
        for repeat in range(args.repeats):
            for scope, hierarchy in (('Main', 'n12'), ('Main/h12', 'n5')):
                for case in args.cases:
                    tag = f'{repeat}-{scope.replace("/", "_")}-{case}'
                    snapshot = read(scope)
                    before = observe()
                    rows = {r['ref']: r for r in snapshot['structure']['entries']}
                    if case.startswith('delete_'):
                        direction = case.split('_')[1]
                        pin = next(p for p in rows[hierarchy]['pins'] if rows[p][direction])
                        op = {'op': 'delete_hierarchy_port', 'target': scope + '/' + pin}
                    else:
                        op = {'op': 'create_hierarchy_port', 'target': scope + '/' + hierarchy,
                              'direction': 'output' if case == 'create_output' else 'input', 'name': 'EvalPort_' + str(repeat)}
                    _, preview, _ = call('bd_edit', {'snapshot': snapshot['snapshot'], 'request_id': tag + '-preview',
                        'operations': [op], 'preview': True})
                    assert preview['status'] == 'preview', preview
                    assert equal(before, observe())
                    LoseReply.command = 'apply'
                    LoseReply.mutations = []
                    receipt = edit(snapshot, op, tag, case == 'lost_apply_reply')
                    if case == 'lost_apply_reply':
                        receipt = reconcile(receipt['change_id'])
                        assert len(LoseReply.mutations) == 1
                    after = observe()
                    audit(receipt, before, after)
                    if case == 'child_conflict':
                        child_snapshot = service.load_record(receipt['scope_after_snapshots'][0]['snapshot'], 's_', 'snapshots')
                        child_change = edit(child_snapshot, {'op': 'create_block', 'kind': 'comment', 'name': 'Unrelated child edit',
                            'position': [1400, 1000]}, tag + '-child')
                        changed = observe()
                        _, refused, _ = call('bd_revert', {'change_id': receipt['change_id'], 'request_id': tag + '-conflict'}, None)
                        assert refused['status'] == 'conflict', refused
                        assert equal(changed, observe())
                        undo(child_change['change_id'], tag + '-child-inverse')
                    LoseReply.command = 'revert'
                    LoseReply.mutations = []
                    inverse = undo(receipt['change_id'], tag + '-inverse', case == 'lost_inverse_reply')
                    if case == 'lost_inverse_reply':
                        inverse = reconcile(inverse['change_id'])
                        assert len(LoseReply.mutations) == 1
                        result['outstanding'].remove(receipt['change_id'])
                    restored = observe()
                    audit(inverse, after, restored)
                    assert equal(before, restored) and equal(initial, restored)
                    result['cases'].append({'repeat': repeat, 'scope': scope, 'case': case, 'passed': True,
                        'change_id': receipt['change_id'], 'inverse': inverse['change_id'], 'baseline_restored': True})
                    save()
        result['passed'] = True
    except Exception as error:
        result['error'] = repr(error)
        result['traceback'] = traceback.format_exc()
    finally:
        try:
            for token in list(reversed(result['outstanding'])):
                # Unknown records require explicit reconciliation before an inverse.
                from bd_structure_journal import StructureJournal
                status = StructureJournal(service.STORE / 'edits').diff(token).get('status')
                if status == 'outcome_unknown':
                    reconcile(token)
                undo(token, 'cleanup-' + token)
            if initial is not None:
                result['baseline_restored'] = equal(initial, observe())
        except Exception as error:
            result['cleanup_error'] = repr(error)
            result['cleanup_traceback'] = traceback.format_exc()
        result['source_changes_during_run'] = [name for name, sha in result['source_manifest'].items()
                                               if service.digest((service.ROOT / name).read_bytes()) != sha]
        result['passed'] = result['passed'] and result['baseline_restored'] and not result['outstanding'] and not result['source_changes_during_run']
        save()
    print(json.dumps({k: result.get(k) for k in ('passed', 'baseline_restored', 'outstanding', 'error', 'cleanup_error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
