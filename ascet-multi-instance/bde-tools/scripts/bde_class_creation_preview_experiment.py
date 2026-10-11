"""Read-only real Doge Class creation preflight with independent public bookends."""
import argparse
import json
from pathlib import Path
import time
import traceback

import bd_service as service
import bd_class_tools as tools
import bd_class_creation as creation
import bde_experiments as bench
from bde_tool_client import ToolClient


def public_targets(record, plan):
    callers = {row['component']: row['public_tree'] for row in record['class_interface']['observation']['callers']}
    for row in plan['resources']:
        nodes = [node for node in callers[row['component']][row['diagram']]['nodes'] if 'n' + str(node['id']) == row['node']]
        if len(nodes) != 1:
            raise ValueError('Planned Class occurrence differs from independent public enumeration')
        public = {pin['native']['id'] for pin in nodes[0]['pins']}
        if not {int(pin[1:]) for pin in row['layout_candidates']} <= public:
            raise ValueError('Planned pin layout candidates differ from public occurrence')


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--component', required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--repeats', type=int, choices=(1, 3), default=3)
    args = parser.parse_args()
    tools.require_sandbox(args.component)
    args.output.mkdir(parents=True, exist_ok=False)
    service.STORE = (args.output / 'state').resolve()
    sources = [service.ROOT / 'scripts' / name for name in (*tools.SOURCES, 'bd_class_creation.py',
        'bd_class_selector.py', 'bd_class_tools.py', 'bd_class_study_journal.py', 'bd_class_interface_contract.py',
        'bd_class_preview.py', 'bd_service.py', 'bd_write_contract.py',
        'bde_class_creation_preview_experiment.py', 'bde_tool_client.py')]
    sources.append(service.ROOT / 'Doge/src/tools/BlockDiagramTool/BlockDiagramTool.ts')
    manifest = lambda: {str(path.relative_to(service.ROOT)): service.digest(path.read_bytes()) for path in sources}
    result = {'passed': False, 'scope': 'actual Tool.call and native compiled read-only creation validation; no model creation or inverse',
        'native_write_accepted': False, 'full_delivery': False, 'model_setters_called': 0,
        'source_manifest': manifest(), 'rounds': [], 'tool_calls': [],
        'not_verified': ['parameterized actual create/inverse', 'creation fault/shared/type gates',
            'native local inverse', 'original BDE visual lifecycle', 'original failed-edit restoration', 'AEB_Core/FLOW']}
    client = ToolClient(args.output, 'creation-preview-' + args.output.name, result['tool_calls'].append)
    client.env.update(ASCET_BD_CLASS_WRITES='1', ASCET_BD_CLASS_IMPACT_UPSTREAM_PORT='32503', ASCET_BD_ENDPOINT_PORT='32503')
    log = Path('E:/ETASData/ASCET6.4/crash.log')
    initial_log = log.read_bytes()

    def save():
        (args.output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')

    def call(row, tool, request, mode='bulk_public_v1'):
        client.env['ASCET_BD_CLASS_OBSERVATION_MODE'] = mode
        started = time.perf_counter()
        with bench.proxy() as wire:
            client.env['ASCET_BD_PROBE_PORT'] = str(wire['port'])
            head, body, error = client.call(tool, request)
        row.update(elapsed_ms=(time.perf_counter() - started) * 1000, request=wire['request'].result(),
            response=wire['response'].result(), wire_errors=wire['errors'], is_error=error, manifest=head)
        save()
        if wire['errors']:
            raise ValueError('Counting proxy error')
        return head, body, error

    def read(row):
        head, body, error = call(row, 'bd_read', {'component': args.component, 'view': 'class_interface', 'max_bytes': 8192}, 'public_oracle')
        if error:
            raise ValueError(body)
        record = service.load_record(head['snapshot'], 's_', 'snapshots')
        if record['logic'] != body or record['dirty_editors'] != [0, 0]:
            raise ValueError('Complete independent read/dirty contract differs')
        return record

    try:
        for index in range(args.repeats):
            row = {'round': index, 'before': {}, 'previews': [], 'refusal': {}, 'after': {}}
            result['rounds'].append(row)
            save()
            before = read(row['before'])
            method = before['class_interface']['observation']['signature']['methods'][0]
            for model_type in creation.MODEL_TYPES:
                trial = {'model_type': model_type}
                row['previews'].append(trial)
                op = {'op': creation.OPERATION, 'selector': {key: method[key if key == 'diagram' else 'alias']
                    for key in ('diagram', 'method_alias')}, 'name': 'CreationPreview_' + model_type,
                    'model_type': model_type, 'layout_policy': 'follow_verified_pins_and_orthogonal_routes',
                    'sequence_policy': 'no_implicit_changes'}
                request = {'snapshot': before['snapshot'], 'request_id': f'preview-{index}-{model_type}', 'preview': True,
                    'operations': [op]}
                _, body, error = call(trial, 'bd_edit', request)
                if error:
                    raise ValueError(body)
                value = json.loads(body)
                trial['plan'] = value
                raw = tools.load(Path(value['raw_evidence']))
                if (value['status'] != 'class_creation_preview' or value['model_setters_called'] != 0 or
                        value['recovery_record_created'] or value['edit_request_reserved'] or
                        raw['native_creation_preflight'] != 'validated' or value['write_eligibility'] != 'refused' or
                        'NATIVE_CREATION_NOT_ACCEPTED' not in {reason['code'] for reason in value['refusal_reasons']}):
                    raise ValueError('Creation preview claims unsupported mutation or acceptance')
                public_targets(before, value)
                if (value['native_recovery']['signature']['record_present'] or
                        any(probe['checks']['material']['record_present'] for probe in value['native_recovery']['owners'])):
                    raise ValueError('Preview allocated or encountered existing native recovery material')
                if (raw.get('native_detached_material_template_binding') != 'validated_no_actions' or
                        value['native_recovery']['profile'] != 'class_native_recovery_v3' or
                        any(not probe['checks']['material']['current_graphical_fields_observed'] or
                            probe['checks']['material']['detached_fields_profile'] != 'collected_graphics_v1'
                            for probe in value['native_recovery']['owners'])):
                    raise ValueError('Fixed native graphical field projection was not observed on every owner')
                trial.update(passed=True, native_creation_preflight='validated', public_occurrences_match=True)
                save()
            request.pop('preview')
            _, body, error = call(row['refusal'], 'bd_edit', request)
            if (not error or row['refusal']['request']['frames'] != 0 or
                    not any(code in body for code in ('CAPABILITY_UNAVAILABLE', 'DATABASE_RESTORATION_REQUIRED'))):
                raise ValueError('Unaccepted actual creation was not refused before native dispatch')
            row['refusal']['expected_error'] = body
            after = read(row['after'])
            if (before['class_interface'] != after['class_interface'] or
                    before['database_session'] != after['database_session'] or
                    before['ascet_process_epoch'] != after['ascet_process_epoch'] or
                    (service.STORE / 'class-edits').exists()):
                raise ValueError('Creation preview changed complete owners or reserved an edit')
            row.update(passed=True, complete_owners_unchanged=True, native_recovery_records_absent=True,
                edit_request_reserved=False, owner_count=len(before['class_interface']['owners']))
            save()
        result['passed'] = all(row.get('passed') for row in result['rounds'])
    except Exception:
        result['error'] = traceback.format_exc()
    final_log = log.read_bytes()
    result['crash_log_append_only'] = final_log.startswith(initial_log)
    appended = final_log[len(initial_log):] if result['crash_log_append_only'] else final_log
    (args.output / 'crash-log-appended.txt').write_bytes(appended)
    result['new_assertion_count'] = appended.count(b'Dumping walkback to file:')
    result['source_drift'] = [name for name, digest in manifest().items() if digest != result['source_manifest'][name]]
    result['passed'] = result['passed'] and result['crash_log_append_only'] and result['new_assertion_count'] == 0 and not result['source_drift']
    save()
    print(json.dumps({key: result.get(key) for key in ('passed', 'new_assertion_count', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
