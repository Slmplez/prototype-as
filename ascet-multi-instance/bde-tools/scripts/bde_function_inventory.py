"""Audit declared BDE operations against recovered native factories, without ASCET."""
import argparse
import hashlib
import json
from pathlib import Path
import re

from bd_block_catalog import catalog, CONTROLS, SELECTORS
from bd_structure_journal import CREATION_KINDS, OPERATOR_INPUTS

ROOT = Path(__file__).resolve().parents[1]
NATIVE = Path('unpacked/smalltalk-source/ASDBase.ic')


def method(source, selector):
    chunks = re.finditer(r'^!(?P<class>[^\n]+) methodsFor: [^\n]+!\n(?P<header>[^\n]+)\n(?P<body>.*?)^! !', source, re.M | re.S)
    matches = []
    for chunk in chunks:
        header = chunk['header']
        actual = ''.join(re.findall(r'\b([A-Za-z_]\w*:)', header)) if ':' in header else header.strip()
        if actual == selector:
            matches.append({'class': chunk['class'], 'selector': actual,
                'line': source.count('\n', 0, chunk.start()) + 2, 'body': chunk['body']})
    if len(matches) != 1: raise ValueError('Exactly one recovered method required: ' + selector)
    return matches[0]


def lookup_table(body):
    arrays = []
    for name in ('keyArray', 'valueArray'):
        values = re.findall(name + r': \(#\((.*?)\)\)', body, re.S)
        if len(values) != 1: raise ValueError('Unique literal lookup arrays required')
        tokens = re.findall(r"nil|'(?:[^']|'')*'", values[0])
        remainder = re.sub(r"nil|'(?:[^']|'')*'", '', values[0])
        if remainder.strip(): raise ValueError('Unsupported lookup token')
        arrays.append([None if token == 'nil' else token[1:-1].replace("''", "'").replace('!!', '!') for token in tokens])
    if len(arrays[0]) != len(arrays[1]): raise ValueError('Lookup arrays differ in size')
    pairs = []
    for key, value in zip(*arrays):
        if (key is None) != (value is None): raise ValueError('Unpaired native lookup entry')
        if key is not None: pairs.append({'key': key, 'value': value})
    if len({pair['key'] for pair in pairs}) != len(pairs): raise ValueError('Duplicate native lookup key')
    return pairs


def input_counts(body):
    pairs = re.findall(r"at: \('((?:[^']|'')*)'\) put: \((nil|\d+)\)", body)
    if not pairs: raise ValueError('Native input size dictionary missing')
    result = {}
    for name, size in pairs:
        name = name.replace("''", "'").replace('!!', '!')
        if name in result: raise ValueError('Duplicate operator input count')
        result[name] = None if size == 'nil' else int(size)
    return result


def audit(root=ROOT):
    inputs = {}
    def read(path):
        raw = (root/path).read_bytes()
        inputs[str(path).replace('\\', '/')] = hashlib.sha256(raw).hexdigest()
        return raw.decode('utf-8').replace('\r\n', '\n')
    ops_source = read(NATIVE/'SGOperatorGO_class.st')
    mapping = lookup_table(method(ops_source, 'mappingTable')['body'])
    counts = input_counts(method(ops_source, 'operatorInputSize')['body'])
    normalized = {}
    for pair in mapping:
        name = {'OperationsLimit': 'limit', 'OperationsWrapAround': 'wraparound'}.get(pair['key'], pair['value'])
        normalized[name] = counts[pair['value']]
    controls_source = read(NATIVE/'SGInitializeServer.st')
    controls = lookup_table(method(controls_source, 'mappingTypeStringToType')['body'])
    operator_match = normalized == OPERATOR_INPUTS
    control_match = {p['key'] for p in controls} == set(CONTROLS)
    schema_source = read(Path('Doge/src/tools/BlockDiagramTool/BlockDiagramCreationSchema.ts'))
    schema_kinds = set(re.findall(r"kind: z.literal\('([^']+)'\)", schema_source))
    for group in re.findall(r'kind: z.enum\(\[([^\]]+)\]', schema_source):
        schema_kinds.update(re.findall(r"'([^']+)'", group))
    schema_match = schema_kinds == set(CREATION_KINDS)
    read(Path('scripts/bd_structure_journal.py'))
    read(Path('scripts/bd_structure_scope.py'))
    read(Path('scripts/bd_block_catalog.py'))
    read(Path('scripts/bde_function_inventory.py'))
    # Preserve all possible declaring classes. Selector spelling is not inherited-owner resolution.
    index = json.loads(read(Path('analysis/smalltalk-recovery/method-index.json')))
    refs = {selector: [] for selector in set(SELECTORS.values())}
    seen = set()
    for record in index:
        for binding in record.get('bindings', []):
            selector, clazz = binding['selector'], binding['clazz']
            key = (record['image'], record['address'], clazz, selector)
            if selector not in refs or not clazz.startswith('EtasAPI') or key in seen: continue
            seen.add(key)
            refs[selector].append({'class': clazz, 'selector': selector, 'image': record['image'], 'address': record['address']})
    families = []
    for kind in CREATION_KINDS:
        selector = SELECTORS[kind]
        families.append({'kind': kind, 'native_factory_selector': selector, 'native_bindings': refs[selector],
            'native_binding_status': 'static_binding_found' if refs[selector] else 'missing',
            'contexts': [catalog(block_kind=kind, owner_kind=owner, diagram_scope=scope)['families'][0]
                | {'owner_kind': owner, 'diagram_scope': scope} for owner in ('class', 'module') for scope in ('Main', 'child')],
            'live_verdict': 'not_granted_by_static_audit'})
    gui_candidates = []
    for selector, family in (
        ('initJunction', 'junction'), ('initStatementBlockParent:', 'statement_block'),
        ('initProcedureParameter:', 'procedure_parameter'), ('initSequenceCallDefault:element:', 'sequence_call'),
        ('initSelf:', 'self'), ('initReturn:', 'return'), ('initInstVar:', 'instance_field'),
    ):
        witness = method(controls_source, selector)
        gui_candidates.append({'family': family, 'selector': selector, 'line': witness['line'],
            'source': str(NATIVE/'SGInitializeServer.st').replace('\\', '/'),
            'status': 'requires_applicability_and_formal_route_audit; not_inferred_from_existing_model'})
    method_source_path = NATIVE/'EtasAPIDiscreteMethod.st'
    method_source = read(method_source_path)
    class_formals = []
    for selector in ('addArgumentElement:modelType:', 'addArgumentElement:sgClass:',
                     'addReturnElementWithModelType:', 'addReturnElementWithSGClass:'):
        witness = method(method_source, selector)
        class_formals.append({k: v for k, v in witness.items() if k != 'body'})
    missing = [f['kind'] for f in families if not f['native_bindings']]
    return {'profile': 'ordinary_bde_static_inventory_v1', 'static_contract_checks_passed': operator_match and control_match and schema_match and not missing,
        'full_delivery': False, 'native_inventory_complete': False, 'native_requests': 0, 'model_mutation_dispatched': False,
        'operators': {'native_mapping': mapping, 'input_counts': normalized, 'backend_matches': operator_match},
        'controls': {'native_mapping': controls, 'backend_matches': control_match},
        'creation_schema': {'schema_kinds': sorted(schema_kinds), 'backend_matches': schema_match},
        'families': families, 'missing_native_factory_bindings': missing,
        'gui_factory_candidates': gui_candidates, 'class_formal_native_contracts': class_formals,
        'source_manifest': inputs, 'limits': ['source reconstruction has not proved runtime equivalence',
            'native factory existence does not certify owner applicability, caller effects, ports or live operations',
            'GUI candidates and Class formal types require further formal route and per-operation coverage',
            'no complete eval case pass is granted']}


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    result = audit()
    args.output.mkdir(parents=True, exist_ok=False)
    (args.output/'inventory.json').write_text(json.dumps(result, ensure_ascii=False, indent=2)+'\n', encoding='utf-8')
    summary = {k: result[k] for k in ('profile', 'static_contract_checks_passed', 'full_delivery', 'native_inventory_complete', 'native_requests', 'model_mutation_dispatched', 'missing_native_factory_bindings')}
    summary.update(families=len(result['families']), contexts=sum(len(row['contexts']) for row in result['families']),
        gui_candidates=len(result['gui_factory_candidates']), source_manifest=result['source_manifest'])
    (args.output/'result.json').write_text(json.dumps(summary, ensure_ascii=False, indent=2)+'\n', encoding='utf-8')
    print(json.dumps({k: v for k, v in summary.items() if k != 'source_manifest'}, ensure_ascii=False))
    return 0 if result['static_contract_checks_passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
