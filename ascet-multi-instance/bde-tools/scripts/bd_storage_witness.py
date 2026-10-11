"""Check native storage-return witnesses without treating export row IDs as model handles."""
import re

from bd_service import digest
from bd_source_inverse_oracle import decode_graph, equal


def _require(condition, message):
    if not condition:
        raise ValueError(message)


def inspect_storage_witness(value, oid, generation, *, expected_source, expected_scopes=None):
    _require(type(value) is dict and value.get('profile') == 'native_storage_return_witness_v1'
             and value.get('oid') == oid and type(value.get('generation')) is int
             and value['generation'] == generation and generation > 0,
             'Exact owner/generation-bound storage witness required')
    _require(value.get('complete_native_members') is True and value.get('live_original_unchanged') is True
             and value.get('native_bindings_sealed') is True
             and type(value.get('model_setters_called')) is int and value['model_setters_called'] == 0
             and all(value.get(key) is False for key in
                     ('store_called', 'write_authorized', 'native_merge_executor_available')),
             'Private storage witnesses cannot authorize model publication')
    graph = value.get('source_graph')
    _require(equal(decode_graph(graph, oid), decode_graph(expected_source, oid)),
             'Witnessed complete source differs from native storage baseline')
    table = {row['id']: row for row in graph['nodes']}

    def reference(encoded):
        _require(type(encoded) is list and len(encoded) == 2 and encoded[0] == 'ref'
                 and type(encoded[1]) is int and encoded[1] in table,
                 'Actual source storage reference required')
        return encoded[1]

    def fields(identifier):
        row = table[identifier]
        _require(row['kind'] == 'fields', 'Source storage object fields required')
        return dict(row['fields'])

    def members(encoded):
        row = table[reference(encoded)]
        _require(row['kind'] == 'ordered', 'Complete source storage cohort required')
        return [reference(item) for item in row['items']]

    scopes, obligations, seen = {}, set(), set()

    def visit(identifier, scope, depth=0):
        _require(depth <= 16 and len(scopes) < 64 and identifier not in seen,
                 'Exact bounded nonrepeated storage scope required')
        seen.add(identifier)
        data = fields(identifier)
        cohorts = {'graphicBlock': [reference(data.get('graphicBlock'))]}
        for cohort in ('blocks', 'connections', 'others'):
            cohorts[cohort] = members(data.get(cohort))
        for cohort, references in cohorts.items():
            _require(len(references) == len(set(references)), 'Repeated storage return in one cohort')
            obligations.update((identifier, cohort, item) for item in references)
        scopes[scope] = identifier
        for child in cohorts['blocks']:
            if table[child]['native_class'] == 'SGGraphicsBlockDB':
                basic = table[reference(fields(child).get('graphicBlock'))]
                _require(basic['native_class'] == 'SGHierarchyGODB' and type(basic.get('logic_id')) is int
                         and basic['logic_id'] >= 0, 'Audited hierarchy storage identity required')
                visit(child, scope + '/h' + str(basic['logic_id']), depth + 1)
    visit(reference(graph['root']), 'Main')
    _require(type(value.get('scope_count')) is int and value['scope_count'] == len(scopes),
             'Complete native storage scope count differs')
    expected = value.get('expected_members')
    _require(type(expected) is list and len(expected) <= 100000
             and type(value.get('member_count')) is int and value['member_count'] == len(expected),
             'Complete native storage member roster required')
    catalog = {}
    for row in expected:
        _require(type(row) is dict and set(row) == {'scope', 'kind', 'native_key', 'native_class'}
                 and row.get('scope') in scopes and row.get('kind') in ('node', 'edge')
                 and type(row.get('native_key')) is str and row['native_key'] not in catalog
                 and type(row.get('native_class')) is str and bool(row['native_class']),
                 'Unique exact storage witness member identity required')
        suffix = row['native_key'].removeprefix(row['scope'] + '/')
        _require(row['native_key'] == row['scope'] + '/' + suffix
                 and re.fullmatch(('e' if row['kind'] == 'edge' else 'n') + r'(?:0|[1-9][0-9]*)', suffix),
                 'Canonical scoped native storage member required')
        catalog[row['native_key']] = row
    if expected_scopes is not None:
        _require(type(expected_scopes) is dict and set(expected_scopes) == set(scopes),
                 'Storage witness scope roster differs from original observation')
        observed = {}
        for scope, body in expected_scopes.items():
            for row in body['entries']:
                if row['kind'] in ('node', 'edge', 'comment'):
                    key = scope + '/' + row['ref']
                    _require(key not in observed, 'Duplicate observed native storage member')
                    observed[key] = {'scope': scope, 'native_key': key, 'native_class': row['native_class'],
                                     'kind': 'edge' if row['kind'] == 'edge' else 'node'}
        _require(catalog == observed, 'Storage witness member roster differs from original observation')
    rows = value.get('witnesses')
    _require(type(rows) is list and len(rows) == len(obligations), 'Complete actual storage return table required')
    witnessed, keyed, direct = set(), set(), 0
    for row in rows:
        _require(type(row) is dict and row.get('scope') in scopes
                 and row.get('cohort') in ('graphicBlock', 'blocks', 'connections', 'others')
                 and type(row.get('source_ref')) is int and row['source_ref'] in table
                 and type(row.get('parent_ref')) is int and row['parent_ref'] == scopes[row['scope']]
                 and row.get('native_parent_verified') is True
                 and type(row.get('native_class')) is str and row['native_class']
                 and row.get('storage_class') == table[row['source_ref']]['native_class'],
                 'Actual storage return class, source or parent differs')
        obligation = (row['parent_ref'], row['cohort'], row['source_ref'])
        _require(obligation in obligations and obligation not in witnessed,
                 'Missing, duplicate or foreign storage return cannot bind native identity')
        witnessed.add(obligation)
        root = row['cohort'] == 'graphicBlock'
        kind = 'scope_root' if root else 'edge' if row['cohort'] == 'connections' else 'node'
        _require(row.get('kind') == kind, 'Storage witness kind/cohort differs')
        origin = ('audited_hierarchy_storage' if not root and row['storage_class'] == 'SGGraphicsBlockDB'
                  else 'native_storage_return')
        _require(row.get('origin') == origin, 'Native return must be distinguished from audited hierarchy assembly')
        direct += origin == 'native_storage_return'
        if root:
            _require(row.get('native_key') is None, 'Root storage reference is not a member edit handle')
        else:
            key = row.get('native_key')
            _require(type(key) is str and key in catalog and key not in keyed
                     and catalog[key] == {field: row[field] for field in ('scope', 'kind', 'native_key', 'native_class')},
                     'Native storage return belongs to another member or capture')
            keyed.add(key)
            if kind == 'edge':
                _require(row['storage_class'] == 'SGConnectionGODB', 'Exact native connection storage return required')
            else:
                stored = table[row['source_ref']]
                if stored['native_class'] == 'SGGraphicsBlockDB':
                    stored = table[reference(fields(stored['id']).get('graphicBlock'))]
                _require(type(stored.get('logic_id')) is int
                         and stored['logic_id'] == int(key.removeprefix(row['scope'] + '/n')),
                         'Native storage node graphical identifier differs')
    _require(witnessed == obligations and keyed == set(catalog)
             and type(value.get('native_storage_return_calls')) is int and value['native_storage_return_calls'] == direct,
             'Complete source/native return correspondence required')
    changes = value.get('private_normalization_changes')
    steps = value.get('private_normalization_inverse_steps')
    _require(type(changes) is list and len(changes) <= 100000 and type(steps) is int and steps >= 0
             and bool(changes) == (steps > 0) and value.get('private_normalization_restored') is True,
             'Actual witness normalization diff and exact inverse required')
    for row in changes:
        _require(type(row) is dict and row.get('kind') in ('fields', 'collection')
                 and type(row.get('native_class')) is str and type(row.get('index')) is int,
                 'Exact witness normalization locator required')
        if row['kind'] == 'fields':
            _require(row['index'] > 0 and all(type(row.get(key)) is str and row[key]
                     for key in ('field', 'before_class', 'after_class')), 'Exact witness field normalization required')
        else:
            _require(row['index'] == 0 and all(type(row.get(key)) is int and row[key] >= 0
                     for key in ('before_size', 'after_size')), 'Exact witness collection normalization required')
    return {'profile': value['profile'], 'complete_source_values_verified': True,
            'native_bindings_sealed': True,
            'complete_storage_return_correspondence_verified': True, 'scope_count': len(scopes),
            'member_count': len(catalog), 'edge_witnesses': sum(row['kind'] == 'edge' for row in catalog.values()),
            'native_storage_return_calls': direct, 'source_sha256': digest(graph), 'bindings_sha256': digest(rows),
            'private_normalization_changes': changes, 'private_normalization_inverse_steps': steps,
            'private_normalization_restored': True, 'write_authorized': False,
            'native_merge_executor_available': False, 'not_verified': ['cross-capture edge identity', 'merged runtime publication']}
