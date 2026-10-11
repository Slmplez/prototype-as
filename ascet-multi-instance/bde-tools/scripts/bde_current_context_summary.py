"""Recompute native context guard cases and full baseline proofs on frozen source."""
import argparse
import json
from pathlib import Path
import subprocess
import sys

import bd_class_tools as tools
import bd_service as service
from bd_class_current_execution import inspect_ready_classification
from bd_class_study_journal import read_events
from bd_source_inverse_oracle import decode_graph, equal


def require(condition, message):
    if not condition:
        raise ValueError(message)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--experiment', type=Path, action='append', required=True)
    parser.add_argument('--offline', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    output = args.output.resolve()
    require(output.is_relative_to(service.ROOT / 'analysis/bde-experiments'), 'Owned separate output required')
    output.mkdir(parents=True, exist_ok=False)
    helper = service.ROOT / 'scripts/bde_current_identity_summary.py'
    command = [sys.executable, str(helper), '--execution-preflight', '--offline', str(args.offline),
               '--output', str(output / 'full-baseline-proof')]
    for experiment in args.experiment:
        command += ['--experiment', str(experiment)]
    checked = subprocess.run(command, capture_output=True, text=True, encoding='utf-8', timeout=45)
    require(checked.returncode == 0, 'Full source/WAL/baseline proof failed: ' + checked.stderr)
    baseline = tools.load(output / 'full-baseline-proof/result.json')
    trials, recipes = [], set()
    for experiment in args.experiment:
        trial = tools.load(experiment / 'result.json')
        recipes.add(trial['recipe'])
        publication = experiment / 'model-publication-0'
        raw = tools.load(publication / 'raw.json')
        current = tools.load(publication / 'expected.json')
        journal = read_events(publication / 'model-publication.wal')
        prepared = journal[1]['payload']['owners']
        token = journal[0]['payload']['token']
        classification = inspect_ready_classification(raw, token, current, prepared)
        require(classification == tools.load(publication / 'current-classification-proof.json'),
                'Ready complete classification differs')
        roster = {owner['oid'] for owner in current['owners']}
        changed = {owner['oid'] for owner in prepared if not equal(
            decode_graph(owner['current_source_graph'], owner['oid']),
            decode_graph(owner['candidate_source_graph'], owner['oid']))}
        expected = {oid + '/' + suffix for oid in roster for suffix in
                    ('baseline', 'owner-identity/refused-restored', 'owner-configuration/refused-restored',
                     'full-native-original', 'zero-dispatch-prefix')}
        expected |= {name + '/refused-restored' for name in ('definition-identity', 'complete-signature',
                     'definition-configuration', 'argument-identities', 'return-identity', 'unclassified-signature-stage')}
        expected |= {oid + '/complete-source-seal/refused-restored' for oid in changed}
        expected |= {'nonempty-complete-source-faults', 'unchanged-model-prefix'}
        guards = []
        for field, phase, count in (('current_context_guard_audit', 'ready', 0),
                                    ('current_context_guard_publishing_audit', 'publishing', 2)):
            guard = raw[field]
            require(guard['profile'] == 'class_current_context_guard_audit_v1'
                    and guard['passed'] is True and guard['token'] == token and guard['group_state'] == phase
                    and type(guard['model_steps_before']) is int
                    and guard['model_steps_before'] == guard['model_steps_after'] == count
                    and guard['model_setters_called'] == 0 and guard['owners_verified'] == len(roster)
                    and guard['complete_source_faults'] == len(changed)
                    and guard['full_native_original_restored'] is True
                    and guard['production_executor_available'] is False
                    and set(guard['cases']) == expected and len(guard['cases']) == len(expected) == guard['assertions'],
                    'Native guard cases omit a field/owner or change the actual model prefix')
            guards.append(guard)
        require(guards == trial['rounds'][0]['model_publication']['current_context_guards'],
                'Native guard summaries differ from actual values')
        require('scripts\\current_class_context_probe.st' in trial['source_manifest'],
                'Native context probe must be included in frozen experiment source hashes')
        trials.append({'experiment': str(experiment.resolve()), 'ready_classification': classification,
                       'guards': guards, 'full_baseline_restored': True, 'temporary_records_absent': True})
    require(recipes == {'base', 'mixed'}, 'Base and third-level hierarchy guard trials required')
    result = {'passed': True, 'full_delivery': False, 'production_executor_available': False,
        'scope': 'Actual ready/publishing context refusals; zero CURRENT setters; forward-prefix tests are offline only',
        'summary_cebra_connections': 0, 'summary_model_setters_called': 0,
        'source_sha256': service.digest(Path(__file__).read_bytes()),
        'baseline_proof': str((output / 'full-baseline-proof/result.json').resolve()),
        'offline_sources_verified': baseline['offline_sources_verified'], 'execution_totals': baseline['execution_totals'],
        'trials': trials, 'guard_assertions': sum(guard['assertions'] for trial in trials for guard in trial['guards']),
        'complete_source_classifications_verified': sum(trial['ready_classification']['complete_sources_verified'] for trial in trials),
        'not_verified': ['actual CURRENT primitive/store execution', 'inverse WAL and physical recovery',
                         'unaccounted native action reconciliation', 'generic store collateral inverses',
                         'production Class local inverse', 'remaining types/families/UI/FLOW/AEB_Core/package',
                         'original AEB_1 restoration', 'one-second writes', 'whole delivery']}
    tools.write(output / 'result.json', result)
    print(json.dumps({'passed': True, 'guard_assertions': result['guard_assertions'],
                      'execution_totals': result['execution_totals'], 'full_delivery': False}))


if __name__ == '__main__':
    main()
