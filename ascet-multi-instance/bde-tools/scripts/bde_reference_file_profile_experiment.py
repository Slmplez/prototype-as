"""Profile only the existing reference library in the original isolated process."""
import argparse
import json
import os
from pathlib import Path

import bd_service as service
from bd_native_structure import NativeStructureAdapter, compile_bridge
from bde_acceptance import source_manifest
from bde_experiments import proxy
from bde_isolated_runtime import live_manifest


BINDINGS = service.ROOT/'analysis/bde-experiments/2026-10-07/bde-reference-file-snapshot-route-01/bindings-01.json'
GV_POOLS = {'fixedSize': ('CTwngvFixedSize', 512), 'suerr_cod': ('CTwngvSuerrcodOffset', 168),
            'ssysiocod': ('CTwngvSsysiocodOffset', 170), 'sisam_err': ('CTwngvSisamerrOffset', 172),
            'sisam_fil': ('CTwngvSisamfilOffset', 176)}
PROFILE_KEYS = set(('profile profile_index native_token component_oid generation library_class leaf_class file_class '
    'gv_class gv_size unique_number key_length key_duplicates data_number index_number ct_key_bytes functions gv_methods '
    'method_identity_rechecked function_bytes_unchanged gv_pool_bindings_rechecked scan_executed model_setters_called '
    'store_called commit_called write_authorized inverse_authorized complete_before_authorized atomic_snapshot_verified').split())
METHOD_KEYS = {'bytecodes', 'defining_class', 'method_slot', 'requested_class', 'selector', 'selector_index'}


def read(path):
    return json.loads(path.read_text(encoding='utf-8-sig'))


def validate_profile(report, original):
    if not isinstance(report, dict) or set(report) != PROFILE_KEYS:
        raise ValueError('Complete fixed reference-file metadata schema required')
    def exact_bytes(value, label):
        if (not isinstance(value, list) or not 1 <= len(value) <= 65536
                or any(type(x) is not int or not 0 <= x <= 255 for x in value)):
            raise ValueError('Complete strict byte list required: ' + label)
        return bytes(value)
    def method_slot(row):
        if (type(row['selector_index']) is not int or not 1 <= row['selector_index'] <= 65535
                or row['selector_index'] % 2 != 1
                or type(row['method_slot']) is not int or row['method_slot'] <= 0):
            raise ValueError('Exact positive original compact method slot required')
    if (report['profile'] != 'native_reference_file_profile_v2'
            or report['native_token'] != original['native_token']
            or report['component_oid'] != original['domain']['oid']
            or type(report['generation']) is not int or report['generation'] != original['prepared_resources'][0]['generation']
            or report['library_class'] != 'CTreestdFputFgetDLL'
            or report['leaf_class'] != 'CTreeLocalVariableAttributeInterface'
            or report['file_class'] != 'CTSpaceCheckingIFil'
            or report['gv_class'] != 'CTGVCTreestdFputFget'
            or type(report['profile_index']) is not int or not 1 <= report['profile_index'] <= 16
            or report['unique_number'] != 0 or report['key_length'] != 53 or report['key_duplicates'] is not False
            or report['method_identity_rechecked'] is not True or report['function_bytes_unchanged'] is not True):
        raise ValueError('Exact retained current reference-file profile required')
    if (report['gv_pool_bindings_rechecked'] is not True
            or any(type(report[key]) is not int for key in ('gv_size', 'unique_number', 'key_length', 'data_number', 'index_number'))
            or report['gv_size'] != 512 or report['data_number'] < 0 or report['index_number'] != report['data_number'] + 1):
        raise ValueError('Exact original GV pool and file/index dimensions required')
    if len(exact_bytes(report['ct_key_bytes'], 'original full key structure')) != 64:
        raise ValueError('Complete two-entry reference key structure required')
    key_bytes = bytes(report['ct_key_bytes'])
    dimensions = [(int.from_bytes(key_bytes[i * 32:i * 32 + 2], 'little'),
                   int.from_bytes(key_bytes[i * 32 + 4:i * 32 + 6], 'little')) for i in range(2)]
    if dimensions != [(report['key_length'], 0), (37, 1)]:
        raise ValueError('Original reference key dimensions differ from fixed schema')
    for key in ('scan_executed', 'store_called', 'commit_called', 'write_authorized', 'inverse_authorized',
                'complete_before_authorized', 'atomic_snapshot_verified'):
        if report[key] is not False:
            raise ValueError('Reference metadata cannot claim scan/write/inverse/atomicity')
    if type(report['model_setters_called']) is not int or report['model_setters_called'] != 0:
        raise ValueError('Profile must perform no model setter')
    static = read(BINDINGS)
    expected = {row['selector']: row for row in static['native_functions']}
    if len(report['functions']) != 10 or {row['selector'] for row in report['functions']} != set(expected):
        raise ValueError('All ten fixed native read bindings required')
    matches = []
    for row in report['functions']:
        if not isinstance(row, dict) or set(row) != METHOD_KEYS | {'platform_function_bytes'}:
            raise ValueError('Complete fixed native reference method schema required')
        method_slot(row)
        saved = expected[row['selector']]
        raw = row['platform_function_bytes']
        if not isinstance(raw, list) or any(type(x) is not int or not 0 <= x <= 255 for x in raw):
            raise ValueError('Complete original PlatformFunction byte values required')
        original_raw = bytes.fromhex(next(lit for lit in saved['literals'] if lit['class_name'] == 'PlatformFunction')['exact_body_hex'])
        if (row['requested_class'] != 'CTreestdFputFgetDLL'
                or row['defining_class'] != saved['dispatch']['defining_class']
                or exact_bytes(row['bytecodes'], 'native bytecodes').hex() != saved['full_original_code_hex']
                or bytes(raw[8:]) != original_raw[8:]):
            raise ValueError('Native reference read bytecode/ABI/name differs: ' + row['selector'])
        matches.append(dict(selector=row['selector'], name=saved['decoded_function']['name'],
            runtime_address_library_bytes=raw[:8], original_image_address_library_bytes=list(original_raw[:8]),
            fixed_abi_name_equal=True, full_bytecode_equal=True))
    if (not isinstance(report['gv_methods'], list) or len(report['gv_methods']) != 5
            or {row['selector'] for row in report['gv_methods']} != set(GV_POOLS)):
        raise ValueError('All five fixed GV method/size/offset bindings required')
    static_gv = {row['selector']: row for row in static['supporting_methods'] if row['selector'] in GV_POOLS}
    for row in report['gv_methods']:
        if not isinstance(row, dict) or set(row) != METHOD_KEYS | {'literals'}:
            raise ValueError('Complete fixed GV method schema required')
        method_slot(row)
        selector = row['selector']
        name, value = GV_POOLS[selector]
        wanted = [dict(kind='association', **{'class': 'EsPoolAssociation'}, key=name, value=value)]
        if selector != 'fixedSize':
            wanted.append(dict(kind='atom', **{'class': 'Symbol'}, value='#uint16At:'))
        if (row['requested_class'] != ('CTGVCTreestdFputFget class' if selector == 'fixedSize' else 'CTGVCTreestdFputFget')
                or row['defining_class'] != ('CTwngv class' if selector == 'fixedSize' else 'CTwngv')
                or exact_bytes(row['bytecodes'], 'GV bytecodes').hex() != static_gv[selector]['full_original_code_hex']
                or row['literals'] != wanted or type(row['literals'][0]['value']) is not int):
            raise ValueError('Fixed GV method or initialized pool binding differs: ' + selector)
    return dict(passed=True, native_bindings=matches, native_binding_count=len(matches),
        original_runtime_binding_bytes_preserved=True, gv_methods=report['gv_methods'], gv_pool_bindings_verified=True,
        scan_executed=False, write_authorized=False, inverse_authorized=False)


def main():
    p = argparse.ArgumentParser(description=__doc__)
    for name in ('manifest', 'preparation', 'output'):
        p.add_argument('--'+name, type=Path, required=True)
    args = p.parse_args()
    manifest, _, epoch = live_manifest(args.manifest)
    original = read(args.preparation)
    if original.get('passed') is not True or original['process_epoch'] != epoch:
        raise ValueError('Exact original live preparation required')
    args.output.mkdir(parents=True, exist_ok=False)
    result = dict(passed=False, process_epoch=epoch, process_started=False, process_restarted=False,
        automatic_retry=False, native_token=original['native_token'], full_delivery=False, scan_executed=False,
        model_edit_verified=False, write_authorized=False, inverse_authorized=False)
    service.write_once(args.output/'intent.json', result)
    try:
        binary = compile_bridge()
        inputs = source_manifest()
        inputs[binary.relative_to(service.ROOT).as_posix()] = service.digest(binary.read_bytes())
        inputs[BINDINGS.relative_to(service.ROOT).as_posix()] = service.digest(BINDINGS.read_bytes())
        service.write_once(args.output/'source-manifest.json', inputs)
        with service.live_lock(), proxy(manifest['port']) as wire:
            environment = dict(os.environ, ASCET_BD_ENDPOINT_PORT=str(manifest['port']), ASCET_BD_PROBE_PORT=str(wire['port']))
            with NativeStructureAdapter(original['component'], environment=environment, timeout=50) as adapter:
                before = adapter.observe(original['domain'], [])
                service.write_once(args.output/'before.json', before)
                evidence = adapter._exchange(dict(cmd='commit_reference_file_profile', token=original['native_token']))
                service.write_once(args.output/'profile.json', evidence)
                after = adapter.observe(original['domain'], [])
                service.write_once(args.output/'after.json', after)
                proof = validate_profile(evidence, original)
                service.write_once(args.output/'validated.json', proof)
                result.update(passed=before == after, typed_graph_unchanged=before == after,
                    profile_index=evidence['profile_index'], native_binding_count=proof['native_binding_count'],
                    native_commands=adapter.commands)
            result['traffic'] = dict(request=wire['request'].result(), response=wire['response'].result(), errors=wire['errors'])
        if live_manifest(args.manifest)[2] != epoch:
            raise ValueError('Original reference process epoch changed')
        result['sources_unchanged'] = all(service.digest((service.ROOT/name).read_bytes()) == wanted for name, wanted in inputs.items())
        if not result['sources_unchanged']:
            raise ValueError('Reference profile inputs changed during execution')
    except Exception as error:
        result.update(passed=False, error=repr(error))
    service.write_once(args.output/'result.json', result)
    print(json.dumps({key: result.get(key) for key in ('passed', 'error', 'profile_index', 'native_binding_count', 'typed_graph_unchanged')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
