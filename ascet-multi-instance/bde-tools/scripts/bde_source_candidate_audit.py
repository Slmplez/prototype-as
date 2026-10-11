"""Independently audit complete native source exports without an ASCET connection."""
import argparse
import json
from pathlib import Path
import traceback

import bd_class_tools as tools
import bd_service as service
from bd_source_dependencies import inspect_dependencies


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--input', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--dependency-context', type=Path,
                        help='Retained complete before/after/current analysis JSON for offline dependency checks')
    args = parser.parse_args()
    owned = (service.ROOT / 'analysis/bde-experiments').resolve()
    source, output = args.input.resolve(), args.output.resolve()
    if not source.is_relative_to(owned) or not output.is_relative_to(owned) or output.is_relative_to(source.parent):
        raise ValueError('Separate owned native observation and audit output required')
    output.mkdir(parents=True, exist_ok=False)
    initial = source.read_bytes()
    result = {'passed': False, 'scope': 'offline independent complete-value audit of retained actual native exports; no live or merged publication claim',
              'input': str(source), 'input_sha256': service.digest(initial),
              'source_manifest': {name: service.digest((service.ROOT / 'scripts' / name).read_bytes())
                                  for name in ('bde_source_candidate_audit.py', 'bd_source_inverse_oracle.py', 'bd_source_dependencies.py', 'bd_class_tools.py',
                                               'bde_persisted_source_graph.st', 'bde_class_source_inverse_plan.st')},
              'cebra_connections': 0, 'model_setters_called': 0, 'write_authorized': False}
    try:
        raw = json.loads(initial)
        if (raw.get('status') != 'observed' or raw.get('model_mutation_dispatched') is not False
                or raw.get('model_setters_called') != 0 or raw.get('dirty_before') != 0 or raw.get('dirty_after') != 0):
            raise ValueError('Complete readonly native observation required')
        result['analysis'] = tools.validate_source_plans(raw, tools.observation(raw, 'observed'))
        if args.dependency_context:
            context_path = args.dependency_context.resolve()
            if not context_path.is_relative_to(owned) or context_path.is_relative_to(output):
                raise ValueError('Separate owned retained dependency context required')
            context_bytes = context_path.read_bytes()
            context = json.loads(context_bytes)
            observed = tools.observation(raw, 'observed')
            if observed != context['current']:
                raise ValueError('Retained dependency context differs from complete source observation')
            owners = {owner['oid']: owner for owner in observed['owners']}
            result['dependency_context'] = str(context_path)
            result['dependency_context_sha256'] = service.digest(context_bytes)
            result['dependency_analysis'] = [inspect_dependencies(row['result'], row['oid'], owners[row['oid']],
                context['before'], context['after'], observed, require_native_witness=False)
                for row in raw['native_class_source_plans']]
            if not all(item['compatible'] for item in result['dependency_analysis']):
                raise ValueError('Retained complete source candidate has dependency conflicts')
            if context_path.read_bytes() != context_bytes:
                raise ValueError('Retained dependency context changed during offline audit')
            result['native_child_getter_online_verified'] = False
        result['passed'] = True
    except Exception:
        result['error'] = traceback.format_exc()
    finally:
        result['input_unchanged'] = source.read_bytes() == initial
        result['passed'] = result['passed'] and result['input_unchanged']
        (output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({key: result.get(key) for key in ('passed', 'input_unchanged', 'error')}), flush=True)
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
