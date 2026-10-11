"""Read-only connection preparation with complete retained commit resources.

Uses an existing complete owner witness to bind an already running private
instance. Never starts ASCET, dispatches apply/Store, or rebinds old materials.
"""
import argparse
import json
import os
import re
import shutil
from pathlib import Path

import bd_service as service
import bd_instance_pending as pending
from bd_edit_journal import fingerprint
from bd_native_structure import NativeStructureAdapter
from bd_windows_endpoint import endpoint_process
from bd_commit_persistent_owners import validate_audit
from bde_acceptance import source_manifest
from bde_experiments import proxy
from bde_public_oracle import compare


ALLOWED = frozenset(('open', 'observe', 'observe_public', 'prepare',
    'connect_material', 'commit_resources'))


class ReadOnlyPreparation(NativeStructureAdapter):
    def _exchange(self, command):
        if (command.get('cmd') not in ALLOWED or (command['cmd'] == 'commit_resources'
                and command.get('action') not in ('audit', 'check'))
                or (command['cmd'] == 'connect_material' and command.get('action') != 'prepare')):
            raise ValueError('No model write, Store, release, or inverse in this preparation')
        return super()._exchange(command)


def main():
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('--read-probe', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args(); base = service.ROOT/'analysis/bde-experiments'
    prior, output = args.read_probe.resolve(), args.output.resolve()
    if not prior.is_relative_to(base) or not output.is_relative_to(base) or output.exists():
        raise ValueError('Owned original witness and new output required')
    read = lambda p: json.loads(p.read_text(encoding='utf-8'))
    proof = read(prior/'result.json'); n = proof['native']; m = n['module_read']
    component, port, pid = m['component'], proof['port'], proof['pid']
    if (proof.get('passed') is not True or proof.get('persistent_owner_records_stable') is not True
            or not re.fullmatch(r'BDE_Tool_Experiments\\Trial_[A-Za-z0-9_]+', component)
            or endpoint_process(port) != pid):
        raise ValueError('Exact existing isolated complete witness required')
    domain = dict(session=output.name, database=n['database'], process_epoch=n['process_epoch'], oid=m['component_oid'])
    pending.check(domain); output.mkdir(parents=True)
    token = 'edit_'+fingerprint(dict(domain=domain,purpose='connect_store_resource_preflight'))
    result = dict(profile='bde_connect_store_preflight_v1', passed=False, domain=domain,
        component=component, port=port, pid=pid, native_token=token, read_probe=str(prior),
        source_manifest=source_manifest(), model_operations=0, store_called=False,
        commit_called=False, edit_dispatched=False, full_delivery=False,
        production_connection_inverse_available=False, ascet_started_or_restarted=False)
    def save():
        (output/'result.json').write_text(json.dumps(result,ensure_ascii=False,indent=2)+'\n',encoding='utf-8')
    save()
    for relative in result['source_manifest']:
        destination=output/'source'/relative; destination.parent.mkdir(parents=True,exist_ok=True)
        shutil.copyfile(service.ROOT/relative,destination)
    env = {k:v for k,v in os.environ.items() if not k.startswith('ASCET_BD_')}
    env.update(ASCET_BD_ENDPOINT_PORT=str(port), ASCET_BD_OPERATION_EXECUTOR='staged_v1',
        ASCET_BD_CONNECT_MATERIAL='identity_v1', ASCET_BD_CONNECT_HISTORY='native_source_exact_v1',
        ASCET_BD_CONNECT_REFERENCES='module_owner_records_v1', ASCET_BD_COMMIT_RESOURCE_CAPTURE='prepare_v1',
        ASCET_BD_COMMIT_REGISTERED_MODELS='loaded_sg_v1', ASCET_BD_COMMIT_CONTROL_CAPTURE='ctree_v1',
        ASCET_BD_COMMIT_RECIPROCAL_CAPTURE='outgoing_v1', ASCET_BD_COMMIT_REFERENCE_BASELINE='reference_file_v1',
        ASCET_BD_COMMIT_PERSISTENT_OWNERS='component_source_v1', ASCET_BD_NATIVE_TRACE='1')
    targets = [bytes(k).hex() for k in m['persistent_observations'][1].get('requested_reciprocal_targets',[])]
    try:
        with service.live_lock():
            pending.check(domain)
            if endpoint_process(port) != pid:
                raise ValueError('Original listener expired')
            with proxy(upstream_port=port) as wire:
                try:
                    with ReadOnlyPreparation(component,timeout=50,connect_reference_targets=targets,
                            environment=dict(env,ASCET_BD_PROBE_PORT=str(wire['port']))) as adapter:
                        before=adapter.observe(domain,[]); public=adapter.observe_public(domain)
                        if not compare(before['entries'],public)['passed']:
                            raise ValueError('Original public/native graph differs')
                        service.write_once(output/'before.json',dict(native=before,public=public))
                        pins=[r for r in before['entries'] if r['kind']=='pin']
                        occupied={r['target'] for r in before['entries'] if r['kind']=='edge'}
                        a,b=next((a,b) for a in pins for b in pins if a['output'] and not a['input']
                            and b['input'] and not b['output'] and b['ref'] not in occupied and a['owner']!=b['owner'])
                        if adapter.prepare(domain,token,'connect_data',[[],a['ref'],b['ref']]) != before:
                            raise ValueError('Resource preparation changed graph')
                        receipt=adapter.commit_resources_prepared
                        if receipt['profile'] != 'native_commit_prepare_v6':
                            raise ValueError('Full original commit resources required')
                        service.write_once(output/'prepared.json',dict(material=adapter.connect_material_prepared,commit_resources=receipt))
                        audit=adapter._exchange(dict(cmd='commit_resources',action='audit',token=token))
                        service.write_once(output/'original-audit.json',audit); validate_audit(audit)
                        current=adapter._exchange(dict(cmd='commit_resources',action='check',token=token))
                        service.write_once(output/'current.json',current)
                        after=adapter.observe(domain,[]); after_public=adapter.observe_public(domain)
                        service.write_once(output/'after.json',dict(native=after,public=after_public))
                        if before!=after or public!=after_public:
                            raise ValueError('Read-only public/native bookends changed')
                        result.update(commit_resources_profile=receipt['profile'],complete_original_resources_retained=True,
                            registered_models=receipt['registered_models'],persistent_owners=receipt['persistent_owners'],
                            resource_check_received=True,original_public_native_bookends_equal=True)
                finally:
                    if 'adapter' in locals():
                        result['native_commands']=adapter.commands.copy(); result['native_stderr_tail']=adapter.stderr_tail.copy()
                    result['wire']=dict(connections=wire['connections'],request=wire['request'].result(),response=wire['response'].result(),errors=wire['errors'])
        if result['wire']['errors']:
            raise ValueError('Transport errors retained')
        result['sources_match']=result['source_manifest']==source_manifest()
        if not result['sources_match']:
            raise ValueError('Preparation source drift')
        result['passed']=True
    except Exception as error:
        result.update(passed=False,error=str(error))
    finally:
        save()
    print(json.dumps({k:result.get(k) for k in ('passed','error','commit_resources_profile','registered_models','full_delivery')},ensure_ascii=False))
    return 0 if result['passed'] else 1


if __name__ == '__main__':
    raise SystemExit(main())
