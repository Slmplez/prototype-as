"""Read-only expired Class inverse Tool.call; never reconnect or clear its hold."""
import argparse
import json
from pathlib import Path
import traceback

import bd_service as service
import bd_class_tools as tools
import bd_instance_pending as pending
import bde_experiments as bench
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--store', type=Path, required=True)
    parser.add_argument('--change-id', required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    args = parser.parse_args()
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = args.store.resolve()
    intent, applied, _ = tools.terminal_raw(args.change_id)
    holds = pending.restoration_holds(intent['domain']['database'])
    if not holds:
        raise ValueError('This experiment only observes an already retained database hold')
    original = tools.root(args.change_id)
    original_hashes = lambda: {str(path.relative_to(original)): service.digest(path.read_bytes())
        for path in original.rglob('*') if path.is_file()}
    hold_hashes = lambda: {row['record']: service.digest(Path(row['record']).read_bytes())
        for row in pending.restoration_holds(intent['domain']['database'])}
    sources = (*tools.SOURCES, 'bd_class_tools.py', 'bd_class_preview.py', 'bd_class_inverse_analysis.py', 'bd_service.py',
        'bde_class_inverse_preview_experiment.py', '../Doge/src/tools/BlockDiagramTool/BlockDiagramTool.ts')
    manifest = lambda: {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in sources}
    before_records = set((service.STORE / 'class-edits').iterdir())
    result = {'passed': False, 'scope': 'live Doge Tool.call but no native connection; expected expired inverse refusal',
        'change_id': args.change_id, 'source_manifest': manifest(), 'rounds': [], 'tool_calls': [],
        'original_hashes': original_hashes(), 'hold_hashes': hold_hashes(), 'restored': False,
        'positive_retained_inverse_verified': False, 'model_setters_called': 0}
    client = ToolClient(args.output, intent['domain']['session'], result['tool_calls'].append)
    client.env.update(ASCET_BD_CLASS_WRITES='1', ASCET_BD_ENDPOINT_PORT='32503')
    log = Path('E:/ETASData/ASCET6.4/crash.log')
    before_log = log.read_bytes()

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    try:
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            head, text, error = client.call('bd_inspect', {'query': 'capabilities', 'max_bytes': 8192})
        capabilities = json.loads(text) if not error else {}
        result['capabilities'] = {'manifest': head, 'class_interface_tools': capabilities.get('class_interface_tools'),
            'request_frames': wire['request'].result(), 'response_frames': wire['response'].result(),
            'wire_errors': wire['errors'], 'is_error': error}
        if (error or wire['errors'] or wire['request'].result()['frames'] != 0 or
                not capabilities.get('class_interface_tools', {}).get('enabled') or
                'preview=true' not in capabilities['class_interface_tools']['inverse_preview']):
            raise ValueError('Actual capabilities Tool.call did not describe the read-only Class inverse preview')
        save()
        for index in range(args.repeats):
            row = {'round': index}
            result['rounds'].append(row)
            request = {'change_id': args.change_id, 'request_id': 'readonly-inverse-' + str(index), 'preview': True}
            with bench.proxy() as wire:
                client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
                head, text, error = client.call('bd_revert', request)
            row.update(request_frames=wire['request'].result(), response_frames=wire['response'].result(),
                wire_errors=wire['errors'], is_error=error, manifest=head)
            save()
            if error or wire['errors']:
                raise ValueError('Inverse preview Tool.call failed: ' + text)
            plan = json.loads(text)
            row['plan'] = plan
            reasons = {reason['code'] for reason in plan['refusal_reasons']}
            if (plan['status'] != 'class_inverse_preview' or plan['write_eligibility'] != 'refused' or
                    reasons != {'DATABASE_RESTORATION_REQUIRED'} or
                    plan['observed_preconditions'] != 'not_checked' or plan['native_recovery'] != 'not_checked' or
                    plan['planned_definition_effect']['after'] != applied['before']['signature'] or
                    plan['edit_request_reserved'] or plan['recovery_record_created'] or
                    row['request_frames']['frames'] != 0 or row['response_frames']['frames'] != 0):
                raise ValueError('Expired inverse refusal, cached plan or zero-frame contract failed')
            if (original_hashes() != result['original_hashes'] or hold_hashes() != result['hold_hashes'] or
                    set((service.STORE / 'class-edits').iterdir()) != before_records):
                raise ValueError('Read-only preview altered recovery materials or allocated an edit')
            row.update(passed=True, original_records_unchanged=True, hold_unchanged=True, edit_records_created=False)
            save()
        result['passed'] = len(result['rounds']) == args.repeats and all(row.get('passed') for row in result['rounds'])
    except Exception:
        result['error'] = traceback.format_exc()
    current_log = log.read_bytes()
    result['crash_log_append_only'] = current_log.startswith(before_log)
    appended = current_log[len(before_log):] if result['crash_log_append_only'] else current_log
    (args.output / 'crash-log-appended.txt').write_bytes(appended)
    result['new_assertion_count'] = appended.count(b'Dumping walkback to file:')
    result['source_drift'] = [name for name, digest in manifest().items() if digest != result['source_manifest'][name]]
    result['passed'] = result['passed'] and result['crash_log_append_only'] and not result['new_assertion_count'] and not result['source_drift']
    save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'new_assertion_count', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
