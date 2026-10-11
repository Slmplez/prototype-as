"""Freeze and independently replay cache inverse prerequisites without live I/O."""
import argparse
import hashlib
import json
from pathlib import Path
import re
import shutil
import subprocess
import sys
import bd_service as service
from bde_acceptance import source_manifest
from bde_cache_membership_study import validate_private, validate_preflight


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args(); base = service.ROOT/'analysis/bde-experiments/2026-10-11'
    output = args.output.resolve()
    if not output.is_relative_to(base) or output.exists(): raise ValueError('Fresh owned checkpoint required')
    output.mkdir(parents=True)
    read = lambda p: json.loads(p.read_text(encoding='utf-8'))
    result = dict(profile='bde_cache_patch_checkpoint_v1', passed=False, native_calls_by_report=0,
                  registered_cache_restore_verified=False, production_inverse_authorized=False,
                  full_commit_resource_closure=False, complete_message_lifecycle_cases_passed=0,
                  required_cases_upgraded=False, full_delivery=False, ascet_started_or_restarted=False)
    try:
        audit = read(base/'bde-connect-store-resources-preflight-03/original-audit.json')
        evidence = {}; summaries = {}; archived = 0; reports = {}
        cases = (('bde-cache-membership-private-04', False), ('bde-cache-state-private-02', True))
        for folder, joint in cases:
            path = base/folder; prior = read(path/'result.json'); reports[folder] = prior
            for flag in ('passed', 'original_evidence_unchanged', 'complete_public_native_bookends_equal',
                         'complete_live_cache_membership_bookends_equal'):
                if prior.get(flag) is not True: raise ValueError('Missing independent native bookend: '+flag)
            summaries[folder] = validate_private(read(path/'actual.json'), joint=joint)
            if read(path/'before.json') != read(path/'after.json'):
                raise ValueError('Complete actual public/native images differ')
            for name in ('cache-before.json', 'cache-after.json'):
                validate_preflight(read(path/name), audit)
            if read(path/'cache-before.json') != read(path/'cache-after.json'):
                raise ValueError('Complete live cache membership changed')
        preflight = base/'bde-cache-membership-preflight-02'
        if read(preflight/'result.json')['passed'] is not True: raise ValueError('Retained preflight failed')
        summaries[preflight.name] = validate_preflight(read(preflight/'actual.json'), audit)
        failed = base/'bde-cache-membership-private-01'
        failure = read(failed/'result.json')
        if failure['passed'] is not False: raise ValueError('Original identity tracing failure must stay failed')
        if read(failed/'before.json') != read(base/cases[-1][0]/'after.json'):
            raise ValueError('Full failure-before and final independent images differ')
        for folder in [base/name for name,_ in cases]+[preflight, failed]:
            prior = read(folder/'result.json')
            for relative, sha in prior['source_manifest'].items():
                if service.digest((folder/'source'/relative).read_bytes()) != sha:
                    raise ValueError('Archived source hash differs: '+relative)
                archived += 1
            for name in ('intent.json','result.json','actual.json','before.json','after.json',
                         'cache-before.json','cache-after.json','oracle-build.json'):
                path = folder/name
                if path.is_file():
                    evidence[folder.name+'/'+name] = service.digest(path.read_bytes())
        sources = source_manifest()
        for relative, sha in sources.items():
            dest = output/'source'/relative; dest.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(service.ROOT/relative, dest)
            if service.digest(dest.read_bytes()) != sha: raise ValueError('Frozen source differs')
        modules = ('test_bd_cache_membership', 'test_bde_cache_membership_study',
                   'test_bd_commit_model_diff', 'test_bde_registered_model_patch_study')
        run = subprocess.run([sys.executable, '-X', 'utf8', '-m', 'unittest', '-v', *modules],
                             cwd=output/'source/scripts', capture_output=True, timeout=60)
        log = run.stdout+run.stderr; (output/'controls.log').write_bytes(log)
        count = re.search(rb'Ran (\d+) tests', log)
        if run.returncode or count is None: raise ValueError('Frozen targeted controls failed')
        result.update(passed=True, summaries=summaries, source_manifest=sources,
                      frozen_source_files=len(sources), archived_source_hashes_checked=archived,
                      evidence_hashes=evidence, original_failed_verdict_preserved=failure['error'],
                      failure_before_equals_final_public_native_images=True,
                      offline_controls=dict(tests=int(count[1]), executed_from_frozen_sources=True,
                                            online_acceptance=False, modules=list(modules)),
                      native_wire={k:v['wire'] for k,v in reports.items()})
    except Exception as error:
        result.update(passed=False, error=str(error))
    service.write_once(output/'result.json', result)
    (output/'README.md').write_text(
        '# Cache inverse prerequisite checkpoint\n\n'
        'Complete retained v6 cache: 15 entries, fourteen 20-byte keys and one '
        '32-byte AccessRights key. Read-only preflight dispatches zero writes. '
        'Original key bytes and entry identities remain exact; CURRENT is never '
        'an applied-edit after image.\n\n'
        'Fresh private native cache undo/redo/second undo execute three membership '
        'primitives each; the joint version adds two direct dirty-state field '
        'primitives each. Seven stages check exact membership and modification '
        'census. Independent cache insertion and proxy name are preserved; five '
        'actual execution conflicts complete zero primitives. Two preparation/replay '
        'refusals are retained. Native modification census returns DBCacheObject, '
        'then exact shell/proxy identity is read directly. Whole direct field '
        'terminal validation passes.\n\n'
        'Full actual public/native and complete live cache membership bookends '
        'remain identical. Only newly allocated private objects are mutated; '
        'registered cache writes, Store/Commit and persisted BDE edits are not '
        'tested. The original failure used equality-based identity labels and '
        'misidentified modification return types; its verdict is preserved. '
        'The initial 20-byte-only offline rejection is also retained.\n\n'
        'Original proxy before images are not complete in v6; never backfill '
        'them with CURRENT. A new same-dispatch original capture is required '
        'before applying this executor to registered caches. Backend metadata, '
        'model/source/owner-record joint recovery and production journal bindings '
        'remain incomplete. Message 0/60, 43 required, T3.1/T5.1, business '
        'restoration hold and full_delivery=false remain unchanged.\n\n'
        'Reproduce offline: `bde_cache_patch_increment.py --output <fresh-dir>`. '
        'Live, existing original token only: `bde_cache_membership_study.py '
        '--preparation <v6-dir> --mode preflight|private|state_private '
        '--output <fresh-dir>`. Unknown results are never replayed.\n', encoding='utf-8')
    print(json.dumps({k:result.get(k) for k in ('passed','error','frozen_source_files','archived_source_hashes_checked','offline_controls','full_delivery')}))
    return 0 if result['passed'] else 1


if __name__ == '__main__': raise SystemExit(main())
