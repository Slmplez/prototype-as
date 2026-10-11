"""Check saved full public trees/declarations against every cumulative actual patch."""
import argparse
from collections import Counter
import json
from pathlib import Path

import bd_service as service
from bde_public_oracle import encoded, native_projection, public_projection


def model_projection(rows, native=False):
    kinds = {'EtasAPIModelScalar': 'ScalarElement', 'EtasAPIConstant': 'ConstantElement',
        'EtasAPIModelReceiveMessage': 'ReceiveMessageElement', 'EtasAPIModelSendMessage': 'SendMessageElement',
        'EtasAPIModelSendReceiveMessage': 'SendReceiveMessageElement'}
    values = []
    for row in rows:
        if native:
            if row['kind'] != 'model':
                continue
            value = {key: row[key] for key in ('name', 'model_type')}
            value['kind'] = kinds[row['native_class']]
            default = row.get('default_value', {})
            if default.get('status') == 'read':
                value.update(default_value=default['value'], default_configuration_oid=default['configuration_oid'])
            if 'definition' in row:
                value.update(definition_oid=row['definition']['oid'], definition_path=row['definition']['path'].strip('\\'))
            if 'enum_values' in row:
                value['enum_values'] = row['enum_values']
        else:
            # Retain every public declaration field; reject unknown unprojected native variants.
            value = dict(row)
            if 'definition_path' in value:
                value['definition_path'] = value['definition_path'].strip('\\')
        values.append(encoded(value))
    return Counter(values)


def signature(tree, models):
    return (tuple((scope, tuple(sorted(counts.items()))) for scope, counts in sorted(tree.items())),
            tuple(sorted(models.items())))


def apply_delta(state, removed, added):
    assert all(state[row] >= count for row, count in removed.items()), 'Patch removes an unobserved value'
    state.subtract(removed)
    state.update(added)
    return +state


def audit(result):
    assert result['passed'] and not result['outstanding'] and not result['source_changes_during_run']
    tree = {scope: public_projection(graph) for scope, graph in result['public_baseline']['tree'].items()}
    models = model_projection(result['public_baseline']['models'])
    baseline = signature(tree, models)
    allowed = {baseline}
    patches = 0
    for case in result['cases']:
        if case['kind'] == 'connected_operator':
            operations = ('operator', 'literal', 'first', 'second', 'delete', 'delete_inverse',
                          'second_inverse', 'first_inverse', 'literal_inverse', 'operator_inverse')
        elif case['kind'] == 'parent_hierarchy_guard':
            operations = ('create', 'child', 'child_inverse', 'create_inverse')
        elif case['kind'] == 'cross_scope_reference_guard':
            operations = ('create', 'occurrence', 'occurrence_inverse', 'create_inverse')
        else:
            operations = ('create', 'delete', 'delete_inverse', 'create_inverse')
        for name in operations:
            receipt = case[name]
            assert receipt['status'] in ('applied_observed', 'verified_local')
            scope = receipt['diagram']
            for change in receipt['differences']:
                old = [change['before']] if change['before'] else []
                new = [change['after']] if change['after'] else []
                tree[scope] = apply_delta(tree[scope], native_projection(old), native_projection(new))
                models = apply_delta(models, model_projection(old, True), model_projection(new, True))
            if case['kind'] == 'parent_hierarchy_guard':
                child_scope = case['child_scope']
                empty = native_projection(case['empty_child']['structure']['entries'])
                if name == 'create':
                    assert child_scope not in tree
                    tree[child_scope] = empty
                elif name == 'create_inverse':
                    assert tree[child_scope] == empty
                    del tree[child_scope]
            allowed.add(signature(tree, models))
            patches += 1
        assert signature(tree, models) == baseline, case
    for index, observation in enumerate(result['observations']):
        observed = {scope: public_projection(graph) for scope, graph in observation['tree'].items()}
        assert signature(observed, model_projection(observation['models'])) in allowed, index
    return {'passed': True, 'cases': len(result['cases']), 'actual_patches_including_inverses': patches,
        'complete_public_observations': len(result['observations']), 'online_calls': 0,
        'scope': 'all saved public graph projection and declaration fields with multiplicity, matched together to cumulative actual patches',
        'not_verified': ['independent native object identity/order oracle', 'public parameter/variable flags and message scope/access roles',
                         'all library contents after enum deletion', 'UI/Undo', 'runtime delivery', 'other fixtures and graph reload']}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--result', required=True, type=Path)
    parser.add_argument('--output', required=True, type=Path)
    args = parser.parse_args()
    if args.output.exists():
        raise ValueError('New audit output required')
    value = audit(json.loads(args.result.read_text(encoding='utf-8')))
    value.update(source_result_sha256=service.digest(args.result.read_bytes()), audit_source_sha256=service.digest(Path(__file__).read_bytes()))
    args.output.write_text(json.dumps(value, indent=2), encoding='utf-8')
    print(json.dumps(value))


if __name__ == '__main__':
    main()
