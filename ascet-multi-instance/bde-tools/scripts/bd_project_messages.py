"""Definition-level message resolution evidence; never invent instance paths."""
from collections import Counter, defaultdict
import json


DECLARATION_FIELDS = ('owner_oid', 'alias', 'name', 'scope', 'message', 'imported',
                      'exported', 'send', 'receive', 'send_receive')
MODULE_FIELDS = ('alias', 'name', 'definition_oid')
INSTANCE_FIELDS = ('owner_oid', 'alias', 'name', 'chain', 'name_chain', 'definition_oid', 'instance_kind', 'expansion')


def projection(value):
    def row(item, fields):
        return {key: item[key] for key in fields}
    def bag(items):
        return Counter(json.dumps(item, sort_keys=True) for item in items)
    result = {
        'modules': bag(row(item, MODULE_FIELDS) for item in value['modules']),
        'declarations': bag(row(item, DECLARATION_FIELDS) for item in value['declarations']),
        'lookup_results': bag({'import': row(item['import'], DECLARATION_FIELDS),
                              'selected': (row(item['native_selected'], DECLARATION_FIELDS)
                                           if item['native_selected'] is not None else None)}
                             for item in value['bindings']),
    }
    if 'instances' in value:
        result['instances'] = bag(row(item, INSTANCE_FIELDS) for item in value['instances'])
    return result


def compare_project(native, public):
    before, after = projection(native), projection(public)
    checks = {key: key in before and key in after and before[key] == after[key] for key in before.keys() | after.keys()}
    return {'passed': all(checks.values()), 'fields': checks,
            'not_verified': ['complete export candidate enumeration', 'instance descendants beyond depth or recursion stops',
                             'mappingCache resolution', 'tasks', 'Undo and callback state',
                             'BDE connections', 'runtime delivery']}


def declaration_key(row):
    return row['owner_oid'], row['alias']


def validate_instances(value, project_oid=None):
    if 'instances' not in value:
        return {}
    modules = {row['alias']: row for row in value['modules']}
    indexed = {}
    for row in value['instances']:
        chain = row['chain']
        limit = value.get('instance_depth_limit', 16)
        if type(limit) is not int or not 1 <= limit <= 16:
            raise ValueError('Invalid instance depth limit')
        if not isinstance(chain, list) or not 1 <= len(chain) <= limit or any(not isinstance(key, str) or not key for key in chain):
            raise ValueError('Invalid instance alias chain')
        key = tuple(chain)
        if key in indexed or chain[-1] != row['alias']:
            raise ValueError('Duplicate or inconsistent instance chain')
        if len(row['name_chain']) != len(chain) or row['name_chain'][-1] != row['name']:
            raise ValueError('Invalid instance name chain')
        indexed[key] = row
    if {key[0] for key in indexed if len(key) == 1} != set(modules):
        raise ValueError('Missing or extra root Module instance')
    for chain, row in indexed.items():
        if len(chain) == 1:
            module = modules[chain[0]]
            if any(row[field] != module[field] for field in MODULE_FIELDS) or row['instance_kind'] != 'Module':
                raise ValueError('Root Module instance identity mismatch')
            if project_oid is not None and row['owner_oid'] != project_oid:
                raise ValueError('Root instance belongs to another Project')
        else:
            parent = indexed.get(chain[:-1])
            if parent is None or parent['definition_oid'] != row['owner_oid'] or parent['expansion'] != 'expanded':
                raise ValueError('Instance parent identity or expansion mismatch')
            if row['name_chain'][:-1] != parent['name_chain']:
                raise ValueError('Instance name ancestry mismatch')
        status = row['expansion']
        if status not in ('expanded', 'leaf_definition', 'recursive_definition_stopped', 'depth_limit_reached'):
            raise ValueError('Unknown instance expansion status')
        recursive = row['definition_oid'] in [indexed[chain[:depth]]['definition_oid'] for depth in range(1, len(chain))]
        if row['instance_kind'] not in ('Module', 'Class', 'other'):
            raise ValueError('Unknown instance kind')
        if ((row['instance_kind'] == 'other') != (status == 'leaf_definition')
                or status == 'expanded' and (len(chain) >= limit or recursive)
                or status == 'depth_limit_reached' and (len(chain) != limit or recursive)
                or status == 'recursive_definition_stopped' and not recursive):
            raise ValueError('Instance expansion claim disagrees with ancestry')
    return indexed


def analyze_messages(value):
    instances = defaultdict(list)
    chains = defaultdict(list)
    for chain, row in validate_instances(value).items():
        chains[row['definition_oid']].append(list(chain))
    instance_aliases = set()
    for module in value['modules']:
        if module['alias'] in instance_aliases:
            raise ValueError('Duplicate Module instance alias')
        instance_aliases.add(module['alias'])
        instances[module['definition_oid']].append(module['alias'])
    declarations = {declaration_key(row): row for row in value['declarations']}
    if len(declarations) != len(value['declarations']):
        raise ValueError('Duplicate declaration identity')
    result = []
    imports = set()
    for binding in value['bindings']:
        imported = binding['import']
        key = declaration_key(imported)
        if key in imports or key not in declarations or not imported['imported'] or imported != declarations[key]:
            raise ValueError('Invalid or duplicate import binding')
        imports.add(key)
        candidates = binding['candidates']
        keys = [declaration_key(row) for row in candidates]
        if len(set(keys)) != len(keys):
            raise ValueError('Duplicate export candidate identity')
        if any(not row['exported'] or not row['message'] for row in candidates):
            raise ValueError('Invalid message export candidate')
        selected = binding['native_selected']
        selected_key = declaration_key(selected) if selected is not None else None
        ordered = sorted(candidates, key=declaration_key)
        row = {'import': imported, 'import_owner_instances': sorted(instances[key[0]]),
               'candidates': ordered, 'native_selected': selected,
               'candidate_owner_instances': [sorted(instances[item['owner_oid']]) for item in ordered],
               'editable': False, 'execution': 'not_collected', 'instance_path': 'not_expanded'}
        row['instance_resolution'] = ('multiple_owner_instances' if len(instances[key[0]]) > 1
            or any(len(instances[item['owner_oid']]) > 1 for item in candidates) else
            'owner_instance_missing' if not instances[key[0]]
            or any(not instances[item['owner_oid']] for item in candidates) else 'top_level_owners_collected')
        if 'instances' in value:
            row['import_owner_chains'] = sorted(chains[key[0]])
            row['candidate_owner_chains'] = [sorted(chains[item['owner_oid']]) for item in ordered]
            row['instance_path'] = 'bounded_alias_chains_collected'
            row['instance_resolution'] = ('multiple_owner_instances' if len(chains[key[0]]) > 1
                or any(len(chains[item['owner_oid']]) > 1 for item in candidates) else
                'owner_instance_missing' if not chains[key[0]]
                or any(not chains[item['owner_oid']] for item in candidates) else 'bounded_owner_chains_collected')
        if len(candidates) > 1:
            row.update(status='ambiguous_declaration', reason='first_match_does_not_prove_uniqueness')
        elif not candidates:
            row.update(status='unresolved', reason='no_compatible_export_candidate')
        elif selected_key != keys[0]:
            row.update(status='lookup_mismatch', reason='native_selected_not_unique_candidate')
        else:
            row.update(status='unique_declaration_candidate')
        if selected_key is not None and selected_key not in keys:
            row['lookup_inconsistent'] = True
        result.append(row)
    expected = {key for key, row in declarations.items() if row['imported']}
    if imports != expected:
        raise ValueError('Missing imported declaration binding')
    return {'bindings': result, 'counts': dict(Counter(row['status'] for row in result)),
            'meaning': 'native definition declaration candidates; not complete instance signal paths'}
