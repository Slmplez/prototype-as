"""One creation, actual patch and exact inverse on a specified isolated BDE."""
import argparse
from contextlib import nullcontext
import json
import os
from pathlib import Path
import time
import hashlib
import bd_service as service
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bd_structure_journal import StructureJournal, validate_creation
import bde_experiments as bench
from bde_public_oracle import compare


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--reference', type=Path, required=True)
    parser.add_argument('--operation', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    raw = json.loads(args.reference.read_text(encoding='utf-8'))
    op = json.loads(args.operation.read_text(encoding='utf-8'))
    arguments = validate_creation(op)
    if not raw['component'].strip('\\').startswith('BDE_Tool_Experiments\\Trial_'):
        raise ValueError('Isolated Trial component required')
    args.output.mkdir(parents=True, exist_ok=False)
    domain = {'session': str(args.output.resolve()), 'process_epoch': raw['ascet_process_epoch'], 'database': raw['database'], 'oid': raw['oid']}
    result = {'passed': False, 'domain': domain, 'component': raw['component'], 'operation': op}
    result['source_manifest'] = {p.name: hashlib.sha256(p.read_bytes()).hexdigest()
        for p in Path(__file__).parent.iterdir() if p.name in (
            'bde_structure_read.st', 'bde_structure_edit.st', 'bde_session_guard.st', 'bde_recovery_status.st', 'bde_recovery_release.st',
            'AscetStructureSession.cs', 'AscetStructureRead.cs', 'AscetStructureExperiment.cs',
            'bd_native_structure.py', 'bd_native_literal.py', 'bd_structure_journal.py',
            'bd_edit_journal.py', 'bde_creation_experiment.py', 'bde_public_oracle.py', 'bd_instance_pending.py')}
    result['stages'] = {}
    log = StructureJournal(args.output / 'journal')
    def save():
        (args.output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
    save()
    wire = None
    def timed(name, call):
        started = time.perf_counter()
        try:
            return call()
        finally:
            result['stages'][name] = {'elapsed_ms': (time.perf_counter()-started)*1000}
    try:
        compile_bridge()
        start = time.perf_counter()
        with service.live_lock(), bench.proxy() as wire:
            with NativeStructureAdapter(raw['component'], environment=dict(os.environ, ASCET_BD_PROBE_PORT=str(wire['port']))) as adapter:
                before = timed('open_and_observe', lambda: adapter.observe(domain, []))
                result['before'] = before
                result['public_before'] = adapter.observe_public(domain)
                result['models_before'] = adapter.observe_models(domain)
                result['oracle_before'] = compare(before['entries'], result['public_before'])
                if not result['oracle_before']['passed']:
                    raise RuntimeError('Initial native/public projection mismatch; no write')
                result['preview'] = adapter.validate(domain, 'create_block', arguments)
                if result['preview'] != before:
                    raise RuntimeError('Preview altered observation')
                save()
                request = {'domain': domain, 'request_id': 'create', 'component': raw['component'], 'diagram': 'Main',
                           'operation': 'create_block', 'arguments': arguments, 'expect': fingerprint(before)}
                result['edit'] = timed('edit', lambda: log.execute(request, adapter, nullcontext))
                save()
                try:
                    if result['edit']['status'] != 'applied_observed':
                        raise RuntimeError('Create failed or mismatched; retain recovery material')
                    result['after'] = adapter.observe(domain, [])
                    result['public_after'] = adapter.observe_public(domain)
                    result['models_after'] = adapter.observe_models(domain)
                    if op['kind'] in ('enumeration', 'component'):
                        declared = [r for r in result['after']['entries'] if r['kind'] == 'model' and r['name'] == op['name']]
                        public = [r for r in result['models_after'] if r['name'] == op['name']]
                        result['definition_verified'] = (len(declared) == len(public) == 1
                            and declared[0]['definition']['oid'] == public[0]['definition_oid']
                            and declared[0]['definition']['path'].strip('\\') == public[0]['definition_path'].strip('\\') == op['definition'].strip('\\'))
                        if not result['definition_verified']:
                            raise RuntimeError('Native/public referenced definition mismatch')
                    result['oracle_after'] = compare(result['after']['entries'], result['public_after'])
                    if not result['oracle_after']['passed']:
                        raise RuntimeError('Created native/public projection mismatch')
                    result['replay_identical'] = log.execute(request, adapter, nullcontext) == result['edit']
                    result['offline_diff'] = log.diff(result['edit']['change_id'])
                    save()
                except Exception as error:
                    result['primary_error'] = repr(error)
                    save()
                    raise
                finally:
                    if result['edit']['status'] in ('applied_observed', 'postcondition_mismatch'):
                        result['revert'] = timed('revert', lambda: log.revert(result['edit']['change_id'], 'restore', adapter, nullcontext))
                        result['native_restored'] = adapter.observe(domain, []) == before
                        result['public_restored'] = adapter.observe_public(domain) == result['public_before']
                        result['models_final'] = adapter.observe_models(domain)
                        result['model_iteration_order_restored'] = result['models_final'] == result['models_before']
                        # getAllVariables -> allDirectElements -> primitiveVariables/complexVariables.values.
                        # Dictionary iteration order is not graphical children or execution sequence.
                        # Keep raw order above, compare complete declaration rows without dropping duplicates.
                        result['models_restored'] = sorted(result['models_final'], key=lambda r: r['name']) == sorted(result['models_before'], key=lambda r: r['name'])
                        save()
        result['passed'] = (result.get('replay_identical') is True and result.get('native_restored') is True
            and result.get('public_restored') is True and result.get('models_restored') is True
            and result.get('revert', {}).get('status') == 'verified_local')
    except Exception as error:
        result['error'] = repr(error)
    finally:
        if wire is not None:
            result['metric'] = {'whole_flow_ms': (time.perf_counter()-start)*1000,
                'request_wire': wire['request'].result(), 'response_wire': wire['response'].result(), 'errors': wire['errors']}
        save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','native_restored','public_restored','models_restored','metric')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
