"""Bind original message capture failure to its sealed confirmed actual WAL; no replay."""
import hashlib
import json
from pathlib import Path

from bd_create_material import observation, same_material
from bd_structure_journal import StructureJournal
from bd_message_declaration_material import KINDS
from bd_message_material_diagnostic import validate as validate_diagnostic


def validate(source,old,epoch,verification):
    source=Path(source).resolve()
    if verification is None:
        raise ValueError('Message original capture requires its confirmed no-replay terminal audit')
    audit=json.loads((Path(verification)/'result.json').read_text(encoding='utf-8'))
    fixed=dict(passed=True,creation_redispatched=False,model_setters_called=0,store_called=False,
        wal_checked=True,audited_owner_database_identity_equal=True,isolated_pending=False,
        witness_retained=False,original_restored=False,sources_match=True)
    if (old.get('creation_dispatched') is not True or old['process_epoch']!=epoch
            or old['operation']['kind'] not in KINDS or old['domain']['process_epoch']!=epoch
            or Path(audit.get('source','')).resolve()!=source
            or any(audit.get(k)!=old[k] for k in ('manifest','process_epoch','domain'))
            or any(type(audit.get(k)) is not type(v) or audit[k]!=v for k,v in fixed.items())):
        raise ValueError('Confirmed audit does not bind this original message capture/epoch')
    token=audit['native_token'];log=StructureJournal(source/'store/edits');events=log.read(token)
    if (log.receipt(token,events)['status']!='applied_observed'
            or sum(e['kind']=='started' for e in events)!=1 or sum(e['kind']=='observed' for e in events)!=1
            or any(e['kind'] in ('released','create_history_closed','create_history_ready') for e in events)):
        raise ValueError('One retained original message forward with no history advancement required')
    intent=events[0]['payload']
    if (intent['domain']!=old['domain'] or intent['operation']!='create_block'
            or intent['arguments'][0]!=[] or intent['arguments'][1]!=old['operation']['kind']):
        raise ValueError('Original message intent differs from confirmed source')
    prepared=next(e['payload'] for e in events if e['kind']=='prepared')
    actual=next(e['payload'] for e in events if e['kind']=='observed')
    material=actual['create_material_actual']
    checked=observation(prepared['before'],actual['after'],prepared['create_material_prepared'],material,
        token=token,oid=old['domain']['oid'],kind=old['operation']['kind'])
    if any(actual.get(k)!=v for k,v in checked.items()) or not same_material(material,audit['material'],
            token=token,oid=old['domain']['oid'],kind=old['operation']['kind'],phase='attached'):
        raise ValueError('Confirmed message material differs from complete original actual WAL')
    if 'material_observation_source' in audit:
        if (audit['material_observation_source']!='retained_original_images_with_complete_live_read_cache_guard'
                or audit.get('live_complete_declaration_cache_guard_verified') is not True):
            raise ValueError('Unknown original/live declaration cache observation binding')
        for key in ('material_diagnostic','material_diagnostic_repeat'):
            bound=validate_diagnostic(audit[key],material,token=token,oid=old['domain']['oid'])
            if not bound['safe_for_history_preparation']:
                raise ValueError('Audited live message declaration/cache/native/source proof refused')
    hashes=audit['immutable_before']
    if (audit['immutable_after']!=hashes or str(source/'result.json') not in hashes
            or any(not Path(path).resolve().is_relative_to(source) for path in hashes)
            or any(hashlib.sha256(Path(path).read_bytes()).hexdigest()!=wanted for path,wanted in hashes.items())):
        raise ValueError('Original failed message result or confirmed WAL was modified')
    return dict(native_token=token,events=events,prepared=prepared,actual=actual,material=material)
