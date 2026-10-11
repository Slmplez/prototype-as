"""Bind repeated PRIVATE collection studies to the current candidate; not a tools gate."""
import argparse
from itertools import product
import json
from pathlib import Path

import bd_service as service
from bd_edit_journal import fingerprint


REQUIRED_CLASSES = ('Dictionary', 'Set', 'Array')


def require(condition, message):
    if not condition:
        raise ValueError('Private collection summary: ' + message)


def summarize(paths, minimum_rounds=3):
    result = {'passed': False, 'full_delivery': False, 'model_setters_called': 0,
              'scope': 'same-candidate PRIVATE collection recovery only; no production inverse or full case verdict',
              'experiments': [], 'rounds': [], 'required_classes': list(REQUIRED_CLASSES),
              'minimum_rounds': minimum_rounds, 'not_verified': [
                  'failure inside a native primitive', 'naturally throwing model setter',
                  'production model mutation/store/inverse', 'coordinator/ASCET death',
                  'native archive/reload', 'original display01 restoration', 'whole BDE acceptance']}
    candidate = baseline = owners = None
    for path in paths:
        raw = path.read_bytes()
        value = json.loads(raw)
        require(value['passed'] is True and value['full_delivery'] is False and
                value['model_setters_called'] == 0 and value['native_archive_available'] is False and
                value['source_drift'] == [] and value['new_assertion_count'] == 0 and
                value['crash_log_append_only'] is True, 'failed, changed-source or stronger-authority experiment')
        manifest = value['source_manifest']
        require(manifest and all(service.digest((service.ROOT / 'scripts' / name).read_bytes()) == digest
                                for name, digest in manifest.items()), 'experiment source no longer matches current files')
        if candidate is None:
            candidate = manifest
        require(candidate == manifest, 'experiments have different complete source bindings')
        result['experiments'].append({'artifact': str(path.resolve()), 'sha256': service.digest(raw),
                                     'round_count': len(value['rounds'])})
        for row in value['rounds']:
            require(row['passed'] is True and row['independent_public_bookends_unchanged'] is True and
                    row['wire_errors'] == [] and row['request_frames']['frames'] is not None and
                    row['response_frames']['frames'] is not None, 'incomplete public or wire observation')
            before = json.loads((path.parent / ('public-before-' + str(row['round']) + '.json')).read_bytes())
            after = json.loads((path.parent / ('public-after-' + str(row['round']) + '.json')).read_bytes())
            domain = {key: before[key] for key in ('database', 'database_session', 'ascet_process_epoch')}
            bookend = fingerprint(before['class_interface'])
            require(bookend == fingerprint(after['class_interface']) and
                    all(before[key] == after[key] for key in domain), 'independent public bookends differ')
            if baseline is None:
                baseline = (domain, bookend, row['coverage'])
                owners = {owner['oid']: owner['component'] for owner in before['class_interface']['owners']}
            require(baseline == (domain, bookend, row['coverage']) and
                    owners == {owner['oid']: owner['component'] for owner in before['class_interface']['owners']},
                    'public baseline, complete coverage or original owner identity differs between rounds')
            cases = {}
            for case in row['cases']:
                receipt = case['receipt']
                actual_receipt = json.loads((Path(case['folder']) / 'receipt.json').read_bytes())
                require(receipt == actual_receipt and receipt['status'] == 'recovered' and
                        receipt['model_setters_called'] == 0 and receipt['production_inverse_available'] is False and
                        receipt['native_archive_available'] is False and receipt['registry_released'] is True and
                        receipt['independent_change_after_fault_preserved'] is True and
                        receipt['host_terminations'] == receipt['same_material_lookups'] == receipt['readonly_classifications'] == 1 and
                        receipt['physical_primitives'] == receipt['physical_count'] >= 2 and
                        case['baseline_registry_size'] == case['final_registry_size'] == 0,
                        'case has missing recovery, preservation, original-material or release proof')
                identity = receipt['domain']
                require(identity['oid'] in owners and identity['component'] == owners[identity['oid']] and
                        identity['database'] == domain['database'] and
                        identity['database_session'] == domain['database_session'] and
                        identity['process_epoch'] == domain['ascet_process_epoch'], 'case original domain changed')
                key = (identity['oid'], receipt['target_class'], receipt['fault_stage'], receipt['position'])
                require(key not in cases, 'duplicate case cannot count as independent repetition')
                cases[key] = receipt
            expected = set(product(owners, REQUIRED_CLASSES, ('before', 'after'), (0, 2)))
            require(expected <= set(cases), 'required owner/class/first-last/before-after matrix is incomplete')
            require(len(row['client_resets']) == len(cases), 'dedicated bridge deaths lack complete actual RST observations')
            result['rounds'].append({'artifact': str(path.resolve()), 'round': row['round'], 'coverage': row['coverage'],
                'required_sessions': len(expected), 'all_sessions': len(cases),
                'physical_primitives': sum(cases[key]['physical_primitives'] for key in expected),
                'execution_primitives': sum(cases[key]['execution_primitives'] for key in expected),
                'recovery_units': sum(cases[key]['recovery_units'] for key in expected),
                'refusals': sum(cases[key]['refusals'] for key in expected),
                'ordered_regression_sessions': sum(key[1] == 'OrderedCollection' for key in cases)})
    require(len(result['rounds']) >= minimum_rounds, 'not enough complete independent public-bookended rounds')
    result['source_manifest'] = candidate
    result['source_count'] = len(candidate)
    result['public_baseline_sha256'] = baseline[1]
    result['domain'] = baseline[0]
    result['coverage'] = baseline[2]
    result['totals'] = {key: sum(row[key] for row in result['rounds']) for key in (
        'required_sessions', 'all_sessions', 'physical_primitives', 'execution_primitives', 'recovery_units',
        'refusals', 'ordered_regression_sessions')}
    result['passed'] = True
    return result


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', type=Path, action='append', required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    require(len({path.resolve() for path in args.experiment}) == len(args.experiment), 'duplicate experiment')
    result = summarize(args.experiment)
    args.output.mkdir(parents=True, exist_ok=False)
    result['summary_source_sha256'] = service.digest(Path(__file__).read_bytes())
    service.write_once(args.output / 'result.json', result)
    print(json.dumps({key: result[key] for key in ('passed', 'full_delivery', 'source_count', 'coverage', 'totals')}))


if __name__ == '__main__':
    main()
