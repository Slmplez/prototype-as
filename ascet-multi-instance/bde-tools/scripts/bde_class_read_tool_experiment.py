"""Read-only actual Doge Class-interface calls, with complete pagination and wire evidence."""
import argparse
import json
from pathlib import Path
import traceback

import bd_service as service
import bd_class_tools as tools
import bde_experiments as bench
from bde_tool_client import ToolClient


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    tools.require_sandbox(args.component)
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = (args.output / 'state').resolve()
    result = {'passed': False, 'model_setters_called': 0, 'outstanding_edit_resolved': False,
        'scope': 'actual read-only Doge Class-interface Tool.call; all returned pages; collected owners only',
        'rounds': [], 'tool_calls': [], 'visual_acceptance': 'not_verified',
        'project_effective_values': 'not_collected',
        'source_manifest': {name: service.digest((service.ROOT / 'scripts' / name).read_bytes())
            for name in (*tools.SOURCES, 'bd_class_tools.py', 'bd_service.py', 'bde_class_read_tool_experiment.py')}}
    client = ToolClient(args.output, 'class-read-' + args.output.name, result['tool_calls'].append)
    client.env.update(ASCET_BD_CLASS_WRITES='1', ASCET_BD_CLASS_IMPACT_UPSTREAM_PORT='32503')
    baseline = None
    log = Path('E:/ETASData/ASCET6.4/crash.log')
    before_log = log.read_bytes()

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    try:
        for index in range(args.repeats):
            row = {'round': index}
            result['rounds'].append(row)
            save()
            with bench.proxy() as wire:
                client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
                head, body, error = client.call('bd_read', {
                    'component': args.component, 'view': 'class_interface', 'max_bytes': 8192})
            row.update(request=wire['request'].result(), response=wire['response'].result(),
                proxy_errors=wire['errors'], is_error=error, response_manifest=head)
            save()
            if error or wire['errors']:
                raise ValueError('Class tool read failed: ' + body)
            record = service.load_record(head['snapshot'], 's_', 'snapshots')
            if record['logic'] != body or record['source'] != tools.SOURCE:
                raise ValueError('Complete paged Class body differs from the committed snapshot')
            raw = record['class_interface']
            if baseline is None:
                baseline = raw
            row.update(snapshot=record['snapshot'], body_utf8_bytes=len(body.encode('utf-8')),
                complete_body_matches=True, stable_collected_owners=raw == baseline,
                owners=len(raw['owners']), scopes=sum(len(owner['scopes']) for owner in raw['owners']),
                write_resource_error=record.get('write_resource_error'),
                edit_advertised=head['capabilities']['edit'])
            if (not row['stable_collected_owners'] or record['dirty_editors'] != [0, 0] or
                    record.get('write_resource_error') and row['edit_advertised']):
                raise ValueError('Owner stability, clean editor or read-only capability contract failed')
            row['passed'] = True
            save()
        result['passed'] = all(row.get('passed') for row in result['rounds'])
    except Exception:
        result['error'] = traceback.format_exc()
    after_log = log.read_bytes()
    result['crash_log_append_only'] = after_log.startswith(before_log)
    appended = after_log[len(before_log):] if result['crash_log_append_only'] else after_log
    (args.output / 'crash-log-appended.txt').write_bytes(appended)
    result['new_assertion_count'] = appended.count(b'Dumping walkback to file:')
    result['passed'] = result['passed'] and result['crash_log_append_only'] and result['new_assertion_count'] == 0
    save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'new_assertion_count', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
