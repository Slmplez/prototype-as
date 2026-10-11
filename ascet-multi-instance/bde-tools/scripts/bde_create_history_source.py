"""Bind preserved declaration capture failures to their completed no-replay verification."""
import json
from pathlib import Path

from bd_create_material import same_material
from bd_structure_journal import StructureJournal
from bd_create_history_journal import context


def validate(source, old, epoch, verification=None):
    if old.get('operation',{}).get('kind') in ('receive_message','send_message','send_receive_message'):
        from bde_message_history_source import validate as message_source
        message_source(source,old,epoch,verification)
        return True
    if (old.get('creation_dispatched') is not True or old.get('material_retained') is not True
            or old['process_epoch'] != epoch or old['operation']['kind'] not in ('literal','operator','variable','enumeration')):
        raise ValueError('Same-epoch retained observed original creation required')
    variable = old['operation']['kind'] == 'variable'
    if old.get('passed') is not True:
        if (not variable or verification is None or old.get('declaration_capture_enabled') is not True
                or old.get('isolated_pending') is not False
                or old.get('error') != 'Complete actual factory material changed across connection'):
            raise ValueError('Original failed creation requires its exact no-replay body verification')
        verified = json.loads((Path(verification) / 'result.json').read_text(encoding='utf-8'))
        fixed = dict(passed=True, creation_redispatched=False,inverse_dispatched=False,
            original_before_capture_verified=True, original_failure_verdict_preserved=True,
            sources_match=True,isolated_pending=False,model_setters_called=0,store_called=False)
        if (any(type(verified.get(k)) is not type(v) or verified[k] != v for k,v in fixed.items())
                or Path(verified.get('source','')).resolve() != Path(source).resolve()
                or any(verified.get(k) != old[k] for k in ('manifest','process_epoch','domain','native_token','component'))):
            raise ValueError('Completed body verification is not bound to this original forward creation')
        events = StructureJournal(Path(source)/'store/edits').read(old['native_token'])
        material = next(e['payload']['create_material_actual'] for e in events if e['kind']=='observed')
        if any(not same_material(material, verified[k], token=old['native_token'],
                oid=old['domain']['oid'],kind='variable',phase='attached') for k in ('material','repeat_material')):
            raise ValueError('Verified retained material differs from original actual WAL')
    ctx = context(StructureJournal(Path(source)/'store/edits'), old['native_token'])
    if ctx['source']['domain'] != old['domain'] or ctx['sequence'] != 1 or ctx['owner'] != old['native_token']:
        raise ValueError('Original forward ownership differs; no repeated creation or undo allowed')
    return old['operation']['kind'] in ('variable', 'enumeration')
