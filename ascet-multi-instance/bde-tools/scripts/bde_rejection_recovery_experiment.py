"""Prove rejected BDE edits/previews preserve an earlier patch's inverse."""
import argparse
from contextlib import nullcontext
import json
import os
from pathlib import Path
import time

import bd_service as service
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bd_structure_journal import StructureJournal
import bde_experiments as bench


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--reference', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    raw = json.loads(args.reference.read_text(encoding='utf-8'))
    if raw['component'] != 'BDE_Tool_Experiments\\Trial_data_20260930_012339' or raw['oid'] != '040ts00000001qg714f06gl6l0bgk':
        raise ValueError('Only the recorded isolated ordinary BDE fixture is allowed')
    domain = {'session': args.output.name, 'process_epoch': raw['ascet_process_epoch'],
              'database': raw['database'], 'oid': raw['oid']}
    args.output.mkdir(parents=True, exist_ok=False)
    result = {'passed': False, 'rejections': [], 'source_sha256': service.digest((service.ROOT/'scripts/bde_structure_edit.st').read_bytes())}
    def save():
        (args.output/'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2), encoding='utf-8')
    journal = StructureJournal(args.output/'journal')
    start = time.perf_counter()
    try:
        compile_bridge()
        # Measure the native experiment separately from compiler startup.
        start = time.perf_counter()
        with service.live_lock(), bench.proxy() as wire:
            with NativeStructureAdapter(raw['component'], environment=dict(os.environ, ASCET_BD_PROBE_PORT=str(wire['port']))) as adapter:
                baseline = adapter.observe(domain, [])
                if baseline['diagram_kind'] != 'block_diagram':
                    raise ValueError('Expected ordinary BDE')
                edges = [row for row in baseline['entries'] if row['kind'] == 'edge']
                if len(edges) != 1 or edges[0]['source'] != 'p8' or edges[0]['target'] != 'p3':
                    raise ValueError('Baseline differs; no write started')
                targets = sorted(row['ref'] for row in baseline['entries'])
                before = adapter.observe(domain, targets)
                result['before'] = before
                result['public_before'] = adapter.observe_public(domain)
                operation_args = [targets, edges[0]['ref'], 'p6']
                result['valid_preview_equal'] = adapter.validate(domain, 'rewire_data', operation_args) == before
                if not result['valid_preview_equal']:
                    raise RuntimeError('Valid preview changed observation')
                request = {'domain': domain, 'request_id': 'A-rewire', 'component': raw['component'], 'diagram': 'Main',
                           'operation': 'rewire_data', 'arguments': operation_args, 'expect': fingerprint(before)}
                applied = journal.execute(request, adapter, nullcontext)
                result['edit'] = applied
                save()
                try:
                    if applied['status'] != 'applied_observed':
                        raise RuntimeError('A did not complete; inspect retained journal')
                    after = adapter.observe(domain, targets)
                    result['after_A'] = after
                    public_after = adapter.observe_public(domain)
                    for name, pair, expected_error in [('occupied', ['p8', 'p3'], 'Input occupied'),
                                                        ('direction', ['p3', 'p4'], 'Wrong pin direction')]:
                        arguments = [targets, *pair]
                        case = {'case': name}
                        try:
                            adapter.validate(domain, 'connect_data', arguments)
                        except RuntimeError as error:
                            case['preview_error'] = str(error)
                        else:
                            raise RuntimeError('Invalid native preview unexpectedly succeeded')
                        rejected = journal.execute({**request, 'request_id': 'B-' + name, 'operation': 'connect_data',
                            'arguments': arguments, 'expect': fingerprint(after)}, adapter, nullcontext)
                        case['receipt'] = rejected
                        events = journal.read(rejected['change_id'])
                        case['no_started_event'] = all(event['kind'] != 'started' for event in events)
                        case['native_unchanged'] = adapter.observe(domain, targets) == after
                        case['public_unchanged'] = adapter.observe_public(domain) == public_after
                        case['passed'] = (expected_error in case['preview_error'] and rejected['status'] == 'rejected'
                            and expected_error in rejected.get('error', '') and rejected.get('setter_called') is False
                            and case['no_started_event'] and case['native_unchanged'] and case['public_unchanged'])
                        result['rejections'].append(case)
                        save()
                        if not case['passed']:
                            raise RuntimeError('Rejected request changed the graph or expired the existing inverse')
                    result['repeat_valid_preview_equal'] = adapter.validate(domain, 'rewire_data', operation_args) == after
                finally:
                    if applied['status'] in ('applied_observed', 'postcondition_mismatch'):
                        result['revert'] = journal.revert(applied['change_id'], 'restore-A', adapter, nullcontext)
                        result['native_restored'] = adapter.observe(domain, targets) == before
                        result['public_restored'] = adapter.observe_public(domain) == result['public_before']
                        save()
            result['metric'] = {'wall_ms': round((time.perf_counter()-start)*1000, 3),
                'request_wire': wire['request'].result(), 'response_wire': wire['response'].result(), 'errors': wire['errors']}
        result['passed'] = (len(result['rejections']) == 2 and all(case['passed'] for case in result['rejections'])
            and result.get('repeat_valid_preview_equal') is True and result.get('native_restored') is True
            and result.get('public_restored') is True and result.get('revert', {}).get('status') == 'verified_local')
    except Exception as error:
        result['error'] = repr(error)
    finally:
        save()
    print(json.dumps({'passed': result['passed'], 'error': result.get('error'), 'metric': result.get('metric'),
                      'native_restored': result.get('native_restored'), 'public_restored': result.get('public_restored')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
