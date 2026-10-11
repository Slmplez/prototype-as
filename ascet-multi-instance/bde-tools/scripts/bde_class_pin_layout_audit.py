"""Recheck Class pin layout proposals against retained complete online evidence."""
import argparse
import json
from pathlib import Path

import bd_service as service
from bd_class_pin_layout import plan_pin_layout


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', type=Path, required=True)
    parser.add_argument('--round', type=int, default=0)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    experiment, output = args.experiment.resolve(), args.output.resolve()
    owned = service.ROOT / 'analysis/bde-experiments'
    if (not experiment.is_relative_to(owned) or not output.is_relative_to(owned)
            or output.is_relative_to(experiment) or experiment.is_relative_to(output)):
        raise ValueError('Separate owned experiment and output required')
    folder = experiment / f'candidate-audit-{args.round}'
    raw = json.loads((folder / 'raw.json').read_text(encoding='utf-8'))
    context = json.loads((folder / 'expected.json').read_text(encoding='utf-8'))
    source_result = json.loads((experiment / 'result.json').read_text(encoding='utf-8'))
    before_hashes = {str(path.relative_to(experiment)): service.digest(path.read_bytes())
                     for path in experiment.rglob('*') if path.is_file()}
    output.mkdir(parents=True, exist_ok=False)
    result = {'passed': False, 'full_delivery': False, 'source_experiment_passed': source_result['passed'],
              'scope': 'Offline complete-source proposals from online evidence; no native binding or setters',
              'experiment': str(experiment.relative_to(service.ROOT)), 'owners': [],
              'model_setters_called': 0, 'cebra_connections': 0, 'write_authorized': False,
              'native_merge_executor_available': False,
              'source_manifest': {name: service.digest((service.ROOT / name).read_bytes()) for name in (
                  'scripts/bd_class_pin_layout.py', 'scripts/bde_class_pin_layout_audit.py')}}
    try:
        owners = {owner['oid']: owner for owner in context['owners']}
        rows = raw['native_class_source_candidates']
        if len(owners) != len(context['owners']) or {row['oid'] for row in rows} != set(owners) or len(rows) != len(owners):
            raise ValueError('Complete unique owner roster required')
        for row in rows:
            receipt = row['receipt']
            original, applied = receipt['retained_runtime_audit']['captures']
            if (original['phase'], applied['phase']) != ('original', 'applied'):
                raise ValueError('Exact retained history phases required')
            witnesses = {'original': original['storage_witness'], 'applied': applied['storage_witness'],
                         'current': receipt['runtime_source_audit']['storage_witness']}
            proof = plan_pin_layout(receipt['source_plan']['source_graphs'], row['oid'],
                definition_oid=context['observation']['signature']['oid'], current_scopes=owners[row['oid']]['scopes'],
                storage_witnesses=witnesses,
                target_keys=[target['native_key'] for target in receipt['runtime_patch_audit']['targets']])
            result['owners'].append(proof)
        result.update(passed=all(proof['compatible'] for proof in result['owners']),
                      coordinate_restores=sum(proof['coordinate_restores'] for proof in result['owners']),
                      existing_pins_checked=sum(proof['existing_pins_checked'] for proof in result['owners']))
    except Exception as error:
        result['error'] = str(error)
    after_hashes = {str(path.relative_to(experiment)): service.digest(path.read_bytes())
                    for path in experiment.rglob('*') if path.is_file()}
    result['source_experiment_files_unchanged'] = before_hashes == after_hashes
    result['input_hashes'] = before_hashes
    result['passed'] = result['passed'] and result['source_experiment_files_unchanged']
    (output / 'result.json').write_text(json.dumps(result, indent=2), encoding='utf-8')
    print(json.dumps({key: result.get(key) for key in ('passed', 'coordinate_restores', 'existing_pins_checked', 'error')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
