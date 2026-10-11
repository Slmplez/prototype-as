"""Zero-setter isolated five-block validation and persisted-source classification."""
import argparse
import json
import os
from pathlib import Path
import traceback
from unittest.mock import patch

import bd_service as service
from bd_edit_journal import fingerprint
from bd_instance_pending import check as check_pending
from bd_native_structure import NativeStructureAdapter
from bd_source_inverse_oracle import decode_graph, equal
from bde_acceptance import source_manifest
from bde_isolated_runtime import live_manifest
import bde_experiments as bench
from bde_main_workflow import build_oracle, save_new, wire_result
from bd_structure_journal import StructureJournal


class ErrorCapture(list):
    def __init__(self, path):
        super().__init__()
        self.path = path

    def append(self, line):
        with self.path.open('a', encoding='utf-8') as stream:
            stream.write(line)
            stream.flush()
        super().append(line)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--manifest', type=Path, required=True)
    parser.add_argument('--original', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--validate', action='store_true')
    parser.add_argument('--compile-execution', action='store_true',
        help='Compile/bind fixed guard/apply/terminal modules without dispatching model operations')
    args = parser.parse_args()
    original, output = args.original.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if not original.is_relative_to(owned) or not output.is_relative_to(owned) or output.exists():
        raise ValueError('Exact owned source evidence and fresh output required')
    previous = json.loads((original / 'result.json').read_text(encoding='utf-8'))
    manifest, _, epoch = live_manifest(args.manifest)
    if manifest['database'] != previous['domain']['database']:
        raise ValueError('Same manifested isolated database required')
    domain = {**previous['domain'], 'session': output.name, 'process_epoch': epoch}
    check_pending(domain)
    output.mkdir(parents=True)
    result = {'passed': False, 'manifest': str(args.manifest.resolve()), 'domain': domain,
        'component': previous['component'], 'source_manifest': source_manifest(),
        'model_setters_called': 0, 'store_called': False, 'complete_case_pass': False,
        'executor_profile': os.environ.get('ASCET_BD_OPERATION_EXECUTOR', 'legacy_monolithic'),
        'scope': 'fixed5block validate and source read-only comparison; no edit/history acceptance',
        'old_material_rebound': False, 'old_inverse_replayed': False}
    save = lambda: (output / 'result.json').write_text(json.dumps(result, ensure_ascii=False, indent=2) + '\n', encoding='utf-8')
    save()
    binary = build_oracle(output)
    environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']),
        ASCET_BD_PROBE_PORT=str(manifest['port']), ASCET_BD_NATIVE_TRACE='1')
    class Observer(NativeStructureAdapter):
        build = staticmethod(lambda: binary)
    witness_token = 'main_' + fingerprint({'domain': domain, 'purpose': 'fixed_bundle_preflight'})

    def execute(label, command):
        wire = adapter = None
        try:
            with patch.dict(os.environ, environment), service.live_lock(), bench.proxy(upstream_port=manifest['port']) as wire:
                with Observer(previous['component'], timeout=30,
                        environment={**environment, 'ASCET_BD_PROBE_PORT': str(wire['port'])}) as adapter:
                    adapter.stderr_tail = ErrorCapture(output / (label + '-trace.log'))
                    adapter._ensure_open(domain)
                    value = command(adapter)
            save_new(output / (label + '.json'), value)
            return value
        finally:
            if wire is not None:
                save_new(output / (label + '-wire.json'), wire_result(wire))
            if adapter is not None:
                save_new(output / (label + '-bridge.json'), {'commands': adapter.commands, 'stderr_tail': list(adapter.stderr_tail)})

    def witness(action, label):
        return execute(label, lambda adapter: adapter._exchange(
            {'cmd': 'main_readonly_witness', 'action': action, 'token': witness_token}))

    try:
        before = execute('before', lambda adapter: adapter.observe(domain, []))
        result['witness_capture'] = witness('capture', 'witness-capture')
        result['witness_retained'] = True
        save()
        source = execute('source', lambda adapter: adapter._exchange({'cmd': 'main_current_source'}))
        if any(source.get(key) is not expected for key, expected in (
                ('source_root_preserved', True), ('native_unchanged', True), ('store_called', False))):
            raise ValueError('Source read changed original root/native material')
        source_graph = decode_graph(source['source'], domain['oid'])
        journal = StructureJournal(original / 'store/edits')
        inverse_ids = [path.name for path in journal.root.glob('edit_*')
            if journal.read(path.name)[0]['payload'].get('reverts') == previous['edit']['change_id']]
        if len(inverse_ids) != 1:
            raise ValueError('One exact retained compensated inverse required')
        events = journal.read(inverse_ids[0])
        observed = next(e['payload'] for e in events if e['kind'] == 'source_compensation_observed')
        expected = decode_graph(observed['compensation']['expected_source'], domain['oid'])
        result['complete_persisted_source_matches_original'] = equal(source_graph, expected)
        result['original_expected_source'] = observed['compensation']['expected_source']
        result['cross_restart_comparison'] = epoch != previous['domain']['process_epoch']
        result['before_graph'] = before
        save()
        if args.compile_execution:
            compile_result = execute('execution-compile', lambda adapter: adapter._exchange(
                {'cmd': 'main_staged_executor_compile'}))
            if (compile_result.get('compiled') is not True or compile_result.get('operation_dispatched') is not False
                    or compile_result.get('model_setters_called') != 0 or compile_result.get('store_called') is not False):
                raise ValueError('Fixed execution-only compile evidence differs')
            result['staged_execution_compile'] = compile_result
            save()
        if args.validate:
            literal = next(row for row in before['entries'] if row.get('native_class') == 'SGLiteralGO')
            targets = [literal['ref']] + literal['pins']
            result['validation_arguments'] = [targets, literal['ref'], '9876.25']
            save()
            result['validation'] = execute('validate', lambda adapter: adapter.validate(domain,
                'set_literal', result['validation_arguments']))
            result['fixed_five_block_validate_passed'] = True
        result['witness_after'] = witness('check', 'witness-after')
        if result['witness_after']['unchanged'] is not True:
            raise ValueError('Read/validate changed exact native baseline; retain witness')
        result['witness_release'] = witness('release', 'witness-release')
        result['witness_retained'] = not result['witness_release']['released']
        result['source_unchanged'] = result['source_manifest'] == source_manifest()
        result['passed'] = result['source_unchanged'] and result['complete_persisted_source_matches_original']
        if not result['complete_persisted_source_matches_original']:
            result['error'] = 'Complete source sharing differs after restart; keep original recovery evidence, no model writes'
    except Exception as error:
        result['error'] = str(error)
        result['traceback'] = traceback.format_exc()
        if result.get('witness_retained'):
            try:
                result['failed_witness'] = witness('check', 'failed-witness')
            except Exception as witness_error:
                result['failed_witness_error'] = str(witness_error)
    save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'complete_persisted_source_matches_original',
        'fixed_five_block_validate_passed', 'witness_retained', 'error')}, ensure_ascii=True))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
