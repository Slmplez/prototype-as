"""Isolated ordinary BDE deletion/order eval. Never run against business models."""
import argparse
from contextlib import nullcontext
import json
import os
from pathlib import Path
import time

import bd_service as service
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_structure_journal import StructureJournal
import bde_experiments as bench

SOURCES = ['scripts/AscetStructureRead.cs', 'scripts/AscetStructureSession.cs',
           'scripts/AscetStructureExperiment.cs']
RESOURCES = ['scripts/bde_structure_read.st', 'scripts/bde_structure_edit.st',
             'scripts/bde_order_eval.st', 'scripts/bde_session_guard.st', 'scripts/bde_recovery_release.st', 'scripts/bde_recovery_status.st']
DEPENDENCIES = SOURCES + RESOURCES + ['scripts/bd_native_structure.py', 'scripts/bd_native_literal.py',
    'scripts/bd_edit_journal.py', 'scripts/bd_structure_journal.py', 'scripts/bd_service.py',
    'scripts/bde_experiments.py', 'scripts/bde_order_recovery_experiment.py']


def build():
    service.ensure_probe()
    binary = service.ROOT / 'analysis/live-api/AscetStructureOrderEval.exe'
    compiler = Path(os.environ.get('WINDIR', 'C:/Windows')) / 'Microsoft.NET/Framework/v4.0.30319/csc.exe'
    dll = Path(os.environ.get('ASCET_BD_DLL', 'E:/ETAS/ASCET6.4/cebra/Etas.AscetNET.dll'))
    service.run_process([str(compiler), '/nologo', '/platform:x86', '/define:BDE_ORDER_EVAL',
        '/main:AscetStructureSession', f'/r:{dll}', '/r:System.Web.Extensions.dll', f'/out:{binary}',
        *[f'/resource:{service.ROOT / p},{Path(p).name}' for p in RESOURCES],
        *[str(service.ROOT / p) for p in SOURCES]], 30, build_step=True)
    return binary


class OrderAdapter(NativeStructureAdapter):
    build = staticmethod(build)

    def order(self, action, token):
        return self._exchange({'cmd': 'order_eval', 'action': action, 'token': token})


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--reference', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    raw = json.loads(args.reference.read_text(encoding='utf-8'))
    if (raw['component'].strip('\\') != 'BDE_Tool_Experiments\\Trial_data_20260930_012339'
            or raw['oid'] != '040ts00000001qg714f06gl6l0bgk' or raw.get('status') != 'ok'):
        raise ValueError('Expected fresh read of the recorded isolated ordinary fixture')
    args.output.mkdir(parents=True, exist_ok=False)
    domain = {'session': args.output.name, 'process_epoch': raw['ascet_process_epoch'],
              'database': raw['database'], 'oid': raw['oid']}
    result = {'passed': False, 'scope': 'one ordinary BDE fixture; partial REVERT-01/02, not full gate',
              'domain': domain, 'component': raw['component'], 'trials': [],
              'source_sha256': {p: service.digest((service.ROOT / p).read_bytes()) for p in DEPENDENCIES}}
    journal = StructureJournal(args.output / 'journal')

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')

    save()
    wire = None
    start = None
    try:
        binary = build()
        # Build once outside measured live flow.
        OrderAdapter.build = staticmethod(lambda: binary)
        start = time.perf_counter()
        with service.live_lock(), bench.proxy() as wire:
            with OrderAdapter(raw['component'], environment=dict(os.environ, ASCET_BD_PROBE_PORT=str(wire['port']))) as adapter:
                for op in ('disconnect_data', 'delete_node'):
                    for inject in (False, True):
                        for repeat in range(3):
                            label = f'{op}-{int(inject)}-{repeat}'
                            trial = {'operation': op, 'inject_order_change': inject, 'repeat': repeat, 'passed': False}
                            result['trials'].append(trial)
                            before = adapter.observe(domain, [])
                            edges = [row for row in before['entries'] if row['kind'] == 'edge']
                            if (before['diagram_kind'] != 'block_diagram' or len(edges) != 1
                                    or (edges[0]['source'], edges[0]['target']) != ('p8', 'p3')):
                                raise RuntimeError('Fixture baseline differs; no write started')
                            targets = sorted(row['ref'] for row in before['entries'])
                            before = adapter.observe(domain, targets)
                            trial['before'] = before
                            trial['public_before'] = adapter.observe_public(domain)
                            trial['order_before'] = adapter.order('begin', label)
                            applied = None
                            save()
                            try:
                                target = edges[0]['ref'] if op == 'disconnect_data' else 'n7'
                                applied = journal.execute({'domain': domain, 'request_id': label,
                                    'component': raw['component'], 'diagram': 'Main', 'operation': op,
                                    'arguments': [targets, target], 'expect': fingerprint(before)}, adapter, nullcontext)
                                trial['edit'] = applied
                                save()
                                if applied['status'] != 'applied_observed':
                                    raise RuntimeError('Edit did not complete; inspect journal before any retry')
                                trial['order_after_edit'] = adapter.order('snapshot', label)
                                if inject:
                                    trial['order_injected'] = adapter.order('reverse', label)
                                    public_injected = adapter.observe_public(domain)
                                    rejected = journal.revert(applied['change_id'], label + '-conflict', adapter, nullcontext)
                                    trial['conflict'] = rejected
                                    trial['order_after_conflict'] = adapter.order('snapshot', label)
                                    trial['conflict_public_unchanged'] = adapter.observe_public(domain) == public_injected
                                    save()
                                    if not (rejected['status'] == 'conflict' and rejected.get('setter_called') is False
                                            and trial['order_after_conflict'] == trial['order_injected']
                                            and trial['conflict_public_unchanged']):
                                        raise RuntimeError('Reordered inverse was not a pure conflict')
                            except Exception as error:
                                trial['operation_error'] = repr(error)
                                save()
                                raise
                            finally:
                                # The probe restores only its own exact reversed sequence; it refuses other changes.
                                trial['order_cleanup_observation'] = adapter.order('snapshot', label)
                                if trial['order_cleanup_observation']['injection_pending']:
                                    trial['order_injection_restored'] = adapter.order('restore', label)
                                if applied and applied['status'] in ('applied_observed', 'postcondition_mismatch'):
                                    trial['revert'] = journal.revert(applied['change_id'], label + '-restore', adapter, nullcontext)
                                    trial['native_restored'] = adapter.observe(domain, targets) == before
                                    trial['public_after'] = adapter.observe_public(domain)
                                    trial['public_restored'] = trial['public_after'] == trial['public_before']
                                trial['order_final'] = adapter.order('snapshot', label)
                                save()
                                if trial['order_final']['original_identity_order'] and not trial['order_final']['injection_pending']:
                                    trial['order_finished'] = adapter.order('finish', label)
                            trial['passed'] = (trial.get('native_restored') is True and trial.get('public_restored') is True
                                and trial.get('revert', {}).get('status') == 'verified_local'
                                and trial['order_final']['order'] == trial['order_before']['order']
                                and trial['order_final']['original_identity_order'])
                            save()
                            if not trial['passed']:
                                raise RuntimeError('Restoration mismatch; stopping further writes')
            result['metric'] = {'whole_flow_ms': round((time.perf_counter() - start) * 1000, 3),
                'request_wire': wire['request'].result(), 'response_wire': wire['response'].result(), 'errors': wire['errors']}
        result['passed'] = len(result['trials']) == 12 and all(t['passed'] for t in result['trials'])
    except Exception as error:
        result['error'] = repr(error)
    finally:
        if wire is not None:
            result['metric'] = {'whole_flow_ms': round((time.perf_counter() - start) * 1000, 3),
                'request_wire': wire['request'].result(), 'response_wire': wire['response'].result(), 'errors': wire['errors']}
        save()
    print(json.dumps({'passed': result['passed'], 'trials': len(result['trials']), 'error': result.get('error'),
                      'metric': result.get('metric')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
