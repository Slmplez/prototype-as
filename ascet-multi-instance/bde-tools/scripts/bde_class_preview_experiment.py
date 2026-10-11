"""Actual read-only Doge Class preview trials; never apply or restore a model."""
import argparse
import json
from pathlib import Path
import traceback

import bd_service as service
import bd_class_tools as tools
import bde_experiments as bench
from bde_tool_client import ToolClient


def public_oracle(record, plan):
    state = record['class_interface']['observation']
    callers = {row['component']: row['public_tree'] for row in state['callers']}
    for resource in plan['resources']:
        if resource['oid'] == record['oid']:
            public = state['body']
            if resource['diagram'] != 'Main':
                raise ValueError('No independent public definition oracle for this scope')
        else:
            public = callers[resource['component']][resource['diagram']]
        pin_ids = {int(ref[1:]) for ref in resource['remove']['pins']}
        node_ids = {int(ref[1:]) for ref in resource['remove']['nodes']}
        public_nodes = {row['id'] for row in public['nodes']}
        public_pins = {pin['native']['id'] for row in public['nodes'] for pin in row['pins']}
        public_edges = [row for row in public['edges'] if row['source']['native']['id'] in pin_ids or row['target']['native']['id'] in pin_ids]
        if not node_ids <= public_nodes or not pin_ids <= public_pins or len(public_edges) != len(resource['remove']['edges']):
            raise ValueError('Preview removal closure differs from the independent public graph')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--selector', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    parser.add_argument('--public-oracle-read', action='store_true', help='Surround the default native preview with independent field-by-field public API reads')
    args = parser.parse_args()
    tools.require_sandbox(args.component)
    selector = tools.load(args.selector)
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = (args.output / 'state').resolve()
    sources = (*tools.SOURCES, 'bd_class_tools.py', 'bd_class_preview.py', 'bd_service.py',
        'bd_windows_endpoint.py', 'bde_class_interface_study.py', 'bd_class_impact_tools.py',
        'bde_class_preview_experiment.py', '../Doge/src/tools/BlockDiagramTool/BlockDiagramTool.ts')
    manifest = lambda: {name: service.digest((service.ROOT / 'scripts' / name).read_bytes()) for name in sources}
    result = {'passed': False, 'scope': 'read-only exact Class formal deletion preview through Doge; no apply/inverse',
        'model_setters_called': 0, 'outstanding_edit_resolved': False, 'rounds': [], 'tool_calls': [],
        'source_manifest': manifest(), 'native_prepare_acceptance': 'not_verified',
        'independent_public_rpc_read': args.public_oracle_read}
    client = ToolClient(args.output, 'class-preview-' + args.output.name, result['tool_calls'].append)
    client.env.update(ASCET_BD_CLASS_WRITES='1', ASCET_BD_CLASS_IMPACT_UPSTREAM_PORT='32503', ASCET_BD_ENDPOINT_PORT='32503')
    log = Path('E:/ETASData/ASCET6.4/crash.log')
    before_log = log.read_bytes()

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def call(row, tool, request):
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            head, body, error = client.call(tool, request)
        row.update(request_frames=wire['request'].result(), response_frames=wire['response'].result(),
            wire_errors=wire['errors'], is_error=error, manifest=head)
        save()
        if error or wire['errors']:
            raise ValueError('Read-only Tool.call failed: ' + body)
        return head, body

    def read(row):
        if args.public_oracle_read:
            client.env['ASCET_BD_CLASS_OBSERVATION_MODE'] = 'public_oracle'
        head, body = call(row, 'bd_read', {'component': args.component, 'view': 'class_interface', 'max_bytes': 8192})
        record = service.load_record(head['snapshot'], 's_', 'snapshots')
        if record['logic'] != body or record['dirty_editors'] != [0, 0]:
            raise ValueError('Complete read-only body/dirty contract failed')
        return record

    try:
        for index in range(args.repeats):
            row = {'round': index, 'before': {}, 'preview': {}, 'after': {}}
            result['rounds'].append(row)
            save()
            before = read(row['before'])
            request = {'snapshot': before['snapshot'], 'request_id': 'preview-' + str(index), 'preview': True,
                'operations': [{'op': tools.OPERATION, 'selector': selector,
                    'layout_policy': 'follow_verified_pins_and_orthogonal_routes', 'sequence_policy': 'no_implicit_changes'}]}
            client.env.pop('ASCET_BD_CLASS_OBSERVATION_MODE', None)
            _, text = call(row['preview'], 'bd_edit', request)
            plan = json.loads(text)
            row['plan'] = plan
            public_oracle(before, plan)
            native = plan['native_recovery']
            if (native['profile'] != 'class_native_recovery_v1' or
                    len(native['owners']) != len(before['class_interface']['owners']) or
                    native['signature']['record_present'] or
                    any(probe['checks']['material']['record_present'] for probe in native['owners'])):
                raise ValueError('Read-only fresh fixture probe must expose all owners and absent recovery records')
            if (plan['model_setters_called'] != 0 or plan['recovery_record_created'] or plan['edit_request_reserved'] or
                    'change_id' in plan or plan['status'] != 'class_deletion_preview' or
                    (before.get('write_resource_error') and plan['write_eligibility'] != 'refused')):
                raise ValueError('Preview incorrectly claims apply, authority or recovery')
            after = read(row['after'])
            if before['class_interface'] != after['class_interface'] or (service.STORE / 'class-edits').exists():
                raise ValueError('Preview changed collected owners or created an edit intent')
            row.update(passed=True, independent_public_closure_match=True, complete_owners_unchanged=True,
                edit_records_created=False, native_recovery_records_absent=True,
                native_capacity_observed=True, positive_retained_inverse_verified=False)
            save()
        result['passed'] = len(result['rounds']) == args.repeats and all(row.get('passed') for row in result['rounds'])
    except Exception:
        result['error'] = traceback.format_exc()
    appended = log.read_bytes()
    result['crash_log_append_only'] = appended.startswith(before_log)
    appended = appended[len(before_log):] if result['crash_log_append_only'] else appended
    (args.output / 'crash-log-appended.txt').write_bytes(appended)
    result['new_assertion_count'] = appended.count(b'Dumping walkback to file:')
    result['source_drift'] = [name for name, digest in manifest().items() if digest != result['source_manifest'][name]]
    result['passed'] = result['passed'] and result['crash_log_append_only'] and result['new_assertion_count'] == 0 and not result['source_drift']
    save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'new_assertion_count', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
